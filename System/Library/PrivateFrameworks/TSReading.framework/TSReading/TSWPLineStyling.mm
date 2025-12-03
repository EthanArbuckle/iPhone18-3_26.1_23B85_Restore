@interface TSWPLineStyling
+ (id)lineStylingWithLineCount:(int64_t)count options:(unint64_t)options additionalCharacterStylePropertyMap:(id)map overrideCharacterStylePropertyMap:(id)propertyMap;
- (BOOL)isEqual:(id)equal;
- (TSWPLineStyling)initWithLineCount:(int64_t)count options:(unint64_t)options additionalCharacterStylePropertyMap:(id)map overrideCharacterStylePropertyMap:(id)propertyMap;
- (id)_optionsDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSWPLineStyling

+ (id)lineStylingWithLineCount:(int64_t)count options:(unint64_t)options additionalCharacterStylePropertyMap:(id)map overrideCharacterStylePropertyMap:(id)propertyMap
{
  v6 = [[self alloc] initWithLineCount:count options:options additionalCharacterStylePropertyMap:map overrideCharacterStylePropertyMap:propertyMap];

  return v6;
}

- (TSWPLineStyling)initWithLineCount:(int64_t)count options:(unint64_t)options additionalCharacterStylePropertyMap:(id)map overrideCharacterStylePropertyMap:(id)propertyMap
{
  v13.receiver = self;
  v13.super_class = TSWPLineStyling;
  v10 = [(TSWPLineStyling *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_lineCount = count;
    v10->_options = options;
    v10->_additionalCharacterStylePropertyMap = [map copy];
    v11->_overrideCharacterStylePropertyMap = [propertyMap copy];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPLineStyling;
  [(TSWPLineStyling *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  lineCount = self->_lineCount;
  options = self->_options;
  additionalCharacterStylePropertyMap = self->_additionalCharacterStylePropertyMap;
  overrideCharacterStylePropertyMap = self->_overrideCharacterStylePropertyMap;

  return [v4 initWithLineCount:lineCount options:options additionalCharacterStylePropertyMap:additionalCharacterStylePropertyMap overrideCharacterStylePropertyMap:overrideCharacterStylePropertyMap];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    lineCount = [(TSWPLineStyling *)self lineCount];
    if (lineCount == [v5 lineCount] && (v7 = -[TSWPLineStyling options](self, "options"), v7 == objc_msgSend(v5, "options")))
    {
      additionalCharacterStylePropertyMap = [(TSWPLineStyling *)self additionalCharacterStylePropertyMap];
      if (additionalCharacterStylePropertyMap == [v5 additionalCharacterStylePropertyMap] || (LODWORD(v4) = -[TSSPropertyMap isEqual:](-[TSWPLineStyling additionalCharacterStylePropertyMap](self, "additionalCharacterStylePropertyMap"), "isEqual:", objc_msgSend(v5, "additionalCharacterStylePropertyMap")), v4))
      {
        overrideCharacterStylePropertyMap = [(TSWPLineStyling *)self overrideCharacterStylePropertyMap];
        if (overrideCharacterStylePropertyMap == [v5 overrideCharacterStylePropertyMap])
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          overrideCharacterStylePropertyMap2 = [(TSWPLineStyling *)self overrideCharacterStylePropertyMap];
          overrideCharacterStylePropertyMap3 = [v5 overrideCharacterStylePropertyMap];

          LOBYTE(v4) = [(TSSPropertyMap *)overrideCharacterStylePropertyMap2 isEqual:overrideCharacterStylePropertyMap3];
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
  lineCount = [(TSWPLineStyling *)self lineCount];
  v4 = [(TSWPLineStyling *)self options]^ lineCount;
  v5 = v4 ^ (4 * [(TSSPropertyMap *)[(TSWPLineStyling *)self additionalCharacterStylePropertyMap] hash]);
  return v5 ^ ([(TSSPropertyMap *)[(TSWPLineStyling *)self overrideCharacterStylePropertyMap] hash]<< 10);
}

- (id)_optionsDescription
{
  options = [(TSWPLineStyling *)self options];
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (options)
  {
    [string appendString:@"LM+"];
  }

  if ((options & 2) != 0)
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