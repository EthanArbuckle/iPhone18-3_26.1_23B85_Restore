@interface PostEspressoShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
@end

@implementation PostEspressoShared

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2270;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2270)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(PostEspressoShared);
    v5 = qword_2A18C2270;
  }

  qword_2A18C2270 = v6;

LABEL_6:
  v7 = qword_2A18C2270;
  objc_sync_exit(v4);

  return v7;
}

@end