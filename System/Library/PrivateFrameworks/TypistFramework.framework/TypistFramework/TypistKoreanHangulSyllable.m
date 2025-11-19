@interface TypistKoreanHangulSyllable
- (BOOL)_hasConsonantVariants:(id)a3;
- (TypistKoreanHangulSyllable)initWithSyllable:(unsigned __int16)a3;
- (int)_determineSyllableStructure:(unint64_t)a3 vowelPositionType:(int)a4;
@end

@implementation TypistKoreanHangulSyllable

- (TypistKoreanHangulSyllable)initWithSyllable:(unsigned __int16)a3
{
  v13.receiver = self;
  v13.super_class = TypistKoreanHangulSyllable;
  v4 = [(TypistKoreanHangulSyllable *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    jamosInSyllable = v4->jamosInSyllable;
    v4->jamosInSyllable = v5;

    v4->_syllable = a3;
    v7 = [TypistKoreanHangulSyllable decomposeSyllableForScribble:[(TypistKoreanHangulSyllable *)v4 syllable]];
    if ([v7 length])
    {
      v8 = 0;
      do
      {
        v9 = -[TypistKoreanHangulJamo initWithJamo:position:]([TypistKoreanHangulJamo alloc], "initWithJamo:position:", [v7 characterAtIndex:v8], v8);
        [(NSMutableArray *)v4->jamosInSyllable addObject:v9];

        ++v8;
      }

      while ([v7 length] > v8);
    }

    v10 = [(NSMutableArray *)v4->jamosInSyllable count];
    v11 = [(NSMutableArray *)v4->jamosInSyllable objectAtIndexedSubscript:1];
    v4->_syllableStructure = -[TypistKoreanHangulSyllable _determineSyllableStructure:vowelPositionType:](v4, "_determineSyllableStructure:vowelPositionType:", v10, [v11 hangulJamoPosition]);

    v4->_hasConsonantVariants = [(TypistKoreanHangulSyllable *)v4 _hasConsonantVariants:v4->jamosInSyllable];
  }

  return v4;
}

- (BOOL)_hasConsonantVariants:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v4];
      v8 = [v7 isConsonantVariant];

      v6 |= v8;
      v9 = [v3 objectAtIndexedSubscript:v4];
      v10 = [v9 isVerticalVowel];

      v5 |= v10;
      ++v4;
    }

    while (v4 < [v3 count]);
    v11 = v6 & v5;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (int)_determineSyllableStructure:(unint64_t)a3 vowelPositionType:(int)a4
{
  if (a3 == 3)
  {
    v4 = a4 - 2;
    if ((a4 - 2) <= 2)
    {
      v5 = &unk_2701A463C;
      return v5[v4];
    }
  }

  else if (a3 == 2)
  {
    v4 = a4 - 2;
    if ((a4 - 2) < 3)
    {
      v5 = &unk_2701A4630;
      return v5[v4];
    }
  }

  return 6;
}

@end