@interface TTSNeuralStyle
- (TTSNeuralStyle)initWithName:()basic_string<char vector:()std:(std::allocator<char>> *)var0 :char_traits<char>;
- (vector<float,)getStyleVector;
@end

@implementation TTSNeuralStyle

- (TTSNeuralStyle)initWithName:()basic_string<char vector:()std:(std::allocator<char>> *)var0 :char_traits<char>
{
  v4 = v3;
  v21.receiver = self;
  v21.super_class = TTSNeuralStyle;
  v6 = [(TTSNeuralStyle *)&v21 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v9 = *v4;
    v10 = *(v4 + 8);
    if (*v4 != v10)
    {
      do
      {
        LODWORD(v8) = *v9;
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        [(NSArray *)v7 addObject:v11];

        ++v9;
      }

      while (v9 != v10);
    }

    if (*(&var0->var0.var1 + 23) < 0)
    {
      var0 = var0->var0.var1.var0;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithCString:var0 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v13 = [v12 copy];
    key = v6->_key;
    v6->_key = v13;

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v6->_key value:0 table:@"SiriStyles"];
    name = v6->_name;
    v6->_name = v16;

    if (!v6->_name)
    {

      v19 = 0;
      goto LABEL_10;
    }

    styleVector = v6->_styleVector;
    v6->_styleVector = v7;
  }

  v19 = v6;
LABEL_10:

  return v19;
}

- (vector<float,)getStyleVector
{
  v26 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(TTSNeuralStyle *)self styleVector];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) floatValue];
        var1 = retstr->var1;
        var2 = retstr->var2;
        if (var1 >= var2)
        {
          var0 = retstr->var0;
          v13 = var1 - retstr->var0;
          v14 = v13 >> 2;
          v15 = (v13 >> 2) + 1;
          if (v15 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v16 = var2 - var0;
          if (v16 >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](retstr, v17);
          }

          *(4 * v14) = v8;
          v11 = (4 * v14 + 4);
          memcpy(0, var0, v13);
          v18 = retstr->var0;
          retstr->var0 = 0;
          retstr->var1 = v11;
          retstr->var2 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *var1 = v8;
          v11 = var1 + 1;
        }

        retstr->var1 = v11;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

@end