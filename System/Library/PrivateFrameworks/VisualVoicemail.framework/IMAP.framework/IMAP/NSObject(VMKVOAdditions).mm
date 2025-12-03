@interface NSObject(VMKVOAdditions)
- (id)vf_observeKeyPath:()VMKVOAdditions options:autoCancelToken:usingBlock:;
@end

@implementation NSObject(VMKVOAdditions)

- (id)vf_observeKeyPath:()VMKVOAdditions options:autoCancelToken:usingBlock:
{
  v10 = a6;
  v11 = a3;
  v12 = [[_VFKeyValueObserverHandler alloc] initWithObject:self keyPath:v11 usingBlock:v10];

  [(_VFKeyValueObserverHandler *)v12 startObservingWithOptions:a4];
  if (a5)
  {
    v13 = VMAutoCancelationToken;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __81__NSObject_VMKVOAdditions__vf_observeKeyPath_options_autoCancelToken_usingBlock___block_invoke;
    v25[3] = &unk_279E33588;
    v14 = &v26;
    v26 = v12;
    v15 = v12;
    v16 = v25;
  }

  else
  {
    v13 = VFCancelationToken;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __81__NSObject_VMKVOAdditions__vf_observeKeyPath_options_autoCancelToken_usingBlock___block_invoke_2;
    v23 = &unk_279E33588;
    v14 = &v24;
    v24 = v12;
    v17 = v12;
    v16 = &v20;
  }

  v18 = [(__objc2_class *)v13 tokenWithCancelationBlock:v16, v20, v21, v22, v23];

  return v18;
}

@end