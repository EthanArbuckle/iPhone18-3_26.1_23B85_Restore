@interface _PXGMediaRequestToken
- (_PXGMediaRequestToken)initWithMediaProvider:(id)a3 mediaRequestID:(int64_t)a4;
@end

@implementation _PXGMediaRequestToken

- (_PXGMediaRequestToken)initWithMediaProvider:(id)a3 mediaRequestID:(int64_t)a4
{
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetTextureProvider.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetTextureProvider.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"mediaRequestID != PXInvalidMediaRequestID"}];

LABEL_3:
  v14.receiver = self;
  v14.super_class = _PXGMediaRequestToken;
  v9 = [(_PXGMediaRequestToken *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProvider, a3);
    v10->_mediaRequestID = a4;
  }

  return v10;
}

@end