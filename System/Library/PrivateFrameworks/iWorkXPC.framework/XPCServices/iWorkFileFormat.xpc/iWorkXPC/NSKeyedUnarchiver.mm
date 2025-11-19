@interface NSKeyedUnarchiver
+ (id)tsu_securelyUnarchiveObjectWithFile:(id)a3 ofClasses:(id)a4;
+ (id)tsu_securelyUnarchiveRoot:(id)a3 forClass:(Class)a4;
+ (id)tsu_securelyUnarchiveRoot:(id)a3 forClasses:(id)a4;
@end

@implementation NSKeyedUnarchiver

+ (id)tsu_securelyUnarchiveRoot:(id)a3 forClass:(Class)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [NSSet setWithObject:a4];
  v8 = [v6 tsu_securelyUnarchiveRoot:v5 forClasses:v7];

  return v8;
}

+ (id)tsu_securelyUnarchiveRoot:(id)a3 forClasses:(id)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:a4 fromData:v5 error:&v11];
  v7 = v11;
  if (!v6)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100158FA0();
    }

    v8 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100158FC8(v5, v8, v7);
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_100159090();
    }

    v9 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_DEBUG))
    {
      sub_1001590B8(v5, v9);
    }
  }

  return v6;
}

+ (id)tsu_securelyUnarchiveObjectWithFile:(id)a3 ofClasses:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v7 = [NSData dataWithContentsOfFile:v5 options:0 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [objc_opt_class() tsu_securelyUnarchiveRoot:v7 forClasses:v6];
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100159130();
    }

    v10 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100159158(v5, v10, v8);
    }

    v9 = 0;
  }

  return v9;
}

@end