@interface WFChooseFromMenuItem
- (WFChooseFromMenuItem)initWithCoder:(id)coder;
- (WFChooseFromMenuItem)initWithString:(id)string synonyms:(id)synonyms subtitle:(id)subtitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFChooseFromMenuItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(WFChooseFromMenuItem *)self string];
  [coderCopy encodeObject:string forKey:@"string"];

  synonyms = [(WFChooseFromMenuItem *)self synonyms];
  [coderCopy encodeObject:synonyms forKey:@"synonyms"];

  subtitle = [(WFChooseFromMenuItem *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];
}

- (WFChooseFromMenuItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"synonyms"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];

  v11 = &stru_1F4A1C408;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;

  v13 = [(WFChooseFromMenuItem *)self initWithString:v5 synonyms:v9 subtitle:v12];
  return v13;
}

- (WFChooseFromMenuItem)initWithString:(id)string synonyms:(id)synonyms subtitle:(id)subtitle
{
  stringCopy = string;
  synonymsCopy = synonyms;
  subtitleCopy = subtitle;
  v20.receiver = self;
  v20.super_class = WFChooseFromMenuItem;
  v11 = [(WFChooseFromMenuItem *)&v20 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    string = v11->_string;
    v11->_string = v12;

    v14 = [synonymsCopy copy];
    synonyms = v11->_synonyms;
    v11->_synonyms = v14;

    v16 = [subtitleCopy copy];
    subtitle = v11->_subtitle;
    v11->_subtitle = v16;

    v18 = v11;
  }

  return v11;
}

@end