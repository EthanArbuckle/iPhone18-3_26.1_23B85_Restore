@interface PLPhotoDCFObject
+ (id)validDCFNameForName:(id)a3 requiredLength:(int)a4 nameLength:(int)a5 number:(int *)a6 numberRange:(_NSRange)a7 suffix:(id)a8;
- (PLPhotoDCFObject)initWithName:(id)a3 number:(int)a4;
- (int64_t)compare:(id)a3;
@end

@implementation PLPhotoDCFObject

- (int64_t)compare:(id)a3
{
  v4 = [a3 number];
  number = self->_number;
  v6 = v4 < number;
  v7 = v4 > number;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (PLPhotoDCFObject)initWithName:(id)a3 number:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PLPhotoDCFObject;
  v8 = [(PLPhotoDCFObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_number = a4;
  }

  return v9;
}

+ (id)validDCFNameForName:(id)a3 requiredLength:(int)a4 nameLength:(int)a5 number:(int *)a6 numberRange:(_NSRange)a7 suffix:(id)a8
{
  length = a7.length;
  location = a7.location;
  v85 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a8;
  v14 = [v12 length];
  v15 = v12;
  MEMORY[0x1EEE9AC00]();
  v16 = &v65 - ((length + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v14 != a4)
  {
    v19 = 0;
    v20 = v15;
    goto LABEL_86;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  *buffer = 0u;
  v17 = location + length;
  v79 = v15;
  v82 = xmmword_1AAA8EF60;
  CharactersPtr = CFStringGetCharactersPtr(v15);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v15, 0x600u);
  }

  v70 = length;
  v66 = a6;
  v67 = &v65;
  v68 = v15;
  v69 = v13;
  v83 = 0;
  v84 = 0;
  v81 = CStringPtr;
  if (location < v17)
  {
    v21 = 0;
    v22 = 0;
    v23 = -location;
    v24 = location + 64;
    v25 = 2 * location;
    v26 = location;
    v27 = &buffer[location];
    while (1)
    {
      v28 = location + v22;
      if (v26 >= 4)
      {
        v29 = 4;
      }

      else
      {
        v29 = v26;
      }

      if (v28 < 0 || (v30 = *(&v82 + 1), *(&v82 + 1) <= v28))
      {
        LOBYTE(v32) = 0;
      }

      else
      {
        if (CharactersPtr)
        {
          v31 = (&CharactersPtr[v82] + v25);
LABEL_15:
          v32 = v31[v22];
          goto LABEL_17;
        }

        if (!v81)
        {
          if (v84 <= v28 || v21 > v28)
          {
            v35 = v29 + v23;
            v36 = v24 - v29;
            v37 = -v29;
            v65 = v25;
            v38 = 64 - v29;
            v39 = v22 + location - v29;
            v40 = location + v22 + v38;
            if (v40 >= *(&v82 + 1))
            {
              v40 = *(&v82 + 1);
            }

            v83 = v39;
            v84 = v40;
            v41 = location + v22 + v37;
            if (*(&v82 + 1) >= v36)
            {
              v30 = v36;
            }

            v87.location = v41 + v82;
            v87.length = v30 + v35;
            v42 = v27;
            CFStringGetCharacters(v79, v87, buffer);
            v27 = v42;
            v25 = v65;
            v21 = v83;
          }

          v31 = &v27[-v21];
          goto LABEL_15;
        }

        LOBYTE(v32) = v81[v82 + location + v22];
      }

LABEL_17:
      v16[v22] = v32;
      v33 = v32 - 48;
      v34 = v33 < 0xA;
      if (v33 <= 9)
      {
        ++v26;
        ++v22;
        --v23;
        ++v24;
        if (v22 + location < v17)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  v21 = 0;
  v34 = 1;
LABEL_31:
  if (location)
  {
    v43 = 0;
  }

  else
  {
    v43 = v70;
  }

  v44 = 8;
  if (location)
  {
    v44 = location;
  }

  if (v44 >= v14)
  {
    v45 = v14;
  }

  else
  {
    v45 = v44;
  }

  if (!v34 || v43 >= v45)
  {
    v15 = v68;
    v20 = v68;
    goto LABEL_75;
  }

  v46 = 0;
  v47 = -v43;
  v48 = v43 + 64;
  v15 = v68;
  do
  {
    if (v43 >= 4)
    {
      v49 = 4;
    }

    else
    {
      v49 = v43;
    }

    if (v43 < 0 || (v50 = *(&v82 + 1), *(&v82 + 1) <= v43))
    {
      v52 = 0;
      goto LABEL_51;
    }

    if (CharactersPtr)
    {
      v51 = &CharactersPtr[v82];
LABEL_49:
      v52 = v51[v43];
      goto LABEL_56;
    }

    if (!v81)
    {
      if (v84 <= v43 || v21 > v43)
      {
        v55 = v49 + v47;
        v56 = v48 - v49;
        v57 = v43 - v49;
        v58 = v57 + 64;
        if ((v57 + 64) >= *(&v82 + 1))
        {
          v58 = *(&v82 + 1);
        }

        v83 = v57;
        v84 = v58;
        if (*(&v82 + 1) >= v56)
        {
          v50 = v56;
        }

        v88.location = v57 + v82;
        v88.length = v50 + v55;
        CFStringGetCharacters(v79, v88, buffer);
        v21 = v83;
      }

      v51 = &buffer[-v21];
      goto LABEL_49;
    }

    v52 = v81[v82 + v43];
LABEL_56:
    if (v52 == 95 || (v52 - 65) < 0x1Au || (v52 - 48) < 0xAu)
    {
      v34 = 1;
      goto LABEL_52;
    }

LABEL_51:
    v34 = (v52 - 97) < 0x1Au;
    v46 |= v34;
    if ((v52 - 97) >= 0x1Au)
    {
      break;
    }

LABEL_52:
    ++v43;
    --v47;
    ++v48;
  }

  while (v43 < v45);
  v20 = v15;
  if ((v34 & v46) == 1)
  {
    v20 = [(__CFString *)v15 uppercaseString];

    v34 = 1;
  }

LABEL_75:
  v13 = v69;
  v59 = v66;
  if (v66 && v34)
  {
    v16[v70] = 0;
    *v59 = atoi(v16);
  }

  if (v13)
  {
    v60 = v34;
  }

  else
  {
    v60 = 0;
  }

  if (v60)
  {
    v61 = [v20 uppercaseString];
    v62 = [v61 hasSuffix:v13];

    if (!v62)
    {
      goto LABEL_83;
    }

LABEL_85:
    v19 = v20;
  }

  else
  {
    if (v34)
    {
      goto LABEL_85;
    }

LABEL_83:
    v19 = 0;
  }

LABEL_86:
  v63 = v19;

  return v63;
}

@end