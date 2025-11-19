@interface TSPArchivingUtility
+ (int)tagNumberForLastExtensionFieldInMessage:(const Message *)a3;
@end

@implementation TSPArchivingUtility

+ (int)tagNumberForLastExtensionFieldInMessage:(const Message *)a3
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(a3->var0 + 19))(a3, a2);
  google::protobuf::Reflection::ListFields(v4, a3, &v10);
  v5 = v11;
  while (v5 != v10)
  {
    v7 = *(v5 - 1);
    v5 -= 8;
    v6 = v7;
    if (*(v7 + 67) == 1)
    {
      v8 = *(v6 + 68);
      if (!v10)
      {
        return v8;
      }

      goto LABEL_7;
    }
  }

  v8 = 0;
  if (!v10)
  {
    return v8;
  }

LABEL_7:
  v11 = v10;
  operator delete(v10);
  return v8;
}

@end