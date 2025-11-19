@interface TSWPLineStyling
+ (id)lineStylingWithLineCount:(int64_t)a3 options:(unint64_t)a4 additionalCharacterStylePropertyMap:(id)a5 overrideCharacterStylePropertyMap:(id)a6;
- (BOOL)isEqual:(id)a3;
- (TSWPLineStyling)initWithLineCount:(int64_t)a3 options:(unint64_t)a4 additionalCharacterStylePropertyMap:(id)a5 overrideCharacterStylePropertyMap:(id)a6;
- (id)_optionsDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSWPLineStyling

+ (id)lineStylingWithLineCount:(int64_t)a3 options:(unint64_t)a4 additionalCharacterStylePropertyMap:(id)a5 overrideCharacterStylePropertyMap:(id)a6
{
  v6 = [[a1 alloc] initWithLineCount:a3 options:a4 additionalCharacterStylePropertyMap:a5 overrideCharacterStylePropertyMap:a6];

  return v6;
}

- (TSWPLineStyling)initWithLineCount:(int64_t)a3 options:(unint64_t)a4 additionalCharacterStylePropertyMap:(id)a5 overrideCharacterStylePropertyMap:(id)a6
{
  v13.receiver = self;
  v13.super_class = TSWPLineStyling;
  v10 = [(TSWPLineStyling *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_lineCount = a3;
    v10->_options = a4;
    v10->_additionalCharacterStylePropertyMap = [a5 copy];
    v11->_overrideCharacterStylePropertyMap = [a6 copy];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPLineStyling;
  [(TSWPLineStyling *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  lineCount = self->_lineCount;
  options = self->_options;
  additionalCharacterStylePropertyMap = self->_additionalCharacterStylePropertyMap;
  overrideCharacterStylePropertyMap = self->_overrideCharacterStylePropertyMap;

  return [v4 initWithLineCount:lineCount options:options additionalCharacterStylePropertyMap:additionalCharacterStylePropertyMap overrideCharacterStylePropertyMap:overrideCharacterStylePropertyMap];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [(TSWPLineStyling *)self lineCount];
    if (v6 == [v5 lineCount] && (v7 = -[TSWPLineStyling options](self, "options"), v7 == objc_msgSend(v5, "options")))
    {
      v8 = [(TSWPLineStyling *)self additionalCharacterStylePropertyMap];
      if (v8 == [v5 additionalCharacterStylePropertyMap] || (LODWORD(v4) = -[TSSPropertyMap isEqual:](-[TSWPLineStyling additionalCharacterStylePropertyMap](self, "additionalCharacterStylePropertyMap"), "isEqual:", objc_msgSend(v5, "additionalCharacterStylePropertyMap")), v4))
      {
        v9 = [(TSWPLineStyling *)self overrideCharacterStylePropertyMap];
        if (v9 == [v5 overrideCharacterStylePropertyMap])
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          v10 = [(TSWPLineStyling *)self overrideCharacterStylePropertyMap];
          v11 = [v5 overrideCharacterStylePropertyMap];

          LOBYTE(v4) = [(TSSPropertyMap *)v10 isEqual:v11];
        }
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(TSWPLineStyling *)self lineCount];
  v4 = [(TSWPLineStyling *)self options]^ v3;
  v5 = v4 ^ (4 * [(TSSPropertyMap *)[(TSWPLineStyling *)self additionalCharacterStylePropertyMap] hash]);
  return v5 ^ ([(TSSPropertyMap *)[(TSWPLineStyling *)self overrideCharacterStylePropertyMap] hash]<< 10);
}

- (id)_optionsDescription
{
  v2 = [(TSWPLineStyling *)self options];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (v2)
  {
    [v3 appendString:@"LM+"];
  }

  if ((v2 & 2) != 0)
  {
    [v4 appendString:@"W+"];
  }

  v5 = [v4 length];
  if (v5)
  {
    [v4 deleteCharactersInRange:{v5 - 1, 1}];
  }

  else
  {
    [v4 appendString:@"none"];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"autoresize = %@; ", v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"<%@: %p; lineCount=%lu options=%@ additionalMap=%@ overrideMap=%@>", v5, objc_opt_class(), self->_lineCount, -[TSWPLineStyling _optionsDescription](self, "_optionsDescription"), self->_additionalCharacterStylePropertyMap, self->_overrideCharacterStylePropertyMap];
}

@end