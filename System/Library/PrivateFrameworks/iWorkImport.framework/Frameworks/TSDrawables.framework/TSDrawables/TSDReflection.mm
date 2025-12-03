@interface TSDReflection
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)reflection;
- (BOOL)isEqual:(id)equal;
- (TSDReflection)initWithOpacity:(double)opacity fadeAcceleration:(double)acceleration;
- (id)description;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDReflection

- (TSDReflection)initWithOpacity:(double)opacity fadeAcceleration:(double)acceleration
{
  v8.receiver = self;
  v8.super_class = TSDReflection;
  v5 = [(TSDReflection *)&v8 init];
  if (v5)
  {
    TSUClamp();
    v5->mOpacity = v6;
    v5->mFadeAcceleration = acceleration;
  }

  return v5;
}

+ (id)reflection
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
      goto LABEL_7;
    }

    objc_msgSend_opacity(self, v6, v7);
    v9 = v8;
    objc_msgSend_opacity(v5, v10, v11);
    if (v9 != v12)
    {
      v13 = vabdd_f64(v9, v12) < fabs(v12 * 0.000000999999997);
      goto LABEL_7;
    }
  }

  v13 = 1;
LABEL_7:

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableReflection, a2, zone);
  objc_msgSend_opacity(self, v5, v6);
  v8 = v7;
  objc_msgSend_fadeAcceleration(self, v9, v10);

  return objc_msgSend_initWithOpacity_fadeAcceleration_(v4, v11, v12, v8, v13);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_opacity(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p opacity=%g>", v5, self, v9);

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    objc_msgSend_opacity(self, v7, v8);
    v11 = v10;
    objc_msgSend_opacity(0, v12, v13);
    if (v11 == v14 || vabdd_f64(v11, v14) < fabs(v14 * 0.000000999999997))
    {
      v9 = 5;
    }

    else
    {
      v9 = 4;
    }
  }

  return v9;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  objc_msgSend_opacity(self, v7, v8);
  if (v6)
  {
    objc_msgSend_opacity(v6, v9, v10);
    objc_msgSend_fadeAcceleration(self, v11, v12);
    objc_msgSend_fadeAcceleration(v6, v13, v14);
  }

  else
  {
    objc_msgSend_fadeAcceleration(self, v9, v10);
    objc_msgSend_fadeAcceleration(self, v15, v16);
  }

  TSUMixFloats();
  v18 = v17;
  TSUMixFloats();
  v20 = v19;
  v21 = [TSDReflection alloc];
  v24 = objc_msgSend_initWithOpacity_fadeAcceleration_(v21, v22, v23, v18, v20);

  return v24;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (TSD::ReflectionArchive::ByteSizeLong(archive))
  {
    v8 = [TSDReflection alloc];
    v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, archive, unarchiverCopy);
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  v11 = v10;

  return v11;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  objc_msgSend_opacity(self, a2, archive, archiver);
  *&v5 = v5;
  *(archive + 4) |= 1u;
  *(archive + 6) = LODWORD(v5);
}

@end