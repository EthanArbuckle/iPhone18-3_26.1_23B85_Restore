@interface NSKeyedUnarchiver
+ (id)tsu_securelyUnarchiveObjectWithFile:(id)file ofClasses:(id)classes;
+ (id)tsu_securelyUnarchiveRoot:(id)root forClass:(Class)class;
+ (id)tsu_securelyUnarchiveRoot:(id)root forClasses:(id)classes;
@end

@implementation NSKeyedUnarchiver

+ (id)tsu_securelyUnarchiveRoot:(id)root forClass:(Class)class
{
  rootCopy = root;
  v6 = objc_opt_class();
  v7 = [NSSet setWithObject:class];
  v8 = [v6 tsu_securelyUnarchiveRoot:rootCopy forClasses:v7];

  return v8;
}

+ (id)tsu_securelyUnarchiveRoot:(id)root forClasses:(id)classes
{
  rootCopy = root;
  v11 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:classes fromData:rootCopy error:&v11];
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
      sub_100158FC8(rootCopy, v8, v7);
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_100159090();
    }

    v9 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_DEBUG))
    {
      sub_1001590B8(rootCopy, v9);
    }
  }

  return v6;
}

+ (id)tsu_securelyUnarchiveObjectWithFile:(id)file ofClasses:(id)classes
{
  fileCopy = file;
  classesCopy = classes;
  v12 = 0;
  v7 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [objc_opt_class() tsu_securelyUnarchiveRoot:v7 forClasses:classesCopy];
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
      sub_100159158(fileCopy, v10, v8);
    }

    v9 = 0;
  }

  return v9;
}

@end