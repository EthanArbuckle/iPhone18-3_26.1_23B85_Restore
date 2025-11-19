@interface PKMutableMediaCol
- (PKMutableMediaCol)init;
- (id)makeMediaCol;
- (void)setMarginsTop:(int)a3 left:(int)a4 bottom:(int)a5 right:(int)a6;
@end

@implementation PKMutableMediaCol

- (PKMutableMediaCol)init
{
  v6.receiver = self;
  v6.super_class = PKMutableMediaCol;
  v2 = [(PKMutableMediaCol *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dict = v2->_dict;
    v2->_dict = v3;
  }

  return v2;
}

- (void)setMarginsTop:(int)a3 left:(int)a4 bottom:(int)a5 right:(int)a6
{
  v7 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v10 = @"media-bottom-margin";
  v11 = a5;
  v12 = @"media-left-margin";
  v13 = a4;
  v14 = @"media-top-margin";
  v15 = a3;
  v16 = @"media-right-margin";
  v17 = a6;
  do
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(&v10 + v7 + 8)];
    [(PKMutableMediaCol *)self setValue:v8 forKey:*(&v10 + v7)];
    v7 += 16;
  }

  while (v7 != 64);
  for (i = 48; i != -16; i -= 16)
  {
  }
}

- (id)makeMediaCol
{
  v3 = objc_opt_new();
  v4 = [(PKMutableMediaCol *)self mediaSize];

  if (v4)
  {
    v5 = [(PKMutableMediaCol *)self mediaSize];
    v6 = [v5 collection];
    [v3 _addCollection:0 name:@"media-size" value:v6];
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_2871ADB38];
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2871ADB50];
  dict = self->_dict;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__PKMutableMediaCol_makeMediaCol__block_invoke;
  v15[3] = &unk_279A925D0;
  v10 = v7;
  v16 = v10;
  v11 = v3;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  [(NSMutableDictionary *)dict enumerateKeysAndObjectsUsingBlock:v15];
  v13 = [(PKCollectionSpecialization *)[PKMediaCol alloc] initWithCollection:v11];

  return v13;
}

void __33__PKMutableMediaCol_makeMediaCol__block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([a1[4] containsObject:v6])
  {
    [a1[5] _addInteger:0 valueTag:33 name:v6 value:{objc_msgSend(v5, "intValue")}];
  }

  else if ([a1[6] containsObject:v6])
  {
    [a1[5] _addString:0 valueTag:68 name:v6 lang:0 value:v5];
  }
}

@end