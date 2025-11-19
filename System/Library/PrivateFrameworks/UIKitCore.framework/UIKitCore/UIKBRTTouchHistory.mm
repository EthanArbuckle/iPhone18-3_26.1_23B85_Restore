@interface UIKBRTTouchHistory
@end

@implementation UIKBRTTouchHistory

uint64_t __31___UIKBRTTouchHistory_lastTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 ignoreForDrift])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 ignoreTouch] ^ 1;
  }

  return v3;
}

void __43___UIKBRTTouchHistory_adjustHistoryOffset___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 ignoreForDrift] & 1) == 0 && (objc_msgSend(v5, "ignoreTouch") & 1) == 0 && (objc_msgSend(v5, "isActive") & 1) == 0)
  {
    [v5 errorVector];
    [v5 setErrorVector:{v3 - *(a1 + 32), v4 - *(a1 + 40)}];
  }
}

uint64_t __35___UIKBRTTouchHistory__sortHistory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isActive])
  {
    v3 = 0;
  }

  else if ([v2 ignoreForDrift])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 ignoreTouch];
  }

  return v3;
}

uint64_t __35___UIKBRTTouchHistory__sortHistory__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isActive] && !objc_msgSend(v5, "isActive"))
  {
    goto LABEL_15;
  }

  if ([v4 isActive] & 1) == 0 && (objc_msgSend(v5, "isActive"))
  {
    goto LABEL_18;
  }

  if (![v4 isActive])
  {
    goto LABEL_12;
  }

  if ([v4 ignoreTouch])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 ignoreForDrift];
  }

  if ([v5 ignoreTouch])
  {
    LOBYTE(v7) = 1;
    goto LABEL_11;
  }

  v7 = [v5 ignoreForDrift];
  if (v6)
  {
    if (!v7)
    {
LABEL_18:
      v12 = -1;
      goto LABEL_19;
    }
  }

LABEL_11:
  if (!(v6 & 1 | ((v7 & 1) == 0)))
  {
LABEL_15:
    v12 = 1;
    goto LABEL_19;
  }

LABEL_12:
  [v4 touchTime];
  v9 = v8;
  [v5 touchTime];
  v11 = v9 - v10;
  if (v11 < 0.0)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11 > 0.0;
  }

LABEL_19:

  return v12;
}

uint64_t __43___UIKBRTTouchHistory__decayHistoryToSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  if (([v6 isActive] & 1) != 0 || (v7 = *(a1 + 40), objc_msgSend(v6, "touchTime"), v7 - v8 < *(a1 + 48)))
  {
    v9 = 0;
  }

  else
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 24) - 1;
    *(v10 + 24) = v11;
    *a4 = v11 == 0;
    v9 = 1;
  }

  return v9;
}

BOOL __43___UIKBRTTouchHistory__decayHistoryToSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  if (([v3 isActive] & 1) == 0)
  {
    v4 = *(a1 + 32);
    [v3 touchTime];
    if (v4 - v5 >= *(a1 + 40))
    {
      v6 = 1;
    }
  }

  return v6;
}

double __36___UIKBRTTouchHistory__updateOffset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 errorVector];
  *(*(*(a1 + 32) + 8) + 32) = v4 + *(*(*(a1 + 32) + 8) + 32);
  [v3 errorVector];
  v6 = v5;

  v7 = *(*(a1 + 32) + 8);
  result = v6 + *(v7 + 40);
  *(v7 + 40) = result;
  return result;
}

void __36___UIKBRTTouchHistory__updateOffset__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v8 = a2;
  if (([v8 ignoreForDrift] & 1) == 0 && (objc_msgSend(v8, "ignoreTouch") & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v7 + 1;
    *a4 = v7 > 8;
  }
}

@end