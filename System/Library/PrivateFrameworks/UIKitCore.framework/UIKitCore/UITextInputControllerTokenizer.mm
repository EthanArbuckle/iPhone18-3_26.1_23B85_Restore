@interface UITextInputControllerTokenizer
@end

@implementation UITextInputControllerTokenizer

void __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 string];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v7 = [v6 beginningOfDocument];
  v8 = [WeakRetained offsetFromPosition:v7 toPosition:*(a1 + 40)];

  v9 = [(__CFString *)v4 length];
  if (*(a1 + 64) < 1)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v11 = [v10 positionFromPosition:*(a1 + 40) offset:-*(a1 + 64)];

  v12 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v13 = [v12 positionFromPosition:*(a1 + 40) offset:*(a1 + 64)];

  if (v11)
  {
    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v27 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v11 = [v27 beginningOfDocument];

    if (v13)
    {
      goto LABEL_4;
    }
  }

  v28 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v13 = [v28 endOfDocument];

LABEL_4:
  v14 = 0;
  if (v11 && v13)
  {
    v104 = v4;
    v15 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v16 = [v15 textRangeFromPosition:v11 toPosition:v13];

    if (v16)
    {
      v17 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v103 = v3;
      v18 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v18 beginningOfDocument];
      v19 = v102 = v16;
      v14 = [v17 offsetFromPosition:v19 toPosition:v11];

      v20 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v21 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v22 = [v21 beginningOfDocument];
      v23 = v8;
      v24 = [v20 offsetFromPosition:v22 toPosition:v13];

      v3 = v103;
      v25 = v24 - v14;
      v8 = v23;
      v26 = [(__CFString *)v104 length];
      if (v25 >= v26)
      {
        v9 = v26;
      }

      else
      {
        v9 = v25;
      }

      v16 = v102;
    }

    else
    {
      v14 = 0;
    }

    v4 = v104;
  }

LABEL_17:
  v29 = *(a1 + 32);
  v30 = *(a1 + 72);
  if (v29)
  {
    v31 = 1;
    if (v30 == 1)
    {
      v31 = 2;
    }

    v32 = (v29 + OBJC_IVAR____UITextInputControllerTokenizer__textInput[v31]);
    v33 = *v32;
    if (*v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = v32[1] + v33;
      v35 = v14 >= v33 && v14 + v9 <= v34;
      if (!v35)
      {
        v36 = 6;
        if (v30 == 1)
        {
          v36 = 5;
        }

        *(v29 + OBJC_IVAR____UITextInputControllerTokenizer__textInput[v36]) = 1;
      }
    }
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v30 > 2)
  {
    switch(v30)
    {
      case 3:
        v37 = v8;
        v38 = 2;
        break;
      case 4:
        v37 = v8;
        v38 = 3;
        break;
      case 5:
        v39 = [(__CFString *)v4 length];
        v40 = *(*(a1 + 56) + 8);
        *(v40 + 32) = 0;
        *(v40 + 40) = v39;
        goto LABEL_126;
      default:
        goto LABEL_29;
    }
  }

  else
  {
    switch(v30)
    {
      case 0:
        *(*(*(a1 + 56) + 8) + 32) = xmmword_18A678470;
        if (*(a1 + 80) == 1)
        {
          v41 = v8 + 1;
          if (v41 >= [(__CFString *)v4 length])
          {
            if (v41 == [(__CFString *)v4 length])
            {
              v101 = *(*(a1 + 56) + 8);
              *(v101 + 32) = v41;
              *(v101 + 40) = 0;
            }

            goto LABEL_126;
          }

          v42 = v4;
          v43 = v41;
        }

        else
        {
          v43 = v8 - 1;
          if (v8 < 1)
          {
            goto LABEL_126;
          }

          v42 = v4;
        }

        v86 = [(__CFString *)v42 rangeOfComposedCharacterSequenceAtIndex:v43];
        v87 = *(*(a1 + 56) + 8);
        *(v87 + 32) = v86;
        *(v87 + 40) = v88;
        goto LABEL_126;
      case 1:
        v37 = v8;
        v38 = 0x2000000;
        break;
      case 2:
        v37 = v8;
        v38 = 1;
        break;
      default:
LABEL_29:
        *(*(*(a1 + 56) + 8) + 32) = xmmword_18A678470;
        goto LABEL_126;
    }
  }

  v44 = *(a1 + 32);
  if (!v44)
  {
LABEL_59:
    v113.location = v14;
    v113.length = v9;
    v46 = CFStringTokenizerCreate(0, v4, v113, v38, 0);
    [(_UITextInputControllerTokenizer *)*(a1 + 32) setTokenizer:v46 forGranularity:*(a1 + 72)];
    v49 = *(a1 + 32);
    v51 = *(a1 + 72);
    if (v49 && v51 != 1)
    {
      *(v49 + 48) = v38;
      v49 = *(a1 + 32);
    }

    v50 = v37;
    if (!v49)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

  v45 = 3;
  if (v30 == 1)
  {
    v45 = 4;
  }

  v46 = *(v44 + OBJC_IVAR____UITextInputControllerTokenizer__textInput[v45]);
  if (v46)
  {
    v47 = v38 == *(v44 + 48);
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    [(_UITextInputControllerTokenizer *)v44 setTokenizer:v30 forGranularity:?];
    goto LABEL_59;
  }

  if (!v46)
  {
    goto LABEL_59;
  }

  v48 = 6;
  if (v30 == 1)
  {
    v48 = 5;
  }

  if (*(v44 + OBJC_IVAR____UITextInputControllerTokenizer__textInput[v48]) == 1)
  {
    v112.location = v14;
    v112.length = v9;
    CFStringTokenizerSetString(v46, v4, v112);
    v49 = *(a1 + 32);
    v50 = v37;
    if (v49)
    {
      v51 = *(a1 + 72);
LABEL_63:
      v47 = v51 == 1;
      v52 = v51 == 1;
      v53 = 6;
      if (v47)
      {
        v53 = 5;
      }

      *(v49 + OBJC_IVAR____UITextInputControllerTokenizer__textInput[v53]) = 0;
      v54 = *(a1 + 32);
      if (v54)
      {
        v47 = !v52;
        v55 = 1;
        if (!v47)
        {
          v55 = 2;
        }

        v56 = (v54 + OBJC_IVAR____UITextInputControllerTokenizer__textInput[v55]);
        *v56 = v14;
        v56[1] = v9;
      }
    }
  }

  else
  {
    v50 = v37;
  }

LABEL_69:
  v107 = 0;
  v108 = &v107;
  v109 = 0x3010000000;
  v110 = "";
  v111 = xmmword_18A682E70;
  if (*(a1 + 80) == 1)
  {
    v57 = v14 + v9;
    for (i = v50; ; ++i)
    {
      if (i >= [(__CFString *)v4 length])
      {
        goto LABEL_119;
      }

      CFStringTokenizerGoToTokenAtIndex(v46, i);
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v46);
      if (CurrentTokenRange.location == -1)
      {
        v66 = v108;
        v108[4] = -1;
        v64 = v66 + 4;
        v64[1] = CurrentTokenRange.length;
        v65 = v64 + 1;
        goto LABEL_84;
      }

      if (CurrentTokenRange.location <= v14)
      {
        location = v14;
      }

      else
      {
        location = CurrentTokenRange.location;
      }

      v61 = CurrentTokenRange.location + CurrentTokenRange.length;
      if (CurrentTokenRange.location + CurrentTokenRange.length >= v57)
      {
        v61 = v57;
      }

      v62 = v61 - location;
      if (v61 <= location)
      {
        v62 = 0;
        location = 0;
        v67 = v108;
        v108[4] = 0;
        v64 = v67 + 4;
        v64[1] = 0;
        v65 = v64 + 1;
      }

      else
      {
        v63 = v108;
        v108[4] = location;
        v64 = v63 + 4;
        v64[1] = v62;
        v65 = v64 + 1;
        if (location == -1)
        {
          goto LABEL_84;
        }
      }

      v68 = location + v62;
      if (v68 > v50)
      {
        v85 = *off_1E70EC8C8;
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke_2;
        v106[3] = &unk_1E7126C70;
        v106[4] = &v107;
        [v3 enumerateAttribute:v85 inRange:v50 options:v68 - v50 usingBlock:{0, v106}];
        goto LABEL_119;
      }

LABEL_84:
      *v64 = -1;
      *v65 = 0;
    }
  }

  if (*(a1 + 72) == 3)
  {
    v69 = v4;
    v70 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v71 = [v70 selectionAffinity];

    if (v71)
    {
      v72 = -1;
    }

    else
    {
      v72 = 0;
    }

    v4 = v69;
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 + v50;
  if (v72 + v50 >= 0)
  {
    v74 = v72 + v50;
    do
    {
      CFStringTokenizerGoToTokenAtIndex(v46, v74);
      v75 = CFStringTokenizerGetCurrentTokenRange(v46);
      if (v75.location == -1)
      {
        v84 = v108;
        v108[4] = -1;
        v84[5] = v75.length;
      }

      else
      {
        if (v75.location <= v14)
        {
          v76 = v14;
        }

        else
        {
          v76 = v75.location;
        }

        v77 = v75.location + v75.length;
        if (v75.location + v75.length >= v14 + v9)
        {
          v77 = v14 + v9;
        }

        v78 = v77 <= v76;
        v79 = v77 - v76;
        if (v78)
        {
          v80 = 0;
        }

        else
        {
          v80 = v76;
        }

        if (v78)
        {
          v81 = 0;
        }

        else
        {
          v81 = v79;
        }

        v82 = v108;
        v108[4] = v80;
        v82[5] = v81;
        if (v80 != -1 && v73 >= v80)
        {
          v89 = *off_1E70EC8C8;
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke_3;
          v105[3] = &unk_1E7126C70;
          v105[4] = &v107;
          [v3 enumerateAttribute:v89 inRange:v80 options:v73 - v80 usingBlock:{2, v105}];
          break;
        }
      }

      v35 = v74-- < 1;
    }

    while (!v35);
  }

LABEL_119:
  v91 = v108[4];
  v90 = v108[5];
  if (v91 == -1)
  {
    v91 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(*(*(a1 + 56) + 8) + 32) = v91;
  *(*(*(a1 + 56) + 8) + 40) = v90;
  if (v90 >= 1)
  {
    v92 = [v3 string];
    v93 = [v92 substringWithRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
    v94 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v95 = [v93 rangeOfCharacterFromSet:v94 options:4];
    v97 = v96;

    v98 = *(*(a1 + 56) + 8);
    v99 = *(v98 + 32);
    if (v99 + v95 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v100 = *(v98 + 40);
      if (v99 + v95 + v97 == v100 + v99)
      {
        *(v98 + 40) = v100 - v97;
      }
    }
  }

  _Block_object_dispose(&v107, 8);
LABEL_126:
}

void __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v10 = v8;
    v9 = [v8 embeddingType] == 1;
    v8 = v10;
    if (v9)
    {
      *(*(*(a1 + 32) + 8) + 40) = a3 - *(*(*(a1 + 32) + 8) + 32);
      *a5 = 1;
    }
  }
}

void __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (v9)
  {
    v13 = v9;
    v10 = [v9 embeddingType] == 1;
    v9 = v13;
    if (v10)
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 32);
      if (a3 + a4 >= v12)
      {
        *(v11 + 40) = a3 + a4 - v12;
      }

      *a5 = 1;
    }
  }
}

@end