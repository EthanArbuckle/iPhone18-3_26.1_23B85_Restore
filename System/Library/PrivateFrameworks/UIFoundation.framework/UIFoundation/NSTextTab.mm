@interface NSTextTab
+ (NSCharacterSet)columnTerminatorsForLocale:(NSLocale *)aLocale;
+ (NSTextTab)allocWithZone:(_NSZone *)zone;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)options;
- (NSTextTab)initWithCoder:(id)coder;
- (NSTextTab)initWithTextAlignment:(NSTextAlignment)alignment location:(CGFloat)loc options:(NSDictionary *)options;
- (NSTextTab)initWithType:(NSTextTabType)type location:(CGFloat)loc;
- (NSTextTabType)tabStopType;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTextTab

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __NSTextTabClass = self;
    if (([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] & 1) == 0)
    {
      __NSTextTabScratchInstance = NSAllocateObject(__NSTextTabClass, 0, 0);
      __NSTextTabAllocMarkerInstance = NSAllocateObject(__NSTextTabClass, 0, 0);
      __NSTextTabTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    }
  }
}

- (void)dealloc
{
  os_unfair_lock_lock_with_options();
  if (__NSTextTabScratchInstance != self && __NSTextTabAllocMarkerInstance != self)
  {
    if (__NSTextTabTable && [__NSTextTabTable member:self] == self)
    {
      [__NSTextTabTable removeObject:self];
    }

    v4.receiver = self;
    v4.super_class = NSTextTab;
    [(NSTextTab *)&v4 dealloc];
  }

  os_unfair_lock_unlock(&__NSTextTabLock);
}

+ (NSTextTab)allocWithZone:(_NSZone *)zone
{
  v5 = __NSTextTabAllocMarkerInstance;
  if (__NSTextTabAllocMarkerInstance)
  {
    v6 = __NSTextTabClass == self;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NSTextTab;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, zone);
  }

  return v5;
}

- (NSTextTab)initWithType:(NSTextTabType)type location:(CGFloat)loc
{
  if (type == NSDecimalTabStopType)
  {
    if (__NSDecimalTabAlignment)
    {
      v6 = 2;
    }

    else
    {
      v6 = 4;
    }

    if (__NSCachedDecimalTabAttribute_onceToken != -1)
    {
      v11 = loc;
      selfCopy = self;
      v10 = v6;
      [NSTextTab initWithType:location:];
      self = selfCopy;
      v6 = v10;
      loc = v11;
    }

    v7 = __NSCachedDecimalTabAttribute___NSDefaultDecimalTabOptions;
  }

  else
  {
    v5 = 2;
    if (type != NSRightTabStopType)
    {
      v5 = 0;
    }

    if (type == NSCenterTabStopType)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0;
  }

  return [(NSTextTab *)self initWithTextAlignment:v6 location:v7 options:loc];
}

- (NSTextTab)initWithTextAlignment:(NSTextAlignment)alignment location:(CGFloat)loc options:(NSDictionary *)options
{
  if (__NSTextTabAllocMarkerInstance == self)
  {
    os_unfair_lock_lock_with_options();
    v9 = NSTextAlignmentToCTTextAlignment(alignment);
    v10 = __NSTextTabScratchInstance;
    *(__NSTextTabScratchInstance + 8) = *(__NSTextTabScratchInstance + 8) & 0xFFFFFFF0 | v9 & 0xF;
    *(v10 + 16) = loc;
    *(v10 + 24) = options;
    v11 = [__NSTextTabTable member:?];
    if (v11)
    {
      v8 = v11;
      v12 = v11;
    }

    else
    {
      v8 = NSAllocateObject(__NSTextTabClass, 0, 0);
      *(v8 + 2) = v8[1] & 0xFFFFFFF0 | NSTextAlignmentToCTTextAlignment(alignment) & 0xF;
      v8[2] = loc;
      *(v8 + 3) = [(NSDictionary *)options copyWithZone:[(CGFloat *)v8 zone]];
      v13 = [__NSTextTabTable member:v8];
      if (v13)
      {
        v14 = v13;
        v15 = v13;
        os_unfair_lock_unlock(&__NSTextTabLock);

        return v14;
      }

      [__NSTextTabTable addObject:v8];
    }

    os_unfair_lock_unlock(&__NSTextTabLock);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NSTextTab;
    v8 = [(NSTextTab *)&v17 init];
    if (v8)
    {
      *(v8 + 2) = v8[1] & 0xFFFFFFF0 | NSTextAlignmentToCTTextAlignment(alignment) & 0xF;
      v8[2] = loc;
      *(v8 + 3) = [(NSDictionary *)options copyWithZone:[(CGFloat *)v8 zone]];
    }
  }

  return v8;
}

+ (NSCharacterSet)columnTerminatorsForLocale:(NSLocale *)aLocale
{
  systemLocale = aLocale;
  if (!aLocale)
  {
    systemLocale = [MEMORY[0x1E695DF58] systemLocale];
  }

  v4 = [(NSLocale *)systemLocale objectForKey:*MEMORY[0x1E695D990]];
  if ([(__CFString *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = @".";
  }

  v6 = [(__CFString *)v5 characterAtIndex:0];
  v7 = v6;
  if ((v6 & 0xFC00) == 0xD800 && [(__CFString *)v5 length]>= 2)
  {
    v8 = [(__CFString *)v5 characterAtIndex:1];
    if ((v8 & 0xFC00) == 0xDC00)
    {
      v7 = (v8 + (v7 << 10) + 2106368) & 0x3FFFFF;
    }
  }

  v9 = MEMORY[0x1E696AB08];

  return [v9 characterSetWithRange:{v7, 1}];
}

- (NSDictionary)options
{
  if (self->_reserved)
  {
    return self->_reserved;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (NSTextTabType)tabStopType
{
  v3 = NSTextAlignmentFromCTTextAlignment((*&self->_flags & 0xF));
  v4 = v3;
  v5 = 4;
  if (__NSDecimalTabAlignment)
  {
    v5 = 2;
  }

  if (v3 == v5)
  {
    reserved = self->_reserved;
    if (__NSCachedDecimalTabAttribute_onceToken != -1)
    {
      [NSTextTab initWithType:location:];
    }

    if ([reserved isEqualToDictionary:__NSCachedDecimalTabAttribute___NSDefaultDecimalTabOptions])
    {
      return 3;
    }
  }

  if (v4 < 3)
  {
    return qword_18E8564B0[v4];
  }

  if (v4 > 4)
  {
    return 0;
  }

  return (+[NSParagraphStyle _defaultWritingDirection]== 1);
}

- (NSTextTab)initWithCoder:(id)coder
{
  v18 = 0;
  if (![coder allowsKeyedCoding])
  {
    v17 = 0.0;
    [coder decodeValuesOfObjCTypes:{"Cf", &v18, &v17}];
    self->_location = v17;
    v15 = v18;
    return [(NSTextTab *)self initWithType:v15 location:?];
  }

  [coder decodeDoubleForKey:@"NSLocation"];
  self->_location = v5;
  if (![coder containsValueForKey:@"NSTextAlignment"])
  {
    v16 = [coder decodeIntegerForKey:@"NSType"];
    v15 = v16 & 0xF;
    v18 = v16 & 0xF;
    return [(NSTextTab *)self initWithType:v15 location:?];
  }

  v6 = NSTextAlignmentFromCTTextAlignment([coder decodeIntegerForKey:@"NSTextAlignment"]);
  location = self->_location;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, v10, v11, v12, objc_opt_class(), 0), @"NSTabOptions"}];

  return [(NSTextTab *)self initWithTextAlignment:v6 location:v13 options:location];
}

- (void)encodeWithCoder:(id)coder
{
  tabStopType = [(NSTextTab *)self tabStopType];
  v11 = tabStopType;
  if ([coder allowsKeyedCoding])
  {
    if (NSTextAlignmentFromCTTextAlignment((*&self->_flags & 0xF)) > NSTextAlignmentCenter || self->_reserved && tabStopType != 3)
    {
      flags = self->_flags;
      if ((*&flags & 0xF) != 0)
      {
        [coder encodeInteger:*&flags & 0xF forKey:@"NSTextAlignment"];
      }

      reserved = self->_reserved;
      if (reserved)
      {
        [coder encodeObject:reserved forKey:@"NSTabOptions"];
      }
    }

    if (tabStopType)
    {
      [coder encodeInteger:tabStopType forKey:@"NSType"];
    }

    location = self->_location;

    [coder encodeDouble:@"NSLocation" forKey:location];
  }

  else
  {
    v9 = self->_location;
    v10 = v9;
    [coder encodeValuesOfObjCTypes:{"Cf", &v11, &v10}];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  v5 = __NSTextTabScratchInstance == equal || __NSTextTabScratchInstance == 0;
  if (!v5 && __NSTextTabScratchInstance != self)
  {
    Class = object_getClass(equal);
    if (Class == object_getClass(self) && object_getClass(self) == __NSTextTabClass)
    {
      return 0;
    }
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = NSTextAlignmentFromCTTextAlignment((*&self->_flags & 0xF));
  if (v8 != [equal alignment])
  {
    return 0;
  }

  location = self->_location;
  [equal location];
  if (location != v10)
  {
    return 0;
  }

  if (self->_reserved)
  {
    reserved = self->_reserved;
  }

  else
  {
    reserved = MEMORY[0x1E695E0F8];
  }

  options = [equal options];

  return [reserved isEqualToDictionary:options];
}

- (unint64_t)hash
{
  flags = self->_flags;
  location = self->_location;
  reserved = self->_reserved;
  if (reserved)
  {
    reserved = CFHash(reserved);
  }

  return reserved + location + (*&flags << 28);
}

- (id)description
{
  tabStopType = [(NSTextTab *)self tabStopType];
  v4 = MEMORY[0x1E696AEC0];
  location = self->_location;
  if (tabStopType == 3)
  {
    v6 = "D";
  }

  else if (NSTextAlignmentFromCTTextAlignment((*&self->_flags & 0xF)) <= NSTextAlignmentNatural)
  {
    v6 = __NSAlignmentTable[*&self->_flags & 0xF];
  }

  else
  {
    v6 = "?";
  }

  if ([self->_reserved count])
  {
    reserved = self->_reserved;
  }

  else
  {
    reserved = &stru_1F01AD578;
  }

  return [v4 stringWithFormat:@"%g%s%@", *&location, v6, reserved];
}

@end