@interface CSSearchableIndex(Timeout)
- (void)indexSearchableItems:()Timeout timeout:timeoutError:completion:;
@end

@implementation CSSearchableIndex(Timeout)

- (void)indexSearchableItems:()Timeout timeout:timeoutError:completion:
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__CSSearchableIndex_Timeout__indexSearchableItems_timeout_timeoutError_completion___block_invoke;
  v17[3] = &unk_27893D7E8;
  v14 = v13;
  v18 = v14;
  v20 = &v21;
  v15 = v12;
  v19 = v15;
  [a1 indexSearchableItems:v10 completionHandler:v17];
  v16 = dispatch_time(0, a2);
  if (dispatch_group_wait(v14, v16))
  {
    os_unfair_lock_lock(&lock);
    if (v22[3])
    {
      os_unfair_lock_unlock(&lock);
    }

    else
    {
      *(v22 + 24) = 1;
      os_unfair_lock_unlock(&lock);
      if (v15)
      {
        (*(v15 + 2))(v15, v11);
      }
    }
  }

  _Block_object_dispose(&v21, 8);
}

@end