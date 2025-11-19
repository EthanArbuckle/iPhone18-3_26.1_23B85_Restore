@interface GQDSStylesheet
- (GQDSStylesheet)initWithRoot:(id)a3;
- (__CFArray)retainedArrayOfIdentifiedStyles;
- (id)styleWithIdentifier:(const char *)a3;
- (void)addStyle:(id)a3 needingParentResolution:(const char *)a4 resolveInParent:(BOOL)a5;
- (void)dealloc;
- (void)resolveStyleParents;
@end

@implementation GQDSStylesheet

- (GQDSStylesheet)initWithRoot:(id)a3
{
  v7.receiver = self;
  v7.super_class = GQDSStylesheet;
  v4 = [(GQDSStylesheet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mRoot = a3;
    v4->mIdentifiedStyles = CFDictionaryCreateMutable(0, 0, &unk_85100, &kCFTypeDictionaryValueCallBacks);
    v5->mStylesNeedingParentResolution = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5->mStylesNeedingParentResolutionInParent = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  return v5;
}

- (void)dealloc
{
  self->mRoot = 0;

  CFRelease(self->mIdentifiedStyles);
  mStylesNeedingParentResolution = self->mStylesNeedingParentResolution;
  if (mStylesNeedingParentResolution)
  {
    CFRelease(mStylesNeedingParentResolution);
  }

  mStylesNeedingParentResolutionInParent = self->mStylesNeedingParentResolutionInParent;
  if (mStylesNeedingParentResolutionInParent)
  {
    CFRelease(mStylesNeedingParentResolutionInParent);
  }

  v5.receiver = self;
  v5.super_class = GQDSStylesheet;
  [(GQDSStylesheet *)&v5 dealloc];
}

- (id)styleWithIdentifier:(const char *)a3
{
  result = CFDictionaryGetValue(self->mIdentifiedStyles, a3);
  if (!result)
  {
    result = self->mParent;
    if (result)
    {

      return [result styleWithIdentifier:a3];
    }
  }

  return result;
}

- (void)addStyle:(id)a3 needingParentResolution:(const char *)a4 resolveInParent:(BOOL)a5
{
  v5 = a5;
  v7 = [[GQDSParentResolutionEntry alloc] initWithStyle:a3 parentIdentifier:a4];
  v9 = v7;
  v8 = 40;
  if (v5)
  {
    v8 = 32;
  }

  CFArrayAppendValue(*(&self->super.isa + v8), v7);
}

- (void)resolveStyleParents
{
  mStylesNeedingParentResolution = self->mStylesNeedingParentResolution;
  if (mStylesNeedingParentResolution)
  {
    v5.length = CFArrayGetCount(self->mStylesNeedingParentResolution);
    v5.location = 0;
    CFArrayApplyFunction(mStylesNeedingParentResolution, v5, sub_12824, self);
    CFRelease(self->mStylesNeedingParentResolution);
    self->mStylesNeedingParentResolution = 0;
  }

  mStylesNeedingParentResolutionInParent = self->mStylesNeedingParentResolutionInParent;
  if (mStylesNeedingParentResolutionInParent)
  {
    if (self->mParent)
    {
      v6.length = CFArrayGetCount(self->mStylesNeedingParentResolutionInParent);
      v6.location = 0;
      CFArrayApplyFunction(mStylesNeedingParentResolutionInParent, v6, sub_12824, self->mParent);
      CFRelease(self->mStylesNeedingParentResolutionInParent);
      self->mStylesNeedingParentResolutionInParent = 0;
    }
  }
}

- (__CFArray)retainedArrayOfIdentifiedStyles
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFDictionaryApplyFunction(self->mIdentifiedStyles, sub_12984, Mutable);
  return Mutable;
}

@end