@interface GQDClassNameMap
+ (Class)classForName:(const char *)name inRootType:(Class)type;
+ (void)initialize;
+ (void)registerClass:(Class)class forName:(const char *)name inRootType:(Class)type;
+ (void)registerDefaults;
@end

@implementation GQDClassNameMap

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_A4078 = sub_7870();
    v3 = *&NSNonOwnedPointerMapKeyCallBacks.retain;
    *&keyCallBacks.hash = *&NSNonOwnedPointerMapKeyCallBacks.hash;
    *&keyCallBacks.retain = v3;
    *&keyCallBacks.describe = *&NSNonOwnedPointerMapKeyCallBacks.describe;
    v4 = NSNonOwnedPointerMapValueCallBacks;
    qword_A4080 = NSCreateMapTable(&keyCallBacks, &v4, 0);
    [self registerDefaults];
  }
}

+ (void)registerClass:(Class)class forName:(const char *)name inRootType:(Class)type
{
  if (type)
  {
    v8 = NSMapGet(qword_A4080, type);
    if (!v8)
    {
      v8 = sub_7870();
      NSMapInsert(qword_A4080, type, v8);
    }

    v9 = *v8;

    NSMapInsert(v9, name, class);
  }

  else
  {

    [self registerGlobalClass:? name:?];
  }
}

+ (Class)classForName:(const char *)name inRootType:(Class)type
{
  if (!type || (v5 = NSMapGet(qword_A4080, type)) == 0 || (result = NSMapGet(*v5, name)) == 0)
  {
    v7 = *qword_A4078;

    return NSMapGet(v7, name);
  }

  return result;
}

+ (void)registerDefaults
{
  [self registerGlobalClass:objc_opt_class() name:off_9CAB0];
  [self registerGlobalClass:objc_opt_class() name:off_9CAB8];
  [self registerGlobalClass:objc_opt_class() name:off_9CAC0];
  [self registerGlobalClass:objc_opt_class() name:off_9CAD0];
  [self registerGlobalClass:objc_opt_class() name:off_9CAC8];
  [self registerGlobalClass:objc_opt_class() name:off_9CAD8];
  [self registerGlobalClass:objc_opt_class() name:off_9CAE0];
  [self registerGlobalClass:objc_opt_class() name:off_9CAE8];
  [self registerGlobalClass:objc_opt_class() name:off_9CAF0];
  [self registerGlobalClass:objc_opt_class() name:off_9CAF8];
  [self registerGlobalClass:objc_opt_class() name:off_9CB00];
  [self registerGlobalClass:objc_opt_class() name:off_9CB08];
  [self registerGlobalClass:objc_opt_class() name:off_9CB10];
  [self registerGlobalClass:objc_opt_class() name:off_9CB18];
  [self registerGlobalClass:objc_opt_class() name:off_9CB20];
  [self registerGlobalClass:objc_opt_class() name:off_9CB28];
  [self registerGlobalClass:objc_opt_class() name:"padding"];
  [self registerGlobalClass:objc_opt_class() name:"list-label-typeinfo"];
  [self registerGlobalClass:objc_opt_class() name:"list-label-geometry"];
  [self registerGlobalClass:objc_opt_class() name:"external-text-wrap"];
  [self registerGlobalClass:objc_opt_class() name:"linespacing"];
  [self registerGlobalClass:objc_opt_class() name:"columns"];
  [self registerGlobalClass:objc_opt_class() name:"pagemaster"];
  [self registerGlobalClass:objc_opt_class() name:"geometry"];
  [self registerGlobalClass:objc_opt_class() name:"drawable-shape"];
  [self registerGlobalClass:objc_opt_class() name:"shape"];
  [self registerGlobalClass:objc_opt_class() name:"connection-line"];
  [self registerGlobalClass:objc_opt_class() name:"connection-style"];
  [self registerGlobalClass:objc_opt_class() name:"line"];
  [self registerGlobalClass:objc_opt_class() name:"media"];
  [self registerGlobalClass:objc_opt_class() name:"image"];
  [self registerGlobalClass:objc_opt_class() name:"chart-info"];
  [self registerGlobalClass:objc_opt_class() name:"legend-info"];
  [self registerGlobalClass:objc_opt_class() name:"color"];
  [self registerGlobalClass:objc_opt_class() name:"group"];
  [self registerGlobalClass:objc_opt_class() name:"SFWebInfo"];
  [self registerGlobalClass:objc_opt_class() name:"tabular-info"];
  [self registerGlobalClass:objc_opt_class() name:"table-info"];
  [self registerGlobalClass:objc_opt_class() name:"frame"];
  [self registerGlobalClass:objc_opt_class() name:"manipulated-stroke"];
  [self registerGlobalClass:objc_opt_class() name:"stroke"];
  [self registerGlobalClass:objc_opt_class() name:"angle-gradient"];
  [self registerGlobalClass:objc_opt_class() name:"transform-gradient"];
  [self registerGlobalClass:objc_opt_class() name:"textured-fill"];
  [self registerGlobalClass:objc_opt_class() name:"number-format"];
  [self registerGlobalClass:objc_opt_class() name:"duration-format"];
  [self registerGlobalClass:objc_opt_class() name:"date-format"];
  [self registerGlobalClass:objc_opt_class() name:off_9CB30];
  [self registerGlobalClass:objc_opt_class() name:off_9CB38];
  v3 = objc_opt_class();

  [self registerGlobalClass:v3 name:"line-end"];
}

@end