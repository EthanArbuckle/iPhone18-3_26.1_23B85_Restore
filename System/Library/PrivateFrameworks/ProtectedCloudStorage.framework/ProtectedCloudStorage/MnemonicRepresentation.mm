@interface MnemonicRepresentation
+ (id)entropyFromMnemonic:(id)a3;
+ (id)mnemonicFrom:(id)a3;
+ (id)mnemonicWordList;
+ (id)potentialWords:(id)a3;
+ (id)seedFromMnemonic:(id)a3;
+ (id)textfieldAutoCompleteBuilder:(id)a3 forNextLetter:(id)a4;
@end

@implementation MnemonicRepresentation

+ (id)mnemonicWordList
{
  if (mnemonicWordList_wordlistToken != -1)
  {
    +[MnemonicRepresentation mnemonicWordList];
  }

  v3 = mnemonicWordList__wordlist;

  return v3;
}

void __42__MnemonicRepresentation_mnemonicWordList__block_invoke()
{
  v0 = mnemonicWordList__wordlist;
  mnemonicWordList__wordlist = &unk_1F29983E8;
}

+ (id)mnemonicFrom:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 length] & 3) != 0 || objc_msgSend(v4, "length") < 0xC || objc_msgSend(v4, "length") >= 0x21)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = [v4 length];
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "input entropy to mnemonic generation is of incorrect length, %lu", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), buf);
    v8 = buf[0];
    v9 = 8 * [v4 length];
    v10 = ([v4 length] >> 2) + v9;
    v11 = (390451573 * v10) >> 32;
    v12 = &v29[-((2 * v11 + 15) & 0x7FFF0)];
    v13 = [v4 bytes];
    if ([v4 length])
    {
      v30 = v10;
      v31 = (390451573 * v10) >> 32;
      v32 = v8;
      v33 = v29;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        if (v17 > 0xA)
        {
          v19 = v17;
          v18 = v15;
        }

        else
        {
          do
          {
            v18 = (v15 + 1);
            v16 = *(v13 + v15) | (v16 << 8);
            v19 = v17 + 8;
            LODWORD(v15) = v15 + 1;
            v20 = v17 >= 3;
            v17 += 8;
          }

          while (!v20);
        }

        v21 = v19 - 11;
        v22 = v14 + 1;
        v12[v14] = v16 >> (v19 - 11);
        v17 = (v19 - 11);
        v16 &= ~(-1 << (v19 - 11));
        v23 = [v4 length];
        v14 = v22;
        v15 = v18;
      }

      while (v23 > v18);
      v24 = v22;
      v8 = v32;
      v11 = v31;
      v10 = v30;
    }

    else
    {
      v21 = 0;
      LOWORD(v16) = 0;
      v24 = 0;
    }

    v12[v24] = (v16 << (11 - v21)) | (v8 >> (v21 - 3));
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    if (v10 >= 0xB)
    {
      if (v11 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v11;
      }

      do
      {
        v26 = [a1 mnemonicWordList];
        v27 = *v12++;
        v28 = [v26 objectAtIndexedSubscript:v27];
        [v5 addObject:v28];

        --v25;
      }

      while (v25);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)entropyFromMnemonic:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (0xAAAAAAAAAAAAAAABLL * [v4 count] <= 0x5555555555555555 && objc_msgSend(v4, "count") >= 9 && objc_msgSend(v4, "count") < 0x19)
  {
    v8 = [v4 count];
    v9 = 11 * v8 / 0x21uLL;
    v10 = [MEMORY[0x1E695DF88] dataWithLength:(11 * v8 - v9) >> 3];
    v11 = [v10 bytes];
    if ([v4 count])
    {
      v22 = v9;
      v23 = v10;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        if (v12 <= 7u)
        {
          v16 = v14 + 1;
          v17 = [v4 objectAtIndexedSubscript:v14];
          v18 = [v17 lowercaseString];

          v19 = [a1 mnemonicWordList];
          v20 = [v19 indexOfObject:v18];

          v13 = v20 | (v13 << 11);
          v12 += 11;
          v14 = v16;
        }

        v12 -= 8;
        *(v11 + v15) = v13 >> v12;
        v13 &= ~(-1 << v12);
        ++v15;
      }

      while ([v4 count] > v14);
      v21 = v13;
      LOBYTE(v9) = v22;
      v10 = v23;
    }

    else
    {
      v21 = 0;
    }

    CC_SHA256([v10 bytes], objc_msgSend(v10, "length"), buf);
    if (buf[0] >> (8 - v9) == v21)
    {
      v5 = v10;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "provided mnemonic has incorrect checksum", v24, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = [v4 count];
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "input mnemonic is of incorrect length, %lu", buf, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)seedFromMnemonic:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a3 componentsJoinedByString:@" "];
  v4 = [v3 dataUsingEncoding:4];

  v5 = [@"mnemonic" dataUsingEncoding:4];
  CCKeyDerivationPBKDF(2u, [v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), 5u, 0x800u, derivedKey, 0x40uLL);
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:derivedKey length:64];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)potentialWords:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 lowercaseString];
    v6 = [v5 mutableCopy];

    CFStringTrimWhitespace(v6);
    if ([(__CFString *)v6 length])
    {
      v7 = +[MnemonicRepresentation mnemonicWordList];
      v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self beginswith[cd] %@", v6];
      v9 = [v7 filteredArrayUsingPredicate:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

+ (id)textfieldAutoCompleteBuilder:(id)a3 forNextLetter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  CFStringTrimWhitespace(v7);
  v8 = [(__CFString *)v7 stringByReplacingOccurrencesOfString:@" " withString:@"-"];
  v9 = [v8 componentsSeparatedByString:@"-"];

  v10 = [v9 lastObject];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, v6];
  v12 = [MnemonicRepresentation potentialWords:v11];
  if ([v12 count])
  {
    if ([v12 count] == 1)
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
      [v13 removeLastObject];
      v14 = [v12 firstObject];
      [v13 addObject:v14];

      v15 = [v13 componentsJoinedByString:@"-"];

      goto LABEL_7;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v6];
  }

  else
  {
    v16 = v5;
  }

  v15 = v16;
LABEL_7:

  return v15;
}

@end