@interface TSWPDropCap
+ (id)dropCapWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map lineCount:(unint64_t)lineCount;
+ (id)dropCapWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map spacing:(id)spacing;
+ (id)dropCapWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map spacings:(id)spacings;
- (BOOL)isEqual:(id)equal;
- (TSWPDropCap)initWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map spacings:(id)spacings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSWPDropCap

- (TSWPDropCap)initWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map spacings:(id)spacings
{
  v11.receiver = self;
  v11.super_class = TSWPDropCap;
  v8 = [(TSWPDropCap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_charCount = count;
    v8->_characterStyleOverridePropertyMap = [map copy];
    v9->_spacings = [spacings copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPDropCap;
  [(TSWPDropCap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  charCount = self->_charCount;
  characterStyleOverridePropertyMap = self->_characterStyleOverridePropertyMap;
  spacings = self->_spacings;

  return [v4 initWithCharCount:charCount characterStyleOverridePropertyMap:characterStyleOverridePropertyMap spacings:spacings];
}

+ (id)dropCapWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map lineCount:(unint64_t)lineCount
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8 = [self alloc];
  v10[0] = [TSWPDropCapSpacing dropCapSpacingWithLineCount:lineCount elevatedLineCount:0];
  return [v8 initWithCharCount:count characterStyleOverridePropertyMap:map spacings:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 1)}];
}

+ (id)dropCapWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map spacing:(id)spacing
{
  v11[1] = *MEMORY[0x277D85DE8];
  v8 = [self alloc];
  if (spacing)
  {
    v11[0] = spacing;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  return [v8 initWithCharCount:count characterStyleOverridePropertyMap:map spacings:v9];
}

+ (id)dropCapWithCharCount:(unint64_t)count characterStyleOverridePropertyMap:(id)map spacings:(id)spacings
{
  v5 = [[self alloc] initWithCharCount:count characterStyleOverridePropertyMap:map spacings:{objc_msgSend(spacings, "tsu_map:", &__block_literal_global_75)}];

  return v5;
}

id __79__TSWPDropCap_dropCapWithCharCount_characterStyleOverridePropertyMap_spacings___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    charCount = [(TSWPDropCap *)self charCount];
    if (charCount == [v5 charCount])
    {
      LODWORD(v4) = -[NSArray isEqualToArray:](-[TSWPDropCap spacings](self, "spacings"), "isEqualToArray:", [v5 spacings]);
      if (v4)
      {
        characterStyleOverridePropertyMap = [(TSWPDropCap *)self characterStyleOverridePropertyMap];
        if (characterStyleOverridePropertyMap == [v5 characterStyleOverridePropertyMap])
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          characterStyleOverridePropertyMap2 = [(TSWPDropCap *)self characterStyleOverridePropertyMap];
          characterStyleOverridePropertyMap3 = [v5 characterStyleOverridePropertyMap];

          LOBYTE(v4) = [(TSSPropertyMap *)characterStyleOverridePropertyMap2 isEqual:characterStyleOverridePropertyMap3];
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
  charCount = [(TSWPDropCap *)self charCount];
  v4 = charCount ^ (4 * [(TSSPropertyMap *)[(TSWPDropCap *)self characterStyleOverridePropertyMap] hash]);
  return v4 ^ ([(NSArray *)[(TSWPDropCap *)self spacings] hash]<< 10);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: charCount=%lu map=%@ spacings=%@>", NSStringFromClass(v4), self->_charCount, self->_characterStyleOverridePropertyMap, self->_spacings];
}

@end