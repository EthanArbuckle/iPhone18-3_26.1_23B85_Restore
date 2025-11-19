uint64_t swift::Lazy<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>>::defaultInitCallback(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t swift::Demangle::__runtime::StackAllocatedDemangler<1024ul>::~StackAllocatedDemangler(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  return a1;
}

void swift::swift_dynamicCastFailure(swift *this, const void *a2, const char *a3, char *a4, const char *a5, const char *a6)
{
  v6 = ": ";
  if (!a5)
  {
    v6 = ".";
  }

  v7 = "";
  if (a5)
  {
    v7 = a5;
  }

  swift::fatalError(0, "Could not cast value of type '%s' (%p) to '%s' (%p)%s%s\n", a3, a4, a2, this, a4, a3, v6, v7);
}

void swift_dynamicCastFailure_SOURCE_AND_TARGET_TYPE_NULL(const char *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = "";
  if (a1)
  {
    v4 = a1;
  }

  swift::fatalError(0, "Unconditional cast failed. Both source and target types were NULL. %s\n", a3, a4, v4);
}

void swift_dynamicCastFailure_SOURCE_TYPE_NULL(Class *a1, const char *a2)
{
  swift::nameForMetadata(&v8, a1, 1);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v8;
  }

  else
  {
    v6 = v8.__r_.__value_.__r.__words[0];
  }

  v7 = "";
  if (a2)
  {
    v7 = a2;
  }

  swift::fatalError(0, "Unconditional cast failed. Source type was NULL, target was '%s' (%p). %s\n", v4, v5, v6, a1, v7);
}

void swift_dynamicCastFailure_TARGET_TYPE_NULL(Class *a1, const char *a2)
{
  swift::nameForMetadata(&v8, a1, 1);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v8;
  }

  else
  {
    v6 = v8.__r_.__value_.__r.__words[0];
  }

  v7 = "";
  if (a2)
  {
    v7 = a2;
  }

  swift::fatalError(0, "Unconditional cast failed. Source type was '%s' (%p), target type was NULL. %s\n", v4, v5, v6, a1, v7);
}

void swift::swift_dynamicCastFailure(Class *a1, Class *a2, char *a3, char *a4)
{
  if (!a1)
  {
    if (!a2)
    {
      swift_dynamicCastFailure_SOURCE_AND_TARGET_TYPE_NULL(a3, 0, a3, a4);
    }

    swift_dynamicCastFailure_SOURCE_TYPE_NULL(a2, a3);
  }

  if (!a2)
  {
    swift_dynamicCastFailure_TARGET_TYPE_NULL(a1, a3);
  }

  swift::nameForMetadata(&v11, a1, 1);
  swift::nameForMetadata(&v10, a2, 1);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v11;
  }

  else
  {
    v8 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v10;
  }

  else
  {
    v9 = v10.__r_.__value_.__r.__words[0];
  }

  swift::swift_dynamicCastFailure(a1, v8, a2, v9, a3, v7);
}

uint64_t swift::_conformsToProtocol(swift::runtime::bincompat **a1, swift *a2, uint64_t a3, uint64_t *a4, _OWORD *a5)
{
  if ((a3 & 1) == 0)
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    v12 = swift_conformsToProtocolWithExecutionContext(a2, v7, a5);
    result = v12 != 0;
    if (a4)
    {
      if (v12)
      {
        *a4 = v12;
        return 1;
      }
    }

    return result;
  }

  result = 0;
  v10 = *a2;
  if (*a2 > 0x7FFuLL)
  {
    LODWORD(v10) = 0;
  }

  if (v10 <= 770)
  {
    if ((v10 - 515) < 2)
    {
      if (!a1)
      {
        return 0;
      }

LABEL_20:
      v19 = a3 & 0xFFFFFFFFFFFFFFFELL;
      return swift_dynamicCastObjCProtocolConditional(*a1, 1, &v19) != 0;
    }

    if (v10)
    {
      return result;
    }

    if (a1)
    {
      goto LABEL_20;
    }

    v11 = a2;
    goto LABEL_30;
  }

  if (v10 != 771)
  {
    if (v10 != 773)
    {
      return result;
    }

    if (a1)
    {
      goto LABEL_20;
    }

    v11 = *(a2 + 1);
LABEL_30:

    return swift::objectConformsToObjCProtocol(v11, a3);
  }

  v13 = *(a2 + 2);
  if ((v13 & 0x80FFFFFF) != 0)
  {
    return 0;
  }

  v14 = *(a2 + 3);
  if (!v14)
  {
    return 0;
  }

  v15 = (a2 + ((v13 >> 27) & 0x18) + 16);
  v16 = 8 * v14 - 8;
  do
  {
    v17 = *v15++;
    result = protocol_conformsToProtocol((v17 & 0xFFFFFFFFFFFFFFFELL), (a3 & 0xFFFFFFFFFFFFFFFELL));
    if (result)
    {
      break;
    }

    v18 = v16;
    v16 -= 8;
  }

  while (v18);
  return result;
}

uint64_t swift::_conformsToProtocolInContext(swift::runtime::bincompat **a1, swift *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v8 = 0uLL;
  result = swift::_conformsToProtocol(a1, a2, a3, a4, &v8);
  if (result)
  {
    if (a5 && v8)
    {
      return 0;
    }

    else
    {
      return swift_isInConformanceExecutionContext(a2, &v8);
    }
  }

  return result;
}

char *swift_getDynamicType(swift::SwiftError **a1, swift::SwiftError *a2, char a3)
{
  while (2)
  {
    v5 = a1;
    while (1)
    {
      v6 = *a2;
      if (*a2 > 0x7FFuLL)
      {
        LODWORD(v6) = 0;
      }

      if (v6 > 771)
      {
        if (v6 <= 774)
        {
          goto LABEL_19;
        }

        if (v6 == 775)
        {
          goto LABEL_14;
        }

        return a2;
      }

      if (v6 != 771)
      {
        if (v6 && v6 != 515)
        {
          return a2;
        }

        goto LABEL_27;
      }

      swift::TargetExistentialTypeMetadata<swift::InProcess>::mayTakeValue(a2, v5);
      if ((a3 & 1) == 0)
      {
        return a2;
      }

      Representation = swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(a2);
      if (Representation)
      {
        if (Representation != 2)
        {
          break;
        }
      }

      DynamicType = swift::TargetExistentialTypeMetadata<swift::InProcess>::getDynamicType(a2, v5);
      v5 = swift::TargetExistentialTypeMetadata<swift::InProcess>::projectValue(a2, v5);
      a3 = 1;
      a2 = DynamicType;
    }

    if (Representation != 1)
    {
LABEL_14:
      v9 = *(a2 + 1);
      a2 = (a2 + 8);
      LODWORD(v6) = *v9;
      if (!*v9)
      {
        a1 = swift::TargetOpaqueExistentialContainer<swift::InProcess>::projectValue(v5);
        a2 = v5[3];
        continue;
      }

      if (v6 != 1)
      {
        if (v6 != 3)
        {
          goto LABEL_22;
        }

        __break(1u);
LABEL_19:
        if (v6 == 772)
        {
LABEL_22:
          v10 = *v5;

          return swift_getMetatypeMetadata(v10);
        }

        if (v6 != 773)
        {
          if (v6 == 774)
          {
            goto LABEL_22;
          }

          return a2;
        }
      }
    }

    break;
  }

LABEL_27:
  v12 = *v5;

  return swift_getObjectType(v12);
}

uint64_t *swift_dynamicCastMetatypeToObjectConditional(uint64_t *result)
{
  v1 = *result;
  if (*result > 0x7FF)
  {
    LODWORD(v1) = 0;
  }

  if (v1)
  {
    if (v1 == 773)
    {
      return result[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift_dynamicCastMetatypeToObjectUnconditional(uint64_t result)
{
  v5 = *result;
  if (*result > 0x7FFuLL)
  {
    LODWORD(v5) = 0;
  }

  if (v5)
  {
    if (v5 != 773)
    {
      v11 = v2;
      v12 = v1;
      v13 = v3;
      v14 = v4;
      v6 = result;
      swift::nameForMetadata(&v10, result, 1);
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v10;
      }

      else
      {
        v9 = v10.__r_.__value_.__r.__words[0];
      }

      swift::swift_dynamicCastFailure(v6, v9, v7, v8);
    }

    return *(result + 8);
  }

  return result;
}

atomic_ullong *bridgeAnythingNonVerbatimToObjectiveC(unint64_t *a1, unsigned __int8 *ObjectType, int a3)
{
  while (1)
  {
    v6 = *ObjectType;
    if (*ObjectType <= 0x7FFuLL)
    {
      v7 = *ObjectType;
    }

    else
    {
      v7 = 0;
    }

    if (!v7 || v7 == 773 || v7 == 515)
    {
      goto LABEL_50;
    }

    if (v6 != 771)
    {
      if (v6 == 772 || v6 == 774)
      {
        result = *a1;
        v11 = **a1;
        if (v11 == 773 || v11 - 2048 <= 0xFFFFFFFFFFFFF800)
        {
          if (v11 > 0x7FF)
          {
            LODWORD(v11) = 0;
          }

          if (v11)
          {
            if (v11 == 773)
            {
              return result[1];
            }

            else
            {
              return 0;
            }
          }

          return result;
        }

        if (v11 == 771)
        {
          v12 = *(result + 2);
          if ((v12 & 0x80FFFFFF) == 0 && *(result + 3) == 1)
          {
            v13 = *(result + ((v12 >> 27) & 0x18) + 16);

            return (v13 & 0xFFFFFFFFFFFFFFFELL);
          }
        }
      }

      else
      {
        BridgeWitness = findBridgeWitness(ObjectType);
        if (BridgeWitness)
        {
          result = (*(BridgeWitness + 16))(ObjectType, BridgeWitness);
          if (!a3)
          {
            return result;
          }

          goto LABEL_39;
        }

        ErrorWitness = swift::findErrorWitness(ObjectType);
        if (ErrorWitness)
        {
          if (a3)
          {
            v25 = 2;
          }

          else
          {
            v25 = 0;
          }

          return swift::dynamicCastValueToNSError(a1, ObjectType, ErrorWitness, v25);
        }

        if (*ObjectType == 770 && ObjectType[10] << 16 == 0x10000)
        {
LABEL_50:
          result = *a1;
          if ((a3 & 1) == 0)
          {
            v26 = *a1;
            swift_unknownObjectRetain(result);
            return v26;
          }

          return result;
        }
      }

      return swift::bridgeAnythingToSwiftValueObject(a1, ObjectType, a3);
    }

    Representation = swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(ObjectType);
    if (Representation != 1)
    {
      break;
    }

    ObjectType = swift_getObjectType(*a1);
  }

  if (Representation == 2)
  {
    v19 = *a1;
    Type = swift::SwiftError::getType(*a1, v9);
    v16 = 0;
    if (swift::SwiftError::isPureNSError(v19, v20))
    {
      v17 = 1;
      v15 = a1;
    }

    else
    {
      v15 = (v19 + *(*(*(v19 + 5) - 8) + 80) + 72) & ~*(*(*(v19 + 5) - 8) + 80);
      v17 = 1;
    }
  }

  else if (Representation)
  {
    v17 = 0;
    v16 = 0;
    Type = 0;
    v15 = 0;
  }

  else
  {
    Type = a1[3];
    v15 = swift::TargetExistentialTypeMetadata<swift::InProcess>::projectValue(ObjectType, a1);
    v16 = v15 == a1;
    v17 = v15 != a1;
  }

  result = bridgeAnythingNonVerbatimToObjectiveC(v15, Type, a3 & v16);
  if (a3)
  {
    if (v16)
    {
      if (v17)
      {
        swift::fatalError(0, "Attempting to move out of a copy-on-write existential", v21, v22);
      }

      return result;
    }

LABEL_39:
    v23 = result;
    (*(*(ObjectType - 1) + 8))(a1, ObjectType);
    return v23;
  }

  return result;
}

void _getBridgedNonVerbatimObjectiveCType<A>(_:)(uint64_t a1, swift *a2)
{
  BridgeWitness = findBridgeWitness(a2);
  if (!BridgeWitness)
  {
    return;
  }

  v4 = BridgeWitness;
  v5 = *BridgeWitness;
  v6 = **BridgeWitness;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = (v5 + (v6 & 0xFFFFFFFFFFFFFFFELL));
  if (v6)
  {
    if (*v7)
    {
      v8 = *v7;
      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5 + (v6 & 0xFFFFFFFFFFFFFFFELL);
LABEL_9:
  v9 = v8;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;
  if (v9 == -24)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 + 24;
  }

  v12 = &v11[12 * *(v10 + 3)];
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  swift_getAssociatedTypeWitness(0, v4, a2, &v13[12 * *(v13 + 3) + 16], v12);
}

uint64_t findBridgeWitness(swift *a1)
{
  _X20 = a1;
  if (*a1 == 512 && (!*(a1 + 1) ? (v2 = 0) : (v2 = *(a1 + 1)), v2 == &nominal type descriptor for String))
  {
    if ((atomic_load_explicit(&qword_1ED415EC8, memory_order_acquire) & 1) == 0)
    {
      findBridgeWitness(a1);
    }

    return _MergedGlobals;
  }

  else
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X19] }

    if (_X0 != _X20)
    {
      _X1 = swift_conformsToProtocolCommon(_X20, &protocol descriptor for _ObjectiveCBridgeable);
      v10 = swift_conformsToObjectiveCBridgeable(swift::TargetMetadata<swift::InProcess> const*)::_objcBridgeWitnessCache;
      do
      {
        _X5 = *algn_1ED415EB8;
        __asm { CASPL           X4, X5, X20, X21, [X19] }

        _ZF = _X4 == v10;
        v10 = _X4;
      }

      while (!_ZF);
    }

    if (!_X1)
    {
      findBridgeWitness(_X20, &v14);
      return v14;
    }
  }

  return _X1;
}

{
  _X20 = a1;
  if (*a1 == 512 && (!*(a1 + 1) ? (v2 = 0) : (v2 = *(a1 + 1)), v2 == &nominal type descriptor for String))
  {
    if ((atomic_load_explicit(&qword_1ED415F18, memory_order_acquire) & 1) == 0)
    {
      findBridgeWitness(a1);
    }

    return _MergedGlobals_0;
  }

  else
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X19] }

    if (_X0 != _X20)
    {
      _X1 = swift_conformsToProtocolCommon(_X20, &protocol descriptor for _ObjectiveCBridgeable);
      v10 = swift_conformsToObjectiveCBridgeable(swift::TargetMetadata<swift::InProcess> const*)::_objcBridgeWitnessCache;
      do
      {
        _X5 = *algn_1ED415F08;
        __asm { CASPL           X4, X5, X20, X21, [X19] }

        _ZF = _X4 == v10;
        v10 = _X4;
      }

      while (!_ZF);
    }

    if (!_X1)
    {
      findBridgeWitness(_X20, &v14);
      return v14;
    }
  }

  return _X1;
}

uint64_t _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(swift *a1, swift *a2, void *a3)
{
  result = tryBridgeNonVerbatimFromObjectiveCUniversal(a1, a2, a3);
  if (result)
  {
    return result;
  }

  BridgeWitness = findBridgeWitness(a2);
  if (!BridgeWitness)
  {
    _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)();
  }

  v8 = BridgeWitness;
  v9 = *BridgeWitness;
  v10 = **BridgeWitness;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = (v9 + (v10 & 0xFFFFFFFFFFFFFFFELL));
  if (v10)
  {
    if (*v11)
    {
      v12 = *v11;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9 + (v10 & 0xFFFFFFFFFFFFFFFELL);
LABEL_10:
  v13 = v12;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;
  if (v13 == -24)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13 + 24;
  }

  v16 = (v15 + 12 * *(v14 + 12));
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  swift_getAssociatedTypeWitness(0, v8, a2, v17 + 24 + 12 * *(v17 + 12) - 8, v16);
  v19 = v18;
  if (swift_dynamicCastUnknownClass::Override == 1)
  {
    v20 = swift_dynamicCastUnknownClassImpl(a1, v18);
  }

  else if (swift_dynamicCastUnknownClass::Override)
  {
    v20 = swift_dynamicCastUnknownClass::Override(a1, v18, swift_dynamicCastUnknownClassImpl);
  }

  else
  {
    v20 = swift_dynamicCastUnknownClassSlow(a1, v18);
  }

  if (!v20)
  {
    Class = swift::_swift_getClass(a1, v21);
    swift::swift_dynamicCastFailure(Class, v19, 0, v23);
  }

  return (v8[3])(v20, a3, a2, v8);
}

uint64_t tryBridgeNonVerbatimFromObjectiveCUniversal(swift *this, uint64_t a2, void *a3)
{
  if (*a2 == 771 && !*(a2 + 12) && (*(a2 + 8) & 0x80000000) != 0)
  {
    _bridgeNonVerbatimFromObjectiveCToAny(this, a3);
    return 1;
  }

  AsSwiftValue = swift::getAsSwiftValue(this, a2);
  if (AsSwiftValue && swift::getValueFromSwiftValue(AsSwiftValue, v7) == a2)
  {
    _bridgeNonVerbatimBoxedValue(v8, a3, a2, v9);
    return 1;
  }

  return swift::tryDynamicCastNSErrorObjectToValue(this, a3, a2, 0);
}

atomic_ullong *swift_dynamicCastUnknownClass(uint64_t a1, uint64_t a2)
{
  if (swift_dynamicCastUnknownClass::Override == 1)
  {
    return swift_dynamicCastUnknownClassImpl(a1, a2);
  }

  if (swift_dynamicCastUnknownClass::Override)
  {
    return swift_dynamicCastUnknownClass::Override(a1, a2, swift_dynamicCastUnknownClassImpl);
  }

  return swift_dynamicCastUnknownClassSlow(a1, a2);
}

uint64_t _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)(swift *a1, swift *a2, void *a3)
{
  if (tryBridgeNonVerbatimFromObjectiveCUniversal(a1, a2, a3))
  {
    return 1;
  }

  result = findBridgeWitness(a2);
  if (result)
  {
    v7 = result;
    v8 = *result;
    v9 = **result;
    if (v9)
    {
      v10 = (v8 + (v9 & 0xFFFFFFFFFFFFFFFELL));
      if (v9)
      {
        if (*v10)
        {
          v11 = *v10;
          goto LABEL_11;
        }
      }

      else if (v10)
      {
        v11 = v8 + (v9 & 0xFFFFFFFFFFFFFFFELL);
LABEL_11:
        v12 = v11;
        if (v11)
        {
          v12 = v11;
        }

        v13 = v12;
        if (v12 == -24)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12 + 24;
        }

        v15 = (v14 + 12 * *(v13 + 12));
        if (v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = 0;
        }

        swift_getAssociatedTypeWitness(0, v7, a2, v16 + 24 + 12 * *(v16 + 12) - 8, v15);
        if (swift_dynamicCastUnknownClass::Override == 1)
        {
          result = swift_dynamicCastUnknownClassImpl(a1, v17);
        }

        else if (swift_dynamicCastUnknownClass::Override)
        {
          result = swift_dynamicCastUnknownClass::Override(a1, v17, swift_dynamicCastUnknownClassImpl);
        }

        else
        {
          result = swift_dynamicCastUnknownClassSlow(a1, v17);
        }

        if (result)
        {
          return (*(v7 + 32))(result, a3, a2, v7) & 1;
        }

        return result;
      }
    }

    v11 = 0;
    goto LABEL_11;
  }

  return result;
}

BOOL _swift_isClassOrObjCExistentialType(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 > 0x7FF)
  {
    LODWORD(v2) = 0;
  }

  result = 1;
  if (v2 <= 769)
  {
    if (v2 && v2 != 515)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 770)
    {
      return *(a2 + 10) << 16 == 0x10000;
    }

    if (v2 != 773)
    {
      if (v2 == 771)
      {
        return (a2[1] & 0x80FFFFFF) == 0;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _swift_setClassMetadata(uint64_t result, void *a2)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t _swift_class_getSuperclass(void *a1)
{
  v1 = *a1;
  if (*a1 <= 0x7FFuLL)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = a1;
  if (!v2 || v2 == 773 && (v3 = a1[1]) != 0)
  {
    v6 = v3[1];
    v5 = v3 + 1;
    v4 = v6;
    if (v6)
    {
      v7 = a1;
      if (swift::getRootSuperclass(a1) != v4)
      {
        if (*v5)
        {
          v8 = *v5;
        }

        else
        {
          v8 = 0;
        }

        return swift_getObjCClassMetadata(v8);
      }

      a1 = v7;
      v1 = *v7;
    }
  }

  if (v1 != 515)
  {
    return 0;
  }

  result = a1[2];
  if (!result)
  {
    return 0;
  }

  return result;
}

BOOL swift_isClassType(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 0x7FF)
  {
    LODWORD(v1) = 0;
  }

  result = 1;
  if (v1)
  {
    return v1 == 515 || v1 == 773;
  }

  return result;
}

uint64_t swift_dynamicCastClass(uint64_t result, uint64_t a2)
{
  if (swift_dynamicCastClass::Override == 1)
  {
    if (result < 1)
    {
      return 0;
    }

    else
    {
      for (i = *result & 0x7FFFFFFFFFFFF8; i != a2; i = *(i + 8))
      {
        if (!*(i + 8))
        {
          a2 = 0;
          break;
        }
      }

      if (!a2)
      {
        return 0;
      }
    }
  }

  else if (swift_dynamicCastClass::Override)
  {
    return swift_dynamicCastClass::Override(result, a2, swift_dynamicCastClassImpl);
  }

  else
  {
    return swift_dynamicCastClassSlow(result, a2);
  }

  return result;
}

uint64_t swift_dynamicCastClassImpl(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    return 0;
  }

  for (i = *result & 0x7FFFFFFFFFFFF8; i != a2; i = *(i + 8))
  {
    if (!*(i + 8))
    {
      a2 = 0;
      break;
    }
  }

  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t swift_dynamicCastClassSlow(swift *a1, uint64_t a2)
{
  Override_dynamicCastClass = swift::getOverride_dynamicCastClass(a1);
  if (Override_dynamicCastClass)
  {
    swift_dynamicCastClass::Override = Override_dynamicCastClass;

    return (Override_dynamicCastClass)(a1, a2, swift_dynamicCastClassImpl);
  }

  else
  {
    swift_dynamicCastClass::Override = 1;
    if (a1 < 1)
    {
      return 0;
    }

    else
    {
      for (i = *a1 & 0x7FFFFFFFFFFFF8; i != a2; i = *(i + 8))
      {
        if (!*(i + 8))
        {
          a2 = 0;
          break;
        }
      }

      if (a2)
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t swift_dynamicCastClassUnconditional(int64_t a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_dynamicCastClassUnconditional::Override == 1)
  {
    return swift_dynamicCastClassUnconditionalImpl(a1, a2);
  }

  if (swift_dynamicCastClassUnconditional::Override)
  {
    return swift_dynamicCastClassUnconditional::Override(a1, a2, a3, a4, a5, swift_dynamicCastClassUnconditionalImpl);
  }

  return swift_dynamicCastClassUnconditionalSlow(a1, a2, a3, a4, a5);
}

uint64_t swift_dynamicCastClassUnconditionalImpl(int64_t a1, Class *a2)
{
  if (swift_dynamicCastClass::Override != 1)
  {
    v8 = a1;
    v9 = a2;
    if (swift_dynamicCastClass::Override)
    {
      v10 = swift_dynamicCastClass::Override(a1, a2, swift_dynamicCastClassImpl);
    }

    else
    {
      v10 = swift_dynamicCastClassSlow(a1, a2);
    }

    a2 = v9;
    v6 = v10;
    a1 = v8;
    if (v6)
    {
      return v6;
    }

LABEL_7:
    v3 = a2;
    Class = swift::_swift_getClass(a1, a2);
    swift::swift_dynamicCastFailure(Class, v3, 0, v5);
  }

  if (a1 < 1)
  {
    goto LABEL_7;
  }

  for (i = *a1 & 0x7FFFFFFFFFFFF8; i != a2; i = *(i + 8))
  {
    if (!*(i + 8))
    {
      goto LABEL_7;
    }
  }

  v6 = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

  return v6;
}

uint64_t swift_dynamicCastClassUnconditionalSlow(swift *a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_dynamicCastClassUnconditional = swift::getOverride_dynamicCastClassUnconditional(a1);
  if (Override_dynamicCastClassUnconditional)
  {
    swift_dynamicCastClassUnconditional::Override = Override_dynamicCastClassUnconditional;

    return (Override_dynamicCastClassUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastClassUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastClassUnconditional::Override = 1;

    return swift_dynamicCastClassUnconditionalImpl(a1, a2);
  }
}

atomic_ullong *swift_dynamicCastUnknownClassImpl(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a2;
  if (*a2 > 0x7FFuLL)
  {
    LODWORD(v4) = 0;
  }

  if (v4 > 770)
  {
    if (v4 == 771)
    {
      v8 = *(a2 + 12);
      if (!v8)
      {
        return a1;
      }

      v9 = (a2 + 8 * ((*(a2 + 8) >> 30) & 1) + 16);
      v10 = 8 * v8;
      while ((*v9 & 1) != 0 && (swift::objectConformsToObjCProtocol(a1, *v9) & 1) != 0)
      {
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          return a1;
        }
      }

      return 0;
    }

    if (v4 == 773)
    {
      v5 = *(a2 + 8);

      return swift_dynamicCastObjCClass(a1, v5);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 == 515)
      {

        return swift_dynamicCastForeignClass(a1, a2);
      }

      return result;
    }

    v6 = swift_dynamicCastClass::Override;
    if (swift_dynamicCastClass::Override == 1)
    {
      if (a1 >= 1)
      {
        for (i = *a1 & 0x7FFFFFFFFFFFF8; i != a2; i = *(i + 8))
        {
          if (!*(i + 8))
          {
            return 0;
          }
        }

        return a1;
      }

      return 0;
    }

    if (swift_dynamicCastClass::Override)
    {

      return v6(a1);
    }

    else
    {

      return swift_dynamicCastClassSlow(a1, a2);
    }
  }

  return result;
}

atomic_ullong *swift_dynamicCastUnknownClassSlow(swift *a1, uint64_t a2)
{
  Override_dynamicCastUnknownClass = swift::getOverride_dynamicCastUnknownClass(a1);
  if (Override_dynamicCastUnknownClass)
  {
    swift_dynamicCastUnknownClass::Override = Override_dynamicCastUnknownClass;

    return (Override_dynamicCastUnknownClass)(a1, a2, swift_dynamicCastUnknownClassImpl);
  }

  else
  {
    swift_dynamicCastUnknownClass::Override = 1;

    return swift_dynamicCastUnknownClassImpl(a1, a2);
  }
}

atomic_ullong *swift_dynamicCastUnknownClassUnconditional(atomic_ullong *this, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_dynamicCastUnknownClassUnconditional::Override == 1)
  {
    return swift_dynamicCastUnknownClassUnconditionalImpl(this, a2, a3, a4, a5);
  }

  if (swift_dynamicCastUnknownClassUnconditional::Override)
  {
    return swift_dynamicCastUnknownClassUnconditional::Override(this, a2, a3, a4, a5, swift_dynamicCastUnknownClassUnconditionalImpl);
  }

  return swift_dynamicCastUnknownClassUnconditionalSlow(this, a2, a3, a4, a5);
}

atomic_ullong *swift_dynamicCastUnknownClassUnconditionalImpl(atomic_ullong *this, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = this;
  v7 = *a2;
  if (*a2 > 0x7FF)
  {
    LODWORD(v7) = 0;
  }

  if (v7 > 515)
  {
    if (v7 == 516)
    {
      return 0;
    }

    if (v7 != 771)
    {
      if (v7 == 773)
      {
        v8 = a2[1];

        return swift_dynamicCastObjCClassUnconditional(this, v8, a3, a4, a5);
      }

LABEL_31:
      Class = swift::_swift_getClass(v6, a2);
      swift::swift_dynamicCastFailure(Class, v5, 0, v15);
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      v11 = &a2[((*(a2 + 2) >> 30) & 1) + 2];
      v12 = 8 * v10;
      do
      {
        a2 = *v11;
        if ((*v11 & 1) == 0 || (swift::objectConformsToObjCProtocol(v6, a2) & 1) == 0)
        {
          goto LABEL_31;
        }

        ++v11;
        v12 -= 8;
      }

      while (v12);
    }

    if (!v6)
    {
      goto LABEL_31;
    }

    return v6;
  }

  if (v7)
  {
    if (v7 != 515)
    {
      goto LABEL_31;
    }

    return swift_dynamicCastForeignClassUnconditional(this, a2, a3, a4, a5);
  }

  else
  {
    v13 = swift_dynamicCastClassUnconditional::Override;
    if (swift_dynamicCastClassUnconditional::Override == 1)
    {

      return swift_dynamicCastClassUnconditionalImpl(this, a2);
    }

    else if (swift_dynamicCastClassUnconditional::Override)
    {

      return v13();
    }

    else
    {

      return swift_dynamicCastClassUnconditionalSlow(this, a2, a3, a4, a5);
    }
  }
}

atomic_ullong *swift_dynamicCastUnknownClassUnconditionalSlow(swift *a1, Class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Override_dynamicCastUnknownClassUnconditional = swift::getOverride_dynamicCastUnknownClassUnconditional(a1);
  if (Override_dynamicCastUnknownClassUnconditional)
  {
    swift_dynamicCastUnknownClassUnconditional::Override = Override_dynamicCastUnknownClassUnconditional;

    return (Override_dynamicCastUnknownClassUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastUnknownClassUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastUnknownClassUnconditional::Override = 1;

    return swift_dynamicCastUnknownClassUnconditionalImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t *swift_dynamicCastMetatype(uint64_t *result, uint64_t *a2)
{
  if (swift_dynamicCastMetatype::Override == 1)
  {
    return swift_dynamicCastMetatypeImpl(result, a2);
  }

  if (swift_dynamicCastMetatype::Override)
  {
    return swift_dynamicCastMetatype::Override(result, a2, swift_dynamicCastMetatypeImpl);
  }

  return swift_dynamicCastMetatypeSlow(result, a2);
}

uint64_t *swift_dynamicCastMetatypeImpl(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = *a2;
    if (*a2 > 0x7FF)
    {
      LODWORD(v2) = 0;
    }

    if (v2)
    {
      if (v2 == 515)
      {
        if (*result <= 0x7FF)
        {
          v7 = *result;
        }

        else
        {
          v7 = 0;
        }

        v8 = result;
        if (v7)
        {
          v8 = result;
          if (v7 != 515)
          {
            if (v7 != 773)
            {
              return 0;
            }

            v8 = result[1];
          }
        }

        v5 = result;
        result = v8;
        goto LABEL_26;
      }

      if (v2 != 773)
      {
        return 0;
      }

      a2 = a2[1];
    }

    if (*result <= 0x7FF)
    {
      v3 = *result;
    }

    else
    {
      v3 = 0;
    }

    v4 = result;
    if (!v3)
    {
      goto LABEL_15;
    }

    if (v3 != 515)
    {
      if (v3 == 773)
      {
        v4 = result[1];
LABEL_15:
        v5 = result;
        v6 = swift_dynamicCastObjCClassMetatype(v4, a2);
        goto LABEL_27;
      }

      return 0;
    }

    v5 = result;
LABEL_26:
    v6 = swift_dynamicCastForeignClassMetatype(result, a2);
LABEL_27:
    if (v6)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *swift_dynamicCastMetatypeSlow(swift *a1, uint64_t *a2)
{
  Override_dynamicCastMetatype = swift::getOverride_dynamicCastMetatype(a1);
  if (Override_dynamicCastMetatype)
  {
    swift_dynamicCastMetatype::Override = Override_dynamicCastMetatype;

    return (Override_dynamicCastMetatype)(a1, a2, swift_dynamicCastMetatypeImpl);
  }

  else
  {
    swift_dynamicCastMetatype::Override = 1;

    return swift_dynamicCastMetatypeImpl(a1, a2);
  }
}

swift *swift_dynamicCastMetatypeUnconditional(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (swift_dynamicCastMetatypeUnconditional::Override == 1)
  {
    return swift_dynamicCastMetatypeUnconditionalImpl(a1, a2, a3, a4, a5);
  }

  if (swift_dynamicCastMetatypeUnconditional::Override)
  {
    return swift_dynamicCastMetatypeUnconditional::Override(a1, a2, a3, a4, a5, swift_dynamicCastMetatypeUnconditionalImpl);
  }

  return swift_dynamicCastMetatypeUnconditionalSlow(a1, a2, a3, a4, a5);
}

swift *swift_dynamicCastMetatypeUnconditionalImpl(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = *a2;
    if (*a2 > 0x7FFuLL)
    {
      LODWORD(v7) = 0;
    }

    if (v7 <= 515)
    {
      if (v7)
      {
        if (v7 != 515)
        {
          goto LABEL_45;
        }

        v8 = *a1;
        if (*a1 > 0x7FF)
        {
          LODWORD(v8) = 0;
        }

        if (v8 && v8 != 515)
        {
          if (v8 != 773)
          {
            goto LABEL_45;
          }

          a1 = a1[1];
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v7 == 771)
      {
        v10 = *(a2 + 8);
        if ((v10 & 0x40000000) != 0)
        {
          v11 = *(a2 + 16);
          if (v11)
          {
            if (swift_dynamicCastMetatype::Override == 1)
            {
              v12 = swift_dynamicCastMetatypeImpl(a1, v11);
            }

            else if (swift_dynamicCastMetatype::Override)
            {
              v12 = swift_dynamicCastMetatype::Override(a1, v11, swift_dynamicCastMetatypeImpl);
            }

            else
            {
              v12 = swift_dynamicCastMetatypeSlow(a1, v11);
            }

            if (!v12)
            {
              goto LABEL_45;
            }

            v10 = *(v6 + 8);
          }
        }

        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_35;
        }

        v13 = *v5;
        if (*v5 > 0x7FFuLL)
        {
          LODWORD(v13) = 0;
        }

        if (!v13 || v13 == 773 || v13 == 515)
        {
LABEL_35:
          v14 = *(v6 + 12);
          if (!v14)
          {
            return v5;
          }

          v15 = (v6 + 8 * ((v10 >> 30) & 1) + 16);
          v16 = 8 * v14;
          while (1)
          {
            v17 = *v15;
            v19 = 0uLL;
            if ((swift::_conformsToProtocol(0, v5, v17, 0, &v19) & 1) == 0 || (swift_isInConformanceExecutionContext(v5, &v19) & 1) == 0)
            {
              break;
            }

            ++v15;
            v16 -= 8;
            if (!v16)
            {
              return v5;
            }
          }
        }

LABEL_45:
        swift::swift_dynamicCastFailure(v5, v6, 0, a4);
      }

      if (v7 != 773)
      {
        goto LABEL_45;
      }

      v6 = *(a2 + 8);
    }

    v9 = *a1;
    if (*a1 > 0x7FF)
    {
      LODWORD(v9) = 0;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    if (v9 != 515)
    {
      if (v9 == 773)
      {
        a1 = a1[1];
LABEL_22:
        swift_dynamicCastObjCClassMetatypeUnconditional(a1, v6, a3, a4, a5);
        return v5;
      }

      goto LABEL_45;
    }

LABEL_41:
    swift_dynamicCastForeignClassMetatypeUnconditional(a1, v6, a3, a4, a5);
  }

  return v5;
}

swift *swift_dynamicCastMetatypeUnconditionalSlow(swift *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  Override_dynamicCastMetatypeUnconditional = swift::getOverride_dynamicCastMetatypeUnconditional(a1);
  if (Override_dynamicCastMetatypeUnconditional)
  {
    swift_dynamicCastMetatypeUnconditional::Override = Override_dynamicCastMetatypeUnconditional;

    return (Override_dynamicCastMetatypeUnconditional)(a1, a2, a3, a4, a5, swift_dynamicCastMetatypeUnconditionalImpl);
  }

  else
  {
    swift_dynamicCastMetatypeUnconditional::Override = 1;

    return swift_dynamicCastMetatypeUnconditionalImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t std::__function::__func<std::string (*)(unsigned long long,unsigned long long),std::allocator<std::string (*)(unsigned long long,unsigned long long)>,std::string ()(unsigned long long,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAA698;
  a2[1] = v2;
  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>::LookupBucketFor<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & ((*a2 >> 9) ^ *a2);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -2)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 24 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>::try_emplace<std::pair<char const*,unsigned long>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((*a2 >> 9) ^ *a2);
    v9 = *result + 24 * v8;
    v10 = *v9;
    if (*a2 == *v9)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_10;
    }

    v13 = 0;
    v14 = 1;
    while (v10 != -2)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -16;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 24 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  v12 = *(result + 8);
  if (4 * v12 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_24;
  }

  if (v5 + ~v12 - *(result + 12) <= v5 >> 3)
  {
LABEL_24:
    v17 = result;
    v18 = a4;
    v19 = a3;
    __swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>::grow(result, v5);
    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>::LookupBucketFor<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v12 = *(v17 + 8);
    v9 = v20;
  }

  *(result + 8) = v12 + 1;
  if (*v9 != -2)
  {
    --*(result + 12);
  }

  *v9 = *a2;
  *(v9 + 8) = *a3;
  v6 = *result;
  v5 = *(result + 16);
  v11 = 1;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::PointerIntPair<swift::TargetMetadata<swift::InProcess> const*,2u,TypeNameKind,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>,__swift::__runtime::llvm::PointerIntPairInfo<swift::TargetMetadata<swift::InProcess> const*,2u,__swift::__runtime::llvm::PointerLikeTypeTraits<swift::TargetMetadata<swift::InProcess> const*>>>,std::pair<char const*,unsigned long>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = __swift::__runtime::llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -2;
        v17[3] = -2;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if (*v20 != -16 && v26 != -2)
            {
              v28 = *(a1 + 16) - 1;
              v29 = v28 & ((v26 >> 9) ^ v26);
              v25 = *a1 + 24 * v29;
              v30 = *v25;
              if (v26 != *v25)
              {
                v31 = 0;
                v32 = 1;
                while (v30 != -2)
                {
                  if (v31)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v30 == -16;
                  }

                  if (v33)
                  {
                    v31 = v25;
                  }

                  v34 = v29 + v32++;
                  v29 = v34 & v28;
                  v25 = *a1 + 24 * (v34 & v28);
                  v30 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v31)
                {
                  v25 = v31;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        __swift::__runtime::llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -2;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -2;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -2;
      v22[3] = -2;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>::LookupBucketFor<__swift::__runtime::llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_18;
  }

  v5 = *a1;
  v7 = 0;
  v8 = v4 - 1;
  v9 = (v4 - 1) & __swift::__runtime::llvm::hash_value(*a2, *(a2 + 8));
  v10 = *a2;
  v11 = *(a2 + 8);
  for (i = 1; ; ++i)
  {
    v13 = (v5 + 32 * v9);
    v14 = *v13;
    if (*v13 == -2)
    {
      if (v10 == -2)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (v14 == -1)
    {
      break;
    }

    if (v11 == v13[1] && (!v11 || !memcmp(v10, *v13, v11)))
    {
LABEL_16:
      result = 1;
      goto LABEL_18;
    }

LABEL_10:
    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 + 2 == 0;
    }

    if (v15)
    {
      v7 = (v5 + 32 * v9);
    }

    v16 = v9 + i;
    v9 = v16 & v8;
  }

  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = (v5 + 32 * v9);
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v18;
    result = 0;
  }

LABEL_18:
  *a3 = v13;
  return result;
}

void swift::Demangle::__runtime::StackAllocatedDemangler<1024ul>::~StackAllocatedDemangler(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  JUMPOUT(0x1865C92E0);
}

char **__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>::InsertIntoBucketImpl<__swift::__runtime::llvm::StringRef>(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v7 = a1;
  __swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>::grow(a1, v5);
  v9 = 0;
  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>::LookupBucketFor<__swift::__runtime::llvm::StringRef>(v7, a3, &v9);
  a1 = v7;
  a4 = v9;
LABEL_3:
  ++*(a1 + 2);
  if (*a4 != -1)
  {
    --*(a1 + 3);
  }

  return a4;
}

_OWORD *__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = __swift::__runtime::llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_1806726C0;
        *v13 = xmmword_1806726C0;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = xmmword_1806726C0;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    v16 = (32 * v3);
    if (v3)
    {
      v17 = 32 * v3;
      v18 = v4;
      do
      {
        if (*v18 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = 0;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>,__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>,__swift::__runtime::llvm::DenseMapInfo<__swift::__runtime::llvm::StringRef>,__swift::__runtime::llvm::detail::DenseMapPair<__swift::__runtime::llvm::StringRef,std::pair<char const*,unsigned long>>>::LookupBucketFor<__swift::__runtime::llvm::StringRef>(a1, v18, &v25);
          v19 = v25;
          *v25 = *v18;
          *(v19 + 1) = *(v18 + 1);
          ++*(a1 + 8);
        }

        v18 = (v18 + 32);
        v17 -= 32;
      }

      while (v17);
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, v16);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    if (((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_23;
    }

    v21 = ((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result + 2;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 2) = xmmword_1806726C0;
      *v22 = xmmword_1806726C0;
      v22 += 4;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_23:
      v24 = &result[2 * v20];
      do
      {
        *v10 = xmmword_1806726C0;
        v10 += 2;
      }

      while (v10 != v24);
    }
  }

  return result;
}

unsigned int *swift::_buildDemanglingForContext(uint64_t a1, const char *a2, uint64_t a3, swift::Demangle::__runtime::NodeFactory *a4)
{
  v150[8] = *MEMORY[0x1E69E9840];
  v148 = v150;
  v149 = 0x800000000;
  if (a1)
  {
    v6 = a1;
    v7 = 0;
    do
    {
      if (v7 >= HIDWORD(v149))
      {
        v12 = a2;
        v13 = v6;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v148, v150, v7 + 1, 8);
        a2 = v12;
        v6 = v13;
        v7 = v149;
      }

      *&v148[8 * v7] = v6;
      v7 = v149 + 1;
      LODWORD(v149) = v149 + 1;
      v10 = *(v6 + 4);
      v9 = v6 + 4;
      v8 = v10;
      if (!v10)
      {
        break;
      }

      v11 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + v9);
      if (v8)
      {
        v6 = *v11;
        if (!*v11)
        {
          break;
        }
      }

      else
      {
        if (!v11)
        {
          break;
        }

        v6 = (v8 & 0xFFFFFFFFFFFFFFFELL) + v9;
      }
    }

    while (v6);
    if (v7)
    {
      v133 = a2;
      v14 = 0;
      v15 = v148;
      v16 = &v148[8 * v7];
      v135 = a3;
      v136 = 0;
      v137 = v148;
      while (1)
      {
        v28 = *(v16 - 1);
        v16 -= 8;
        v27 = v28;
        v29 = v28;
        v30 = *v28;
        v31 = *v28 & 0x1F;
        if (v31 == 3)
        {
          if (v27)
          {
            v17 = v27;
          }

          else
          {
            v17 = 0;
          }

          v18 = (v17 + 2);
          v19 = v17[2];
          Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, 190);
          swift::Demangle::__runtime::Node::addChild(Node, v14, a4, v21, v22);
          v23 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 103, &v18[v19]);
          v26 = Node;
        }

        else
        {
          v32 = v29;
          if (v31 == 1)
          {
            if (v27)
            {
              v34 = v27;
            }

            else
            {
              v34 = 0;
            }

            v38 = v34[2];
            if (v38)
            {
              v39 = v34 + v38 + 8;
            }

            else
            {
              v39 = 0;
            }

            SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v39, a2);
            v146[0] = &unk_1EEEAA708;
            v146[1] = a4;
            v147 = v146;
            v42 = swift::Demangle::__runtime::Demangler::demangleType(a4, SymbolicMangledNameStringRef, v41, v146);
            if (v147 == v146)
            {
              (*(*v147 + 32))(v147);
            }

            else if (v147)
            {
              (*(*v147 + 40))();
            }

            if (*(v42 + 16) == 243)
            {
              v43 = *(v42 + 18);
              if ((v43 - 1) < 2)
              {
                goto LABEL_50;
              }

              if (v43 == 5)
              {
                if (*(v42 + 8))
                {
                  v42 = *v42;
LABEL_50:
                  v42 = *v42;
                  if (!a3)
                  {
LABEL_121:
                    v62 = 0;
                    goto LABEL_122;
                  }
                }

                else
                {
                  v42 = 0;
                  if (!a3)
                  {
                    goto LABEL_121;
                  }
                }

LABEL_69:
                if ((*v32 & 0x1F) == 2)
                {
                  goto LABEL_121;
                }

                GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v27);
                if (!GenericContext || v136 >= *(GenericContext + 2))
                {
                  goto LABEL_121;
                }

                v59 = GenericContext;
                v62 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 246);
                v63 = *(v59 + 2);
                if (v136 < v63)
                {
                  v64 = &v133[8 * v136];
                  v65 = v63 - v136;
                  do
                  {
                    v66 = *v64++;
                    swift::Demangle::__runtime::Node::addChild(v62, v66, a4, v60, v61);
                    --v65;
                  }

                  while (v65);
                  v136 = v63;
                  a3 = v135;
                }

LABEL_122:
                v112 = *(v42 + 16);
                if (v112 > 0x11 || ((1 << v112) & 0x2E000) == 0)
                {
                  goto LABEL_146;
                }

                if (v62)
                {
                  v114 = swift::Demangle::__runtime::NodeFactory::createNode(a4, v112);
                  v117 = v114;
                  v118 = *(v42 + 18);
                  if ((v118 - 1) < 2)
                  {
                    goto LABEL_131;
                  }

                  if (v118 == 5 && *(v42 + 8))
                  {
                    v42 = *v42;
LABEL_131:
                    v119 = *v42;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  swift::Demangle::__runtime::Node::addChild(v114, v119, a4, v115, v116);
                  swift::Demangle::__runtime::Node::addChild(v117, v62, a4, v122, v123);
                  v42 = v117;
                  goto LABEL_146;
                }

                v120 = *(v42 + 18);
                if ((v120 - 1) < 2)
                {
LABEL_136:
                  v121 = *v42;
                }

                else
                {
                  if (v120 == 5 && *(v42 + 8))
                  {
                    v42 = *v42;
                    goto LABEL_136;
                  }

                  v121 = 0;
                }

                v124 = *(v121 + 18);
                if ((v124 - 1) >= 2)
                {
                  if (v124 != 5 || !*(v121 + 8))
                  {
                    v42 = 0;
                    goto LABEL_146;
                  }

                  v121 = *v121;
                }

                v42 = *v121;
LABEL_146:
                Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, 73);
                swift::Demangle::__runtime::Node::addChild(Node, v14, a4, v125, v126);
                swift::Demangle::__runtime::Node::addChild(Node, v42, a4, v127, v128);
                v15 = v137;
                goto LABEL_17;
              }

              v42 = 0;
            }

            if (!a3)
            {
              goto LABEL_121;
            }

            goto LABEL_69;
          }

          if (!v31)
          {
            if (v27)
            {
              v33 = v27;
            }

            else
            {
              v33 = 0;
            }

            Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, 163, &v33[*(v33 + 2) + 8]);
            goto LABEL_17;
          }

          if (v27 && (v30 & 0x10) != 0)
          {
            swift::ParsedTypeIdentity::parse(v27, __str);
            if (v31 == 16)
            {
              v36 = 25;
              v35 = 13;
LABEL_82:
              if (v145 != 1 || v142 != 1 || (*v141 != 116 ? (v67 = 230) : (v67 = 245), *v141 != 116))
              {
                if (swift::_isCImportedTagType(v27, __str))
                {
                  v67 = 230;
                }

                else
                {
                  v67 = v36;
                }
              }
            }

            else
            {
              if (v31 != 17)
              {
                if (v31 == 18)
                {
                  v35 = 14;
                }

                else
                {
                  v35 = 17;
                }

                if (v31 == 18)
                {
                  v36 = 63;
                }

                else
                {
                  v36 = 177;
                }

                goto LABEL_82;
              }

              v67 = 230;
              v35 = 15;
              if (v145 == 1 && v142 == 1)
              {
                if (*v141 == 116)
                {
                  v67 = 245;
                }

                else
                {
                  v67 = 230;
                }
              }
            }

            v134 = v35;
            Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, v67);
            swift::Demangle::__runtime::Node::addChild(Node, v14, a4, v68, v69);
            if (v145)
            {
              v70 = 32 * (v140 != 0);
            }

            else
            {
              v70 = 0;
            }

            v71 = &__str[v70];
            v72 = *(v71 + 1);
            if (v72)
            {
              v73 = *v71;
              v74 = *(a4 + 1);
              if (!v74 || (v75 = &v74[v72], &v74[v72] > *(a4 + 2)))
              {
                v76 = 2 * *(a4 + 4);
                if (v76 <= v72 + 1)
                {
                  v76 = v72 + 1;
                }

                *(a4 + 4) = v76;
                v77 = v76 + 8;
                v78 = malloc_type_malloc(v76 + 8, 0x2004093837F09uLL);
                *v78 = *(a4 + 3);
                v74 = (v78 + 1);
                *(a4 + 2) = v78 + v77;
                *(a4 + 3) = v78;
                v75 = v78 + v72 + 8;
              }

              *(a4 + 1) = v75;
              memmove(v74, v73, v72);
            }

            else
            {
              v74 = 0;
            }

            NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a4, 103, v74, v72);
            v82 = NodeWithAllocatedText;
            if (v145 == 1)
            {
              v83 = __len;
              if (__len)
              {
                v84 = NodeWithAllocatedText;
                v85 = __src;
                v86 = *(a4 + 1);
                if (!v86 || (v87 = &v86[__len], &v86[__len] > *(a4 + 2)))
                {
                  v88 = 2 * *(a4 + 4);
                  if (v88 <= __len + 1)
                  {
                    v88 = __len + 1;
                  }

                  *(a4 + 4) = v88;
                  v89 = v88 + 8;
                  v90 = malloc_type_malloc(v88 + 8, 0x2004093837F09uLL);
                  *v90 = *(a4 + 3);
                  v86 = (v90 + 1);
                  v91 = v90 + v89;
                  v15 = v137;
                  *(a4 + 2) = v91;
                  *(a4 + 3) = v90;
                  v87 = v90 + v83 + 8;
                }

                *(a4 + 1) = v87;
                memmove(v86, v85, v83);
                v92 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a4, 103, v86, v83);
                v93 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 216);
                swift::Demangle::__runtime::Node::addChild(v93, v92, a4, v94, v95);
                swift::Demangle::__runtime::Node::addChild(v93, v84, a4, v96, v97);
                v82 = v93;
              }
            }

            swift::Demangle::__runtime::Node::addChild(Node, v82, a4, v80, v81);
            a3 = v135;
            if (!v135)
            {
              goto LABEL_17;
            }

            if ((*v32 & 0x1F) == 2)
            {
              goto LABEL_17;
            }

            v98 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v27);
            if (!v98 || v136 >= *(v98 + 2))
            {
              goto LABEL_17;
            }

            v99 = v98;
            v102 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 246);
            v103 = *(v99 + 2);
            if (v136 < v103)
            {
              v104 = &v133[8 * v136];
              v105 = v103 - v136;
              do
              {
                v106 = *v104++;
                swift::Demangle::__runtime::Node::addChild(v102, v106, a4, v100, v101);
                --v105;
              }

              while (v105);
              v136 = v103;
              v15 = v137;
            }

            if (!v102)
            {
              goto LABEL_17;
            }

            v107 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 243);
            swift::Demangle::__runtime::Node::addChild(v107, Node, a4, v108, v109);
            Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, v134);
            swift::Demangle::__runtime::Node::addChild(Node, v107, a4, v110, v111);
            v26 = Node;
            v23 = v102;
            goto LABEL_16;
          }

          if (v27)
          {
            v37 = v29;
          }

          else
          {
            v37 = 0;
          }

          snprintf(__str, 0x12uLL, "$%lx", v37);
          Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, 1);
          v138[0] = 0;
          v138[1] = 0;
          v44 = strlen(__str);
          swift::Demangle::__runtime::CharVector::append(v138, __str, v44, a4);
          v45 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 103, v138);
          swift::Demangle::__runtime::Node::addChild(Node, v45, a4, v46, v47);
          swift::Demangle::__runtime::Node::addChild(Node, v14, a4, v48, v49);
          if (!a3)
          {
            goto LABEL_65;
          }

          if ((*v32 & 0x1F) == 2)
          {
            goto LABEL_65;
          }

          v50 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v27);
          if (!v50)
          {
            goto LABEL_65;
          }

          v51 = v136;
          if (v136 >= *(v50 + 2))
          {
            goto LABEL_65;
          }

          v52 = v50;
          v53 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 246);
          v54 = *(v52 + 2);
          if (v136 < v54)
          {
            v55 = &v133[8 * v136];
            v56 = v54 - v136;
            do
            {
              v57 = *v55++;
              swift::Demangle::__runtime::Node::addChild(v53, v57, a4, v24, v25);
              --v56;
            }

            while (v56);
            v51 = v54;
            a3 = v135;
            v15 = v137;
          }

          v136 = v51;
          if (!v53)
          {
LABEL_65:
            v53 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 246);
          }

          v26 = Node;
          v23 = v53;
        }

LABEL_16:
        swift::Demangle::__runtime::Node::addChild(v26, v23, a4, v24, v25);
LABEL_17:
        v14 = Node;
        if (v16 == v15)
        {
          goto LABEL_148;
        }
      }
    }
  }

  Node = 0;
LABEL_148:
  v129 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 243);
  swift::Demangle::__runtime::Node::addChild(v129, Node, a4, v130, v131);
  if (v148 != v150)
  {
    free(v148);
  }

  return v129;
}

unsigned int *_swift_buildDemanglingForMetadata(unint64_t a1, swift::Demangle::__runtime::NodeFactory *a2)
{
  v3 = a1;
  v239 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1 > 0x7FFuLL)
  {
    LODWORD(v4) = 0;
  }

  if (v4 > 770)
  {
    if (v4 > 774)
    {
      if ((v4 - 1280) < 2 || v4 == 775 || v4 == 1024)
      {
        return 0;
      }

      goto LABEL_52;
    }

    if (v4 <= 772)
    {
      if (v4 != 771)
      {
        v6 = _swift_buildDemanglingForMetadata(*(a1 + 8), a2);
        if (!v6)
        {
          return 0;
        }

        v7 = v6;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(a2, 243);
        swift::Demangle::__runtime::Node::addChild(Node, v7, a2, v9, v10);
        v11 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 154);
        v14 = v11;
        v15 = Node;
LABEL_240:
        swift::Demangle::__runtime::Node::addChild(v11, v15, a2, v12, v13);
        return v14;
      }

      v30 = *(a1 + 12);
      v229 = (a1 + 16);
      v31 = (a1 + 16 + 8 * ((*(a1 + 8) >> 30) & 1));
      v32 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 246);
      v14 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 200);
      swift::Demangle::__runtime::Node::addChild(v14, v32, a2, v33, v34);
      v231 = v30;
      if (!v30)
      {
LABEL_217:
        v122 = *(v3 + 8);
        if ((v122 & 0x40000000) != 0 && (v123 = *v229) != 0)
        {
          v124 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 201);
          v125 = _swift_buildDemanglingForMetadata(v123, a2);
          if (!v125)
          {
            return 0;
          }

          v128 = v125;
          swift::Demangle::__runtime::Node::addChild(v124, v14, a2, v126, v127);
          v131 = v124;
          v132 = v128;
        }

        else
        {
          if (v122 < 0)
          {
            return v14;
          }

          if (v231)
          {
            v133 = 0;
            v134 = &v31[v231];
            do
            {
              while ((*v31 & 1) != 0)
              {
                ++v31;
                v133 = 1;
                if (v31 == v134)
                {
                  return v14;
                }
              }

              if (*v31)
              {
                v135 = *v31;
              }

              else
              {
                v135 = 0;
              }

              v133 |= (*v135 & 0x10000) == 0;
              ++v31;
            }

            while (v31 != v134);
            if (v133)
            {
              return v14;
            }
          }

          v131 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 202);
          v124 = v131;
          v132 = v14;
        }

        swift::Demangle::__runtime::Node::addChild(v131, v132, a2, v129, v130);
        return v124;
      }

      v35 = 8 * v30;
      v36 = v31;
      v233 = v32;
      v230 = v14;
      while (1)
      {
        v84 = *v36;
        if ((*v36 & 1) == 0)
        {
          if (v84)
          {
            v85 = *v36;
          }

          else
          {
            v85 = 0;
          }

          v89 = swift::_buildDemanglingForContext(v85, 0, 0, a2);
          if (!v89)
          {
            return 0;
          }

          v82 = v89;
          goto LABEL_159;
        }

        v86 = v84 & 0xFFFFFFFFFFFFFFFELL;
        v87 = *(v86 + 8);
        if (v87)
        {
          v88 = strlen(*(v86 + 8));
        }

        else
        {
          v88 = 0;
        }

        v238 = 0;
        v92 = swift::Demangle::__runtime::Demangler::demangleSymbol(a2, v87, v88, v237);
        if (v238 == v237)
        {
          (*(*v238 + 32))(v238);
          if (!v92)
          {
            goto LABEL_180;
          }
        }

        else
        {
          if (v238)
          {
            (*(*v238 + 40))(v238);
          }

          if (!v92)
          {
LABEL_180:
            v94 = *(a2 + 1);
            if (!v94 || (v95 = (v94 + 3), (v94 + 3) > *(a2 + 2)))
            {
              v96 = 2 * *(a2 + 4);
              if (v96 <= 4)
              {
                v96 = 4;
              }

              *(a2 + 4) = v96;
              v97 = v96 + 8;
              v98 = malloc_type_malloc(v96 + 8, 0x2004093837F09uLL);
              *v98 = *(a2 + 3);
              v95 = v98 + 11;
              v94 = (v98 + 1);
              *(a2 + 2) = v98 + v97;
              *(a2 + 3) = v98;
            }

            *(a2 + 1) = v95;
            *(v94 + 2) = 67;
            *v94 = 24415;
            NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a2, 163, v94, 3);
            v100 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 190);
            swift::Demangle::__runtime::Node::addChild(v100, NodeWithAllocatedText, a2, v101, v102);
            if (v88)
            {
              v103 = *(a2 + 1);
              if (!v103 || (v104 = &v103[v88], &v103[v88] > *(a2 + 2)))
              {
                v105 = 2 * *(a2 + 4);
                if (v105 <= v88 + 1)
                {
                  v105 = v88 + 1;
                }

                *(a2 + 4) = v105;
                v106 = v3;
                v107 = v105 + 8;
                v108 = malloc_type_malloc(v105 + 8, 0x2004093837F09uLL);
                *v108 = *(a2 + 3);
                v103 = (v108 + 1);
                v109 = v108 + v107;
                v3 = v106;
                v14 = v230;
                *(a2 + 2) = v109;
                *(a2 + 3) = v108;
                v104 = v108 + v88 + 8;
              }

              *(a2 + 1) = v104;
              memmove(v103, v87, v88);
            }

            else
            {
              v103 = 0;
            }

            v112 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a2, 103, v103, v88);
            swift::Demangle::__runtime::Node::addChild(v100, v112, a2, v113, v114);
            v115 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 243);
            swift::Demangle::__runtime::Node::addChild(v115, v100, a2, v116, v117);
            v32 = v233;
            v83 = v233;
            v82 = v115;
            goto LABEL_160;
          }
        }

        v93 = *(v92 + 18);
        if ((v93 - 1) < 2)
        {
          goto LABEL_178;
        }

        if (v93 == 5 && *(v92 + 8))
        {
          break;
        }

        v82 = 0;
LABEL_193:
        if (*(v82 + 8) != 247)
        {
          goto LABEL_159;
        }

        v110 = *(v82 + 18);
        if ((v110 - 1) < 2)
        {
          goto LABEL_198;
        }

        if (v110 == 5 && v82[2])
        {
          v82 = *v82;
LABEL_198:
          v111 = *v82;
          goto LABEL_202;
        }

        v111 = 0;
LABEL_202:
        v118 = *(v111 + 18);
        if ((v118 - 1) < 2)
        {
          goto LABEL_206;
        }

        if (v118 == 5 && v111[2])
        {
          v111 = *v111;
LABEL_206:
          v119 = *v111;
          goto LABEL_208;
        }

        v119 = 0;
LABEL_208:
        v120 = *(v119 + 18);
        if ((v120 - 1) >= 2)
        {
          if (v120 != 5 || !v119[2])
          {
            v81 = 0;
            goto LABEL_214;
          }

          v119 = *v119;
        }

        v81 = *v119;
LABEL_214:
        v121 = *(v81 + 18);
        if ((v121 - 1) >= 2)
        {
          if (v121 != 5 || !v81[2])
          {
            v82 = 0;
            goto LABEL_159;
          }

          v81 = *v81;
        }

        v82 = *v81;
LABEL_159:
        v83 = v32;
LABEL_160:
        swift::Demangle::__runtime::Node::addChild(v83, v82, a2, v90, v91);
        ++v36;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_217;
        }
      }

      v92 = *v92;
LABEL_178:
      v82 = *v92;
      goto LABEL_193;
    }

    if (v4 != 773)
    {
      v18 = _swift_buildDemanglingForMetadata(*(a1 + 8), a2);
      if (!v18)
      {
        return 0;
      }

      v19 = v18;
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 71);
      v14 = v11;
      v15 = v19;
      goto LABEL_240;
    }

    Name = class_getName(*(a1 + 8));
    v38 = *(a2 + 1);
    if (!v38 || (v39 = (v38 + 3), (v38 + 3) > *(a2 + 2)))
    {
      v40 = 2 * *(a2 + 4);
      if (v40 <= 4)
      {
        v40 = 4;
      }

      *(a2 + 4) = v40;
      v41 = v40 + 8;
      v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
      *v42 = *(a2 + 3);
      v39 = v42 + 11;
      v38 = (v42 + 1);
      *(a2 + 2) = v42 + v41;
      *(a2 + 3) = v42;
    }

    *(a2 + 1) = v39;
    *(v38 + 2) = 67;
    *v38 = 24415;
    v43 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a2, 163, v38, 3);
    v14 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 25);
    swift::Demangle::__runtime::Node::addChild(v14, v43, a2, v44, v45);
    if (Name)
    {
      v46 = strlen(Name);
      v47 = v46;
      if (v46)
      {
        v48 = *(a2 + 1);
        if (!v48 || (v49 = &v48[v46], &v48[v46] > *(a2 + 2)))
        {
          v50 = 2 * *(a2 + 4);
          if (v50 <= v46 + 1)
          {
            v50 = v46 + 1;
          }

          *(a2 + 4) = v50;
          v51 = v50 + 8;
          v52 = malloc_type_malloc(v50 + 8, 0x2004093837F09uLL);
          *v52 = *(a2 + 3);
          v48 = (v52 + 1);
          *(a2 + 2) = v52 + v51;
          *(a2 + 3) = v52;
          v49 = v52 + v47 + 8;
        }

        *(a2 + 1) = v49;
        memmove(v48, Name, v47);
        goto LABEL_239;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = 0;
LABEL_239:
    v15 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a2, 103, v48, v47);
    v11 = v14;
    goto LABEL_240;
  }

  if (v4 <= 514)
  {
    if ((v4 - 513) < 2)
    {
      goto LABEL_8;
    }

    if (!v4)
    {
      if ((*(a1 + 32) & 2) == 0)
      {
        return 0;
      }

        ;
      }

      v16 = *(i + 64);
      goto LABEL_38;
    }

    if (v4 == 512)
    {
LABEL_8:
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    goto LABEL_52;
  }

  if (v4 <= 768)
  {
    if (v4 == 515 || v4 == 516)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
LABEL_19:
        v16 = v5;
LABEL_38:
        v17 = v16;
        goto LABEL_39;
      }

LABEL_24:
      v17 = 0;
LABEL_39:
      v234 = v236;
      *v235 = 0x800000000;
      if ((*v17 & 0x80) == 0)
      {
        v23 = 0;
        v24 = v236;
        goto LABEL_45;
      }

      v25 = *v17 & 0x1F;
      if ((v25 - 17) < 2)
      {
        ResilientImmediateMembersOffset = 2;
LABEL_43:
        if (!_buildDemanglingForGenericArgs(v17, v3 + 8 * ResilientImmediateMembersOffset, &v234, a2))
        {
          v14 = 0;
          goto LABEL_50;
        }

        v24 = v234;
        v23 = v235[0];
LABEL_45:
        if (v17)
        {
          v27 = v17;
        }

        else
        {
          v27 = 0;
        }

        v14 = swift::_buildDemanglingForContext(v27, v24, v23, a2);
LABEL_50:
        v28 = v234;
        if (v234 == v236)
        {
          return v14;
        }

LABEL_51:
        free(v28);
        return v14;
      }

      if (v25 == 16)
      {
        if (v17)
        {
          v80 = v17;
        }

        else
        {
          v80 = 0;
        }

        if ((*v80 & 0x20000000) != 0)
        {
          ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v80);
        }

        else
        {
          if ((*v80 & 0x10000000) != 0)
          {
            v136 = 0;
            v137 = 6;
          }

          else
          {
            v136 = v80[7];
            v137 = 8;
          }

          ResilientImmediateMembersOffset = v136 - v80[v137];
        }

        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_345;
    }

LABEL_52:
    if (a1 == &unk_1EEEAC218)
    {
      v29 = "Builtin.Int1";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC228)
    {
      v29 = "Builtin.Int7";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC238)
    {
      v29 = "Builtin.Int8";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC248)
    {
      v29 = "Builtin.Int16";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC258)
    {
      v29 = "Builtin.Int32";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC268)
    {
      v29 = "Builtin.Int63";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC278)
    {
      v29 = "Builtin.Int64";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC288)
    {
      v29 = "Builtin.Int128";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC298)
    {
      v29 = "Builtin.Int256";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC2A8)
    {
      v29 = "Builtin.Int512";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC2B8)
    {
      v29 = "Builtin.Word";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC2C8)
    {
      v29 = "Builtin.FPIEEE16";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC2D8)
    {
      v29 = "Builtin.FPIEEE32";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC2E8)
    {
      v29 = "Builtin.FPIEEE64";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC2F8)
    {
      v29 = "Builtin.FPIEEE80";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC308)
    {
      v29 = "Builtin.FPIEEE128";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC318)
    {
      v29 = "Builtin.NativeObject";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC328)
    {
      v29 = "Builtin.BridgeObject";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC338)
    {
      v29 = "Builtin.RawPointer";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC348)
    {
      v29 = "Builtin.UnsafeValueBuffer";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC358)
    {
      v29 = "Builtin.UnknownObject";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC368)
    {
      v29 = "Builtin.RawUnsafeContinuation";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC378)
    {
      v29 = "Builtin.DefaultActorStorage";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC388)
    {
      v29 = "Builtin.NonDefaultDistributedActorStorage";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC398)
    {
      v29 = "Builtin.Executor";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC3A8)
    {
      v29 = "Builtin.Job";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC3B8)
    {
      v29 = "Builtin.Vec2xInt8";
      goto LABEL_384;
    }

    if (a1 == &unk_1EEEAC3C8)
    {
      v29 = "Builtin.Vec3xInt8";
      goto LABEL_384;
    }

    if (a1 != &unk_1EEEAC3D8)
    {
      if (a1 == &unk_1EEEAC3E8)
      {
        v29 = "Builtin.Vec8xInt8";
      }

      else if (a1 == &unk_1EEEAC3F8)
      {
        v29 = "Builtin.Vec16xInt8";
      }

      else if (a1 == &unk_1EEEAC408)
      {
        v29 = "Builtin.Vec32xInt8";
      }

      else if (a1 == &unk_1EEEAC418)
      {
        v29 = "Builtin.Vec64xInt8";
      }

      else if (a1 == &unk_1EEEAC428)
      {
        v29 = "Builtin.Vec2xInt16";
      }

      else if (a1 == &unk_1EEEAC438)
      {
        v29 = "Builtin.Vec3xInt16";
      }

      else if (a1 == &unk_1EEEAC448)
      {
        v29 = "Builtin.Vec4xInt16";
      }

      else if (a1 == &unk_1EEEAC458)
      {
        v29 = "Builtin.Vec8xInt16";
      }

      else if (a1 == &unk_1EEEAC468)
      {
        v29 = "Builtin.Vec16xInt16";
      }

      else if (a1 == &unk_1EEEAC478)
      {
        v29 = "Builtin.Vec32xInt16";
      }

      else if (a1 == &unk_1EEEAC488)
      {
        v29 = "Builtin.Vec64xInt16";
      }

      else if (a1 == &unk_1EEEAC498)
      {
        v29 = "Builtin.Vec2xInt32";
      }

      else if (a1 == &unk_1EEEAC4A8)
      {
        v29 = "Builtin.Vec3xInt32";
      }

      else if (a1 == &unk_1EEEAC4B8)
      {
        v29 = "Builtin.Vec4xInt32";
      }

      else if (a1 == &unk_1EEEAC4C8)
      {
        v29 = "Builtin.Vec8xInt32";
      }

      else if (a1 == &unk_1EEEAC4D8)
      {
        v29 = "Builtin.Vec16xInt32";
      }

      else if (a1 == &unk_1EEEAC4E8)
      {
        v29 = "Builtin.Vec32xInt32";
      }

      else if (a1 == &unk_1EEEAC4F8)
      {
        v29 = "Builtin.Vec64xInt32";
      }

      else if (a1 == &unk_1EEEAC508)
      {
        v29 = "Builtin.Vec2xInt64";
      }

      else if (a1 == &unk_1EEEAC518)
      {
        v29 = "Builtin.Vec3xInt64";
      }

      else if (a1 == &unk_1EEEAC528)
      {
        v29 = "Builtin.Vec4xInt64";
      }

      else if (a1 == &unk_1EEEAC538)
      {
        v29 = "Builtin.Vec8xInt64";
      }

      else if (a1 == &unk_1EEEAC548)
      {
        v29 = "Builtin.Vec16xInt64";
      }

      else if (a1 == &unk_1EEEAC558)
      {
        v29 = "Builtin.Vec32xInt64";
      }

      else if (a1 == &unk_1EEEAC568)
      {
        v29 = "Builtin.Vec64xInt64";
      }

      else if (a1 == &unk_1EEEAC578)
      {
        v29 = "Builtin.Vec2xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC588)
      {
        v29 = "Builtin.Vec3xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC598)
      {
        v29 = "Builtin.Vec4xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC5A8)
      {
        v29 = "Builtin.Vec8xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC5B8)
      {
        v29 = "Builtin.Vec16xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC5C8)
      {
        v29 = "Builtin.Vec32xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC5D8)
      {
        v29 = "Builtin.Vec64xFPIEEE32";
      }

      else if (a1 == &unk_1EEEAC5E8)
      {
        v29 = "Builtin.Vec2xFPIEEE64";
      }

      else if (a1 == &unk_1EEEAC5F8)
      {
        v29 = "Builtin.Vec3xFPIEEE64";
      }

      else if (a1 == &unk_1EEEAC608)
      {
        v29 = "Builtin.Vec4xFPIEEE64";
      }

      else if (a1 == &unk_1EEEAC618)
      {
        v29 = "Builtin.Vec8xFPIEEE64";
      }

      else if (a1 == &unk_1EEEAC628)
      {
        v29 = "Builtin.Vec16xFPIEEE64";
      }

      else if (a1 == &unk_1EEEAC638)
      {
        v29 = "Builtin.Vec32xFPIEEE64";
      }

      else
      {
        if (a1 != &unk_1EEEAC648)
        {
          return 0;
        }

        v29 = "Builtin.Vec64xFPIEEE64";
      }

      goto LABEL_384;
    }

LABEL_345:
    v29 = "Builtin.Vec4xInt8";
LABEL_384:
    v14 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 20, v29);
    if (v14)
    {
      return v14;
    }

    return 0;
  }

  if (v4 == 769)
  {
    v53 = *(a1 + 16);
    v14 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 234);
    v54 = v3;
    v55 = *(v3 + 8);
    if (!v55)
    {
      return v14;
    }

    for (j = (v54 + 24); ; j += 2)
    {
      v66 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 235);
      if (v53)
      {
        v67 = strchr(v53, 32);
        if (v67)
        {
          v68 = v67;
          if (v53 != v67)
          {
            v69 = v67 - v53;
            v70 = *(a2 + 1);
            if (!v70 || (v71 = &v70[v69], &v70[v69] > *(a2 + 2)))
            {
              v72 = 2 * *(a2 + 4);
              if (v72 <= v69 + 1)
              {
                v72 = v69 + 1;
              }

              *(a2 + 4) = v72;
              v73 = v72 + 8;
              v74 = malloc_type_malloc(v72 + 8, 0x2004093837F09uLL);
              *v74 = *(a2 + 3);
              v70 = (v74 + 1);
              *(a2 + 2) = v74 + v73;
              *(a2 + 3) = v74;
              v71 = v74 + v69 + 8;
            }

            *(a2 + 1) = v71;
            memmove(v70, v53, v68 - v53);
            v75 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(a2, 236, v70, v68 - v53);
            swift::Demangle::__runtime::Node::addChild(v66, v75, a2, v76, v77);
          }

          v53 = v68 + 1;
        }
      }

      v78 = _swift_buildDemanglingForMetadata(*j, a2);
      if (!v78)
      {
        break;
      }

      v79 = v78;
      if (*(v78 + 16) == 243)
      {
        v62 = v66;
        v63 = v79;
      }

      else
      {
        v57 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 243);
        swift::Demangle::__runtime::Node::addChild(v57, v79, a2, v58, v59);
        v62 = v66;
        v63 = v57;
      }

      swift::Demangle::__runtime::Node::addChild(v62, v63, a2, v60, v61);
      swift::Demangle::__runtime::Node::addChild(v14, v66, a2, v64, v65);
      if (!--v55)
      {
        return v14;
      }
    }

    return 0;
  }

  v20 = 0;
  v21 = *(a1 + 8);
  if (BYTE2(v21) > 1u)
  {
    if (BYTE2(v21) == 2)
    {
      v20 = 233;
    }

    else if (BYTE2(v21) == 3)
    {
      v20 = 23;
    }
  }

  else if (BYTE2(v21))
  {
    if (BYTE2(v21) == 1)
    {
      v20 = 175;
    }
  }

  else if ((v21 & 0x4000000) != 0)
  {
    v20 = 84;
  }

  else
  {
    v20 = 67;
  }

  v234 = v236;
  *v235 = 0x800000000;
  v138 = v21;
  if (!v21)
  {
LABEL_280:
    v161 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 234);
    if (v235[0])
    {
      v164 = v234;
      v165 = (v234 + 16 * v235[0]);
      do
      {
        v175 = *v164;
        v176 = *(v164 + 8);
        v177 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 235);
        if (v176 == 1)
        {
          v178 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 289);
          swift::Demangle::__runtime::Node::addChild(v177, v178, a2, v179, v180);
        }

        if (*(v175 + 8) == 243)
        {
          v171 = v177;
          v172 = v175;
        }

        else
        {
          v166 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 243);
          swift::Demangle::__runtime::Node::addChild(v166, v175, a2, v167, v168);
          v171 = v177;
          v172 = v166;
        }

        swift::Demangle::__runtime::Node::addChild(v171, v172, a2, v169, v170);
        swift::Demangle::__runtime::Node::addChild(v161, v177, a2, v173, v174);
        v164 += 2;
      }

      while (v164 != v165);
    }

    goto LABEL_288;
  }

  v232 = v20;
  v140 = a1 + 24;
  v141 = (a1 + 24);
  do
  {
    if ((*(a1 + 8) & 0x2000000) != 0)
    {
      v142 = *(v140 + 8 * *(a1 + 8));
    }

    else
    {
      v142 = 0;
    }

    v143 = _swift_buildDemanglingForMetadata(*v141, a2);
    if (!v143)
    {
      v14 = 0;
      goto LABEL_318;
    }

    v144 = v143;
    if ((v142 & 0x200) != 0)
    {
      v145 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 340);
      swift::Demangle::__runtime::Node::addChild(v145, v144, a2, v146, v147);
      v144 = v145;
    }

    v148 = (v142 & 0x7F) - 1;
    if (v148 > 2)
    {
      if ((v142 & 0x400) == 0)
      {
LABEL_266:
        if ((v142 & 0x800) == 0)
        {
          goto LABEL_268;
        }

LABEL_267:
        v155 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 134);
        swift::Demangle::__runtime::Node::addChild(v155, v144, a2, v156, v157);
        v144 = v155;
        goto LABEL_268;
      }
    }

    else
    {
      v149 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 0xDC00DB0080uLL >> (16 * (v148 & 0xF)));
      swift::Demangle::__runtime::Node::addChild(v149, v144, a2, v150, v151);
      v144 = v149;
      if ((v142 & 0x400) == 0)
      {
        goto LABEL_266;
      }
    }

    v152 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 132);
    swift::Demangle::__runtime::Node::addChild(v152, v144, a2, v153, v154);
    v144 = v152;
    if ((v142 & 0x800) != 0)
    {
      goto LABEL_267;
    }

LABEL_268:
    v158 = v235[0];
    if (v235[0] >= v235[1])
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v234, v236, v235[0] + 1, 16);
      v158 = v235[0];
    }

    v3 = v3 & 0xFFFFFFFFFFFFFF00 | (v142 >> 7) & 1;
    v159 = (v234 + 16 * v158);
    *v159 = v144;
    v159[1] = v3;
    v160 = v235[0]++;
    ++v141;
    v140 += 4;
    --v138;
  }

  while (v138);
  v3 = a1;
  v20 = v232;
  if (v160 || (*(v234 + 8) & 1) != 0)
  {
    goto LABEL_280;
  }

  v161 = *v234;
  v162 = *(*v234 + 16);
  if (v162 == 243)
  {
    v163 = *v234;
    if (*(v161 + 18) - 1 >= 2)
    {
      v163 = *v161;
    }

    v162 = *(*v163 + 16);
  }

  if (v162 == 234)
  {
    goto LABEL_280;
  }

LABEL_288:
  v181 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 3);
  v182 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 243);
  swift::Demangle::__runtime::Node::addChild(v182, v161, a2, v183, v184);
  swift::Demangle::__runtime::Node::addChild(v181, v182, a2, v185, v186);
  v187 = _swift_buildDemanglingForMetadata(*(v3 + 16), a2);
  if (!v187)
  {
    goto LABEL_309;
  }

  v188 = v187;
  v189 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 218);
  swift::Demangle::__runtime::Node::addChild(v189, v188, a2, v190, v191);
  v14 = swift::Demangle::__runtime::NodeFactory::createNode(a2, v20);
  v192 = *(v3 + 8);
  if ((v192 & 0x80000000) != 0 && (*(((v3 + 8 * *(v3 + 8) + 4 * (*(v3 + 8) & ((*(v3 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((*(v3 + 8) >> 27) & 1) + 8 * ((v192 >> 28) & 1)) & 0x10) != 0)
  {
    v193 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 137);
    swift::Demangle::__runtime::Node::addChild(v14, v193, a2, v194, v195);
    v192 = *(v3 + 8);
  }

  if ((v192 & 0x10000000) != 0)
  {
    v198 = _swift_buildDemanglingForMetadata(*(((v3 + 8 * v192 + 4 * (v192 & ((v192 << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v192 >> 27) & 1)), a2);
    if (v198)
    {
      v199 = v198;
      v200 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 69);
      swift::Demangle::__runtime::Node::addChild(v200, v199, a2, v201, v202);
      goto LABEL_301;
    }

    goto LABEL_309;
  }

  if ((swift::TargetFunctionTypeMetadata<swift::InProcess>::getExtendedFlags(v3) & 0xE) == 2)
  {
    v196 = a2;
    v197 = 135;
    goto LABEL_300;
  }

  if ((swift::TargetFunctionTypeMetadata<swift::InProcess>::getExtendedFlags(v3) & 0xE) == 4)
  {
    v196 = a2;
    v197 = 136;
LABEL_300:
    v200 = swift::Demangle::__runtime::NodeFactory::createNode(v196, v197);
LABEL_301:
    swift::Demangle::__runtime::Node::addChild(v14, v200, a2, v203, v204);
  }

  if ((*(v3 + 8) & 0x8000000) != 0)
  {
    v207 = *((v3 + 8 * *(v3 + 8) + 4 * (*(v3 + 8) & ((*(v3 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) - 1;
    if (v207 <= 3)
    {
      v208 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 70, qword_1806726E0[v207]);
      swift::Demangle::__runtime::Node::addChild(v14, v208, a2, v209, v210);
    }
  }

  if ((*(v3 + 11) & 1) == 0)
  {
    goto LABEL_313;
  }

  ThrownError = swift::TargetFunctionTypeMetadata<swift::InProcess>::getThrownError(v3);
  if (!ThrownError)
  {
    v214 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 285);
LABEL_312:
    swift::Demangle::__runtime::Node::addChild(v14, v214, a2, v217, v218);
LABEL_313:
    v219 = *(v3 + 8);
    if ((v219 & 0x40000000) != 0)
    {
      v220 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 68);
      swift::Demangle::__runtime::Node::addChild(v14, v220, a2, v221, v222);
      v219 = *(v3 + 8);
    }

    if ((v219 & 0x20000000) != 0)
    {
      v223 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 284);
      swift::Demangle::__runtime::Node::addChild(v14, v223, a2, v224, v225);
    }

    swift::Demangle::__runtime::Node::addChild(v14, v181, a2, v205, v206);
    swift::Demangle::__runtime::Node::addChild(v14, v189, a2, v226, v227);
    goto LABEL_318;
  }

  v212 = _swift_buildDemanglingForMetadata(ThrownError, a2);
  if (v212)
  {
    v213 = v212;
    v214 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 286);
    swift::Demangle::__runtime::Node::addChild(v214, v213, a2, v215, v216);
    goto LABEL_312;
  }

LABEL_309:
  v14 = 0;
LABEL_318:
  v28 = v234;
  if (v234 != v236)
  {
    goto LABEL_51;
  }

  return v14;
}

uint64_t swift::TargetFunctionTypeMetadata<swift::InProcess>::getExtendedFlags(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    return *(((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((v1 >> 28) & 1));
  }

  else
  {
    return 0;
  }
}

uint64_t swift::TargetFunctionTypeMetadata<swift::InProcess>::getThrownError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 & 0x80000000) != 0 && (v2 = (((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((*(a1 + 8) >> 28) & 1)), (*v2))
  {
    return *((v2 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    return 0;
  }
}

unsigned int *swift::_buildDemanglingForGenericType(_DWORD *a1, uint64_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x1Fu) - 16 > 2)
  {
    return 0;
  }

  v9 = v11;
  *v10 = 0x800000000;
  if (_buildDemanglingForGenericArgs(a1, a2, &v9, a3))
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    result = swift::_buildDemanglingForContext(v6, v9, v10[0], a3);
  }

  else
  {
    result = 0;
  }

  if (v9 != v11)
  {
    v8 = result;
    free(v9);
    return v8;
  }

  return result;
}

uint64_t _buildDemanglingForGenericArgs(_DWORD *a1, uint64_t a2, uint64_t a3, swift::Demangle::__runtime::NodeFactory *a4)
{
  v68[6] = *MEMORY[0x1E69E9840];
  GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(a1);
  if (!GenericContext)
  {
    return 1;
  }

  v10 = GenericContext;
  v11 = GenericContext[5];
  v12 = v11 & 1;
  if (v11)
  {
    v13 = GenericContext[2];
    v14 = (((GenericContext + v13 + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * GenericContext[3]);
    v15 = HIWORD(*v14);
    v16 = &v14[v12];
    if (*v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v13 = GenericContext[2];
  }

  v67[0] = v68;
  v67[1] = 0x600000000;
  v19 = GenericContext + 6;
  if (v13)
  {
    if (v13 < 4)
    {
      v20 = 0;
      v21 = (GenericContext + 6);
      goto LABEL_23;
    }

    if (v13 >= 0x20)
    {
      v24 = 0uLL;
      v23 = v13 & 0xFFE0;
      v25 = 0uLL;
      v26 = (GenericContext + 14);
      v27 = v23;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      do
      {
        v34 = vshrq_n_u8(v26[-1], 7uLL);
        v35 = vshrq_n_u8(*v26, 7uLL);
        v36 = vmovl_u8(*v34.i8);
        v37 = vmovl_high_u8(v34);
        v38 = vmovl_u8(*v35.i8);
        v39 = vmovl_high_u8(v35);
        v29 = vaddw_high_u16(v29, v37);
        v28 = vaddw_u16(v28, *v37.i8);
        v25 = vaddw_high_u16(v25, v36);
        v24 = vaddw_u16(v24, *v36.i8);
        v33 = vaddw_high_u16(v33, v39);
        v32 = vaddw_u16(v32, *v39.i8);
        v31 = vaddw_high_u16(v31, v38);
        v30 = vaddw_u16(v30, *v38.i8);
        v26 += 2;
        v27 -= 32;
      }

      while (v27);
      v9 = vaddq_s32(vaddq_s32(v31, v25), vaddq_s32(v33, v29));
      v20 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v30, v24), vaddq_s32(v32, v28)), v9));
      if (v13 == v23)
      {
        goto LABEL_25;
      }

      if ((v13 & 0x1C) == 0)
      {
        v21 = &v19[v23];
LABEL_23:
        v44 = &v19[v13];
        do
        {
          v45 = *v21++;
          v20 += v45 >> 7;
        }

        while (v21 != v44);
LABEL_25:
        v22 = v20;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
      v23 = 0;
    }

    v21 = &v19[v13 & 0xFFFC];
    v40 = v20;
    v41 = (GenericContext + v23 + 12);
    v42 = v23 - (v13 & 0xFFFC);
    do
    {
      v43 = *v41++;
      v9.i32[0] = v43;
      *v9.i8 = vshr_n_u16(*&vmovl_u8(*v9.i8), 7uLL);
      v40 = vaddw_u16(v40, *v9.i8);
      v42 += 4;
    }

    while (v42);
    v20 = vaddvq_s32(v40);
    if (v13 == (v13 & 0xFFFC))
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v22 = 0;
LABEL_26:
  if ((swift::_gatherWrittenGenericParameters(a1, a2 + 8 * v15, v22, v67, a4) & 1) == 0)
  {
    v18 = 0;
    goto LABEL_61;
  }

  if (!v10[2])
  {
    v18 = 1;
    goto LABEL_61;
  }

  v66 = v17;
  v48 = 0;
  v49 = 0;
  v50 = v10 + v10[2] + 12;
  while (1)
  {
    v51 = *(v67[0] + v48);
    v52 = *v19 & 0x3F;
    if (v52 == 2)
    {
      if (v51 >= 0)
      {
        v62 = 368;
      }

      else
      {
        v62 = 369;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(a4, v62, *(v67[0] + v48));
      if (!Node)
      {
        goto LABEL_59;
      }

LABEL_53:
      v63 = *(a3 + 8);
      if (v63 >= *(a3 + 12))
      {
        v64 = Node;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v63 + 1, 8);
        Node = v64;
        v63 = *(a3 + 8);
      }

      *(*a3 + 8 * v63) = Node;
      ++*(a3 + 8);
      goto LABEL_56;
    }

    if (v52 != 1)
    {
      if ((*v19 & 0x3F) != 0)
      {
        goto LABEL_59;
      }

      if (v51)
      {
        v53 = (*(v67[0] + v48) & 1) == 0;
      }

      else
      {
        v53 = 0;
      }

      if (!v53)
      {
        swift::fatalError(0, "Expected metadata but got a metadata pack\n", v46, v47);
      }

      Node = _swift_buildDemanglingForMetadata(*(v67[0] + v48), a4);
      if (!Node)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    if ((v51 & 1) == 0)
    {
      swift::fatalError(0, "Expected a metadata pack but got metadata\n", v46, v47);
    }

    v55 = *(a2 + 8 * LOWORD(v66[2 * v49 + 1]));
    v56 = swift::Demangle::__runtime::NodeFactory::createNode(a4, 237);
    if (v55)
    {
      break;
    }

LABEL_45:
    if (!v56)
    {
      goto LABEL_59;
    }

    v61 = *(a3 + 8);
    if (v61 >= *(a3 + 12))
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v61 + 1, 8);
      v61 = *(a3 + 8);
    }

    *(*a3 + 8 * v61) = v56;
    ++*(a3 + 8);
    ++v49;
LABEL_56:
    ++v48;
    if (++v19 == v50)
    {
      v18 = 1;
      goto LABEL_61;
    }
  }

  v57 = (v51 & 0xFFFFFFFFFFFFFFFELL);
  if (v55 <= 1)
  {
    v55 = 1;
  }

  while (1)
  {
    v58 = _swift_buildDemanglingForMetadata(*v57, a4);
    if (!v58)
    {
      break;
    }

    swift::Demangle::__runtime::Node::addChild(v56, v58, a4, v59, v60);
    ++v57;
    if (!--v55)
    {
      goto LABEL_45;
    }
  }

LABEL_59:
  v18 = 0;
LABEL_61:
  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  return v18;
}

uint64_t swift_demangle(swift::Demangle::__runtime *this, const char *a2, const char *a3, char *a4, int a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    swift::fatalError(0, "Only 'flags' value of '0' is currently supported.", a3, a4);
  }

  if (a3 && !a4)
  {
    swift::fatalError(0, "'outputBuffer' is passed but the size is 'nullptr'.", a3, 0);
  }

  if (swift::Demangle::__runtime::isSwiftSymbol(this, a2))
  {
    v9 = 0;
    v10 = 0x101010101010101;
    v11 = 1;
    v12 = 0x100010100000000;
    v13 = 1;
    v14 = 256;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    v18[0] = &unk_1EEEAA698;
    v18[1] = swift::Demangle::__runtime::genericParameterName;
    v18[3] = v18;
    swift::Demangle::__runtime::demangleSymbolAsString(this, a2, &v9, v7);
  }

  return 0;
}

uint64_t std::__function::__func<swift::ResolveToDemanglingForContext,std::allocator<swift::ResolveToDemanglingForContext>,swift::Demangle::__runtime::Node * ()(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAA708;
  a2[1] = v2;
  return result;
}

void _getBridgedObjectiveCType(uint64_t a1, unint64_t a2, int **a3)
{
  v5 = *a3;
  v6 = **a3;
  if (v6)
  {
    v7 = (v5 + (v6 & 0xFFFFFFFFFFFFFFFELL));
    if (v6)
    {
      if (*v7)
      {
        v8 = *v7;
        goto LABEL_8;
      }
    }

    else if (v7)
    {
      v8 = v5 + (v6 & 0xFFFFFFFFFFFFFFFELL);
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  v9 = v8;
  if (v8)
  {
    v9 = v8;
  }

  if (v9 == -24)
  {
    v10 = 0;
    v11 = MEMORY[0xFFFFFFFFFFFFFFF4];
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v10 = v9 + 24;
  v11 = *(v9 + 3);
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = v8;
LABEL_15:
  swift_getAssociatedTypeWitness(a1, a3, a2, &v12[12 * *(v12 + 3) + 16], &v10[12 * v11]);
}

uint64_t swift_dynamicCast(swift *a1, unint64_t *a2, Class *a3, Class *a4, unint64_t a5)
{
  v5 = a5;
  v8 = swift_dynamicCast::Override;
  if (swift_dynamicCast::Override != 1)
  {
    if (swift_dynamicCast::Override)
    {

      return v8(a1, a2, a3, a4, a5, swift_dynamicCastImpl);
    }

    else
    {

      return swift_dynamicCastSlow(a1, a2, a3, a4, a5);
    }
  }

  v12 = a3;
  v13 = a4;
  result = tryCast(a1, a4, a2, a3, &v13, &v12, (a5 >> 1) & 1, a5 & 1, (a5 & 8) != 0);
  if (result == 1)
  {
    v11 = 1;
    if ((v5 & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (result)
  {
    return 1;
  }

  if (v5)
  {
    swift::swift_dynamicCastFailure(v12, v13, 0, v10);
  }

  v11 = 0;
  result = 0;
  if ((v5 & 4) != 0)
  {
LABEL_8:
    (*(*(a3 - 1) + 1))(a2, a3);
    return v11;
  }

  return result;
}

uint64_t swift_dynamicCastImpl(uint64_t a1, unint64_t *a2, Class *a3, Class *a4, unint64_t a5)
{
  v5 = a5;
  v11 = a3;
  v12 = a4;
  result = tryCast(a1, a4, a2, a3, &v12, &v11, (a5 >> 1) & 1, a5 & 1, (a5 & 8) != 0);
  if (result == 1)
  {
    v10 = 1;
    if ((v5 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (result)
  {
    return 1;
  }

  if (v5)
  {
    swift::swift_dynamicCastFailure(v11, v12, 0, v9);
  }

  v10 = 0;
  result = 0;
  if ((v5 & 4) != 0)
  {
LABEL_7:
    (*(*(a3 - 1) + 1))(a2, a3);
    return v10;
  }

  return result;
}

uint64_t swift_dynamicCastSlow(swift *a1, unint64_t *a2, Class *a3, Class *a4, unint64_t a5)
{
  Override_dynamicCast = swift::getOverride_dynamicCast(a1);
  if (!Override_dynamicCast)
  {
    v12 = 1;
    swift_dynamicCast::Override = 1;
    v16 = a3;
    v17 = a4;
    v13 = tryCast(a1, a4, a2, a3, &v17, &v16, (a5 >> 1) & 1, a5 & 1, (a5 & 8) != 0);
    if (v13 == 1)
    {
      v15 = 1;
      v12 = 1;
      if ((a5 & 2) == 0)
      {
        return v12;
      }
    }

    else
    {
      if (v13)
      {
        return v12;
      }

      if (a5)
      {
        swift::swift_dynamicCastFailure(v16, v17, 0, v14);
      }

      v15 = 0;
      v12 = 0;
      if ((a5 & 4) == 0)
      {
        return v12;
      }
    }

    (*(*(a3 - 1) + 1))(a2, a3);
    return v15;
  }

  swift_dynamicCast::Override = Override_dynamicCast;

  return (Override_dynamicCast)(a1, a2, a3, a4, a5, swift_dynamicCastImpl);
}

uint64_t tryCast(uint64_t result, uint64_t a2, unint64_t *a3, void *a4, uint64_t *a5, void *a6, unsigned int a7, unsigned int a8, char a9)
{
  v9 = a2;
  *a5 = a2;
  *a6 = a4;
  if (a4 == a2)
  {
    v13 = *(a2 - 8);
    if (a7)
    {
      (*(v13 + 32))(result, a3, a2);
      return 2;
    }

    (*(v13 + 16))(result, a3, a2);
    return 1;
  }

  if (*a2 <= 0x7FFuLL)
  {
    v10 = *a2;
  }

  else
  {
    v10 = 0;
  }

  if (*a4 <= 0x7FFuLL)
  {
    v11 = *a4;
  }

  else
  {
    v11 = 0;
  }

  v12 = tryCastToSwiftClass;
  v158 = v11;
  v159 = v10;
  if (v10 <= 768)
  {
    if (v10 > 513)
    {
      if (v10 > 515)
      {
        if (v10 == 516)
        {
          v12 = tryCastToForeignReferenceType;
        }

        else
        {
          if (v10 != 768)
          {
            goto LABEL_251;
          }

          v12 = tryCastToOpaque;
        }
      }

      else if (v10 == 514)
      {
        v12 = tryCastToOptional;
      }

      else
      {
        v12 = tryCastToForeignClass;
      }

      goto LABEL_56;
    }

    if (!v10)
    {
      goto LABEL_56;
    }

    if (v10 != 512)
    {
      if (v10 != 513)
      {
        goto LABEL_251;
      }

      v12 = tryCastToEnum;
      goto LABEL_56;
    }

    v21 = *(a2 + 8) ? *(a2 + 8) : 0;
    v12 = tryCastToString;
    if (v21 == &nominal type descriptor for String || (v12 = tryCastToAnyHashable, v21 == &nominal type descriptor for AnyHashable) || (v12 = tryCastToArray, v21 == &nominal type descriptor for Array) || (v12 = tryCastToDictionary, v21 == &nominal type descriptor for Dictionary))
    {
LABEL_56:
      v20 = v12;
      goto LABEL_57;
    }

    if (v21 == &nominal type descriptor for Set)
    {
      v20 = tryCastToSet;
    }

    else
    {
      v20 = tryCastToStruct;
    }
  }

  else
  {
    if (v10 > 772)
    {
      if (v10 > 774)
      {
        if (v10 != 775)
        {
          goto LABEL_251;
        }

        v12 = tryCastToExtendedExistential;
      }

      else if (v10 == 773)
      {
        v12 = tryCastToObjectiveCClass;
      }

      else
      {
        v12 = tryCastToExistentialMetatype;
      }

      goto LABEL_56;
    }

    if (v10 <= 770)
    {
      if (v10 == 769)
      {
        v12 = tryCastToTuple;
      }

      else
      {
        v12 = tryCastToFunction;
      }

      goto LABEL_56;
    }

    if (v10 != 771)
    {
      v12 = tryCastToMetatype;
      goto LABEL_56;
    }

    v14 = a4;
    v15 = a6;
    v16 = a5;
    v17 = a3;
    v154 = a7;
    v18 = a8;
    v155 = result;
    result = swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(a2);
    if (result == 2)
    {
      v20 = tryCastToErrorExistential;
      result = v155;
      a8 = v18;
      a7 = v154;
      a3 = v17;
      a5 = v16;
      a6 = v15;
      v9 = a2;
      a4 = v14;
    }

    else
    {
      a8 = v18;
      a3 = v17;
      a5 = v16;
      a6 = v15;
      a4 = v14;
      if (result == 1)
      {
        v20 = tryCastToClassExistential;
        result = v155;
        a7 = v154;
        v9 = a2;
      }

      else
      {
        if (result)
        {
          goto LABEL_251;
        }

        v9 = a2;
        if (*(a2 + 12))
        {
          v20 = tryCastToConstrainedOpaqueExistential;
        }

        else
        {
          v20 = tryCastToUnconstrainedOpaqueExistential;
        }

        result = v155;
        a7 = v154;
      }
    }
  }

LABEL_57:
  v22 = result;
  v23 = a6;
  v24 = a4;
  v25 = v9;
  v26 = a5;
  v27 = a3;
  v28 = a7;
  v29 = a8;
  v30 = v20;
  result = v20(result);
  if (result)
  {
    return result;
  }

  v153 = v30;
  v156 = v22;
  v157 = v24;
  if (v158 <= 770)
  {
    v32 = v27;
    v33 = v26;
    v36 = v159;
    v34 = v25;
    v35 = a9;
    if (v158)
    {
      if (v158 == 512)
      {
        if (*(v24 + 8))
        {
          v52 = *(v24 + 8);
        }

        else
        {
          v52 = 0;
        }

        if (v52 == &nominal type descriptor for AnyHashable && (_swift_anyHashableDownCastConditionalIndirect(v32, v156, v34, v31) & 1) != 0)
        {
          return 1;
        }

        goto LABEL_114;
      }

      if (v158 != 515)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_67;
  }

  v32 = v27;
  v33 = v26;
  v34 = v25;
  v35 = a9;
  if (v158 > 773)
  {
    v36 = v159;
    if (v158 == 774)
    {
      MetatypeMetadata = swift_getMetatypeMetadata(*v32);
      *v23 = MetatypeMetadata;
      v152 = a9;
      v53 = v156;
      v54 = v34;
      v44 = v32;
      v55 = v33;
      v56 = v23;
      v57 = v28;
      goto LABEL_113;
    }

    if (v158 != 775)
    {
      goto LABEL_114;
    }

    v44 = 0;
    v45 = **(v24 + 8);
    if (v45 > 1)
    {
      if (v45 != 2)
      {
        MetatypeMetadata = 0;
        if (v45 == 3)
        {
          goto LABEL_251;
        }

        goto LABEL_109;
      }

      ObjectType = swift_getMetatypeMetadata(*v32);
    }

    else
    {
      if (!**(v24 + 8))
      {
        v68 = v32[3];
        v69 = swift::TargetOpaqueExistentialContainer<swift::InProcess>::projectValue(v32);
        MetatypeMetadata = v68;
        v44 = v69;
        goto LABEL_109;
      }

      MetatypeMetadata = 0;
      if (v45 != 1)
      {
LABEL_109:
        *v23 = MetatypeMetadata;
        if (v44 == v32)
        {
          v57 = v28;
        }

        else
        {
          v57 = 0;
        }

        v152 = a9;
        v53 = v156;
        v54 = v34;
        v55 = v33;
        v56 = v23;
LABEL_113:
        result = tryCast(v53, v54, v44, MetatypeMetadata, v55, v56, v57, v29, v152);
        if (result)
        {
          return result;
        }

        goto LABEL_114;
      }

      ObjectType = swift_getObjectType(*v32);
    }

    MetatypeMetadata = ObjectType;
    v44 = v32;
    goto LABEL_109;
  }

  v36 = v159;
  if (v158 != 771)
  {
    if (v158 != 773)
    {
      goto LABEL_114;
    }

LABEL_67:
    NonNullSrcObject = getNonNullSrcObject(v32, v24, v34);
    if (NonNullSrcObject)
    {
      v39 = swift_getObjectType(NonNullSrcObject);
      if (v39 != v24)
      {
        *v23 = v39;
        result = v153(v156, v34, v32, v39, v33, v23, v28, v29, v35);
        if (result)
        {
          return result;
        }
      }
    }

    if (v158 == 773)
    {
      AsSwiftValue = swift::getAsSwiftValue(*v32, v38);
      if (AsSwiftValue)
      {
        ValueFromSwiftValue = swift::getValueFromSwiftValue(AsSwiftValue, v41);
        LOBYTE(v151) = v35;
        result = tryCast(v156, v34, v43, ValueFromSwiftValue, v33, v23, 0, v29, v151);
        if (result)
        {
          return result;
        }
      }

      if (swift::tryDynamicCastNSErrorToValue(v156, v32, v24, v34, 0))
      {
        return 1;
      }
    }

    goto LABEL_114;
  }

  Representation = swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(v24);
  if (Representation)
  {
    if (Representation == 2)
    {
      v58 = *v32;
      isPureNSError = swift::SwiftError::isPureNSError(*v32, v49);
      v61 = v32;
      if (!isPureNSError)
      {
        v61 = (v58 + *(*(*(v58 + 40) - 8) + 80) + 72) & ~*(*(*(v58 + 40) - 8) + 80);
      }

      v62 = v58;
      v63 = v61;
      Type = swift::SwiftError::getType(v62, v60);
      v51 = v63;
      v50 = Type;
    }

    else if (Representation == 1)
    {
      v50 = swift_getObjectType(*v32);
      v51 = v32;
    }

    else
    {
      v51 = 0;
      v50 = 0;
    }
  }

  else
  {
    v65 = v32[3];
    v66 = swift::TargetExistentialTypeMetadata<swift::InProcess>::projectValue(v157, v32);
    v50 = v65;
    v51 = v66;
  }

  *v23 = v50;
  if (v51 == v32)
  {
    v67 = v28;
  }

  else
  {
    v67 = 0;
  }

  result = tryCast(v156, v34, v51, v50, v33, v23, v67, v29, a9);
  if (result)
  {
    return result;
  }

LABEL_114:
  if (v36 != 514)
  {
    goto LABEL_134;
  }

  if (v158 == 514)
  {
    TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v157);
    result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
    v71 = *TypeContextDescriptor;
    v72 = *TypeContextDescriptor & 0x1F;
    if ((v72 - 17) >= 2)
    {
      if (v72 != 16)
      {
        goto LABEL_251;
      }

      if ((v71 & 0x20000000) != 0)
      {
        ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(TypeContextDescriptor);
      }

      else
      {
        if ((v71 & 0x10000000) != 0)
        {
          v115 = 0;
          v116 = 6;
        }

        else
        {
          v115 = TypeContextDescriptor[7];
          v116 = 8;
        }

        ResilientImmediateMembersOffset = v115 - TypeContextDescriptor[v116];
      }
    }

    else
    {
      ResilientImmediateMembersOffset = 2;
    }

    v74 = *(v157 + 8 * ResilientImmediateMembersOffset);
    v75 = (*(*(v74 - 8) + 48))(v32, 1, v74);
    if (v75)
    {
      if (!swift::runtime::bincompat::useLegacyProtocolConformanceReverseIteration(v75))
      {
        v117 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v157);
        result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v117);
        v118 = *v117;
        v119 = *v117 & 0x1F;
        if ((v119 - 17) >= 2)
        {
          if (v119 != 16)
          {
            goto LABEL_251;
          }

          if ((v118 & 0x20000000) != 0)
          {
            v120 = swift::getResilientImmediateMembersOffset(v117);
          }

          else
          {
            if ((v118 & 0x10000000) != 0)
            {
              v147 = 0;
              v148 = 6;
            }

            else
            {
              v147 = v117[7];
              v148 = 8;
            }

            v120 = v147 - v117[v148];
          }
        }

        else
        {
          v120 = 2;
        }

        v121 = *(v157 + 8 * v120);
        v122 = *v121;
        v123 = 1;
        while (v122 == 514)
        {
          v125 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v121);
          result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v125);
          v126 = *v125;
          v127 = *v125 & 0x1F;
          if ((v127 - 17) < 2)
          {
            v124 = 2;
          }

          else
          {
            if (v127 != 16)
            {
              goto LABEL_251;
            }

            if ((v126 & 0x20000000) != 0)
            {
              v124 = swift::getResilientImmediateMembersOffset(v125);
            }

            else
            {
              if ((v126 & 0x10000000) != 0)
              {
                v128 = 0;
                v129 = 6;
              }

              else
              {
                v128 = v125[7];
                v129 = 8;
              }

              v124 = v128 - v125[v129];
            }
          }

          ++v123;
          v121 = v121[v124];
          v122 = *v121;
        }

        v130 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v34);
        result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v130);
        v131 = *v130;
        v132 = *v130 & 0x1F;
        if ((v132 - 17) >= 2)
        {
          if (v132 != 16)
          {
            goto LABEL_251;
          }

          if ((v131 & 0x20000000) != 0)
          {
            v133 = swift::getResilientImmediateMembersOffset(v130);
          }

          else
          {
            if ((v131 & 0x10000000) != 0)
            {
              v149 = 0;
              v150 = 6;
            }

            else
            {
              v149 = v130[7];
              v150 = 8;
            }

            v133 = v149 - v130[v150];
          }
        }

        else
        {
          v133 = 2;
        }

        v134 = v34[v133];
        v135 = *v134;
        v136 = 1;
        while (v135 == 514)
        {
          v138 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v134);
          result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v138);
          v139 = *v138;
          v140 = *v138 & 0x1F;
          if ((v140 - 17) < 2)
          {
            v137 = 2;
          }

          else
          {
            if (v140 != 16)
            {
              goto LABEL_251;
            }

            if ((v139 & 0x20000000) != 0)
            {
              v137 = swift::getResilientImmediateMembersOffset(v138);
            }

            else
            {
              if ((v139 & 0x10000000) != 0)
              {
                v141 = 0;
                v142 = 6;
              }

              else
              {
                v141 = v138[7];
                v142 = 8;
              }

              v137 = v141 - v138[v142];
            }
          }

          ++v136;
          v134 = v134[v137];
          v135 = *v134;
        }

        initializeToNilAtDepth(v156, v34, (v136 - v123) & ~((v136 - v123) >> 31));
        return 1;
      }

      v76 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v34);
      result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v76);
      v77 = *v76;
      v78 = *v76 & 0x1F;
      if ((v78 - 17) < 2)
      {
        v79 = 2;
LABEL_122:
        (*(*(v34[v79] - 1) + 56))(v156, 1, 1);
        return 1;
      }

      if (v78 == 16)
      {
        if ((v77 & 0x20000000) != 0)
        {
          v79 = swift::getResilientImmediateMembersOffset(v76);
        }

        else
        {
          if ((v77 & 0x10000000) != 0)
          {
            v145 = 0;
            v146 = 6;
          }

          else
          {
            v145 = v76[7];
            v146 = 8;
          }

          v79 = v145 - v76[v146];
        }

        goto LABEL_122;
      }

LABEL_251:
      __break(1u);
      return result;
    }

    v80 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v34);
    result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v80);
    v81 = *v80;
    v82 = *v80 & 0x1F;
    if ((v82 - 17) >= 2)
    {
      if (v82 != 16)
      {
        goto LABEL_251;
      }

      if ((v81 & 0x20000000) == 0)
      {
        if ((v81 & 0x10000000) != 0)
        {
          v143 = 0;
          v144 = 6;
        }

        else
        {
          v143 = v80[7];
          v144 = 8;
        }

        v84 = v29;
        v83 = v143 - v80[v144];
LABEL_126:
        v85 = v34[v83];
        LOBYTE(v151) = v35;
        v86 = tryCast(v156, v85, v32, v74, v33, v23, v28, v84, v151);
        if (v86)
        {
          v87 = v86;
          (*(*(v85 - 1) + 56))(v156, 0, 1, v85);
          return v87;
        }

        goto LABEL_128;
      }

      v83 = swift::getResilientImmediateMembersOffset(v80);
    }

    else
    {
      v83 = 2;
    }

    v84 = v29;
    goto LABEL_126;
  }

LABEL_128:
  v88 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v34);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v88);
  v89 = *v88;
  v90 = *v88 & 0x1F;
  if ((v90 - 17) < 2)
  {
    v91 = 2;
LABEL_130:
    v92 = v29;
    goto LABEL_131;
  }

  if (v90 != 16)
  {
    goto LABEL_251;
  }

  if ((v89 & 0x20000000) != 0)
  {
    v91 = swift::getResilientImmediateMembersOffset(v88);
    goto LABEL_130;
  }

  if ((v89 & 0x10000000) != 0)
  {
    v113 = 0;
    v114 = 6;
  }

  else
  {
    v113 = v88[7];
    v114 = 8;
  }

  v92 = v29;
  v91 = v113 - v88[v114];
LABEL_131:
  v93 = v34[v91];
  LOBYTE(v151) = v35;
  v94 = tryCast(v156, v93, v32, v157, v33, v23, v28, v92, v151);
  if (v94)
  {
    v87 = v94;
    (*(*(v93 - 1) + 56))(v156, 0, 1, v93);
    return v87;
  }

LABEL_134:
  if (v158 != 514)
  {
    goto LABEL_138;
  }

  v95 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v157);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v95);
  v96 = *v95;
  v97 = *v95 & 0x1F;
  if ((v97 - 17) >= 2)
  {
    if (v97 != 16)
    {
      goto LABEL_251;
    }

    if ((v96 & 0x20000000) != 0)
    {
      v98 = swift::getResilientImmediateMembersOffset(v95);
    }

    else
    {
      if ((v96 & 0x10000000) != 0)
      {
        v111 = 0;
        v112 = 6;
      }

      else
      {
        v111 = v95[7];
        v112 = 8;
      }

      v98 = v111 - v95[v112];
    }
  }

  else
  {
    v98 = 2;
  }

  v99 = *(v157 + 8 * v98);
  if ((*(*(v99 - 8) + 48))(v32, 1, v99) || (LOBYTE(v151) = v35, result = tryCast(v156, v34, v32, v99, v33, v23, v28, v29, v151), !result))
  {
LABEL_138:
    if (v36 <= 514)
    {
      v100 = v157;
      if ((v36 - 512) < 2)
      {
        if (v158 && v158 != 773 && v158 != 515)
        {
          return 0;
        }

        v105 = v156;
        v106 = v34;
        v107 = v32;
        v108 = v157;
        v109 = v33;
        v110 = v29;
        return tryCastFromClassToObjCBridgeable(v105, v106, v107, v108, v109, v110) != 0;
      }

      if (v36)
      {
        if (v36 != 514 || *v157 != 771 || swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(v157) != 1 || *(v157 + 12))
        {
          return 0;
        }

        v101 = *(v157 + 8);
        if ((v101 & 0x40000000) != 0)
        {
          if (v101 < 0 || *(v157 + 16))
          {
            return 0;
          }
        }

        else if (v101 < 0)
        {
          return 0;
        }

        v105 = v156;
        v106 = v34;
        v107 = v32;
        v108 = v157;
        v109 = v33;
        v110 = 0;
        return tryCastFromClassToObjCBridgeable(v105, v106, v107, v108, v109, v110) != 0;
      }

LABEL_151:
      if ((v158 & 0xFFFFFFFE) == 0x200 && tryCastFromObjCBridgeableToClass(v156, v34, v32, v100))
      {
        return 1;
      }

      if (v36 == 773)
      {
        ErrorWitness = swift::findErrorWitness(v100);
        if (ErrorWitness)
        {
          v103 = ErrorWitness;
          NSErrorMetadata = swift::getNSErrorMetadata(ErrorWitness);
          if (NSErrorMetadata == v34 || swift::getNSObjectMetadata(NSErrorMetadata) == v34)
          {
            *v156 = swift::dynamicCastValueToNSError(v32, v100, v103, 0);
            return 1;
          }
        }
      }

      return 0;
    }

    v100 = v157;
    if (v36 == 515)
    {
      goto LABEL_151;
    }

    if (v36 != 771)
    {
      if (v36 != 773)
      {
        return 0;
      }

      goto LABEL_151;
    }

    if (swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(v34) != 1)
    {
      return 0;
    }

    if (tryCastFromObjCBridgeableToClass(v156, v34, v32, v157))
    {
      return 1;
    }

    result = tryCastToClassExistentialViaSwiftValue(v156, v34, v32, v157, v28);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getNonNullSrcObject(uint64_t *a1, Class *a2, Class *a3)
{
  result = *a1;
  if (!result)
  {
    v4 = result;
    getNonNullSrcObject(a2, a3);
    return v4;
  }

  return result;
}

uint64_t tryCastFromClassToObjCBridgeable(uint64_t a1, swift *a2, uint64_t *a3, Class *a4, uint64_t *a5, int a6)
{
  BridgeWitness = findBridgeWitness(a2);
  if (!BridgeWitness)
  {
    return 0;
  }

  v13 = BridgeWitness;
  v14 = *BridgeWitness;
  v15 = **BridgeWitness;
  if (v15)
  {
    v16 = (v14 + (v15 & 0xFFFFFFFFFFFFFFFELL));
    if (v15)
    {
      if (*v16)
      {
        v17 = *v16;
        goto LABEL_9;
      }
    }

    else if (v16)
    {
      v17 = v14 + (v15 & 0xFFFFFFFFFFFFFFFELL);
      goto LABEL_9;
    }
  }

  v17 = 0;
LABEL_9:
  v18 = v17;
  if (v17)
  {
    v18 = v17;
  }

  if (v18 == -24)
  {
    v19 = 0;
    v20 = MEMORY[0xFFFFFFFFFFFFFFF4];
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v19 = v18 + 24;
  v20 = *(v18 + 3);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_13:
  v21 = v17;
LABEL_16:
  swift_getAssociatedTypeWitness(0, v13, a2, &v21[12 * *(v21 + 3) + 16], &v19[12 * v20]);
  v23 = v22;
  NonNullSrcObject = getNonNullSrcObject(a3, a4, a2);
  if (!NonNullSrcObject || (v25 = NonNullSrcObject, !swift_dynamicCastUnknownClass(NonNullSrcObject, v23)))
  {
    *a5 = v23;
    return 0;
  }

  return _tryCastFromClassToObjCBridgeable(a1, a2, v25, a6, v13);
}

uint64_t tryCastFromObjCBridgeableToClass(atomic_ullong **a1, uint64_t a2, uint64_t a3, swift *a4)
{
  result = findBridgeWitness(a4);
  if (result)
  {
    v8 = (*(result + 16))(a4, result);
    v9 = swift_dynamicCastUnknownClass(v8, a2);
    if (v9)
    {
      *a1 = v9;
      return 1;
    }

    else
    {
      swift_unknownObjectRelease(v8);
      return 0;
    }
  }

  return result;
}

uint64_t tryCastToClassExistentialViaSwiftValue(void *a1, uint64_t a2, unint64_t **a3, void *a4, int a5)
{
  result = 0;
  v7 = *a4;
  if (*a4 > 0x7FFuLL)
  {
    LODWORD(v7) = 0;
  }

  if (v7 <= 771)
  {
    if (!v7 || v7 == 515)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v7 != 773)
  {
    if (v7 != 772)
    {
      goto LABEL_14;
    }

    result = 0;
    v8 = **a3;
    if (v8 > 0x7FF)
    {
      LODWORD(v8) = 0;
    }

    if (v8 && v8 != 515 && v8 != 773)
    {
LABEL_14:
      v9 = a1;
      if (!*(a2 + 12) || (v11 = a3, v12 = a4, v13 = a5, result = swift::runtime::bincompat::useLegacyObjCBoxingInCasting(0), result) && (result = swift::findSwiftValueConformances(a2), a5 = v13, a4 = v12, a3 = v11, result))
      {
        v14 = a5;
        *v9 = swift::bridgeAnythingToSwiftValueObject(a3, a4, a5);
        if (v14)
        {
          return 2;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t tryCastToSwiftClass(uint64_t *a1, Class *a2, uint64_t *a3, Class *a4, Class **a5, Class **a6, char a7)
{
  v7 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v7) = 0;
  }

  if (v7 != 773 && v7 != 0)
  {
    return 0;
  }

  result = getNonNullSrcObject(a3, a4, a2);
  if (result)
  {
    result = swift_dynamicCastClass(result, a2);
    if (result)
    {
      *a1 = result;
      if (a7)
      {
        return 2;
      }

      else
      {
        swift_unknownObjectRetain(result);
        return 1;
      }
    }

    else
    {
      *a6 = a4;
      *a5 = a2;
    }
  }

  return result;
}

void *tryCastToString(uint64_t a1, Class *a2, uint64_t *a3, Class *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v8 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 == 773 || v8 == 515)
  {
    return ObjCBridgeMemo::tryBridge(tryCastToString(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL,BOOL)::memo, a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t tryCastToAnyHashable(swift *a1, uint64_t a2, uint64_t a3, swift *a4)
{
  v7 = *a4;
  if (*a4 > 0x7FFuLL)
  {
    LODWORD(v7) = 0;
  }

  if (v7 > 770)
  {
    if (v7 == 771)
    {
      return 0;
    }

    if (v7 != 773)
    {
      goto LABEL_18;
    }

LABEL_9:
    NSStringMetadata = swift::getNSStringMetadata(a1);
    Superclass = a4;
    while (Superclass != NSStringMetadata)
    {
      Superclass = _swift_class_getSuperclass(Superclass);
      if (!Superclass)
      {
        goto LABEL_18;
      }
    }

    result = swift::hashable_support::getNSStringHashableConformance(Superclass);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_18:
    result = swift_conformsToProtocolCommon(a4, &protocol descriptor for Hashable);
    if (result)
    {
LABEL_19:
      _swift_convertToAnyHashableIndirect(a3, a1, a4, result);
      return 1;
    }

    return result;
  }

  if (v7 != 514)
  {
    if (v7 != 515)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
  v12 = *TypeContextDescriptor;
  v13 = *TypeContextDescriptor & 0x1F;
  if ((v13 - 17) >= 2)
  {
    if (v13 != 16)
    {
      __break(1u);
      return result;
    }

    if ((v12 & 0x20000000) != 0)
    {
      ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(TypeContextDescriptor);
    }

    else
    {
      if ((v12 & 0x10000000) != 0)
      {
        v15 = 0;
        v16 = 6;
      }

      else
      {
        v15 = TypeContextDescriptor[7];
        v16 = 8;
      }

      ResilientImmediateMembersOffset = v15 - TypeContextDescriptor[v16];
    }
  }

  else
  {
    ResilientImmediateMembersOffset = 2;
  }

  result = (*(*(*(a4 + ResilientImmediateMembersOffset) - 8) + 48))(a3, 1);
  if (result)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t tryCastToArray(__objc2_class ***a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (*a4 != 512)
  {
    return 0;
  }

  v9 = a4[1] ? a4[1] : 0;
  if (v9 != &nominal type descriptor for Array)
  {
    return 0;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4);
  if (TypeContextDescriptor)
  {
    v16 = TypeContextDescriptor;
    result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
    if (result)
    {
      v17 = *v16;
      v18 = *v16 & 0x1F;
      if ((v18 - 17) >= 2)
      {
        if (v18 != 16)
        {
          goto LABEL_35;
        }

        if ((v17 & 0x20000000) == 0)
        {
          v20 = a4;
          if ((v17 & 0x10000000) != 0)
          {
            v30 = 0;
            v31 = 6;
          }

          else
          {
            v30 = v16[7];
            v31 = 8;
          }

          ResilientImmediateMembersOffset = v30 - v16[v31];
          goto LABEL_12;
        }

        ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v16);
      }

      else
      {
        ResilientImmediateMembersOffset = 2;
      }

      v20 = a4;
LABEL_12:
      v21 = &v20[ResilientImmediateMembersOffset];
      goto LABEL_14;
    }
  }

  v21 = 0;
LABEL_14:
  v22 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v22);
  v23 = *v22;
  v24 = *v22 & 0x1F;
  if ((v24 - 17) < 2)
  {
    v25 = 2;
LABEL_16:
    v26 = a3;
    goto LABEL_17;
  }

  if (v24 != 16)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if ((v23 & 0x20000000) != 0)
  {
    v25 = swift::getResilientImmediateMembersOffset(v22);
    goto LABEL_16;
  }

  if ((v23 & 0x10000000) != 0)
  {
    v28 = 0;
    v29 = 6;
  }

  else
  {
    v28 = v22[7];
    v29 = 8;
  }

  v26 = a3;
  v25 = v28 - v22[v29];
LABEL_17:
  v27 = *v21;
  if (a8)
  {
    _swift_arrayDownCastIndirect(v26, a1, v27);
    return 1;
  }

  else
  {
    return _swift_arrayDownCastConditionalIndirect(v26, a1, v27, a2[v25]);
  }
}

uint64_t tryCastToDictionary(uint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (*a4 != 512)
  {
    return 0;
  }

  v9 = a4[1] ? a4[1] : 0;
  if (v9 != &nominal type descriptor for Dictionary)
  {
    return 0;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4);
  if (TypeContextDescriptor)
  {
    v16 = TypeContextDescriptor;
    result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
    if (result)
    {
      v17 = *v16;
      v18 = *v16 & 0x1F;
      if ((v18 - 17) >= 2)
      {
        if (v18 != 16)
        {
          goto LABEL_35;
        }

        if ((v17 & 0x20000000) == 0)
        {
          v20 = a4;
          if ((v17 & 0x10000000) != 0)
          {
            v36 = 0;
            v37 = 6;
          }

          else
          {
            v36 = v16[7];
            v37 = 8;
          }

          ResilientImmediateMembersOffset = v36 - v16[v37];
          goto LABEL_12;
        }

        ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v16);
      }

      else
      {
        ResilientImmediateMembersOffset = 2;
      }

      v20 = a4;
LABEL_12:
      v21 = &v20[ResilientImmediateMembersOffset];
      goto LABEL_14;
    }
  }

  v21 = 0;
LABEL_14:
  v22 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v22);
  v23 = *v22;
  v24 = *v22 & 0x1F;
  if ((v24 - 17) < 2)
  {
    v25 = 2;
LABEL_16:
    v26 = a3;
    goto LABEL_17;
  }

  if (v24 != 16)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if ((v23 & 0x20000000) != 0)
  {
    v25 = swift::getResilientImmediateMembersOffset(v22);
    goto LABEL_16;
  }

  if ((v23 & 0x10000000) != 0)
  {
    v34 = 0;
    v35 = 6;
  }

  else
  {
    v34 = v22[7];
    v35 = 8;
  }

  v26 = a3;
  v25 = v34 - v22[v35];
LABEL_17:
  v27 = &a2[v25];
  v28 = *v21;
  v29 = v21[1];
  v30 = *v27;
  v31 = v27[1];
  v32 = v21[2];
  v33 = v27[2];
  if (a8)
  {
    _swift_dictionaryDownCastIndirect(v26, a1, v28, v29, v30, v31, v32, v33);
    return 1;
  }

  else
  {
    return _swift_dictionaryDownCastConditionalIndirect(v26, a1, v28, v29, v30, v31, v32, v33);
  }
}

uint64_t tryCastToSet(uint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (*a4 != 512)
  {
    return 0;
  }

  v9 = a4[1] ? a4[1] : 0;
  if (v9 != &nominal type descriptor for Set)
  {
    return 0;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a4);
  if (TypeContextDescriptor)
  {
    v16 = TypeContextDescriptor;
    result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
    if (result)
    {
      v17 = *v16;
      v18 = *v16 & 0x1F;
      if ((v18 - 17) >= 2)
      {
        if (v18 != 16)
        {
          goto LABEL_35;
        }

        if ((v17 & 0x20000000) == 0)
        {
          v20 = a4;
          if ((v17 & 0x10000000) != 0)
          {
            v34 = 0;
            v35 = 6;
          }

          else
          {
            v34 = v16[7];
            v35 = 8;
          }

          ResilientImmediateMembersOffset = v34 - v16[v35];
          goto LABEL_12;
        }

        ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v16);
      }

      else
      {
        ResilientImmediateMembersOffset = 2;
      }

      v20 = a4;
LABEL_12:
      v21 = &v20[ResilientImmediateMembersOffset];
      goto LABEL_14;
    }
  }

  v21 = 0;
LABEL_14:
  v22 = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v22);
  v23 = *v22;
  v24 = *v22 & 0x1F;
  if ((v24 - 17) < 2)
  {
    v25 = 2;
LABEL_16:
    v26 = a3;
    goto LABEL_17;
  }

  if (v24 != 16)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if ((v23 & 0x20000000) != 0)
  {
    v25 = swift::getResilientImmediateMembersOffset(v22);
    goto LABEL_16;
  }

  if ((v23 & 0x10000000) != 0)
  {
    v32 = 0;
    v33 = 6;
  }

  else
  {
    v32 = v22[7];
    v33 = 8;
  }

  v26 = a3;
  v25 = v32 - v22[v33];
LABEL_17:
  v27 = &a2[v25];
  v28 = *v21;
  v29 = v21[1];
  v30 = *v27;
  v31 = v27[1];
  if (a8)
  {
    _swift_setDownCastIndirect(v26, a1, v28, v30, v29, v31);
    return 1;
  }

  else
  {
    return _swift_setDownCastConditionalIndirect(v26, a1, v28, v30, v29, v31);
  }
}

uint64_t tryCastToForeignClass(uint64_t *a1, Class *a2, uint64_t *a3, Class *a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v12 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v12) = 0;
  }

  if (v12 && v12 != 773 && v12 != 515)
  {
    return 0;
  }

  NonNullSrcObject = getNonNullSrcObject(a3, a4, a2);
  if (NonNullSrcObject)
  {
    result = swift_dynamicCastForeignClass(NonNullSrcObject, a2);
    if (!result)
    {
      return result;
    }

    *a1 = result;
    if (a7)
    {
      return 2;
    }

    v15 = result;
    return 1;
  }

  if (!a8)
  {
    return 0;
  }

  *a1 = 0;
  return 1;
}

uint64_t tryCastToTuple(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, int a7, unsigned int a8, char a9)
{
  *a6 = a4;
  *a5 = a2;
  if (*a4 != 769)
  {
    return 0;
  }

  v11 = a4[1];
  if (v11 != *(a2 + 8))
  {
    return 0;
  }

  v15 = a4[2];
  v16 = *(a2 + 16);
  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v15 != v16)
  {
    do
    {
      v23 = strchr(v15, 32);
      v24 = strchr(v16, 32);
      if (!v23)
      {
        break;
      }

      v25 = v24;
      if (!v24)
      {
        break;
      }

      v26 = v23 - v15;
      if (v23 != v15 && v24 != v16 && (v26 != v24 - v16 || strncmp(v15, v16, v26)))
      {
        return 0;
      }

      v15 = v23 + 1;
      v16 = v25 + 1;
    }

    while (v23 != v25);
  }

  if (!v11)
  {
LABEL_15:
    v21 = *(a4 - 1);
    if (a7)
    {
      (*(v21 + 32))(a1, a3, a4);
      return 2;
    }

    (*(v21 + 16))(a1, a3, a4);
    return 1;
  }

  v19 = 0;
  v20 = 1;
  while (a4[2 * v19 + 3] == *(a2 + 24 + 16 * v19))
  {
    v19 = v20++;
    if (v11 == v19)
    {
      goto LABEL_15;
    }
  }

  v27 = v11;
  if (!v11)
  {
    return 1;
  }

  v28 = 0;
  v29 = a4 + 4;
  v30 = (a2 + 32);
  while (1)
  {
    LOBYTE(v32) = a9;
    if (!tryCast(a1 + *v30, *(v30 - 1), a3 + *v29, *(v29 - 1), a5, a6, 0, a8, v32))
    {
      break;
    }

    v29 += 2;
    v30 += 2;
    ++v28;
    result = 1;
    if (v27 == v28)
    {
      return result;
    }
  }

  if (!v28)
  {
    return 0;
  }

  v31 = (a2 + 32);
  do
  {
    (*(*(*(v31 - 1) - 8) + 8))(a1 + *v31);
    result = 0;
    v31 += 2;
    --v28;
  }

  while (v28);
  return result;
}

uint64_t tryCastToFunction(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (*a4 != 770)
  {
    return 0;
  }

  v7 = a4[1];
  v8 = *(a2 + 8);
  if (((v8 ^ v7) & 0xFFFFFFFFFEFFFFFFLL) != 0 || (v7 & 0x1000000) != 0 && (v8 & 0x1000000) == 0)
  {
    return 0;
  }

  if (a4[2] != *(a2 + 16) || a4[1] != v8 || ((v7 >> 25) & 1) != ((v8 >> 25) & 1))
  {
    return 0;
  }

  if (a4[1])
  {
    v10 = 0;
    v11 = a4 + 3;
    v12 = a2 + 24;
    v13 = 8 * a4[1];
    do
    {
      if (v11[v10] != *(v12 + v10 * 8))
      {
        return 0;
      }

      if ((v7 & 0x2000000) != 0)
      {
        v14 = *(v11 + v13);
        if ((v8 & 0x2000000) == 0)
        {
LABEL_16:
          v15 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        v14 = 0;
        if ((v8 & 0x2000000) == 0)
        {
          goto LABEL_16;
        }
      }

      v15 = *(v12 + v13);
LABEL_17:
      if (v14 != v15)
      {
        return 0;
      }

      ++v10;
      v13 += 4;
    }

    while (a4[1] != v10);
  }

  v16 = *(a4 - 1);
  if (a7)
  {
    (*(v16 + 32))(a1, a3, a4);
    return 2;
  }

  else
  {
    (*(v16 + 16))(a1, a3, a4);
    return 1;
  }
}

uint64_t tryCastToUnconstrainedOpaqueExistential(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  a1[3] = a4;
  BoxForExistentialIn = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(a4, a1);
  v11 = *(a4 - 8);
  if (a7)
  {
    (*(v11 + 32))(BoxForExistentialIn, a3, a4);
    return 2;
  }

  else
  {
    (*(v11 + 16))(BoxForExistentialIn, a3, a4);
    return 1;
  }
}

uint64_t tryCastToConstrainedOpaqueExistential(void *a1, uint64_t a2, swift::runtime::bincompat **a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9)
{
  v13 = *(a2 + 8);
  if ((v13 & 0x40000000) != 0 && *(a2 + 16))
  {
    v14 = a2;
    result = swift_dynamicCastMetatype(a4, *(a2 + 16));
    if (!result)
    {
      return result;
    }

    a2 = v14;
    v13 = *(v14 + 8);
  }

  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v16 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v16) = 0;
  }

  if (v16 && v16 != 773 && v16 != 515)
  {
    return 0;
  }

LABEL_11:
  v17 = *(a2 + 12);
  if (v17)
  {
    v18 = a1 + 4;
    v19 = (a2 + 8 * ((v13 >> 30) & 1) + 16);
    v20 = 8 * v17;
    while (1)
    {
      v21 = *v19;
      result = swift::_conformsToProtocolInContext(a3, a4, *v19, v18, a9);
      if (!result)
      {
        break;
      }

      if (v18)
      {
        v18 = (v18 + (~(8 * v21) & 8));
      }

      else
      {
        v18 = 0;
      }

      ++v19;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    a1[3] = a4;
    BoxForExistentialIn = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(a4, a1);
    v23 = *(a4 - 1);
    if (a7)
    {
      (*(v23 + 32))(BoxForExistentialIn, a3, a4);
      return 2;
    }

    else
    {
      (*(v23 + 16))(BoxForExistentialIn, a3, a4);
      return 1;
    }
  }

  return result;
}

uint64_t tryCastToClassExistential(swift::runtime::bincompat **a1, uint64_t a2, uint64_t **a3, Class *a4, uint64_t a5, uint64_t a6, char a7, int a8, unsigned __int8 a9)
{
  result = 0;
  v16 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v16) = 0;
  }

  if (v16 > 771)
  {
    if (v16 != 773)
    {
      if (v16 != 772)
      {
        return result;
      }

      v17 = swift_dynamicCastMetatypeToObjectConditional(*a3);
      v40 = v17;
      if (!v17)
      {
        return 0;
      }

      v18 = v17;
      v19 = *(a2 + 8);
      if ((v19 & 0x40000000) != 0)
      {
        v20 = *(a2 + 16);
        if (v20)
        {
          if (!swift_dynamicCastMetatype(v17, v20))
          {
            return 0;
          }

          v19 = *(a2 + 8);
        }
      }

      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_20;
      }

      v21 = *v18;
      if (*v18 > 0x7FFuLL)
      {
        LODWORD(v21) = 0;
      }

      if (!v21 || v21 == 773 || v21 == 515)
      {
LABEL_20:
        v22 = *(a2 + 12);
        if (!v22)
        {
LABEL_28:
          *a1 = v18;
          if (a7)
          {
            return 2;
          }

          v27 = v18;
          goto LABEL_56;
        }

        v23 = (a1 + 1);
        v24 = (a2 + 8 * ((v19 >> 30) & 1) + 16);
        v25 = 8 * v22;
        while (1)
        {
          v26 = *v24;
          if (!swift::_conformsToProtocolInContext(&v40, v18, *v24, v23, a9))
          {
            break;
          }

          if (v23)
          {
            v23 = (v23 + (~(8 * v26) & 8));
          }

          else
          {
            v23 = 0;
          }

          ++v24;
          v25 -= 8;
          if (!v25)
          {
            v18 = v40;
            goto LABEL_28;
          }
        }
      }

      return 0;
    }

    v28 = *a3;
    if ((swift::runtime::bincompat::useLegacyObjCBoxingInCasting(0) & 1) == 0 && swift::getAsSwiftValue(v28, v29))
    {
      return 0;
    }
  }

  else if (v16 && v16 != 515)
  {
    return result;
  }

  NonNullSrcObject = getNonNullSrcObject(a3, a4, a2);
  if (!NonNullSrcObject)
  {
    if (a8)
    {
      *a1 = 0;
      return 1;
    }

    return 0;
  }

  v31 = NonNullSrcObject;
  v32 = *(a2 + 8);
  if ((v32 & 0x40000000) != 0)
  {
    v33 = *(a2 + 16);
    if (v33)
    {
      result = swift_dynamicCastMetatype(a4, v33);
      if (!result)
      {
        return result;
      }

      v32 = *(a2 + 8);
    }
  }

  if ((v32 & 0x80000000) == 0)
  {
    v34 = *a4;
    if (*a4 > 0x7FF)
    {
      LODWORD(v34) = 0;
    }

    if (v34 && v34 != 773 && v34 != 515)
    {
      return 0;
    }
  }

  v35 = *(a2 + 12);
  if (!v35)
  {
LABEL_50:
    *a1 = v31;
    if (a7)
    {
      return 2;
    }

    v27 = v31;
LABEL_56:
    swift_unknownObjectRetain(v27);
    return 1;
  }

  v36 = (a1 + 1);
  v37 = (a2 + 8 * ((v32 >> 30) & 1) + 16);
  v38 = 8 * v35;
  while (1)
  {
    v39 = *v37;
    result = swift::_conformsToProtocolInContext(a3, a4, *v37, v36, a9);
    if (!result)
    {
      return result;
    }

    if (v36)
    {
      v36 = (v36 + (~(8 * v39) & 8));
    }

    else
    {
      v36 = 0;
    }

    ++v37;
    v38 -= 8;
    if (!v38)
    {
      goto LABEL_50;
    }
  }
}

uint64_t tryCastToErrorExistential(void *a1, uint64_t a2, swift::runtime::bincompat **a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9)
{
  v13 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v13) = 0;
  }

  if (((v13 - 512) > 3 || v13 == 514) && v13 != 773 && v13 != 0)
  {
    return 0;
  }

  v27 = 0;
  v16 = *(a2 + 8);
  if ((v16 & 0x40000000) != 0 && *(a2 + 16))
  {
    v17 = a2;
    result = swift_dynamicCastMetatype(a4, *(a2 + 16));
    if (!result)
    {
      return result;
    }

    a2 = v17;
    v16 = *(v17 + 8);
  }

  if ((v16 & 0x80000000) == 0)
  {
    v19 = *a4;
    if (*a4 > 0x7FF)
    {
      LODWORD(v19) = 0;
    }

    if (v19 && v19 != 773 && v19 != 515)
    {
      return 0;
    }
  }

  v20 = *(a2 + 12);
  if (v20)
  {
    v21 = (a2 + 8 * ((v16 >> 30) & 1) + 16);
    v22 = 8 * v20;
    v23 = &v27;
    while (1)
    {
      v24 = *v21;
      result = swift::_conformsToProtocolInContext(a3, a4, *v21, v23, a9);
      if (!result)
      {
        break;
      }

      if (v23)
      {
        v23 = (v23 + (~(8 * v24) & 8));
      }

      else
      {
        v23 = 0;
      }

      ++v21;
      v22 -= 8;
      if (!v22)
      {
        v25 = v27;
        goto LABEL_33;
      }
    }
  }

  else
  {
    v25 = 0;
LABEL_33:
    v26 = _getErrorEmbeddedNSErrorIndirect<A>(_:)(a3, a4, v25);
    if (v26)
    {
      *a1 = v26;
      return 1;
    }

    else
    {
      *a1 = swift_allocError(a4, v27, a3, a7);
      if (a7)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void *tryCastToExtendedExistential(void *a1, uint64_t a2, uint64_t a3, swift *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v9 = a7;
  v10 = a4;
  v11 = a3;
  v13 = a1;
  v123 = *MEMORY[0x1E69E9840];
  v14 = *(a2 + 8);
  if (v14)
  {
    v15 = *(a2 + 8);
    v16 = *v14;
    if ((*v14 & 0x100) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = *(v15 + 10);
    v18 = a4;
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_7;
  }

  v15 = 0;
  LOWORD(v16) = MEMORY[0];
  if ((MEMORY[0] & 0x100) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = 0;
  v18 = a4;
  if ((v16 & 0x200) == 0)
  {
    goto LABEL_59;
  }

LABEL_7:
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 2400;
  v86 = 0;
  v87 = 0;
  v122 = 0;
  v81 = &unk_1EEEADB90;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v120 = 0;
  v21 = *v15;
  if ((v21 & 0x200) != 0)
  {
    v22 = ((&v15[2 * ((v21 >> 8) & 1) + 4] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v22 = 0;
  }

  v23 = *v22;
  v25 = &v22[v23];
  if (&v22[v23])
  {
    v26 = strlen(&v22[v23]);
  }

  else
  {
    v26 = 0;
  }

  v80 = 0;
  v27 = swift::Demangle::__runtime::Demangler::demangleType(&v81, v25, v26, v79);
  if (v80 != v79)
  {
    if (v80)
    {
      (*(*v80 + 40))();
    }

    v11 = a3;
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_44:
    v18 = a4;
    v9 = a7;
    v13 = a1;
    goto LABEL_52;
  }

  (*(*v80 + 32))(v80);
  v11 = a3;
  if (!v27)
  {
    goto LABEL_44;
  }

LABEL_17:
  v9 = a7;
  if (*(v27 + 16) != 243)
  {
    LODWORD(v27) = 0;
    v18 = a4;
    v13 = a1;
    goto LABEL_52;
  }

  v18 = a4;
  v13 = a1;
  while (1)
  {
    v28 = *(v27 + 18);
    v29 = v28 - 1;
    v30 = v27;
    if ((v28 - 1) >= 2)
    {
      if (v28 != 5)
      {
        goto LABEL_51;
      }

      if (!*(v27 + 8))
      {
        goto LABEL_48;
      }

      v30 = *v27;
    }

    if (*(*v30 + 16) != 154)
    {
      break;
    }

    v31 = v27;
    if (v29 >= 2)
    {
      if (v28 != 5 || !*(v27 + 8))
      {
        v32 = 0;
        goto LABEL_31;
      }

      v31 = *v27;
    }

    v32 = *v31;
LABEL_31:
    v33 = *(v32 + 18);
    if ((v33 - 1) >= 2 && (v33 != 5 || !*(v32 + 8)))
    {
      break;
    }

    if (*v18 != 772)
    {
      goto LABEL_51;
    }

    if (v29 >= 2)
    {
      if (v28 != 5 || !*(v27 + 8))
      {
        v34 = 0;
        goto LABEL_41;
      }

      v27 = *v27;
    }

    v34 = *v27;
LABEL_41:
    if (v34[18] - 1 >= 2)
    {
      v34 = *v34;
    }

    v18 = *(v18 + 1);
    v27 = *v34;
    if (*(*v34 + 16) != 243)
    {
      goto LABEL_51;
    }
  }

  if (v29 < 2)
  {
LABEL_50:
    LODWORD(v27) = *(*v27 + 16) == 39;
    goto LABEL_52;
  }

  if (v28 == 5)
  {
LABEL_48:
    if (*(v27 + 8))
    {
      v27 = *v27;
      goto LABEL_50;
    }
  }

LABEL_51:
  LODWORD(v27) = 0;
LABEL_52:
  v81 = &unk_1EEEADB90;
  if (v122 == &v121)
  {
    (*(*v122 + 32))(v122);
    v10 = a4;
  }

  else
  {
    v10 = a4;
    if (v122)
    {
      (*(*v122 + 40))();
    }
  }

  v81 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v84);
  if (v86)
  {
    *(v86 + 48) = 0;
  }

  if (!v27)
  {
    return 0;
  }

LABEL_59:
  v76 = v78;
  v77 = 0x400000000;
  v73 = v75;
  v74 = 0x400000000;
  if (v17 >= 5)
  {
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v17, 8);
    v35 = v77;
    goto LABEL_63;
  }

  if (v17)
  {
    v35 = 0;
LABEL_63:
    memcpy(v76 + 8 * v35, (a2 + 16), 8 * v17);
    v36 = v77;
  }

  else
  {
    v36 = 0;
  }

  v37 = (v36 + v17);
  LODWORD(v77) = v37;
  if (v37 >= HIDWORD(v77))
  {
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v37 + 1, 8);
    LODWORD(v37) = v77;
  }

  *(v76 + v37) = v18;
  LODWORD(v77) = v77 + 1;
  LODWORD(v81) = 2;
  v82 = v15;
  v83 = v76;
  v84 = &v86;
  v85 = 0x800000000;
  *&v105 = 0;
  v66 = 0uLL;
  v38 = *v15;
  if ((v38 & 0x800) != 0)
  {
    v40 = 0;
    v39 = &swift::ImplicitGenericParamDescriptors;
  }

  else
  {
    v39 = (((&v15[2 * ((v38 >> 8) & 1) + 4] + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v38 >> 9) & 1) + 4 * ((v38 >> 10) & 1));
    v40 = *(v15 + 4);
  }

  v41 = (v15 + 4);
  if ((*v15 & 0x1100) == 0x100)
  {
    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = ((&v41[4 * ((v38 >> 8) & 1) + 1] + 1) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v38 >> 9) & 1) + 4 * ((v38 >> 10) & 1) + v42 + v40 + 3;
  v44 = *(v15 + 1);
  v71[0] = &unk_1EEEAA750;
  v71[1] = &v81;
  v72 = v71;
  v69[0] = &unk_1EEEAA798;
  v69[1] = &v81;
  v70 = v69;
  v67[0] = &unk_1EEEAA7E0;
  v68 = v67;
  swift::_checkGenericRequirements(v39, v44, v43 & 0xFFFFFFFFFFFFFFFCLL, WORD1(v44), &v73, v71, v69, v67, &v63, &v66);
  if (v68 == v67)
  {
    (*(*v68 + 32))(v68);
  }

  else if (v68)
  {
    (*(*v68 + 40))();
  }

  if (v70 == v69)
  {
    (*(*v70 + 32))(v70);
  }

  else if (v70)
  {
    (*(*v70 + 40))();
  }

  if (v72 == v71)
  {
    (*(*v72 + 32))(v72);
    if (v65)
    {
      goto LABEL_84;
    }
  }

  else
  {
    if (v72)
    {
      (*(*v72 + 40))();
    }

    if (v65)
    {
LABEL_84:
      v64(v63, 3, 0);
LABEL_88:
      if (v84 != &v86)
      {
        free(v84);
      }

      goto LABEL_100;
    }
  }

  if (a9 && v66)
  {
    goto LABEL_88;
  }

  v46 = swift_isInConformanceExecutionContext(v18, &v66);
  if (v65 == 1)
  {
    v64(v63, 3, 0);
  }

  if (v84 != &v86)
  {
    free(v84);
  }

  if (!v46)
  {
LABEL_100:
    v45 = 0;
    goto LABEL_101;
  }

  result = 0;
  v48 = *v15;
  if (v48 <= 1)
  {
    if (*v15)
    {
      v49 = 0;
      if (v48 != 1)
      {
        goto LABEL_111;
      }

LABEL_108:
      v49 = v13 + 1;
      result = v13;
    }

    else
    {
      v13[3] = v10;
      result = swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(v10, v13);
      v49 = v13 + 4;
    }

    goto LABEL_111;
  }

  if (v48 == 2)
  {
    goto LABEL_108;
  }

  v49 = 0;
  if (v48 == 3)
  {
    __break(1u);
  }

  else
  {
LABEL_111:
    v50 = v74;
    if (v74)
    {
      v51 = 0;
      v52 = v73;
      if (v74 < 4)
      {
        goto LABEL_117;
      }

      if ((v49 - v73) <= 0x1F)
      {
        goto LABEL_117;
      }

      v51 = v74 & 0xFFFFFFFC;
      v53 = (v73 + 16);
      v54 = v49 + 2;
      v55 = v51;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 4;
      }

      while (v55);
      if (v51 != v50)
      {
LABEL_117:
        v57 = &v49[v51];
        v58 = &v52[8 * v51];
        v59 = v50 - v51;
        do
        {
          v60 = *v58;
          v58 += 8;
          *v57++ = v60;
          --v59;
        }

        while (v59);
      }
    }

    v61 = *(v10 - 8);
    if (v9)
    {
      (*(v61 + 32))(result, v11, v10);
      v45 = 2;
    }

    else
    {
      (*(v61 + 16))(result, v11, v10);
      v45 = 1;
    }

LABEL_101:
    if (v73 != v75)
    {
      free(v73);
    }

    if (v76 != v78)
    {
      free(v76);
    }

    return v45;
  }

  return result;
}

void *tryCastToMetatype(uint64_t **a1, uint64_t a2, uint64_t *a3, Class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v11) = 0;
  }

  if (!v11 || v11 == 773)
  {
    result = getNonNullSrcObject(a3, a4, a2);
    if (!result)
    {
      return result;
    }

    v18 = result;
    Class = object_getClass(result);
    if (class_isMetaClass(Class))
    {
      ObjCClassMetadata = swift_getObjCClassMetadata(v18);
      v23 = ObjCClassMetadata;
      if (ObjCClassMetadata)
      {
        MetatypeMetadata = swift_getMetatypeMetadata(ObjCClassMetadata);
        return tryCast(a1, a2, &v23, MetatypeMetadata, a5, a6, a7, a8, a9);
      }
    }

    return 0;
  }

  if (v11 != 772)
  {
    return 0;
  }

  v12 = swift_dynamicCastMetatype(*a3, *(a2 + 8));
  if (v12)
  {
    *a1 = v12;
  }

  return (v12 != 0);
}

uint64_t tryCastToObjectiveCClass(uint64_t *a1, uint64_t a2, uint64_t *a3, Class *a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v12 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v12) = 0;
  }

  if (v12 && v12 != 773 && v12 != 515)
  {
    return 0;
  }

  NonNullSrcObject = getNonNullSrcObject(a3, a4, a2);
  if (NonNullSrcObject)
  {
    result = swift_dynamicCastObjCClass(NonNullSrcObject, *(a2 + 8));
    if (!result)
    {
      return result;
    }

    *a1 = result;
    if (a7)
    {
      return 2;
    }

    v15 = result;
    return 1;
  }

  if (!a8)
  {
    return 0;
  }

  *a1 = 0;
  return 1;
}

uint64_t tryCastToExistentialMetatype(uint64_t **a1, Class *a2, uint64_t *a3, Class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v11 = *a4;
  if (*a4 > 0x7FF)
  {
    LODWORD(v11) = 0;
  }

  if (v11 == 773)
  {
    NonNullSrcObject = getNonNullSrcObject(a3, a4, a2);
    if (NonNullSrcObject)
    {
      v15 = NonNullSrcObject;
      Class = object_getClass(NonNullSrcObject);
      if (class_isMetaClass(Class))
      {
        ObjCClassMetadata = swift_getObjCClassMetadata(v15);
        if (ObjCClassMetadata)
        {
          v12 = ObjCClassMetadata;
          goto LABEL_6;
        }
      }
    }

    return 0;
  }

  if (v11 != 772)
  {
    return 0;
  }

  v12 = *a3;
LABEL_6:

  return _dynamicCastMetatypeToExistentialMetatype(a1, a2, v12, a9);
}

void *ObjCBridgeMemo::tryBridge(uint64_t *a1, uint64_t a2, Class *a3, uint64_t *a4, Class *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v16[0] = a3;
  v16[1] = a1;
  swift_once(a1 + 3, ObjCBridgeMemo::tryBridge(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL)::{lambda(void *)#1}::__invoke, v16);
  if (!a1[2])
  {
    return 0;
  }

  result = getNonNullSrcObject(a4, a5, a3);
  if (result)
  {
    v15 = result;
    result = object_getClass(result);
    while (result != a1[2])
    {
      result = class_getSuperclass(result);
      if (!result)
      {
        return result;
      }
    }

    return _tryCastFromClassToObjCBridgeable(a2, a3, v15, a9, *a1);
  }

  return result;
}

uint64_t _tryCastFromClassToObjCBridgeable(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v11 = (a2 - 8);
  v10 = *(a2 - 8);
  if (*(v10 + 72) >= 0x19uLL)
  {
    v12 = swift_slowAlloc((*(v10 + 64) + 1), *(*(a2 - 8) + 80));
    v10 = *v11;
    v13 = v12;
  }

  else
  {
    v12 = 0;
    v13 = v16;
  }

  (*(v10 + 56))(v13, 1, 1, a2);
  if (a4)
  {
    (*(a5 + 24))(a3, v13, a2, a5);
  }

  else if (((*(a5 + 32))(a3, v13, a2, a5) & 1) == 0)
  {
    v14 = 0;
    if (!v12)
    {
      return v14;
    }

    goto LABEL_8;
  }

  (*(*(a2 - 8) + 32))(a1, v13, a2);
  v14 = 1;
  if (v12)
  {
LABEL_8:
    v12;
  }

  return v14;
}

void ObjCBridgeMemo::tryBridge(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = swift_conformsToProtocolCommon(*a1, &protocol descriptor for _ObjectiveCBridgeable);
  *v2 = v3;
  if (!v3)
  {
    v2[1] = 0;
    v2[2] = 0;
    return;
  }

  v4 = v3;
  v5 = *v3;
  v6 = **v3;
  if (v6)
  {
    v7 = (v5 + (v6 & 0xFFFFFFFFFFFFFFFELL));
    if (v6)
    {
      if (*v7)
      {
        v8 = *v7;
        goto LABEL_10;
      }
    }

    else if (v7)
    {
      v8 = v5 + (v6 & 0xFFFFFFFFFFFFFFFELL);
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:
  v9 = v8;
  if (v8)
  {
    v9 = v8;
  }

  if (v9 == -24)
  {
    v10 = 0;
    v11 = MEMORY[0xFFFFFFFFFFFFFFF4];
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v10 = v9 + 24;
  v11 = *(v9 + 3);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_14:
  v12 = v8;
LABEL_17:
  swift_getAssociatedTypeWitness(0, v4, *a1, &v12[12 * *(v12 + 3) + 16], &v10[12 * v11]);
  v2[1] = v13;
  v14 = *v13;
  if (*v13 > 0x7FF)
  {
    LODWORD(v14) = 0;
  }

  if (v14)
  {
    if (v14 == 773)
    {
      v13 = v13[1];
    }

    else
    {
      v13 = 0;
    }
  }

  v2[2] = v13;
}

uint64_t std::__function::__func<tryCastToExtendedExistential(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL,BOOL)::$_0,std::allocator<tryCastToExtendedExistential(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL,BOOL)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAA750;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<tryCastToExtendedExistential(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL,BOOL)::$_1,std::allocator<tryCastToExtendedExistential(swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::OpaqueValue *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*&,swift::TargetMetadata<swift::InProcess> const*&,BOOL,BOOL,BOOL)::$_1>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAA798;
  a2[1] = v2;
  return result;
}

uint64_t _dynamicCastMetatypeToExistentialMetatype(uint64_t **a1, uint64_t a2, uint64_t *a3, int a4)
{
  v5 = a3;
  v6 = a1;
  v7 = *(a2 + 8);
  if (*v7 != 771)
  {
    if (*a3 != 772)
    {
      return 0;
    }

    if (a1)
    {
      *a1 = a3;
    }

    while (1)
    {
      v5 = v5[1];
      v7 = *(v7 + 8);
      if (*v7 == 771)
      {
        break;
      }

      if (*v5 != 772)
      {
        return 0;
      }
    }

    v6 = 0;
  }

  if (v6)
  {
    v8 = (v6 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v7 + 8);
  if ((v9 & 0x40000000) != 0)
  {
    v10 = *(v7 + 16);
    if (v10)
    {
      result = swift_dynamicCastMetatype(v5, v10);
      if (!result)
      {
        return result;
      }

      v9 = *(v7 + 8);
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    v12 = *v5;
    if (*v5 > 0x7FF)
    {
      LODWORD(v12) = 0;
    }

    if (v12 && v12 != 773 && v12 != 515)
    {
      return 0;
    }
  }

  v13 = *(v7 + 12);
  if (v13)
  {
    v14 = (v7 + 8 * ((v9 >> 30) & 1) + 16);
    v15 = 8 * v13;
    while (1)
    {
      v16 = *v14;
      result = swift::_conformsToProtocolInContext(0, v5, *v14, v8, a4);
      if (!result)
      {
        break;
      }

      if (v8)
      {
        v8 = (v8 + (~(8 * v16) & 8));
      }

      else
      {
        v8 = 0;
      }

      ++v14;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    if (v6)
    {
      *v6 = v5;
    }

    return 1;
  }

  return result;
}

_BYTE *initializeToNilAtDepth(uint64_t a1, unint64_t *a2, int a3)
{
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
  v8 = *TypeContextDescriptor;
  v9 = *TypeContextDescriptor & 0x1F;
  if ((v9 - 17) >= 2)
  {
    if (v9 != 16)
    {
      __break(1u);
      return result;
    }

    if ((v8 & 0x20000000) != 0)
    {
      ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(TypeContextDescriptor);
    }

    else
    {
      if ((v8 & 0x10000000) != 0)
      {
        v14 = 0;
        v15 = 6;
      }

      else
      {
        v14 = TypeContextDescriptor[7];
        v15 = 8;
      }

      ResilientImmediateMembersOffset = v14 - TypeContextDescriptor[v15];
    }
  }

  else
  {
    ResilientImmediateMembersOffset = 2;
  }

  v11 = a2[ResilientImmediateMembersOffset];
  if (a3 <= 0)
  {
    v12 = 1;
  }

  else
  {
    initializeToNilAtDepth(a1, v11, (a3 - 1));
    v12 = 0;
  }

  v13 = *(*(v11 - 8) + 56);

  return v13(a1, v12, 1, v11);
}

__n128 swift_initEnumMetadataSingleCase(uint64_t a1, __int16 a2, __n128 *a3)
{
  MutableVWTableForInit = getMutableVWTableForInit(a1, a2);
  v5 = a3[1].n128_u32[1];
  v6 = a3[1].n128_u32[0] | 0x200000;
  result = *a3;
  *(MutableVWTableForInit + 4) = *a3;
  *(MutableVWTableForInit + 20) = v6;
  *(MutableVWTableForInit + 21) = v5;
  return result;
}

char *getMutableVWTableForInit(uint64_t a1, __int16 a2)
{
  v2 = (a1 - 8);
  if (*(a1 - 8))
  {
    v3 = *(a1 - 8);
    if ((a2 & 0x100) == 0)
    {
LABEL_3:
      result = swift::allocateMetadata(0x70, 8uLL);
      *result = *v3;
      *(result + 1) = *(v3 + 8);
      *(result + 2) = *(v3 + 16);
      *(result + 3) = *(v3 + 24);
      *(result + 4) = *(v3 + 32);
      *(result + 5) = *(v3 + 40);
      *(result + 6) = *(v3 + 48);
      *(result + 7) = *(v3 + 56);
      v5 = *(v3 + 64);
      *(result + 10) = *(v3 + 80);
      *(result + 4) = v5;
      *(result + 11) = *(v3 + 88);
      *(result + 12) = *(v3 + 96);
      *(result + 13) = *(v3 + 104);
      *v2 = result;
      return result;
    }
  }

  else
  {
    v3 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_3;
    }
  }

  return v3;
}

double swift_initEnumMetadataSingleCaseWithLayoutString(void *a1, uint64_t a2, unint64_t *a3)
{
  if (swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override == 1)
  {
    return swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl(a1, a2, a3);
  }

  if (!swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override)
  {
    return swift_cvw_initEnumMetadataSingleCaseWithLayoutStringSlow(a1, a2, a3);
  }

  swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override(a1, a2, a3, swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl);
  return result;
}

double swift_cvw_initEnumMetadataSingleCaseWithLayoutString(void *a1, uint64_t a2, unint64_t *a3)
{
  if (swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override == 1)
  {
    return swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl(a1, a2, a3);
  }

  if (!swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override)
  {
    return swift_cvw_initEnumMetadataSingleCaseWithLayoutStringSlow(a1, a2, a3);
  }

  swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override(a1, a2, a3, swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl);
  return result;
}

double swift_initEnumMetadataSinglePayload(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 20);
  v7 = v6 - a4;
  if (v6 < a4)
  {
    if (v5 <= 3)
    {
      v9 = ((a4 - v6 + ~(-1 << (8 * v5))) >> (8 * v5)) + 1;
      if (v9 >= 2)
      {
        v10 = 4;
        if (v9 < 0x10000)
        {
          v10 = 2;
        }

        if (v9 >= 0x100)
        {
          v8 = v10;
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }

    v7 = 0;
    v5 += v8;
  }

  MutableVWTableForInit = getMutableVWTableForInit(a1, a2);
  v12 = *(a3 + 16);
  v13 = v12 + 1;
  v15 = (v12 & 0x100000) != 0 || v12 >= 8u || v5 >= 0x19;
  v16 = v12 & 0xFFFDFFFF;
  if (v15)
  {
    v17 = 0x20000;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v21) = v16 | v17 | 0x200000;
  HIDWORD(v21) = v7;
  v18 = (v5 + v13 - 1) / v13 * v13;
  if (v18 <= 1)
  {
    v18 = 1;
  }

  *&v20 = v5;
  *(&v20 + 1) = v18;
  swift::installCommonValueWitnesses(&v20, MutableVWTableForInit);
  *(MutableVWTableForInit + 4) = v20;
  result = v21;
  *(MutableVWTableForInit + 10) = v21;
  return result;
}

double swift_initEnumMetadataSinglePayloadWithLayoutString(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override == 1)
  {
    return swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl(a1, a2, a3, a4);
  }

  if (!swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override)
  {
    return swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringSlow(a1, a2, a3, a4);
  }

  swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override(a1, a2, a3, a4, swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl);
  return result;
}

double swift_cvw_initEnumMetadataSinglePayloadWithLayoutString(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override == 1)
  {
    return swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl(a1, a2, a3, a4);
  }

  if (!swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override)
  {
    return swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringSlow(a1, a2, a3, a4);
  }

  swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override(a1, a2, a3, a4, swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl);
  return result;
}

uint64_t swift_getEnumTagSinglePayloadGeneric(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(*(a3 - 8) + 64);
  v6 = *(*(a3 - 8) + 84);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 == 0 || !v7)
  {
    goto LABEL_13;
  }

  if (v5 > 3)
  {
    goto LABEL_4;
  }

  v11 = ((v8 + ~(-1 << (8 * v5))) >> (8 * v5)) + 1;
  if (v11 < 2)
  {
    goto LABEL_13;
  }

  if (v11 < 0x100)
  {
LABEL_4:
    v9 = *(a1 + v5);
  }

  else if (v11 >= 0x10000)
  {
    v9 = *(a1 + v5);
  }

  else
  {
    v9 = *(a1 + v5);
  }

  if (v9)
  {
    v10 = (v9 - 1) << (8 * v5);
    if (v5 > 3)
    {
      v10 = 0;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v13 = *a1;
        return v6 + (v13 | v10) + 1;
      }

      if (v5 == 3)
      {
        v13 = *a1 | (*(a1 + 2) << 16);
        return v6 + (v13 | v10) + 1;
      }

      goto LABEL_22;
    }

    v13 = 0;
    if (v5)
    {
      if (v5 != 1)
      {
LABEL_22:
        v13 = *a1;
        return v6 + (v13 | v10) + 1;
      }

      v13 = *a1;
    }

    return v6 + (v13 | v10) + 1;
  }

LABEL_13:
  if (v6)
  {
    return a4();
  }

  else
  {
    return 0;
  }
}

uint64_t swift::storeEnumTagSinglePayloadImpl(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t (*a7)(void))
{
  if (a3 <= a6)
  {
    if (a2 > a6)
    {
      v7 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (a5 <= 3)
    {
      v8 = ((a3 - a6 + ~(-1 << (8 * a5))) >> (8 * a5)) + 1;
      if (v8 >= 2)
      {
        if (v8 >= 0x10000)
        {
          v9 = 4;
        }

        else
        {
          v9 = 2;
        }

        if (v8 >= 0x100)
        {
          v7 = v9;
        }

        else
        {
          v7 = 1;
        }

        if (a2 > a6)
        {
LABEL_19:
          v10 = ~a6 + a2;
          if (a5 <= 3)
          {
            v11 = (v10 >> (8 * a5)) + 1;
            if (!a5)
            {
              goto LABEL_37;
            }

            v10 &= ~(-1 << (8 * a5));
            if (a5 <= 2)
            {
LABEL_21:
              if (a5 != 1)
              {
                if (a5 == 2)
                {
                  *result = v10;
                  if (v7 <= 1)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_38;
                }

                goto LABEL_34;
              }

              *result = v10;
LABEL_37:
              if (v7 <= 1)
              {
                goto LABEL_42;
              }

              goto LABEL_38;
            }
          }

          else
          {
            v11 = 1;
            if (a5 <= 2)
            {
              goto LABEL_21;
            }
          }

          if (a5 == 3)
          {
            *result = v10;
            *(result + 2) = BYTE2(v10);
            if (v7 <= 1)
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }

          if (a5 == 4)
          {
            *result = v10;
            if (v7 <= 1)
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }

LABEL_34:
          *result = v10;
          v12 = result;
          v13 = a5;
          bzero((result + 4), a5 - 4);
          a5 = v13;
          result = v12;
          if (v7 <= 1)
          {
LABEL_42:
            if (v7)
            {
              *(result + a5) = v11;
            }

            return result;
          }

LABEL_38:
          if (v7 == 2)
          {
            *(result + a5) = v11;
          }

          else
          {
            *(result + a5) = v11;
          }

          return result;
        }
      }

      else
      {
        v7 = 0;
        if (a2 > a6)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v7 = 1;
      if (a2 > a6)
      {
        goto LABEL_19;
      }
    }

    if (v7 <= 1)
    {
      if (v7)
      {
        *(result + a5) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v7 != 2)
      {
        *(result + a5) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_46;
      }

      *(result + a5) = 0;
    }
  }

  if (!a2)
  {
    return result;
  }

LABEL_46:

  return a7();
}

double swift_initEnumMetadataMultiPayload(uint64_t a1, __int16 a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    v6 = 0;
    v10 = 0;
    v5 = 0;
    v8 = 1;
    v11 = 0x200000;
    goto LABEL_24;
  }

  if (a3 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LOBYTE(v7) = 1;
    LOBYTE(v8) = 1;
    LOBYTE(v9) = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v6 = 0;
    v14 = 0;
    v4 = a3 & 0xFFFFFFFE;
    v15 = (a4 + 8);
    LOBYTE(v16) = 1;
    v17 = v4;
    LOBYTE(v18) = 1;
    LOBYTE(v19) = 1;
    LOBYTE(v20) = 1;
    LOBYTE(v21) = 1;
    LOBYTE(v22) = 1;
    do
    {
      v23 = *(v15 - 1);
      if (v6 <= *v23)
      {
        v6 = *v23;
      }

      if (v14 <= **v15)
      {
        v14 = **v15;
      }

      v24 = *(v23 + 16);
      v25 = *(*v15 + 4);
      v12 |= v24;
      v13 |= v25;
      v16 = v16 & ((v24 & 0x10000) == 0);
      v18 = v18 & ((v25 & 0x10000) == 0);
      v19 = v19 & ((v24 & 0x100000) == 0);
      v20 = v20 & ((v25 & 0x100000) == 0);
      v21 = v21 & ((v24 & 0x1100000) == 0);
      v22 = v22 & ((v25 & 0x1100000) == 0);
      v15 += 2;
      v17 -= 2;
    }

    while (v17);
    v5 = v13 | v12;
    v7 = v18 & v16;
    v8 = v20 & v19;
    v9 = v22 & v21;
    if (v6 <= v14)
    {
      v6 = v14;
    }

    if (v4 == a3)
    {
      goto LABEL_18;
    }
  }

  v26 = (a4 + 8 * v4);
  v27 = a3 - v4;
  do
  {
    v29 = *v26++;
    v28 = v29;
    v30 = *v29;
    if (v6 <= *v29)
    {
      v6 = v30;
    }

    v31 = *(v28 + 4);
    v5 |= v31;
    v7 = v7 & ((v31 & 0x10000) == 0);
    v8 = v8 & ((v31 & 0x100000) == 0);
    v9 = v9 & ((v31 & 0x1100000) == 0);
    --v27;
  }

  while (v27);
LABEL_18:
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x10000;
  }

  if (v9)
  {
    v11 = 0x200000;
  }

  else
  {
    v11 = 18874368;
  }

LABEL_24:
  v32 = *(a1 + 8);
  if (v32)
  {
    v33 = *(a1 + 8);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v33 + 20) >> 24;
  if (*(a1 + 8 * v34) != v6)
  {
    *(a1 + 8 * v34) = v6;
  }

  if (v32)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  v36 = *(v35 + 24);
  if (v36)
  {
    if (v6 < 4)
    {
      a3 += (v36 + ~(-1 << (8 * v6))) >> (8 * v6);
      if (a3 < 2)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    ++a3;
  }

  if (a3 < 2)
  {
LABEL_36:
    v37 = 0;
    goto LABEL_42;
  }

LABEL_38:
  if (a3 >= 0x100)
  {
    v37 = 0x400000000;
    if (a3 < 0x10000)
    {
      v37 = 0x200000000;
    }
  }

  else
  {
    v37 = 0x100000000;
  }

LABEL_42:
  v38 = (1 << (8 * BYTE4(v37))) - a3;
  if (v38 >= 0x7FFFFFFF)
  {
    v38 = 0x7FFFFFFF;
  }

  v39 = (HIDWORD(v37) + v6);
  if (v37 == 0x400000000)
  {
    v40 = 0x7FFFFFFF;
  }

  else
  {
    v40 = v38;
  }

  MutableVWTableForInit = getMutableVWTableForInit(a1, a2);
  v42 = (v39 + v5) & ~v5;
  if (v42 <= 1)
  {
    v42 = 1;
  }

  if (v8)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0x100000;
  }

  v45 = v5 < 8 && v39 < 0x19;
  if ((v8 & v45) != 0)
  {
    v46 = 0;
  }

  else
  {
    v46 = 0x20000;
  }

  *&v48 = v39;
  *(&v48 + 1) = v42;
  LODWORD(v49) = v11 | v10 | v5 & 0xFECCFFFF | v43 | v46;
  HIDWORD(v49) = v40;
  swift::installCommonValueWitnesses(&v48, MutableVWTableForInit);
  *(MutableVWTableForInit + 6) = swift_getMultiPayloadEnumTagSinglePayload;
  *(MutableVWTableForInit + 7) = swift_storeMultiPayloadEnumTagSinglePayload;
  *(MutableVWTableForInit + 4) = v48;
  result = v49;
  *(MutableVWTableForInit + 10) = v49;
  return result;
}

uint64_t swift_getMultiPayloadEnumTagSinglePayload(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  v4 = *(*(a3 - 8) + 84);
  if (a2 > v4)
  {
    if (v3 > 3)
    {
      goto LABEL_3;
    }

    v7 = ((a2 - v4 + ~(-1 << (8 * v3))) >> (8 * v3)) + 1;
    if (v7 < 2)
    {
      goto LABEL_12;
    }

    if (v7 < 0x100)
    {
LABEL_3:
      v5 = *(a1 + v3);
    }

    else if (v7 >= 0x10000)
    {
      v5 = *(a1 + v3);
    }

    else
    {
      v5 = *(a1 + v3);
    }

    if (v5)
    {
      v6 = (v5 - 1) << (8 * v3);
      if (v3 > 3)
      {
        v6 = 0;
      }

      if (v3 > 1)
      {
        if (v3 == 2)
        {
          v13 = *a1;
          return v4 + (v13 | v6) + 1;
        }

        if (v3 == 3)
        {
          v13 = *a1 | (*(a1 + 2) << 16);
          return v4 + (v13 | v6) + 1;
        }

        goto LABEL_40;
      }

      v13 = 0;
      if (v3)
      {
        if (v3 != 1)
        {
LABEL_40:
          v13 = *a1;
          return v4 + (v13 | v6) + 1;
        }

        v13 = *a1;
      }

      return v4 + (v13 | v6) + 1;
    }
  }

LABEL_12:
  if (!v4)
  {
    return 0;
  }

  if (*(a3 + 8))
  {
    v8 = *(a3 + 8);
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a3 + 8 * *(v8 + 23));
  v11 = v3 - v10;
  if (v3 - v10 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v10);
      goto LABEL_34;
    }

    if (v11 == 3)
    {
      v12 = *(a1 + v10) | (*(a1 + v10 + 2) << 16);
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (!v11)
  {
    v12 = 0;
    goto LABEL_34;
  }

  if (v11 != 1)
  {
LABEL_24:
    v12 = *(a1 + v10);
    goto LABEL_34;
  }

  v12 = *(a1 + v10);
LABEL_34:
  if (v11 == 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1 << (8 * v11);
  }

  v15 = v12 | v14;
  if (__CFADD__(v15, v4))
  {
    return -v15;
  }

  else
  {
    return 0;
  }
}

double swift_initEnumMetadataMultiPayloadWithLayoutString(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  if (swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override == 1)
  {
    return swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl(a1, a2, a3, a4);
  }

  if (!swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override)
  {
    return swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringSlow(a1, a2, a3, a4);
  }

  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override(a1, a2, a3, a4, swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl);
  return result;
}

double swift_cvw_initEnumMetadataMultiPayloadWithLayoutString(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  if (swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override == 1)
  {
    return swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl(a1, a2, a3, a4);
  }

  if (!swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override)
  {
    return swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringSlow(a1, a2, a3, a4);
  }

  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override(a1, a2, a3, a4, swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl);
  return result;
}

void storeMultiPayloadExtraInhabitantTag(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8))
  {
    v4 = *(a4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a4 + 8 * *(v4 + 23));
  v6 = *(*(a4 - 8) + 64) - v5;
  v7 = -a2;
  v8 = (a1 + v5);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        *v8 = v7;
        return;
      }

LABEL_15:
      *v8 = v7;
      bzero(v8 + 4, v6 - 4);
    }
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        *v8 = v7;
        v8[2] = BYTE2(v7);
        return;
      }

      if (v6 == 4)
      {
        *v8 = v7;
        return;
      }

      goto LABEL_15;
    }

    *v8 = v7;
  }
}

void swift_storeEnumTagMultiPayload(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8 * *(v4 + 23));
  v6 = *(*(a2 - 8) + 64) - v5;
  if (v3)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 20) & 0xFFFFFF;
  v9 = a3 - v8;
  if (a3 < v8)
  {
    v10 = &a1[v5];
    if (v6 <= 1)
    {
      if (!v6)
      {
        return;
      }

      if (v6 == 1)
      {
        *v10 = a3;
        return;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          *v10 = a3;
          return;
        case 3:
          *v10 = a3;
          v10[2] = BYTE2(a3);
          return;
        case 4:
          *v10 = a3;
          return;
      }
    }

    *v10 = a3;
    v14 = v10 + 4;
    v15 = v6 - 4;
    goto LABEL_51;
  }

  if (v5 <= 3)
  {
    v11 = v9 & ~(-1 << (8 * v5));
  }

  else
  {
    v11 = a3 - v8;
  }

  if (v5 <= 3)
  {
    v12 = (v9 >> (8 * v5)) + v8;
  }

  else
  {
    v12 = *(v7 + 20) & 0xFFFFFF;
  }

  v13 = &a1[v5];
  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_37;
    }

    if (v6 != 1)
    {
LABEL_45:
      *v13 = v12;
      v16 = a1;
      bzero(v13 + 4, v6 - 4);
      a1 = v16;
      if (v5 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_38;
    }

    *v13 = v12;
    if (v5 > 1)
    {
      goto LABEL_38;
    }

LABEL_46:
    if (!v5)
    {
      return;
    }

    if (v5 == 1)
    {
      *a1 = v11;
      return;
    }

    goto LABEL_50;
  }

  if (v6 == 2)
  {
    *v13 = v12;
    if (v5 > 1)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  if (v6 == 3)
  {
    *v13 = v12;
    v13[2] = BYTE2(v12);
LABEL_37:
    if (v5 <= 1)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v6 != 4)
  {
    goto LABEL_45;
  }

  *v13 = v12;
  if (v5 <= 1)
  {
    goto LABEL_46;
  }

LABEL_38:
  switch(v5)
  {
    case 2:
      *a1 = v11;
      return;
    case 3:
      *a1 = v11;
      a1[2] = BYTE2(v11);
      return;
    case 4:
      *a1 = v11;
      return;
  }

LABEL_50:
  *a1 = v11;
  v14 = a1 + 4;
  v15 = v5 - 4;
LABEL_51:

  bzero(v14, v15);
}

uint64_t swift_getEnumCaseMultiPayload(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 8 * *(v3 + 23));
  v5 = *(*(a2 - 8) + 64) - v4;
  if (v2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 20) & 0xFFFFFF;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v8 = 0;
      v9 = -v7;
      if (!v7)
      {
        goto LABEL_22;
      }

      return v8;
    }

    if (v5 == 1)
    {
      v8 = *(a1 + v4);
      v9 = v8 - v7;
      if (v8 >= v7)
      {
        goto LABEL_22;
      }

      return v8;
    }

LABEL_15:
    v8 = *(a1 + v4);
    v9 = v8 - v7;
    if (v8 >= v7)
    {
      goto LABEL_22;
    }

    return v8;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v8 = *(a1 + v4) | (*(a1 + v4 + 2) << 16);
      v9 = v8 - v7;
      if (v8 >= v7)
      {
        goto LABEL_22;
      }

      return v8;
    }

    goto LABEL_15;
  }

  v8 = *(a1 + v4);
  v9 = v8 - v7;
  if (v8 < v7)
  {
    return v8;
  }

LABEL_22:
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v11 = *a1;
      goto LABEL_32;
    }

    if (v4 == 3)
    {
      v11 = *a1 | (*(a1 + 2) << 16);
      goto LABEL_32;
    }
  }

  else
  {
    if (!v4)
    {
      v11 = 0;
      goto LABEL_32;
    }

    if (v4 == 1)
    {
      v11 = *a1;
LABEL_32:
      v12 = v11 | (v9 << (8 * v4));
      return v12 + v7;
    }
  }

  v12 = *a1;
  return v12 + v7;
}

double swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl(void *a1, __int16 a2, unint64_t *a3)
{
  if (*(a3 - 1))
  {
    v5 = *(a3 - 1);
  }

  else
  {
    v5 = 0;
  }

  MutableVWTableForInit = getMutableVWTableForInit(a1, a2);
  v18 = *(v5 + 64);
  v7 = *(v5 + 84);
  LODWORD(v19) = *(v5 + 80) | 0x200000;
  HIDWORD(v19) = v7;
  v8 = _swift_refCountBytesForMetatype(a3);
  LOWORD(v16) = 26;
  v9 = swift::MetadataAllocator::Allocate(&v16, (v8 + 31) & 0xFFFFFFFFFFFFFFF8, 1uLL);
  *(v9 + 1) = v8;
  v16 = v9;
  v17 = 16;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  _swift_addRefCountStringForMetatype(&v16, &v13, a3, &v15, &v14);
  v16[v17 / 8] = v14;
  v17 = 0;
  *v16 = v13 & 0x7FFFFFFFFFFFFFFFLL;
  v17 += 8;
  swift::installCommonValueWitnesses(&v18, MutableVWTableForInit);
  if (*a1 <= 0x7FFuLL)
  {
    v10 = *a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x1FFFFFFFFFFFFFFDLL;
  if (v10 && v10 != 515 && v10 != 773)
  {
    v11 = 0x1FFFFFFFFFFFFFFELL;
  }

  a1[v11] = v9 | 1;
  *(MutableVWTableForInit + 4) = v18;
  result = v19;
  *(MutableVWTableForInit + 10) = v19;
  return result;
}