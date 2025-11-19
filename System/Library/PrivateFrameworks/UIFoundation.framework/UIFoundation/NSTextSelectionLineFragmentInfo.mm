@interface NSTextSelectionLineFragmentInfo
@end

@implementation NSTextSelectionLineFragmentInfo

uint64_t __55____NSTextSelectionLineFragmentInfo__fetchCaretOffsets__block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4, double a5)
{
  v6 = *(*(result + 56) + 8);
  v9 = *(v6 + 24);
  v8 = (v6 + 24);
  v7 = v9;
  v10 = *(result + 32);
  if (v9 > *(v10 + 24))
  {
    goto LABEL_2;
  }

  v14 = result;
  if (v7 < 1)
  {
    v19 = 1;
    goto LABEL_34;
  }

  v15 = *(v10 + 48);
  v16 = v15 + 32 * v7;
  v17 = *(v16 - 32);
  v18 = *(v16 - 8);
  if (vabdd_f64(v17, a5) >= 0.001)
  {
    if ((v18 & 1) != 0 || ((v20 = v7 - 1, v7 != 1) ? (v21 = *(v16 - 16) == 0) : (v21 = 0), !v21))
    {
LABEL_22:
      v19 = 1;
      goto LABEL_23;
    }

    v22 = *(v16 - 24);
    v23 = 32 * v7;
    while (vabdd_f64(v17, *(v15 - 64 + v23)) < 0.001)
    {
      --v20;
      v23 -= 32;
      if (v20 <= 0)
      {
        goto LABEL_22;
      }
    }

    while (1)
    {
      v24 = *(*(v14 + 32) + 48) + v23;
      if (*(v24 - 40) == 1)
      {
        result = [v22 isEqual:*(v24 - 56)];
        if (result)
        {
          break;
        }
      }

      --v20;
      v23 -= 32;
      if (v20 <= 0)
      {
        goto LABEL_22;
      }
    }

    v50 = *(*(v14 + 56) + 8);
    v51 = *(v50 + 24);
    v8 = (v50 + 24);
    v7 = v51;
    v19 = 1;
  }

  else
  {
    v19 = v18 != a3;
    if (v18 != a3 && (a3 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  *v8 = v7 - 1;
LABEL_23:
  v25 = *(*(*(v14 + 56) + 8) + 24);
  if (v25 >= 1)
  {
    v26 = *(*(v14 + 32) + 48) + 32 * v25;
    v27 = v25 != 1 && *(v26 - 16) == 0;
    if (v27 && a3 != 0)
    {
      result = [*(v26 - 24) isEqual:a2];
      if (result)
      {
        v29 = *(*(v14 + 56) + 8);
        v32 = *(v29 + 24);
        v30 = (v29 + 24);
        v31 = v32;
LABEL_33:
        *v30 = v31 - 1;
        goto LABEL_34;
      }

      v47 = *(*(v14 + 56) + 8);
      v48 = *(v47 + 24);
      v30 = (v47 + 24);
      v31 = v48;
      if (v48 >= 2)
      {
        v49 = *(*(v14 + 32) + 48) + 32 * v31;
        if ((*(v49 - 8) & 1) == 0 && vabdd_f64(*(v49 - 64), *(v49 - 32)) < 0.001)
        {
          goto LABEL_33;
        }
      }
    }
  }

LABEL_34:
  if (!a2 || *(*(*(v14 + 56) + 8) + 24) >= *(*(v14 + 32) + 24))
  {
LABEL_2:
    *a4 = 1;
    return result;
  }

  v33 = [*(v14 + 40) member:a2];
  v34 = v33;
  if (!v33)
  {
    [*(v14 + 40) addObject:a2];
    v34 = a2;
  }

  v35 = (v33 == 0) ^ a3;
  if (v19)
  {
    v36 = 0;
    goto LABEL_47;
  }

  v37 = *(*(*(v14 + 56) + 8) + 24);
  v36 = *(*(*(v14 + 32) + 48) + 32 * v37 + 8);
  if (*(v14 + 88) == v35)
  {
    v38 = v34;
    if (a3)
    {
      goto LABEL_46;
    }

LABEL_44:
    v39 = *(*(v14 + 64) + 8);
    if (*(v39 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v39 + 24) = v37;
    }

    goto LABEL_46;
  }

  LOBYTE(v35) = v35 ^ 1;
  v38 = *(*(*(v14 + 32) + 48) + 32 * v37 + 8);
  v36 = v34;
  if ((a3 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v34 = v38;
LABEL_47:
  v40 = *(*(v14 + 32) + 48);
  v41 = *(*(*(v14 + 56) + 8) + 24);
  if (*(v40 + 32 * v41 + 16))
  {
    [*(*(*(v14 + 72) + 8) + 40) removeObjectForKey:?];
    v40 = *(*(v14 + 32) + 48);
    v41 = *(*(*(v14 + 56) + 8) + 24);
  }

  *(v40 + 32 * v41) = a5;
  *(*(*(v14 + 32) + 48) + 32 * *(*(*(v14 + 56) + 8) + 24) + 8) = v34;
  v42 = *(v14 + 32);
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __55____NSTextSelectionLineFragmentInfo__fetchCaretOffsets__block_invoke_2;
  v52[3] = &unk_1E7265B98;
  v52[4] = *(v14 + 56);
  _UIFoundationAssert(v42, v44, v34 != 0, v52);
  *(*(*(v14 + 32) + 48) + 32 * *(*(*(v14 + 56) + 8) + 24) + 16) = v36;
  *(*(*(v14 + 32) + 48) + 32 * *(*(*(v14 + 56) + 8) + 24) + 24) = a3;
  *(*(*(v14 + 32) + 48) + 32 * *(*(*(v14 + 56) + 8) + 24) + 25) = v35;
  if (!a3)
  {
    v45 = *(*(*(v14 + 80) + 8) + 40);
    if (!v45)
    {
      *(*(*(v14 + 80) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = *(*(*(v14 + 80) + 8) + 40);
    }

    result = [v45 addObject:v34];
    if (!v36)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  result = [*(v14 + 48) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", *(*(*(v14 + 56) + 8) + 24)), v34}];
  if (v36)
  {
LABEL_55:
    v46 = *(*(*(v14 + 72) + 8) + 40);
    if (!v46)
    {
      *(*(*(v14 + 72) + 8) + 40) = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v46 = *(*(*(v14 + 72) + 8) + 40);
    }

    result = [v46 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", *(*(*(v14 + 56) + 8) + 24)), v36}];
  }

LABEL_58:
  ++*(*(*(v14 + 56) + 8) + 24);
  return result;
}

uint64_t __58____NSTextSelectionLineFragmentInfo__resolveTrailingEdges__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) indexOfObject:a2 inSortedRange:0 options:objc_msgSend(*(a1 + 32) usingComparator:{"count"), 1024, &__block_literal_global_35}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __58____NSTextSelectionLineFragmentInfo__resolveTrailingEdges__block_invoke_cold_1();
  }

    ;
  }

  if (i >= [*(a1 + 32) count])
  {
    return 0;
  }

  v6 = *(a1 + 32);

  return [v6 objectAtIndexedSubscript:i];
}

void __95____NSTextSelectionLineFragmentInfo_rangesBetweenStartingOffset_endOffset_logicallyContinuous___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  if (![a2 isEqual:?] || a4)
  {
    v8 = [a2 compare:a3];
    if (v8 == 1)
    {
      v9 = a3;
    }

    else
    {
      v9 = a2;
    }

    if (v8 == 1)
    {
      a3 = a2;
    }

    v10 = [[NSTextRange alloc] initWithLocation:v9 endLocation:a3];
    [*(a1 + 32) addObject:v10];
  }
}

uint64_t __84____NSTextSelectionLineFragmentInfo_caretIndexForEdgeLocationInTextRanges_leftEdge___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(*(result + 32) + 8);
    v3 = *(v2 + 24);
    if (v3 == 0x7FFFFFFFFFFFFFFFLL || *(result + 40) == v3 > a2)
    {
      *(v2 + 24) = a2;
    }
  }

  return result;
}

@end