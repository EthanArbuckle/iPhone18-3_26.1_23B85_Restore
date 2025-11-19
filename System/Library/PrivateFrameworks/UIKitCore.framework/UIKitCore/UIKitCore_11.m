void sub_188B6E9AC()
{
  v1 = v0[4];
  if (v1)
  {

    v2 = v1;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v27 = v4;
    v28 = v3;
    v6 = sub_18A4A7258();
    v7 = [v5 initWithType_];

    v8 = v0[2];
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    if (v11)
    {
      while (1)
      {
        v14 = v13;
LABEL_13:
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = *(*(v8 + 56) + 8 * (v15 | (v14 << 6)));

        v17 = sub_18A4A7258();
        [v7 setValue:v16 forKey:v17];

        if (!v11)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_13;
      }
    }

    v18 = *MEMORY[0x1E6979C10];
    v19 = sub_18A4A7288();
    if (*(v8 + 16))
    {
      sub_188B0944C(v19, v20);
      v22 = v21;

      if (v22)
      {
        return;
      }
    }

    else
    {
    }

    if (v28 == sub_18A4A7288() && v27 == v23)
    {
    }

    else
    {
      v25 = sub_18A4A86C8();

      if ((v25 & 1) == 0)
      {
        return;
      }
    }

    v26 = sub_18A4A7258();
    [v7 setValue:v26 forKey:v18];
  }
}

void sub_188B6EC20()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_188A84438();

  if (v3)
  {

    v4 = [(UIView *)v1 _typedStorage];
    v12 = sub_188A74A4C(&_s26ScrollPocketInteractionKeyVN_1);

    if (v12)
    {
    }

    else
    {
      v5 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
      v6 = v5;
      v7 = [(UIView *)v1 _typedStorage];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937088);
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      v9 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();
      v10 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(&v7->super.isa + v9);
      *(&v7->super.isa + v9) = 0x8000000000000000;
      sub_188A40430(v8, &_s26ScrollPocketInteractionKeyVN_1, isUniquelyReferenced_nonNull_native);
      *(&v7->super.isa + v9) = v13;
      swift_endAccess();

      [v1 addInteraction_];
    }
  }
}

uint64_t sub_188B6EDCC(void *a1)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933360);
  v17[0] = a1;
  sub_188A55598(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v14[0] = v15;
  v14[1] = v16;
  v3 = *(&v16 + 1);
  sub_188A3F5FC(v14, &qword_1EA934050);
  if (v3)
  {
    *&v15 = a1;
    v4 = a1;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    *v1 = v8;
  }

  v9 = qword_1ED491B40;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v11 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188B09650(&type metadata for _ResolvedProviderTraitDefinition, sub_188B09978);
  os_unfair_lock_unlock(v11[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v12 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v10 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void _UIGraphicsBeginImageContextWithOptions(int a1, int a2, CGFloat a3, CGFloat a4, double a5)
{
  v6 = a5;
  if (a5 == 0.0)
  {
    v6 = _UIScreenForcedMainScreenScale(1);
  }

  v10 = vcvtpd_s64_f64(a3 * v6);
  v11 = vcvtpd_s64_f64(a4 * v6);
  if (a1)
  {
    v12 = 8198;
  }

  else
  {
    v12 = 8194;
  }

  if (a2)
  {
    v13 = 7;
  }

  else
  {
    v13 = v12;
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  if (a2)
  {
    DeviceRGB = 0;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v16 = CGBitmapContextCreate(0, v10, v11, 8uLL, AlignedBytesPerRow, DeviceRGB, v13);
  CGColorSpaceRelease(DeviceRGB);
  if (v16)
  {
    v28.size.width = v10;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.height = v11;
    CGContextClearRect(v16, v28);
    CGContextTranslateCTM(v16, 0.0, v11);
    CGContextScaleCTM(v16, v6, -v6);
    CGContextGetCTM(&v25, v16);
    CGContextSetBaseCTM();
    v17 = malloc_type_malloc(0x10uLL, 0x10000409B4BCFF8uLL);
    *v17 = v6;
    *(v17 + 8) = a1;
    ContextStack = GetContextStack(1);
    v19 = CGContextRetain(v16);
    v20 = *ContextStack;
    v21 = &ContextStack[6 * *ContextStack];
    *(v21 + 1) = v19;
    v21[4] = 1;
    *(v21 + 3) = v17;
    *ContextStack = v20 + 1;
    CGContextRelease(v16);
  }

  else if (dyld_program_sdk_at_least())
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIGraphicsBeginImageContextWithOptions(CGSize, BOOL, CGFloat, BOOL)"}];
    v27.width = a3;
    v27.height = a4;
    v23 = NSStringFromCGSize(v27);
    [v24 handleFailureInFunction:v22 file:@"UIGraphics.m" lineNumber:410 description:{@"UIGraphicsBeginImageContext() failed to allocate CGBitampContext: size=%@, scale=%f, bitmapInfo=0x%x. Use UIGraphicsImageRenderer to avoid this assert.", v23, *&v6, v13}];
  }
}

id _UIGraphicsGetImageFromCurrentImageContext(int a1)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    goto LABEL_11;
  }

  v3 = &ContextStack[6 * (*ContextStack - 1)];
  if (v3[4] != 1)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + 1);
  if (!v4)
  {
    goto LABEL_11;
  }

  if (a1)
  {
    Width = CGBitmapContextGetWidth(*(v3 + 1));
    Height = CGBitmapContextGetHeight(v4);
    v7 = MEMORY[0x1E695DEF0];
    Data = CGBitmapContextGetData(v4);
    v9 = [v7 dataWithBytes:Data length:CGBitmapContextGetBytesPerRow(v4) * Height];
    v10 = CGDataProviderCreateWithCFData(v9);
    BytesPerRow = CGBitmapContextGetBytesPerRow(v4);
    Image = CGImageMaskCreate(Width, Height, 8uLL, 8uLL, BytesPerRow, v10, 0, 0);
    CGDataProviderRelease(v10);

    if (Image)
    {
      goto LABEL_6;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  Image = CGBitmapContextCreateImage(*(v3 + 1));
  if (!Image)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = GetContextStack(0);
  if (*v13 >= 1 && (v14 = &v13[6 * (*v13 - 1)], v14[4] == 1) && (v15 = *(v14 + 3)) != 0)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = [UIImage imageWithCGImage:Image scale:0 orientation:v16];
  CGImageRelease(Image);
LABEL_12:

  return v17;
}

void UIGraphicsEndImageContext(void)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1)
  {
    v1 = &ContextStack[3 * (*ContextStack - 1)];
    if (*(v1 + 4) == 1)
    {
      if (v1[1])
      {
        v2 = GetContextStack(0);

        PopContextFromStack(v2);
      }
    }
  }
}

void sub_188B7064C(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  v6 = [(UIView *)v2 _typedStorage];
  v7 = sub_188A74A4C(a1);

  if (v7)
  {
    [v5 removeInteraction_];
    v8 = [(UIView *)v5 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, a1, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();
  }
}

uint64_t sub_188B70760()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188B70AB0()
{
  v1 = [v0 _view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 traitCollection];
    sub_188A85EE4();

    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    sub_188B70BA0(Strong);
  }

  else
  {
    v5 = swift_weakLoadStrong();
    swift_weakAssign();
    sub_188B70BA0(v5);
  }
}

uint64_t sub_188B70BA0(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (a1)
  {
    if (result)
    {
      v4 = result;

      if (v4 == a1)
      {
        return result;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }
  }

  v5 = v1 + OBJC_IVAR____UIScrollPocketRegistrationInteraction_receiver;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v5 + 8);
    if (a1)
    {
      swift_getKeyPath();
      v16 = a1;
      sub_188B042E4();

      sub_18A4A2C08();

      swift_beginAccess();
      v8 = *(a1 + 16);

      v9 = sub_188FA9CE4(v6, v7, v8);

      if (v9)
      {
        swift_getKeyPath();
        sub_18A4A2C08();

        v16 = a1;
        swift_getKeyPath();
        sub_18A4A2C28();

        swift_beginAccess();
        *&v15 = v6;
        *(&v15 + 1) = v7;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9352B0);
        v10 = sub_18A4A8778();
        swift_unknownObjectRelease();
        sub_18900002C(v10, &v15);
        sub_188E95EB4(&v15);
        swift_endAccess();
        sub_188B57EA4();
        v16 = a1;
        swift_getKeyPath();
        sub_18A4A2C18();
      }
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_getKeyPath();
      v16 = v12;
      sub_188B042E4();
      sub_18A4A2C08();

      swift_beginAccess();
      v13 = *(v12 + 16);

      v14 = sub_188FA9CE4(v6, v7, v13);

      if ((v14 & 1) == 0)
      {
        swift_getKeyPath();
        *&v15 = v12;
        sub_18A4A2C08();

        *&v15 = v12;
        swift_getKeyPath();
        sub_18A4A2C28();

        swift_beginAccess();
        sub_18914BCA4(v6, v7);
        swift_endAccess();
        sub_188B57EA4();
        *&v15 = v12;
        swift_getKeyPath();
        sub_18A4A2C18();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

char *createBuffer(void *a1, size_t a2)
{
  v3 = [a1 UTF8String];
  v4 = strlen(v3);
  v5 = malloc_type_calloc(a2, 1uLL, 0xDA936C91uLL);

  return strncpy(v5, v3, v4);
}

void sub_188B71C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188B71EB0()
{
  byte_1ED48E880 = 0;
  if (qword_1ED490F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED490F28 + 2))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v1 = off_1ED490F28;
    off_1ED490F28 = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E0A8);
    sub_18A4A7EF8();
    off_1ED490F28 = v1;
  }

  swift_endAccess();
  if (qword_1ED48EC38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED48EE00 + 2))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = off_1ED48EE00;
    off_1ED48EE00 = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E0A0);
    sub_18A4A8318();
    off_1ED48EE00 = v2;
  }

  return swift_endAccess();
}

void _UIApplicationEndLaunchBackgroundTask()
{
  os_unfair_lock_lock(&_launchBackgroundTaskLock);
  _launchBackgroundTaskPeriodOver = 1;
  if (_launchBackgroundTaskIdentifier)
  {
    _UIApplicationEndBackgroundTask(_launchBackgroundTaskIdentifier);
    _launchBackgroundTaskIdentifier = 0;
  }

  os_unfair_lock_unlock(&_launchBackgroundTaskLock);
}

UIEdgeInsets UIEdgeInsetsFromString(NSString *string)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = string;
  v2 = 0.0;
  if ([(NSString *)v1 length]< 9)
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    if (ParseNumbersWithDelimiter(v1, v10, 4))
    {
      v4 = *v10;
      v3 = *&v10[1];
      v2 = *&v10[2];
      v5 = *&v10[3];
    }
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

BOOL ParseNumbersWithDelimiter(void *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v20 = 0;
  v21[0] = a3 - 1;
  v19 = 0;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  ParseBracesWithDelimiter(v8, &v20, &v19, v7, v21);
  if (v20 != -1 && v19 != -1 && v21[0] == a3 - 1)
  {
    if (a3 < 1)
    {
      v11 = 1;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = v7 - 1;
        if (!v12)
        {
          v13 = &v20;
        }

        v14 = *v13;
        if (v21[0] <= v12)
        {
          v15 = &v19;
        }

        else
        {
          v15 = v7;
        }

        v16.length = *v15 + ~v14;
        v11 = v16.length > 0;
        if (v16.length < 1)
        {
          break;
        }

        v16.location = v14 + 1;
        v17 = CFStringCreateWithSubstring(0, v5, v16);
        *(a2 + 8 * v12) = CFStringGetDoubleValue(v17);
        CFRelease(v17);
        ++v12;
        ++v7;
      }

      while (a3 != v12);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void ParseBracesWithDelimiter(const __CFString *a1, CFIndex *a2, CFIndex *a3, CFIndex *a4, void *a5)
{
  if (CFStringGetLength(@",") != 1)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ParseBracesWithDelimiter(CFStringRef, CFStringRef, CFIndex *, CFIndex *, CFIndex *, NSInteger *)"}];
    [v20 handleFailureInFunction:v21 file:@"UIGeometry.m" lineNumber:1498 description:@"Parsing allows delimiter of length 1 only"];
  }

  if (qword_1ED49E678 != -1)
  {
    dispatch_once(&qword_1ED49E678, &__block_literal_global_207);
  }

  MutableCopy = CFCharacterSetCreateMutableCopy(0, _MergedGlobals_1144);
  CFCharacterSetAddCharactersInString(MutableCopy, @",");
  *a2 = -1;
  *a3 = -1;
  Length = CFStringGetLength(a1);
  result.location = 0;
  result.length = 0;
  CharacterAtIndex = CFStringGetCharacterAtIndex(@",", 0);
  if (Length < 1)
  {
    v13 = 0;
  }

  else
  {
    v22 = a3;
    v23 = a4;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = CharacterAtIndex;
    v17 = Length;
    while (1)
    {
      v25.location = v14;
      v25.length = v17;
      if (!CFStringFindCharacterFromSet(a1, MutableCopy, v25, 0, &result))
      {
        break;
      }

      if (result.location >= Length || result.length != 1)
      {
        break;
      }

      v19 = CFStringGetCharacterAtIndex(a1, result.location);
      if ((v19 & 0xFFFFFFDF) == 0x5B)
      {
        if (!v15)
        {
          *a2 = result.location;
        }

        ++v15;
      }

      else if (v16 == v19)
      {
        if (v15 == 1)
        {
          if (v13 < *a5)
          {
            *v23++ = result.location;
            ++v13;
          }

          v15 = 1;
        }
      }

      else if ((v19 & 0xFFFFFFDF) == 0x5D && !--v15)
      {
        *v22 = result.location;
        break;
      }

      if (result.location + 1 < Length)
      {
        v17 += v14 + ~result.location;
        v14 = result.location + 1;
        if (v17 > 0)
        {
          continue;
        }
      }

      break;
    }
  }

  CFRelease(MutableCopy);
  if (a5)
  {
    *a5 = v13;
  }
}

__CFString *_NSStringFromUISceneActivationState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"UISceneActivationStateUnattached";
  }

  else
  {
    return off_1E70F4500[a1];
  }
}

void *appearancesNodeInNodeForClassCreateIfNecessary(void *a1, uint64_t a2)
{
  v4 = [a1 objectForKey:a2];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    [a1 setObject:v4 forKey:a2];
  }

  return v4;
}

objc_class *_classWithImplementationOfSelector(Class cls, const char *a2, int a3)
{
  Superclass = cls;
  if (!cls)
  {
    return Superclass;
  }

  while (a3 && [NSStringFromClass(Superclass) rangeOfString:@"NSKVONotifying_"]== 0)
  {
LABEL_11:
    Superclass = class_getSuperclass(Superclass);
    if (!Superclass)
    {
      return Superclass;
    }
  }

  outCount = 0;
  v6 = class_copyMethodList(Superclass, &outCount);
  v7 = v6;
  if (!outCount)
  {
    if (v6)
    {
LABEL_10:
      free(v7);
    }

    goto LABEL_11;
  }

  v8 = 0;
  while (method_getName(v7[v8]) != a2)
  {
    if (++v8 >= outCount)
    {
      goto LABEL_10;
    }
  }

  free(v7);
  return Superclass;
}

SEL UIAppearancePrefixedSelectorForSelectorString(void *a1)
{
  v1 = a1;
  v2 = a1;
  if ([a1 characterAtIndex:0] == 95)
  {
    v2 = [v1 substringFromIndex:1];
  }

  if ([v1 rangeOfString:@"_UIAppearance_"])
  {
    v1 = [@"_UIAppearance_" stringByAppendingString:v2];
  }

  return NSSelectorFromString(v1);
}

uint64_t PushNextClassForSettingIMP(void *a1, SEL aSelector)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(aSelector);
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = a1;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Unsupported use of UIKit view-customization API off the main thread. -%@ sent to %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E610) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = a1;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unsupported use of UIKit view-customization API off the main thread. -%@ sent to %@", buf, 0x16u);
      }
    }
  }

  AssociatedObject = objc_getAssociatedObject(a1, &unk_1ED49E5DA);
  if (!AssociatedObject)
  {
    AssociatedObject = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_setAssociatedObject(a1, &unk_1ED49E5DA, AssociatedObject, 1);
  }

  v6 = [AssociatedObject objectForKey:v4];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [AssociatedObject setObject:v6 forKey:v4];
  }

  v7 = [v6 lastObject];
  v8 = v7;
  if (v7)
  {
    Superclass = class_getSuperclass(v7);
  }

  else
  {
    Superclass = objc_opt_class();
  }

  v10 = Superclass;
  v11 = NSStringFromSelector(aSelector);
  v12 = UIAppearancePrefixedSelectorForSelectorString(v11);
  v13 = _classWithImplementationOfSelector(v10, v12, 0);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  if (!v14)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void PushNextClassForSettingIMP(id description:{SEL)"), @"UIAppearance.m", 760, @"Have you sent -%@ to %@ off the main thread? To verify, look for a complaint in the logs: Unsupported use of UIKit…, and fix the problem if you find it. If your use is main-thread only please file a radar on UIKit, and attach this log. exercisedImplementations = %@", v4, a1, AssociatedObject}];
  }

  return [v6 addObject:v14];
}

IMP CurrentOrginalSettingIMP(void *a1, const char *a2)
{
  AssociatedObject = objc_getAssociatedObject(a1, &unk_1ED49E5DA);
  v4 = [AssociatedObject objectForKey:NSStringFromSelector(a2)];
  if (![v4 count])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"IMP CurrentOrginalSettingIMP(id description:{SEL)"), @"UIAppearance.m", 773, @"Exercised class for selector implementation needs to be pushed"}];
  }

  v5 = [v4 lastObject];
  v6 = NSStringFromSelector(a2);
  v7 = UIAppearancePrefixedSelectorForSelectorString(v6);

  return class_getMethodImplementation(v5, v7);
}

uint64_t __existingAppearancesNodesInNodeForClassAndSuperclasses_block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = [*(v3 + 32) objectForKey:v2];
      if (v4)
      {
        v5 = v4;
        v6 = *(*(*(v3 + 40) + 8) + 40);
        if (!v6)
        {
          *(*(*(v3 + 40) + 8) + 40) = [MEMORY[0x1E695DF70] array];
          v6 = *(*(*(v3 + 40) + 8) + 40);
        }

        [v6 insertObject:v5 atIndex:0];
      }

      result = [v2 _superClassInfo];
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t existingAppearancesNodesInNodeForClassAndSuperclasses(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__105;
  v16 = __Block_byref_object_dispose__105;
  v17 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __existingAppearancesNodesInNodeForClassAndSuperclasses_block_invoke;
  v9 = &unk_1E710BBC0;
  v10 = a1;
  v11 = &v12;
  __existingAppearancesNodesInNodeForClassAndSuperclasses_block_invoke(v7, a2);
  v3 = [a2 _guideClass];
  if (v3 != [a2 _customizableViewClass])
  {
    v4 = +[_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:withGuideClass:](_UIAppearanceCustomizableClassInfo, "_customizableClassInfoForViewClass:withGuideClass:", [a2 _customizableViewClass], 0);
    v8(v7, v4);
  }

  v5 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_188B73EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TaggingAppearanceObjectSetterIMP(void *a1, const char *a2, uint64_t a3)
{
  _UIAppearanceTagObjectForSelector(a1, a2, 0);
  PushNextClassForSettingIMP(a1, a2);
  v6 = CurrentOrginalSettingIMP(a1, a2);
  (v6)(a1, a2, a3);
  AssociatedObject = objc_getAssociatedObject(a1, &unk_1ED49E5DA);
  v8 = [AssociatedObject objectForKey:NSStringFromSelector(a2)];

  return [v8 removeLastObject];
}

id _colorsByThemeKeysystemGroupedBackgroundColor()
{
  v21[8] = *MEMORY[0x1E69E9840];
  v19 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v20[0] = v19;
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  else
  {
    v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  }

  v18 = v0;
  v21[0] = v0;
  v17 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v20[1] = v17;
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    v1 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  else
  {
    v1 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.921568627 green:0.921568627 blue:0.941176471 alpha:1.0];
  }

  v16 = v1;
  v21[1] = v1;
  v15 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v20[2] = v15;
  v14 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v21[2] = v14;
  v13 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v20[3] = v13;
  v2 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v21[3] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v20[4] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v21[4] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v20[5] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v21[5] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v20[6] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v21[6] = v8;
  v9 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v20[7] = v9;
  v10 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v21[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:8];

  return v11;
}

uint64_t sub_188B747CC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_188B74864()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F8);
  result = sub_18A4A8068();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v18);
      MEMORY[0x18CFE37E0](v19);
      result = sub_18A4A88E8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void UIRectCenteredXInRectScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a9 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

void sub_188B74F6C(void *a1, void *a2)
{
  v5 = [v2 view];
  if (v5)
  {

    if (a1)
    {
      v6 = a1;
      v7 = [v2 panGesture];
      [v6 removeGestureRecognizer_];
    }

    if (a2)
    {
      v8 = a2;
      v9 = [v2 panGesture];
      [v8 addGestureRecognizer_];
    }
  }
}

uint64_t sub_188B7533C(uint64_t a1)
{
  v2 = type metadata accessor for _Glass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188B753F4(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____UIFlexInteraction_preferredActivationMode];
  *&v1[OBJC_IVAR____UIFlexInteraction_preferredActivationMode] = a1;
  if (v2 == a1)
  {
    return;
  }

  v3 = [v1 resolvedActivationMode];
  if (v3 != 3)
  {
    if (v3 != 2)
    {
      if (v3 != 1)
      {
        return;
      }

      v4 = &selRef_deactivate;
      goto LABEL_9;
    }

    v5 = [v1 panGesture];
    v6 = [v5 isCurrentlyActive];

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v4 = &selRef_activateIfPermitted;
LABEL_9:
  v7 = *v4;

  [v1 v7];
}

double anonymous namespace::EMA::reset(_anonymous_namespace_::EMA *this)
{
  *(this + 48) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return result;
}

void anonymous namespace::Gaussian::reset(_anonymous_namespace_::Gaussian *this)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  *(this + 11) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 8);
      v2 = (*(this + 7) + 8);
      *(this + 7) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 128;
  }

  *(this + 10) = v6;
}

id _UICompositingFilterForMode(uint64_t a1)
{
  v3 = 0;
  if (a1 > 999)
  {
    if (a1 > 1005)
    {
      if (a1 > 1008)
      {
        switch(a1)
        {
          case 1009:
            v4 = MEMORY[0x1E6979CE0];
            break;
          case 1010:
            v4 = MEMORY[0x1E69798C8];
            break;
          case 1011:
            v4 = MEMORY[0x1E6979C38];
            break;
          default:
            goto LABEL_52;
        }
      }

      else if (a1 == 1006)
      {
        v4 = MEMORY[0x1E6979C50];
      }

      else if (a1 == 1007)
      {
        v4 = MEMORY[0x1E6979C58];
      }

      else
      {
        v4 = MEMORY[0x1E6979C60];
      }
    }

    else if (a1 > 1002)
    {
      if (a1 == 1003)
      {
        v4 = MEMORY[0x1E6979C88];
      }

      else if (a1 == 1004)
      {
        v4 = MEMORY[0x1E6979CA0];
      }

      else
      {
        v4 = MEMORY[0x1E6979908];
      }
    }

    else if (a1 == 1000)
    {
      v4 = MEMORY[0x1E6979D58];
    }

    else if (a1 == 1001)
    {
      v4 = MEMORY[0x1E6979D50];
    }

    else
    {
      v4 = MEMORY[0x1E6979C98];
    }

LABEL_51:
    v3 = *v4;
  }

  else
  {
    v4 = MEMORY[0x1E6979CC0];
    switch(a1)
    {
      case 0:
        goto LABEL_51;
      case 1:
        v4 = MEMORY[0x1E6979CA8];
        goto LABEL_51;
      case 2:
        v4 = MEMORY[0x1E6979D18];
        goto LABEL_51;
      case 3:
        v4 = MEMORY[0x1E6979CD0];
        goto LABEL_51;
      case 4:
        v4 = MEMORY[0x1E69798C0];
        goto LABEL_51;
      case 5:
        v4 = MEMORY[0x1E6979C30];
        goto LABEL_51;
      case 6:
        v4 = MEMORY[0x1E6979860];
        goto LABEL_51;
      case 7:
        v4 = MEMORY[0x1E6979850];
        goto LABEL_51;
      case 8:
        v4 = MEMORY[0x1E6979D20];
        goto LABEL_51;
      case 9:
        v4 = MEMORY[0x1E6979940];
        goto LABEL_51;
      case 10:
        v4 = MEMORY[0x1E69798F8];
        goto LABEL_51;
      case 11:
        v4 = MEMORY[0x1E6979920];
        goto LABEL_51;
      case 12:
        v4 = MEMORY[0x1E6979830];
        goto LABEL_51;
      case 13:
        v4 = MEMORY[0x1E69798A8];
        goto LABEL_51;
      case 14:
        v4 = MEMORY[0x1E6979D30];
        goto LABEL_51;
      case 15:
        v4 = MEMORY[0x1E6979D38];
        goto LABEL_51;
      case 16:
        v4 = MEMORY[0x1E6979D28];
        goto LABEL_51;
      case 17:
        v4 = MEMORY[0x1E69798D0];
        goto LABEL_51;
      case 18:
        v4 = MEMORY[0x1E69798F0];
        goto LABEL_51;
      case 19:
        v4 = MEMORY[0x1E69798E0];
        goto LABEL_51;
      case 20:
        v4 = MEMORY[0x1E69798E8];
        goto LABEL_51;
      case 21:
        v4 = MEMORY[0x1E69798D8];
        goto LABEL_51;
      case 22:
        v4 = MEMORY[0x1E6979D98];
        goto LABEL_51;
      case 23:
        v4 = MEMORY[0x1E6979CE8];
        goto LABEL_51;
      case 24:
        v4 = MEMORY[0x1E6979CF8];
        goto LABEL_51;
      default:
        break;
    }
  }

LABEL_52:

  return v3;
}

void _UIBlurEffectAddBlurFilterEntry(void *a1, void *a2, double a3, double a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if ([v8 allowsBlurring])
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:@"default" forKeyedSubscript:*MEMORY[0x1E6979BA0]];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6979B78]];
    if ([v8 allowsDithering])
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6979AC8]];
    }

    [v8 _applyBlurQualityToConfigurationDictionary:v9];
    v10 = [_UIVisualEffectFilterEntry alloc];
    v11 = *MEMORY[0x1E6979928];
    v19 = *MEMORY[0x1E6979BA8];
    v12 = v19;
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v20[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = v12;
    v18 = &unk_1EFE2E1F8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [(_UIVisualEffectFilterEntry *)v10 initWithFilterType:v11 configurationValues:v9 requestedValues:v14 identityValues:v15];

    [(_UIVisualEffectFilterEntry *)v16 setIdentityScaleHint:1.0];
    [(_UIVisualEffectFilterEntry *)v16 setUseRelaxedDiffingRule:1];
    if (a4 <= 0.0)
    {
      a4 = 1.0 / (a3 * 0.1 + 1.0);
    }

    [(_UIVisualEffectFilterEntry *)v16 setRequestedScaleHint:a4];
    [v7 addFilterEntry:v16];
  }
}

uint64_t _UITabBarDefaultMaxItemsForTraitCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 userInterfaceIdiom];
  if (v2 == -1)
  {
    v3 = +[UIDevice currentDevice];
    v2 = [v3 userInterfaceIdiom];
  }

  v4 = [v1 horizontalSizeClass];
  switch(v2)
  {
    case 2:
      goto LABEL_6;
    case 3:
      goto LABEL_12;
    case 8:
LABEL_6:
      v5 = 10;
      goto LABEL_17;
  }

  if (v4 == 1)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    if (qword_1ED498E08 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (v2 != 1)
  {
LABEL_12:
    v5 = 5;
    goto LABEL_17;
  }

  if (qword_1ED498E08 != -1)
  {
LABEL_18:
    dispatch_once(&qword_1ED498E08, &__block_literal_global_137);
  }

LABEL_14:
  if (_MergedGlobals_63_0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 8;
  }

LABEL_17:

  return v5;
}

void sub_188B7787C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18A4A7258();

  v6 = [v4 initWithType_];

  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v6;
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v13 << 6);
      v18 = (*(a3 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_188A55598(*(a3 + 56) + 32 * v17, v23);
      *&v24 = v20;
      *(&v24 + 1) = v19;
      sub_188A55538(v23, &v25);

      v15 = v13;
LABEL_13:
      v27 = v24;
      v28[0] = v25;
      v28[1] = v26;
      if (!*(&v24 + 1))
      {
        break;
      }

      sub_188A55538(v28, &v24);
      __swift_project_boxed_opaque_existential_0(&v24, *(&v25 + 1));
      v21 = sub_18A4A86A8();
      __swift_destroy_boxed_opaque_existential_0Tm(&v24);
      v22 = sub_18A4A7258();

      [v11 setValue:v21 forKey:v22];
      swift_unknownObjectRelease();

      v12 = v15;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v10 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = v14 - 1;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v9 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_13;
      }

      v9 = *(a3 + 64 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_188B77FB4()
{
  v1 = v0;
  v195.receiver = v0;
  v195.super_class = type metadata accessor for _UITabBarVisualProvider_Floating();
  objc_msgSendSuper2(&v195, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *&v185 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_107;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x150);

    v174 = v2;
    if ((v5)(v6))
    {
      sub_188B82DFC(v196);
      v7 = v202[5];
      v242 = v202[6];
      v243[0] = v203[0];
      *(v243 + 9) = *(v203 + 9);
      v238 = v202[2];
      v239 = v202[3];
      v8 = v202[4];
    }

    else
    {
      sub_188B82DFC(v196);
      v7 = v200;
      v242 = v201;
      v243[0] = v202[0];
      *(v243 + 9) = *(v202 + 9);
      v238 = v197;
      v239 = v198;
      v8 = v199;
    }

    v241 = v7;
    v240 = v8;
    sub_188B7FF08(&v238, v236);
    sub_188B82BE8(v196);
    v193[4] = v242;
    *v194 = v243[0];
    *&v194[9] = *(v243 + 9);
    v193[0] = v238;
    v193[1] = v239;
    v193[2] = v240;
    v193[3] = v241;
    v245[4] = v242;
    v246[0] = *v194;
    *(v246 + 9) = *(v243 + 9);
    v245[0] = v238;
    v245[1] = v239;
    v245[3] = v241;
    v245[2] = v240;
    v9.n128_f64[0] = sub_188B78EF8(&v204);
    v10 = *((*v4 & *v1) + 0x138);
    v187 = v10(v9);
    if (v5())
    {
      sub_188B82DFC(v209);
      v11 = v215[5];
      v242 = v215[6];
      v243[0] = v216[0];
      *(v243 + 9) = *(v216 + 9);
      v238 = v215[2];
      v239 = v215[3];
      v12 = v215[4];
    }

    else
    {
      sub_188B82DFC(v209);
      v11 = v213;
      v242 = v214;
      v243[0] = v215[0];
      *(v243 + 9) = *(v215 + 9);
      v238 = v210;
      v239 = v211;
      v12 = v212;
    }

    v241 = v11;
    v240 = v12;
    sub_188B7FF08(&v238, v236);
    v13 = sub_188B82BE8(v209);
    v191[4] = v242;
    v192[0] = v243[0];
    *(v192 + 9) = *(v243 + 9);
    v191[0] = v238;
    v191[1] = v239;
    v191[2] = v240;
    v191[3] = v241;
    if ((v5)(v13))
    {
      sub_188B82DFC(v217);
      sub_188B82BE8(v217);
      v14 = &v219;
    }

    else
    {
      sub_188B82DFC(v217);
      sub_188B82BE8(v217);
      v14 = &v218;
    }

    v15 = *v14;
    v16 = [v1 tabBar];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = UIRectInset(v18, v20, v22, v24, 0.0, v15, 0.0, v15);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = sub_188B7FF64(v191);
    if ((v5)(v32))
    {
      sub_188B82DFC(v220);
      v33 = v226[5];
      v242 = v226[6];
      v243[0] = v227[0];
      *(v243 + 9) = *(v227 + 9);
      v238 = v226[2];
      v239 = v226[3];
      v34 = v226[4];
    }

    else
    {
      sub_188B82DFC(v220);
      v33 = v224;
      v242 = v225;
      v243[0] = v226[0];
      *(v243 + 9) = *(v226 + 9);
      v238 = v221;
      v239 = v222;
      v34 = v223;
    }

    v241 = v33;
    v240 = v34;
    sub_188B7FF08(&v238, v236);
    v35 = sub_188B82BE8(v220);
    rect_8[4] = v242;
    v190[0] = v243[0];
    *(v190 + 9) = *(v243 + 9);
    rect_8[0] = v238;
    rect_8[1] = v239;
    rect_8[2] = v240;
    rect_8[3] = v241;
    rect = v25;
    if ((v5)(v35))
    {
      sub_188B82DFC(v228);
      sub_188B82BE8(v228);
      v36 = &v230;
    }

    else
    {
      sub_188B82DFC(v228);
      sub_188B82BE8(v228);
      v36 = &v229;
    }

    v37 = *v36;
    v38 = [v1 tabBar];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = UIRectInset(v40, v42, v44, v46, 0.0, v37, 0.0, v37);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_188B7FF64(rect_8);
    v250.origin.x = v47;
    v250.origin.y = v49;
    v250.size.width = v51;
    v250.size.height = v53;
    Height = CGRectGetHeight(v250);
    v55 = (v10)();
    v56 = *&v194[8];
    v57 = [v1 tabBar];
    v58 = [v57 _shouldReverseLayoutDirection];

    if (v185 == 0.0)
    {
      v59 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    else
    {
      v59 = sub_18A4A7F68();
    }

    v181 = v56;

    if (v59)
    {
      sub_188B82DFC(v231);
      sub_188B82BE8(v231);
      v178 = v234;
      v179 = v232;
      v183 = v235;
      v185 = v233;
      v60 = v206;
      v61 = v207;
    }

    else
    {
      v60 = 0.0;
      v61 = 0.0;
      v178 = 0.0;
      v179 = 0.0;
      v183 = 0.0;
      v185 = 0.0;
    }

    v62 = Height - v55;
    v63 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView;
    v64 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
    v251.origin.x = rect;
    v251.origin.y = v27;
    v251.size.width = v29;
    v251.size.height = v31;
    Width = CGRectGetWidth(v251);
    if (v64)
    {
      sub_188B82DFC(v236);
      sub_188B82BE8(v236);
      Width = Width - (v62 + v237);
    }

    v66 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView;
    v67 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView);
    v182 = v62;
    if (v67)
    {
      [v67 intrinsicContentSize];
      v175 = v68;
      v176 = v69;
      if (v68 > 0.0)
      {
        v70 = v68;
        sub_188B82DFC(&v238);
        sub_188B82BE8(&v238);
        Width = Width - (v70 + v244);
      }
    }

    else
    {
      v175 = 0.0;
      v176 = 0.0;
    }

    v71 = Width;
    if (v205)
    {
      break;
    }

    v72 = i;
    v73 = v208;
    v74 = v60 + v61 + v185 + v183 + 0.0;
    v75 = i + -1.0;
    v171 = v58;
    v170 = v64;
    if (v75 <= 0.0)
    {
      v173 = v74 + v204 * 0.0;
      if ((v194[24] & 1) == 0)
      {
LABEL_33:
        v76 = *(v1 + v174);
        if (v76 >> 62)
        {
          v3 = sub_18A4A7F68();
        }

        else
        {
          v3 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v3)
        {
          v78 = 0.0;
LABEL_61:

          v94 = *v193;
          if (*v193 <= v78)
          {
            v94 = v78;
          }

          v71 = v173 + v94 * v72;
LABEL_66:
          v58 = v171;
          v64 = v170;
          break;
        }

        v77 = 0;
        v2 = v76 & 0xFFFFFFFFFFFFFF8;
        v78 = 0.0;
        while (1)
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v79 = sub_188E49850(v77, v76);
          }

          else
          {
            if (v77 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_105;
            }

            v79 = *(v76 + 8 * v77 + 32);
          }

          v80 = v79;
          v81 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          v247 = 0u;
          v248 = 0u;
          v249 = 1;
          sub_1892045F0(v245, &v247);
          [v80 sizeThatFits_];
          v83 = v82;

          if (v73 + v83 > v78)
          {
            v78 = v73 + v83;
          }

          ++v77;
          if (v81 == v3)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
      v173 = v74 + v75 * v204;
      if (!v194[24])
      {
        goto LABEL_33;
      }
    }

    v84 = *(v1 + v174);
    if (v84 >> 62)
    {
      v3 = sub_18A4A7F68();
    }

    else
    {
      v3 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
      v86 = 0.0;
LABEL_65:

      v71 = v173 + v86;
      goto LABEL_66;
    }

    v85 = 0;
    v2 = v84 & 0xFFFFFFFFFFFFFF8;
    v86 = 0.0;
    while (1)
    {
      if ((v84 & 0xC000000000000001) != 0)
      {
        v87 = sub_188E49850(v85, v84);
      }

      else
      {
        if (v85 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        v87 = *(v84 + 8 * v85 + 32);
      }

      v88 = v87;
      v89 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      v247 = 0u;
      v248 = 0u;
      v249 = 1;
      sub_1892045F0(v245, &v247);
      v90 = *v193;
      [v88 sizeThatFits_];
      v92 = v91;

      v93 = v73 + v92;
      if (v90 > v73 + v92)
      {
        v93 = v90;
      }

      v86 = v86 + v93;
      ++v85;
      if (v89 == v3)
      {
        goto LABEL_65;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    ;
  }

  v95 = _UIClamp_0(0.0, v71, Width);
  v177 = v29;
  v96 = rect;
  v97 = v27;
  v98 = v29;
  v99 = v31;
  if (v58)
  {
    MinX = CGRectGetMaxX(*&v96) - v95;
    v252.origin.x = rect;
    v252.origin.y = v27;
    v252.size.width = v29;
    v252.size.height = v31;
    v101 = CGRectGetHeight(v252);
    v253.origin.x = rect;
    v253.origin.y = v27;
    v253.size.width = v29;
    v253.size.height = v31;
    v102 = CGRectGetMaxX(v253) - Width;
  }

  else
  {
    MinX = CGRectGetMinX(*&v96);
    v254.origin.x = rect;
    v254.origin.y = v27;
    v254.size.width = v29;
    v254.size.height = v31;
    v101 = CGRectGetHeight(v254);
    v255.origin.x = rect;
    v255.origin.y = v27;
    v255.size.width = v29;
    v255.size.height = v31;
    v102 = CGRectGetMinX(v255);
  }

  v103 = v27;
  v104 = v95;
  v105 = v182;
  v106 = UIRectInset(MinX, v101 - v182 - v187, v104, v182, v179, v183, v178, v185);
  v110 = v108;
  if (v64)
  {
    v111 = v181;
    v112 = v107;
    v113 = v106;
  }

  else
  {
    UIRectCenteredXInRectScale(v106, v107, v108, v109, v102, 0.0, Width, 0.0, 1.0);
    v113 = v114;
    v112 = v115;
    v110 = v116;
    v111 = v181;
  }

  v117 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView);
  v118 = v109;
  [v117 setBounds_];
  v180 = v113;
  v184 = v118;
  MaxY = v112;
  [v117 setCenter_];
  v119 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView);
  v120 = v103;
  if (v119)
  {
    v121 = *&v194[16];
    v122 = v119;
    v123 = rect;
    v124 = v103;
    v125 = v177;
    v126 = v31;
    if (v58)
    {
      v127 = CGRectGetMaxX(*&v123) - v111 - v121;
    }

    else
    {
      v127 = v121 + CGRectGetMinX(*&v123);
    }

    v256.origin.x = rect;
    v256.origin.y = v103;
    v256.size.width = v177;
    v256.size.height = v31;
    v128 = CGRectGetHeight(v256) - v111 - v187 - v121;
    v129 = v122;
    [v129 setBounds_];
    [v129 setCenter_];

    [v129 layoutIfNeeded];
    v120 = v103;
    v105 = v182;
  }

  v130 = *(v1 + v63);
  if (v130)
  {
    v131 = &v130[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize];
    *v131 = v111;
    v131[1] = v111;
    *(v131 + 16) = 0;
    v132 = *&v130[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView];
    v133 = v130;
    v134 = v133;
    if (v132)
    {
      [v133 setNeedsLayout];
    }

    v135 = *&v194[16];
    v136 = *&v134[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemInset];
    *&v134[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemInset] = *&v194[16];
    if (v135 != v136)
    {
      [v134 setNeedsLayout];
    }

    v137 = rect;
    v138 = v120;
    v139 = v177;
    v140 = v31;
    if (v58)
    {
      v141 = CGRectGetMinX(*&v137) + 0.0;
    }

    else
    {
      v141 = CGRectGetMaxX(*&v137) - v105;
    }

    v257.origin.x = rect;
    v257.origin.y = v120;
    v257.size.width = v177;
    v257.size.height = v31;
    v142 = CGRectGetHeight(v257) - v105 - v187;
    v143 = v134;
    [v143 setBounds_];
    [v143 setCenter_];

    [v143 layoutIfNeeded];
  }

  v144 = *(v1 + v66);
  v145 = rect;
  if (v144)
  {
    v146 = v144;
    v147 = UIRectCenteredYInRectScale(0.0, 0.0, v175, v176, v180, MaxY, v110, v184, 1.0);
    v149 = v148;
    v151 = v150;
    v153 = v152;
    if (v58)
    {
      v258.origin.x = rect;
      v258.origin.y = v120;
      v258.size.width = v177;
      v258.size.height = v31;
      v154 = CGRectGetMinX(v258);
    }

    else
    {
      v155 = v147;
      v259.origin.x = rect;
      v259.origin.y = v120;
      v259.size.width = v177;
      v259.size.height = v31;
      v156 = v120;
      MaxX = CGRectGetMaxX(v259);
      v260.origin.x = v155;
      v145 = rect;
      v260.origin.y = v149;
      v260.size.width = v151;
      v260.size.height = v153;
      v154 = MaxX - CGRectGetWidth(v260);
      v120 = v156;
      v111 = v181;
    }

    [v146 setFrame_];
  }

  if (([v1 hostedElements] & 4) != 0)
  {
    v158 = [v1 tabBar];
    v159 = [(UITabBar *)v158 _hostedElementsLayoutHandler];

    if (v159)
    {
      (v159[2])(v159);
      _Block_release(v159);
    }
  }

  v160 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction);
  if (v160)
  {
    v161 = v160;
    if ([v1 currentMorphTarget])
    {
      v162 = *&v194[16];
      v163 = v145;
      v164 = v120;
      v165 = v177;
      v166 = v31;
      if (v58)
      {
        v167 = CGRectGetMaxX(*&v163) - v111 - v162;
      }

      else
      {
        v167 = v162 + CGRectGetMinX(*&v163);
      }

      v261.origin.x = v145;
      v261.origin.y = v120;
      v261.size.width = v177;
      v261.size.height = v31;
      v262.origin.y = CGRectGetHeight(v261) - v111 - v187 - v162;
      v262.origin.x = v167;
      v262.size.width = v111;
      v262.size.height = v111;
      MaxY = CGRectGetMaxY(v262);
      v184 = 0.0;
    }

    v263.origin.x = v145;
    v263.origin.y = v120;
    v263.size.width = v177;
    v263.size.height = v31;
    v168 = CGRectGetMinX(v263);
    v264.origin.x = v145;
    v264.origin.y = v120;
    v264.size.width = v177;
    v264.size.height = v31;
    [v161 _setRect_];
  }

  sub_188B79120();
  return sub_188B7FF64(v193);
}

double sub_188B78EF8@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 tabBar];
  v4 = [v3 items];

  if (v4)
  {
    sub_188A34624(0, &qword_1EA9306B0);
    v5 = sub_18A4A7548();

    if (v5 >> 62)
    {
      v4 = sub_18A4A7F68();
    }

    else
    {
      v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v6 = [v1 hostedElements];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))())
  {
    v7 = v22 + 8;
    sub_188B82DFC(v14);
    v22[4] = v20[6];
    v23[0] = v21[0];
    *(v23 + 9) = *(v21 + 9);
    v22[0] = v20[2];
    v22[1] = v20[3];
    v22[2] = v20[4];
    v22[3] = v20[5];
    v8 = v22;
  }

  else
  {
    v7 = v24 + 8;
    sub_188B82DFC(v14);
    v24[4] = v19;
    v25[0] = v20[0];
    *(v25 + 9) = *(v20 + 9);
    v24[0] = v15;
    v24[1] = v16;
    v24[2] = v17;
    v24[3] = v18;
    v8 = v24;
  }

  sub_188B7FF08(v8, v11);
  sub_188B82BE8(v14);
  (*v7)(v11, v4, (v6 >> 2) & 1);

  v9 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v9;
  result = *&v12;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  return result;
}

void sub_188B79120()
{
  v1 = &v155;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))())
  {
    sub_188B82DFC(v140);
    v158 = v146[5];
    v159 = v146[6];
    v160[0] = v147[0];
    *(v160 + 9) = *(v147 + 9);
    v155 = v146[2];
    v156 = v146[3];
    v157 = v146[4];
    sub_188B7FF08(&v155, &v164);
    sub_188B82BE8(v140);
    v167 = v158;
    v168 = v159;
    *v169 = v160[0];
    *&v169[9] = *(v160 + 9);
    v164 = v155;
    v165 = v156;
    v166 = v157;
  }

  else
  {
    sub_188B82DFC(v140);
    v159 = v145;
    v160[0] = v146[0];
    *(v160 + 9) = *(v146 + 9);
    v155 = v141;
    v156 = v142;
    v157 = v143;
    v158 = v144;
    sub_188B7FF08(&v155, &v164);
    sub_188B82BE8(v140);
    v168 = v159;
    *v169 = v160[0];
    *&v169[9] = *(v160 + 9);
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v167 = v158;
  }

  v159 = v168;
  v160[0] = *v169;
  *(v160 + 9) = *&v169[9];
  v155 = v164;
  v156 = v165;
  v157 = v166;
  v158 = v167;
  v2 = [v0 tabBar];
  v3 = [v2 _shouldReverseLayoutDirection];

  v4 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  if (v3)
  {

    v6 = sub_188EA31B8(v5);
  }

  else
  {
    v6 = *(v0 + v4);
  }

  v7 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_127:
    v8 = sub_18A4A7F68();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v130 = v8;
  v131 = v8;
  if (v8 + -1.0 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8 + -1.0;
  }

  v137 = sub_188B83448();
  v10 = *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView);
  [v10 bounds];
  v11 = v151;
  v12 = v152;
  v132 = v150;
  v127 = v153;
  v17 = UIRectInset(v13, v14, v15, v16, v150, v153, v152, v151);
  *&v138[8] = v18;
  v20 = v19;
  v22 = v21;
  v23 = *&v164;
  v24 = v154;
  if (v7)
  {
    v25 = sub_18A4A7F68();
  }

  else
  {
    v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v138[16] = v20;
  *&v138[24] = v22;
  v133 = v0;
  v128 = v12;
  v129 = v11;
  if (v25)
  {
    *(v1 + 10) = 0u;
    *(v1 + 11) = 0u;
    v163[32] = 1;
    if (v25 < 1)
    {
      __break(1u);
      return;
    }

    v26 = v17;
    v27 = 0;
    v7 = v6 & 0xC000000000000001;
    v1 = MEMORY[0x1E69E7CC0];
    v28 = 0.0;
    do
    {
      if (v7)
      {
        v29 = sub_188E49850(v27, v6);
      }

      else
      {
        v29 = *(v6 + 8 * v27 + 32);
      }

      v30 = v29;
      sub_1892045F0(&v155, v163);
      [v30 sizeThatFits_];
      v32 = v24 + v31;
      if (v23 > v32)
      {
        v33 = v23;
      }

      else
      {
        v33 = v32;
      }

      if (v28 <= v33)
      {
        v28 = v33;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_188B8B034(0, *(v1 + 2) + 1, 1, v1);
      }

      v35 = *(v1 + 2);
      v34 = *(v1 + 3);
      v0 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v1 = sub_188B8B034((v34 > 1), v35 + 1, 1, v1);
      }

      ++v27;

      *(v1 + 2) = v0;
      *&v1[8 * v35 + 32] = v33;
    }

    while (v25 != v27);
  }

  else
  {
    v26 = v17;
    v1 = MEMORY[0x1E69E7CC0];
    v0 = *(MEMORY[0x1E69E7CC0] + 16);
    v28 = 0.0;
    v36 = 0.0;
    if (!v0)
    {
      goto LABEL_40;
    }
  }

  if (v0 <= 3)
  {
    v37 = 0;
    v36 = 0.0;
LABEL_38:
    v40 = v0 - v37;
    v41 = 8 * v37 + 32;
    do
    {
      v36 = v36 + *&v1[v41];
      v41 += 8;
      --v40;
    }

    while (v40);
    goto LABEL_40;
  }

  v37 = v0 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = (v1 + 48);
  v36 = 0.0;
  v39 = v0 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v36 = v36 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
    v38 += 4;
    v39 -= 4;
  }

  while (v39);
  if (v0 != v37)
  {
    goto LABEL_38;
  }

LABEL_40:
  v170.origin.x = v26;
  v42 = *&v138[8];
  v170.origin.y = *&v138[8];
  v170.size.width = *&v138[16];
  v170.size.height = *&v138[24];
  Width = CGRectGetWidth(v170);
  v44 = _UIClamp_0(0.0, v28, Width);
  v45 = v148;
  if ((v169[24] & 1) == 0)
  {
    v48 = v44;
    v49 = v149;
    v134 = v148;
    if (v149)
    {
      v45 = 2.0;
    }

    *v138 = v26;
    v171.origin.x = v26;
    v171.origin.y = *&v138[8];
    v171.size.width = *&v138[16];
    v171.size.height = *&v138[24];
    v50 = CGRectGetWidth(v171) - v9 * v45;
    v51 = v50 / v131;
    if (v48 >= v50 / v131)
    {
      v52 = v50 / v131;
    }

    else
    {
      v52 = v48;
    }

    if (v49 != 1)
    {
      v46 = v26;
      v42 = *&v138[8];
      v54 = *&v138[24];
LABEL_60:
      v70 = *(v1 + 2);
      *&v138[24] = v54;
      if (v70)
      {
        v161[0] = MEMORY[0x1E69E7CC0];
        v0 = v161;
        sub_188B6479C(0, v70, 0);
        v7 = v161[0];
        v71 = *(v161[0] + 16);
        do
        {
          v161[0] = v7;
          v72 = *(v7 + 24);
          if (v71 >= v72 >> 1)
          {
            v0 = v161;
            sub_188B6479C((v72 > 1), v71 + 1, 1);
            v7 = v161[0];
          }

          *(v7 + 16) = v71 + 1;
          *(v7 + 8 * v71++ + 32) = v52;
          --v70;
        }

        while (v70);
      }

      else
      {

        v7 = MEMORY[0x1E69E7CC0];
      }

      v36 = v52 * *(v7 + 16);
      v45 = v148;
      v1 = v7;
      goto LABEL_68;
    }

    v53 = *&v138[16];
    if (v9 <= 0.0 || (v172.origin.x = v26, v172.origin.y = *&v138[8], v172.size.width = *&v138[16], v172.size.height = *&v138[24], (CGRectGetWidth(v172) - v36) / v9 >= 14.0))
    {
      if (v23 >= v48)
      {
LABEL_55:
        *&v138[16] = v53;
        if (v130 < 2)
        {
          v52 = v51;
          v46 = *v138;
          v42 = *&v138[8];
          v54 = *&v138[24];
        }

        else
        {
          v46 = *v138;
          v42 = *&v138[8];
          v54 = *&v138[24];
          v68 = CGRectGetMinX(*v138) - v132;
          v69 = CGRectGetWidth(*v138) / v131 - v68;
          if (v69 > v52)
          {
            v52 = v69;
          }
        }

        goto LABEL_60;
      }

      v7 = v48 <= v51;
    }

    else
    {
      v7 = 0;
    }

    v55 = UIEdgeInsetsMin(10, v132, v129, v128, v127, 0.0);
    rect = v56;
    v58 = v57;
    v60 = v59;
    [v10 bounds];
    *v138 = UIRectInset(v61, v62, v63, v64, v55, v60, v58, rect);
    *&v138[8] = v65;
    v53 = v66;
    *&v138[24] = v67;
    if (!v7)
    {
      *&v138[16] = v66;
      v46 = *v138;
      v42 = v65;
      v45 = v134;
LABEL_68:
      v47 = v9;
      goto LABEL_69;
    }

    goto LABEL_55;
  }

  v46 = v26;
  v47 = v9;
LABEL_69:
  v173.origin.x = v46;
  v173.origin.y = v42;
  v173.size.width = *&v138[16];
  v173.size.height = *&v138[24];
  v73 = v36 - CGRectGetWidth(v173);
  v74 = v149;
  v135 = v45;
  v75 = v47;
  if (v149)
  {
    v76 = v73;
  }

  else
  {
    v76 = v73 + v47 * v45;
  }

  if (v76 > 0.0)
  {
    while (1)
    {
      v78 = *(v1 + 2);
      if (!v78)
      {
        break;
      }

      v79 = 0;
      v80 = 0;
      v81 = 0.0;
      do
      {
        v82 = *&v1[8 * v80 + 32];
        if (v23 < v82)
        {
          if (__OFADD__(v79++, 1))
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v84 = v82 - v23;
          if (v81 >= v84)
          {
            v81 = v84;
          }
        }

        ++v80;
      }

      while (v78 != v80);
      if (v81 <= 0.0)
      {
        v88 = v76 / v78;
        v161[0] = MEMORY[0x1E69E7CC0];
        v0 = v161;
        sub_188B6479C(0, v78, 0);
        v77 = v161[0];
        v89 = *(v161[0] + 16);
        v90 = 32;
        v87 = *&v138[24];
        do
        {
          v91 = *&v1[v90];
          v161[0] = v77;
          v92 = *(v77 + 3);
          if (v89 >= v92 >> 1)
          {
            v0 = v161;
            sub_188B6479C((v92 > 1), v89 + 1, 1);
            v77 = v161[0];
          }

          *(v77 + 2) = v89 + 1;
          *&v77[8 * v89 + 32] = v91 - v88;
          v90 += 8;
          ++v89;
          --v78;
        }

        while (v78);

        goto LABEL_100;
      }

      v85 = v79;
      if (v81 >= v76 / v79)
      {
        v86 = v76 / v79;
      }

      else
      {
        v86 = v81;
      }

      v7 = 4;
      v77 = v1;
      do
      {
        if (v23 < *&v1[8 * v7])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_189212AE8(v77);
          }

          if ((v7 - 4) >= *(v77 + 2))
          {
            goto LABEL_124;
          }

          *&v77[8 * v7] = *&v77[8 * v7] - v86;
        }

        ++v7;
        --v78;
      }

      while (v78);

      v36 = v36 - v86 * v85;
      v76 = v76 - v86 * v85;
      v1 = v77;
      if (v76 <= 0.0)
      {
        goto LABEL_101;
      }
    }

    v77 = MEMORY[0x1E69E7CC0];
    v87 = *&v138[24];
LABEL_100:
    v174.origin.x = v46;
    v174.origin.y = v42;
    v174.size.width = *&v138[16];
    v174.size.height = v87;
    v36 = CGRectGetWidth(v174);
  }

  else
  {
    v77 = v1;
  }

LABEL_101:
  if (v75 > 0.0)
  {
    v93 = v74;
  }

  else
  {
    v93 = 0;
  }

  v94 = 0.0;
  if (v75 > 0.0)
  {
    v94 = v135;
  }

  v136 = v94;
  if (v93 == 1)
  {
    v175.origin.x = v46;
    v175.origin.y = v42;
    v175.size.width = *&v138[16];
    v175.size.height = *&v138[24];
    v136 = (CGRectGetWidth(v175) - v36) / v75;
  }

  v176.origin.x = v46;
  v176.origin.y = v42;
  v176.size.width = *&v138[16];
  v176.size.height = *&v138[24];
  MinX = CGRectGetMinX(v176);
  *v138 = v46;
  v177.origin.x = v46;
  v177.origin.y = v42;
  v177.size.width = *&v138[16];
  v177.size.height = *&v138[24];
  v96 = CGRectGetMinX(v177);
  if (v25)
  {
    v97 = v96;
    v7 = v6 & 0xC000000000000001;
    v98 = -(MinX - v132);
    v99 = 4;
    while (1)
    {
      v1 = (v99 - 4);
      if (v7)
      {
        v100 = sub_188E49850(v99 - 4, v6);
      }

      else
      {
        if (v1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_125;
        }

        v100 = *(v6 + 8 * v99);
      }

      v0 = v100;
      v101 = *(v77 + 2);
      v102 = v1 >= v101;
      if (v1 == v101)
      {
        break;
      }

      v1 = v137;
      if (v102)
      {
        goto LABEL_126;
      }

      v103 = *&v77[8 * v99];
      v178.origin.x = *v138;
      v178.origin.y = v42;
      v178.size.width = *&v138[16];
      v178.size.height = *&v138[24];
      MinY = CGRectGetMinY(v178);
      v179.origin.x = *v138;
      v179.origin.y = v42;
      v179.size.width = *&v138[16];
      v179.size.height = *&v138[24];
      Height = CGRectGetHeight(v179);
      v106 = UIRectInsetEdges(10, v97, MinY, v103, Height, v98);
      v108 = v107;
      v110 = v109;
      v112 = v111;
      v113 = [v137 _dataForItemStyle_];
      v114 = *(v0 + OBJC_IVAR____UITabButton_appearanceData);
      *(v0 + OBJC_IVAR____UITabButton_appearanceData) = v113;
      v115 = v113;
      sub_189202A9C();

      [v0 setBounds_];
      [v0 setCenter_];
      [v0 layoutIfNeeded];

      v97 = v97 + v136 + v103;
      ++v99;
      if (!--v25)
      {
        goto LABEL_119;
      }
    }
  }

LABEL_119:

  v116 = *(v133 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
  if (v116)
  {
    v117 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton;
    v118 = *&v116[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton];
    v119 = *(&v167 + 1);
    v120 = v116;
    v121 = v118;
    v122 = [v137 _dataForItemStyle_];
    v123 = *&v121[OBJC_IVAR____UITabButton_appearanceData];
    *&v121[OBJC_IVAR____UITabButton_appearanceData] = v122;
    v124 = v122;
    sub_189202A9C();

    v125 = *&v116[v117];
    memset(v161, 0, sizeof(v161));
    v162 = 0;
    v126 = v125;
    sub_1892045F0(&v155, v161);

    [v120 layoutIfNeeded];
  }

  sub_188B7FFB8();
  sub_188B80AE8(1, 1);
  sub_188B7C4C4();

  sub_188B7FF64(&v164);
}

void sub_188B79E64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 tabBar];
    v5 = [(UITabBar *)v4 _minimizeBehavior];

    v6 = v5 != 3;
    v7 = v3[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction];
    v3[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction] = v6;
    if (v7 != v6)
    {
      v8 = &v3[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state];
      *v8 = 0;
      v8[8] = 2;
      sub_188F9133C(floor(*&v3[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress]));
      sub_188F9133C(0.0);
    }
  }

  sub_188B7FFB8();

  sub_188F542AC();
}

void sub_188B7A15C()
{
  v1 = v0;
  v2 = [v0 tabBarController];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [(UITabBarController *)v2 _internalTabBar];
  if (!v4)
  {
    v5 = [v3 view];
    if (!v5)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [objc_allocWithZone(UITabBar) initWithFrame_];
    [v3 _setInternalTabBar_];
    v4 = v15;
  }

  v16 = sub_188B7E400();
  v17 = [v16 superview];

  v18 = *&v1[OBJC_IVAR____UITabBarControllerVisualStyle_Phone_containerWrapperView];
  if (!v17 || (sub_188A34624(0, &qword_1ED48F680), v19 = v18, v20 = sub_18A4A7C88(), v17, v19, (v20 & 1) == 0))
  {
    [v18 addSubview_];
  }

  v21 = *&v1[OBJC_IVAR____UITabBarControllerVisualStyle_Phone_scrollPocketContainerInteraction];
  v22 = [v21 view];
  if (v22)
  {
  }

  else
  {
    v23 = [(UITabBarController *)v3 _scrollPocketCollectorInteraction];
    [v21 _setCollectorInteraction_];

    [v18 addInteraction_];
  }

  v24 = [(UITabBarController *)v3 _internalTabBar];
  v25 = v24;
  if (v24)
  {
    [(UITabBar *)v24 _setGlassGroupContainer:v18];
    v26 = *&v1[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView];
    v27 = &v26[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
    v28 = *&v26[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
    if (v28)
    {
      sub_188A34624(0, &unk_1EA9305D8);
      v29 = v28;
      v30 = v25;
      v31 = v29;
      v32 = v30;
      v33 = v26;
      v34 = sub_18A4A7C88();

      if (v34)
      {
        goto LABEL_24;
      }

      v35 = *v27;
      if (!*v27)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v38 = v25;
    v39 = v26;
LABEL_23:
    v33 = v39;
    goto LABEL_24;
  }

  v36 = *&v1[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView];
  v27 = &v36[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
  v28 = *&v36[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
  if (!v28)
  {
    v39 = v36;
    goto LABEL_23;
  }

  v37 = v28;
  v33 = v36;
  v35 = v28;
LABEL_19:
  [(UITabBar *)v35 _setGlassGroupContainer:?];
  if (*v27)
  {
    [*v27 removeFromSuperview];
  }

LABEL_24:
  v40 = *v27;
  *v27 = v25;
  v41 = v25;

  v42 = *v27;
  if (v28)
  {
    if (v42)
    {
      sub_188A34624(0, &unk_1EA9305D8);
      v43 = v28;
      v44 = v42;
      v45 = sub_18A4A7C88();

      if (v45)
      {
LABEL_32:

        v33 = v41;
        goto LABEL_33;
      }

      v42 = *v27;
      if (*v27)
      {
LABEL_30:
        [v33 insertSubview:v42 atIndex:0];
        v46 = *&v33[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
        if (!v46)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        [v46 tabBarDidChange_];
        v43 = v28;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  if (v42)
  {
    goto LABEL_30;
  }

  v43 = v41;
LABEL_33:

  v47 = [v3 view];
  if (!v47)
  {
    __break(1u);
    goto LABEL_39;
  }

  v48 = v47;
  v49 = [objc_opt_self() systemBackgroundColor];
  [v48 setBackgroundColor_];
}

double sub_188B7A644(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

char *sub_188B7A6A4(double a1, double a2, double a3, double a4)
{
  v33 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView;
  type metadata accessor for _UITabBarPlatterView.ContentView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = type metadata accessor for _UITabBarPlatterView();
  v35.receiver = v4;
  v35.super_class = v15;
  v16 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView;
  v18 = *&v16[OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView];
  v19 = v16;
  v20 = v18;
  [v19 bounds];
  [v20 setFrame_];

  [*&v16[v17] setAutoresizingMask_];
  v21 = *&v16[v17];
  v22 = [(UIView *)v21 _traitOverrides];
  v23 = [(_UITraitOverrides *)v22 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v23;
  v34[0] = inited;
  sub_188AF8D18(0);
  v25 = v34[0];
  v26 = [(UIView *)v21 _traitOverrides];
  v27 = *(v25 + 16);

  [(_UITraitOverrides *)v26 _replaceWithOverrides:v27];

  [v19 addSubview_];
  [v19 setClipsToBounds_];
  v28 = [v19 layer];

  [v28 setCornerRadius_];
  if (qword_1ED48E920 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v33, qword_1ED48E930);
  sub_188AD8C44(v29, v10, type metadata accessor for _Glass._GlassVariant);
  _Glass.init(_:smoothness:)(v10, v13, 6.0);
  v34[3] = v11;
  v34[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  sub_188AD8C44(v13, boxed_opaque_existential_0, type metadata accessor for _Glass);
  *(boxed_opaque_existential_0 + *(v11 + 52)) = 1;
  sub_188B7533C(v13);
  UIView._background.setter(v34);

  return v19;
}

id _UIFloatingTabBarGetPlatformMetrics(uint64_t a1)
{
  v2 = _UIFloatingTabBarGetPlatformMetrics_metricsByIdiom;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    if (!_UIFloatingTabBarGetPlatformMetrics_metricsByIdiom)
    {
      _UISolariumEnabled();
      v5 = objc_opt_class();
      v6 = +[_UIVisualStyleRegistry defaultRegistry];
      [v6 registerVisualStyleClass:v5 forStylableClass:objc_opt_class()];

      v7 = [_UIVisualStyleRegistry registryForIdiom:6];
      v8 = objc_opt_class();
      [v7 registerVisualStyleClass:v8 forStylableClass:objc_opt_class()];

      v9 = [MEMORY[0x1E695DF90] dictionary];
      v10 = _UIFloatingTabBarGetPlatformMetrics_metricsByIdiom;
      _UIFloatingTabBarGetPlatformMetrics_metricsByIdiom = v9;
    }

    v11 = [_UIVisualStyleRegistry registryForIdiom:a1];
    [v11 visualStyleClassForStylableClass:objc_opt_class()];

    v4 = objc_opt_new();
    v12 = _UIFloatingTabBarGetPlatformMetrics_metricsByIdiom;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    [v12 setObject:v4 forKey:v13];
  }

  return v4;
}

_UIOverlayEffect *_UIVisualEffectNewOverlay(uint64_t a1, double a2)
{
  v3 = _UICompositingFilterForMode(a1);
  if (v3)
  {
    v4 = objc_alloc_init(_UIOverlayEffect);
    [(_UIOverlayEffect *)v4 setFilterType:v3];
    [(_UIOverlayEffect *)v4 setAlpha:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_188B7B9CC()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for _UITabBarVisualProvider_Floating();
  objc_msgSendSuper2(&v27, sel_prepare);
  v2 = [v0 tabBar];
  _UIBarsSetAccessibilityLimits(v2);

  v3 = [v1 tabBar];
  v4 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView];
  [v3 addSubview_];

  v5 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectedContentView];
  [v4 bounds];
  [v5 setFrame_];
  [v5 setAutoresizingMask_];
  [v5 setAccessibilityElementsHidden_];
  [v4 insertSubview:v5 atIndex:0];
  v6 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView];
  [v4 insertSubview:v6 atIndex:1];
  [v6 setZPosition_];
  [v6 setWarpsContentBelow_];
  [v6 setOverridePunchoutView_];
  [v6 setLiftedContentView_];
  [v6 setLiftedContentMode_];
  [v6 setStyle_];
  v7 = [v1 tabBar];
  [v6 setLiftedContainerView_];

  v8 = [objc_allocWithZone(_UIContinuousSelectionGestureRecognizer) initWithTarget:v1 action:sel_handleSelectionGesture_];
  [v8 setDelegate_];
  v9 = [v1 tabBar];
  [v9 addGestureRecognizer_];

  v10 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureRecognizer];
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureRecognizer] = v8;

  v11 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate_];
  v12 = [v1 tabBar];
  [v12 addInteraction_];

  v13 = [v1 tabBar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  *(inited + 32) = &type metadata for UITraitLegibilityWeight;
  *(inited + 40) = &protocol witness table for UITraitLegibilityWeight;
  *(inited + 48) = &type metadata for UITraitPreferredContentSizeCategory;
  *(inited + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v15 = [v1 tabBar];
  v24 = sub_188A34624(0, &unk_1EA9305D8);
  v23[0] = v15;
  UIView.registerForTraitChanges(_:target:action:)(inited, v23, sel_setNeedsLayout);
  swift_setDeallocating();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18A64B710;
  v18 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition];
  *(v17 + 32) = v18;
  sub_188A34624(0, &qword_1ED48F690);
  v19 = v18;
  v20 = sub_18A4A7518();

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_188F59E54;
  v26 = v21;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_188A4A8F0;
  v24 = &block_descriptor_129;
  v22 = _Block_copy(v23);

  [v16 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v22);
}

uint64_t sub_188B7BEAC()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_188B7BF24@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() tintColor];
  *a1 = 0;
  *(a1 + 8) = 0x404B000000000000;
  *(a1 + 16) = sub_188F543F4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  __asm { FMOV            V0.2D, #21.0 }

  *(a1 + 72) = _Q0;
  *(a1 + 88) = xmmword_18A64B790;
  *(a1 + 104) = 0x401C000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x404B000000000000;
  *(a1 + 128) = sub_188F54448;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x4018000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 2;
  *(a1 + 184) = xmmword_18A6537C0;
  *(a1 + 200) = vdupq_n_s64(0x4046000000000000uLL);
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *(a1 + 232) = sub_188F54468;
  *(a1 + 240) = 0;
  *(a1 + 248) = sub_188B230B4;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x4020000000000000;
  *(a1 + 304) = xmmword_18A64B7C0;
  *(a1 + 320) = v2;
  *(a1 + 328) = sub_188B230B4;
  *(a1 + 336) = 0;
  *(a1 + 344) = 1;
  *(a1 + 352) = 0x3FF28F5C28F5C28FLL;
  *&result = 16843008;
  *(a1 + 360) = 16843008;
  *(a1 + 368) = 0;
  return result;
}

char *sub_188B7C12C(void *a1)
{
  *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar] = 0;
  v1[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_isBarHidden] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager] = 0;
  swift_unknownObjectUnownedInit();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _UITabBarContainerView();
  v3 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_allocWithZone(_UITabBarContentLayoutManager);
  v5 = v3;
  v6 = [v4 initWithLayoutHost:v5 container:0];
  v7 = *&v5[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  *&v5[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager] = v6;

  _UIBarsSetAccessibilityLimits(v5);
  return v5;
}

void sub_188B7C2D8(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView;
  [*&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView] removeFromSuperview];
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    v7 = [v1 tabBar];
    [v7 addSubview_];

    v8 = [v1 tabBar];
    [v8 setNeedsLayout];
  }
}

void sub_188B7C4C4()
{
  v1 = sub_188B83448();
  v2 = [v1 _overrideUserInterfaceStyle];

  v3 = [v0 tabBar];
  objecta = [(UITabBar *)v3 _glassGroupContainer];

  v4 = objecta;
  if (!objecta)
  {
    v4 = [v0 tabBar];
  }

  object = v4;
  v5 = [(UIView *)v4 _traitOverridesIfExist];
  if (v5 && (v6 = v5, v7 = [(_UIEventDeferringManager *)v5 _transactionAssertion], v6, v7))
  {
    if ([(_UITraitOverrides *)v7 _containsTraitToken:?])
    {
      v8 = [v7 userInterfaceStyle];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == v2)
  {
  }

  else
  {
    if (v2)
    {
      v9 = [(UIView *)object _traitOverrides];
      v10 = [(_UITraitOverrides *)v9 _swiftImplCopy];

      v11 = [(_UITraitOverrides *)v10 _overridesAppliedAfter];
      v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      inited = swift_initStackObject();
      *(inited + 16) = v12;
      v56 = inited;
      sub_188D63200(v2);
      sub_18914E4E8(v2);
      v14 = [(UIView *)object _traitOverrides];
      v15 = [(_UITraitOverrides *)v14 _swiftImplCopy];

      v16 = swift_initStackObject();
      *(v16 + 16) = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v16 + 16);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = [(_UITraitOverrides *)v18 _swiftImplCopy];
        v20 = swift_allocObject();
        *(v20 + 16) = v19;

        v18 = v19;
        v16 = v20;
      }

      v21 = [(_UITraitOverrides *)v18 _overridesAppliedAfter];
      v22 = *(v56 + 16);
      [(_UITraitOverrides *)v21 _replaceWithOverrides:v22];

      v23 = [(UIView *)object _traitOverrides];
      v24 = *(v16 + 16);

      [(_UITraitOverrides *)v23 _replaceWithOverrides:v24];
    }

    else
    {
      v25 = [(UIView *)object _traitOverrides];
      v26 = [(_UITraitOverrides *)v25 _swiftImplCopy];

      v27 = [(_UITraitOverrides *)v26 _overridesAppliedAfter];
      v28 = [(_UITraitOverrides *)v27 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      v29 = swift_initStackObject();
      *(v29 + 16) = v28;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v29 + 16);
      if ((v30 & 1) == 0)
      {
        v31 = [(_UITraitOverrides *)*(v29 + 16) _swiftImplCopy];
        v32 = swift_allocObject();
        *(v32 + 16) = v31;

        v29 = v32;
      }

      v33 = qword_1ED491B40;
      v34 = v31;
      if (v33 != -1)
      {
        swift_once();
      }

      if (qword_1ED491AF0 != -1)
      {
        swift_once();
      }

      v35 = off_1ED491B48;
      os_unfair_lock_lock(*(off_1ED491B48 + 2));
      v36 = sub_188D63234(&type metadata for UITraitUserInterfaceStyle, 0);
      os_unfair_lock_unlock(v35[2]);
      [(_UITraitOverrides *)v34 _removeTraitToken:v36];

      swift_unknownObjectRelease();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v29 + 16);
      if ((v37 & 1) == 0)
      {
        v38 = [(_UITraitOverrides *)*(v29 + 16) _swiftImplCopy];
        v39 = swift_allocObject();
        *(v39 + 16) = v38;

        v29 = v39;
      }

      v40 = v35[2];
      v41 = v38;
      os_unfair_lock_lock(v40);
      v42 = sub_18901B9F8(&type metadata for GlassUserInterfaceStyleTrait, 0);
      os_unfair_lock_unlock(v35[2]);
      [(_UITraitOverrides *)v41 _removeTraitToken:v42];

      swift_unknownObjectRelease();
      v43 = [(UIView *)object _traitOverrides];
      v44 = [(_UITraitOverrides *)v43 _swiftImplCopy];

      v45 = swift_initStackObject();
      *(v45 + 16) = v44;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v45 + 16);
      if ((v46 & 1) == 0)
      {
        v48 = [(_UITraitOverrides *)v47 _swiftImplCopy];
        v49 = swift_allocObject();
        *(v49 + 16) = v48;

        v47 = v48;
        v45 = v49;
      }

      v50 = [(_UITraitOverrides *)v47 _overridesAppliedAfter];
      v51 = *(v29 + 16);
      [(_UITraitOverrides *)v50 _replaceWithOverrides:v51];

      v52 = [(UIView *)object _traitOverrides];
      v53 = *(v45 + 16);

      [(_UITraitOverrides *)v52 _replaceWithOverrides:v53];
    }

    [object updateTraitsIfNeeded];
  }
}

void sub_188B7CC0C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [(UITabBar *)v2 _setHostedElementsLayoutHandler:?];
    [(UITabBar *)v2 _setUpdateMorphTargetBlock:?];
  }

  v3 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_188C07E9C;
    v13 = v4;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188A4A8F0;
    v11 = &block_descriptor_152_1;
    v5 = _Block_copy(&v8);

    [(UITabBar *)v3 _setHostedElementsLayoutHandler:v5];
    _Block_release(v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_188F3AD58;
    v13 = v6;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188F38134;
    v11 = &block_descriptor_156_0;
    v7 = _Block_copy(&v8);

    [(UITabBar *)v3 _setUpdateMorphTargetBlock:v7];
    _Block_release(v7);
  }
}

uint64_t sub_188B7CDE8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(void *a1, int a2)
{
  v3 = a1;
  [v3 frame];
  MaxY = CGRectGetMaxY(v7);
  v5 = _UIBackgroundExtensionForBarWithMaxYAndInsetFromHomeAffordanceAllowance(v3, a2, MaxY);

  return v5;
}

double _UIBackgroundExtensionForBarWithMaxYAndInsetFromHomeAffordanceAllowance(void *a1, int a2, CGFloat a3)
{
  v5 = a1;
  v6 = 0.0;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_42;
  }

  v7 = [v5 _screen];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [objc_opt_self() mainScreen];
  }

  v10 = v9;

  if ([v10 _isEmbeddedScreen] && UIApplicationSceneClassicModeWantsSafeAreaInsets(+[UIApplication _classicMode](UIApplication, "_classicMode")))
  {
    v11 = [v10 _displayInfoProvider];
    [v11 safeAreaInsetsPortrait];
    v6 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = +[UIDevice currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = [v5 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 1;
    }

    else
    {
      v17 = [v5 delegate];
      objc_opt_class();
      v16 = objc_opt_isKindOfClass() & 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v16 | a2)
  {
    [v11 homeAffordanceOverlayAllowance];
    v19 = v18 - v6;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [v5 window];
  if ([v20 _isHostedInAnotherProcess])
  {

LABEL_20:
    if (objc_opt_respondsToSelector())
    {
      [v5 _externalViewForSafeAreaInsets];
    }

    else
    {
      [v5 superview];
    }
    v26 = ;
    [v26 safeAreaInsets];
    v28 = v27;
    goto LABEL_34;
  }

  if (dyld_program_sdk_at_least())
  {
    v21 = v5;
    if (qword_1ED49BFA0 != -1)
    {
      dispatch_once(&qword_1ED49BFA0, &__block_literal_global_234);
    }

    v22 = [v21 window];
    v23 = [v22 _rootPresentationController];
    v24 = [v23 presentedView];
    v25 = v24;
    if (v24)
    {
      [v24 transform];
    }

    else
    {
      memset(&v59, 0, sizeof(v59));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v59);

    v30 = byte_1ED49BF65;
    if (v30 != 1 || !IsIdentity)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v31 = [v5 superview];
  v32 = [v31 superview];
  v33 = [v5 superview];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [v5 window];
  [v32 convertRect:v42 toView:{v35, v37, v39, v41}];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v26 = [v5 window];
  v51 = [v5 window];
  [v26 _safeAreaInsetsForFrame:v51 inSuperview:{v44, v46, v48, v50}];
  v28 = v52;

LABEL_34:
  v53 = v19 + v28;
  v54 = v19 + v28 < 0.0;
  v6 = 0.0;
  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v53;
  }

  if ([v5 barPosition] == 4 || objc_msgSend(v5, "barPosition") == 1 && (objc_msgSend(v5, "superview"), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "bounds"), v57 = CGRectGetMaxY(v60) - v55, v56, v57 <= a3))
  {
    v6 = v55;
  }

LABEL_42:
  return v6;
}

BOOL _tabElementsContainsTab(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___tabElementsContainsTab_block_invoke;
  v7[3] = &unk_1E7101F18;
  v8 = v3;
  v4 = v3;
  v5 = [a1 indexOfObjectPassingTest:v7] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

void sub_188B7D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_188B7DC0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration;
  sub_188B7A644(__src);
  memcpy(&v1[v3], __src, 0x178uLL);
  v4 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView;
  type metadata accessor for _UITabBarPlatterView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView;
  v6 = [objc_allocWithZone(_UITabSelectionView) init];
  v7 = [objc_allocWithZone(_UILiquidLensView) initWithRestingBackground_];

  *&v1[v5] = v7;
  v8 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition;
  *&v1[v8] = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v9 = &v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame];
  *v9 = 0u;
  v9[1] = 0u;
  v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden] = 0;
  v10 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectedContentView;
  type metadata accessor for _UITabBarVisualProvider_Floating.SelectedContentView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView] = 0;
  v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  *&v1[v12] = sub_188E8E744(v11);
  v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isAnimatingCollapsedState] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureRecognizer] = 0;
  v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating__backgroundTransitionProgress] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItem] = 0;
  v13 = &v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
  *v13 = 0;
  v13[8] = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint] = _Q0;
  v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_shouldReselectHighlightedItemOnLift] = 1;
  v19 = &v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureInitialLocation];
  v20 = type metadata accessor for _UITabBarVisualProvider_Floating();
  *v19 = 0;
  v19[1] = 0;
  v22.receiver = v1;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, sel_initWithTabBar_, a1);
}

id sub_188B7DFB0(void *a1, void *a2)
{
  v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] = 2;
  v2[OBJC_IVAR____UITabBarContentLayoutManager_needsAccessoryDisplayStateUpdate] = 0;
  *&v2[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation] = 0;
  *&v2[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration] = 0;
  *&v2[OBJC_IVAR____UITabBarContentLayoutManager_searchContainerView] = 0;
  *&v2[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration] = 0;
  *&v2[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView] = 0;
  *&v2[OBJC_IVAR____UITabBarContentLayoutManager_keyboardAdjustment] = 0;
  v2[OBJC_IVAR____UITabBarContentLayoutManager_isUpdatingHostedElements] = 0;
  v2[OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField] = 0;
  v2[OBJC_IVAR____UITabBarContentLayoutManager_isUpdatingContentLayout] = 0;
  swift_unknownObjectUnownedInit();
  v5 = a2;
  if (!a2)
  {
    v5 = a1;
  }

  swift_unknownObjectUnownedInit();
  v6 = a2;

  v8.receiver = v2;
  v8.super_class = _UITabBarContentLayoutManager;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_188B7E1B8()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = [v0 tabBarController];
  if (v1)
  {
    v2 = v1;
    v3 = sub_188B7E400();
    v4 = v3;
    v5 = *&v3[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
    if (v5)
    {
      v6 = v5;
      [v6 contentSizeForAllHostedElements];
      v8 = v7;
    }

    else
    {
      v9 = *&v3[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar];
      if (!v9)
      {

        v8 = 0.0;
LABEL_7:
        v11 = [v2 view];
        if (v11)
        {
          v12 = v11;
          [v11 bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          memset(&slice, 0, sizeof(slice));
          memset(&v29, 0, sizeof(v29));
          v32.origin.x = v14;
          v32.origin.y = v16;
          v32.size.width = v18;
          v32.size.height = v20;
          CGRectDivide(v32, &slice, &v29, v8, CGRectMaxYEdge);
          x = slice.origin.x;
          y = slice.origin.y;
          width = slice.size.width;
          height = slice.size.height;
          v25 = *&v0[OBJC_IVAR____UITabBarControllerVisualStyle_Phone_containerWrapperView];
          [v25 setBounds_];
          [v25 setCenter_];
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v26 = -CGRectGetMinY(v33);
          v27 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView;
          [*&v0[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView] setBounds_];
          v28 = *&v0[v27];
          [v28 setCenter_];
        }

        else
        {
          __break(1u);
        }

        return;
      }

      v6 = v9;
      [v6 bounds];
      v8 = v10;
    }

    goto LABEL_7;
  }
}

char *sub_188B7E400()
{
  v1 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for _UITabBarContainerView());
    v5 = v0;
    v6 = sub_188B7C12C(v0);
    v7 = *&v0[v1];
    *&v5[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

double sub_188B7E478()
{
  v1 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (v1)
  {
    [v1 frame];
    x = v2;
    y = v4;
    width = v6;
    height = v8;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v10 = [v0 searchContainerView];
  if (v10)
  {
    v11 = v10;
    [v10 frame];
    v29.origin.x = v12;
    v29.origin.y = v13;
    v29.size.width = v14;
    v29.size.height = v15;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectUnion(v25, v29);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  if (*&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration])
  {
    [objc_msgSend(v0 host)];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v30.origin.x = v17;
    v30.origin.y = v19;
    v30.size.width = v21;
    v30.size.height = v23;
    v28 = CGRectUnion(v27, v30);
    return v28.size.width;
  }

  return width;
}

uint64_t sub_188B7E660(uint64_t a1, void *a2, void *a3, char a4)
{
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v208 = v6;
  v7 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v187 = v7;
  v8 = *(v4 + v7);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x150);

  v182 = v8;

  if (v9(v10))
  {
    sub_188B82DFC(v209);
    v11 = v215[5];
    v232 = v215[6];
    v233[0] = v216[0];
    *(v233 + 9) = *(v216 + 9);
    v228 = v215[2];
    v229 = v215[3];
    v12 = v215[4];
  }

  else
  {
    sub_188B82DFC(v209);
    v11 = v213;
    v232 = v214;
    v233[0] = v215[0];
    *(v233 + 9) = *(v215 + 9);
    v228 = v210;
    v229 = v211;
    v12 = v212;
  }

  v231 = v11;
  v230 = v12;
  sub_188B7FF08(&v228, v225);
  v13 = sub_188B82BE8(v209);
  v206[4] = v232;
  v207[0] = v233[0];
  *(v207 + 9) = *(v233 + 9);
  v206[0] = v228;
  v206[1] = v229;
  v206[2] = v230;
  v206[3] = v231;
  v239 = v232;
  v240[0] = v207[0];
  *(v240 + 9) = *(v233 + 9);
  v235 = v228;
  v236 = v229;
  v238 = v231;
  v237 = v230;
  if (v9(v13))
  {
    sub_188B82DFC(v217);
    v14 = v223[5];
    v232 = v223[6];
    v233[0] = v224[0];
    *(v233 + 9) = *(v224 + 9);
    v228 = v223[2];
    v229 = v223[3];
    v15 = v223[4];
  }

  else
  {
    sub_188B82DFC(v217);
    v14 = v221;
    v232 = v222;
    v233[0] = v223[0];
    *(v233 + 9) = *(v223 + 9);
    v228 = v218;
    v229 = v219;
    v15 = v220;
  }

  v231 = v14;
  v230 = v15;
  sub_188B7FF08(&v228, v225);
  v16 = sub_188B82BE8(v217);
  v204[4] = v232;
  v205[0] = v233[0];
  *(v205 + 9) = *(v233 + 9);
  v204[0] = v228;
  v204[1] = v229;
  v204[2] = v230;
  v204[3] = v231;
  if (v9(v16))
  {
    sub_188B82DFC(v225);
    sub_188B82BE8(v225);
    v17 = &v227;
  }

  else
  {
    sub_188B82DFC(v225);
    sub_188B82BE8(v225);
    v17 = &v226;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = *v17;
  v20 = [v4 tabBar];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = UIRectInset(v22, v24, v26, v28, 0.0, v19, 0.0, v19);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_188B7FF64(v204);
  sub_188B82DFC(&v228);
  sub_188B82BE8(&v228);
  v189 = v4;
  v178 = a3;
  if (v234)
  {
    v36 = *(v4 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch) ^ 1;
  }

  else
  {
    v36 = 0;
  }

  v203 = v18;
  v179 = swift_allocObject();
  *(v179 + 16) = sub_188E8E744(v18);
  v192 = (v179 + 16);
  v181 = swift_allocObject();
  *(v181 + 16) = 0;
  v37 = &qword_1EA937000;
  if ((v36 & 1) == 0)
  {
LABEL_29:
    v45 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView;
    v46 = *&v189[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView];
    if (!v46)
    {
      if ((v189[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration + 362] & 1) == 0)
      {
        v38 = (v6 & 0xFFFFFFFFFFFFFF8);
        if (!(v6 >> 62))
        {
          v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_34;
        }

        goto LABEL_170;
      }

      goto LABEL_73;
    }

    v47 = *(v181 + 16);
    *(v181 + 16) = v46;
    v48 = v46;

    v49 = *&v189[v45];
    *&v189[v45] = 0;
LABEL_72:

    goto LABEL_73;
  }

  v38 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 >> 62)
  {
    v39 = sub_18A4A7F68();
  }

  else
  {
    v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = 0;
  while (1)
  {
    if (v39 == v40)
    {
      goto LABEL_29;
    }

    if ((v6 & 0xC000000000000001) == 0)
    {
      break;
    }

    v41 = sub_188E49884(v40, v6);
LABEL_24:
    v42 = v41;
    v43 = [v41 systemItem];

    if (v43 == 8)
    {
      v54 = sub_188B747B4(v40);
      v55 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
      v38 = v189;
      swift_beginAccess();
      v56 = *&v189[v55];

      v57 = sub_18903AA14(v54, v56);

      if (v57)
      {
        v58 = v57[OBJC_IVAR____UITabButton_overrideItemDisplayMode];
        v57[OBJC_IVAR____UITabButton_overrideItemDisplayMode] = 2;
        v59 = (v179 + 16);
        if (v58 != 2)
        {
          sub_1892060EC(1);
        }

        sub_189205920();
        v60 = v57;
      }

      else
      {
        v60 = sub_188F53BF8(v54, &v235, 1);
        v57 = 0;
        v59 = (v179 + 16);
      }

      v6 = v60;
      v61 = v57;
      v62 = [v189 tabBar];
      v63 = [v62 semanticContentAttribute];

      [v6 setSemanticContentAttribute_];
      v64 = a2;
      if (a2)
      {
        sub_188A34624(0, &qword_1EA9306B0);
        v65 = v54;
        v66 = a2;
        v64 = sub_18A4A7C88();

        v38 = v189;
      }

      [v6 setSelected_];
      v67 = *v59;
      if ((*v59 & 0xC000000000000001) != 0)
      {
        if (v67 < 0)
        {
          v68 = *v59;
        }

        else
        {
          v68 = v67 & 0xFFFFFFFFFFFFFF8;
        }

        v69 = v54;
        v70 = sub_18A4A7F68();
        if (__OFADD__(v70, 1))
        {
          goto LABEL_169;
        }

        *v59 = sub_18907BE68(v68, v70 + 1);
      }

      else
      {
        v71 = v54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = *v59;
      sub_188E9F55C(v6, v54, isUniquelyReferenced_nonNull_native);
      *v59 = aBlock;

      v73 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView;
      v74 = *(v38 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
      if (v74)
      {
        v75 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton;
        v76 = *&v74[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton];
        type metadata accessor for _UITabButton();
        v77 = v74;
        v78 = v76;
        if ((sub_18A4A7C88() & 1) == 0)
        {
          swift_unknownObjectWeakAssign();
          [*&v74[v75] removeFromSuperview];
        }

        v79 = *&v74[v75];
        *&v74[v75] = v6;
        v80 = v6;

        sub_188E9442C(v78);
        v81 = v189;
      }

      else
      {
        v82 = objc_allocWithZone(type metadata accessor for _UITabBarAuxiliaryView());
        v83 = v6;
        v84 = sub_188E94A40(v83);
        if (a4)
        {
          v85 = *(v38 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView);
          [v85 bounds];
          Height = CGRectGetHeight(v241);
          [v85 bounds];
          Center = UIRectGetCenter(v87, v88, v89);
          v92 = v91;
          v93 = [v38 tabBar];
          v94 = [v93 _shouldReverseLayoutDirection];

          v95 = v29;
          v96 = v31;
          v97 = v33;
          v98 = v35;
          if (v94)
          {
            MinX = CGRectGetMinX(*&v95);
          }

          else
          {
            MinX = CGRectGetMaxX(*&v95);
          }

          v100 = MinX;
          [v84 setBounds_];
          [v84 setCenter_];
          [v84 setAlpha_];
          [v84 layoutIfNeeded];
        }

        v101 = [v38 tabBar];
        v81 = v38;
        v102 = *(v38 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView);
        v74 = v84;
        [v101 insertSubview:v74 belowSubview:v102];
      }

      v49 = *(v81 + v73);
      *(v81 + v73) = v74;
      goto LABEL_72;
    }

    v44 = __OFADD__(v40++, 1);
    if (v44)
    {
      goto LABEL_153;
    }
  }

  if (v40 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v6 + 8 * v40 + 32);
    goto LABEL_24;
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  for (i = sub_18A4A7F68(); ; i = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v104 = v187;
    v37 = (v179 + 16);
    v191 = v39;
    if (i)
    {
      v39 = 0;
      v184 = 0;
      v186 = i;
      while (1)
      {
        if ((v180 & 0xC000000000000001) != 0)
        {
          v107 = sub_188E49884(v39, v180);
        }

        else
        {
          if (v39 >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_150;
          }

          v107 = *(v180 + 32 + 8 * v39);
        }

        v195 = v107;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v190 = v39;
        v108 = *(v38 + v104);
        v193 = (v39 + 1);
        if (v108 >> 62)
        {
          v109 = sub_18A4A7F68();
        }

        else
        {
          v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v109)
        {
          v39 = 0;
          v38 = (v108 & 0xC000000000000001);
          while (1)
          {
            if (v38)
            {
              v110 = sub_188E49850(v39, v108);
            }

            else
            {
              if (v39 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_148;
              }

              v110 = *(v108 + 8 * v39 + 32);
            }

            v111 = v110;
            v112 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v114 = Strong;
              sub_188A34624(0, &qword_1EA9306B0);
              v115 = v195;
              v116 = sub_18A4A7C88();

              if (v116)
              {

                sub_189205920();
                [v191 bringSubviewToFront_];
                v38 = v189;
                goto LABEL_103;
              }
            }

            ++v39;
            if (v112 == v109)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
LABEL_148:
          __break(1u);
          break;
        }

LABEL_96:

        v38 = v189;
        v111 = sub_188F53BF8(v195, &v235, 1);
        [v191 addSubview_];
        v117 = sub_188F53BF8(v195, &v235, 0);
        v118 = &v117[OBJC_IVAR____UITabButton_overrideItemState];
        v119 = *&v117[OBJC_IVAR____UITabButton_overrideItemState];
        v120 = v117[OBJC_IVAR____UITabButton_overrideItemState + 8];
        *v118 = 2;
        v118[8] = 0;
        if ((v120 & 1) != 0 || v119 != 2)
        {
          sub_189205B48();
        }

        v111[OBJC_IVAR____UITabButton_ignoresSelectedState] = 1;
        v111[OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton] = 1;
        swift_unknownObjectWeakAssign();

        [v183 addSubview_];
        if (a4)
        {
          v121 = objc_opt_self();
          v122 = swift_allocObject();
          *(v122 + 16) = v182;
          *(v122 + 24) = v190;
          v123 = v240[0];
          *(v122 + 96) = v239;
          *(v122 + 112) = v123;
          *(v122 + 121) = *(v240 + 9);
          v124 = v236;
          *(v122 + 32) = v235;
          *(v122 + 48) = v124;
          v125 = v238;
          *(v122 + 64) = v237;
          *(v122 + 80) = v125;
          *(v122 + 144) = v191;
          *(v122 + 152) = v111;

          v126 = v191;
          v111 = v111;
          sub_188B7FF08(v206, &aBlock);
          sub_188A55B8C(v184);
          v39 = swift_allocObject();
          v184 = sub_188F59E14;
          *(v39 + 16) = sub_188F59E14;
          *(v39 + 24) = v122;
          v201 = sub_188A4B574;
          v202 = v39;
          aBlock = MEMORY[0x1E69E9820];
          v198 = 1107296256;
          v199 = sub_188A4A968;
          v200 = &block_descriptor_105_0;
          v127 = _Block_copy(&aBlock);

          [v121 performWithoutAnimation_];

          _Block_release(v127);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            goto LABEL_154;
          }
        }

        else
        {
        }

LABEL_103:
        v37 = (v179 + 16);
        v129 = v111;
        v130 = [v38 tabBar];
        v131 = [v130 semanticContentAttribute];

        [v129 setSemanticContentAttribute_];
        if (a2)
        {
          sub_188A34624(0, &qword_1EA9306B0);
          v132 = a2;
          v133 = v195;
          v134 = sub_18A4A7C88();
        }

        else
        {
          v134 = 0;
        }

        [v129 setSelected_];
        v135 = v129;
        MEMORY[0x18CFE2450]();
        if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        v136 = v203;
        v137 = *v192;
        if ((*v192 & 0xC000000000000001) != 0)
        {
          if (v137 < 0)
          {
            v39 = *v192;
          }

          else
          {
            v39 = v137 & 0xFFFFFFFFFFFFFF8;
          }

          v138 = v135;
          v139 = sub_18A4A7F68();
          if (__OFADD__(v139, 1))
          {
            goto LABEL_151;
          }

          *v192 = sub_18907BE68(v39, v139 + 1);
        }

        else
        {
          v105 = v135;
        }

        v106 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = *v192;
        sub_188E9F55C(v135, v195, v106);
        *v192 = aBlock;

        v39 = v193;
        v104 = v187;
        if (v193 == v186)
        {
          goto LABEL_117;
        }
      }

      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v184 = 0;
    v136 = MEMORY[0x1E69E7CC0];
LABEL_117:

    v140 = *(v38 + v104);
    v141 = *(v181 + 16);
    if (v141)
    {
      v142 = *(v141 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton);

      MEMORY[0x18CFE2450](v143);
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();

      v144 = v140;
    }

    else
    {

      v144 = v140;
    }

    *(v38 + v104) = v136;

    v145 = *v37;
    v146 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    *(v38 + v146) = v145;

    if (a4)
    {
      v147 = objc_opt_self();
      v148 = [v147 behaviorWithDampingRatio:1.0 response:0.2];
      v194 = objc_opt_self();
      v149 = swift_allocObject();
      *(v149 + 2) = v181;
      *(v149 + 3) = v38;
      v149[4] = v29;
      *(v149 + 5) = v31;
      *(v149 + 6) = v33;
      *(v149 + 7) = v35;
      *(v149 + 8) = v144;
      *(v149 + 9) = v179;
      v201 = sub_188F59E24;
      v202 = v149;
      aBlock = MEMORY[0x1E69E9820];
      v198 = 1107296256;
      v199 = sub_188A4A8F0;
      v200 = &block_descriptor_111_0;
      v150 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();

      v151 = v38;

      v152 = v148;

      [v194 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v150);

      v153 = [v147 behaviorWithDampingRatio:1.0 response:0.3];
      v154 = swift_allocObject();
      *(v154 + 2) = v151;
      *(v154 + 3) = v144;
      *(v154 + 4) = v179;
      *(v154 + 5) = v181;
      *(v154 + 6) = v136;
      v201 = sub_188F59E38;
      v202 = v154;
      aBlock = MEMORY[0x1E69E9820];
      v198 = 1107296256;
      v199 = sub_188A4A8F0;
      v200 = &block_descriptor_117_1;
      v155 = _Block_copy(&aBlock);

      v156 = v151;

      v157 = v153;

      v158 = swift_allocObject();
      *(v158 + 2) = v181;
      *(v158 + 3) = v144;
      *(v158 + 4) = v179;
      v201 = sub_188F59E48;
      v202 = v158;
      aBlock = MEMORY[0x1E69E9820];
      v198 = 1107296256;
      v199 = sub_188C3DD6C;
      v200 = &block_descriptor_123;
      v159 = _Block_copy(&aBlock);

      [v194 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v159);
      _Block_release(v155);
      goto LABEL_161;
    }

    v160 = *(v181 + 16);
    if (v160)
    {
      [v160 removeFromSuperview];
    }

    if (v144 >> 62)
    {
      v6 = sub_18A4A7F68();
      if (!v6)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v6 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_160;
      }
    }

    if (v6 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    v39 = sub_18A4A7F68();
LABEL_34:
    v50 = 0;
    while (v39 != v50)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v51 = sub_188E49884(v50, v6);
      }

      else
      {
        if (v50 >= v38[2])
        {
          goto LABEL_155;
        }

        v51 = *(v6 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = [v51 systemItem];

      if (v53 == 8)
      {
        v49 = sub_188B747B4(v50);
        MEMORY[0x18CFE2450]();
        if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        goto LABEL_72;
      }

      v44 = __OFADD__(v50++, 1);
      if (v44)
      {
        goto LABEL_156;
      }
    }

LABEL_73:
    v38 = v189;
    v39 = *(*&v189[v37[283]] + OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView);
    v183 = *&v189[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectedContentView];
    v180 = v208;
    if (v208 >> 62)
    {
      goto LABEL_157;
    }
  }

  for (j = 0; j != v6; ++j)
  {
    if ((v144 & 0xC000000000000001) != 0)
    {
      v163 = sub_188E49850(j, v144);
    }

    else
    {
      v163 = *(v144 + 8 * j + 32);
    }

    v162 = v163;
    v164 = swift_unknownObjectWeakLoadStrong();
    if (!v164)
    {
      goto LABEL_144;
    }

    v165 = v164;
    swift_beginAccess();
    v166 = *v192;
    if ((*v192 & 0xC000000000000001) != 0)
    {
      v167 = v165;
      v168 = sub_18A4A8358();

      if (v168)
      {
        type metadata accessor for _UITabButton();
        swift_dynamicCast();
        v168 = v196;
      }
    }

    else if (*(v166 + 16) && (v169 = sub_188B851F4(v165), (v170 & 1) != 0))
    {
      v168 = *(*(v166 + 56) + 8 * v169);
      v171 = v168;
    }

    else
    {
      v168 = 0;
    }

    swift_endAccess();

    if (v168)
    {

      v162 = v168;
    }

    else
    {
LABEL_144:
      v172 = swift_unknownObjectWeakLoadStrong();
      if (v172)
      {
        v173 = v172;
        [v172 removeFromSuperview];
      }

      [v162 removeFromSuperview];
    }
  }

LABEL_160:

  v157 = [v189 tabBar];
  [v157 setNeedsLayout];
LABEL_161:

  if (!a2)
  {
    if (!v178)
    {
      goto LABEL_164;
    }

    goto LABEL_166;
  }

  if (!v178 || (sub_188A34624(0, &qword_1EA9306B0), v174 = a2, v175 = v178, v176 = sub_18A4A7C88(), v174, v175, (v176 & 1) == 0))
  {
LABEL_166:
    sub_188B85684(v178, a2, a4 & 1);

    sub_188B7FF64(v206);

    return sub_188A55B8C(v184);
  }

LABEL_164:
  sub_188B7FF64(v206);

  return sub_188A55B8C(v184);
}

uint64_t sub_188B7FD44()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B7FD7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B7FDB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_188B7FE14()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188B7FE64()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188B7FEBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_188B7FFB8()
{
  v1 = v0;
  v2 = &selRef_heightOfInputViews_;
  if ([v0 hostedElements] & 2) != 0 || ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))())
  {
    v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView;
    v4 = *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView);
    if (v4)
    {
      v5 = *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView);
    }

    else
    {
      type metadata accessor for _UITabBarPlatterView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v5 setHidden_];
      v6 = [v0 tabBar];
      [v6 insertSubview:v5 belowSubview:v5];

      v7 = *(v1 + v3);
      *(v1 + v3) = v5;
    }

    v8 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton;
    if (*(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      v9 = v4;

      v2 = &selRef_heightOfInputViews_;
    }

    else
    {
      v11 = Strong;
      v12 = v4;
      v13 = sub_188B82DFC(v71);
      v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))(v13);
      v15 = 8;
      if (v14)
      {
        v15 = 120;
      }

      v16 = (v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration + v15);
      *&v80[89] = *(v16 + 89);
      v17 = v16[5];
      *&v80[64] = v16[4];
      *&v80[80] = v17;
      v18 = v16[3];
      *&v80[32] = v16[2];
      *&v80[48] = v18;
      v19 = v16[1];
      *v80 = *v16;
      *&v80[16] = v19;
      v101[0] = *v80;
      v101[1] = v19;
      *&v102[9] = *&v80[89];
      v101[4] = *&v80[64];
      *v102 = *&v80[80];
      v101[2] = *&v80[32];
      v101[3] = v18;
      sub_188B7FF08(v80, &aBlock);
      v20 = [v1 tabBar];
      objc_allocWithZone(type metadata accessor for _UITabButton());
      v21 = v11;
      v22 = sub_189203EDC(v21, v71, v101, v20);
      v23 = &v22[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
      *v23 = 0xD00000000000001CLL;
      v23[1] = 0x800000018A694920;

      sub_189202C38();
      v24 = &v22[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *v24 = 0xD00000000000001DLL;
      v24[1] = 0x800000018A694940;

      sub_189202C38();
      v25 = v22[OBJC_IVAR____UITabButton_overrideItemDisplayMode];
      v22[OBJC_IVAR____UITabButton_overrideItemDisplayMode] = 2;
      if (v25 != 2)
      {
        sub_1892060EC(1);
      }

      v26 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v27 = objc_allocWithZone(UIAction);

      v28 = sub_18A4A7258();
      *(&v74 + 1) = sub_188F59E64;
      *&v75 = v26;
      aBlock = MEMORY[0x1E69E9820];
      *&v73 = 1107296256;
      *(&v73 + 1) = sub_188BFF280;
      *&v74 = &block_descriptor_135_0;
      v29 = _Block_copy(&aBlock);

      v30 = [v27 initWithTitle:v28 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v29];
      _Block_release(v29);

      v31 = v30;
      [v31 setSubtitle_];
      [v31 setSelectedImage_];

      [v22 addAction:v31 forControlEvents:0x2000];
      [v5 bounds];
      [v22 setBounds_];
      [v5 bounds];
      [v22 setCenter_];
      [v22 setAutoresizingMask_];
      [*&v5[OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView] addSubview_];
      v35 = *(v1 + v8);
      *(v1 + v8) = v22;
      v36 = v22;

      [v1 layoutSubviews];
      v2 = &selRef_heightOfInputViews_;
    }
  }

  v37 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton);
  if (v37)
  {
    v38 = v37;
    v39 = sub_188F5416C();
    if (v39)
    {
      v40 = v39;
      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))())
      {
        sub_188B82DFC(&aBlock);
        v41 = v78[5];
        v97 = v78[6];
        v98[0] = v79[0];
        *(v98 + 9) = *(v79 + 9);
        v93 = v78[2];
        v94 = v78[3];
        v42 = v78[4];
      }

      else
      {
        sub_188B82DFC(&aBlock);
        v41 = v76;
        v97 = v77;
        v98[0] = v78[0];
        *(v98 + 9) = *(v78 + 9);
        v93 = v73;
        v94 = v74;
        v42 = v75;
      }

      v96 = v41;
      v95 = v42;
      sub_188B7FF08(&v93, v80);
      sub_188B82BE8(&aBlock);
      *&v80[64] = v97;
      *&v80[80] = v98[0];
      *&v80[89] = *(v98 + 9);
      *v80 = v93;
      *&v80[16] = v94;
      *&v80[32] = v95;
      *&v80[48] = v96;
      v98[0] = *&v80[80];
      *(v98 + 9) = *&v80[89];
      v43 = swift_unknownObjectWeakLoadStrong();
      sub_1892029B4(v43);
      v44 = sub_188B83448();
      v45 = [v44 _dataForItemStyle_];

      v46 = *&v38[OBJC_IVAR____UITabButton_appearanceData];
      *&v38[OBJC_IVAR____UITabButton_appearanceData] = v45;
      v47 = v45;
      sub_189202A9C();

      memset(v99, 0, sizeof(v99));
      v100 = 0;
      sub_1892045F0(&v93, v99);
      [v38 setSelected_];
      sub_188B7FF64(v80);
    }

    else
    {
    }
  }

  v48 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView;
  v49 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
  if (v49)
  {
    v50 = swift_unknownObjectWeakLoadStrong();
    if (v50)
    {
      v51 = v50;
      v52 = v49;
      if ([v1 v2[272]] & 2) != 0 || ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))())
      {
        v53 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton;
        if (!*&v52[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton])
        {
          v54 = &v52[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize];
          if ((v52[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize + 16] & 1) == 0)
          {
            v56 = *v54;
            v55 = v54[1];
            v57 = [v52 bounds];
            if (v56 != v59 || v55 != v58)
            {
              if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))(v57))
              {
                sub_188B82DFC(v80);
                v61 = v84;
                v91 = v85;
                v92[0] = v86[0];
                *(v92 + 9) = *(v86 + 9);
                v87 = v81;
                v88 = v82;
                v62 = v83;
              }

              else
              {
                sub_188B82DFC(v80);
                v61 = *&v80[56];
                v91 = *&v80[72];
                v92[0] = *&v80[88];
                *(v92 + 9) = *&v80[97];
                v87 = *&v80[8];
                v88 = *&v80[24];
                v62 = *&v80[40];
              }

              v90 = v61;
              v89 = v62;
              sub_188B7FF08(&v87, v69);
              sub_188B82BE8(v80);
              v69[4] = v91;
              v70[0] = v92[0];
              *(v70 + 9) = *(v92 + 9);
              v69[0] = v87;
              v69[1] = v88;
              v69[2] = v89;
              v69[3] = v90;
              v92[0] = v70[0];
              *(v92 + 9) = *(v70 + 9);
              v66 = sub_188F53BF8(v51, &v87, 0);
              sub_188B7FF64(v69);
              v67 = *&v52[v53];
              *&v52[v53] = v66;
              v68 = v66;
              sub_188E946D8(v67);

              return;
            }
          }
        }
      }
    }
  }

  if (([v1 v2[272]] & 2) == 0 && ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))() & 1) == 0)
  {
    v63 = *(v1 + v48);
    if (v63)
    {
      v64 = *&v63[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton];
      *&v63[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton] = 0;
      v65 = v63;
      sub_188E946D8(v64);
    }
  }
}

uint64_t sub_188B809F8()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188B80A3C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for _UITabBarVisualProvider_Floating();
  return objc_msgSendSuper2(&v5, *a3);
}

BOOL sub_188B80A84()
{
  v1 = [v0 tabBar];
  v2 = [(UITabBar *)v1 _minimizeBehavior];

  return (v2 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

void sub_188B80AE8(char a1, char a2)
{
  v3 = v2;
  v6 = &qword_1EA937000;
  if (![v2 currentMorphTarget])
  {
    if ((v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8] & 1) == 0)
    {
      v10 = *&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
      v11 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
      swift_beginAccess();
      v12 = *&v3[v11];
      if (v12 >> 62)
      {
        if (v10 < sub_18A4A7F68())
        {
LABEL_6:
          v13 = *&v3[v11];
          if ((v13 & 0xC000000000000001) == 0)
          {
            if (v10 < 0)
            {
              __break(1u);
            }

            else if (v10 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v7 = *(v13 + 8 * v10 + 32);
LABEL_10:
              v14 = v7;
              v8 = 0;
              goto LABEL_44;
            }

            __break(1u);
            goto LABEL_87;
          }

LABEL_84:

          v7 = sub_188E49850(v10, v13);

          goto LABEL_10;
        }
      }

      else if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v16 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
      swift_beginAccess();
      v17 = *&v3[v16];

      v7 = sub_18903AA14(v6, v17);

      if (v7)
      {
        v18 = v7;
        v19 = [v3 tabBar];
        v20 = [v19 selectedItem];

        if (*&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView])
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          v22 = v21;
          if (v20)
          {
            if (v21)
            {
              sub_188A34624(0, &qword_1EA9306B0);
              v23 = sub_18A4A7C88();

              v8 = v23;
LABEL_43:
              v6 = &qword_1EA937000;
              goto LABEL_44;
            }

            goto LABEL_25;
          }

          if (v22)
          {

            goto LABEL_28;
          }
        }

        else
        {
          if (v20)
          {
LABEL_25:

LABEL_28:
            v8 = 0;
            goto LABEL_43;
          }
        }

        v8 = 1;
        goto LABEL_43;
      }
    }

    v10 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v13 = *&v3[v10];
    if (v13 >> 62)
    {
      if (sub_18A4A7F68())
      {
LABEL_21:
        if ((v13 & 0xC000000000000001) != 0)
        {

          v7 = sub_188E49850(0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_84;
          }

          v7 = *(v13 + 32);
        }

LABEL_33:
        v24 = v7;
        v25 = [v3 tabBar];
        v26 = [v25 selectedItem];

        if (*&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView])
        {
          v27 = swift_unknownObjectWeakLoadStrong();
          v28 = v27;
          if (v26)
          {
            if (v27)
            {
              sub_188A34624(0, &qword_1EA9306B0);
              v29 = sub_18A4A7C88();

              v8 = v29;
              goto LABEL_43;
            }

            goto LABEL_38;
          }

          if (v27)
          {

            goto LABEL_41;
          }
        }

        else if (v26)
        {
LABEL_38:

LABEL_41:
          v8 = 0;
          goto LABEL_43;
        }

        v8 = 1;
        goto LABEL_43;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v7 = 0;
    goto LABEL_33;
  }

  v7 = *&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton];
  v8 = v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden];
  v9 = v7;
LABEL_44:
  v30 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView];
  if ([v30 lifted])
  {
    if (v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8] == 1)
    {
      v31 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition];
      [v31 value];
      v33 = v32;
      [v31 presentationValue];
      if (CGFAbs(v33 - v34) < 8.0)
      {
        sub_188BF8BFC(0);
      }
    }
  }

  if (v7)
  {
    v100 = a2;
    v103 = v8;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_53;
    }

    v35 = objc_opt_self();
    v36 = [v35 behaviorWithDampingRatio:0.9 response:0.2];
    if (v36)
    {
      v102 = v36;
      v37 = [v35 behaviorWithDampingRatio:0.9 response:0.2];
      if (v37)
      {
        goto LABEL_60;
      }

      __break(1u);
LABEL_53:
      v38 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureRecognizer];
      if (v38 && [v38 state] == 2)
      {
        v39 = objc_opt_self();
        v40 = [v39 behaviorWithDampingRatio:0.85 response:0.2];
        if (!v40)
        {
LABEL_90:
          __break(1u);
          return;
        }

        v102 = v40;
        v37 = [v39 behaviorWithDampingRatio:0.85 response:0.3];
        if (v37)
        {
          goto LABEL_60;
        }

        __break(1u);
      }

      v41 = objc_opt_self();
      v42 = [v41 behaviorWithDampingRatio:0.85 response:0.4];
      if (v42)
      {
        v102 = v42;
        v37 = [v41 behaviorWithDampingRatio:0.85 response:0.6];
        if (v37)
        {
LABEL_60:
          v101 = v37;
          v43 = a1;
          v44 = swift_allocObject();
          [v7 bounds];
          v45 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView];
          [v7 convertRect:v45 toCoordinateSpace:?];
          *(v44 + 16) = v46;
          *(v44 + 24) = v47;
          *(v44 + 32) = v48;
          *(v44 + 40) = v49;
          v50 = &v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
          if ((v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8] & 1) == 0)
          {
            v51 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureRecognizer];
            if (v51)
            {
              v52 = v48;
              v53 = v49;
              v54 = v46;
              v55 = v47;
              [v51 locationInView_];
              v97 = v56;
              v57 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint];
              v98 = *&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint + 8];
              v99 = v58;
              v112.origin.x = v54;
              v112.origin.y = v55;
              v112.size.width = v52;
              v112.size.height = v53;
              Width = CGRectGetWidth(v112);
              v60 = v57 * Width;
              v61 = (1.0 - v57) * Width;
              [v45 bounds];
              v113.origin.x = UIRectInset(v62, v63, v64, v65, 0.0, v61, 0.0, v60);
              x = v113.origin.x;
              y = v113.origin.y;
              v68 = v113.size.width;
              height = v113.size.height;
              MinX = CGRectGetMinX(v113);
              v114.origin.x = x;
              v114.origin.y = y;
              v114.size.width = v68;
              v114.size.height = height;
              MaxX = CGRectGetMaxX(v114);
              v72 = _UIClamp_0(MinX, v97, MaxX);
              *(v44 + 16) = _UIRectOriginAdjustedForAnchorPoint_0(v72, v99, v57, v98, v52);
            }
          }

          if ((v43 & 1) != 0 && (v73 = objc_opt_self(), [v73 areAnimationsEnabled]) && (objc_msgSend(v30, sel_bounds), !CGRectIsEmpty(v115)))
          {
            if ((v103 & 1) == v3[v6[287]])
            {
              if ((v100 & 1) == 0 && (v50[8] & 1) == 0)
              {
                sub_188B82DFC(aBlock);
                sub_188B82BE8(aBlock);
                sub_188BF8BFC(v111);
              }

              v89 = swift_allocObject();
              *(v89 + 16) = v3;
              *(v89 + 24) = v44;
              v108 = sub_188BF7EA0;
              v109 = v89;
              v104 = MEMORY[0x1E69E9820];
              v105 = 1107296256;
              v106 = sub_188A4A8F0;
              v107 = &block_descriptor_167_0;
              v90 = _Block_copy(&v104);
              v91 = v3;

              v108 = signpost_c2_entryLock_start;
              v109 = 0;
              v104 = MEMORY[0x1E69E9820];
              v105 = 1107296256;
              v106 = sub_188C3DD6C;
              v107 = &block_descriptor_170;
              v92 = _Block_copy(&v104);
              [v73 _animateUsingSpringBehavior_tracking_animations_completion_];
              _Block_release(v92);
              _Block_release(v90);
              v93 = swift_allocObject();
              *(v93 + 16) = v91;
              *(v93 + 24) = v44;
              v108 = sub_188BF7F58;
              v109 = v93;
              v104 = MEMORY[0x1E69E9820];
              v105 = 1107296256;
              v106 = sub_188A4A8F0;
              v107 = &block_descriptor_176_0;
              v94 = _Block_copy(&v104);
              v95 = v91;

              v108 = signpost_c2_entryLock_start;
              v109 = 0;
              v104 = MEMORY[0x1E69E9820];
              v105 = 1107296256;
              v106 = sub_188C3DD6C;
              v107 = &block_descriptor_179_0;
              v96 = _Block_copy(&v104);
              v80 = v101;
              [v73 _animateUsingSpringBehavior_tracking_animations_completion_];

              _Block_release(v96);
              _Block_release(v94);
            }

            else
            {
              v81 = *(v44 + 16);
              v82 = *(v44 + 24);
              v83 = *(v44 + 32);
              v84 = *(v44 + 40);
              v85 = &v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame];
              *v85 = v81;
              v85[1] = v82;
              v85[2] = v83;
              v85[3] = v84;
              v80 = v102;
              if ([v30 lifted])
              {
                v118.origin.x = v81;
                v118.origin.y = v82;
                v118.size.width = v83;
                v118.size.height = v84;
                v119 = CGRectInset(v118, -8.0, -8.0);
                v83 = v119.size.width;
                v84 = v119.size.height;
              }

              [v30 setBounds_];
              swift_beginAccess();
              [v30 setCenter_];
              [*&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition] setValue_];
              v86 = swift_allocObject();
              *(v86 + 16) = v3;
              *(v86 + 24) = v103 & 1;
              aBlock[4] = sub_188F59E7C;
              aBlock[5] = v86;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_188A4A8F0;
              aBlock[3] = &block_descriptor_161_0;
              v87 = _Block_copy(aBlock);
              v88 = v3;

              [v73 animateWithDuration:v87 animations:0.25];

              _Block_release(v87);

              v7 = v101;
            }
          }

          else
          {
            v3[v6[287]] = v103 & 1;
            v74 = 0.0;
            if ((v103 & 1) == 0)
            {
              v74 = 1.0;
              if (v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar])
              {
                v74 = 0.0;
              }
            }

            [v30 setAlpha_];
            v75 = *(v44 + 16);
            v76 = *(v44 + 24);
            v77 = *(v44 + 32);
            v78 = *(v44 + 40);
            v79 = &v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame];
            *v79 = v75;
            v79[1] = v76;
            v79[2] = v77;
            v79[3] = v78;
            if ([v30 lifted])
            {
              v116.origin.x = v75;
              v116.origin.y = v76;
              v116.size.width = v77;
              v116.size.height = v78;
              v117 = CGRectInset(v116, -8.0, -8.0);
              v77 = v117.size.width;
              v78 = v117.size.height;
            }

            [v30 setBounds_];
            swift_beginAccess();
            [v30 setCenter_];
            [*&v3[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition] setValue_];

            v80 = v7;
          }

          return;
        }

        goto LABEL_89;
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }
}

uint64_t sub_188B8183C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_188B81964()
{
  v1 = [v0 searchContainerView];
  if (v1)
  {
    v2 = v1;
    v29 = [objc_msgSend(v0 host)];
    swift_unknownObjectRelease();
    if (v29)
    {
      [v0 keyboardAdjustment];
      v4 = v3;
      [objc_msgSend(v0 host)];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      swift_unknownObjectRelease();
      v13 = 0.0;
      if (v4 > 0.0)
      {
        [v0 keyboardAdjustment];
        v15 = v14;
        [v29 bounds];
        Height = CGRectGetHeight(v31);
        if (v15 > Height)
        {
          v13 = v15;
        }

        else
        {
          v13 = Height;
        }
      }

      [v0 interPlatterSpacingForHostedSearchFieldWithPrefersFullSizeField_];
      v18 = v17;
      [v0 adjustedBoundsForHostedSearchField:v4 > 0.0 prefersFullSizeField:{v6, v8, v10, v12}];
      v33 = CGRectOffset(v32, 0.0, -v13);
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      v22 = v33.size.height;
      v2[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction] = ((*(v0 + OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState) & 0xFE) != 2) & *(v0 + OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState);
      v23 = v2;
      [v23 setNeedsLayout];
      *&v23[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing] = v18;
      [v23 setNeedsLayout];
      if (v4 <= 0.0 && ([v0 isLandscapeOnPhone] & 1) == 0)
      {
        if ([v29 _shouldReverseLayoutDirection])
        {
          v24 = 8;
        }

        else
        {
          v24 = 2;
        }

        x = UIRectInsetEdges(v24, x, y, width, v22, v18);
        y = v25;
        width = v26;
        v22 = v27;
      }

      [v23 setBounds_];
      [v23 setCenter_];

      [v23 layoutIfNeeded];
      v28 = v29;
    }

    else
    {
      v28 = v2;
    }
  }
}

void sub_188B81CBC()
{
  v1 = v0;
  v2 = sub_18A4A6E18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A6E58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A6E88();
  v110 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v97 - v15;
  if ([v1 isUpdatingContentLayout])
  {
    return;
  }

  v17 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
  if (!v17)
  {
    return;
  }

  v18 = [v17 contentView];
  if (!v18)
  {
    return;
  }

  v19 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
  if (v19)
  {
    v106 = v7;
    v107 = v3;
    v108 = v18;
    v20 = v19;
    [objc_msgSend(v1 host)];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v109 = v20;
    [v109 frame];
    v127.origin.x = v29;
    v127.origin.y = v30;
    v127.size.width = v31;
    v127.size.height = v32;
    v119.origin.x = v22;
    v119.origin.y = v24;
    v119.size.width = v26;
    v119.size.height = v28;
    if (CGRectEqualToRect(v119, v127))
    {

      v33 = v109;
LABEL_7:

      v18 = v109;
      goto LABEL_8;
    }

    v34 = objc_opt_self();
    if (![v34 _isInAnimationBlockWithAnimationsEnabled] || UIAccessibilityPrefersCrossFadeTransitions())
    {

      v35 = swift_allocObject();
      *(v35 + 2) = v1;
      v35[3] = v22;
      v35[4] = v24;
      v35[5] = v26;
      v35[6] = v28;
      v36 = v108;
      *(v35 + 7) = v109;
      *(v35 + 8) = v36;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_188F3AB34;
      *(v37 + 24) = v35;
      v115 = sub_188E3FE50;
      v116 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v112 = 1107296256;
      v113 = sub_188A4A968;
      v114 = &block_descriptor_43;
      v38 = _Block_copy(&aBlock);
      v39 = v109;
      v40 = v1;
      v41 = v108;

      [v34 performWithoutAnimation_];

      _Block_release(v38);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

      if ((v41 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    if (!*&v1[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation])
    {

      [v1 updateAccessoryDisplayStyleIfNeeded];
      [v109 bounds];
      v128.origin.x = v47;
      v128.origin.y = v48;
      v128.size.width = v49;
      v128.size.height = v50;
      v122.origin.x = 0.0;
      v122.origin.y = 0.0;
      v122.size.width = v26;
      v122.size.height = v28;
      v51 = CGRectEqualToRect(v122, v128);
      [v109 setBounds_];
      Center = UIRectGetCenter(v22, v24, v26);
      [v109 setCenter_];
      [v109 setDirectionalLayoutMargins_];
      if (!v51)
      {
        [v1 updateAccessoryDisplayStyle];
        [v108 layoutIfNeeded];
      }

      v33 = v108;
      goto LABEL_7;
    }

    [v109 frame];
    v46 = v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] == 3;
    v102 = v34;
    if (v46)
    {
      Height = v45;
      MinY = v43;
      v120.origin.x = v22;
      v120.origin.y = v24;
      v120.size.width = v26;
      v120.size.height = v28;
      MinX = CGRectGetMinX(v120);
      v121.origin.x = v22;
      v121.origin.y = v24;
      v121.size.width = v26;
      v121.size.height = v28;
      Width = CGRectGetWidth(v121);
      v103 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpringDelay;
      v104 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseFinalSpring;
      v53 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_collapseIntermediateSpring;
    }

    else
    {
      Width = v44;
      MinX = v42;
      v123.origin.x = v22;
      v123.origin.y = v24;
      v123.size.width = v26;
      v123.size.height = v28;
      MinY = CGRectGetMinY(v123);
      v124.origin.x = v22;
      v124.origin.y = v24;
      v124.size.width = v26;
      v124.size.height = v28;
      Height = CGRectGetHeight(v124);
      v103 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpringDelay;
      v104 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandFinalSpring;
      v53 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_expandIntermediateSpring;
    }

    v105 = v53;
    v54 = [v1 animationSettings];
    v105 = *&v54[*v105];

    v55 = [v1 animationSettings];
    v104 = *&v55[*v104];

    v56 = [v1 animationSettings];
    v103 = *&v56[*v103];

    [v109 frame];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v125.origin.x = v58;
    v125.origin.y = v60;
    v125.size.width = v62;
    v125.size.height = v64;
    MidY = CGRectGetMidY(v125);
    v126.origin.x = v22;
    v126.origin.y = v24;
    v126.size.width = v26;
    v126.size.height = v28;
    if (vabdd_f64(MidY, CGRectGetMidY(v126)) <= 15.0)
    {
      v86 = v104;
      v85 = v105;
      v87 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.3];
      if (!v87)
      {
        goto LABEL_28;
      }

      v88 = v87;
      v117 = 1;
      v89 = swift_allocObject();
      *(v89 + 16) = v22;
      *(v89 + 24) = v24;
      *(v89 + 32) = v26;
      *(v89 + 40) = v28;
      v90 = v108;
      *(v89 + 48) = v109;
      *(v89 + 56) = v1;
      *(v89 + 64) = v90;
      *(v89 + 72) = 0u;
      *(v89 + 88) = 0u;
      *(v89 + 104) = v117;
      v115 = sub_188F3AB48;
      v116 = v89;
      aBlock = MEMORY[0x1E69E9820];
      v112 = 1107296256;
      v113 = sub_188A4A8F0;
      v114 = &block_descriptor_49_0;
      v91 = _Block_copy(&aBlock);
      v92 = v109;
      v93 = v1;
      v94 = v108;
      v95 = v88;

      [v102 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v91);
    }

    else
    {
      v117 = 0;
      v66 = swift_allocObject();
      *(v66 + 16) = v22;
      *(v66 + 24) = v24;
      *(v66 + 32) = v26;
      *(v66 + 40) = v28;
      v67 = v108;
      *(v66 + 48) = v109;
      *(v66 + 56) = v1;
      *(v66 + 64) = v67;
      v68 = MinY;
      *(v66 + 72) = MinX;
      *(v66 + 80) = v68;
      v69 = Height;
      *(v66 + 88) = Width;
      *(v66 + 96) = v69;
      *(v66 + 104) = v117;
      v115 = sub_188F3AD98;
      v116 = v66;
      aBlock = MEMORY[0x1E69E9820];
      v112 = 1107296256;
      MinY = COERCE_DOUBLE(&v113);
      v113 = sub_188A4A8F0;
      v114 = &block_descriptor_56;
      v70 = _Block_copy(&aBlock);
      v97 = v116;
      MinX = COERCE_DOUBLE(v109);
      v71 = v105;
      Height = COERCE_DOUBLE(v1);
      Width = COERCE_DOUBLE(v108);

      [v102 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v70);

      UIAnimationDragCoefficient();
      sub_188A34624(0, &qword_1ED490540);
      v102 = sub_18A4A7A68();
      sub_18A4A6E68();
      sub_18A4A6EB8();
      v72 = *(v110 + 8);
      v110 += 8;
      v103 = v72;
      (v72)(v12, v10);
      v73 = swift_allocObject();
      v73[2] = v22;
      v73[3] = v24;
      v73[4] = v26;
      v73[5] = v28;
      v74 = MinX;
      v75 = Height;
      v73[6] = MinX;
      v73[7] = v75;
      v76 = Width;
      v77 = v104;
      v73[8] = Width;
      *(v73 + 9) = v77;
      v115 = sub_188F3AB60;
      v116 = v73;
      aBlock = MEMORY[0x1E69E9820];
      v112 = 1107296256;
      v113 = sub_188A4A8F0;
      v114 = &block_descriptor_62_0;
      MinY = COERCE_DOUBLE(_Block_copy(&aBlock));
      v97 = v116;
      v78 = *&v74;
      v79 = *&v75;
      v80 = *&v76;
      v81 = v104;
      v82 = v104;

      sub_18A4A6E38();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_188D7609C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
      sub_188BA3728();
      sub_18A4A7EB8();
      v83 = MinY;
      v84 = v102;
      MEMORY[0x18CFE2990](v16, v9, v5, *&MinY);
      _Block_release(*&v83);

      (*(v107 + 8))(v5, v2);
      (*(v106 + 8))(v9, v6);
      (v103)(v16, v10);
      v85 = v105;
      v86 = v81;
    }

    v96 = [v1 container];
    [v96 bringSubviewToFront_];

    return;
  }

LABEL_8:
}

uint64_t sub_188B82980()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188B829CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_188B82B94()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong updateContainerBounds];
}

uint64_t sub_188B82D20()
{
  v1 = [v0 tabBar];
  _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(v1, 1);

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))();
  sub_188B82DFC(v3);
  return sub_188B82BE8(v3);
}

__n128 sub_188B82DFC@<Q0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration;
  memcpy(__dst, v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration, sizeof(__dst));
  memcpy(v48, v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration, 0x178uLL);
  if (sub_188B831E4(v48) == 1)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(__src);
    memcpy(v32, __src, sizeof(v32));
    signpost_c2_entryLock_start(v4, v5);
    memcpy(v33, v1 + v3, sizeof(v33));
    memcpy(v1 + v3, v32, 0x178uLL);
    sub_188B7E138(__src, v31);
    sub_188A3F5FC(v33, &qword_1EA937AB0);
    v30 = *&__src[368];
    v29 = __src[363];
    v6 = __src[362];
    v7 = __src[361];
    v8 = __src[360];
    v9 = *&__src[352];
    v10 = __src[344];
    v11 = *&__src[336];
    v27 = *&__src[304];
    v28 = *&__src[320];
    v12 = *&__src[264];
    v25 = *&__src[288];
    v26 = *&__src[272];
    v23 = *&__src[232];
    v24 = *&__src[248];
    v42 = *&__src[136];
    v41 = *&__src[120];
    *(v46 + 9) = *&__src[209];
    v46[0] = *&__src[200];
    v45 = *&__src[184];
    v43 = *&__src[152];
    v44 = *&__src[168];
    v36 = *&__src[24];
    v35 = *&__src[8];
    *(v40 + 9) = *&__src[97];
    v40[0] = *&__src[88];
    v39 = *&__src[72];
    v37 = *&__src[40];
    v38 = *&__src[56];
    v13 = __src[0];
  }

  else
  {
    v30 = *&v48[23];
    v29 = BYTE11(v48[22]);
    v6 = BYTE10(v48[22]);
    v7 = BYTE9(v48[22]);
    v8 = BYTE8(v48[22]);
    v9 = *&v48[22];
    v10 = BYTE8(v48[21]);
    v11 = *&v48[21];
    v27 = v48[19];
    v28 = v48[20];
    v12 = *(&v48[16] + 1);
    v25 = v48[18];
    v26 = v48[17];
    v23 = *(&v48[14] + 8);
    v24 = *(&v48[15] + 8);
    v13 = v48[0];
    v36 = *(&v48[1] + 8);
    v35 = *(v48 + 8);
    *(v40 + 9) = *(&v48[6] + 1);
    v40[0] = *(&v48[5] + 8);
    v39 = *(&v48[4] + 8);
    v37 = *(&v48[2] + 8);
    v38 = *(&v48[3] + 8);
    v42 = *(&v48[8] + 8);
    v41 = *(&v48[7] + 8);
    *(v46 + 9) = *(&v48[13] + 1);
    v46[0] = *(&v48[12] + 8);
    v45 = *(&v48[11] + 8);
    v43 = *(&v48[9] + 8);
    v44 = *(&v48[10] + 8);
  }

  *&v32[55] = v38;
  *&v32[71] = v39;
  *&v32[87] = v40[0];
  *&v32[96] = *(v40 + 9);
  *&v32[7] = v35;
  *&v32[23] = v36;
  *&v32[39] = v37;
  *&v31[39] = v43;
  *&v31[23] = v42;
  *&v31[7] = v41;
  *&v31[96] = *(v46 + 9);
  *&v31[87] = v46[0];
  *&v31[71] = v45;
  *&v31[55] = v44;
  sub_188A3F29C(__dst, v33, &qword_1EA937AB0);
  *a1 = v13;
  v14 = *&v32[32];
  *(a1 + 49) = *&v32[48];
  v15 = *&v32[80];
  *(a1 + 65) = *&v32[64];
  *(a1 + 81) = v15;
  *(a1 + 97) = *&v32[96];
  v16 = *&v32[16];
  *(a1 + 1) = *v32;
  *(a1 + 17) = v16;
  *(a1 + 33) = v14;
  v17 = *v31;
  v18 = *&v31[16];
  v19 = *&v31[48];
  *(a1 + 145) = *&v31[32];
  *(a1 + 129) = v18;
  *(a1 + 113) = v17;
  v20 = *&v31[64];
  v21 = *&v31[80];
  *(a1 + 209) = *&v31[96];
  *(a1 + 193) = v21;
  *(a1 + 177) = v20;
  *(a1 + 161) = v19;
  *(a1 + 232) = v23;
  *(a1 + 248) = v24;
  *(a1 + 264) = v12;
  *(a1 + 272) = v26;
  *(a1 + 288) = v25;
  result = v28;
  *(a1 + 304) = v27;
  *(a1 + 320) = v28;
  *(a1 + 336) = v11;
  *(a1 + 344) = v10;
  *(a1 + 352) = v9;
  *(a1 + 360) = v8;
  *(a1 + 361) = v7;
  *(a1 + 362) = v6;
  *(a1 + 363) = v29;
  *(a1 + 368) = v30;
  return result;
}

uint64_t sub_188B831E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_188B831FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

BOOL sub_188B83244()
{
  v1 = [v0 tabBar];
  v2 = [v1 traitCollection];

  v3 = [v2 horizontalSizeClass];
  if (v3 == 2)
  {
    return 1;
  }

  v5 = [v0 tabBar];
  v6 = [v5 traitCollection];

  v7 = [v6 verticalSizeClass];
  if (v7 != 1)
  {
    return 0;
  }

  v8 = [v0 tabBar];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17.origin.x = v10;
  v17.origin.y = v12;
  v17.size.width = v14;
  v17.size.height = v16;
  return CGRectGetWidth(v17) >= 568.0;
}

uint64_t sub_188B83398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188B83448()
{
  v1 = [v0 tabBar];
  v2 = [v1 selectedItem];

  [v0 backgroundTransitionProgress];
  if (v3 <= 0.5)
  {
    goto LABEL_4;
  }

  v4 = [v2 scrollEdgeAppearance];
  if (v4)
  {
LABEL_5:
    v6 = v4;
    goto LABEL_7;
  }

  v5 = [v0 tabBar];
  v6 = [v5 scrollEdgeAppearance];

  if (!v6)
  {
LABEL_4:
    v4 = [v2 standardAppearance];
    if (!v4)
    {
      v7 = [v0 tabBar];
      v6 = [v7 standardAppearance];

      v2 = v7;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v6;
}

uint64_t ___tabElementsContainsTab_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void ___overrideUISplitViewControllerToCompact_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v0 objectForKey:@"UIOverrideUISplitViewControllerInTabToCompact"];

  v1 = v3;
  if (v3 || (_UIKitPreferencesOnce(), v2 = objc_claimAutoreleasedReturnValue(), [v2 objectForKey:@"UIOverrideUISplitViewControllerInTabToCompact"], v4 = objc_claimAutoreleasedReturnValue(), v2, (v1 = v4) != 0))
  {
    v5 = v1;
    _overrideUISplitViewControllerToCompact_override = [v1 BOOLValue];
  }

  else if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _overrideUISplitViewControllerToCompact_override = 0;
  }
}

uint64_t _UIViewControllerUseContentScrollViewAPI()
{
  if (qword_1ED4985A0 != -1)
  {
    dispatch_once(&qword_1ED4985A0, &__block_literal_global_155);
  }

  return _MergedGlobals_154;
}

double UIRectInsetEdges(char a1, double result, double a3, double a4, double a5, double a6)
{
  if ((a1 & 2) != 0)
  {
    return result + a6;
  }

  return result;
}

void sub_188B85244(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    v7 = *(v2 + v6);

    v8 = sub_18903AA14(v5, v7);

    if (v8)
    {
      v9 = &v8[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
      *v9 = 0;
      *(v9 + 1) = 0;

      sub_189202C38();
      v10 = &v8[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *v10 = 0;
      *(v10 + 1) = 0;

      sub_189202C38();

      *&v8[OBJC_IVAR____UITabButton_tabBarButtonDelegate + 8] = 0;
      swift_unknownObjectWeakAssign();
      v5 = v8;
    }
  }

  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    v14 = *(v2 + v13);

    v15 = sub_18903AA14(v12, v14);

    if (v15)
    {
      v16 = &v15[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
      *v16 = 0xD00000000000001CLL;
      *(v16 + 1) = 0x800000018A694920;

      sub_189202C38();
      v17 = &v15[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *v17 = 0xD00000000000001DLL;
      *(v17 + 1) = 0x800000018A694940;

      sub_189202C38();
      *&v15[OBJC_IVAR____UITabButton_tabBarButtonDelegate + 8] = &off_1EFACF208;
      swift_unknownObjectWeakAssign();
      sub_188B7FFB8();

      v12 = v15;
    }
  }
}

void sub_188B854B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_188B8628C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_188B85570(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA3F90();
        v11 = v13;
      }

      sub_188F9C838(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_188B8558C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v4 = sub_18A4A88E8();
  return a2(a1, v4);
}

void sub_188B85684(void *a1, void *a2, char a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = a2;
    if ([v8 systemItem] != 8 || (sub_188B82DFC(v45), sub_188B82BE8(v45), (v45[362] & 1) == 0))
    {
      v10 = v8;
      v14 = a2;
LABEL_10:
      sub_188B85244(v14);
      goto LABEL_11;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v10 = Strong;
  v11 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  swift_beginAccess();
  v12 = *(v4 + v11);

  v13 = sub_18903AA14(v10, v12);

  if (!v13)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v10 = v13;
LABEL_11:

LABEL_12:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
  }

  else
  {
    v16 = [v4 tabBar];
    v17 = [v16 items];

    if (v17)
    {
      sub_188A34624(0, &qword_1EA9306B0);
      v18 = sub_18A4A7548();

      if (v18 >> 62)
      {
        goto LABEL_31;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
      {
        v20 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = sub_188E49884(v20, v18);
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          sub_188B82DFC(v46);
          sub_188B82BE8(v46);
          if ((v46[362] & 1) == 0 || [v22 systemItem] != 8)
          {

            goto LABEL_33;
          }

          ++v20;
          if (v23 == i)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        ;
      }

LABEL_32:

      v22 = 0;
    }

    else
    {
      v22 = 0;
    }

LABEL_33:
    sub_188B85244(v22);
  }

  sub_188B80AE8(a3 & 1, 0);
  v24 = [v4 tabBar];
  v25 = [v24 standardAppearance];

  v26 = [a1 standardAppearance];
  if (!v26)
  {
    v26 = v25;
  }

  v27 = [a2 standardAppearance];
  if (!v27)
  {
    v27 = v25;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x150))())
  {
    sub_188B82DFC(v47);
    sub_188B82BE8(v47);
    v28 = &v49;
  }

  else
  {
    sub_188B82DFC(v47);
    sub_188B82BE8(v47);
    v28 = &v48;
  }

  v29 = *v28;
  v30 = [v26 _dataForItemStyle_];
  v31 = [v27 _dataForItemStyle_];
  sub_188A34624(0, qword_1EA930628);
  if (sub_18A4A7C88())
  {
    goto LABEL_52;
  }

  v43 = v30;
  v44 = v27;
  v32 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v33 = *(v4 + v32);
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_44;
    }

LABEL_51:
    v40 = [v4 tabBar];
    [v40 setNeedsLayout];

    v30 = v31;
    v31 = v40;
    v27 = v44;
LABEL_52:

    return;
  }

  v34 = sub_18A4A7F68();
  if (!v34)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v34 >= 1)
  {
    v41 = v26;
    v42 = v25;

    v35 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = sub_188E49850(v35, v33);
      }

      else
      {
        v36 = *(v33 + 8 * v35 + 32);
      }

      v37 = v36;
      ++v35;
      v38 = *&v36[OBJC_IVAR____UITabButton_appearanceData];
      *&v36[OBJC_IVAR____UITabButton_appearanceData] = v31;
      v39 = v31;
      sub_189202A9C();
    }

    while (v34 != v35);

    v26 = v41;
    goto LABEL_51;
  }

  __break(1u);
}

void sub_188B85C18()
{
  v1 = v0;
  v2 = [v0 _currentSearchFieldConfiguration];
  if (!v2)
  {
    [v0 setIsHostingSearchTextField_];
    goto LABEL_29;
  }

  v3 = v2;
  v4 = [v2 searchBarView];
  v5 = [v0 searchContainerView];
  v6 = v5;
  if (!v5)
  {
    v7 = [objc_allocWithZone(type metadata accessor for _UITabHostedSearchContainer()) init];
    v8 = *&v7[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelButton];
    v6 = v7;
    [v8 addTarget:v1 action:sel_dismissSearchIfNeeded forControlEvents:0x2000];
  }

  v9 = v5;
  v10 = [v3 cancelAction];
  v11 = v10;
  v12 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelAction;
  v13 = *&v6[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelAction];
  if (v13)
  {
    if (v10)
    {
      sub_188A34624(0, &qword_1EA930340);
      v14 = v13;
      v15 = v11;
      v16 = sub_18A4A7C88();

      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = v13;
    }

    [*&v6[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelButton] removeAction:v13 forControlEvents:0x2000];
LABEL_11:
  }

  v18 = *&v6[v12];
  *&v6[v12] = v11;
  v19 = v11;

  v20 = *&v6[v12];
  if (!v20)
  {

    v20 = v13;
    goto LABEL_19;
  }

  if (!v13)
  {
    v23 = v20;
    goto LABEL_18;
  }

  sub_188A34624(0, &qword_1EA930340);
  v13 = v13;
  v21 = v20;
  v22 = sub_18A4A7C88();

  if ((v22 & 1) == 0)
  {
LABEL_18:
    [*&v6[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelButton] addAction:v20 forControlEvents:0x2000];

    goto LABEL_19;
  }

  v20 = v21;
LABEL_19:

  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = swift_unknownObjectWeakLoadStrong();
  v26 = v4;
  if (!v25 || (v25, v25 != v26))
  {
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v27 removeFromSuperview];
    }
  }

  swift_unknownObjectWeakAssign();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    if (v29 != Strong)
    {
      v31 = *&v6[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
      [v31 bounds];
      [v30 setFrame_];
      [v30 setAutoresizingMask_];
      [v31 addSubview_];
    }

    v32 = Strong;
  }

  else
  {
    v32 = v26;
    v30 = Strong;
  }

  [v1 setSearchContainerView_];
  v33 = v3;
  sub_188F36DD4(v3);
  v34 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
  *&v1[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration] = v3;
  v35 = v33;

  sub_188F36F38();
  [v1 setIsHostingSearchTextField_];

LABEL_29:
  v36 = [v1 container];
  [v36 setNeedsLayout];
}

unint64_t sub_188B86168(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1F0);
  v3 = sub_18A4A8488();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_188B8558C(v4, sub_188A41228);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_188B8558C(v4, sub_188A41228);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_188B8628C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_188B85570(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_188FA3F90();
      v9 = v17;
      goto LABEL_8;
    }

    sub_188B863AC(v14, a3 & 1);
    v9 = sub_188B85570(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for _UITabBarItemState(0);
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_188A415E8(v9, a2, a1, v19);
  }
}

uint64_t sub_188B863AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1F0);
  v31 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      result = sub_18A4A88E8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_188B86638(void *a1, void *a2)
{
  if (!*(v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItem))
  {
    if (a2)
    {
      v5 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
      swift_beginAccess();
      v6 = *(v2 + v5);

      v7 = a2;
      v8 = sub_18903AA14(v7, v6);

      if (v8)
      {
        [v8 setSelected_];
      }
    }

    if (a1)
    {
      v9 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
      swift_beginAccess();
      v10 = *(v2 + v9);

      v11 = a1;
      v12 = sub_18903AA14(v11, v10);

      if (v12)
      {
        [v12 setSelected_];
      }
    }
  }

  sub_188B85684(a2, a1, 1);
}

void sub_188B86768()
{
  v4.super_class = _UITabBarControllerVisualStyle_Phone;
  objc_msgSendSuper2(&v4, sel_selectedViewControllerDidChange);
  v0 = sub_188B7E400();
  v1 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  if (v2)
  {
    [v2 updateHostedElementsAnimated_];
    v3 = *&v0[v1];
    if (v3)
    {
      [v3 updateLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_188B868D4()
{
  v1 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 window];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [v2 isHidden];

  if ((v5 & 1) != 0 || (v6 = [v4 traitCollection], v7 = objc_msgSend(v6, sel_userInterfaceIdiom), v6, v7))
  {

    return 0;
  }

  v9 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = [v9 selectedTab];

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 _customSearchFieldConfiguration];

        if (v12)
        {

          return v12;
        }
      }

      else
      {
      }
    }
  }

  v13 = [v0 _searchControllerForHostedSearchField];
  v14 = [v13 _borrowedSearchTabHostedFieldConfiguration];

  return v14;
}

void sub_188B86AC4(char a1)
{
  v2 = OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField;
  if (v1[OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField] == (a1 & 1))
  {
    return;
  }

  [v1 _updateNotificationObserversForSearch];
  if (v1[v2] == 1)
  {
    v3 = [objc_msgSend(v1 host)];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [(UITabBar *)v3 _hostedElements];
      [(UITabBar *)v3 _setHostedElements:?];

      v16 = 0;
      v5 = [objc_msgSend(v1 host)];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = [v5 selectedViewController];

        if (v6)
        {
          v7 = [v6 _hasAppeared];

          v16 = v7 ^ 1;
        }
      }

      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = &v16;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_188F3AD60;
      *(v10 + 24) = v9;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_166_0;
      v11 = _Block_copy(aBlock);
      v12 = v1;

      [v8 _performWithAnimation_];
      _Block_release(v11);

      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  [v1 setKeyboardAdjustment_];
  v13 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = [(UITabBar *)v13 _hostedElements];
  [(UITabBar *)v13 _setHostedElements:?];

  sub_188F37598(2);
}

uint64_t sub_188B86DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188B86E18(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
  v5 = v4;
  v6 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  v7 = [v6 bottomAccessory];

  v54 = v7;
  sub_188BF923C(v7);
  if (v4)
  {
    v8 = [v5 contentView];
    v9 = v54;
    if (!v54)
    {
      if (v8)
      {
        v50 = v5;
        v10 = 1;
LABEL_17:
        v12 = v8;
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = v54;
    if (!v54)
    {
      goto LABEL_13;
    }

    v8 = 0;
  }

  v11 = [v9 contentView];
  v12 = v11;
  if (!v8)
  {
    if (v11)
    {
      v50 = v5;
      v10 = 0;
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!v11)
  {
    v50 = v5;
    v10 = 0;
    goto LABEL_17;
  }

  sub_188A34624(0, &qword_1ED48F680);
  v13 = sub_18A4A7C88();

  if (v13)
  {
LABEL_13:

    return;
  }

  v50 = v5;
  v10 = 0;
LABEL_19:
  v14 = [objc_msgSend(v2 host)];
  swift_unknownObjectRelease();
  v48 = a1;
  if (v14)
  {
    v15 = [v14 transitionCoordinator];
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  v17 = *&v2[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
  v53 = v16;
  *(v16 + 16) = v17;
  v18 = v16 + 16;
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = 0;
  v21 = (v19 + 16);
  if (v10)
  {
    *v21 = 1;
    v22 = v17;
    v51 = 0;
    goto LABEL_26;
  }

  v52 = v19;
  v47 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v54;
  *(v23 + 32) = v2;
  *(v23 + 40) = v21;
  *(v23 + 48) = v48 & 1;
  *(v23 + 56) = v15;
  v24 = swift_allocObject();
  v51 = sub_188F3AC7C;
  *(v24 + 16) = sub_188F3AC7C;
  *(v24 + 24) = v23;
  v61 = sub_188E3FE50;
  v62 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_188A4A968;
  v60 = &block_descriptor_127_0;
  v25 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v26 = v54;
  v27 = v17;
  v28 = v2;

  [v47 performWithoutAnimation_];

  _Block_release(v25);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    v20 = v52;
LABEL_26:
    v29 = swift_allocObject();
    *(v29 + 16) = v7;
    *(v29 + 24) = v53;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v20;
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v15)
    {
      v55 = v54;

      v33 = [v2 container];
      v34 = swift_allocObject();
      v34[2] = sub_188F3ABF4;
      v34[3] = v29;
      v34[4] = sub_188F3ABFC;
      v34[5] = v31;
      v61 = sub_188F3AC34;
      v62 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = sub_188C577F0;
      v60 = &block_descriptor_111;
      v35 = _Block_copy(&aBlock);

      v36 = swift_allocObject();
      *(v36 + 16) = sub_188F3AC04;
      *(v36 + 24) = v32;
      v61 = sub_188A4A9DC;
      v62 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = sub_188C577F0;
      v60 = &block_descriptor_117_0;
      v37 = _Block_copy(&aBlock);

      [v15 animateAlongsideTransitionInView:v33 animation:v35 completion:v37];

      _Block_release(v37);
      _Block_release(v35);

      swift_unknownObjectRelease();

LABEL_42:
      sub_188A55B8C(v51);
      return;
    }

    if ((v48 & 1) == 0)
    {
      v44 = v54;

      sub_188F39268(v7, v53);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v46 = Strong;
        swift_beginAccess();
        if (*v21)
        {
          [v46 updateContentLayoutWithAnimated_];
        }
      }

      else
      {
      }

      sub_188F393C8();

      goto LABEL_42;
    }

    v49 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_188F3ABF4;
    *(v38 + 24) = v29;
    v61 = sub_188F3AC0C;
    v62 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_188A4A8F0;
    v60 = &block_descriptor_99_3;
    v39 = _Block_copy(&aBlock);
    v56 = v54;

    v40 = swift_allocObject();
    *(v40 + 16) = sub_188F3AC04;
    *(v40 + 24) = v32;
    v61 = sub_188A4A9DC;
    v62 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_188ABD010;
    v60 = &block_descriptor_105;
    v41 = _Block_copy(&aBlock);

    [v49 animateWithDuration:6 delay:v39 options:v41 animations:0.3 completion:0.0];
    _Block_release(v41);
    _Block_release(v39);
    swift_beginAccess();
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v42;
      swift_beginAccess();
      if (*v21)
      {
        [v43 updateContentLayoutWithAnimated_];

LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
    }

    goto LABEL_41;
  }

  __break(1u);
}

uint64_t sub_188B87844()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B8788C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B878CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B8790C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188B87944()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188B87984()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void _UICoreMaterialUpdateBlurEffectDescriptor(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 reducedTransperancy];
  v8 = _convertStyleToRecipe(a1, v6);
  v9 = [v6 traitCollection];
  v10 = _lookupBlurEffectDescription(v8, v7, [v9 userInterfaceLevel]);

  _UICoreMaterialUpdateBlurEffectDescriptorInternal(v10, v6, v5);
}

id _lookupBlurEffectDescription(void *a1, uint64_t a2, uint64_t a3)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v7 = v5;
  v8 = v7;
  v9 = v7;
  if (a3)
  {
    v9 = [v7 stringByAppendingString:@"-e"];
  }

  if (a2)
  {
    v10 = [v9 stringByAppendingString:@"-rt"];

    v9 = v10;
  }

  v11 = [_lookupBlurEffectDescription_blurDescriptionCache objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = *MEMORY[0x1E6997F78];
    v23[0] = MEMORY[0x1E695E118];
    v14 = *MEMORY[0x1E6997F80];
    v22[0] = v13;
    v22[1] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v16 = v15;
    v22[2] = @"MTDictionaryRepresentationOptionsUserInterfaceLevelKey";
    v17 = &unk_1EFE31A80;
    if (!a3)
    {
      v17 = &unk_1EFE31A68;
    }

    v23[1] = v15;
    v23[2] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v12 = MTMaterialCreateDictionaryRepresentation();

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  if (_lookupBlurEffectDescription_blurDescriptionCache)
  {
    [_lookupBlurEffectDescription_blurDescriptionCache setObject:v12 forKeyedSubscript:v9];
  }

  else
  {
    v19 = [MEMORY[0x1E695DF90] dictionaryWithObject:v12 forKey:v9];
    v20 = _lookupBlurEffectDescription_blurDescriptionCache;
    _lookupBlurEffectDescription_blurDescriptionCache = v19;
  }

LABEL_15:

LABEL_16:

  return v12;
}

void _UICoreMaterialUpdateBlurEffectDescriptorInternal(void *a1, void *a2, void *a3)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v58 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"filters"];
  v51 = v5;
  v8 = [v5 objectForKeyedSubscript:@"scale"];
  [v8 doubleValue];
  v10 = v9;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v70;
    v68 = *MEMORY[0x1E6979C70];
    v67 = *MEMORY[0x1E6979C68];
    v62 = *MEMORY[0x1E6979880];
    v60 = *MEMORY[0x1E6979890];
    v61 = *MEMORY[0x1E6979848];
    if (v10 <= 0.0)
    {
      v14 = 0.03125;
    }

    else
    {
      v14 = v10;
    }

    v59 = *MEMORY[0x1E6979810];
    v57 = *MEMORY[0x1E6979928];
    v55 = *MEMORY[0x1E6979BA8];
    v15 = *MEMORY[0x1E6979990];
    v63 = *v70;
    v64 = v6;
    do
    {
      v16 = 0;
      v65 = v12;
      do
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v69 + 1) + 8 * v16);
        v18 = [v17 objectForKeyedSubscript:@"type"];
        if ([v18 isEqualToString:v68])
        {
          v19 = v6;
          v20 = v17;
          v21 = [v20 objectForKeyedSubscript:v15];
          [v21 doubleValue];
          if (v22 <= 0.0)
          {
            goto LABEL_25;
          }

          v23 = _configDictionaryByRemovingKey(v20, v15);
          v77[0] = v15;
          *buf = v21;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v77 count:1];
          v75 = v15;
          v76 = &unk_1EFE2E748;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v26 = [[_UIVisualEffectFilterEntry alloc] initWithFilterType:v68 configurationValues:v23 requestedValues:v24 identityValues:v25];
          [v19 addFilterEntry:v26];

          v6 = v64;
          v13 = v63;
LABEL_24:

          v12 = v65;
          goto LABEL_25;
        }

        if ([v18 isEqualToString:v67])
        {
          v19 = v6;
          v20 = v17;
          v21 = [v20 objectForKeyedSubscript:v15];
          [v21 doubleValue];
          if (v27 > 0.0)
          {
            v23 = _configDictionaryByRemovingKey(v20, v15);
            v77[0] = v15;
            *buf = v21;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v77 count:1];
            v75 = v15;
            v76 = &unk_1EFE2E748;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            v30 = [_UIVisualEffectFilterEntry alloc];
            v31 = v67;
            goto LABEL_23;
          }

          goto LABEL_25;
        }

        if ([v18 isEqualToString:v62])
        {
          _addColorMatrix(v6, v17, 0);
          goto LABEL_26;
        }

        if ([v18 isEqualToString:v61])
        {
          v19 = v6;
          v20 = v17;
          v21 = [v20 objectForKeyedSubscript:v15];
          [v21 doubleValue];
          if (v32 != 0.0)
          {
            v23 = _configDictionaryByRemovingKey(v20, v15);
            v77[0] = v15;
            *buf = v21;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v77 count:1];
            v75 = v15;
            v76 = &unk_1EFE2E748;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            v30 = [_UIVisualEffectFilterEntry alloc];
            v31 = v61;
            goto LABEL_23;
          }

LABEL_25:

          goto LABEL_26;
        }

        if ([v18 isEqualToString:v60])
        {
          v19 = v6;
          v20 = v17;
          v21 = [v20 objectForKeyedSubscript:v15];
          [v21 doubleValue];
          if (v33 == 1.0)
          {
            goto LABEL_25;
          }

          v23 = _configDictionaryByRemovingKey(v20, v15);
          v77[0] = v15;
          *buf = v21;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v77 count:1];
          v75 = v15;
          v76 = &unk_1EFE2E758;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v30 = [_UIVisualEffectFilterEntry alloc];
          v31 = v60;
LABEL_23:
          v34 = [(_UIVisualEffectFilterEntry *)v30 initWithFilterType:v31 configurationValues:v23 requestedValues:v28 identityValues:v29];
          [v19 addFilterEntry:v34];

          v13 = v63;
          v6 = v64;

          goto LABEL_24;
        }

        if ([v18 isEqualToString:v59])
        {
          if (![v58 allowsBlurring])
          {
            goto LABEL_26;
          }

          v35 = v6;
          v36 = [_UIVisualEffectFilterEntry alloc];
          v37 = [(_UIVisualEffectFilterEntry *)v36 initWithFilterType:v59 configurationValues:MEMORY[0x1E695E0F8] requestedValues:MEMORY[0x1E695E0F8] identityValues:MEMORY[0x1E695E0F8]];
          [v37 setRequestedScaleHint:v14];
          [v35 addFilterEntry:v37];
          [v35 setDisableInPlaceFiltering:1];

          goto LABEL_31;
        }

        if ([v18 isEqualToString:v57])
        {
          if ([v58 allowsBlurring])
          {
            v56 = v6;
            v38 = v17;
            v39 = v58;
            v40 = [v38 objectForKeyedSubscript:v55];
            [v40 doubleValue];
            if (v41 > 0.0)
            {
              v42 = v41;
              v54 = v38;
              v43 = _configDictionaryByRemovingKey(v38, v55);
              v53 = v39;
              [v39 _applyBlurQualityToConfigurationDictionary:v43];
              v77[0] = v55;
              v52 = v40;
              *buf = v40;
              v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v77 count:1];
              v75 = v55;
              v76 = &unk_1EFE2E748;
              v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
              v46 = [[_UIVisualEffectFilterEntry alloc] initWithFilterType:v57 configurationValues:v43 requestedValues:v44 identityValues:v45];
              v47 = v46;
              v48 = v10;
              if (v10 <= 0.0)
              {
                v48 = 1.0;
                if (v42 > 4.0)
                {
                  v48 = 0.5;
                  if (v42 > 16.0)
                  {
                    if (v42 <= 32.0)
                    {
                      v48 = 0.25;
                    }

                    else
                    {
                      v48 = 0.125;
                    }
                  }
                }
              }

              [(_UIVisualEffectFilterEntry *)v46 setRequestedScaleHint:v48];
              [(_UIVisualEffectFilterEntry *)v47 setIdentityScaleHint:1.0];
              [(_UIVisualEffectFilterEntry *)v47 setUseRelaxedDiffingRule:1];
              [v56 addFilterEntry:v47];
              [v56 setDisableInPlaceFiltering:1];

              v12 = v65;
              v39 = v53;
              v38 = v54;
              v40 = v52;
            }
          }
        }

        else
        {
          if (os_variant_has_internal_diagnostics())
          {
            v37 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = v18;
              _os_log_fault_impl(&dword_188A29000, v37, OS_LOG_TYPE_FAULT, "CoreMaterial description for blur effect returned unknown filterType %@", buf, 0xCu);
            }

LABEL_31:

            goto LABEL_26;
          }

          v49 = *(__UILogGetCategoryCachedImpl("Assert", &_UICoreMaterialUpdateBlurEffectDescriptorInternal___s_category) + 8);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "CoreMaterial description for blur effect returned unknown filterType %@", buf, 0xCu);
          }
        }

LABEL_26:

        ++v16;
      }

      while (v12 != v16);
      v50 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      v12 = v50;
    }

    while (v50);
  }
}

uint64_t _UIAppearanceInternalContainerClassForContainer(void *a1)
{
  Class = object_getClass(a1);
  isMetaClass = class_isMetaClass(Class);
  v4 = MEMORY[0x1E695D940];
  if (!isMetaClass)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** %@ is not a Class", a1}];
  }

  if (([a1 conformsToProtocol:&unk_1EFE41B40] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*v4 format:{@"*** %@ does not conform to the UIAppearanceContainer protocol", NSStringFromClass(a1)}];
  }

  if (![a1 isSubclassOfClass:objc_opt_class()])
  {
    return a1;
  }

  return objc_opt_class();
}

void *_UIAppearanceTagObjectForSelector(void *result, const char *a2, void *a3)
{
  if ((__isObjectTaggingEnabled & 1) == 0)
  {
    v6 = result;
    AssociatedObject = objc_getAssociatedObject(result, &_UIAppearanceCustomizedSelectorsAssociationKey);
    if (!AssociatedObject)
    {
      AssociatedObject = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objc_setAssociatedObject(v6, &_UIAppearanceCustomizedSelectorsAssociationKey, AssociatedObject, 1);
    }

    v8 = TagForSelectorWithAxes(a2, a3);

    return [AssociatedObject addObject:v8];
  }

  return result;
}

void __getSBSApplicationShortcutServiceClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSApplicationShortcutService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSApplicationShortcutServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:497 description:{@"Unable to find class %s", "SBSApplicationShortcutService"}];

    __break(1u);
  }
}

id _UITableConstantsForTraitCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 userInterfaceIdiom];
  if (v2 == -1)
  {
    v3 = +[UIDevice currentDevice];
    v2 = [v3 userInterfaceIdiom];
  }

  if (v2 > 2)
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v4 = UITableConstants_CarPlay;
      }

      else
      {
        v4 = UITableConstants_Watch;
      }

      goto LABEL_17;
    }

    if (v2 != 5)
    {
      if (v2 == 8)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_14:
    v4 = UITableConstants_Pad;
    goto LABEL_17;
  }

  switch(v2)
  {
    case 0:
      v4 = UITableConstants_Phone;
      goto LABEL_17;
    case 1:
      goto LABEL_14;
    case 2:
LABEL_13:
      v4 = UITableConstants_TV;
LABEL_17:
      v7 = [(__objc2_class *)v4 sharedConstants];
      goto LABEL_18;
  }

LABEL_10:
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<UITableConstants> _UITableConstantsForTraitCollection(UITraitCollection *__strong)"];
  [v5 handleFailureInFunction:v6 file:@"UITableConstants.m" lineNumber:70 description:{@"UIUserInterfaceIdiom (%ld) is not supported by _UITableConstants", v2}];

  v7 = 0;
LABEL_18:
  if (v1)
  {
    _UIRecordTraitUsage(v1, 0x13uLL);
    if (v1[16] == 2)
    {
      v8 = [v7 sidebarVariant];

      v7 = v8;
    }
  }

  v9 = [v7 variantForActive:{objc_msgSend(v1, "activeAppearance") != 0}];

  return v9;
}

id UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_18A4A7258();

  if (a9)
  {
    v15 = sub_18A4A7258();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  aBlock[4] = a12;
  aBlock[5] = a13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BFF280;
  aBlock[3] = &block_descriptor_158;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithTitle:v14 image:a5 identifier:a7 discoverabilityTitle:v15 attributes:a10 state:a11 handler:v17];
  _Block_release(v17);

  v19 = v18;
  if (a4)
  {
    v20 = sub_18A4A7258();
  }

  else
  {
    v20 = 0;
  }

  [v18 setSubtitle_];

  [v18 setSelectedImage_];

  return v18;
}

id _UIKitPrivateCoreGlyphsManager()
{
  os_unfair_lock_lock(&__UIKitCoreGlyphsManagersLock);
  v0 = __UIKitPrivateCoreGlyphsManager;
  if (!__UIKitPrivateCoreGlyphsManager)
  {
    v1 = [MEMORY[0x1E69C8708] private];
    if (v1)
    {
      v2 = [_UIAssetManager alloc];
      v3 = +[UIDevice currentDevice];
      v4 = -[_UIAssetManager _initWithName:inBundle:idiom:type:](v2, "_initWithName:inBundle:idiom:type:", @"CoreGlyphsPrivate", v1, [v3 userInterfaceIdiom], 12);
      v5 = __UIKitPrivateCoreGlyphsManager;
      __UIKitPrivateCoreGlyphsManager = v4;
    }

    if (!__UIKitPrivateCoreGlyphsManager && _UIKitPrivateCoreGlyphsManager_once != -1)
    {
      dispatch_once(&_UIKitPrivateCoreGlyphsManager_once, &__block_literal_global_39_3);
    }

    v0 = __UIKitPrivateCoreGlyphsManager;
  }

  v6 = v0;
  os_unfair_lock_unlock(&__UIKitCoreGlyphsManagersLock);

  return v6;
}

id _convertStyleToRecipe(uint64_t a1, void *a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (a1 <= 1099)
  {
    switch(a1)
    {
      case 6:
        goto LABEL_11;
      case 7:
        goto LABEL_31;
      case 8:
        goto LABEL_28;
      case 9:
        goto LABEL_20;
      case 10:
        goto LABEL_30;
      case 11:
        goto LABEL_7;
      case 12:
        goto LABEL_39;
      case 13:
        goto LABEL_38;
      case 14:
        goto LABEL_22;
      case 15:
        goto LABEL_29;
      case 16:
        goto LABEL_14;
      case 17:
        goto LABEL_26;
      case 18:
        goto LABEL_27;
      case 19:
        goto LABEL_25;
      case 20:
        goto LABEL_18;
      default:
        goto LABEL_40;
    }
  }

  if (a1 > 1203)
  {
    if (a1 <= 1207)
    {
      if (a1 > 1205)
      {
        if (a1 == 1206)
        {
LABEL_39:
          v5 = MEMORY[0x1E6997EF0];
        }

        else
        {
LABEL_22:
          v5 = MEMORY[0x1E6997EE0];
        }
      }

      else if (a1 == 1204)
      {
LABEL_38:
        v5 = MEMORY[0x1E6997ED0];
      }

      else
      {
LABEL_7:
        v5 = MEMORY[0x1E6997F00];
      }

      goto LABEL_34;
    }

    if (a1 <= 1209)
    {
      if (a1 == 1208)
      {
LABEL_27:
        v5 = MEMORY[0x1E6997EC8];
      }

      else
      {
LABEL_14:
        v5 = MEMORY[0x1E6997EF8];
      }

      goto LABEL_34;
    }

    if (a1 == 1210)
    {
LABEL_26:
      v5 = MEMORY[0x1E6997EE8];
      goto LABEL_34;
    }

    if (a1 == 1211)
    {
LABEL_25:
      v5 = MEMORY[0x1E6997ED8];
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (a1 > 1199)
  {
    if (a1 > 1201)
    {
      if (a1 == 1202)
      {
LABEL_31:
        v5 = MEMORY[0x1E6997EF0];
        v6 = MEMORY[0x1E6997EE8];
      }

      else
      {
LABEL_20:
        v5 = MEMORY[0x1E6997EE0];
        v6 = MEMORY[0x1E6997ED8];
      }
    }

    else if (a1 == 1200)
    {
LABEL_28:
      v5 = MEMORY[0x1E6997ED0];
      v6 = MEMORY[0x1E6997EC8];
    }

    else
    {
LABEL_11:
      v5 = MEMORY[0x1E6997F00];
      v6 = MEMORY[0x1E6997EF8];
    }

    goto LABEL_32;
  }

  switch(a1)
  {
    case 1100:
LABEL_30:
      v5 = MEMORY[0x1E6997EC0];
      v6 = MEMORY[0x1E6997EB8];
LABEL_32:
      if (v4 == 2)
      {
        v5 = v6;
      }

      goto LABEL_34;
    case 1101:
LABEL_29:
      v5 = MEMORY[0x1E6997EC0];
      goto LABEL_34;
    case 1102:
LABEL_18:
      v5 = MEMORY[0x1E6997EB8];
LABEL_34:
      v7 = *v5;
      goto LABEL_35;
  }

LABEL_40:
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MTCoreMaterialRecipe _convertStyleToRecipe(UIBlurEffectStyle, _UIVisualEffectEnvironment *__strong)"}];
  [v9 handleFailureInFunction:v10 file:@"_UICoreMaterialSupport.m" lineNumber:174 description:{@"Invalid style (%li)", a1}];

  v7 = 0;
LABEL_35:

  return v7;
}

id _configDictionaryByRemovingKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  [v4 removeObjectForKey:@"type"];
  [v4 removeObjectForKey:v3];

  return v4;
}

NSString *TagForSelectorWithAxes(const char *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  if ([(NSString *)v3 characterAtIndex:0]== 95)
  {
    v3 = [(NSString *)v3 substringFromIndex:1];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v3 = [(NSString *)v3 stringByAppendingFormat:@"%@, ", *(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

uint64_t _UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(void *a1, void *a2, double *a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_1ED49BF90 != -1)
  {
    dispatch_once(&qword_1ED49BF90, &__block_literal_global_93);
  }

  if (byte_1ED49BF63 != 1)
  {
    goto LABEL_7;
  }

  v7 = [v6 superview];
  if (!v7 || ([v6 isHidden] & 1) != 0)
  {

    goto LABEL_7;
  }

  if (v5)
  {
    [v5 contentSize];
    v11 = v10;
    v13 = v12;
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);

    if (v11 == v14 && v13 == v15)
    {
      goto LABEL_7;
    }

    [v5 _contentBottomForScrollObservation];
    v18 = v17;
    v19 = [v6 superview];
    [v19 convertPoint:v5 fromView:{0.0, v18}];
    v21 = v20;
    [v6 frame];
    v22 = fmax(fmin(v21 - CGRectGetMinY(v24), 4.0), 0.0);

    v23 = v22 * -0.25 + 1.0;
  }

  else
  {

    v23 = 1.0;
  }

  if ([v5 _isTransientScrollView] && v23 > 0.0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (a3)
  {
    *a3 = v23;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

void sub_188B89F00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_188B89FBC()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  v5 = *(v0 + v3);
  if (*(v5 + 16))
  {
    v6 = *(v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView);
    if (v6)
    {
      v7 = (v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping);
      swift_beginAccess();
      v8 = *v7;
      v9 = v7[1];
      v10 = v6;

      sub_18905EA80(v18, v5, v8, v9, 1);
      v12 = v11;

      v19 = MEMORY[0x1E69E7CC8];
      sub_188B60AAC(v10, &v19);
      if (v1)
      {

        return sub_188B6D288(v18);
      }

      v13 = (v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride);
      if (*(v2 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride + 8) == 1)
      {
        v14 = *(v2 + v3);
        if (!*(v14 + 16))
        {
          v17 = 0.0;
          goto LABEL_9;
        }

        v15 = *(type metadata accessor for GlassPair(0) - 8);
        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v13 = (v14 + *(type metadata accessor for _Glass(0) + 48) + v16);
      }

      v17 = *v13;
LABEL_9:
      sub_1890617B4(v10, v17);
      sub_188B66CB0(v12);

      return sub_188B6D288(v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_188B8A198()
{
  swift_getWitnessTable();

  return UIView.Material<>._isEqualToMaterial(_:)();
}

double UIRectRoundToViewScale(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 _currentScreenScale];

  return UIRectRoundToScale(a2, a3, a4, a5, v9);
}

double UISizeRoundToViewScale(void *a1, double a2, double a3)
{
  [a1 _currentScreenScale];

  return UISizeRoundToScale(a2, a3, v5);
}

void sub_188B8A3D8(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction;
  if (a1 && !*&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction])
  {
    v4 = type metadata accessor for _UIScrollAwayInteraction();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_view] = 0;
    swift_unknownObjectWeakInit();
    *&v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_activationDistanceThreshold] = 0;
    *&v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_activeDistance] = 0x4050000000000000;
    v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction] = 1;
    *&v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress] = 0;
    v6 = &v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state];
    *v6 = 0;
    v6[8] = 2;
    swift_unknownObjectWeakInit();
    v7 = &v5[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_lastContentOffset];
    *v7 = 0;
    v7[1] = 0;
    swift_unknownObjectWeakAssign();
    v19.receiver = v5;
    v19.super_class = v4;
    v8 = objc_msgSendSuper2(&v19, sel_init);
    v9 = [v1 tabBar];
    v10 = [(UITabBar *)v9 _minimizeBehavior];

    v11 = v10 != 3;
    v12 = v8[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction];
    v8[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction] = v11;
    if (v12 != v11)
    {
      v13 = &v8[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state];
      *v13 = 0;
      v13[8] = 2;
      sub_188F9133C(floor(*&v8[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress]));
      sub_188F9133C(0.0);
    }

    v14 = [v1 tabBar];
    [v14 addInteraction_];

    v15 = *&v1[v3];
    *&v1[v3] = v8;
    v16 = v8;

    sub_188F542AC();
    v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction;
  }

  v17 = *&v1[v3];
  if (v17)
  {
    v18 = v17;
    sub_188C3D8FC(a1);
  }
}

uint64_t _UIIsPrivateSystemSymbolImage(void *a1)
{
  v1 = a1;
  v2 = [v1 _primitiveImageAsset];
  if (v2)
  {
    v3 = _UIKitPrivateCoreGlyphsManagerExisting();
    v4 = [v3 _imageBelongsToCoreGlyphs:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _UIKitPrivateCoreGlyphsManagerExisting()
{
  os_unfair_lock_lock(&__UIKitCoreGlyphsManagersLock);
  v0 = __UIKitPrivateCoreGlyphsManager;
  os_unfair_lock_unlock(&__UIKitCoreGlyphsManagersLock);

  return v0;
}

uint64_t sub_188B8AC98(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_18A4A7F68();
  }

  return sub_18A4A8168();
}

uint64_t sub_188B8AD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349F0);
    v3 = sub_18A4A8088();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_18A4A8888();

      sub_18A4A7348();
      result = sub_18A4A88E8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_18A4A86C8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_188B8AEF4()
{
  v0 = sub_188B8AD8C(&unk_1EFAB84C8);
  result = swift_arrayDestroy();
  qword_1ED48EE60 = v0;
  return result;
}

unint64_t sub_188B8AF54()
{
  result = qword_1ED48E020;
  if (!qword_1ED48E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E020);
  }

  return result;
}

char *sub_188B8B034(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id sub_188B8B430(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____UINavigationBarHostedViewWrapper_id] = *(a1 + 8);
  v5 = *a1;
  *&v1[OBJC_IVAR____UINavigationBarHostedViewWrapper_itemView] = *a1;
  v6 = &v1[OBJC_IVAR____UINavigationBarHostedViewWrapper_model];
  v7 = *(a1 + 64);
  *(v6 + 3) = *(a1 + 48);
  *(v6 + 4) = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v5;
  sub_188B8B3D0(a1, v26);
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, sel_initWithFrame_, v10, v11, v12, v13);
  v16 = *MEMORY[0x1E6979928];
  v17 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v18 = v15;
  v19 = [v17 initWithType_];
  v20 = [v18 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18A64BFB0;
  *(v21 + 56) = sub_188A34624(0, &qword_1ED48EE50);
  *(v21 + 32) = v19;
  v22 = v19;
  v23 = sub_18A4A7518();

  [v20 setFilters_];

  [v18 addSubview_];
  sub_188B8BA58(a1, 0);

  sub_188B8BA00(a1);
  return v18;
}

char *sub_188B8B63C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_188B8B75C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C250);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 200)
    {
      sub_188A3F29C(i, &v21, &qword_1EA934DE0);
      v5 = v21;
      result = sub_188A403F4(v21);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 192 * result);
      v9 = v22;
      v10 = v23;
      v11 = v25;
      v8[2] = v24;
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      v12 = v26;
      v13 = v27;
      v14 = v29;
      v8[6] = v28;
      v8[7] = v14;
      v8[4] = v12;
      v8[5] = v13;
      v15 = v30;
      v16 = v31;
      v17 = v32[0];
      *(v8 + 169) = *(v32 + 9);
      v8[9] = v16;
      v8[10] = v17;
      v8[8] = v15;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188B8B8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BF0);
  v3 = sub_18A4A8488();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_188A75C28(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_188A75C28(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}