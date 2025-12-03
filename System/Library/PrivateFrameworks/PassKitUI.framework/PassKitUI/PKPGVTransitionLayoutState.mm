@interface PKPGVTransitionLayoutState
+ (__n128)_createWithViewFrame:(__int128 *)frame viewControllerFrame:;
@end

@implementation PKPGVTransitionLayoutState

+ (__n128)_createWithViewFrame:(__int128 *)frame viewControllerFrame:
{
  objc_opt_self();
  v5 = [PKPGVTransitionLayoutState alloc];
  v23 = a2[6];
  v24 = a2[7];
  v25 = *(a2 + 16);
  v19 = a2[2];
  v20 = a2[3];
  v21 = a2[4];
  v22 = a2[5];
  v17 = *a2;
  v18 = a2[1];
  v14 = frame[6];
  v15 = frame[7];
  v16 = *(frame + 16);
  v10 = frame[2];
  v11 = frame[3];
  v12 = frame[4];
  v13 = frame[5];
  result = frame[1];
  v8 = *frame;
  v9 = result;
  if (v5)
  {
    v26.receiver = v5;
    v26.super_class = PKPGVTransitionLayoutState;
    v7 = objc_msgSendSuper2(&v26, sel_init);
    if (v7)
    {
      *(v7 + 88) = v22;
      *(v7 + 104) = v23;
      *(v7 + 120) = v24;
      *(v7 + 24) = v18;
      *(v7 + 40) = v19;
      *(v7 + 56) = v20;
      *(v7 + 17) = v25;
      *(v7 + 72) = v21;
      *(v7 + 8) = v17;
      *(v7 + 15) = v14;
      *(v7 + 16) = v15;
      *(v7 + 34) = v16;
      *(v7 + 11) = v10;
      *(v7 + 12) = v11;
      *(v7 + 13) = v12;
      *(v7 + 14) = v13;
      result = v9;
      *(v7 + 9) = v8;
      *(v7 + 10) = v9;
    }
  }

  return result;
}

@end