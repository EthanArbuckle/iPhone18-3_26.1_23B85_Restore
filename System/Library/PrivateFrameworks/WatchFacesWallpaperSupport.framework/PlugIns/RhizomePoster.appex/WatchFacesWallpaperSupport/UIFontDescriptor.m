@interface UIFontDescriptor
+ (id)rhizomeFontDescriptor;
@end

@implementation UIFontDescriptor

+ (id)rhizomeFontDescriptor
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = qword_10004BDB0;
  v10 = qword_10004BDB0;
  if (!qword_10004BDB0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001CF8;
    v6[3] = &unk_100044D90;
    v6[4] = &v7;
    sub_100001CF8(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 fontDescriptorForSectName:@"__Rhizome" fromMachO:&_mh_execute_header];

  return v4;
}

@end