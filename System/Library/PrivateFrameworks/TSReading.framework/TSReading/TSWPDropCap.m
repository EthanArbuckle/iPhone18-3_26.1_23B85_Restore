@interface TSWPDropCap
+ (id)dropCapWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 lineCount:(unint64_t)a5;
+ (id)dropCapWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 spacing:(id)a5;
+ (id)dropCapWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 spacings:(id)a5;
- (BOOL)isEqual:(id)a3;
- (TSWPDropCap)initWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 spacings:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSWPDropCap

- (TSWPDropCap)initWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 spacings:(id)a5
{
  v11.receiver = self;
  v11.super_class = TSWPDropCap;
  v8 = [(TSWPDropCap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_charCount = a3;
    v8->_characterStyleOverridePropertyMap = [a4 copy];
    v9->_spacings = [a5 copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPDropCap;
  [(TSWPDropCap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  charCount = self->_charCount;
  characterStyleOverridePropertyMap = self->_characterStyleOverridePropertyMap;
  spacings = self->_spacings;

  return [v4 initWithCharCount:charCount characterStyleOverridePropertyMap:characterStyleOverridePropertyMap spacings:spacings];
}

+ (id)dropCapWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 lineCount:(unint64_t)a5
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8 = [a1 alloc];
  v10[0] = [TSWPDropCapSpacing dropCapSpacingWithLineCount:a5 elevatedLineCount:0];
  return [v8 initWithCharCount:a3 characterStyleOverridePropertyMap:a4 spacings:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 1)}];
}

+ (id)dropCapWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 spacing:(id)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  v8 = [a1 alloc];
  if (a5)
  {
    v11[0] = a5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  return [v8 initWithCharCount:a3 characterStyleOverridePropertyMap:a4 spacings:v9];
}

+ (id)dropCapWithCharCount:(unint64_t)a3 characterStyleOverridePropertyMap:(id)a4 spacings:(id)a5
{
  v5 = [[a1 alloc] initWithCharCount:a3 characterStyleOverridePropertyMap:a4 spacings:{objc_msgSend(a5, "tsu_map:", &__block_literal_global_75)}];

  return v5;
}

id __79__TSWPDropCap_dropCapWithCharCount_characterStyleOverridePropertyMap_spacings___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [(TSWPDropCap *)self charCount];
    if (v6 == [v5 charCount])
    {
      LODWORD(v4) = -[NSArray isEqualToArray:](-[TSWPDropCap spacings](self, "spacings"), "isEqualToArray:", [v5 spacings]);
      if (v4)
      {
        v7 = [(TSWPDropCap *)self characterStyleOverridePropertyMap];
        if (v7 == [v5 characterStyleOverridePropertyMap])
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          v8 = [(TSWPDropCap *)self characterStyleOverridePropertyMap];
          v9 = [v5 characterStyleOverridePropertyMap];

          LOBYTE(v4) = [(TSSPropertyMap *)v8 isEqual:v9];
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
  v3 = [(TSWPDropCap *)self charCount];
  v4 = v3 ^ (4 * [(TSSPropertyMap *)[(TSWPDropCap *)self characterStyleOverridePropertyMap] hash]);
  return v4 ^ ([(NSArray *)[(TSWPDropCap *)self spacings] hash]<< 10);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: charCount=%lu map=%@ spacings=%@>", NSStringFromClass(v4), self->_charCount, self->_characterStyleOverridePropertyMap, self->_spacings];
}

@end