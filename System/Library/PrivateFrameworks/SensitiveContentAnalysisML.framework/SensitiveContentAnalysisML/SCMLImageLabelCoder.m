@interface SCMLImageLabelCoder
+ (id)_createHexDecodingDict;
+ (id)_createHexEncodingDict;
+ (id)_nameFromRevParts:(id)a3;
+ (id)instance;
- (SCMLImageLabelCoder)init;
- (id)decodeFromHex:(id)a3;
- (id)decodeFromP1:(id)a3;
- (id)encodeToHex:(id)a3;
- (id)encodeToP1:(id)a3;
@end

@implementation SCMLImageLabelCoder

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SCMLImageLabelCoder_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[SCMLImageLabelCoder instance]::onceToken != -1)
  {
    dispatch_once(&+[SCMLImageLabelCoder instance]::onceToken, block);
  }

  v2 = +[SCMLImageLabelCoder instance]::sharedCoder;

  return v2;
}

+ (id)_nameFromRevParts:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 count];
  if (v5 >= 1)
  {
    v6 = (v5 & 0x7FFFFFFF) + 1;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6 - 2];
      [v4 appendString:v7];

      --v6;
    }

    while (v6 > 1);
  }

  return v4;
}

+ (id)_createHexEncodingDict
{
  v67[3] = *MEMORY[0x1E69E9840];
  v3 = [a1 _nameFromRevParts:&unk_1F37519F0];
  v67[0] = [a1 _nameFromRevParts:&unk_1F3751A08];
  v67[1] = @"e";
  v67[2] = @"f";
  v47 = v67[0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
  v45 = [a1 _nameFromRevParts:v4];

  v44 = [a1 _nameFromRevParts:&unk_1F3751A20];
  v46 = [a1 _nameFromRevParts:&unk_1F3751A38];
  v43 = [a1 _nameFromRevParts:&unk_1F3751A50];
  v41 = [a1 _nameFromRevParts:&unk_1F3751A68];
  v42 = [a1 _nameFromRevParts:&unk_1F3751A80];
  v40 = [a1 _nameFromRevParts:&unk_1F3751A98];
  v48 = [a1 _nameFromRevParts:&unk_1F3751AB0];
  v64[0] = @"y";
  v64[1] = @"n";
  v64[2] = @"a";
  v64[3] = v3;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  v38 = [a1 _nameFromRevParts:v39];
  v65[0] = v38;
  v66[0] = @"d61a476a2e70af249c2b1695097eeea9";
  v63[0] = v41;
  v63[1] = v3;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v36 = [a1 _nameFromRevParts:?];
  v65[1] = v36;
  v66[1] = @"3dfb9038b547f6bca709fe8c7c85dd12";
  v62[0] = v43;
  v62[1] = @"_";
  v62[2] = v41;
  v62[3] = v3;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
  v34 = [a1 _nameFromRevParts:?];
  v65[2] = v34;
  v66[2] = @"39ba1360248e1ef3851974a22f0d3f28";
  v61[0] = v43;
  v61[1] = v3;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v32 = [a1 _nameFromRevParts:?];
  v65[3] = v32;
  v66[3] = @"60dc96fd80c33771139d6cf90639a776";
  v60[0] = v45;
  v60[1] = @"_";
  v60[2] = v46;
  v60[3] = v3;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
  v30 = [a1 _nameFromRevParts:?];
  v65[4] = v30;
  v66[4] = @"d9ad80f7b43abb16a607e4361c87bca3";
  v59[0] = v47;
  v59[1] = @"_";
  v59[2] = v46;
  v59[3] = v3;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  v28 = [a1 _nameFromRevParts:?];
  v65[5] = v28;
  v66[5] = @"e156d20cabbf6d6cbca2f1f437738097";
  v58[0] = v42;
  v58[1] = v3;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v26 = [a1 _nameFromRevParts:?];
  v65[6] = v26;
  v66[6] = @"64c53be656ce81ef8aad95a16847f9ce";
  v57[0] = v45;
  v57[1] = @"_";
  v57[2] = v44;
  v57[3] = v3;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
  v24 = [a1 _nameFromRevParts:?];
  v65[7] = v24;
  v66[7] = @"c9cc54544693ed5ad6386336207971dd";
  v56[0] = v47;
  v56[1] = @"_";
  v56[2] = v44;
  v56[3] = v3;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
  v22 = [a1 _nameFromRevParts:?];
  v65[8] = v22;
  v66[8] = @"85a5e1ae11b0353df314fe3763da2c56";
  v55[0] = @"ne";
  v55[1] = @"no";
  v55[2] = v3;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
  v20 = [a1 _nameFromRevParts:?];
  v65[9] = v20;
  v66[9] = @"58484718d77c0af68837b49bde584d48";
  v54[0] = v40;
  v54[1] = v3;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v18 = [a1 _nameFromRevParts:?];
  v65[10] = v18;
  v66[10] = @"63f9d5d4ca6958521ae9de3dcaa6fef6";
  v53[0] = v45;
  v53[1] = @"_";
  v53[2] = v46;
  v53[3] = @"_";
  v53[4] = v48;
  v53[5] = v3;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:6];
  v16 = [a1 _nameFromRevParts:?];
  v65[11] = v16;
  v66[11] = @"662d129f7fdcfcc2bc753dabe3e1780e";
  v52[0] = v47;
  v52[1] = @"_";
  v52[2] = v46;
  v52[3] = @"_";
  v52[4] = v48;
  v52[5] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:6];
  v6 = [a1 _nameFromRevParts:v5];
  v65[12] = v6;
  v66[12] = @"a3d79da61dcf2cb021df38b627c46289";
  v51[0] = v42;
  v51[1] = @"_";
  v51[2] = v48;
  v51[3] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
  v8 = [a1 _nameFromRevParts:v7];
  v65[13] = v8;
  v66[13] = @"7912fcde30eb40530c85a32a9b9a08ba";
  v50[0] = v45;
  v50[1] = @"_";
  v50[2] = v44;
  v50[3] = @"_";
  v50[4] = v48;
  v50[5] = v3;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  v10 = [a1 _nameFromRevParts:v9];
  v65[14] = v10;
  v66[14] = @"0766812f995688dd349887ffa981ccc3";
  v49[0] = v47;
  v49[1] = @"_";
  v49[2] = v44;
  v49[3] = @"_";
  v49[4] = v48;
  v49[5] = v3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:6];
  v12 = [a1 _nameFromRevParts:v11];
  v65[15] = v12;
  v66[15] = @"e123c2b2c0d21152b6956aa6de88a159";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:16];

  v13 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_createHexDecodingDict
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 _createHexEncodingDict];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:{v8, v12}];
        [v3 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __31__SCMLImageLabelCoder_instance__block_invoke(uint64_t a1)
{
  +[SCMLImageLabelCoder instance]::sharedCoder = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (SCMLImageLabelCoder)init
{
  v6.receiver = self;
  v6.super_class = SCMLImageLabelCoder;
  v2 = [(SCMLImageLabelCoder *)&v6 init];
  if (v2)
  {
    v3 = +[SCMLImageLabelCoder _createHexEncodingDict];
    [(SCMLImageLabelCoder *)v2 set_encodeToHexDict:v3];

    v4 = +[SCMLImageLabelCoder _createHexDecodingDict];
    [(SCMLImageLabelCoder *)v2 set_decodeFromHexDict:v4];
  }

  return v2;
}

- (id)encodeToHex:(id)a3
{
  v4 = a3;
  v5 = [(SCMLImageLabelCoder *)self _encodeToHexDict];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (id)decodeFromHex:(id)a3
{
  v4 = a3;
  v5 = [(SCMLImageLabelCoder *)self _decodeFromHexDict];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (id)encodeToP1:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
  v4 = 0;
  while ((v11 & 0x8000000000000000) == 0)
  {
    v5 = __p;
    if (v4 >= v11)
    {
      goto LABEL_12;
    }

LABEL_6:
    v6 = v4[v5];
    if ((v6 - 97) <= 0x19)
    {
      if (v6 == 122)
      {
        v7 = 97;
      }

      else
      {
        v7 = v6 + 1;
      }

      v4[v5] = v7;
    }

    ++v4;
  }

  v5 = __p[0];
  if (__p[1] > v4)
  {
    goto LABEL_6;
  }

LABEL_12:
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)decodeFromP1:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
  v4 = 0;
  while ((v11 & 0x8000000000000000) == 0)
  {
    v5 = __p;
    if (v4 >= v11)
    {
      goto LABEL_12;
    }

LABEL_6:
    v6 = v4[v5];
    if ((v6 - 97) <= 0x19)
    {
      if (v6 == 97)
      {
        v7 = 122;
      }

      else
      {
        v7 = v6 - 1;
      }

      v4[v5] = v7;
    }

    ++v4;
  }

  v5 = __p[0];
  if (__p[1] > v4)
  {
    goto LABEL_6;
  }

LABEL_12:
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

@end