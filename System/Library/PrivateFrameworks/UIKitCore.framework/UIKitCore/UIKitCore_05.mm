uint64_t sub_188ABDAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if ([(UIView *)v4 __swiftAnimationInfo]&& (v9 = sub_188ABDCC8(0, a1, a2), v11 = v10, , v9))
  {
    ObjectType = swift_getObjectType();
    sub_188D67BC0(a3 & 1, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  else
  {

    result = sub_188A5548C(a1, a2);
    if (result == 13)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      v14 = sub_188A59768(result);
      v16 = v15;
      Description = v14[-1].Description;
      MEMORY[0x1EEE9AC00](v14);
      v19 = &v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18A4A8408();
      (*(v16 + 80))(v14, v16);
      return Description[1](v19, v14);
    }
  }

  return result;
}

uint64_t sub_188ABDCC8(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v3 + 48);
  if (*(v8 + 16) && (v9 = sub_188A5E664(a1 & 1, a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9);
    swift_unknownObjectRetain();
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

unint64_t sub_188ABDD80@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() valueWithCGRect_];
  result = sub_188A921E4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

double sub_188ABDDFC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_188ABDE2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);

      sub_18A4A7348();
      v10 = sub_18A4A88E8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 24 * v3;
        v14 = (v12 + 24 * v6);
        if (v3 != v6 || v13 >= v14 + 24)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188ABE00C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [(UIView *)Strong set__swiftAnimationInfo:?];
  }
}

uint64_t sub_188ABE064()
{

  MEMORY[0x18CFEA6E0](v0 + 24);
  sub_188A55B8C(*(v0 + 32));

  return swift_deallocClassInstance();
}

id *sub_188ABE0CC()
{

  v1 = *(*v0 + 16);
  v2 = sub_18A4A7D38();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 17), v2);
  MEMORY[0x18CFEA6E0](v0 + *(*v0 + 18));
  v4 = *(*v0 + 19);
  v5 = _s8ComposerVMa();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  MEMORY[0x18CFEA6E0](v0 + *(*v0 + 20));

  return v0;
}

uint64_t _UIUpdateRequestRegistryMutableRequestChanged(uint64_t result, _DWORD *a2)
{
  if ((*a2 & 2) != 0)
  {
    v2 = result;
    if (_UIUpdateCycleDebugTracingCheck)
    {
      result = _UIUpdateCycleDebugTracingCheck();
      if (result)
      {
        v6 = result;
        result = kdebug_trace();
        if (v6 != 1)
        {
          result = getppid();
        }
      }
    }

    *(v2 + 32) |= 1u;
    v3 = *v2;
    *(v2 + 4) |= 1u;
    if ((v3 | 0x40) != v3)
    {
      *v2 = v3 | 0x40;
      v4 = *(v2 + 136);
      if (v4)
      {
        v5 = *(v2 + 144);

        return v4(v2, v5);
      }
    }
  }

  return result;
}

uint64_t sub_188ABE3A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_188E9E9EC(a1, a2, a3 & 1, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_188A5E664(a3 & 1, a4, a5);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        sub_188FA23AC();
        v18 = v20;
      }

      swift_unknownObjectRelease();
      result = sub_188ABDE2C(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

void __trackRunLoopTimes(uint64_t a1, uint64_t a2)
{
  if (a2 == 32)
  {
    if ((byte_1EA992DE0 & 1) == 0)
    {
      HTSuspendHangTracing();
      byte_1EA992DE0 = 1;
    }
  }

  else
  {
    v2 = qword_1EA992FA8;
    if (byte_1EA992DE0)
    {
      HTResumeHangTracing();
      byte_1EA992DE0 = 0;
    }

    else
    {

      MEMORY[0x1EEE0C758](v2);
    }
  }
}

uint64_t arbitrateRecordSet(uint64_t result)
{
  *(result + 24) &= ~1u;
  v1 = *(result + 8);
  if (v1)
  {
    v2 = **result;
    v3 = v2[1];
    v4 = v2[3];
    v5 = v2[2];
    if (v1 != 1)
    {
      v6 = 24 * v1;
      v7 = (*result + 24);
      v8 = v6 - 24;
      do
      {
        v9 = *v7;
        v7 += 3;
        v10 = v9[3];
        v11 = v9[2];
        v12 = v3;
        v13 = v9[1];
        if (v3 <= v13)
        {
          v12 = v13;
        }

        v3 = v12;
        v14 = v5;
        if (v5 <= v11)
        {
          v14 = v11;
        }

        v5 = v14;
        v15 = v4;
        if (v4 - 1 >= v10 - 1)
        {
          v15 = v10;
        }

        v4 = v15;
        v8 -= 24;
      }

      while (v8);
    }
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  *(result + 28) = v3;
  *(result + 32) = v4;
  *(result + 36) = v5;
  return result;
}

uint64_t sub_188ABE61C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ED48FBC0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = qword_1ED4A3570;
  qword_1ED4A3570 = MEMORY[0x1E69E7CC0];
  byte_1ED48E949 = 1;
  *a1 = v3;
  return result;
}

uint64_t sub_188ABE6C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);
    os_unfair_lock_lock(v8 + 4);
    swift_beginAccess();

    sub_188ABE3A0(0, 0, a2 & 1, a3, a4);
    swift_endAccess();
    sub_188AA9E78();
    os_unfair_lock_unlock(v8 + 4);
  }

  return result;
}

uint64_t sub_188ABE790()
{
  sub_188ABE0CC();

  return swift_deallocClassInstance();
}

void __applySynthesizedTouchTranslationAndModifyIfNeeded(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [UIApp _supportsIndirectInputEvents];
  if (a1 && (v2 & 1) == 0 && IOHIDEventGetType() == 11 && _UIEventHIDShouldTransformEvent())
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ____applySynthesizedTouchTranslationAndModifyIfNeeded_block_invoke;
    v37[3] = &unk_1E71194E8;
    v37[4] = &v46;
    v37[5] = &v42;
    v37[6] = &v38;
    _UIEventHIDEnumerateChildren(a1, 0, v37);
    if (v47[3] && v43[3] && v39[3])
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v3 = v47[3];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = ____applySynthesizedTouchTranslationAndModifyIfNeeded_block_invoke_2;
      v32[3] = &unk_1E70F3838;
      v32[4] = &v33;
      _UIEventHIDEnumerateChildren(v3, 1, v32);
      v4 = v34[3];
      if (v4)
      {
        v5 = v4[1];
        *&v31.a = *v4;
        *&v31.c = v5;
        *&v31.tx = v4[2];
        memset(&v30, 0, sizeof(v30));
        _UIEventGetAffineTransformForScaleEvent(v47[3], &v30);
        memset(&v29, 0, sizeof(v29));
        CGAffineTransformMakeTranslation(&v29, v30.tx, v30.ty);
        memset(&v28, 0, sizeof(v28));
        v26 = v29;
        CGAffineTransformInvert(&v27, &v26);
        v26 = v30;
        CGAffineTransformConcat(&v28, &v26, &v27);
        v26 = v31;
        memset(&v27, 0, sizeof(v27));
        v25 = v29;
        v6 = CGAffineTransformConcat(&v27, &v26, &v25);
        v23 = v21;
        MEMORY[0x1EEE9AC00](v6);
        v22 = _UIEventHIDUIWindowForHIDEvent();
        v7 = [v22 _contextId];
        IOHIDEventGetFloatValue();
        v24 = v8;
        IOHIDEventGetFloatValue();
        v24 = vaddq_f64(*&v27.tx, vaddq_f64(vmulq_n_f64(*&v27.a, v24.f64[0]), vmulq_n_f64(*&v27.c, v9)));
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        v10 = BKSHIDEventGetDigitizerAttributes();
        v21[3] = v7;
        v11 = _UIEventHIDPathAttributesForChild(v10);
        v12 = _UIEventHIDPathIndexForDigitizerEvent();
        v13 = [v11 touchIdentifier];
        v14 = [v11 userIdentifier];
        v15 = [v11 locus];
        [v11 zGradient];
        v19 = __PAIR64__(v13, v12);
        LODWORD(v20) = v14;
        BYTE4(v20) = v15;
        *(&v20 + 5) = 0;
        HIBYTE(v20) = 0;
        IOHIDEventGetFloatValue();
        v24 = v16;
        IOHIDEventGetFloatValue();
        v24 = vaddq_f64(*&v27.tx, vaddq_f64(vmulq_n_f64(*&v27.a, v24.f64[0]), vmulq_n_f64(*&v27.c, v17)));
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        v18 = _UIEventHIDPathAttributesForChild(v10);
        _UIEventHIDPathIndexForDigitizerEvent();
        [v18 touchIdentifier];
        [v18 userIdentifier];
        [v18 locus];
        [v18 zGradient];
        CFAbsoluteTimeGetCurrent();
        BKSHIDEventSetDigitizerInfoWithSubEventInfos();
      }

      _Block_object_dispose(&v33, 8);
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }
}

void sub_188ABED84(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 424), 8);
  _Block_object_dispose((v2 - 208), 8);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

_BYTE *_UIEventHIDUIWindowForHIDEvent()
{
  v0 = BKSHIDEventGetBaseAttributes();
  v1 = [v0 contextID];

  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [UIWindow _windowWithContextId:v1];
  if (v2 && (v2[89] & 8) != 0)
  {

LABEL_5:
    v2 = 0;
  }

  return v2;
}

uint64_t _UIEventHIDShouldIgnoreEventsExpectedToBecomeDragEvent()
{
  if (qword_1ED4A3150 != -1)
  {
    dispatch_once(&qword_1ED4A3150, &__block_literal_global_5_14);
  }

  return byte_1ED4A3141;
}

uint64_t _UIEventHIDGetPointerEventSource(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = BKSHIDEventGetBaseAttributes();
  v2 = v1;
  if (v1 && (v3 = [v1 source] - 9, v3 <= 4))
  {
    v4 = qword_18A683F30[v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UIEventHIDShouldAllowHoverEventGeneration(uint64_t a1)
{
  _UIEventHIDPencilMaximumPositionZForEvent(a1);
  if (v1 > 0.0)
  {
    return 1;
  }

  if (IOHIDEventGetSenderID() != 0x8000000800A15173)
  {
    return 0;
  }

  result = _UIEventHIDShouldTransformEvent();
  if (result)
  {
    return IOHIDEventGetIntegerValue() == 0;
  }

  return result;
}

double _UIMediaTimeForMachTime(unint64_t a1)
{
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  return a1 / *&qword_1ED49FCC0;
}

BOOL _UIEventHIDExpectedToBecomeDragEvent()
{
  Children = IOHIDEventGetChildren();
  if (Children && (v1 = Children, (Count = CFArrayGetCount(Children)) != 0))
  {
    v3 = 0;
    v4 = 1;
    do
    {
      CFArrayGetValueAtIndex(v1, v3);
      if (IOHIDEventGetIntegerValue() == 65318 && IOHIDEventGetIntegerValue() == 1)
      {
        break;
      }

      v4 = ++v3 < Count;
    }

    while (Count != v3);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t _UIEventHIDGetDescendantPointerEvent(uint64_t a1)
{
  v1 = a1;
  if (a1 && IOHIDEventGetType() != 17)
  {
    Children = IOHIDEventGetChildren();
    if (Children && (v3 = Children, Count = CFArrayGetCount(Children), Count >= 1))
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        v8 = _UIEventHIDGetDescendantPointerEvent(ValueAtIndex);
        if (v8)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t _UIEventGetHIDModifierFlags(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 || (IOHIDEventGetType(), _UIEventHIDGetDescendantPointerEvent(a1), BKSHIDEventGetDigitizerAttributes(), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [v4 activeModifiers] & 0x3E0000;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __sendSystemGestureLatentClientUpdate(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [a1 _windowsAwaitingLatentSystemGestureNotificationDeliveredToEventWindow:a2];
  v40 = [v8 setWithSet:v9];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [a1 allTouches];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v60 count:16];
  v39 = v6;
  if (v11)
  {
    v13 = v11;
    v14 = *v46;
    *&v12 = 138412546;
    v38 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        if (v16)
        {
          v17 = v16[45];
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (v18 == v6)
        {
          v19 = [v16 window];
          if (v19)
          {
            [v40 addObject:v19];
          }

          else
          {
            v20 = *(__UILogGetCategoryCachedImpl("SystemGestureUpdate", &qword_1ED49F8C0) + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = v20;
              if (v16)
              {
                v22 = v16[45];
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              *buf = v38;
              v50 = v23;
              v51 = 2112;
              v52 = v16;
              _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Unexpected nil window in latent system gesture client update: windowServerHitTestWindow: %@, touch: %@", buf, 0x16u);

              v6 = v39;
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v24 = [v10 countByEnumeratingWithState:&v45 objects:v60 count:16];
      v13 = v24;
    }

    while (v24);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v40;
  v26 = [v25 countByEnumeratingWithState:&v41 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v41 + 1) + 8 * i) _setSystemGestureRecognitionIsPossible:a3 andTouchesAreCancelled:{a4, v38}];
      }

      v27 = [v25 countByEnumeratingWithState:&v41 objects:v59 count:16];
    }

    while (v27);
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("SystemGestureUpdate", &qword_1ED49F8C8);
  if (*CategoryCachedImpl)
  {
    v31 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      v33 = objc_opt_class();
      v34 = v33;
      v35 = [v25 count];
      v36 = @"NO";
      *buf = 138413314;
      v50 = v33;
      v51 = 2048;
      if (a3)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v52 = v39;
      if (a4)
      {
        v36 = @"YES";
      }

      v53 = 2048;
      v54 = v35;
      v55 = 2112;
      v56 = v37;
      v57 = 2112;
      v58 = v36;
      _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "SystemGestureLatentClientUpdate received: eventWindow: <%@: %p>; windowsNeedingSystemGestureUpdate.count: %lu; systemGesturePossible: %@; touchesCancelled: %@", buf, 0x34u);
    }
  }

  kdebug_trace();
}

id UniqueAnimationKeyForLayer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = [v5 animationForKey:v8];

  v10 = v8;
  if (v9)
  {
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = &stru_1EFB14550;
    }

    v12 = 2;
    v13 = v8;
    do
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld%@", v8, v12, v11];

      ++v12;
      v14 = [v5 animationForKey:v10];

      v13 = v10;
    }

    while (v14);
  }

  return v10;
}

uint64_t _UIApplicationWantsExtensionBehavior(void *a1)
{
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB == 1)
  {
    return [a1 _wantsApplicationBehaviorAsExtension] ^ 1;
  }

  else
  {
    return 0;
  }
}

void _UIScreenWriteDisplayConfiguration(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 160);
  os_unfair_lock_lock(&unk_1ED49AAE8);
  objc_storeStrong((a1 + 160), a2);
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  v6 = [v4 identity];
  *(a1 + 200) = *(a1 + 200) & 0xFFFEFFFF | (([v6 type] == 8) << 16);

  if ([a1 allowsWeakReference])
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(&location, v7);
  v10 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v11, &location);
  BSDispatchMain();
  v8 = [v5 CADisplay];
  [v8 removeObserver:a1 forKeyPath:@"cloned" context:&__UIScreenCapturedKey];

  v9 = [*(a1 + 160) CADisplay];
  [v9 addObserver:a1 forKeyPath:@"cloned" options:5 context:&__UIScreenCapturedKey];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_188AC1790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIScreenAddScreen(void *a1, char a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIScreenAddScreen(UIScreen *__strong, BOOL)"}];
    [v5 handleFailureInFunction:v6 file:@"UIScreen.m" lineNumber:508 description:{@"Adding object %@ to the screens array, which is not a UIScreen!", v3}];
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = ___UIScreenAddScreen_block_invoke;
  v18 = &unk_1E70F35E0;
  v20 = a2;
  v4 = v3;
  v19 = v4;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  ___UIScreenAddScreen_block_invoke(&v15);
  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  if (qword_1ED49AB90 != -1)
  {
    dispatch_once(&qword_1ED49AB90, &__block_literal_global_928);
  }

  if (byte_1ED49AAE2 == 1 && os_variant_has_internal_diagnostics())
  {
    v7 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED49ABA0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v4;
      if (v8)
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v8, v15, v16];
      }

      else
      {
        v12 = @"(nil)";
      }

      v13 = v12;
      v14 = +[UIScreen _shortScreensDescription];
      *buf = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Adding screen %@, now we have %@", buf, 0x16u);
    }
  }

  if (qword_1ED49ABC0 != -1)
  {
    dispatch_once(&qword_1ED49ABC0, &__block_literal_global_953_0);
  }
}

uint64_t _UIScreenHasScreens()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v4 = ___UIScreenHasScreens_block_invoke;
  v5 = &unk_1E70F2F20;
  v6 = &v7;
  v0 = v3;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v4(v0);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v1 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v1;
}

void sub_188AC1EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIContentSizeCategoryPreferenceSafeContentSizeCategory(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v2 = UIApp;
    if (v2)
    {
      v3 = objc_opt_class();
    }

    else
    {
      v3 = UIApplication;
    }

    v4 = [(__objc2_class *)v3 _defaultContentSizeCategory];

    if (![v4 length])
    {
      v5 = @"UICTContentSizeCategoryL";

      v4 = v5;
    }

    v1 = v4;
  }

  return v1;
}

uint64_t _UIApplicationIsExtension()
{
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  return byte_1EA992DAB;
}

id _UIKitAppKeyColorAssetName()
{
  if (UIApp)
  {
    v1 = [*(UIApp + 224) keyColorAssetName];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void _UIInitializeBuiltInTraits()
{
  os_unfair_lock_lock(&_UITraitLock);
  _traitTokensByIdentifier = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:27];
  v0 = dyld_program_sdk_at_least();
  v1 = 0;
  v2 = &byte_1E711BFD0;
  do
  {
    [_traitTokensByIdentifier setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v1), *(v2 - 2)}];
    if (v0 && (*v2 & 8) != 0)
    {
      _UITraitTokenSetInsert(&unk_1ED49FF80, v1, v3);
      _UITraitTokenSetInsert(_allTraitTokensAffectingColorAppearance, v1, v4);
    }

    ++v1;
    v2 += 48;
  }

  while (v1 != 27);
  qword_1ED49FF58 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:27];
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:258 capacity:27];
  qword_1ED49FF60 = v5;
  v6 = qword_1ED49FF58;
  [qword_1ED49FF58 setObject:&unk_1EFE32398 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32398];
  [v6 setObject:&unk_1EFE323B0 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE323B0];
  [v6 setObject:&unk_1EFE323C8 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE323C8];
  [v6 setObject:&unk_1EFE323E0 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE323E0];
  [v6 setObject:&unk_1EFE323F8 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE323F8];
  [v6 setObject:&unk_1EFE32410 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32410];
  [v6 setObject:&unk_1EFE32428 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32428];
  [v6 setObject:&unk_1EFE32440 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32440];
  [v6 setObject:&unk_1EFE32458 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32458];
  [v6 setObject:&unk_1EFE32470 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32470];
  [v6 setObject:&unk_1EFE32488 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32488];
  [v6 setObject:&unk_1EFE324A0 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE324A0];
  [v6 setObject:&unk_1EFE324B8 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE324B8];
  [v6 setObject:&unk_1EFE324D0 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE324D0];
  [v6 setObject:&unk_1EFE324E8 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE324E8];
  [v6 setObject:&unk_1EFE32500 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32500];
  [v6 setObject:&unk_1EFE32518 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32518];
  [v6 setObject:&unk_1EFE32530 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32530];
  [v6 setObject:&unk_1EFE32548 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32548];
  [v6 setObject:&unk_1EFE32560 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32560];
  [v6 setObject:&unk_1EFE32578 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32578];
  [v6 setObject:&unk_1EFE32590 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32590];
  [v6 setObject:&unk_1EFE325A8 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE325A8];
  [v6 setObject:&unk_1EFE325C0 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE325C0];
  [v6 setObject:&unk_1EFE325D8 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE325D8];
  [v6 setObject:&unk_1EFE325F0 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE325F0];
  [v6 setObject:&unk_1EFE32608 forKey:objc_opt_self()];
  [v5 setObject:objc_opt_self() forKey:&unk_1EFE32608];

  os_unfair_lock_unlock(&_UITraitLock);
}

id sub_188AC3B50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  [objc_opt_self() extensionForProtocol_];
  *(v0 + 32) = swift_getObjCClassMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9395B0);
  v1 = sub_18A4A7518();

  return v1;
}

void sub_188AC3F88()
{
  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v0 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188AC409C();
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v1);
}

_DWORD *sub_188AC4028()
{
  type metadata accessor for _UISwiftTraits.UnfairLock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_1ED491B48 = v0;
  return result;
}

uint64_t sub_188AC409C()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitUserInterfaceIdiom, &protocol witness table for UITraitUserInterfaceIdiom, &unk_1EFE32398);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitUserInterfaceStyle, &protocol witness table for UITraitUserInterfaceStyle, &unk_1EFE323B0);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitLayoutDirection, &protocol witness table for UITraitLayoutDirection, &unk_1EFE323C8);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitDisplayScale, &protocol witness table for UITraitDisplayScale, &unk_1EFE323E0);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitHorizontalSizeClass, &protocol witness table for UITraitHorizontalSizeClass, &unk_1EFE323F8);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitVerticalSizeClass, &protocol witness table for UITraitVerticalSizeClass, &unk_1EFE32410);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitForceTouchCapability, &protocol witness table for UITraitForceTouchCapability, &unk_1EFE32428);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitPreferredContentSizeCategory, &protocol witness table for UITraitPreferredContentSizeCategory, &unk_1EFE32440);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitDisplayGamut, &protocol witness table for UITraitDisplayGamut, &unk_1EFE32458);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitAccessibilityContrast, &protocol witness table for UITraitAccessibilityContrast, &unk_1EFE32470);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitUserInterfaceLevel, &protocol witness table for UITraitUserInterfaceLevel, &unk_1EFE32488);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitLegibilityWeight, &protocol witness table for UITraitLegibilityWeight, &unk_1EFE324A0);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitActiveAppearance, &protocol witness table for UITraitActiveAppearance, &unk_1EFE324B8);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitToolbarItemPresentationSize, &protocol witness table for UITraitToolbarItemPresentationSize, &unk_1EFE324D0);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitTouchLevel, &protocol witness table for UITraitTouchLevel, &unk_1EFE324E8);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitArtworkSubtype, &protocol witness table for UITraitArtworkSubtype, &unk_1EFE32530);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitDisplayCornerRadius, &protocol witness table for UITraitDisplayCornerRadius, &unk_1EFE32548);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitSemanticContext, &off_1EE43A4D8, &unk_1EFE32560);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitPresentationSemanticContext, &protocol witness table for UITraitPresentationSemanticContext, &unk_1EFE32578);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitSplitViewControllerContext, &protocol witness table for UITraitSplitViewControllerContext, &unk_1EFE32590);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitVibrancy, &protocol witness table for UITraitVibrancy, &unk_1EFE325A8);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitUserInterfaceRenderingMode, &protocol witness table for UITraitUserInterfaceRenderingMode, &unk_1EFE325C0);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitFocusSystemState, &protocol witness table for UITraitFocusSystemState, &unk_1EFE325D8);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitSelectionIsKey, &off_1EE43A498, &unk_1EFE325F0);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_188AC4764(&type metadata for UITraitBacklightLuminance, &protocol witness table for UITraitBacklightLuminance, &unk_1EFE32608);
  return swift_unknownObjectRelease();
}

uint64_t sub_188AC4764(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = off_1ED491B18;
  off_1ED491B18 = 0x8000000000000000;
  sub_188AC48E8(a3, a1, isUniquelyReferenced_nonNull_native, &v9);
  off_1ED491B18 = v9;
  swift_endAccess();
  if (qword_1ED491B00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v9 = off_1ED491B08;
  off_1ED491B08 = 0x8000000000000000;
  sub_188AC4FC4(a1, a2, a3, v7);
  swift_unknownObjectRelease();
  off_1ED491B08 = v9;
  return swift_endAccess();
}

unint64_t sub_188AC48E8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  result = sub_188A78D9C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_188AC4A34(v14, a3 & 1);
      result = sub_188A78D9C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_18A4A87A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_188FA069C();
      result = v17;
    }
  }

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_188AC4A34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B40);
  v30 = a2;
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
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      result = sub_18A4A88E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_188AC4CD8()
{
  result = qword_1ED491B30;
  if (!qword_1ED491B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED491B30);
  }

  return result;
}

uint64_t sub_188AC4D2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1E0);
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0]([v20 hash]);
      result = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_188AC4FC4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_188AC52E0(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_188FA053C();
      result = v19;
      goto LABEL_8;
    }

    sub_188AC4D2C(v16, a4 & 1);
    result = sub_188AC52E0(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_188AC540C(result, a3, a1, a2, v21);

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_188AC50F4()
{
  result = _UIViewMaskingConfigurationSPIEnabled();
  if (result)
  {
    v2 = [objc_allocWithZone(_UICornerMaskingProviderMux) initWithUniformProvider_];
    v3 = [objc_allocWithZone(_UICornerMaskingContext) initWithProviders_];

    v4 = swift_dynamicCastObjCProtocolUnconditional();
    v5 = qword_1ED491B40;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    sub_188A857F8(&type metadata for CornerMaskingContextTrait, sub_188AC5454);
    os_unfair_lock_unlock(v7[2]);
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
    v8 = sub_188A74A44();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v4 _setObject_forTraitToken_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_188AC52E0(void *a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0]([a1 hash]);
  v2 = sub_18A4A88E8();

  return sub_188AC5358(a1, v2);
}

unint64_t sub_188AC5358(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if ([*(*(v2 + 48) + 8 * v4) isEqual_])
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_188AC540C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

id sub_188AC5454(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v13[3] = sub_188A34624(0, &qword_1ED491AD8);
  if (qword_1ED491A90 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED491AA0;
  v13[0] = qword_1ED491AA0;
  sub_188A55598(v13, v11);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v11[0] = v11[2];
  v11[1] = v12;
  v6 = *(&v12 + 1);
  sub_188A3F5FC(v11, &qword_1EA934050);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v9 = [v8 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v9;
}

void sub_188AC5614()
{
  v0 = [objc_opt_self() undefined];
  v1 = [objc_allocWithZone(_UICornerMaskingContext) initWithProviders_];

  qword_1ED491AA0 = v1;
}

const __CFNumber *_UIDefineNewTraitLocked(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (![*(a1 + 16) length])
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 146, @"Trait name cannot be nil or empty"}];
  }

  if (![*(a1 + 24) length])
  {
    *(a1 + 24) = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString"), *(a1 + 16)];
  }

  v3 = _MergedGlobals_1250;
  if (v2 && (v4 = *a1) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    _UIGetTraitMetadataLocked(v4, 0, &v57);
    if (*(&v57 + 1))
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 159, @"Attempting to define a trait for a placeholder token that corresponds to a trait that was already defined: %@", *a1}];
    }

    v5 = 0;
    v3 = v57 - 27;
    v6 = 1;
  }

  else
  {
    v7 = _traitTokensByIdentifier;
    if (!_traitTokensByIdentifier)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 163, @"_traitTokensByIdentifier was never initialized"}];
      v7 = _traitTokensByIdentifier;
    }

    v5 = [v7 objectForKey:*(a1 + 24)];
    if (v5)
    {
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      _UIGetTraitMetadataLocked(v5, 0, &v57);
      v6 = *(&v57 + 1) == 0;
      if (!*(&v57 + 1))
      {
        v3 = v57 - 27;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = qword_1ED49FF68;
  if (qword_1ED49FF68)
  {
    if (v3 < qword_1ED49FF68)
    {
      goto LABEL_29;
    }

    v9 = vcvtpd_u64_f64(qword_1ED49FF68 * 1.6);
    if (qword_1ED49FF68 >= v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 48 * v9;
      if (is_mul_ok(v9, 0x30uLL))
      {
LABEL_26:
        qword_1ED49FF50 = malloc_type_realloc(qword_1ED49FF50, v10, 0xB0150C40uLL);
        if (!qword_1ED49FF50)
        {
          v36 = [MEMORY[0x1E696AAA8] currentHandler];
          [v36 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 190, @"Failed to reallocate dynamic trait metadata with capacity: %lu", v9}];
        }

        goto LABEL_28;
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 187, @"Cannot reallocate dynamic trait metadata with existing capacity: %lu, new capacity: %lu", v8, v9}];
    goto LABEL_26;
  }

  qword_1ED49FF50 = malloc_type_malloc(0x300uLL, 0x10800400BE35022uLL);
  if (qword_1ED49FF50)
  {
    v9 = 16;
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = 16;
    [v35 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 180, @"Failed to allocate dynamic trait metadata with capacity: %lu", 16}];
  }

LABEL_28:
  qword_1ED49FF68 = v9;
LABEL_29:
  if (((v5 != 0) & ~v6) == 0)
  {
    v56 = v2;
    v12 = *(a1 + 8);
    if (v12 == 1)
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 8);
    }

    v14 = [*(a1 + 16) copy];
    v15 = [*(a1 + 24) copy];
    v16 = *(a1 + 32);
    v17 = (2 * *(a1 + 40)) | (4 * *(a1 + 42));
    v18 = *(a1 + 41);
    v19 = v17 | (8 * v18);
    if (v6)
    {
      v20 = qword_1ED49FF50 + 48 * v3;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v21)
      {
      }

      if (v22)
      {
      }
    }

    v23 = qword_1ED49FF50 + 48 * v3;
    *v23 = v3 + 27;
    *(v23 + 8) = v12;
    *(v23 + 16) = v14;
    *(v23 + 24) = v15;
    *(v23 + 32) = v16;
    *(v23 + 40) = v19;
    *(v23 + 41) = 0;
    *(v23 + 44) = 0;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3 + 27];
    if ((v6 & 1) == 0)
    {
      [_traitTokensByIdentifier setObject:v5 forKey:v15];
      _MergedGlobals_1250 = v3 + 1;
    }

    if (v56 && v18 && dyld_program_sdk_at_least())
    {
      _UITraitTokenSetInsert(_allTraitTokensAffectingColorAppearance, v3 + 27, v24);
    }

    return v5;
  }

  if (!v2)
  {
    return v5;
  }

  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  _UIGetTraitMetadataLocked(v5, 0, &v57);
  v25 = *(&v57 + 1);
  if (*(&v57 + 1) == *(a1 + 8))
  {
    v26 = v58;
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)"];
    v39 = *(a1 + 16);
    v40 = _UITraitDataTypeToString(*(a1 + 8));
    v26 = v58;
    [v37 handleFailureInFunction:v38 file:@"UITrait_NonARC.m" lineNumber:236 description:{@"Attempting to use a trait named '%@' with data type %@ that has the same identifier '%@' as a previously used trait named '%@' with a different data type %@. Trait definitions with the same identifier must have the same data type.", v39, v40, *(a1 + 24), v58, _UITraitDataTypeToString(v25)}];
  }

  if (([v26 isEqualToString:*(a1 + 16)] & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 237, @"Attempting to use a trait named '%@' that has the same identifier '%@' as a previously used trait with a different name '%@'. Trait definitions with the same identifier must have the same name.", *(a1 + 16), *(a1 + 24), v26}];
  }

  v27 = *(a1 + 32);
  v28 = v59;
  v29 = BYTE8(v59);
  if (BYTE8(v59))
  {
    if (v25 > 2)
    {
      if (v25 != 3 && v25 != 4)
      {
LABEL_56:
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v26}];
        v28 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      if (v25 == 1)
      {
        v28 = *v59;
        if (v27 == *v59)
        {
          goto LABEL_62;
        }

        goto LABEL_59;
      }

      if (v25 != 2)
      {
        goto LABEL_56;
      }
    }

    v28 = *v59;
  }

LABEL_57:
  if (v28 != v27)
  {
    if (v25 != 1)
    {
LABEL_77:
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      [v49 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 238, @"Attempt to use a trait named '%@' that has the same identifier '%@' as a previously used trait named '%@' with a different defaultValue. Trait definitions with the same identifier must have the same defaultValue.", *(a1 + 16), *(a1 + 24), v26}];
      goto LABEL_62;
    }

LABEL_59:
    if (v27 && v28 && ([v27 isEqual:?] & 1) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_77;
  }

LABEL_62:
  if (((v29 >> 3) & 1) != *(a1 + 41))
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSNumber *_UIDefineNewTraitLocked(_UITraitDefinitionMetadata)") description:{@"UITrait_NonARC.m", 239, @"Attempt to use a trait named '%@' that has the same identifier '%@' as a previously used trait named '%@' with a different affectsColorAppearance value. Trait definitions with the same identifier must have the same affectsColorAppearance value.", *(a1 + 16), *(a1 + 24), v26}];
  }

  if (((v29 >> 1) & 1) != *(a1 + 40))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v50 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        v51 = *(a1 + 16);
        v52 = *(a1 + 24);
        *buf = 138412802;
        v61 = v51;
        v62 = 2112;
        v63 = v52;
        v64 = 2112;
        v65 = v26;
        _os_log_fault_impl(&dword_188A29000, v50, OS_LOG_TYPE_FAULT, "Attempt to use a trait with name '%@' that has the same identifier '%@' as a previously used trait named '%@' with a different defaultValueRepresentsUnspecified value. Trait definitions with the same identifier must have the same defaultValueRepresentsUnspecified value.", buf, 0x20u);
      }
    }

    else
    {
      v43 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FF70) + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 16);
        v45 = *(a1 + 24);
        *buf = 138412802;
        v61 = v44;
        v62 = 2112;
        v63 = v45;
        v64 = 2112;
        v65 = v26;
        _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "Attempt to use a trait with name '%@' that has the same identifier '%@' as a previously used trait named '%@' with a different defaultValueRepresentsUnspecified value. Trait definitions with the same identifier must have the same defaultValueRepresentsUnspecified value.", buf, 0x20u);
      }
    }
  }

  if (((v29 >> 2) & 1) != *(a1 + 42))
  {
    if (os_variant_has_internal_diagnostics())
    {
      v53 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        v54 = *(a1 + 16);
        v55 = *(a1 + 24);
        *buf = 138412802;
        v61 = v54;
        v62 = 2112;
        v63 = v55;
        v64 = 2112;
        v65 = v26;
        _os_log_fault_impl(&dword_188A29000, v53, OS_LOG_TYPE_FAULT, "Attempt to use a trait with name '%@' that has the same identifier '%@' as a previously used trait named '%@' with a different _isPrivate value. Trait definitions with the same identifier must have the same _isPrivate value.", buf, 0x20u);
      }
    }

    else
    {
      v46 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FF78) + 8);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = *(a1 + 16);
        v48 = *(a1 + 24);
        *buf = 138412802;
        v61 = v47;
        v62 = 2112;
        v63 = v48;
        v64 = 2112;
        v65 = v26;
        _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "Attempt to use a trait with name '%@' that has the same identifier '%@' as a previously used trait named '%@' with a different _isPrivate value. Trait definitions with the same identifier must have the same _isPrivate value.", buf, 0x20u);
      }
    }
  }

  return v5;
}

unint64_t sub_188AC6078()
{
  result = qword_1ED491B28;
  if (!qword_1ED491B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED491B28);
  }

  return result;
}

const __CFNumber *_UIDefineNewTrait(_OWORD *a1)
{
  os_unfair_lock_lock(&_UITraitLock);
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  v3 = _UIDefineNewTraitLocked(v5);
  os_unfair_lock_unlock(&_UITraitLock);
  return v3;
}

void ___traitCollectionChangeLoggingMode_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v1 = _UIInternalPreference_TraitCollectionChangeLoggingEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_TraitCollectionChangeLoggingEnabled))
  {
LABEL_4:
    qword_1ED49EC08 = 0;
LABEL_5:
    if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      qword_1ED49EC08 = 1;
    }

    return;
  }

  while (v0 >= v1)
  {
    v2 = v0;
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_TraitCollectionChangeLoggingEnabled, @"TraitCollectionChangeLoggingEnabled", _UIInternalPreferenceUpdateInteger);
    v0 = v2;
    v1 = _UIInternalPreference_TraitCollectionChangeLoggingEnabled;
    if (v2 == _UIInternalPreference_TraitCollectionChangeLoggingEnabled)
    {
      goto LABEL_4;
    }
  }

  qword_1ED49EC08 = qword_1ED48B240;
  if (!qword_1ED48B240)
  {
    goto LABEL_5;
  }
}

void _UIApplicationInstallAutoreleasePoolsIfNecessaryForMode(const __CFString *a1)
{
  if (!_CFRunLoopSetPerCalloutAutoreleasepoolEnabled())
  {
    Current = CFRunLoopGetCurrent();
    v3 = _MergedGlobals_1112;
    if (!_MergedGlobals_1112)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      context.version = 0;
      context.info = v4;
      context.retain = MEMORY[0x1E695D7C8];
      context.release = MEMORY[0x1E695D7C0];
      context.copyDescription = MEMORY[0x1E695D768];
      _MergedGlobals_1112 = CFRunLoopObserverCreate(0, 1uLL, 1u, -2147483647, _runLoopObserverCallout, &context);
      qword_1ED49E0C8 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, _runLoopObserverCallout, &context);
      v5 = *MEMORY[0x1E695E8D0];
      CFRunLoopAddObserver(Current, _MergedGlobals_1112, *MEMORY[0x1E695E8D0]);
      CFRunLoopAddObserver(Current, qword_1ED49E0C8, v5);

      v3 = _MergedGlobals_1112;
    }

    if (!CFRunLoopContainsObserver(Current, v3, a1))
    {
      CFRunLoopAddObserver(Current, _MergedGlobals_1112, a1);
      CFRunLoopAddObserver(Current, qword_1ED49E0C8, a1);
    }
  }
}

Method _requestHardwareEventsIfNeeded()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_proximityStateChanged_);
  if (result)
  {
    v2 = result;
    v3 = objc_opt_class();
    result = class_getInstanceMethod(v3, sel_proximityStateChanged_);
    if (v2 != result)
    {
      v4 = UIApp;

      return [v4 setProximityEventsEnabled:1];
    }
  }

  return result;
}

uint64_t sub_188AC7FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A82098(a1, v8, type metadata accessor for _GlassBackgroundStyle);
  (*(a3 + 208))(v8, &type metadata for _GlassBackgroundStyleTrait, &type metadata for _GlassBackgroundStyleTrait, &off_1EE43C8B0, a2, a3);
  return sub_188A828FC(a1, type metadata accessor for _GlassBackgroundStyle);
}

id sub_188AC80DC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _GlassBackgroundStyleTrait, &off_1ED48F0A8, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

void _UIApplicationInitializeForBackgroundTasks()
{
  v0 = [MEMORY[0x1E69C75D0] observeForImminentAssertionsExpiration:&__block_literal_global_61_1];
  v1 = __processExpirationObserver;
  __processExpirationObserver = v0;
}

void sub_188AC8750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _UITraitChangeRegistry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _UIApplicationStartsAppViewServiceListener()
{
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB)
  {
    return 0;
  }

  if (qword_1EA992E88 != -1)
  {
    dispatch_once(&qword_1EA992E88, &__block_literal_global_1233);
  }

  if (byte_1EA992DAC != 1)
  {
    return 0;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKey:@"SBMachServices"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v0 bundleIdentifier];
    v4 = RBSAppViewServiceMachServiceName();

    v5 = [v2 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void _UIHyperInteractorDirtyTranslatedUnconstrainedPoint(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 8) != 0)
  {
    v1[42] = v2 & 0xFFFFFFD7;
    v4 = v1;
    _UIHyperInteractorDirtyClosestPoint(v1);
    v3 = v4[42];
    if ((v3 & 0x80) != 0)
    {
      v4[42] = v3 & 0xFFFFFF7F;
    }

    _UIHyperInteractorDirtyUnconstrainedVector(v4);
    _UIHyperInteractorDirtyExtentVector(v4);
    v1 = v4;
  }
}

void _UIHyperInteractorDirtyExtentVector(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 0x200) != 0)
  {
    v1[42] = v2 & 0xFFFFFDFF;
    v5 = v1;
    _UIHyperInteractorDirtyUnconstrainedExtentVector(v1);
    v1 = v5;
    v3 = v5[42];
    if ((v3 & 0x400) != 0)
    {
      v5[42] = v3 & 0xFFFFFBFF;
      v4 = v5;
      _UIHyperInteractorDirtyUnconstrainedExtentVector(v4);
      _UIHyperInteractorDirtyConstrainedFraction(v4);

      v1 = v5;
    }
  }
}

void UIRectCenteredAboutPointScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a7 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a7 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

void _UIHyperInteractorDirtyUnconstrainedExtentVector(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 0x800) != 0)
  {
    v1[42] = v2 & 0xFFFFF7FF;
    v7 = v1;
    v3 = v1;
    v4 = v7[42];
    if ((v4 & 0x1000) != 0)
    {
      v7[42] = v4 & 0xFFFFEFFF;
      _UIHyperInteractorDirtyConstrainedFraction(v3);
      v5 = v7[42];
      if ((v5 & 0x8000) != 0)
      {
        v7[42] = v5 & 0xFFFF7FFF;
      }
    }

    v1 = v7;
    v6 = v7[42];
    if ((v6 & 0x4000) != 0)
    {
      v7[42] = v6 & 0xFFFFBFFF;
      _UIHyperInteractorDirtyPresentationPoint(v3);
      v1 = v7;
      v6 = v7[42];
    }

    if ((v6 & 0x8000) != 0)
    {
      v1[42] = v6 & 0xFFFF7FFF;
    }
  }
}

void _UIHyperInteractorDirtyClosestPoint(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 0x40) != 0)
  {
    v1[42] = v2 & 0xFFFFFF3F;
    v4 = v1;
    _UIHyperInteractorDirtyUnconstrainedVector(v1);
    _UIHyperInteractorDirtyExtentVector(v4);
    v1 = v4;
    v3 = v4[42];
    if ((v3 & 0x4000) != 0)
    {
      v4[42] = v3 & 0xFFFFBFFF;
      _UIHyperInteractorDirtyPresentationPoint(v4);
      v1 = v4;
    }
  }
}

void _UIHyperInteractorDirtyUnconstrainedVector(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 0x100) != 0)
  {
    v1[42] = v2 & 0xFFFFFEFF;
    v4 = v1;
    _UIHyperInteractorDirtyUnconstrainedExtentVector(v1);
    v1 = v4;
    v3 = v4[42];
    if ((v3 & 0x8000) != 0)
    {
      v4[42] = v3 & 0xFFFF7FFF;
    }
  }
}

void _UIHyperInteractorDirtyPresentationPoint(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 42);
  if ((v3 & 0x10000) != 0)
  {
    *(v1 + 42) = v3 & 0xFFFEFFFF;
    v4 = *(v1 + 33);
    if (v4)
    {
      v5 = v2;
      (*(v4 + 16))();
      v2 = v5;
    }
  }
}

void _UIHyperInteractorDirtyConstrainedFraction(void *a1)
{
  v1 = a1;
  v2 = v1[42];
  if ((v2 & 0x2000) != 0)
  {
    v3 = v2 & 0xFFFFDFFF;
    v1[42] = v2 & 0xFFFFDFFF;
    if ((v2 & 0x4000) != 0)
    {
      v1[42] = v2 & 0xFFFF9FFF;
      v4 = v1;
      _UIHyperInteractorDirtyPresentationPoint(v1);
      v1 = v4;
      v3 = v4[42];
    }

    if ((v3 & 0x8000) != 0)
    {
      v1[42] = v3 & 0xFFFF7FFF;
    }
  }
}

uint64_t __UIDebuggingOverlayIsEnabled_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    result = _UIGetDebuggingOverlayEnabled();
    if (result)
    {
      result = dyld_program_sdk_at_least();
    }
  }

  _MergedGlobals_11_12 = result;
  return result;
}

uint64_t sub_188ACCA0C(void *a1)
{
  v2 = sub_18A4A4648();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A4848();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_18A4A4908();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v29 = sub_18A4A5318();
  v16 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v28 - v20;
  v28[1] = sub_18A4A4958();
  sub_18A4A47B8();
  v31 = a1;
  v22 = [a1 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  ViewGraphHost.Idiom.init(_uiIdiom:)(v23, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_188A3F5FC(v8, &qword_1EA935D48);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    sub_18A4A51B8();
    (*(v10 + 8))(v15, v9);
  }

  v24 = v31;
  [v31 _referenceBounds];
  [v24 _pointsPerInch];
  sub_18A4A4838();
  sub_18A4A52D8();
  v25 = v32;
  sub_18A4A4638();
  sub_18A4A5048();
  (*(v33 + 8))(v25, v34);
  v26 = v29;
  (*(v16 + 16))(v18, v21, v29);
  sub_18A4A47C8();
  return (*(v16 + 8))(v21, v26);
}

uint64_t ViewGraphHost.Idiom.init(_uiIdiom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A4908();
  v11 = *(v4 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        sub_18A4A48C8();
        goto LABEL_19;
      case 1:
        sub_18A4A48B8();
        goto LABEL_19;
      case 2:
        sub_18A4A4898();
LABEL_19:
        (*(v11 + 32))(a2, v7, v4);
        return (*(v11 + 56))(a2, 0, 1, v4);
    }
  }

  else
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        sub_18A4A48F8();
      }

      else
      {
        sub_18A4A48D8();
      }

      goto LABEL_19;
    }

    if (a1 == 5)
    {
      sub_18A4A48A8();
      goto LABEL_19;
    }

    if (a1 == 6)
    {
      sub_18A4A48E8();
      goto LABEL_19;
    }
  }

  v8 = *(v11 + 56);

  return v8(a2, 1, 1, v4, v5);
}

double __machDurationOfSecond_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  result = (1000000000 * info.denom) / v0;
  *&qword_1ED49FCC0 = result;
  return result;
}

void ___instance_block_invoke()
{
  v0 = *(MEMORY[0x1E695E9D8] + 16);
  *&v2.version = *MEMORY[0x1E695E9D8];
  *&v2.release = v0;
  v2.equal = 0;
  v2.hash = 0;
  qword_1ED4A2900 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v2, MEMORY[0x1E695E9E8]);
  dword_1ED4A2908 = 0;
  byte_1ED4A290C = 0;
  v1 = [objc_opt_self() mainScreen];
  qword_1ED4A2910 = _UIMachTimeForMediaTime(1.0 / [v1 maximumFramesPerSecond]);

  qword_1ED4A2928 = 0;
  word_1ED4A2938 = 0;
  qword_1ED4A2940 = 0;
}

unint64_t _UIMachTimeForMediaTime(double a1)
{
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  return (*&qword_1ED49FCC0 * a1 + 0.5);
}

uint64_t debugTracingCheck()
{
  v0 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UpdateCycleTracing, @"UpdateCycleTracing", _UIInternalPreferenceUpdateInteger);
  v1 = dword_1ED48B408;
  if (v0)
  {
    v1 = 0;
  }

  v2 = v1 == 1;
  if (v1 <= 1)
  {
    result = v1;
  }

  else
  {
    result = 2;
  }

  if (v1 <= 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = debugTracingTracepointsWithCallstacks;
  }

  if (v2)
  {
    v4 = debugTracingTracepoints;
  }

  _UIUpdateCycleDebugTracingCheck = v4;
  return result;
}

BOOL _UIApplicationWaitForBackgroundAssertionsToFlush()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__98;
  v8 = __Block_byref_object_dispose__98;
  v9 = 0;
  v0 = +[_UIBackgroundTaskInfo backgroundTaskAssertionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UIApplicationWaitForBackgroundAssertionsToFlush_block_invoke;
  block[3] = &unk_1E70F2F20;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  if (v1)
  {
    [v5[5] acquire];
  }

  _Block_object_dispose(&v4, 8);

  return v1 != 0;
}

void sub_188ACD8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIDebuggingOverlayIsEnabled()
{
  if (qword_1ED49AA38 != -1)
  {
    dispatch_once(&qword_1ED49AA38, &__block_literal_global_90_4);
  }

  return _MergedGlobals_11_12;
}

uint64_t _UIUpdateInputTimingProfileLoad(const char *a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  makeProfilePath(a1, (a2 + 4));
  v4 = MEMORY[0x1E695DEF0];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2 + 4];
  v6 = [v4 dataWithContentsOfFile:v5];

  *a2 = v6 == 0;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_48;
  }

  v41 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    if (!v8)
    {
      v9 = 0;
      v41 = 1;
LABEL_43:

      if (v41)
      {
        v37 = 2;
LABEL_47:
        *a2 = v37;
        goto LABEL_48;
      }

      if (!v9)
      {
        v37 = 1;
        goto LABEL_47;
      }

LABEL_48:

      return v9;
    }
  }

  v10 = profileDictionaryValue(v8, &v41);

  if (!v10)
  {
LABEL_26:
    v9 = 0;
    goto LABEL_43;
  }

  v11 = [v8 objectForKeyedSubscript:@"Profiles"];
  v12 = profileDictionaryValue(v11, &v41);

  if (!v12)
  {
LABEL_25:

    goto LABEL_26;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v14 = [v11 objectForKeyedSubscript:v13];
  v15 = profileDictionaryValue(v14, &v41);

  v16 = profileDictionaryValue(v15, &v41);

  if (!v16)
  {

    goto LABEL_25;
  }

  v17 = [v15 objectForKeyedSubscript:@"Ready"];
  v18 = profileDictionaryValue(v17, &v41);

  v19 = [v15 objectForKeyedSubscript:@"ReadyExpecting"];
  v20 = profileDictionaryValue(v19, &v41);

  if (v18)
  {
    v21 = 13;
  }

  else
  {
    v21 = 11;
  }

  if (v20)
  {
    v22 = v21 * 8 + 16;
  }

  else
  {
    v22 = v21 * 8;
  }

  v23 = malloc_type_calloc(1uLL, v22, 0x100004077774924uLL);
  if (v23)
  {
    v9 = v23;
    if (v18)
    {
      v23[9] = (v23 + 11);
    }

    if (v20)
    {
      v23[10] = &v23[v21];
    }

    v24 = [v15 objectForKeyedSubscript:@"Latency"];
    *v9 = profileDurationValue(v24, &v41);

    v25 = [v15 objectForKeyedSubscript:@"TimestampAdjustment"];
    v9[1] = profileDurationValue(v25, &v41);

    v26 = [v15 objectForKeyedSubscript:@"TimestampConfidence"];
    v9[2] = profileDurationValue(v26, &v41);

    v27 = [v15 objectForKeyedSubscript:@"LowLatency"];
    v28 = v27;
    if (v27)
    {
      LODWORD(v27) = _NSIsNSNumber();
      if (v27)
      {
        LOBYTE(v27) = [v28 BOOLValue];
      }

      else
      {
        v41 = 1;
      }
    }

    *(v9 + 24) = v27;

    v29 = [v15 objectForKeyedSubscript:@"LowLatencyAlignmentShift"];
    v9[4] = profileDurationValue(v29, &v41);

    v30 = [v15 objectForKeyedSubscript:@"LowLatencyReadyShift"];
    v9[5] = profileDurationValue(v30, &v41);

    v31 = [v15 objectForKeyedSubscript:@"UseNextEventInformation"];
    v32 = v31;
    if (v31)
    {
      LODWORD(v31) = _NSIsNSNumber();
      if (v31)
      {
        LOBYTE(v31) = [v32 BOOLValue];
      }

      else
      {
        v41 = 1;
      }
    }

    *(v9 + 48) = v31;

    if (*(v9 + 48) == 1)
    {
      v33 = [v15 objectForKeyedSubscript:@"Period"];
      v9[7] = profileDurationValue(v33, &v41);

      v34 = [v15 objectForKeyedSubscript:@"SendPeriod"];
      v35 = v34;
      if (v34)
      {
        v36 = profileDurationValue(v34, &v41);
      }

      else
      {
        v36 = v9[7];
      }

      v9[8] = v36;
    }

    if (v18)
    {
      setReadyProfile(v9[9], v18, &v41);
      if (!v20)
      {
        v9[10] = v9[9];
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (!v20)
    {
      goto LABEL_42;
    }

    setReadyProfile(v9[10], v20, &v41);
    goto LABEL_42;
  }

  v42 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v39 = __error();
  v40 = strerror(*v39);
  v43 = 136315650;
  v44 = 0;
  v45 = 2048;
  v46 = v22;
  v47 = 2080;
  v48 = v40;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

id profileDictionaryValue(id a1, _BYTE *a2)
{
  if (a1)
  {
    v4 = a1;
    if (_NSIsNSDictionary())
    {
      a1 = v4;
    }

    else
    {
      a1 = 0;
      *a2 = 1;
    }

    v2 = vars8;
  }

  return a1;
}

unint64_t profileDurationValue(void *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!_NSIsNSNumber())
  {
    *a2 = 1;
    return 0;
  }

  [a1 doubleValue];

  return _UIMachDurationForMediaDuration(v4);
}

void setReadyProfile(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [a2 objectForKeyedSubscript:@"ReceiveDeadline"];
  *a1 = profileDurationValue(v6, a3);

  v7 = [a2 objectForKeyedSubscript:@"UseNextEventInformation"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    LODWORD(v7) = _NSIsNSNumber();
    if (v7)
    {
      LOBYTE(v7) = [v9 BOOLValue];
    }

    else
    {
      *a3 = 1;
    }

    v8 = v9;
  }

  *(a1 + 8) = v7;
}

uint64_t __minScheduledDuration_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference_UpdateSchedulerMinScheduledDurationSeconds;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UpdateSchedulerMinScheduledDurationSeconds)
    {
      do
      {
        if (v0 < v2)
        {
          break;
        }

        _UIInternalPreferenceSync(v0, &_UIInternalPreference_UpdateSchedulerMinScheduledDurationSeconds, @"UpdateSchedulerMinScheduledDurationSeconds", _UIInternalPreferenceUpdateDouble);
        v2 = _UIInternalPreference_UpdateSchedulerMinScheduledDurationSeconds;
      }

      while (v0 != _UIInternalPreference_UpdateSchedulerMinScheduledDurationSeconds);
    }
  }

  result = UCTimeFromSeconds();
  qword_1ED49FB50 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC5UIKitE8Material_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_188ACE614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _UIViewBackingObservesChanges(uint64_t a1)
{
  v2 = +[UIView _defaultKeyPathsToSyncWithPrivateSubviews];
  v3 = [v2 containsObject:a1];

  return v3;
}

BOOL sub_188ACEB88(void *a1, char a2, uint64_t a3)
{
  if (pthread_main_np() != 1)
  {
    return 0;
  }

  if (qword_1ED490F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((sub_188ACEEC4(a1, a2, off_1ED490F28) & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED48EC38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED48EE00;
  if (!*(off_1ED48EE00 + 2) || (v7 = sub_188BBA428(a1, a2), (v8 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = off_1ED48EE00;
    off_1ED48EE00 = 0x8000000000000000;
    sub_188BBA748(1, a1, a2, isUniquelyReferenced_nonNull_native);
    off_1ED48EE00 = v18;
    swift_endAccess();
    if ((byte_1ED48E880 & 1) == 0)
    {
      byte_1ED48E880 = 1;
      aBlock[4] = sub_188B71EB0;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = a3;
      v15 = _Block_copy(aBlock);

      _UIObservationTrackingInstallCATransactionCommitHandler(v15);
      _Block_release(v15);
    }

    return 0;
  }

  v9 = *(v6[7] + 8 * v7);
  swift_endAccess();
  v10 = _UIObservationTrackingFeedbackLoopThreshold();
  v11 = v10;
  if (v10 >= 1 && v10 < v9)
  {
    if (qword_1ED48EE10 == -1)
    {
LABEL_12:
      swift_beginAccess();
      sub_188B57944(&v18, a1, a2);
      swift_endAccess();
      sub_188CF0960(a2);
      v12 = sub_18A4A7258();

      UIObservationTrackingFeedbackLoopDetected(a1, v12);

      return 1;
    }

LABEL_24:
    swift_once();
    goto LABEL_12;
  }

  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v18 = off_1ED48EE00;
  off_1ED48EE00 = 0x8000000000000000;
  sub_188BBA748(v9 + 1, a1, a2, v16);
  off_1ED48EE00 = v18;
  swift_endAccess();
  return v11 > 1 && v9 > v11 / 2;
}

uint64_t sub_188ACEEC4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = a2;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  MEMORY[0x18CFE37E0](v5);
  v6 = sub_18A4A88E8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = *(a3 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = v11 == a1 && v5 == v12;
    result = v13;
    if (v13)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_188ACEFD4(char *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v20 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  swift_beginAccess();
  v15 = *(v2 + 16);
  if (*(v15 + 16) && (v16 = sub_188A86B54(a2), (v17 & 1) != 0))
  {
    sub_188A3F29C(*(v15 + 56) + *(v9 + 72) * v16, v12, &unk_1EA935770);
    sub_18913F370(v12, v14);
    swift_endAccess();
    sub_18913DD18(a1, v7);
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_188F28088(v7, a2);
    swift_endAccess();
    return sub_188A3F5FC(v14, &unk_1EA935770);
  }

  else
  {
    swift_endAccess();
    v19 = sub_18A4A2BD8();
    (*(*(v19 - 8) + 16))(v7, a1, v19);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_188F28088(v7, a2);
    return swift_endAccess();
  }
}

void sub_188ACF290(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _UIGestureRecognizerShouldConsiderPointingDeviceCompatibility()
{
  if (qword_1ED4A2B18 != -1)
  {
    dispatch_once(&qword_1ED4A2B18, &__block_literal_global_695);
  }

  if (_MergedGlobals_1385 != 1)
  {
    return 0;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_EnableMapboxPointingDeviceCompatibility, _UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableMapboxPointingDeviceCompatibility))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_EnableMapboxPointingDeviceCompatibility, @"EnableMapboxPointingDeviceCompatibility", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_EnableMapboxPointingDeviceCompatibility;
    }

    while (v0 != _UIInternalPreference_EnableMapboxPointingDeviceCompatibility);
  }

  return byte_1EA95E7EC || v1;
}

BOOL _UIGetUIViewLayoutFeedbackLoopDebuggingEnabled()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_UIViewLayoutFeedbackLoopDebuggingEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UIViewLayoutFeedbackLoopDebuggingEnabled))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIViewLayoutFeedbackLoopDebuggingEnabled, @"UIViewLayoutFeedbackLoopDebuggingEnabled", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_UIViewLayoutFeedbackLoopDebuggingEnabled;
    }

    while (v0 != _UIInternalPreference_UIViewLayoutFeedbackLoopDebuggingEnabled);
  }

  return byte_1ED48B99C && v1;
}

uint64_t __UIViewCommonInitWithFrame_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    objc_opt_class();

    return _class_setCustomDeallocInitiation();
  }

  return result;
}

uint64_t type metadata accessor for ScrollPocketCollectorModel()
{
  result = qword_1ED490BB0;
  if (!qword_1ED490BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188AD0638()
{
  result = sub_18A4A2C48();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _valueForPrefOrPassLinkCheck(uint64_t a1, int a2)
{
  v4 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (!v4)
  {
    v4 = [_UIKitPreferencesOnce() objectForKey:a1];
    if (!v4)
    {
      return dyld_program_sdk_at_least() & a2;
    }
  }

  return [v4 BOOLValue];
}

unint64_t sub_188AD0BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B90);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 16)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934DC8);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188A3F704(&v12, v3[7] + 8 * result, &unk_1EA93B9E0);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t type metadata accessor for ScrollPocketContainerModel()
{
  result = qword_1ED490B70;
  if (!qword_1ED490B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_188AD0F04(_BYTE *a1)
{
  if (_UIScrollPocketEnabled())
  {
    if (a1)
    {
      v3 = sub_18A4A7258();
      [(UIView *)a1 _removeChildTraitCollectionTransformWithIdentifier:v3];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v1 + OBJC_IVAR____UIScrollPocketCollectorInteraction_model);

      v7 = sub_18A4A7258();
      v8 = swift_allocObject();
      *(v8 + 16) = sub_188A917B0;
      *(v8 + 24) = v6;
      v10[4] = sub_188A8EE7C;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_188A85DA8;
      v10[3] = &block_descriptor_8_2;
      v9 = _Block_copy(v10);

      [(UIView *)v5 _addChildTraitCollectionTransformWithIdentifier:v7 transform:v9];
      _Block_release(v9);
    }
  }
}

uint64_t sub_188AD1080()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188AD17DC()
{
  result = sub_18A4A2C48();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void _queue_ensureExistenceOfKnownSceneSessionMap()
{
  if (!qword_1ED49FA08)
  {
    v0 = _restorationPath(@"KnownSceneSessions");
    v12 = 0;
    v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v0 options:0 error:&v12];
    v2 = v12;
    v3 = v2;
    if (v1)
    {
      v11 = 0;
      v4 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:0 error:&v11];
      v5 = v11;

      if (v5)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SCouldNotConve.isa, "void _queue_ensureExistenceOfKnownSceneSessionMap(void)", v5);
        }
      }

      else
      {
        v6 = [v4 mutableCopy];
        v7 = qword_1ED49FA08;
        qword_1ED49FA08 = v6;

        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SReadSavedScen.isa, "void _queue_ensureExistenceOfKnownSceneSessionMap(void)", qword_1ED49FA08);
        }
      }
    }

    else
    {
      v5 = v2;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCouldNotConve_0.isa, "void _queue_ensureExistenceOfKnownSceneSessionMap(void)", v5, qword_1ED49FA08);
      }

      v8 = qword_1ED49FA08;
      qword_1ED49FA08 = 0;
    }

    if (!qword_1ED49FA08)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v10 = qword_1ED49FA08;
      qword_1ED49FA08 = v9;
    }
  }
}

uint64_t sub_188AD279C()
{
  sub_188AD27F4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_188AD27F4()
{
  if (!qword_1ED491638)
  {
    sub_18A4A2F68();
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED491638);
    }
  }
}

id sub_188AD316C()
{
  v1 = OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides;
  v2 = *(v0 + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides);
  }

  else
  {
    v4 = [objc_allocWithZone(_UICornerMaskingProviderMux) initWithUniformProvider_];
    v5 = [objc_allocWithZone(_UICornerMaskingContext) initWithProviders_];

    v6 = sub_188AD6008(v5);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t _UIEventDeferringProcessIsCarPlayApp()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UIEventDeferringProcessIsCarPlayApp_block_invoke;
  block[3] = &unk_1E70F3590;
  v3 = @"com.apple.CarPlayApp";
  if (qword_1ED49FF30 != -1)
  {
    dispatch_once(&qword_1ED49FF30, block);
  }

  v0 = _MergedGlobals_1249;

  return v0;
}

uint64_t _UIApplicationProcessIsOverlayUI()
{
  if (qword_1EA992EF8 != -1)
  {
    dispatch_once(&qword_1EA992EF8, &__block_literal_global_1287_0);
  }

  return byte_1EA992DB8;
}

uint64_t _UIEventDeferringManagerIsAvailableForProcess()
{
  v0 = _UIMainBundleIdentifier();
  if ([v0 isEqualToString:@"com.apple.CarPlayApp"])
  {
    v1 = 0;
  }

  else
  {
    v2 = _UIMainBundleIdentifier();
    v1 = [v2 hasPrefix:@"com.apple.InterfaceBuilder.IBAgent"] ^ 1;
  }

  return v1;
}

uint64_t _UIThemeKeyFromTraitValues(char a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = 2;
  if (a2 != 1000)
  {
    v6 = a2;
  }

  v7 = 64;
  if (!a3)
  {
    v7 = 0;
  }

  v8 = (a5 & 1) << 8;
  if (v6 != 2)
  {
    v8 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 & 0xFFFFFFFFFFFFFFC0 | (4 * a1 + 4) & 0x3C | v6 & 3 | ((a4 == 1) << 7) | v8 | ((a6 == 1) << 9)];
}

id _restorationDirectory(void *a1)
{
  v1 = a1;
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 _web_createDirectoryAtPathWithIntermediateDirectories:v3 attributes:0];

  v5 = MEMORY[0x1E696AEC0];
  v6 = _UIMainBundleIdentifier();
  v7 = [v5 stringWithFormat:@"%@/%@/%@.%@", v3, @"Saved Application State", v6, @"savedState"];

  if (v1)
  {
    v8 = [v7 stringByAppendingFormat:@"/%@", v1];

    v7 = v8;
  }

  v9 = [v7 stringByStandardizingPath];

  v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9 isDirectory:1];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SUrlForStateRe.isa, "NSURL *_restorationDirectory(NSString *__strong)", v10);
  }

  return v10;
}

uint64_t _UIEventDeferringProcessIsPineBoard()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UIEventDeferringProcessIsPineBoard_block_invoke;
  v2[3] = &unk_1E70F35B8;
  v3 = @"com.apple.PineBoard";
  v4 = @"com.apple.internal.PineBoardTests.xctrunner";
  if (qword_1ED49FF38 != -1)
  {
    dispatch_once(&qword_1ED49FF38, v2);
  }

  v0 = byte_1ED49FF29;

  return v0;
}

uint64_t _UISceneSystemShellManagesKeyboardFocusForScene(void *a1)
{
  if (pthread_main_np() != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UISceneSystemShellManagesKeyboardFocusForScene(UIScene *__unsafe_unretained _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"UIScene.m" lineNumber:258 description:@"Call must be made on main thread"];
  }

  if (!_UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(a1))
  {
    return 0;
  }

  v2 = a1;
  v3 = _UISceneEffectiveIdiomOfSceneForSystemShellManagesKeyboardFocus(v2);
  if (v3 == -1)
  {
    v4 = [v2 _isTargetOfKeyboardEventDeferringEnvironment];
  }

  else
  {
    v4 = ((1 << v3) & ~_systemShellManagesKeyboardFocusIdiomMask) == 0;
  }

  return v4;
}

uint64_t _UIApplicationProcessIsSpotlight()
{
  if (qword_1EA992F08 != -1)
  {
    dispatch_once(&qword_1EA992F08, &__block_literal_global_1297_0);
  }

  return byte_1EA992DBA;
}

void sub_188AD4874()
{
  sub_18A4A2F58();
  if (v0 <= 0x3F)
  {
    sub_188AD9898();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id _persistenceQueue()
{
  if (qword_1ED49FA70 != -1)
  {
    dispatch_once(&qword_1ED49FA70, &__block_literal_global_487_2);
  }

  v1 = qword_1ED49FA68;

  return v1;
}

void _UISceneInspectDelegateSuport(unsigned int *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  *a1 = *a1 & 0xFFFFFFFE | objc_opt_isKindOfClass() & 1;

  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *a1 = *a1 & 0xFFFFFFFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = *a1 & 0xFFFFFFFB | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *a1 = *a1 & 0xFFFFFFF7 | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  *a1 = *a1 & 0xFFFFFFEF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  *a1 = *a1 & 0xFFFFFFDF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *a1 = *a1 & 0xFFFFFFBF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 128;
  }

  else
  {
    v11 = 0;
  }

  *a1 = *a1 & 0xFFFFFF7F | v11;
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  *a1 = *a1 & 0xFFFFFEFF | v13;
}

uint64_t _UISceneEffectiveIdiomOfSceneForSystemShellManagesKeyboardFocus(void *a1)
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIUserInterfaceIdiom _UISceneEffectiveIdiomOfSceneForSystemShellManagesKeyboardFocus(UIScene *__unsafe_unretained)"];
    [v5 handleFailureInFunction:v6 file:@"UIScene.m" lineNumber:210 description:@"Call must be made on main thread"];
  }

  if (![a1 _hostsWindows])
  {
    return -1;
  }

  v2 = [a1 _screen];
  v3 = [v2 _userInterfaceIdiom];

  if (v3 >= 10)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_188AD54F8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void ___isBundleAllowedSpringBoardDelegate_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    LOBYTE(v0) = [&unk_1EFE2DA38 containsObject:v0];
    v1 = v2;
  }

  byte_1ED498B41 = v0;
}

void sub_188AD5AE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_188AD6008(void *a1)
{
  v11[3] = sub_188A34624(0, &qword_1ED491AD8);
  v11[0] = a1;
  sub_188A55598(v11, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v9[2];
  v9[1] = v10;
  v2 = *(&v10 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v4 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v5 = sub_188A857F8(&type metadata for CornerMaskingContextTrait, sub_188AC5454);
  v6 = objc_opt_self();
  os_unfair_lock_unlock(v4[2]);
  v7 = [v6 _traitCollectionWithObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

id _UIEventDeferringBehaviorForManager(void *a1)
{
  v2 = [a1 windowHostingScene];
  v3 = [v2 _screen];
  v4 = [v3 _userInterfaceIdiom];

  v5 = objc_opt_class();
  if (_UIApplicationProcessIsSpringBoard() || (_UIEventDeferringProcessIsPineBoard() & 1) != 0 || (_UIEventDeferringProcessIsCarPlayApp() & 1) != 0 || _UIEventDeferringProcessIsCarousel())
  {
    v5 = objc_opt_class();
  }

  if (v5 == objc_opt_class() && v4 <= 8 && ((0x11Fu >> v4) & 1) != 0)
  {
    v5 = objc_opt_class();
  }

  v6 = [[v5 alloc] initWithEventDeferringManager:a1];

  return v6;
}

uint64_t _UIEventDeferringProcessIsCarousel()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UIEventDeferringProcessIsCarousel_block_invoke;
  block[3] = &unk_1E70F3590;
  v3 = @"com.apple.Carousel";
  if (qword_1ED49FF40 != -1)
  {
    dispatch_once(&qword_1ED49FF40, block);
  }

  v0 = byte_1ED49FF2A;

  return v0;
}

void sub_188AD6650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_NSStringFromUIUserInterfaceIdiom(uint64_t a1)
{
  if ((a1 + 1) > 0xB)
  {
    return @"UIUserInterfaceIdiomMac";
  }

  else
  {
    return off_1E710CC30[a1 + 1];
  }
}

uint64_t _shouldSuppressHDR(int a1)
{
  if (a1)
  {
    if (dyld_program_sdk_at_least())
    {
      v1 = 1;
    }

    else
    {
      if (qword_1ED49E580 != -1)
      {
        dispatch_once(&qword_1ED49E580, &__block_literal_global_106);
      }

      v1 = _MergedGlobals_1137 ^ 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void _ensureDebugName(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  if (!v10[51])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    if (!v3)
    {
      v6 = objc_opt_class();
      v5 = NSStringFromClass(v6);
    }

    v7 = _ensureDebugName___windowCreationCount++;
    v8 = [v4 stringWithFormat:@"%@-%p-%u", v5, v10, v7];
    v9 = v10[51];
    v10[51] = v8;

    if (!v3)
    {
    }
  }
}

uint64_t _UIApplicationSupportsGlobalEdgeSwipeTouches()
{
  if (qword_1EA992E58 != -1)
  {
    dispatch_once(&qword_1EA992E58, &__block_literal_global_1123_0);
  }

  if (_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    v0 = [UIApp _isSpringBoard];
    v1 = v0 | byte_1EA992DA8;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_188AD6DD4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v3 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge);
  *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge) = a1;
  if (v3 != a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }
}

void sub_188AD6F40(_BYTE *a1)
{
  v2 = v1;
  if (_UIScrollPocketEnabled())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (a1)
    {
      if (Strong)
      {
        v5 = Strong;

        if (v5 == a1)
        {
          return;
        }
      }
    }

    else
    {
      if (!Strong)
      {
        return;
      }
    }

    aBlock = 0;
    v21 = 0xE000000000000000;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000001BLL, 0x800000018A6A7100);
    v26 = v2;
    sub_18A4A82D8();
    if (a1)
    {
      v6 = sub_18A4A7258();
      [(UIView *)a1 _removeChildTraitCollectionTransformWithIdentifier:v6];
    }

    v7 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style) + 1;
    v8 = v7 > 5;
    v9 = (1 << v7) & 0x27;
    v10 = v8 || v9 == 0;
    if (v10 || (v11 = swift_unknownObjectWeakLoadStrong()) == 0)
    {
    }

    else
    {
      v12 = v11;
      v13 = sub_18A4A7258();

      v24 = sub_188A9198C;
      v25 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_188A85DA8;
      v23 = &block_descriptor_45_2;
      v14 = _Block_copy(&aBlock);

      [(UIView *)v12 _addChildTraitCollectionTransformWithIdentifier:v13 transform:v14];
      _Block_release(v14);
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      [v15 setNeedsUpdateProperties];
    }

    else
    {
      sub_188B01C08();
    }

    if (*(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
    {
      v17 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

      sub_1890A4410(v2, v17);
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      [(UIView *)v18 _setNeedsToBeNotifiedOfVisibilityChange:?];
    }

    if (a1)
    {
      [(UIView *)a1 _setNeedsToBeNotifiedOfVisibilityChange:?];
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t _UIScreenTypeForScreen(void *a1)
{
  v1 = a1;
  [v1 _nativeDisplayBounds];
  v40 = v2;
  v38 = v3;
  [v1 _referenceBounds];
  v43 = v5;
  v44 = v4;
  [v1 scale];
  v39 = v6;
  [v1 _displayCornerRadius];
  v45 = v7;
  v8 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  v9 = [v1 _exclusionArea];
  if (objc_opt_respondsToSelector())
  {
    [v9 rect];
    v12 = v11;
    v42 = v13;
    v15 = v14;
  }

  else
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v15 = *(MEMORY[0x1E695F050] + 24);
    v42 = *(MEMORY[0x1E695F050] + 16);
  }

  v16 = 0;
  v17 = 0;
  v18 = -1;
  v41 = v10;
  while (1)
  {
    v19 = _UIScreenNativeDisplayBoundsSizeForType(v16);
    v21 = v20;
    v22 = _UIScreenReferenceBoundsSizeForType(v16);
    v47 = v23;
    v48 = v22;
    v46 = _UIScreenScaleForType(v16);
    v49 = _UIScreenCornerRadiusForType(v16);
    v51.origin.x = _UIScreenNativeDisplayExclusionRectForType(v16);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    if (!CGRectIsNull(v51))
    {
      v28 = _UIScreenNativeDisplayBoundsSizeForType(v16);
      v29 = _UIScreenReferenceBoundsSizeForType(v16);
      CGAffineTransformMakeScale(&v50, v29 / v28, v29 / v28);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v53 = CGRectApplyAffineTransform(v52, &v50);
      x = v53.origin.x;
      y = v53.origin.y;
      width = v53.size.width;
      height = v53.size.height;
    }

    if (v8 != _UIUserInterfaceIdiomForType(v16) || vabdd_f64(v44, v48) > 0.1)
    {
      goto LABEL_28;
    }

    if (vabdd_f64(v43, v47) > 0.1 || v45 <= 0.0 == v49 > 0.0)
    {
      goto LABEL_28;
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    IsNull = CGRectIsNull(v54);
    v55.origin.x = v41;
    v55.origin.y = v12;
    v55.size.width = v42;
    v55.size.height = v15;
    if (IsNull != CGRectIsNull(v55))
    {
      goto LABEL_28;
    }

    v56.origin.x = v41;
    v56.origin.y = v12;
    v56.size.width = v42;
    v56.size.height = v15;
    if (CGRectIsNull(v56) && (v57.origin.x = x, v57.origin.y = y, v57.size.width = width, v57.size.height = height, CGRectIsNull(v57)))
    {
      v32 = 0;
    }

    else
    {
      v58.origin.x = v41;
      v58.size.width = v42;
      v58.origin.y = v12;
      v58.size.height = v15;
      v33 = CGRectIsNull(v58);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      v32 = v33 == CGRectIsNull(v59) ? _UIRectEquivalentToRectWithAccuracy(v41, v12, v42, v15, x, y, width, height, 0.1) ^ 1 : 1;
    }

    v34 = vabdd_f64(v39, v46);
    v35 = vabdd_f64(v45, v49);
    if (v35 <= 0.01 && v34 <= 0.01 && vabdd_f64(v40, v19) <= 0.1 && vabdd_f64(v38, v21) <= 0.1 && v32 == 0)
    {
      break;
    }

    if (!(v17 & 1 | (v34 > 0.01)))
    {
      v17 = 0;
      if (vabdd_f64(v40, v48 * v46) <= 0.1 && vabdd_f64(v38, v47 * v46) <= 0.1)
      {
        if ((v35 > 0.01) | v32 & 1)
        {
          v17 = 0;
          if (v18 == -1)
          {
            v18 = v16;
          }
        }

        else
        {
          v17 = 1;
          v18 = v16;
        }
      }
    }

LABEL_28:
    if (++v16 == 51)
    {
      goto LABEL_38;
    }
  }

  v18 = v16;
LABEL_38:

  return v18;
}

uint64_t sub_188AD77B4(uint64_t a1)
{
  v2 = type metadata accessor for _GlassBackgroundStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188AD7810()
{
  sub_188AD9898();
  if (v0 <= 0x3F)
  {
    sub_188F6D6B8(319, qword_1ED4904B0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for _Glass._GlassVariant(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Variant(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

CGColorSpaceRef __RGBColorSpace_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    if (qword_1ED49BF20 != -1)
    {
      dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
    }

    result = qword_1ED49BF18;
  }

  else
  {
    result = CGColorSpaceCreateDeviceRGB();
  }

  qword_1ED49BEC8 = result;
  return result;
}

id sub_188AD7C3C(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A480);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

CGColorSpaceRef __ExtendedSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  qword_1ED49BF18 = result;
  return result;
}

CGColorSpaceRef __ExtendedSRGBColorSpace_block_invoke_0()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  _MergedGlobals_5_14 = result;
  return result;
}

unint64_t sub_188AD8A5C()
{
  result = qword_1ED490CB8;
  if (!qword_1ED490CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED490CB8);
  }

  return result;
}

double sub_188AD8B88()
{
  result = 0.0;
  xmmword_1ED48CFB0 = 0u;
  unk_1ED48CFC0 = 0u;
  xmmword_1ED48CF90 = 0u;
  unk_1ED48CFA0 = 0u;
  xmmword_1ED48CF70 = 0u;
  unk_1ED48CF80 = 0u;
  return result;
}

double _UIScreenNativeDisplayExclusionRectForType(uint64_t a1)
{
  v1 = MEMORY[0x1E695F050];
  if ((a1 - 5) <= 0x1B)
  {
    v1 = &unk_18A67DF60 + 8 * a1 - 40;
  }

  return *v1;
}

uint64_t sub_188AD8C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188AD8CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188AD8D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188AD8D7C()
{
  v0 = type metadata accessor for _GlassBackgroundStyle();
  __swift_allocate_value_buffer(v0, qword_1ED4A3668);
  v1 = __swift_project_value_buffer(v0, qword_1ED4A3668);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 2, v2);
}

uint64_t _UIScreenNativeDisplayBoundsSizeForType(unint64_t a1)
{
  if (a1 < 0x33)
  {
    return qword_18A67D110[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIIntegralSize _UIScreenNativeDisplayBoundsSizeForType(_UIScreenType)"];
  [v3 handleFailureInFunction:v4 file:@"_UIScreenTypes.m" lineNumber:385 description:{@"Unknown or invalid type: %ld", a1}];

  return 0;
}

uint64_t _UIUserInterfaceIdiomForType(unint64_t a1)
{
  if (a1 < 0x33)
  {
    return qword_18A67DC08[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIUserInterfaceIdiom _UIUserInterfaceIdiomForType(_UIScreenType)"];
  [v3 handleFailureInFunction:v4 file:@"_UIScreenTypes.m" lineNumber:812 description:{@"Unknown or invalid type: %ld", a1}];

  return -1;
}

double UIView._background.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(v5);

  if (v5[3])
  {
    sub_188A53994(v5, a1);
    sub_188ACE668(v5);
  }

  else
  {
    sub_188A3F5FC(v5, &unk_1EA933EC0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_188AD92A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double _UIScreenScaleForType(unint64_t a1)
{
  if (a1 < 0x33)
  {
    return dbl_18A67D770[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat _UIScreenScaleForType(_UIScreenType)"];
  [v3 handleFailureInFunction:v4 file:@"_UIScreenTypes.m" lineNumber:577 description:{@"Unknown or invalid type: %ld", a1}];

  return 0.0;
}

id sub_188AD9430(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933150);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

void ___persistenceQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.UIScenePersistenceQueue", 0);
  v1 = qword_1ED49FA68;
  qword_1ED49FA68 = v0;
}

uint64_t _UIUserInterfaceStyleFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Light"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Dark"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CGColorSpaceRef __GrayColorSpace_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
  }

  else
  {
    result = CGColorSpaceCreateDeviceGray();
  }

  qword_1ED49BEB8 = result;
  return result;
}

void sub_188AD9898()
{
  if (!qword_1ED4913A8)
  {
    sub_188A34624(255, qword_1ED4913C0);
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED4913A8);
    }
  }
}

void _UISceneMetricsCalculatorApplySceneCornerRadiiToScreenIfNecessary(void *a1)
{
  v6 = a1;
  v1 = [v6 _effectiveUISettings];
  v2 = [v1 displayIdentity];
  if ([v2 isUIKitMainLike])
  {
    if ([v2 isExternal])
    {
      v3 = [v1 cornerRadiusConfiguration];
      if (v3)
      {
        v4 = v3;
        v5 = [v6 screen];
        [v4 topLeft];
        [v5 _setSceneProvidedDisplayCornerRadius:?];
      }
    }
  }
}

id _restorationPath(void *a1)
{
  v1 = _restorationDirectory(a1);
  v2 = [v1 URLByAppendingPathComponent:@"data.data" isDirectory:0];

  return v2;
}

void _UISceneUpdateSystemShellManagesKeyboardFocusIfNeededFromScene(void *a1)
{
  if (pthread_main_np() != 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UISceneUpdateSystemShellManagesKeyboardFocusIfNeededFromScene(UIScene *__unsafe_unretained)"];
    [v10 handleFailureInFunction:v11 file:@"UIScene.m" lineNumber:225 description:@"Call must be made on main thread"];
  }

  if (_UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(a1))
  {
    v14 = a1;
    v2 = _UISceneEffectiveIdiomOfSceneForSystemShellManagesKeyboardFocus(v14);
    if (v2 != -1)
    {
      v3 = v2;
      v4 = 1 << v2;
      if ((v4 & ~_systemShellManagesKeyboardFocusIdiomMask) != 0)
      {
        if (pthread_main_np() != 1)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UISceneSystemShellManagesKeyboardFocusAlwaysEnabledForSceneAndIdiom(UIScene *__unsafe_unretained, UIUserInterfaceIdiom)"}];
          [v12 handleFailureInFunction:v13 file:@"UIScene.m" lineNumber:177 description:@"Call must be made on main thread"];
        }

        if (_UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(v14))
        {
          v5 = +[UIDevice currentDevice];
          v6 = [v5 userInterfaceIdiom];

          v8 = v3 != 3 && v6 < 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = [v14 _isTargetOfKeyboardEventDeferringEnvironment];
        if (v8 || v9)
        {
          _systemShellManagesKeyboardFocusIdiomMask |= v4;
        }
      }
    }
  }
}

void sub_188ADAD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id castToWindow(id a1)
{
  if (a1)
  {
    if (qword_1ED49A318 != -1)
    {
      dispatch_once(&qword_1ED49A318, &__block_literal_global_334);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIWindow * _Nonnull castToWindow(UIView * _Nullable const __strong)"];
      [v3 handleFailureInFunction:v4 file:@"_UIHomeAffordanceGateGestureRecognizer.m" lineNumber:68 description:@"_UIHomeAffordanceGateGestureRecognizer must be attached to a window."];
    }
  }

  return a1;
}

uint64_t sub_188ADBDA4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v3 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_requiresPocket);
  *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_requiresPocket) = result;
  if (v3 != (result & 1) && *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
  {
    v4 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

    sub_1890A4410(v2, v4);
  }

  return result;
}

id _UIFallbackSheetMetrics()
{
  v0 = +[_UIPresentationControllerDefaultVisualStyleProvider sharedInstance];
  v1 = [v0 defaultSheetMetrics];

  return v1;
}

id __UIKIT_IS_REQUESTING_A_CACONTEXT_FROM_COREANIMATION(int a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E6979320] remoteContextWithOptions:v3];
    if (!v4)
    {
      __UIKIT_DID_NOT_RECEIVE_A_REMOTE_CACONTEXT_FROM_COREANIMATION_INDICATING_A_POSSIBLE_BACKBOARDD_CRASH();
    }
  }

  else
  {
    v4 = [MEMORY[0x1E6979320] localContextWithOptions:v3];
    if (!v4)
    {
      __UIKIT_DID_NOT_RECEIVE_A_LOCAL_CACONTEXT_FROM_COREANIMATION();
    }
  }

  return v4;
}

CFIndex _UIQOSExcludeCommitFromGlitchTrackingIfUnmanaged()
{
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  result = CFDictionaryGetCount(qword_1ED4A2900);
  if (!result)
  {
    v1 = MEMORY[0x1E6979518];

    return [v1 setFrameStallSkipRequest:1];
  }

  return result;
}

void _setFrameIgnoringLayerTransformOnOrAfterYukon(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (dyld_program_sdk_at_least())
  {
    [v9 _setFrameIgnoringLayerTransform:{a2, a3, a4, a5}];
  }

  else
  {
    [v9 setFrame:{a2, a3, a4, a5}];
  }
}

uint64_t sub_188ADE68C()
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = sub_18A4A2BD8();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18A4A2BA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = v0;
  v15 = [(UIPresentationController *)v0 _typedStorage];
  v16 = sub_188A4CEC4();

  if (v16)
  {
    sub_18913E3AC(11);
  }

  v46 = v16;
  v40 = *(v4 + 56);
  v40(v13, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 848);
  *(StatusReg + 848) = v13;
  v47 = v13;
  v19 = byte_1ED4A3680;
  byte_1ED4A3680 = 1;
  [v14 _containerViewWillLayoutSubviews];
  *(StatusReg + 848) = v18;
  v20 = v3;
  v21 = v4;
  byte_1ED4A3680 = v19;
  v22 = v47;
  sub_188A3F29C(v47, v10, &qword_1EA93E090);
  if ((*(v4 + 48))(v10, 1, v20) == 1)
  {
    sub_188A3F5FC(v22, &qword_1EA93E090);
    sub_188A3F5FC(v10, &qword_1EA93E090);
  }

  else
  {
    v23 = v45;
    (*(v4 + 32))(v45, v10, v20);
    v24 = sub_188ACEB88(v14, 11, &block_descriptor_78_2);
    v25 = v14;
    v26 = v46;
    if (!v46)
    {
      v27 = [(UIPresentationController *)v25 _typedStorage];
      v26 = sub_188A4CEC4();
    }

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 11;
    *(v29 + 25) = v24;
    *(v29 + 32) = sub_18913F490;
    *(v29 + 40) = 0;
    v30 = v41;
    (*(v21 + 16))(v41, v23, v20);
    v40(v30, 0, 1, v20);
    v46 = v28;

    v31 = v42;
    sub_18A4A2BE8();
    if (!v26)
    {
      type metadata accessor for TrackingDictionary();
      v32 = swift_allocObject();
      *(v32 + 16) = MEMORY[0x1E69E7CC8];
      swift_retain_n();
      v33 = [(UIPresentationController *)v25 _typedStorage];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      v35 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(&v33->super.isa + v35);
      *(&v33->super.isa + v35) = 0x8000000000000000;
      sub_188A40430(v34, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
      *(&v33->super.isa + v35) = v48;
      v23 = v45;
      swift_endAccess();

      v22 = v47;
    }

    swift_retain_n();
    sub_188ACEFD4(v31, 11);

    v37 = swift_allocObject();
    *(v37 + 16) = sub_188B57AD4;
    *(v37 + 24) = v29;

    MEMORY[0x18CFDDAE0](v31, 0, 0, sub_188B57248, v37);

    (*(v43 + 8))(v31, v44);
    (*(v21 + 8))(v23, v20);
    sub_188A3F5FC(v22, &qword_1EA93E090);
  }
}

uint64_t _UISheetPresentationControllerStylesSheetsAsCards(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 _allowsStylingSheetsAsCards];
  }

  return v2;
}

id __UIKitSharedBoundingPathDataManager()
{
  if (qword_1ED4A2660 != -1)
  {
    dispatch_once(&qword_1ED4A2660, &__block_literal_global_57_3);
  }

  v1 = qword_1ED4A2658;

  return v1;
}

void __InitializeUIKitBundlePath()
{
  v2 = _UIKitBundle();
  v0 = [v2 bundlePath];
  v1 = __kitLocation;
  __kitLocation = v0;
}

id _UIKitResourceBundlePath(void *a1)
{
  v1 = a1;
  v2 = _UIKitBundlePath();
  v3 = [v2 stringByAppendingPathComponent:v1];

  return v3;
}

id _UIKitBundlePath()
{
  pthread_once(&_UIKitBundlePath_initUIKitBundleLocationOnce, __InitializeUIKitBundlePath);
  v0 = __kitLocation;

  return v0;
}

uint64_t sub_188AE041C(uint64_t a1, void *aBlock, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v4(sub_188A7A458, v6, sub_188A7A458, v8);
}

uint64_t sub_188AE04F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188AE0560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t (*)@<X0>(uint64_t *@<X8>), void *))
{
  v6[2] = a3;
  v6[3] = a4;
  return a5(a1, a2, sub_188A79B08, v6);
}

uint64_t sub_188AE05AC(uint64_t (*a1)(void), uint64_t a2, void *(*a3)(void *__return_ptr), uint64_t a4, void *a5)
{
  v100 = a4;
  v101 = a3;
  v7 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v91[-v10];
  sub_188E1B6FC(&v91[-v10]);
  v12 = sub_188E1B1AC();
  v103 = [a5 _vibrancy];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
  v105 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v91[-v14];
  v16 = sub_188B56DB8();
  v108 = v15;
  if (v16)
  {
    v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x60);
    v18 = v11;
    v19 = v16;
    v20 = sub_18A4A2DB8();
    v21 = v12;
    v22 = *(v20 - 8);
    (*(v22 + 16))(v15, &v19[v17], v20);

    v11 = v18;
    (*(v22 + 56))(v15, 0, 1, v20);
    v12 = v21;
  }

  else
  {
    v23 = sub_18A4A2DB8();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  }

  v104 = [a5 userInterfaceStyle];
  v102 = [a5 _userInterfaceRenderingMode];
  v24 = a1();
  v25 = v106;
  sub_188E1B6FC(v106);

  v26 = sub_188A82354(v11, v25);
  v27 = sub_188AD77B4(v25);
  v28 = (a1)(v27);
  v29 = sub_188E1B1AC();

  if (!v12)
  {
    if (!v29)
    {
      v34 = 1;
      goto LABEL_15;
    }

LABEL_11:
    v107 = 0;
    if (_UIMaterialPresentationsEnabled())
    {
      goto LABEL_16;
    }

LABEL_12:
    v35 = 0;
    if (_UIMaterialPresentationsEnabled())
    {
      goto LABEL_17;
    }

LABEL_13:
    v36 = 0;
    goto LABEL_28;
  }

  if (!v29)
  {
    goto LABEL_11;
  }

  v30 = *(v12 + 16);
  v31 = v26;
  v32 = *(v29 + 16);

  v33 = v30 == v32;
  v26 = v31;
  v34 = v33;
LABEL_15:
  v107 = v34;
  if ((_UIMaterialPresentationsEnabled() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v37 = a1();
  v38 = [v37 _vibrancy];

  v35 = v103 != v38;
  if (!_UIMaterialPresentationsEnabled())
  {
    goto LABEL_13;
  }

LABEL_17:
  v96 = v35;
  v97 = v26;
  v99 = v11;
  v39 = a1();
  v95 = v91;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v91[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_188B56DB8();

  v98 = v12;
  if (v42)
  {
    v43 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x60);
    v44 = sub_18A4A2DB8();
    v45 = *(v44 - 8);
    (*(v45 + 16))(v41, &v42[v43], v44);

    (*(v45 + 56))(v41, 0, 1, v44);
  }

  else
  {
    v44 = sub_18A4A2DB8();
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF68);
  v94 = v91;
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v91[-v47];
  v50 = *(v49 + 56);
  sub_189071868(v108, &v91[-v47]);
  sub_189071868(v41, &v48[v50]);
  sub_18A4A2DB8();
  v51 = *(v44 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v44);
  if (v53 == 1)
  {
    sub_188A3F5FC(v41, &qword_1EA935D70);
    v54 = v52(&v48[v50], 1, v44);
    v35 = v96;
    if (v54 == 1)
    {
      sub_188A3F5FC(v48, &qword_1EA935D70);
      v36 = 0;
LABEL_26:
      v11 = v99;
      v26 = v97;
      goto LABEL_28;
    }

LABEL_25:
    sub_188A3F5FC(v48, &qword_1EA93AF68);
    v36 = 1;
    goto LABEL_26;
  }

  v93 = v91;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v91[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_189071868(v48, v56);
  v57 = v52(&v48[v50], 1, v44);
  if (v57 == 1)
  {
    sub_188A3F5FC(v41, &qword_1EA935D70);
    (*(v51 + 8))(v56, v44);
    v35 = v96;
    goto LABEL_25;
  }

  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v91[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v51 + 32))(v60, &v48[v50], v44, v58);
  sub_1890718D8();
  v92 = sub_18A4A7248();
  v61 = *(v51 + 8);
  v61(v60, v44);
  sub_188A3F5FC(v41, &qword_1EA935D70);
  v61(v56, v44);
  sub_188A3F5FC(v48, &qword_1EA935D70);
  v36 = v92 ^ 1;
  v11 = v99;
  v35 = v96;
  v26 = v97;
LABEL_28:
  v62 = a1();
  v63 = [v62 userInterfaceStyle];

  if (_UIMaterialPresentationsEnabled())
  {
    v64 = a1();
    v65 = [v64 _userInterfaceRenderingMode];

    v66 = v102 != v65;
    v67 = v26 & v107 ^ 1 | v36 | v66 | v35;
    v68 = v67 & v66;
    if ((v67 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    v69 = v104;
    goto LABEL_34;
  }

  v68 = 0;
  if (v36 & 1 | ((v26 & v107 & 1) == 0) | v35)
  {
    goto LABEL_33;
  }

LABEL_30:
  v69 = v104;
  if (v104 == v63)
  {

    sub_188A3F5FC(v108, &qword_1EA935D70);
    return sub_188AD77B4(v11);
  }

LABEL_34:
  v71 = v101(v109);
  if (v26)
  {
    if (v107)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v77 = v35;
    v78 = v106;
    sub_188C8CD6C(v11, v106);
    v79 = v110;
    v80 = v111;
    __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
    v81 = v78;
    v35 = v77;
    v71 = sub_188AC7FC4(v81, v79, v80);
    if (v107)
    {
LABEL_36:
      if (v35)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }
  }

  v82 = v110;
  v83 = v111;
  __swift_mutable_project_boxed_opaque_existential_1(v109, v110);

  v71 = sub_188F2C7D8(v84, v82, v83);
  if (v35)
  {
LABEL_37:
    v72 = v110;
    v73 = v111;
    __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
    v71 = UIMutableTraits._vibrancy.setter(v103, v72, v73);
    if ((v36 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_43:
  if ((v36 & 1) == 0)
  {
LABEL_38:
    if (v69 != v63)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

LABEL_44:
  MEMORY[0x1EEE9AC00](v71);
  v86 = &v91[-((v85 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_189071868(v108, v86);
  v87 = v110;
  v88 = v111;
  __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  sub_188F65750(v86, v87, v88);
  if (v69 != v63)
  {
LABEL_39:
    v74 = v110;
    v75 = v111;
    __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
    UIMutableTraits.userInterfaceStyle.setter(v69, v74, v75);
    v76 = v108;
    if (!v68)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_45:
  v76 = v108;
  if (v68)
  {
LABEL_46:
    v89 = v110;
    v90 = v111;
    __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
    UIMutableTraits._userInterfaceRenderingMode.setter(v102, v89, v90);
  }

LABEL_47:

  sub_188A3F5FC(v76, &qword_1EA935D70);
  sub_188AD77B4(v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v109);
}

id _UISheetPresentationControllerFindViewControllerOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if ((!a3 || (objc_opt_isKindOfClass() & 1) == 0) && [v5 childViewControllersCount] <= 1)
    {
      v7 = [v5 _existingView];
      v8 = [v7 subviews];
      v9 = [v8 count];

      if (v9 <= 1)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v5 childViewControllers];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = _UISheetPresentationControllerFindViewControllerOfClass(*(*(&v17 + 1) + 8 * i), a2, a3);
              if (v15)
              {
                v6 = v15;

                goto LABEL_17;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v6 = 0;
  }

LABEL_17:

  return v6;
}

double _UISheetDismissOffset(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  if (CGRectIsNull(v24))
  {
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    if (!a1)
    {
LABEL_3:

      return CGRectGetMaxY(*&v18);
    }
  }

  else
  {
    v18 = a6;
    v19 = a7;
    v20 = a8;
    v21 = a9;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  return CGRectGetMinY(*&v18);
}

void sub_188AE1CF0(double a1, double a2, double a3, double a4)
{
  if (_UISolariumEnabled())
  {
    v9 = [v4 traitCollection];
    v10 = sub_18919A3F8(v9);

    v11 = [v4 layer];
    [v10 bottomLeft];
    if (a2 == 1.79769313e308)
    {
      v13 = v12;
    }

    else
    {
      v12 = a2;
      v13 = a2;
    }

    v14 = signpost_c2_entryLock_start(v12, v13);
    v16 = v15;
    [v10 bottomRight];
    if (a3 == 1.79769313e308)
    {
      v18 = v17;
    }

    else
    {
      v17 = a3;
      v18 = a3;
    }

    v19 = signpost_c2_entryLock_start(v17, v18);
    v21 = v20;
    [v10 topRight];
    if (a4 == 1.79769313e308)
    {
      v23 = v22;
    }

    else
    {
      v22 = a4;
      v23 = a4;
    }

    v24 = signpost_c2_entryLock_start(v22, v23);
    v26 = v25;
    [v10 topLeft];
    if (a1 == 1.79769313e308)
    {
      v28 = v27;
    }

    else
    {
      v27 = a1;
      v28 = a1;
    }

    *v30 = v14;
    v30[1] = v16;
    *&v30[2] = v19;
    v30[3] = v21;
    *&v30[4] = v24;
    v30[5] = v26;
    v30[6] = signpost_c2_entryLock_start(v27, v28);
    v30[7] = v29;
    [v11 setCornerRadii_];
  }
}

double _UIWindowConvertRectFromOrientationToOrientation(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a2)
  {
    v10[8] = v8;
    v10[9] = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___UIWindowConvertRectFromOrientationToOrientation_block_invoke;
    v10[3] = &__block_descriptor_64_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
    *&v10[4] = a7;
    *&v10[5] = a8;
    v10[6] = a1;
    v10[7] = a2;
    return _UIRectTransformByTransformingCorners(v10, result, a4, a5, a6);
  }

  return result;
}

uint64_t _UIRectEdgeConvertedFromOrientationToPortrait(unint64_t a1, uint64_t a2)
{
  v2 = (a1 >> 1) & 7 | (8 * (a1 & 1));
  v3 = (a1 >> 3) & 1 | (2 * (a1 & 7));
  if (a2 != 4)
  {
    v3 = 0;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  v4 = (a1 >> 2) & 3 | (4 * (a1 & 3));
  if (a2 != 2)
  {
    v4 = 0;
  }

  if (a2 < 2)
  {
    v4 = a1;
  }

  if (a2 <= 2)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t _UIBoundingPathBitmapDataRowHitTest(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v6 = a1[1];
  if (v6 && (a3 & 0x8000000000000000) == 0 && a3 <= v6)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    if (a2 > v3)
    {
      return 0;
    }

    if (a2 >= v3 - 1)
    {
      v7 = v3 - 1;
    }

    else
    {
      v7 = a2;
    }

    if (a3 >= v6 - 1)
    {
      v8 = v6 - 1;
    }

    else
    {
      v8 = a3;
    }

    v9 = a1[2];
    if (v8 >= v9)
    {
      v10 = a1[3];
      if (v8 < v10 + v9)
      {
        return 1;
      }

      v8 -= v10;
    }

    v11 = a1[5];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = v11 * v8;
      while (1)
      {
        if (v14 >= a1[4])
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRowHitTestResult _UIBoundingPathBitmapDataRowHitTest(const _UIBoundingPathBitmapData, const _UIIntegralPoint)"}];
          [v21 handleFailureInFunction:v20 file:@"_UIBoundingPathBitmapData.h" lineNumber:248 description:{@"Bitmap data is invalid: width=%lu; height=%lu; skipRegionY=%lu; skipRegionHeight=%lu; nodeCount=%lu; maximumNodesPerRow=%lu", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]}];
        }

        v15 = *(a1[6] + 2 * v14);
        v13 += v15 & 0x7FFF;
        if (v13 > v7)
        {
          return v15 >> 15;
        }

        ++v12;
        ++v14;
        if (v12 >= a1[5])
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRowHitTestResult _UIBoundingPathBitmapDataRowHitTest(const _UIBoundingPathBitmapData, const _UIIntegralPoint)"}];
      v18 = *(a1 + 1);
      v22[0] = *a1;
      v22[1] = v18;
      v22[2] = *(a1 + 2);
      v23 = a1[6];
      v19 = _UIBoundingPathBitmapDataDescription(v22);
      [v16 handleFailureInFunction:v17 file:@"_UIBoundingPathBitmapData.h" lineNumber:260 description:{@"Bitmap is invalid: column %lu is missing for row %lu of bitmap data: %@", v7, v8, v19}];

      return 0;
    }
  }

  return result;
}

void setEnvironmentMatchingCornerRadius(void *a1, void *a2, uint64_t a3, char a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  if (a5 == 1.79769313e308)
  {
    v13 = a6;
  }

  else
  {
    v13 = a5;
  }

  v14 = [UICornerRadius fixedRadius:v13];
  v15 = [UICornerConfiguration _configurationWithRadius:v14 mask:a4 & 0xF];
  [v11 setCornerConfiguration:v15];

  if (a5 == 1.79769313e308)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __setEnvironmentMatchingCornerRadius_block_invoke;
    v16[3] = &unk_1E7107000;
    v17 = v12;
    v19 = a3;
    v20 = 0x7FEFFFFFFFFFFFFFLL;
    v18 = v11;
    [UIView _addOrPerformCompletion:v16];
  }

  else
  {
    [v11 setClipsToBounds:1];
  }
}

uint64_t __setEnvironmentMatchingCornerRadius_block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = **(result + 48);
    if (v1 == *(result + 56))
    {
      return [*(result + 40) setClipsToBounds:{0, v1}];
    }
  }

  return result;
}

uint64_t sub_188AE32B0()
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = sub_18A4A2BD8();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18A4A2BA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = v0;
  v15 = [(UIPresentationController *)v0 _typedStorage];
  v16 = sub_188A4CEC4();

  if (v16)
  {
    sub_18913E3AC(12);
  }

  v46 = v16;
  v40 = *(v4 + 56);
  v40(v13, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 848);
  *(StatusReg + 848) = v13;
  v47 = v13;
  v19 = byte_1ED4A3680;
  byte_1ED4A3680 = 1;
  [v14 containerViewDidLayoutSubviews];
  *(StatusReg + 848) = v18;
  v20 = v3;
  v21 = v4;
  byte_1ED4A3680 = v19;
  v22 = v47;
  sub_188A3F29C(v47, v10, &qword_1EA93E090);
  if ((*(v4 + 48))(v10, 1, v20) == 1)
  {
    sub_188A3F5FC(v22, &qword_1EA93E090);
    sub_188A3F5FC(v10, &qword_1EA93E090);
  }

  else
  {
    v23 = v45;
    (*(v4 + 32))(v45, v10, v20);
    v24 = sub_188ACEB88(v14, 12, &block_descriptor_78_2);
    v25 = v14;
    v26 = v46;
    if (!v46)
    {
      v27 = [(UIPresentationController *)v25 _typedStorage];
      v26 = sub_188A4CEC4();
    }

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 12;
    *(v29 + 25) = v24;
    *(v29 + 32) = sub_18913F490;
    *(v29 + 40) = 0;
    v30 = v41;
    (*(v21 + 16))(v41, v23, v20);
    v40(v30, 0, 1, v20);
    v46 = v28;

    v31 = v42;
    sub_18A4A2BE8();
    if (!v26)
    {
      type metadata accessor for TrackingDictionary();
      v32 = swift_allocObject();
      *(v32 + 16) = MEMORY[0x1E69E7CC8];
      swift_retain_n();
      v33 = [(UIPresentationController *)v25 _typedStorage];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      v35 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(&v33->super.isa + v35);
      *(&v33->super.isa + v35) = 0x8000000000000000;
      sub_188A40430(v34, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
      *(&v33->super.isa + v35) = v48;
      v23 = v45;
      swift_endAccess();

      v22 = v47;
    }

    swift_retain_n();
    sub_188ACEFD4(v31, 12);

    v37 = swift_allocObject();
    *(v37 + 16) = sub_188B57AD4;
    *(v37 + 24) = v29;

    MEMORY[0x18CFDDAE0](v31, 0, 0, sub_188B57248, v37);

    (*(v43 + 8))(v31, v44);
    (*(v21 + 8))(v23, v20);
    sub_188A3F5FC(v22, &qword_1EA93E090);
  }
}

void _UIViewControllerTransitioningRunCustomTransitionWithRequest(void *a1)
{
  v1 = a1;
  v20 = [v1 animator];
  v21 = [v1 pinningInputViewsResponder];
  v2 = [v1 interactor];
  v18 = [v1 extraPinningInputViewsBlock];
  v3 = [v1 keyboardShouldAnimateAlongsideForInteractiveTransitions];
  v4 = [v1 transitionContext];
  v5 = [v1 keyboardAnimationStyle];
  v6 = [v1 interactiveUpdateHandler];
  v7 = [v4 containerView];
  v8 = [v7 keyboardSceneDelegate];

  if (v2)
  {
    [v4 _addInteractiveUpdateHandler:v6];
    [v4 _setTransitionIsCompleting:0];
    if (v3)
    {
      v9 = [v4 _auxContext];
      [v8 prepareForAlongsideTransitionWithContext:v9];
    }
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = ___UIViewControllerTransitioningRunCustomTransitionWithRequest_block_invoke;
  v32[3] = &unk_1E70F35B8;
  v33 = v5;
  v34 = v4;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___UIViewControllerTransitioningRunCustomTransitionWithRequest_block_invoke_2;
  v22[3] = &unk_1E7104770;
  v23 = v8;
  v24 = v21;
  v25 = v1;
  v26 = v20;
  v31 = v2 != 0;
  v27 = v34;
  v28 = v2;
  v29 = v6;
  v30 = v18;
  v19 = v18;
  v10 = v6;
  v11 = v2;
  v12 = v34;
  v13 = v20;
  v14 = v1;
  v15 = v21;
  v16 = v8;
  v17 = v5;
  +[UIView _setAlongsideAnimations:toRunByEndOfBlock:animated:](UIView, "_setAlongsideAnimations:toRunByEndOfBlock:animated:", v32, v22, [v12 isAnimated]);
}

uint64_t _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 _isNestedNavigationController] & 1) == 0)
  {
    v6 = [v3 navigationBar];
    if (dyld_program_sdk_at_least())
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {

        goto LABEL_10;
      }

      v7 = [v6 _hasLegacyProvider];

      if ((v7 & 1) == 0)
      {
LABEL_10:
        if ([v6 _hasVariableHeight])
        {
          v5 = 1;
        }

        else
        {
          v5 = [v3 _canHostRefreshControlOwnedByScrollView:v4];
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v5 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

void sub_188AE4B20(void *a1, char a2)
{
  if (!a1)
  {
    return;
  }

  v3 = v2;
  v156 = a1;
  if (!sub_188AE6618())
  {
    v5 = [v2 navigationBar];
    v6 = [v5 window];

    if (v6)
    {

      v151 = [v156 item];
      v7 = v151;
      v8 = [v3 navigationBar];
      v9 = [v8 _effectiveDelegate];

      if (v9)
      {
        if ([v9 respondsToSelector_])
        {
          v10 = [v9 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v10 = 0;
        }
      }

      else
      {
        v10 = [v7 _searchControllerIfAllowed];
      }

      v11 = v7;
      v12 = [v3 navigationBar];
      v13 = [v12 _effectiveDelegate];

      if (v13)
      {
        if ([v13 respondsToSelector_])
        {
          v14 = [v13 _effectiveSearchControllerForScopeBarGivenTopNavigationItem_];
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v14 = 0;
        }
      }

      else
      {
        v14 = [v11 _searchControllerIfAllowed];
      }

      v155 = v10;
      if (v10)
      {
        v10 = [v10 searchBar];
      }

      if (v14)
      {
        v15 = [v14 searchBar];
      }

      else
      {
        v15 = 0;
      }

      v154 = v15;
      if (v10)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v147 = v17;
      v18 = [v11 _navigationBar];
      v19 = v18;
      v153 = v14;
      if (!v18)
      {
        if ((a2 & 1) == 0)
        {
          v20 = [v3 stack];
          v21 = [v20 state];

          if (v21 != 1)
          {
            v22 = [v3 stack];
            v23 = [v22 state];

            if (v23 != 2)
            {
              v30 = 0;
              v152 = 0;
              goto LABEL_41;
            }
          }
        }

        v24 = [v3 navigationBar];
        if (!v24)
        {
          v30 = 0;
          v152 = 0;
          goto LABEL_41;
        }

        v19 = v24;
        v18 = 0;
      }

      v25 = v18;
      v26 = [v19 traitCollection];
      v27 = v11;
      v28 = [v3 navigationBar];
      v29 = [v28 _effectiveDelegate];

      v152 = v19;
      if (v29)
      {
        if ([v29 respondsToSelector_])
        {
          v30 = [v29 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem_traitCollection_];

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v30 = 0;
        }
      }

      else
      {
        v30 = [v27 _hasIntegratedSearchBarInNavigationBar];
      }

LABEL_41:
      [v155 _setDisplaysSearchBarItemGroupInline_];
      if (v10)
      {
        v31 = v10;
        if (v30 == [v10 _isHostedInlineByNavigationBar])
        {
LABEL_47:
          v38 = [(_UINavigationBarItemStackEntry *)v156 _typedStorage];
          v39 = sub_18901F250();

          v40 = [(_UINavigationBarItemStackEntry *)v156 _typedStorage];
          v41 = sub_18901F25C();

          v150 = v10;
          if (v10)
          {
            if (!v39)
            {
              goto LABEL_71;
            }

            v42 = *(v39 + 25) ^ v30 ^ 1 | (v41 == 0);
            v43 = 1;
            if (((*(v39 + 25) ^ v30) & 1) == 0 && v41)
            {
              if (*(v41 + 25) == v30)
              {
                v45 = v155;
                if (v155)
                {
                  v45 = [v155 _hidesNavigationBarDuringPresentationRespectingInlineSearch];
                }

                v42 = 0;
                v43 = v45 ^ (*(v41 + 56) == 0);
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v43 = 0;
            if (v154)
            {
              v44 = v41 == 0;
            }

            else
            {
              v44 = 0;
            }

            v42 = v44;
          }

          if (*&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
          {
            if (v39)
            {
              if ((v42 & 1) == 0 && (v43 & 1) == 0)
              {

                return;
              }

              goto LABEL_70;
            }
          }

          else if (v39)
          {
LABEL_70:
            v46 = v30;
            v47 = v41;
            v48 = v39;
            goto LABEL_72;
          }

LABEL_71:
          v46 = v30;
          v47 = v41;
          type metadata accessor for NavigationBarLayout();
          swift_allocObject();
          sub_188B3343C();
          v48 = v49;
          v50 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion];
          *(v49 + 264) = 2;
          *(v49 + 272) = v50;
          swift_retain_n();
          v51 = [(_UINavigationBarItemStackEntry *)v156 _typedStorage];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C6C0);
          v52 = swift_allocObject();
          *(v52 + 16) = v48;
          v53 = OBJC_IVAR____UITypedStorage_storage;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v158 = *&v51[v53];
          *&v51[v53] = 0x8000000000000000;
          sub_188A40430(v52, &_s15NormalLayoutKeyVN, isUniquelyReferenced_nonNull_native);
          *&v51[v53] = v158;
          swift_endAccess();

LABEL_72:
          swift_retain_n();
          v55 = [v3 navigationBar];
          v56 = [v55 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

          *(v48 + 257) = v56;
          *(v48 + 256) = [v11 _isManualScrollEdgeAppearanceEnabled];
          v57 = sub_188B39FF8();
          v58 = [v11 prompt];
          if (v58)
          {
            v59 = v58;
            sub_18A4A7288();
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }

          *(v48 + 208) = v57;
          v62 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
          v63 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
          v64 = *(v48 + 96);
          *(v48 + 96) = v63;
          v65 = v63;

          if (v61)
          {
            v66 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
            v67 = v66;
          }

          else
          {
            v66 = 0;
          }

          sub_188B3A658(v66);
          *(v48 + 25) = v46;
          if (v46)
          {
            v68 = 0;
          }

          else
          {
            v69 = v150;
            v68 = v150;
          }

          sub_188B39AB4(v68);
          sub_188B3A9F4([v11 _hidesSearchBarWhenScrollingIfAllowed]);
          v70 = [*(v48 + 136) _viewStackedInNavigationBar];
          v71 = *(v48 + 144);
          *(v48 + 144) = v70;

          *(v48 + 26) = [v11 _preserveSearchBarAcrossTransitions];
          *(v48 + 24) = [v11 _backgroundHidden];
          v72 = *&v3[v62];
          if (v72 && v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
          {
            v73 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha];
            v74 = v72;
            [v74 alpha];
            if (v75 != v73)
            {
              [v74 setAlpha_];
            }
          }

          v76 = sub_188B376FC(v151);
          if ((v76 & 1) != *(v48 + 240))
          {
            *(v48 + 240) = v76 & 1;
            sub_188B386EC();
          }

          [v11 _manualScrollEdgeAppearanceProgress];
          *(v48 + 248) = v77;
          if (*(v48 + 240) == 1)
          {
            sub_188B386EC();
          }

          v146 = v62;
          v148 = v61;
          v78 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
          v79 = v78 != 0;
          v80 = *(v48 + 280);
          *(v48 + 280) = v79;
          if (v79 != v80)
          {
            swift_beginAccess();
            v81 = *(v48 + 376);
            v82 = v81;
            if (v78)
            {
              v83 = 6;
            }

            else
            {
              v83 = 3;
            }

            sub_189167D48(v81, v83);
          }

          *(v48 + 64) = [v3 contentViewVisualProvider];

          swift_unknownObjectRelease();
          v84 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
          v85 = *(v48 + 56);
          if (v85)
          {
            type metadata accessor for NavigationBarContentView();
            v86 = v84;
            v87 = v85;
            v88 = sub_18A4A7C88();

            if (v88)
            {
              goto LABEL_100;
            }

            v86 = *(v48 + 56);
          }

          else
          {
            v89 = v84;
            v86 = 0;
          }

          *(v48 + 56) = v84;
LABEL_100:

          sub_188B395C4();
          v90 = [v11 _topPalette];
          v149 = v90;
          sub_188B3A7F0(v90);
          v91 = [v11 _bottomPalette];
          v92 = v91;
          sub_188B39DEC(v91);
          v93 = v11;
          if (sub_188B2941C())
          {
            v94 = v92;
            v95 = [v3 stack];
            v96 = [v95 effectiveDisplayModeForItemInCurrentStack_];

            v97 = sub_188B3B828(v96);
            if (v96 == 3)
            {
              v98 = sub_188B9BE44(v93);

              v92 = v94;
              if (((v98 != 1) & v97) != 0)
              {
                goto LABEL_107;
              }
            }

            else
            {

              v92 = v94;
              if (v97)
              {
LABEL_107:
                v100 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
                v101 = v100;
                sub_188B38550(v100);
                v102 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
                v103 = v102;
                v99 = v102;
LABEL_108:
                sub_188B39D20(v99);
                if (!(v150 | v154))
                {

                  v104 = v153;
LABEL_149:

                  return;
                }

                v145 = v92;
                if (v47)
                {
                  v105 = v47;
                }

                else
                {
                  type metadata accessor for NavigationBarLayout();
                  swift_allocObject();
                  sub_188B3343C();
                  v105 = v106;
                  v107 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion];
                  *(v106 + 264) = 3;
                  *(v106 + 272) = v107;
                  swift_retain_n();
                  v108 = [(_UINavigationBarItemStackEntry *)v156 _typedStorage];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C6C0);
                  v109 = swift_allocObject();
                  *(v109 + 16) = v105;
                  v110 = OBJC_IVAR____UITypedStorage_storage;
                  swift_beginAccess();

                  v111 = swift_isUniquelyReferenced_nonNull_native();
                  v157 = *&v108[v110];
                  *&v108[v110] = 0x8000000000000000;
                  sub_188A40430(v109, &_s15SearchLayoutKeyVN, v111);
                  *&v108[v110] = v157;
                  swift_endAccess();
                }

                swift_retain_n();
                v112 = [v3 navigationBar];
                v113 = [v112 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

                *(v105 + 257) = v113;
                *(v105 + 208) = v57;
                v114 = *&v3[v146];
                v115 = *(v105 + 96);
                *(v105 + 96) = v114;
                v116 = v114;

                if (v148)
                {

                  v117 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
                  v118 = v117;
                }

                else
                {
                  v117 = 0;
                }

                sub_188B3A658(v117);
                *(v105 + 25) = v46;
                v119 = v150;
                if (!v150)
                {
                  v119 = v154;
                  v120 = v154;
                }

                v121 = v150;
                sub_188B39AB4(v119);
                if (v147)
                {
                  v122 = 0;
                }

                else
                {
                  v122 = [*(v105 + 136) _viewStackedInNavigationBar];
                }

                v123 = *(v105 + 144);
                *(v105 + 144) = v122;

                *(v105 + 26) = [v93 _preserveSearchBarAcrossTransitions];
                if (*(v105 + 217) == 1)
                {
                  *(v105 + 217) = 0;
                  if (*(v105 + 136))
                  {
                    swift_beginAccess();
                    v124 = *(v105 + 360);
                    if (v124)
                    {
                      v124[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = 0;
                      v125 = v124;
                      sub_188CC4A88(v125, 2);
                    }
                  }
                }

                *(v105 + 24) = [v93 _backgroundHidden];
                *(v105 + 64) = [v3 contentViewVisualProvider];
                swift_unknownObjectRelease();
                if (v155)
                {
                  v126 = v155;
                  if ([v126 _hidesNavigationBarDuringPresentationRespectingInlineSearch])
                  {
                    v127 = *(v105 + 56);
                    *(v105 + 56) = 0;

                    [*(v105 + 72) removeFromSuperview];
                    v128 = *(v105 + 72);
                    *(v105 + 72) = 0;

                    sub_188B395C4();
                    v129 = *(v105 + 80);
                    v130 = *(v105 + 88);
                    *(v105 + 80) = 0;
                    *(v105 + 88) = 0;

                    sub_188B36AB8();
                    v131 = *(v105 + 120);
                    if (v131)
                    {
                      *(v105 + 120) = 0;
                    }

                    else
                    {
                    }

                    v138 = v145;
                    if (!v149)
                    {
                      goto LABEL_134;
                    }

                    goto LABEL_131;
                  }
                }

                v132 = *(v48 + 56);
                v133 = v132;

                sub_188CD95D8(v132);

                v134 = *(v48 + 80);
                v135 = v134;
                sub_188B38550(v134);
                v136 = *(v48 + 120);
                v137 = v136;
                sub_188B39D20(v136);
                v138 = v145;
                if (!v149)
                {
LABEL_134:
                  v139 = 0;
LABEL_135:
                  sub_188B3A7F0(v139);
                  if (v138)
                  {
                    v140 = [(_UINavigationBarPalette *)v138 _paletteForSearch];
                  }

                  else
                  {
                    v140 = 0;
                  }

                  sub_188B39DEC(v140);

                  if (_UIBarsApplyChromelessEverywhere())
                  {
                    v141 = [v3 navigationBar];
                    v142 = [v141 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

                    if (v142)
                    {
                      v143 = sub_188B376FC(v151) & 1;

                      if (v143 != *(v105 + 240))
                      {
                        *(v105 + 240) = v143;
                        sub_188B386EC();
                      }

                      [v93 _manualScrollEdgeAppearanceProgress];
                      *(v105 + 248) = v144;
                      if (*(v105 + 240) == 1)
                      {
                        sub_188B386EC();
                      }

                      goto LABEL_148;
                    }
                  }

                  else
                  {
                  }

LABEL_148:

                  v104 = v154;
                  goto LABEL_149;
                }

LABEL_131:
                v139 = [(_UINavigationBarPalette *)v149 _paletteForSearch];
                goto LABEL_135;
              }
            }
          }

          else
          {
          }

          sub_188B38550(0);
          v99 = 0;
          goto LABEL_108;
        }
      }

      else
      {
        if (!v30)
        {
          goto LABEL_47;
        }

        v31 = 0;
      }

      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD0000000000000B5, 0x800000018A6A5C90);
      v32 = [v3 navigationBar];
      v33 = [v32 description];
      v34 = sub_18A4A7288();
      v36 = v35;

      MEMORY[0x18CFE22D0](v34, v36);
      v14 = v153;

      v37 = sub_18A4A7258();

      __UIKIT_SOFT_ASSERT_FAIL(v37);

      [v31 _setHostedInlineByNavigationBar_];
      goto LABEL_47;
    }
  }
}

void sub_188AE5E30(double a1)
{
  v2 = v1;
  v4 = [v1 itemForMeasuring];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _stackEntry];
    if (v6)
    {
      v7 = v6;
      goto LABEL_11;
    }
  }

  else
  {
    v8 = [v1 stack];
    v9 = [v8 itemCount];

    if (!v9)
    {
      v13 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
      sub_188AECA30();

      return;
    }

    v10 = [v2 stack];
    v11 = [v10 transitionAssistant];

    if (v11)
    {
      [v11 cancelledTransition];

      v12 = &selRef_previousTopEntry;
    }

    else
    {
      v12 = &selRef_topEntry;
    }

    v14 = [v2 stack];
    v7 = [v14 *v12];

    if (v7)
    {
      v5 = [v7 item];
LABEL_11:
      v15 = qword_1ED48E078;
      v16 = v7;
      if (v15 != -1)
      {
        swift_once();
      }

      if (byte_1EA930D91 == 1)
      {
        v17 = [v16 item];
        v18 = [v17 _navigationBar];

        v19 = [v2 navigationBar];
        v20 = v19;
        if (v18)
        {
          if (!v19)
          {
            v20 = v18;
            goto LABEL_23;
          }

          sub_188A34624(0, &qword_1ED48C8F8);
          v21 = sub_18A4A7C88();

          if ((v21 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (v19)
        {
LABEL_23:

LABEL_24:
          v26 = [v16 isSearchActive];
          v27 = [(_UINavigationBarItemStackEntry *)v16 _typedStorage];
          if (v26)
          {
            v28 = sub_18901F25C();
          }

          else
          {
            v28 = sub_18901F250();
          }

          v29 = v28;

          if (v29)
          {
            v30 = sub_188B539FC(a1);

            goto LABEL_55;
          }

          goto LABEL_48;
        }
      }

      v20 = v16;
      sub_188AE4B20(v7, 1);
      goto LABEL_23;
    }
  }

  v22 = [objc_opt_self() newEntryForItem_];
  v16 = v22;
  sub_188AE4B20(v22, 1);

  if (v16)
  {
    v23 = [v16 isSearchActive];
    v24 = [(_UINavigationBarItemStackEntry *)v16 _typedStorage];
    v25 = v23 ? sub_18901F25C() : sub_18901F250();
    v30 = v25;

    if (v30)
    {
      UIFloorToScale(0.0, 6.0);
      v32 = *(v30 + 224) == a1 && v31 == *(v30 + 232);
      if (!v32 || (*(v30 + 40) & 1) == 0)
      {
        *(v30 + 224) = a1;
        *(v30 + 232) = v31;
        sub_188B38ED0(a1);
        swift_beginAccess();
        v33 = *(v30 + 344);
        v34 = v33;
        if (!v33)
        {
          v34 = *(v30 + 352);
          v35 = v34;
        }

        swift_beginAccess();
        v36 = *(v30 + 232);
        v37 = v33;

        sub_188B3A13C(v38, v34, v36);

        swift_beginAccess();
        v39 = *(v30 + 400);
        if (v39 >> 62)
        {
          goto LABEL_73;
        }

        v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      }

      while (1)
      {
LABEL_55:
        swift_beginAccess();
        v34 = *(v30 + 400);
        if (v34 >> 62)
        {
          v39 = sub_18A4A7F68();
          if (!v39)
          {
LABEL_70:

LABEL_71:
            return;
          }
        }

        else
        {
          v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v39)
          {
            goto LABEL_70;
          }
        }

        if (v39 >= 1)
        {
          v57 = v16;

          v48 = 0;
          v49 = 0.0;
          v50 = 0.0;
          v51 = 0.0;
          do
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v55 = sub_188E4A488(v48, v34);
            }

            else
            {
              v55 = *(v34 + 8 * v48 + 32);
            }

            v56 = 0.0;
            if ((v55[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
            {
              v56 = *&v55[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
            }

            ++v48;
            v52 = *&v55[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
            v51 = v51 + v56;
            v53 = v55[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded];

            if (v53)
            {
              v54 = v52;
            }

            else
            {
              v54 = v56;
            }

            v50 = v50 + v54;
            v49 = v49 + v52;
          }

          while (v39 != v48);

          v16 = v57;
          goto LABEL_71;
        }

        __break(1u);
LABEL_73:
        v40 = sub_18A4A7F68();
        if (v40)
        {
LABEL_42:
          if (v40 < 1)
          {
            __break(1u);
            return;
          }

          v41 = 0;
          v42 = 0.0;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v43 = sub_188E4A488(v41, v39);
            }

            else
            {
              v43 = *(v39 + 8 * v41 + 32);
            }

            ++v41;
            v44 = &v43[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
            *v44 = v42;
            *(v44 + 8) = 0;
            v45 = *&v43[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

            v42 = v42 + v45;
          }

          while (v40 != v41);
        }

LABEL_54:
        *(v30 + 40) = 1;
        sub_188B386EC();
      }
    }
  }

LABEL_48:
  v46 = [v2 navigationBar];
  v47 = [v46 traitCollection];

  if (v47 && [v47 userInterfaceIdiom] == 5)
  {
  }

  else
  {
    _UIBarsUseNewPadHeights();
  }
}

uint64_t sub_188AE6530()
{
  v1 = [v0 stack];
  v2 = [v1 topEntry];

  if (v2)
  {
    v3 = v2;
    sub_188AE4B20(v2, 0);

    v4 = [v3 isSearchActive];
    v5 = [(_UINavigationBarItemStackEntry *)v3 _typedStorage];
    if (v4)
    {
      v6 = sub_18901F25C();
    }

    else
    {
      v6 = sub_18901F250();
    }

    v8 = v6;

    if (v8)
    {
      sub_188B39358();
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_188AE6618()
{
  v1 = [v0 navigationBar];
  v2 = [v1 delegate];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 _outermostNavigationController];
      v2 = [v5 navigationBar];
    }

    else
    {
      swift_unknownObjectRelease();
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = [v0 navigationBar];

  if (v2 && v6 == v2)
  {

    return 0;
  }

  v7 = [v0 navigationBar];
  v8 = [v7 topItem];

  if (v2)
  {
    v9 = [v2 topItem];

    if (v8)
    {
      if (v9)
      {
        swift_unknownObjectRelease();

        return v8 == v9;
      }

      goto LABEL_13;
    }

    if (v9)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {

    if (v8)
    {
LABEL_13:

      return 0;
    }
  }

  return 1;
}

id _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = [_UINavigationBarTitleFontProvider providerForIdiom:a2];
  v7 = v6;
  if (a3)
  {
    [v6 defaultLargeTitleWithSubtitleFont];
  }

  else
  {
    [v6 defaultLargeTitleFont];
  }
  v8 = ;
  v9 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v5, v8, 0);

  return v9;
}

BOOL _isNestedNavigationControllerFullyInstalledIntoContainingNavigationController(void *a1)
{
  v1 = a1;
  if ([v1 _isNestedNavigationController])
  {
    v2 = [v1 _outermostNavigationController];
    v3 = v2 != v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _UIUnifiedToolbarEnabled()
{
  result = _UIFloatingBarEnabled();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_NavigationControllerUnifiedToolbar, @"NavigationControllerUnifiedToolbar", _UIInternalPreferenceUpdateInteger);
    if (qword_1ED48AC50)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void sub_188AE6FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SpringBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E70F6500;
    v5 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIApplicationShortcutItem.m" lineNumber:18 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void *SpringBoardServicesLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710DF08;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary_0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIKeyboardInputModeController.m" lineNumber:106 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *SpringBoardServicesLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke_6;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711DD50;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary_2;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_2)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:486 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *SpringBoardServicesLibrary_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7128938;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary_3;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_3)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIAlertView_ViewServiceSupport.m" lineNumber:27 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *SpringBoardServicesLibrary_3()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke_9;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E712BF28;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary_4;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_4)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIWebClip.m" lineNumber:46 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

id _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(void *a1, void *a2, uint64_t a3, char a4)
{
  v7 = a2;
  if ([a1 _isNestedNavigationController])
  {
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 topViewController];
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
    if ((a4 & 1) == 0)
    {
      v11 = _viewControllerForObservableScrollViewForViewController(v9);

      v10 = v11;
    }

    v8 = [v10 _contentOrObservableScrollViewForEdge:a3];
  }

  return v8;
}

void *_viewControllerForObservableScrollViewForViewController(void *a1)
{
  v1 = a1;
  v2 = [v1 navigationItem];
  v3 = [v2 _searchControllerIfAllowed];
  v4 = [v3 _currentActiveChildViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v1;
  }

  v7 = v6;

  return v6;
}

UILabel *_UINavigationBarLargeTitleViewNewLabel()
{
  v0 = objc_alloc_init(UILabel);
  [(UILabel *)v0 setAdjustsFontForContentSizeCategory:_UIBarsUseDynamicType()];
  [(UILabel *)v0 setAllowsDefaultTighteningForTruncation:1];

  return v0;
}

id _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = *off_1E70EC918;
  v9 = [v5 objectForKey:*off_1E70EC918];

  v10 = *off_1E70EC920;
  v11 = [v5 objectForKey:*off_1E70EC920];

  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v27 = v10;
    v28 = v7;
    v29 = v6;
    v13 = objc_alloc(MEMORY[0x1E695DF90]);
    v14 = [v5 count];
    if (v14 <= 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14;
    }

    v23 = [v13 initWithCapacity:{v15, v8}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:v21];
          if (v22)
          {
            [v23 setObject:v22 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v6 = v29;
    if (!v9)
    {
      [v23 setObject:v29 forKeyedSubscript:v26];
    }

    v7 = v28;
    if (!v11)
    {
      if (v28)
      {
        [v23 setObject:v28 forKeyedSubscript:v27];
      }

      else
      {
        v25 = +[UIColor labelColor];
        [v23 setObject:v25 forKeyedSubscript:v27];
      }
    }
  }

  else
  {
    v23 = v5;
  }

  return v23;
}

uint64_t _UIUseModernBars()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    v1 = +[UIDevice currentDevice];
    v2 = [v1 userInterfaceIdiom];

    return v2 != 2 && v2 != 8 && v2 != -1;
  }

  return result;
}

uint64_t _UISMCBarsEnabled()
{
  if (qword_1ED49BF68 != -1)
  {
    dispatch_once(&qword_1ED49BF68, &__block_literal_global_63);
  }

  return _MergedGlobals_15_0;
}

uint64_t _isHeightOfTopViewsCoordinatedToMatchViewControllerOffsets(void *a1, void *a2)
{
  v3 = a1;
  v4 = _insetCoordinatableContentScrollViewForEdgePotentiallyIgnoringSearch(v3, a2, 1, 0);
  isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets = _isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets(v3, v4);

  return isHeightOfTopViewsCoordinatedToMatchContentScrollViewOffsets;
}

id _UINavigationBarCastToAugmentedTitleView(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 conformsToProtocol:&unk_1EFEEEEE0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *sub_188AE953C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext] = 0;
  v4 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_previousBarSize];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_shadowAlpha] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentFocusContainerGuide] = 0;
  v5 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_assistant;
  *&v1[v5] = [objc_allocWithZone(_UIPointerInteractionAssistant) init];
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_currentCustomizationSession] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamer] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_windowDragClientInteraction] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hiddenFilter] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hasIdiom] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_runningPaletteBasedSearchPresentation] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundTransparentWhenNotCollapsed] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isObservingDidEncounterFirstTitleWithExcessiveHeightChanged] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_useModernAppearanceAPI] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isHidden] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__useInlineBackgroundHeightWhenLarge] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__titleAlpha] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__forceScrollEdgeAppearance] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__refreshControlHost] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView] = 0;
  v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__staticNavBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__emptyLayout] = 0;
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *&v1[v5];
  v23[3] = sub_188A34624(0, &qword_1ED48E028);
  v23[0] = v14;
  v15 = objc_allocWithZone(type metadata accessor for NavigationBarContentView());
  v16 = v14;
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] = sub_188AE98D0(v23, v7, v9, v11, v13);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithNavigationBar_, a1);
  v18 = *&v17[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_delegate;
  swift_beginAccess();
  *(v18 + 8) = &off_1EFAE3938;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(inited + 48) = &type metadata for GlassUserInterfaceStyleTrait;
  *(inited + 56) = &off_1EE439CE8;
  v20 = v17;
  sub_188AEB868(inited, sub_188C389D0, 0);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  return v20;
}

uint64_t sub_188AE98D0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider] = 0;
  *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize] = 2;
  *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections] = 0;
  v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingItemsSupplementBackItem] = 0;
  *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarSections] = 0;
  v13 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult;
  sub_188AED2B0(__src);
  memcpy(&v6[v13], __src, 0x20AuLL);
  v14 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier];
  *v14 = 0;
  v14[1] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedExtension] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarSections] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_pinnedTrailingGroup] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView] = 0;
  v15 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = -1;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renderInlineLargeTitle] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleNavigationBarTraits] = 0;
  v16 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  *v16 = 0;
  *(v16 + 4) = 0;
  v17 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleAttributes;
  v18 = MEMORY[0x1E69E7CC0];
  *&v6[v17] = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titlePositionAdjustment] = UIOffsetZero;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overrideSize] = 0;
  v19 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarFrame];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  v20 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarFrame];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  v21 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarFrame];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isDeferringSearchSuggestionsMenuRefreshForGeometryChange] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renameHandler] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_useInlineLargeTitleMetrics] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldPassThroughTouches] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__staticLeadingBar] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__leadingBar] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__trailingBar] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__overflowItem] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups] = v18;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups] = v18;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem] = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleElementsHidden] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha] = 0x3FF0000000000000;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView] = 0;
  v22 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  *v22 = *&NSDirectionalEdgeInsetsZero.top;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 2) = *&NSDirectionalEdgeInsetsZero.top;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  *(v22 + 8) = 0;
  v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_debugVisualizer] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_floatingTabBarPadding] = 0x4024000000000000;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeight] = 0;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange] = UIFloatRangeZero;
  *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction] = 0;
  result = sub_188A3F29C(a1, &v51, &qword_1EA934050);
  if (v52)
  {
    sub_188A55538(&v51, &v53);
    sub_188A34624(0, &qword_1ED48E028);
    swift_dynamicCast();
    v24 = v43[0];
    *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_assistant] = v43[0];
    objc_allocWithZone(type metadata accessor for NavigationBarTransitionContainer());
    v25 = v24;
    *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] = sub_188AEA020(v24);
    v38 = 0uLL;
    *v39 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    memset(&v39[8], 0, 40);
    *&v40 = 0;
    BYTE8(v40) = 0;
    v41 = 0u;
    v42 = 0u;
    v43[0] = 0;
    v43[1] = 0;
    v43[2] = *v39;
    v45 = *&NSDirectionalEdgeInsetsZero.top;
    v44 = UIOffsetZero;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_188AEA364(&v38, v37);
    sub_188AEA3B4(v43);
    v26 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
    v27 = *v39;
    *v26 = v38;
    v26[1] = v27;
    v28 = v42;
    v26[5] = v41;
    v26[6] = v28;
    v29 = v40;
    v26[3] = *&v39[32];
    v26[4] = v29;
    v26[2] = *&v39[16];
    v30 = &v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
    *v30 = 0;
    *(v30 + 1) = *(v37 + 3);
    *(v30 + 1) = v37[0];
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 37) = 0;
    *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarAlpha] = 0x3FF0000000000000;
    v36.receiver = v6;
    v36.super_class = ObjectType;
    v31 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a2, a3, a4, a5);
    v32 = *&v31[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer];
    v33 = v31;
    [v33 addSubview_];
    v35.receiver = v33;
    v35.super_class = ObjectType;
    objc_msgSendSuper2(&v35, sel_setLayoutMargins_, 0.0, 0.0, 0.0, 0.0);
    v34 = [objc_allocWithZone(UIEditMenuInteraction) initWithDelegate_];
    [v33 addInteraction_];
    [v33 _setHostsLayoutEngine_];
    sub_188AEAB44();
    sub_188AEB4E0();

    sub_188A3F5FC(a1, &qword_1EA934050);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_188AEA020(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer;
  type metadata accessor for HostedViewContainer();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &v2[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content];
  *v8 = MEMORY[0x1E69E7CC0];
  *(v8 + 1) = v7;
  v9 = &v2[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent];
  v10 = type metadata accessor for NavigationBarPlatterContainer();
  *v9 = 0;
  *(v9 + 1) = 0;
  v11 = objc_allocWithZone(v10);
  v12 = a1;
  v13 = sub_188E5A8EC(a1);

  *&v2[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_platterContainer] = v13;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = *&v14[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer];
  v16 = v14;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer;
  [*&v16[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_underGlassTransitionContainer] setUserInteractionEnabled_];
  [v16 addSubview_];
  v18 = OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_platterContainer;
  v19 = *&v16[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_platterContainer];
  v25 = &type metadata for _GlassGroup;
  v26 = &protocol witness table for _GlassGroup;
  v22 = 256;
  v23 = 0;
  v24 = 1;
  v20 = v19;
  UIView._background.setter(&v22);

  [v16 addSubview_];
  return v16;
}

_WORD *storeEnumTagSinglePayload for NavigationBarContentView.Flags(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SaySo13UIMenuElementCGSo0A0CSgIeggo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_188AEA3E4()
{
  v1 = sub_188AECA30();
  v2 = sub_188AEA5A0();
  if (v1 + v2 > *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overrideSize])
  {
    v3 = v1 + v2;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overrideSize];
  }

  v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  v5 = 0.0;
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = *(v4 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  [v7 _navigationBarContentHeight];
  v9 = v8;
  [v7 _navigationBarContentHeightExtension];
  v5 = v10;
  v11 = [v7 _navigationBarHeightShouldBeIncreasedByTabBarHeight];
  v12 = v2 + v9;
  if (v2 + v9 <= v3)
  {
    v12 = v3;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (v3 < v13)
  {

    goto LABEL_18;
  }

  v14 = sub_188BEC1F4();

  if ((v14 & 1) == 0)
  {
    if (v5 - (v3 - v13) < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v5 - (v3 - v13);
    }

LABEL_17:
    v13 = v3;
  }

LABEL_18:
  v15 = [v0 _screen];
  if (v15)
  {
    v16 = v15;
    [v15 scale];
    v18 = v17;

    UICeilToScale(v13, v18);
    v20 = v19;
    UICeilToScale(v5, v18);
    if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight] != v20 || *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedExtension] != v21)
    {
      *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight] = v20;
      *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedExtension] = v21;

      sub_188AEA72C();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_188AEA5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (!v1 || !*(v1 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
  {
    goto LABEL_6;
  }

  if (qword_1EA930820 != -1)
  {
    swift_once();
  }

  v2 = 0.0;
  if (byte_1EA930701 == 1)
  {
LABEL_6:
    v3 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext;
    if ((*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 42) & 1) != 0 || (v2 = 0.0, *(v3 + 43) == 1))
    {
      v2 = 0.0;
      if (*v3 == 1 && CGRectGetHeight(*(v3 + 8)) > 0.0)
      {
        v4 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
        if (v4)
        {
          if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration + 8))
          {
            v5 = v4;
            v6 = sub_188B3461C();

            if (v6)
            {
              return CGRectGetHeight(*(v3 + 8)) + 10.0;
            }
          }
        }

        if ((sub_188EBE444() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle) - 1) >= 2)
        {
          v7 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider);
          if (!v7 || ([v7 useLeadingAlignedLargeTitle:*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 72) toolbarStyle:?] & 1) == 0)
          {
            return CGRectGetHeight(*(v3 + 8)) + 10.0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_188AEA72C()
{
  v1 = sub_18A4A6E18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v10 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags];
    if ((v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags + 1] & 1) == 0)
    {
      if (*v10 == 1)
      {
        v10[1] = 1;
        sub_188A34624(0, &qword_1ED490540);
        v11 = sub_18A4A7A68();
        v12 = swift_allocObject();
        *(v12 + 16) = v0;
        aBlock[4] = sub_188EC234C;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A8F0;
        aBlock[3] = &block_descriptor_83;
        v13 = _Block_copy(aBlock);
        v14 = v0;

        sub_18A4A6E38();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_188EC2354(&qword_1ED490560, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
        sub_188BA3728();
        sub_18A4A7EB8();
        MEMORY[0x18CFE29D0](0, v8, v4, v13);
        _Block_release(v13);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }

      else
      {
        swift_beginAccess();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          v17 = [v15 navigationBar];
          [v17 invalidateIntrinsicContentSize];

          v18 = [v16 navigationBar];
          [v18 setNeedsLayout];

          v19 = [v16 navigationBar];
          [v19 _sendNavigationBarResize];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_188AEAB08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188AEAB44()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_assistant);
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
  v3 = sub_18A4A7258();
  [v1 setAssistedView:v2 identifier:v3];

  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled) == 1 && (sub_188B55154(), (v4 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl)) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_18A4A7258();
  [v1 setAssistedView:v5 identifier:v6];

  v7 = sub_188EBC854();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectWeakAssign();
  }

  v9 = sub_188AEAD00();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectWeakAssign();
  }

  v11 = sub_188AEB244();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectWeakAssign();
  }

  v13 = sub_188AEAF10();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectWeakAssign();
  }
}

void *sub_188AEAD00()
{
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode])
  {
    return 0;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__leadingBar;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__leadingBar];
  if (!v3)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = [objc_opt_self() visualProviderForIdiom_];
    ObjectType = swift_getObjectType();

    sub_188A3F29C(v26, v25, &unk_1EA937A80);
    v8 = objc_allocWithZone(type metadata accessor for NavigationButtonBar());
    v9 = sub_18907B050(ObjectType, 0, v25);
    v10 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance];
    v11 = v10;
    sub_189079688(v10);
    v12 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance];
    v13 = v12;
    sub_18907969C(v12);
    sub_188A3F5FC(v26, &unk_1EA937A80);
    v14 = *&v1[v2];
    *&v1[v2] = v9;

    v15 = *&v1[v2];
    if (v15 && (v16 = v15, sub_188B3280C(0), v16, (v17 = *&v1[v2]) != 0) && (v18 = v17, sub_188B32818(1), v18, (v19 = *&v1[v2]) != 0) && (v20 = *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer], *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer] = 0, v21 = v19, sub_188B3290C(v20), v21, v20, (v22 = *&v1[v2]) != 0))
    {
      *(v22 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8) = &off_1EFAC6458;
      swift_unknownObjectWeakAssign();
      v3 = *&v1[v2];
    }

    else
    {
      v3 = 0;
    }
  }

  v23 = v3;
  return v3;
}

void *sub_188AEAF10()
{
  if (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] != 1)
  {
    return 0;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__trailingBar;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__trailingBar];
  if (!v3)
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = [objc_opt_self() visualProviderForIdiom_];
    ObjectType = swift_getObjectType();

    sub_188A3F29C(v38, v37, &unk_1EA937A80);
    v8 = objc_allocWithZone(type metadata accessor for NavigationButtonBar());
    v9 = sub_18907B050(ObjectType, 2, v37);
    v10 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance];
    v11 = v10;
    sub_189079688(v10);
    v12 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance];
    v13 = v12;
    sub_18907969C(v12);
    sub_188A3F5FC(v38, &unk_1EA937A80);
    v14 = *&v1[v2];
    *&v1[v2] = v9;

    v15 = *&v1[v2];
    if (v15)
    {
      v16 = v15;
      sub_188B3280C(0);

      v17 = *&v1[v2];
      if (v17)
      {
        v18 = v17;
        sub_188B32818(1);

        v19 = *&v1[v2];
        if (v19)
        {
          v20 = *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
          *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer] = 0;
          v21 = v19;
          sub_188B3290C(v20);

          v22 = *&v1[v2];
          if (v22)
          {
            *(v22 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8) = &off_1EFAC6458;
            swift_unknownObjectWeakAssign();
          }
        }
      }
    }

    v23 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup;
    if (!*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup])
    {
      v24 = sub_188B2A31C();
      if (v24)
      {
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_18A64B710;
        *(v26 + 32) = v25;
      }

      v27 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_188A34624(0, &qword_1ED48E8C0);
      v28 = sub_18A4A7518();

      v29 = [v27 initWithBarButtonItems:v28 representativeItem:0];

      v30 = *&v1[v23];
      *&v1[v23] = v29;

      v31 = *&v1[v23];
      if (v31)
      {
        [v31 setHidden_];
      }

      v32 = *&v1[v2];
      if (v32)
      {
        v33 = v32;
        v34 = sub_188B2A31C();
        swift_unknownObjectWeakAssign();
      }
    }

    sub_188B33CA4();
    v3 = *&v1[v2];
  }

  v35 = v3;
  return v3;
}

void *sub_188AEB244()
{
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode])
  {
    return 0;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar];
  if (!v3)
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = [objc_opt_self() visualProviderForIdiom_];
    ObjectType = swift_getObjectType();

    sub_188A3F29C(v30, v29, &unk_1EA937A80);
    v8 = objc_allocWithZone(type metadata accessor for NavigationButtonBar());
    v9 = sub_18907B050(ObjectType, 1, v29);
    v10 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance];
    v11 = v10;
    sub_189079688(v10);
    v12 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance];
    v13 = v12;
    sub_18907969C(v12);
    sub_188A3F5FC(v30, &unk_1EA937A80);
    v14 = *&v1[v2];
    *&v1[v2] = v9;

    v15 = *&v1[v2];
    if (v15)
    {
      v16 = v15;
      sub_188B3280C(1);

      v17 = *&v1[v2];
      if (v17)
      {
        v18 = v17;
        sub_188B32818(1);

        v19 = *&v1[v2];
        if (v19)
        {
          v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsAlwaysOverflowGroups] = 1;
          if (*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier + 8])
          {
            v20 = v19;

            v21 = sub_18A4A7258();
            v22 = [objc_opt_self() groupOrdererForCustomizationIdentifier_];
          }

          else
          {
            v23 = v19;
            v22 = 0;
          }

          v24 = *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
          *&v19[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer] = v22;
          v25 = v22;
          sub_188B3290C(v24);

          v26 = *&v1[v2];
          if (v26)
          {
            *(v26 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8) = &off_1EFAC6458;
            swift_unknownObjectWeakAssign();
          }
        }
      }
    }

    sub_188B346C0();
    v3 = *&v1[v2];
  }

  v27 = v3;
  return v3;
}

void sub_188AEB4E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64B710;
  *(v1 + 32) = 0x1EFE32578;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v2 = sub_18A4A7518();

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_188EC2454;
  v21 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188BA9E60;
  v19 = &block_descriptor_145_0;
  v4 = _Block_copy(&aBlock);

  v5 = [v0 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v4);
  swift_unknownObjectRelease();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18A64B710;
  *(v6 + 32) = 0x1EFE32398;
  swift_unknownObjectRetain();
  v7 = sub_18A4A7518();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_188EC245C;
  v21 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188BA9E60;
  v19 = &block_descriptor_149_2;
  v9 = _Block_copy(&aBlock);

  v10 = [v0 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v9);
  swift_unknownObjectRelease();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18A64B710;
  *(v11 + 32) = 0x1EFE323F8;
  swift_unknownObjectRetain();
  v12 = sub_18A4A7518();

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_188EC2464;
  v21 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188BA9E60;
  v19 = &block_descriptor_153;
  v14 = _Block_copy(&aBlock);

  v15 = [v0 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

void sub_188AEB944()
{
  v1 = v0;
  v73.receiver = v0;
  v73.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v73, sel_prepare);
  if (*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__titleAlpha] != 1.0)
  {
    *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__titleAlpha] = 0x3FF0000000000000;
    v2 = [v0 navigationBar];
    [v2 setNeedsLayout];
  }

  if (*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha] != 1.0)
  {
    *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha] = 0x3FF0000000000000;
    v3 = [v1 navigationBar];
    [v3 setNeedsLayout];
  }

  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_shadowAlpha] = 0x3FF0000000000000;
  v4 = [v1 navigationBar];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [objc_allocWithZone(_UIBarBackground) initWithFrame_];
  v14 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v15 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView] = v13;
  v16 = v13;

  v17 = [(UIView *)v16 _traitOverrides];
  v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v18;
  v70 = inited;
  sub_188AF8D18(0);
  v20 = [(UIView *)v16 _traitOverrides];
  v21 = *(v70 + 16);

  [(_UITraitOverrides *)v20 _replaceWithOverrides:v21];

  v22 = *&v1[v14];
  if (v22)
  {
    [v22 setTopAligned_];
    v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] = 1;
    v68 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
    v23 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v24 = [v1 contentViewVisualProvider];
    *&v23[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider] = v24;

    swift_unknownObjectRelease();
    v25 = [objc_allocWithZone(type metadata accessor for NavigationBarLargeTitleView()) initWithFrame_];
    [v25 setClipsToBounds_];
    v26 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
    *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView] = v25;
    v27 = v25;

    v28 = [v1 navigationBar];
    v29 = [v28 traitCollection];

    v30 = [v29 userInterfaceIdiom];
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v31 = sub_18A4A7088();

    v32 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v31, v30, 0);

    sub_18A4A70A8();
    v33 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
    v34 = *&v27[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v35 = sub_18A4A7088();

    [v34 setTitleAttributes_];

    v36 = _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributes(v30);
    sub_18A4A70A8();

    v37 = *&v27[v33];
    v38 = sub_18A4A7088();

    [v37 setSubtitleAttributes_];

    [v27 _setSafeAreaCornerAdaptation_];
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = &v27[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_recipientScrollViewRemovedFromWindowHandler];
    v41 = *&v27[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_recipientScrollViewRemovedFromWindowHandler];
    *v40 = sub_1890DAE1C;
    v40[1] = v39;

    sub_188A55B8C(v41);

    v42 = [objc_allocWithZone(_UINavigationBarModernPromptView) initWithFrame_];
    v43 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView;
    v44 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
    *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView] = v42;

    v45 = *&v1[v43];
    if (v45)
    {
      [v45 _setSafeAreaCornerAdaptation_];
    }

    v46 = [v1 navigationBar];
    v47 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_assistant];
    [v46 addInteraction_];

    [*&v27[v33] setAssistant_];
    v48 = [v1 navigationBar];
    [v48 _setWantsAutolayout];

    sub_188AEC470();
    v49 = [v1 navigationBar];
    LODWORD(v47) = [v49 translatesAutoresizingMaskIntoConstraints];

    if (v47)
    {
      v50 = [v1 navigationBar];
      [v50 _setHostsLayoutEngine_];
    }

    sub_188AED750();
    v51 = [v1 navigationBar];
    [v51 setDirectionalLayoutMargins_];

    v52 = [v1 navigationBar];
    [v52 setPreservesSuperviewLayoutMargins_];

    v53 = *&v1[v69];
    sub_188AEA3E4();

    v54 = *&v1[v69];
    v55 = [(UIView *)v54 _traitOverrides];
    v56 = [(_UITraitOverrides *)v55 _swiftImplCopy];

    v57 = swift_initStackObject();
    *(v57 + 16) = v56;
    v71 = v57;
    sub_18914E584(2);
    v58 = [(UIView *)v54 _traitOverrides];
    v59 = *(v71 + 16);

    [(_UITraitOverrides *)v58 _replaceWithOverrides:v59];

    v60 = [v1 navigationBar];
    v61 = [(UIView *)v60 _traitOverrides];
    v62 = [(_UITraitOverrides *)v61 _swiftImplCopy];

    v63 = swift_initStackObject();
    *(v63 + 16) = v62;
    v72 = v63;
    sub_18A4A80E8();

    sub_188F9257C();
    swift_unknownObjectRetain();
    v64 = sub_18A4A7418();
    MEMORY[0x18CFE22D0](v64);

    MEMORY[0x18CFE22D0](30768, 0xE200000000000000);

    sub_18901E90C(0xD000000000000010, 0x800000018A6A6420);
    sub_1890B30B4(1);
    v65 = [v1 navigationBar];
    v66 = [(UIView *)v65 _traitOverrides];
    v67 = *(v72 + 16);
    [(_UITraitOverrides *)v66 _replaceWithOverrides:v67];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188AEC204()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_188AEC264(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight] = 0;
  v10 = &v4[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_recipientScrollViewRemovedFromWindowHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = [objc_allocWithZone(_UINavigationBarLargeTitleView) initWithFrame_];
  *&v4[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] = v11;
  v12 = type metadata accessor for NavigationBarLargeTitleReparentingHelper();
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = &v13[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace];
  *v14 = 0u;
  v14[1] = 0u;
  swift_unknownObjectWeakInit();
  v13[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_contributesToPocketContentRect] = 1;
  *&v13[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_view] = v11;
  v23.receiver = v13;
  v23.super_class = v12;
  v15 = v11;
  *&v4[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper] = objc_msgSendSuper2(&v23, sel_init);
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
  v18 = *&v16[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
  v19 = v16;
  [v18 setInsetsLayoutMarginsFromSafeArea_];
  v20 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper;
  swift_unknownObjectWeakAssign();
  [(UIView *)v19 _addGeometryChangeObserver:?];
  [v19 addSubview_];

  return v19;
}

void sub_188AEC470()
{
  v1 = v0;
  v2 = [v0 stack];
  v3 = [v2 topEntry];

  if (v3 && ((v4 = [v3 isSearchActive], v5 = -[_UINavigationBarItemStackEntry _typedStorage](v3), !v4) ? (v6 = sub_18901F250()) : (v6 = sub_18901F25C()), v7 = v6, v5, v3, v7))
  {
    sub_188B39358();
    v9 = v8;

    if (v9)
    {
      v10 = 250.0;
    }

    else
    {
      v10 = 750.0;
    }
  }

  else
  {
    v10 = 750.0;
  }

  v11 = [v1 navigationBar];
  [v11 contentHuggingPriorityForAxis_];
  v13 = v12;

  v14 = [v1 navigationBar];
  [v14 contentCompressionResistancePriorityForAxis_];
  v16 = v15;

  if (v10 == v13)
  {
    if (v10 == v16)
    {
      return;
    }
  }

  else
  {
    v17 = [v1 navigationBar];
    *&v18 = v10;
    [v17 setContentHuggingPriority:1 forAxis:v18];

    if (v10 == v16)
    {
      goto LABEL_15;
    }
  }

  v19 = [v1 navigationBar];
  *&v20 = v10;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

LABEL_15:
  v21 = [v1 navigationBar];
  [v21 invalidateIntrinsicContentSize];

  v22 = [v1 navigationBar];
  [v22 setNeedsLayout];

  v23 = [v1 navigationBar];
  [v23 _sendNavigationBarResize];
}

void sub_188AEC7A4(id a1)
{
  v3 = *(*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (!v3 || (v4 = *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) == 0 || ([v4 _disallowNavigationBarMinimumTopPadding] & 1) == 0)
  {
    if ([a1 _barPlattersHidden])
    {
      if ([a1 userInterfaceIdiom] || !objc_msgSend(a1, sel__hasSplitViewControllerContextPrimaryColumn) || (v6 = objc_msgSend(v1, sel_navigationBar), v7 = sub_189227708(), v6, v5 = 14.0, (v7 & 1) == 0))
      {
        [a1 _splitViewControllerContext];
      }
    }

    else if ([a1 _presentationSemanticContext] == 2 && !objc_msgSend(a1, sel_userInterfaceIdiom))
    {
      v9 = [v1 navigationBar];
      [v9 _contentMargin];
    }

    else if (![a1 userInterfaceIdiom])
    {
      v8 = [v1 navigationBar];
      sub_189227708();
    }
  }
}

uint64_t sub_188AEC9C0(double *a1)
{
  result = 0;
  if (*a1 == *v1 && ((*(a1 + 1) ^ *(v1 + 1)) & 1) == 0)
  {
    v4 = *(a1 + 17);
    if (v1[2])
    {
      if (!*(a1 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (v1[1] == a1[1])
      {
        v5 = *(a1 + 16);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return v4 ^ *(v1 + 17) ^ 1u;
  }

  return result;
}

double sub_188AECA30()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize];

    [v1 baseHeightForContentSize_];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize];
    if (v6 == 3)
    {
      v7 = 44.0;
      if (v5 == 5)
      {
        v7 = 36.0;
      }
    }

    else if (v6 == 2)
    {
      v9 = _UIBarsUseNewPadHeights();
      v7 = 44.0;
      if ((v9 & (v5 == 5)) != 0)
      {
        v7 = 36.0;
      }
    }

    else
    {
      v7 = 0.0;
      v8 = 44.0;
      if (v5 == 5)
      {
        v8 = 36.0;
      }

      if (v6 == 1)
      {
        v7 = v8;
      }
    }

    return v7 + 10.0;
  }

  return result;
}

uint64_t sub_188AECB54(char a1, char a2)
{
  if (a1)
  {
    if ((a1 & 4) == 0)
    {
      result = 1;
      if ((a1 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

    result = 5;
    if ((a1 & 2) != 0)
    {
LABEL_13:
      if (a2)
      {
        v4 = 8;
      }

      else
      {
        v4 = 2;
      }

      result |= v4;
    }

LABEL_17:
    if ((a1 & 8) == 0)
    {
      return result;
    }

    if (a2)
    {
      if ((result & 2) != 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    if ((result & 8) != 0)
    {
      return result;
    }

LABEL_22:
    v5 = 8;
    return result | v5;
  }

  if ((a1 & 4) != 0)
  {
    result = 4;
    if ((a1 & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  result = 0;
  if ((a1 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((a1 & 8) == 0)
  {
    return result;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v5 = 2;
  return result | v5;
}

uint64_t sub_188AECCA0(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion];
  if (v2 > result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (v2 != result)
  {
    *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] = result;
    v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_useModernAppearanceAPI] = result > 1;
    if (result >= 2)
    {
      v3 = [v1 stack];
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_188C0AE44;
      *(v5 + 24) = v4;
      v9[4] = sub_18907CF94;
      v9[5] = v5;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_188C0AC7C;
      v9[3] = &block_descriptor_90_5;
      v6 = _Block_copy(v9);
      v7 = v1;

      [v3 iterateEntries_];

      _Block_release(v6);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_188AECE4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188AECF08(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

void sub_188AED02C()
{
  v1 = [v0 stack];
  v2 = [v1 topItem];

  if (*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] <= 1)
  {
    v3 = [v2 standardAppearance];
    if (v3 || (v3 = [v2 compactAppearance]) != 0 || (v3 = objc_msgSend(v2, sel_scrollEdgeAppearance)) != 0)
    {

      sub_188AECCA0(2);
    }
  }

  v4 = [v0 stack];
  v5 = [v4 topEntry];

  sub_188AE4B20(v5, 0);
  v6 = [v0 stack];
  v7 = [v6 previousTopEntry];

  sub_188AE4B20(v7, 0);
}

void sub_188AED1A0(void *a1)
{
  v1 = [a1 _stackEntry];
  if (v1)
  {
    v2 = v1;
    v3 = [(_UINavigationBarItemStackEntry *)v2 _typedStorage];
    v4 = sub_18901F250();

    if (v4)
    {
      sub_188C72350();
    }

    v7 = v2;
    v5 = [(_UINavigationBarItemStackEntry *)v7 _typedStorage];
    v6 = sub_18901F25C();

    if (v6)
    {
      sub_188C72350();
    }
  }
}

unint64_t sub_188AED2B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_18A4A8488();
    v8 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v8, &v15, a4);
      v9 = v15;
      result = sub_188E8B5AC(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_188A55538(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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