@interface INStartCallIntent(Idiom)
- (id)wf_updateIdiomIfNeeded:()Idiom;
@end

@implementation INStartCallIntent(Idiom)

- (id)wf_updateIdiomIfNeeded:()Idiom
{
  if ([a1 callCapability] != 2 || (result = objc_msgSend(a1, "preferredCallProvider"), (a3 & 0xFFFFFFFFFFFFFFFELL) != 4) || result != 2)
  {
    v6.receiver = a1;
    v6.super_class = &off_1F4B05258;
    return objc_msgSendSuper2(&v6, sel_wf_updateIdiomIfNeeded_, a3);
  }

  return result;
}

@end