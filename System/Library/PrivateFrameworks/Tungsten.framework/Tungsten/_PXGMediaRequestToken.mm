@interface _PXGMediaRequestToken
- (_PXGMediaRequestToken)initWithMediaProvider:(id)provider mediaRequestID:(int64_t)d;
@end

@implementation _PXGMediaRequestToken

- (_PXGMediaRequestToken)initWithMediaProvider:(id)provider mediaRequestID:(int64_t)d
{
  providerCopy = provider;
  if (providerCopy)
  {
    if (d)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetTextureProvider.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider"}];

    if (d)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGDisplayAssetTextureProvider.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"mediaRequestID != PXInvalidMediaRequestID"}];

LABEL_3:
  v14.receiver = self;
  v14.super_class = _PXGMediaRequestToken;
  v9 = [(_PXGMediaRequestToken *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProvider, provider);
    v10->_mediaRequestID = d;
  }

  return v10;
}

@end