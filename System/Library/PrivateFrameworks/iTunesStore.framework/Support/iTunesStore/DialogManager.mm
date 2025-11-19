@interface DialogManager
+ (BOOL)checkInDialog:(id)a3;
+ (void)checkOutDialog:(id)a3;
@end

@implementation DialogManager

+ (BOOL)checkInDialog:(id)a3
{
  pthread_mutex_lock(&stru_1003829D8);
  v4 = qword_100383DD0;
  if (!qword_100383DD0)
  {
    v4 = objc_alloc_init(NSMutableArray);
    qword_100383DD0 = v4;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqual:a3])
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [qword_100383DD0 addObject:a3];
  v9 = 1;
LABEL_13:
  pthread_mutex_unlock(&stru_1003829D8);
  return v9;
}

+ (void)checkOutDialog:(id)a3
{
  pthread_mutex_lock(&stru_1003829D8);
  [qword_100383DD0 removeObject:a3];

  pthread_mutex_unlock(&stru_1003829D8);
}

@end