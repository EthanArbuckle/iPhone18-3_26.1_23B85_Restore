@interface WFChooseFromMenuItem
- (WFChooseFromMenuItem)initWithCoder:(id)a3;
- (WFChooseFromMenuItem)initWithString:(id)a3 synonyms:(id)a4 subtitle:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFChooseFromMenuItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFChooseFromMenuItem *)self string];
  [v4 encodeObject:v5 forKey:@"string"];

  v6 = [(WFChooseFromMenuItem *)self synonyms];
  [v4 encodeObject:v6 forKey:@"synonyms"];

  v7 = [(WFChooseFromMenuItem *)self subtitle];
  [v4 encodeObject:v7 forKey:@"subtitle"];
}

- (WFChooseFromMenuItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"synonyms"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];

  v11 = &stru_1F4A1C408;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;

  v13 = [(WFChooseFromMenuItem *)self initWithString:v5 synonyms:v9 subtitle:v12];
  return v13;
}

- (WFChooseFromMenuItem)initWithString:(id)a3 synonyms:(id)a4 subtitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WFChooseFromMenuItem;
  v11 = [(WFChooseFromMenuItem *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    string = v11->_string;
    v11->_string = v12;

    v14 = [v9 copy];
    synonyms = v11->_synonyms;
    v11->_synonyms = v14;

    v16 = [v10 copy];
    subtitle = v11->_subtitle;
    v11->_subtitle = v16;

    v18 = v11;
  }

  return v11;
}

@end