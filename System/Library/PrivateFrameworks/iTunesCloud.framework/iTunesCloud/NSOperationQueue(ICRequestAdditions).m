@interface NSOperationQueue(ICRequestAdditions)
+ (id)ic_sharedRequestOperationQueueWithQualityOfService:()ICRequestAdditions;
@end

@implementation NSOperationQueue(ICRequestAdditions)

+ (id)ic_sharedRequestOperationQueueWithQualityOfService:()ICRequestAdditions
{
  v3 = __ROR8__(a3 - 9, 3);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_3 != -1)
      {
        dispatch_once(&ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_3, &__block_literal_global_5);
      }

      v4 = &ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_2;
    }

    else
    {
      if (v3 != 3)
      {
LABEL_12:
        if (ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_24 != -1)
        {
          dispatch_once(&ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_24, &__block_literal_global_26);
        }

        v4 = &ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_23;
        goto LABEL_21;
      }

      if (ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_10 != -1)
      {
        dispatch_once(&ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_10, &__block_literal_global_12_25138);
      }

      v4 = &ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_9;
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken != -1)
        {
          dispatch_once(&ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken, &__block_literal_global_25137);
        }

        v4 = &ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue;
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_17 != -1)
    {
      dispatch_once(&ic_sharedRequestOperationQueueWithQualityOfService__sOnceToken_17, &__block_literal_global_19);
    }

    v4 = &ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_16;
  }

LABEL_21:
  v5 = *v4;

  return v5;
}

@end