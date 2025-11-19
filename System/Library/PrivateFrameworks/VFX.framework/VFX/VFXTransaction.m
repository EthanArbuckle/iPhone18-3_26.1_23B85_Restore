@interface VFXTransaction
+ (BOOL)immediateMode;
+ (BOOL)setImmediateMode:(BOOL)a3;
+ (VFXTimingFunction)timingFunction;
+ (_BYTE)setImmediateModeWithAtomicTime:(double)a1;
+ (__CFXWorld)immediateModeRestrictedContext;
+ (id)animationTimingFunction;
+ (void)checkUncommittedTransactions;
+ (void)enqueueCommandForObject:(id)a3 immediateTransactionBlock:(id)a4;
+ (void)performPresentationObjectQueriesInWorld:(id)a3 usingBlock:(id)a4;
+ (void)postCommandAvoidingImmediateModeWithWorldRef:(void *)a3 applyBlock:(id)a4;
+ (void)postCommandWithObject:(id)a3 applyBlock:(id)a4;
+ (void)postCommandWithObject:(id)a3 key:(id)a4 subscriptIndex:(unint64_t)a5 derivedKeyPath:(id)a6 applyBlock:(id)a7;
+ (void)postCommandWithObject:(id)a3 key:(id)a4 subscriptKey:(id)a5 derivedKeyPath:(id)a6 applyBlock:(id)a7;
+ (void)postCommandWithObject:(id)a3 keyPath:(id)a4 applyBlock:(id)a5;
+ (void)postCommandWithWorldRef:(void *)a3 applyBlock:(id)a4;
+ (void)postReleaseCommandWithCFXObject:(void *)a3;
+ (void)setAnimationDuration:(double)a3;
+ (void)setAnimationTimingFunction:(id)a3;
+ (void)setBeginTime:(double)a3;
+ (void)setTimingFunction:(id)a3;
- (void)setAnimationTimingFunction:(id)a3;
@end

@implementation VFXTransaction

+ (void)checkUncommittedTransactions
{
  v0 = sub_1AF276CB4();
  Count = CFArrayGetCount(v0[2]);
  v2 = Count;
  if (Count < 2)
  {
    if (Count == 1)
    {
      return;
    }
  }

  else
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF11F8();
    }

    if (*(CFArrayGetValueAtIndex(v0[2], v2 - 1) + 5) == 0.0)
    {
      v4 = sub_1AF0D5194();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF122C();
      }
    }
  }

  v5 = sub_1AF0D5194();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1260(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

+ (_BYTE)setImmediateModeWithAtomicTime:(double)a1
{
  result = sub_1AF276C70();
  result[52] |= 4u;
  qword_1ED739AC0 = *&a1;
  return result;
}

+ (void)setAnimationDuration:(double)a3
{
  if (a3 >= 3.40282347e38)
  {
    a3 = 3.40282347e38;
  }

  v3 = a3;
  sub_1AF277E5C(v3);
}

+ (void)setBeginTime:(double)a3
{
  if (a3 >= 3.40282347e38)
  {
    a3 = 3.40282347e38;
  }

  v3 = a3;
  sub_1AF277F9C(v3);
}

+ (VFXTimingFunction)timingFunction
{
  result = sub_1AF277F80();
  if (result)
  {
    v3 = result;
    v4 = [VFXTimingFunction alloc];
    v7 = objc_msgSend_initWithTimingFunctionRef_(v4, v5, v3, v6);

    return v7;
  }

  return result;
}

+ (void)setTimingFunction:(id)a3
{
  v4 = objc_msgSend_cfxTimingFunction(a3, a2, a3, v3);

  sub_1AF277EF8(v4);
}

+ (id)animationTimingFunction
{
  result = sub_1AF277F80();
  if (result)
  {

    return sub_1AF36FD0C(result);
  }

  return result;
}

+ (void)setAnimationTimingFunction:(id)a3
{
  v3 = sub_1AF36FC84(a3, a2);

  sub_1AF277EF8(v3);
}

+ (BOOL)setImmediateMode:(BOOL)a3
{
  v3 = a3;
  v4 = sub_1AF276C70();
  v5 = sub_1AF2780E0(v4);
  sub_1AF278058(v3);
  return v5;
}

+ (BOOL)immediateMode
{
  v2 = sub_1AF276C70();
  if (sub_1AF2780E0(v2))
  {
    return 1;
  }

  return sub_1AF27803C();
}

+ (__CFXWorld)immediateModeRestrictedContext
{
  sub_1AF276C70();

  return +[VFXRenderer allocatedTextureCount]_0();
}

+ (void)postReleaseCommandWithCFXObject:(void *)a3
{
  v4 = sub_1AF276C70();
  if (sub_1AF2780EC(v4))
  {

    CFRelease(a3);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF336380;
    v5[3] = &unk_1E7A7E6C0;
    v5[4] = a3;
    sub_1AF278390(v4, 0, a3, 0, 0, v5);
  }
}

+ (void)postCommandWithWorldRef:(void *)a3 applyBlock:(id)a4
{
  v6 = sub_1AF276C70();
  if (sub_1AF2780EC(v6))
  {

    sub_1AF336414(a4, a3, v7);
  }

  else
  {

    sub_1AF278390(v6, 0, a3, 0, 1, a4);
  }
}

+ (void)postCommandAvoidingImmediateModeWithWorldRef:(void *)a3 applyBlock:(id)a4
{
  v6 = sub_1AF276C70();

  sub_1AF278390(v6, 0, a3, 0, 1, a4);
}

+ (void)postCommandWithObject:(id)a3 applyBlock:(id)a4
{
  v6 = sub_1AF276C70();
  if (sub_1AF2780EC(v6))
  {
    v10 = sub_1AF336580(a3, v7, v8, v9);

    sub_1AF336414(a4, v10, v11);
  }

  else
  {
    v12 = objc_msgSend___CFObject(a3, v7, v8, v9);

    sub_1AF278390(v6, a3, v12, 0, 1, a4);
  }
}

+ (void)postCommandWithObject:(id)a3 keyPath:(id)a4 applyBlock:(id)a5
{
  v8 = sub_1AF276C70();
  if (sub_1AF2780EC(v8))
  {
    v12 = sub_1AF336580(a3, v9, v10, v11);
    v16 = objc_msgSend___CFObject(a3, v13, v14, v15);

    sub_1AF277660(v12, v16, a4, v8, a5);
  }

  else
  {
    v17 = objc_msgSend___CFObject(a3, v9, v10, v11);

    sub_1AF278390(v8, a3, v17, a4, 1, a5);
  }
}

+ (void)postCommandWithObject:(id)a3 key:(id)a4 subscriptIndex:(unint64_t)a5 derivedKeyPath:(id)a6 applyBlock:(id)a7
{
  v12 = sub_1AF276C70();
  if (sub_1AF2780EC(v12))
  {
    v16 = sub_1AF336580(a3, v13, v14, v15);
    v20 = objc_msgSend___CFObject(a3, v17, v18, v19);

    sub_1AF27779C(v16, v20, a4, a5, v12, a7);
  }

  else
  {
    v21 = objc_msgSend___CFObject(a3, v13, v14, v15);

    sub_1AF278390(v12, a3, v21, a6, 1, a7);
  }
}

+ (void)postCommandWithObject:(id)a3 key:(id)a4 subscriptKey:(id)a5 derivedKeyPath:(id)a6 applyBlock:(id)a7
{
  v12 = sub_1AF276C70();
  if (sub_1AF2780EC(v12))
  {
    v16 = sub_1AF336580(a3, v13, v14, v15);
    v20 = objc_msgSend___CFObject(a3, v17, v18, v19);

    sub_1AF2778F4(v16, v20, a4, a5, v12, a7);
  }

  else
  {
    v21 = objc_msgSend___CFObject(a3, v13, v14, v15);

    sub_1AF278390(v12, a3, v21, a6, 1, a7);
  }
}

+ (void)enqueueCommandForObject:(id)a3 immediateTransactionBlock:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = objc_msgSend_world(a3, v8, v9, v10);
  }

  if (objc_opt_respondsToSelector())
  {
    if (!objc_msgSend_worldRef(a3, v11, v12, v13))
    {
      v15 = sub_1AF0D5194();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF9144(v15);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF336964;
    v17[3] = &unk_1E7A7F250;
    v17[4] = a4;
    v17[5] = a2;
    objc_msgSend_postCommandWithObject_applyBlock_(a1, v14, a3, v17);
  }

  else
  {
    v16 = sub_1AF0D5194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF90C4();
    }
  }
}

+ (void)performPresentationObjectQueriesInWorld:(id)a3 usingBlock:(id)a4
{
  v5 = objc_msgSend_worldRef(a3, a2, a3, a4);
  v7 = v5;
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    (*(a4 + 2))(a4, &v7);
    sub_1AF1CEA9C(v6);
  }

  else
  {
    (*(a4 + 2))(a4, &v7);
  }
}

- (void)setAnimationTimingFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = objc_msgSend_functionWithName_(MEMORY[0x1E69793D0], v4, a3, v5);
  }

  MEMORY[0x1EEE66B58](VFXTransaction, sel_setAnimationTimingFunction_, a3, v5);
}

@end