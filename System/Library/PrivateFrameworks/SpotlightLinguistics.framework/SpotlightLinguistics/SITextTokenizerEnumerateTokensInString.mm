@interface SITextTokenizerEnumerateTokensInString
@end

@implementation SITextTokenizerEnumerateTokensInString

__n128 __SITextTokenizerEnumerateTokensInString_block_invoke_2(uint64_t a1, CFIndex *a2, _BYTE *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = a2[2];
  v7 = (v6 >> 10) & 1;
  CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 160), *a2);
  v9 = CharacterAtIndex;
  v10 = a2[1];
  if (v10 == 1 && (CharacterAtIndex == 45 || CharacterAtIndex == 38))
  {
    LODWORD(v7) = 0;
  }

  v11 = v6 & 0x800;
  v12 = CharacterAtIndex == 9 || CharacterAtIndex == 8200;
  if (!v12 && CharacterAtIndex != 12288)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v13 = 1;
  v14 = 1;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
LABEL_13:
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v9);
    v14 = IsCharacterMember != 0;
    if (IsCharacterMember || (v6 & 0x800) == 0)
    {
      v10 = a2[1];
    }

    else
    {
      v10 = a2[1];
      v14 = *(*(*(a1 + 56) + 8) + 24) | (v10 > 1);
    }
  }

  v17 = *a2;
  v18 = v10 + *a2;
  v19 = *(a1 + 168);
  v20 = *(a1 + 176);
  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  if ((v14 & 1) != 0 || v18 >= *(v21 + 48) + v22)
  {
    *(v21 + 48) = v18 - v22;
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = v20 + v19;
  v25 = v14 | v7;
  if (((v11 == 0) & ((v13 | v14) ^ 1)) != 0)
  {
    v26 = v17 - v19;
    v27 = a2[1];
    v28 = (*(*(*(a1 + 72) + 8) + 24) + 16 * *(*(*(a1 + 80) + 8) + 24));
    *v28 = v26;
    v28[1] = v27;
    *(*(*(*(a1 + 88) + 8) + 24) + 8 * (*(*(*(a1 + 80) + 8) + 24))++) = a2[2];
  }

  if ((v25 | v23) & 1 | (v18 >= v24))
  {
    v29 = *(*(*(a1 + 96) + 8) + 48) + *(*(*(a1 + 96) + 8) + 40);
    v30 = a2[1] + *a2;
    v31 = *(*(*(a1 + 104) + 8) + 24);
    v50 = *(*(*(a1 + 112) + 8) + 24);
    v51 = *(*(*(a1 + 120) + 8) + 24);
    v52 = *(*(*(a1 + 72) + 8) + 24);
    v53 = *(*(*(a1 + 88) + 8) + 24);
    v32 = *(*(*(a1 + 80) + 8) + 24);
    v49 = v30 - v29;
    if (v30 == v29)
    {
      v33 = 0;
    }

    else
    {
      v45 = *(*(*(a1 + 96) + 8) + 48) + *(*(*(a1 + 96) + 8) + 40);
      v46 = v23;
      v47 = v13;
      v48 = a3;
      if (v32 < 1)
      {
LABEL_34:
        *v31 = 0;
        v33 = 1;
      }

      else
      {
        v34 = 0;
        v35 = *(a1 + 184);
        v36 = (*(*(*(a1 + 112) + 8) + 24) + 8);
        v37 = (*(*(*(a1 + 72) + 8) + 24) + 8);
        while (v35 > *v37)
        {
          v38 = *(v37 - 1);
          if (CFStringEncodingUnicodeToBytes())
          {
            break;
          }

          *(v36 - 1) = 0;
          *v36 = 0;
          ++v34;
          v36 += 2;
          v37 += 2;
          if (v34 >= v32)
          {
            goto LABEL_34;
          }
        }

        v33 = 0;
      }

      v11 = v6 & 0x800;
      a3 = v48;
      v23 = v46;
      LOBYTE(v13) = v47;
      v29 = v45;
    }

    *(*(*(a1 + 128) + 8) + 24) = v33;
    if (*(*(*(a1 + 128) + 8) + 24))
    {
      v39 = *(*(a1 + 64) + 8);
      v40 = *(v39 + 40);
      v41 = *(v39 + 48);
      v42 = *(*(a1 + 136) + 8);
      (*(*(a1 + 32) + 16))();
      if (*(*(*(a1 + 136) + 8) + 24) == 1)
      {
        *(*(*(a1 + 128) + 8) + 24) = 0;
        *a3 = 1;
      }

      if (v23)
      {
        *(*(*(a1 + 64) + 8) + 40) += *(*(*(a1 + 64) + 8) + 48);
        *(*(*(a1 + 64) + 8) + 48) = *(a1 + 200) + *(a1 + 192) - *(*(*(a1 + 64) + 8) + 40);
        *(*(*(a1 + 56) + 8) + 24) = 0;
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a3 = 1;
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = v11 >> 11;
        *(*(*(a1 + 48) + 8) + 24) = v13;
      }
    }

    if ((*(*(*(a1 + 136) + 8) + 24) & 1) != 0 || !*(*(*(a1 + 128) + 8) + 24))
    {
      *a3 = 1;
    }

    v43 = *(*(a1 + 96) + 8);
    *(v43 + 40) = v29;
    *(v43 + 48) = v49;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = v11 >> 11;
    *(*(*(a1 + 48) + 8) + 24) = v13;
  }

  result = *a2;
  *(*(*(a1 + 144) + 8) + 40) = *a2;
  *(*(*(a1 + 152) + 8) + 24) = *(*(*(a1 + 144) + 8) + 48) + *(*(*(a1 + 144) + 8) + 40);
  return result;
}

@end