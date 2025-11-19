@interface GQDClassNameMap
+ (Class)classForName:(const char *)a3 inRootType:(Class)a4;
+ (void)initialize;
+ (void)registerClass:(Class)a3 forName:(const char *)a4 inRootType:(Class)a5;
+ (void)registerDefaults;
@end

@implementation GQDClassNameMap

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_A4078 = sub_7870();
    v3 = *&NSNonOwnedPointerMapKeyCallBacks.retain;
    *&keyCallBacks.hash = *&NSNonOwnedPointerMapKeyCallBacks.hash;
    *&keyCallBacks.retain = v3;
    *&keyCallBacks.describe = *&NSNonOwnedPointerMapKeyCallBacks.describe;
    v4 = NSNonOwnedPointerMapValueCallBacks;
    qword_A4080 = NSCreateMapTable(&keyCallBacks, &v4, 0);
    [a1 registerDefaults];
  }
}

+ (void)registerClass:(Class)a3 forName:(const char *)a4 inRootType:(Class)a5
{
  if (a5)
  {
    v8 = NSMapGet(qword_A4080, a5);
    if (!v8)
    {
      v8 = sub_7870();
      NSMapInsert(qword_A4080, a5, v8);
    }

    v9 = *v8;

    NSMapInsert(v9, a4, a3);
  }

  else
  {

    [a1 registerGlobalClass:? name:?];
  }
}

+ (Class)classForName:(const char *)a3 inRootType:(Class)a4
{
  if (!a4 || (v5 = NSMapGet(qword_A4080, a4)) == 0 || (result = NSMapGet(*v5, a3)) == 0)
  {
    v7 = *qword_A4078;

    return NSMapGet(v7, a3);
  }

  return result;
}

+ (void)registerDefaults
{
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAB0];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAB8];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAC0];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAD0];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAC8];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAD8];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAE0];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAE8];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAF0];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CAF8];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB00];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB08];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB10];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB18];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB20];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB28];
  [a1 registerGlobalClass:objc_opt_class() name:"padding"];
  [a1 registerGlobalClass:objc_opt_class() name:"list-label-typeinfo"];
  [a1 registerGlobalClass:objc_opt_class() name:"list-label-geometry"];
  [a1 registerGlobalClass:objc_opt_class() name:"external-text-wrap"];
  [a1 registerGlobalClass:objc_opt_class() name:"linespacing"];
  [a1 registerGlobalClass:objc_opt_class() name:"columns"];
  [a1 registerGlobalClass:objc_opt_class() name:"pagemaster"];
  [a1 registerGlobalClass:objc_opt_class() name:"geometry"];
  [a1 registerGlobalClass:objc_opt_class() name:"drawable-shape"];
  [a1 registerGlobalClass:objc_opt_class() name:"shape"];
  [a1 registerGlobalClass:objc_opt_class() name:"connection-line"];
  [a1 registerGlobalClass:objc_opt_class() name:"connection-style"];
  [a1 registerGlobalClass:objc_opt_class() name:"line"];
  [a1 registerGlobalClass:objc_opt_class() name:"media"];
  [a1 registerGlobalClass:objc_opt_class() name:"image"];
  [a1 registerGlobalClass:objc_opt_class() name:"chart-info"];
  [a1 registerGlobalClass:objc_opt_class() name:"legend-info"];
  [a1 registerGlobalClass:objc_opt_class() name:"color"];
  [a1 registerGlobalClass:objc_opt_class() name:"group"];
  [a1 registerGlobalClass:objc_opt_class() name:"SFWebInfo"];
  [a1 registerGlobalClass:objc_opt_class() name:"tabular-info"];
  [a1 registerGlobalClass:objc_opt_class() name:"table-info"];
  [a1 registerGlobalClass:objc_opt_class() name:"frame"];
  [a1 registerGlobalClass:objc_opt_class() name:"manipulated-stroke"];
  [a1 registerGlobalClass:objc_opt_class() name:"stroke"];
  [a1 registerGlobalClass:objc_opt_class() name:"angle-gradient"];
  [a1 registerGlobalClass:objc_opt_class() name:"transform-gradient"];
  [a1 registerGlobalClass:objc_opt_class() name:"textured-fill"];
  [a1 registerGlobalClass:objc_opt_class() name:"number-format"];
  [a1 registerGlobalClass:objc_opt_class() name:"duration-format"];
  [a1 registerGlobalClass:objc_opt_class() name:"date-format"];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB30];
  [a1 registerGlobalClass:objc_opt_class() name:off_9CB38];
  v3 = objc_opt_class();

  [a1 registerGlobalClass:v3 name:"line-end"];
}

@end