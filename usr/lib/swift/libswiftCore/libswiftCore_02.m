double swift_cvw_initEnumMetadataSingleCaseWithLayoutStringSlow(swift *a1, uint64_t a2, unint64_t *a3)
{
  Override_cvw_initEnumMetadataSingleCaseWithLayoutString = swift::getOverride_cvw_initEnumMetadataSingleCaseWithLayoutString(a1);
  if (Override_cvw_initEnumMetadataSingleCaseWithLayoutString)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override = Override_cvw_initEnumMetadataSingleCaseWithLayoutString;

    (Override_cvw_initEnumMetadataSingleCaseWithLayoutString)(a1, a2, a3, swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl);
  }

  else
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString::Override = 1;

    return swift_cvw_initEnumMetadataSingleCaseWithLayoutStringImpl(a1, a2, a3);
  }

  return result;
}

double swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl(void *a1, __int16 a2, unint64_t *a3, unsigned int a4)
{
  v6 = a3 - 1;
  v7 = *(a3 - 1);
  v8 = *(v7 + 64);
  v9 = *(v7 + 84);
  v10 = v9 - a4;
  if (v9 >= a4)
  {
    LODWORD(v11) = 0;
    v12 = *(*(a3 - 1) + 64);
  }

  else
  {
    if (v8 <= 3)
    {
      v13 = ((a4 - v9 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
      if (v13 >= 2)
      {
        v14 = 4;
        if (v13 < 0x10000)
        {
          v14 = 2;
        }

        if (v13 >= 0x100)
        {
          v11 = v14;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = 0;
    v12 = v11 + v8;
  }

  MutableVWTableForInit = getMutableVWTableForInit(a1, a2);
  v16 = *(v7 + 80);
  v17 = v16 + 1;
  v19 = (v16 & 0x100000) != 0 || v16 >= 8u || v12 >= 0x19;
  v20 = v16 & 0xFFFDFFFF;
  if (v19)
  {
    v21 = 0x20000;
  }

  else
  {
    v21 = 0;
  }

  LODWORD(v46) = v20 | v21 | 0x200000;
  HIDWORD(v46) = v10;
  v22 = (v12 + v17 - 1) / v17 * v17;
  if (v22 <= 1)
  {
    v22 = 1;
  }

  *&v45 = v12;
  *(&v45 + 1) = v22;
  if (*(*v6 + 84))
  {
    if (*a3 == 769)
    {
      v23 = (a3 + 3);
      v24 = a3[1];
      if (v24 < 2)
      {
        v27 = (a3 + 3);
      }

      else
      {
        v25 = *v23;
        v26 = 1;
        v27 = (a3 + 3);
        do
        {
          v28 = &v23[2 * v26];
          if (*(*(v25 - 8) + 84) < *(*(*v28 - 8) + 84))
          {
            v25 = *v28;
            v27 = &v23[2 * v26];
          }

          ++v26;
        }

        while (v24 != v26);
      }

      v29 = *v27;
      v30 = v27[1];
    }

    else
    {
      v30 = 0;
      v29 = a3;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = _swift_refCountBytesForMetatype(a3);
  LOWORD(v43) = 26;
  v32 = swift::MetadataAllocator::Allocate(&v43, (v31 + 83) & 0xFFFFFFFFFFFFFFF8, 1uLL);
  v33 = v32;
  *(v32 + 1) = v31 + 52;
  *(v32 + 2) = 0x1300000000000000;
  if (v11 >= 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = v11;
  }

  *(v32 + 3) = v30 | (v34 << 62);
  *(v32 + 4) = v8;
  *(v32 + 5) = v29;
  *(v32 + 12) = a4;
  *(v32 + 52) = v31;
  v43 = v32;
  v44 = 68;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  _swift_addRefCountStringForMetatype(&v43, &v40, a3, &v42, &v41);
  *&v43[v44] = v41 + v11;
  v35 = v43;
  *(v43 + 60) = v8 - v41;
  v44 = 0;
  *v35 = v40 & 0x7FFFFFFFFFFFFFFFLL;
  v44 += 8;
  if (*a1 <= 0x7FFuLL)
  {
    v36 = *a1;
  }

  else
  {
    v36 = 0;
  }

  v37 = 0x1FFFFFFFFFFFFFFDLL;
  if (v36 && v36 != 515 && v36 != 773)
  {
    v37 = 0x1FFFFFFFFFFFFFFELL;
  }

  a1[v37] = v33 | 1;
  swift::installCommonValueWitnesses(&v45, MutableVWTableForInit);
  *(MutableVWTableForInit + 4) = v45;
  result = v46;
  *(MutableVWTableForInit + 10) = v46;
  return result;
}

double swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringSlow(swift *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  Override_cvw_initEnumMetadataSinglePayloadWithLayoutString = swift::getOverride_cvw_initEnumMetadataSinglePayloadWithLayoutString(a1);
  if (Override_cvw_initEnumMetadataSinglePayloadWithLayoutString)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override = Override_cvw_initEnumMetadataSinglePayloadWithLayoutString;

    (Override_cvw_initEnumMetadataSinglePayloadWithLayoutString)(a1, a2, a3, a4, swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl);
  }

  else
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString::Override = 1;

    return swift_cvw_initEnumMetadataSinglePayloadWithLayoutStringImpl(a1, a2, a3, a4);
  }

  return result;
}

double swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl(uint64_t a1, __int16 a2, unsigned int a3, unint64_t **a4)
{
  v4 = a4;
  v55 = a1;
  if (a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    LOBYTE(v10) = 1;
    v11 = a4;
    LOBYTE(v12) = 1;
    v13 = a3;
    do
    {
      v15 = *v11++;
      v14 = v15;
      v16 = *(v15 - 1);
      if (v9 <= *(v16 + 64))
      {
        v9 = *(v16 + 64);
      }

      v17 = *(v16 + 80);
      v7 |= v17;
      v10 = v10 & ((v17 & 0x10000) == 0);
      v12 = v12 & ((v17 & 0x100000) == 0);
      v8 += _swift_refCountBytesForMetatype(v14) + 8;
      --v13;
    }

    while (v13);
    if (v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0x10000;
    }

    a2 = v6;
    a1 = v55;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v18 = 0;
    v7 = 0;
    v12 = 1;
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = *(a1 + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v20 + 20) >> 24;
  if (*(a1 + 8 * v21) != v9)
  {
    *(a1 + 8 * v21) = v9;
  }

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v22 + 24);
  v24 = a3;
  if (v23)
  {
    if (v9 < 4)
    {
      v24 = ((v23 + ~(-1 << (8 * v9))) >> (8 * v9)) + a3;
    }

    else
    {
      v24 = a3 + 1;
    }
  }

  v53 = v24;
  v54 = v18;
  v25 = a3;
  if (v24 >= 2)
  {
    if (v24 >= 0x100)
    {
      v26 = 0x400000000;
      if (v24 < 0x10000)
      {
        v26 = 0x200000000;
      }
    }

    else
    {
      v26 = 0x100000000;
    }
  }

  else
  {
    v26 = 0;
  }

  v51 = v26;
  v27 = HIDWORD(v26);
  v56 = (HIDWORD(v26) + v9);
  MutableVWTableForInit = getMutableVWTableForInit(a1, a2);
  v28 = v25;
  v29 = v25;
  v30 = 8 * v25 + 56;
  LOWORD(v57) = 26;
  v31 = swift::MetadataAllocator::Allocate(&v57, (v30 + v8 + 15) & 0xFFFFFFFFFFFFFFF8, 1uLL);
  v32 = v31;
  *(v31 + 1) = v30 + v8 - 16;
  *(v31 + 2) = 0x1600000000000000;
  v50 = v27;
  *(v31 + 3) = v27;
  *(v31 + 4) = v29;
  *(v31 + 5) = v8;
  *(v31 + 6) = v56;
  v61 = 0;
  *&v57 = v31;
  *(&v57 + 1) = v30;
  if (v28)
  {
    v33 = 0;
    v34 = (v31 + 56);
    do
    {
      v35 = v30;
      v36 = *v4++;
      *v34++ = v33;
      v59 = 0;
      v60 = 0;
      _swift_addRefCountStringForMetatype(&v57, &v61, v36, &v59, &v60);
      *(v57 + *(&v57 + 1)) = 0;
      v30 = *(&v57 + 1) + 8;
      *(&v57 + 1) = v30;
      v33 = v33 - v35 + v30;
      --v29;
    }

    while (v29);
    v37 = v57;
  }

  else
  {
    v37 = v31;
  }

  *&v37[v30] = 0;
  *(&v57 + 1) = 0;
  *v57 = v61 & 0x7FFFFFFFFFFFFFFFLL;
  if (*v55 <= 0x7FFuLL)
  {
    v38 = *v55;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0x1FFFFFFFFFFFFFFDLL;
  if (v38)
  {
    v40 = v53;
    v41 = v56;
    v42 = MutableVWTableForInit;
    if (v38 != 515 && v38 != 773)
    {
      v39 = 0x1FFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    v40 = v53;
    v41 = v56;
    v42 = MutableVWTableForInit;
  }

  v55[v39] = v32 | 1;
  v43 = (1 << (8 * v50)) - v40;
  if (v43 >= 0x7FFFFFFF)
  {
    v43 = 0x7FFFFFFF;
  }

  if (v51 == 0x400000000)
  {
    v43 = 0x7FFFFFFF;
  }

  v44 = (v41 + v7) & ~v7;
  if (v44 <= 1)
  {
    v44 = 1;
  }

  v46 = v7 < 8 && v41 < 0x19;
  if ((v12 & v46) != 0)
  {
    v47 = 0;
  }

  else
  {
    v47 = 0x20000;
  }

  if (v12)
  {
    v48 = 0x200000;
  }

  else
  {
    v48 = 3145728;
  }

  *&v57 = v41;
  *(&v57 + 1) = v44;
  LODWORD(v58) = v48 | v54 | v7 & 0xFFCCFFFF | v47;
  HIDWORD(v58) = v43;
  swift::installCommonValueWitnesses(&v57, v42);
  *(v42 + 6) = swift_getMultiPayloadEnumTagSinglePayload;
  *(v42 + 7) = swift_storeMultiPayloadEnumTagSinglePayload;
  *(v42 + 4) = v57;
  result = v58;
  *(v42 + 10) = v58;
  return result;
}

double swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringSlow(swift *a1, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  Override_cvw_initEnumMetadataMultiPayloadWithLayoutString = swift::getOverride_cvw_initEnumMetadataMultiPayloadWithLayoutString(a1);
  if (Override_cvw_initEnumMetadataMultiPayloadWithLayoutString)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override = Override_cvw_initEnumMetadataMultiPayloadWithLayoutString;

    (Override_cvw_initEnumMetadataMultiPayloadWithLayoutString)(a1, a2, a3, a4, swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl);
  }

  else
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString::Override = 1;

    return swift_cvw_initEnumMetadataMultiPayloadWithLayoutStringImpl(a1, a2, a3, a4);
  }

  return result;
}

void swift::runtime::environment::initialize(swift::runtime::environment *this, void *a2)
{
  v2 = *MEMORY[0x1E69E97E8];
  v3 = **MEMORY[0x1E69E97E8];
  if (!v3)
  {
    return;
  }

  v4 = 0;
  do
  {
    if (strncmp(v3, "SWIFT_", 6uLL))
    {
      goto LABEL_5;
    }

    v9 = strncmp(v3, "SWIFT_DEBUG_HELP=", 0x11uLL);
    v12 = v9 == 0;
    if (!v9)
    {
      v13 = v3[17];
      v4 = 1;
      v14 = v13 - 48;
      if ((v13 - 48) > 0x3E)
      {
        goto LABEL_13;
      }

      if (((1 << v14) & 0x4040000040400001) != 0)
      {
        v4 = 0;
        goto LABEL_15;
      }

      if (((1 << v14) & 0x21000000002) == 0)
      {
LABEL_13:
        if (v13 != 116 && v13 != 121)
        {
          swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v10, v11, "SWIFT_DEBUG_HELP", v3 + 17, "false");
          v4 = 0;
          v3 = *v2;
        }
      }
    }

LABEL_15:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION=", 0x31uLL))
    {
      goto LABEL_24;
    }

    v17 = v3[49];
    v18 = 1;
    v19 = v17 - 48;
    if ((v17 - 48) > 0x3E)
    {
LABEL_20:
      if (v17 != 116 && v17 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v15, v16, "SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION", v3 + 49, "false");
        v18 = 0;
        v3 = *v2;
      }

      goto LABEL_23;
    }

    if (((1 << v19) & 0x4040000040400001) != 0)
    {
      v18 = 0;
    }

    else if (((1 << v19) & 0x21000000002) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION_variable = v18;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION_isSet_variable = 1;
LABEL_24:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING=", 0x2EuLL))
    {
      goto LABEL_33;
    }

    v22 = v3[46];
    v23 = 1;
    v24 = v22 - 48;
    if ((v22 - 48) > 0x3E)
    {
LABEL_29:
      if (v22 != 116 && v22 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v20, v21, "SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING", v3 + 46, "false");
        v23 = 0;
        v3 = *v2;
      }

      goto LABEL_32;
    }

    if (((1 << v24) & 0x4040000040400001) != 0)
    {
      v23 = 0;
    }

    else if (((1 << v24) & 0x21000000002) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING_variable = v23;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING_isSet_variable = 1;
LABEL_33:
    if (!strncmp(v3, "SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT=", 0x25uLL))
    {
      v25 = v3 + 37;
      __endptr = 0;
      v26 = strtol(v25, &__endptr, 0);
      if (*__endptr)
      {
        v29 = 2;
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %u.\n", v27, v28, "SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT", v25, 2);
      }

      else if ((v26 & 0x8000000000000000) != 0)
      {
        swift::warning(0, "Warning: %s=%s out of bounds, clamping to 0.\n", v27, v28, "SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT", v25);
        v29 = 0;
      }

      else if (v26 < 0x100)
      {
        v29 = v26;
      }

      else
      {
        v29 = -1;
        swift::warning(0, "Warning: %s=%s out of bounds, clamping to %d.\n", v27, v28, "SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT", v25, 255);
      }

      swift::runtime::environment::SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT_variable = v29;
      v12 = 1;
      swift::runtime::environment::SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT_isSet_variable = 1;
      v3 = *v2;
    }

    if (!strncmp(v3, "SWIFT_DETERMINISTIC_HASHING=", 0x1CuLL))
    {
      v32 = v3[28];
      v33 = 1;
      v34 = v32 - 48;
      if ((v32 - 48) <= 0x3E)
      {
        if (((1 << v34) & 0x4040000040400001) != 0)
        {
          v33 = 0;
LABEL_48:
          swift::runtime::environment::SWIFT_DETERMINISTIC_HASHING_variable = v33;
          v12 = 1;
          swift::runtime::environment::SWIFT_DETERMINISTIC_HASHING_isSet_variable = 1;
          goto LABEL_49;
        }

        if (((1 << v34) & 0x21000000002) != 0)
        {
          goto LABEL_48;
        }
      }

      if (v32 != 116 && v32 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v30, v31, "SWIFT_DETERMINISTIC_HASHING", v3 + 28, "false");
        v33 = 0;
        v3 = *v2;
      }

      goto LABEL_48;
    }

LABEL_49:
    if (strncmp(v3, "SWIFT_ENABLE_MANGLED_NAME_VERIFICATION=", 0x27uLL))
    {
      goto LABEL_58;
    }

    v37 = v3[39];
    v38 = 1;
    v39 = v37 - 48;
    if ((v37 - 48) > 0x3E)
    {
LABEL_54:
      if (v37 != 116 && v37 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v35, v36, "SWIFT_ENABLE_MANGLED_NAME_VERIFICATION", v3 + 39, "false");
        v38 = 0;
        v3 = *v2;
      }

      goto LABEL_57;
    }

    if (((1 << v39) & 0x4040000040400001) != 0)
    {
      v38 = 0;
    }

    else if (((1 << v39) & 0x21000000002) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    swift::runtime::environment::SWIFT_ENABLE_MANGLED_NAME_VERIFICATION_variable = v38;
    v12 = 1;
    swift::runtime::environment::SWIFT_ENABLE_MANGLED_NAME_VERIFICATION_isSet_variable = 1;
LABEL_58:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE=", 0x23uLL))
    {
      goto LABEL_67;
    }

    v42 = v3[35];
    v43 = 1;
    v44 = v42 - 48;
    if ((v42 - 48) > 0x3E)
    {
LABEL_63:
      if (v42 != 116 && v42 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v40, v41, "SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE", v3 + 35, "false");
        v43 = 0;
        v3 = *v2;
      }

      goto LABEL_66;
    }

    if (((1 << v44) & 0x4040000040400001) != 0)
    {
      v43 = 0;
    }

    else if (((1 << v44) & 0x21000000002) == 0)
    {
      goto LABEL_63;
    }

LABEL_66:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable = v43;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_isSet_variable = 1;
LABEL_67:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_COW_CHECKS=", 0x1EuLL))
    {
      goto LABEL_76;
    }

    v47 = v3[30];
    v48 = 1;
    v49 = v47 - 48;
    if ((v47 - 48) > 0x3E)
    {
LABEL_72:
      if (v47 != 116 && v47 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v45, v46, "SWIFT_DEBUG_ENABLE_COW_CHECKS", v3 + 30, "false");
        v48 = 0;
        v3 = *v2;
      }

      goto LABEL_75;
    }

    if (((1 << v49) & 0x4040000040400001) != 0)
    {
      v48 = 0;
    }

    else if (((1 << v49) & 0x21000000002) == 0)
    {
      goto LABEL_72;
    }

LABEL_75:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_COW_CHECKS_variable = v48;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_COW_CHECKS_isSet_variable = 1;
LABEL_76:
    if (strncmp(v3, "SWIFT_DEBUG_VALIDATE_UNCHECKED_CONTINUATIONS=", 0x2DuLL))
    {
      goto LABEL_85;
    }

    v52 = v3[45];
    v53 = 1;
    v54 = v52 - 48;
    if ((v52 - 48) > 0x3E)
    {
LABEL_81:
      if (v52 != 116 && v52 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v50, v51, "SWIFT_DEBUG_VALIDATE_UNCHECKED_CONTINUATIONS", v3 + 45, "false");
        v53 = 0;
        v3 = *v2;
      }

      goto LABEL_84;
    }

    if (((1 << v54) & 0x4040000040400001) != 0)
    {
      v53 = 0;
    }

    else if (((1 << v54) & 0x21000000002) == 0)
    {
      goto LABEL_81;
    }

LABEL_84:
    swift::runtime::environment::SWIFT_DEBUG_VALIDATE_UNCHECKED_CONTINUATIONS_variable = v53;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_VALIDATE_UNCHECKED_CONTINUATIONS_isSet_variable = 1;
LABEL_85:
    if (strncmp(v3, "SWIFT_DEBUG_VALIDATE_SHARED_CACHE_PROTOCOL_CONFORMANCES=", 0x38uLL))
    {
      goto LABEL_94;
    }

    v57 = v3[56];
    v58 = 1;
    v59 = v57 - 48;
    if ((v57 - 48) > 0x3E)
    {
LABEL_90:
      if (v57 != 116 && v57 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v55, v56, "SWIFT_DEBUG_VALIDATE_SHARED_CACHE_PROTOCOL_CONFORMANCES", v3 + 56, "false");
        v58 = 0;
        v3 = *v2;
      }

      goto LABEL_93;
    }

    if (((1 << v59) & 0x4040000040400001) != 0)
    {
      v58 = 0;
    }

    else if (((1 << v59) & 0x21000000002) == 0)
    {
      goto LABEL_90;
    }

LABEL_93:
    swift::runtime::environment::SWIFT_DEBUG_VALIDATE_SHARED_CACHE_PROTOCOL_CONFORMANCES_variable = v58;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_VALIDATE_SHARED_CACHE_PROTOCOL_CONFORMANCES_isSet_variable = 1;
LABEL_94:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_SHARED_CACHE_PROTOCOL_CONFORMANCES=", 0x36uLL))
    {
      goto LABEL_103;
    }

    v62 = v3[54];
    v63 = 1;
    v64 = v62 - 48;
    if ((v62 - 48) > 0x3E)
    {
LABEL_99:
      if (v62 != 116 && v62 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v60, v61, "SWIFT_DEBUG_ENABLE_SHARED_CACHE_PROTOCOL_CONFORMANCES", v3 + 54, "true");
        v3 = *v2;
        v63 = 1;
      }

      goto LABEL_102;
    }

    if (((1 << v64) & 0x4040000040400001) != 0)
    {
      v63 = 0;
    }

    else if (((1 << v64) & 0x21000000002) == 0)
    {
      goto LABEL_99;
    }

LABEL_102:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_SHARED_CACHE_PROTOCOL_CONFORMANCES_variable = v63;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_SHARED_CACHE_PROTOCOL_CONFORMANCES_isSet_variable = 1;
LABEL_103:
    if (strncmp(v3, "SWIFT_DEBUG_CONCURRENCY_ENABLE_COOPERATIVE_QUEUES=", 0x32uLL))
    {
      goto LABEL_112;
    }

    v67 = v3[50];
    v68 = 1;
    v69 = v67 - 48;
    if ((v67 - 48) > 0x3E)
    {
LABEL_108:
      if (v67 != 116 && v67 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v65, v66, "SWIFT_DEBUG_CONCURRENCY_ENABLE_COOPERATIVE_QUEUES", v3 + 50, "true");
        v3 = *v2;
        v68 = 1;
      }

      goto LABEL_111;
    }

    if (((1 << v69) & 0x4040000040400001) != 0)
    {
      v68 = 0;
    }

    else if (((1 << v69) & 0x21000000002) == 0)
    {
      goto LABEL_108;
    }

LABEL_111:
    swift::runtime::environment::SWIFT_DEBUG_CONCURRENCY_ENABLE_COOPERATIVE_QUEUES_variable = v68;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_CONCURRENCY_ENABLE_COOPERATIVE_QUEUES_isSet_variable = 1;
LABEL_112:
    if (strncmp(v3, "SWIFT_BINARY_COMPATIBILITY_VERSION=", 0x23uLL))
    {
      goto LABEL_117;
    }

    v70 = v3 + 35;
    __endptr = 0;
    v71 = strtoll(v70, &__endptr, 0);
    if (*__endptr)
    {
      swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %u.\n", v72, v73, "SWIFT_BINARY_COMPATIBILITY_VERSION", v70, 0);
    }

    else
    {
      if ((v71 & 0x8000000000000000) == 0)
      {
        if (HIDWORD(v71))
        {
          v74 = -1;
          swift::warning(0, "Warning: %s=%s out of bounds, clamping to %u.\n", v72, v73, "SWIFT_BINARY_COMPATIBILITY_VERSION", v70, 0xFFFFFFFFLL);
        }

        else
        {
          v74 = v71;
        }

        goto LABEL_116;
      }

      swift::warning(0, "Warning: %s=%s out of bounds, clamping to 0.\n", v72, v73, "SWIFT_BINARY_COMPATIBILITY_VERSION", v70, v175);
    }

    v74 = 0;
LABEL_116:
    swift::runtime::environment::SWIFT_BINARY_COMPATIBILITY_VERSION_variable = v74;
    v12 = 1;
    swift::runtime::environment::SWIFT_BINARY_COMPATIBILITY_VERSION_isSet_variable = 1;
    v3 = *v2;
LABEL_117:
    if (strncmp(v3, "SWIFT_DEBUG_FAILED_TYPE_LOOKUP=", 0x1FuLL))
    {
      goto LABEL_129;
    }

    v77 = v3[31];
    v78 = 1;
    v79 = v77 - 48;
    if ((v77 - 48) > 0x3E)
    {
LABEL_125:
      if (v77 != 116 && v77 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v75, v76, "SWIFT_DEBUG_FAILED_TYPE_LOOKUP", v3 + 31, "false");
        v78 = 0;
        v3 = *v2;
      }

      goto LABEL_128;
    }

    if (((1 << v79) & 0x4040000040400001) != 0)
    {
      v78 = 0;
    }

    else if (((1 << v79) & 0x21000000002) == 0)
    {
      goto LABEL_125;
    }

LABEL_128:
    swift::runtime::environment::SWIFT_DEBUG_FAILED_TYPE_LOOKUP_variable = v78;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_FAILED_TYPE_LOOKUP_isSet_variable = 1;
LABEL_129:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_METADATA=", 0x2FuLL))
    {
      goto LABEL_138;
    }

    v82 = v3[47];
    v83 = 1;
    v84 = v82 - 48;
    if ((v82 - 48) > 0x3E)
    {
LABEL_134:
      if (v82 != 116 && v82 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v80, v81, "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_METADATA", v3 + 47, "true");
        v3 = *v2;
        v83 = 1;
      }

      goto LABEL_137;
    }

    if (((1 << v84) & 0x4040000040400001) != 0)
    {
      v83 = 0;
    }

    else if (((1 << v84) & 0x21000000002) == 0)
    {
      goto LABEL_134;
    }

LABEL_137:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_METADATA_variable = v83;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_METADATA_isSet_variable = 1;
LABEL_138:
    if (strncmp(v3, "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP=", 0x38uLL))
    {
      goto LABEL_147;
    }

    v87 = v3[56];
    v88 = 1;
    v89 = v87 - 48;
    if ((v87 - 48) > 0x3E)
    {
LABEL_143:
      if (v87 != 116 && v87 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v85, v86, "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP", v3 + 56, "true");
        v3 = *v2;
        v88 = 1;
      }

      goto LABEL_146;
    }

    if (((1 << v89) & 0x4040000040400001) != 0)
    {
      v88 = 0;
    }

    else if (((1 << v89) & 0x21000000002) == 0)
    {
      goto LABEL_143;
    }

LABEL_146:
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_variable = v88;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_isSet_variable = 1;
LABEL_147:
    if (strncmp(v3, "SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP=", 0x3AuLL))
    {
      goto LABEL_156;
    }

    v92 = v3[58];
    v93 = 1;
    v94 = v92 - 48;
    if ((v92 - 48) > 0x3E)
    {
LABEL_152:
      if (v92 != 116 && v92 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v90, v91, "SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP", v3 + 58, "false");
        v93 = 0;
        v3 = *v2;
      }

      goto LABEL_155;
    }

    if (((1 << v94) & 0x4040000040400001) != 0)
    {
      v93 = 0;
    }

    else if (((1 << v94) & 0x21000000002) == 0)
    {
      goto LABEL_152;
    }

LABEL_155:
    swift::runtime::environment::SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_variable = v93;
    v12 = 1;
    swift::runtime::environment::SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_isSet_variable = 1;
LABEL_156:
    if (!strncmp(v3, "SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH=", 0x24uLL))
    {
      v96 = v3[36];
      v95 = v3 + 36;
      if (v96)
      {
        v97 = v95;
      }

      else
      {
        v97 = "";
      }

      swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH_variable = strdup(v97);
      v12 = 1;
      swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH_isSet_variable = 1;
      v3 = *v2;
    }

    if (!strncmp(v3, "SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES=", 0x32uLL))
    {
      v99 = v3[50];
      v98 = v3 + 50;
      if (v99)
      {
        v100 = v98;
      }

      else
      {
        v100 = "";
      }

      swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES_variable = strdup(v100);
      v12 = 1;
      swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES_isSet_variable = 1;
      v3 = *v2;
    }

    if (!strncmp(v3, "SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES=", 0x31uLL))
    {
      v102 = v3[49];
      v101 = v3 + 49;
      if (v102)
      {
        v103 = v101;
      }

      else
      {
        v103 = "";
      }

      swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES_variable = strdup(v103);
      v12 = 1;
      swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES_isSet_variable = 1;
      v3 = *v2;
    }

    if (!strncmp(v3, "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_LOGGING=", 0x2EuLL))
    {
      v106 = v3[46];
      v107 = 1;
      v108 = v106 - 48;
      if ((v106 - 48) <= 0x3E)
      {
        if (((1 << v108) & 0x4040000040400001) != 0)
        {
          v107 = 0;
LABEL_179:
          swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_LOGGING_variable = v107;
          v12 = 1;
          swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_LOGGING_isSet_variable = 1;
          goto LABEL_180;
        }

        if (((1 << v108) & 0x21000000002) != 0)
        {
          goto LABEL_179;
        }
      }

      if (v106 != 116 && v106 != 121)
      {
        swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v104, v105, "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_LOGGING", v3 + 46, "false");
        v107 = 0;
        v3 = *v2;
      }

      goto LABEL_179;
    }

LABEL_180:
    if (!strncmp(v3, "SWIFT_ROOT=", 0xBuLL))
    {
      v110 = v3[11];
      v109 = v3 + 11;
      if (v110)
      {
        v111 = v109;
      }

      else
      {
        v111 = "";
      }

      swift::runtime::environment::SWIFT_ROOT_variable = strdup(v111);
      v12 = 1;
      swift::runtime::environment::SWIFT_ROOT_isSet_variable = 1;
      v3 = *v2;
    }

    if (!strncmp(v3, "SWIFT_BACKTRACE=", 0x10uLL))
    {
      v113 = v3[16];
      v112 = v3 + 16;
      if (v113)
      {
        v114 = v112;
      }

      else
      {
        v114 = "";
      }

      swift::runtime::environment::SWIFT_BACKTRACE_variable = strdup(v114);
      v12 = 1;
      swift::runtime::environment::SWIFT_BACKTRACE_isSet_variable = 1;
      v3 = *v2;
    }

    if (!strncmp(v3, "SWIFT_IS_CURRENT_EXECUTOR_LEGACY_MODE_OVERRIDE=", 0x2FuLL))
    {
      v119 = v3[47];
      v118 = v3 + 47;
      if (v119)
      {
        v120 = v118;
      }

      else
      {
        v120 = "";
      }

      swift::runtime::environment::SWIFT_IS_CURRENT_EXECUTOR_LEGACY_MODE_OVERRIDE_variable = strdup(v120);
      swift::runtime::environment::SWIFT_IS_CURRENT_EXECUTOR_LEGACY_MODE_OVERRIDE_isSet_variable = 1;
      v3 = *v2;
      if (!strncmp(*v2, "SWIFT_DUMP_ACCESSIBLE_FUNCTIONS=", 0x20uLL))
      {
LABEL_201:
        v123 = v3[32];
        v122 = v3 + 32;
        v121 = v123;
        v5 = 1;
        v124 = v123 - 48;
        if ((v123 - 48) > 0x3E)
        {
LABEL_204:
          if (v121 == 116 || v121 == 121)
          {
            goto LABEL_4;
          }

          swift::warning(0, "Warning: cannot parse value %s=%s, defaulting to %s.\n", v7, v8, "SWIFT_DUMP_ACCESSIBLE_FUNCTIONS", v122, "false");
        }

        else if (((1 << v124) & 0x4040000040400001) == 0)
        {
          if (((1 << v124) & 0x21000000002) == 0)
          {
            goto LABEL_204;
          }

LABEL_4:
          swift::runtime::environment::SWIFT_DUMP_ACCESSIBLE_FUNCTIONS_variable = v5;
          swift::runtime::environment::SWIFT_DUMP_ACCESSIBLE_FUNCTIONS_isSet_variable = 1;
          goto LABEL_5;
        }

        v5 = 0;
        goto LABEL_4;
      }
    }

    else
    {
      if (!strncmp(v3, "SWIFT_DUMP_ACCESSIBLE_FUNCTIONS=", 0x20uLL))
      {
        goto LABEL_201;
      }

      if (!v12 && !strncmp(v3, "SWIFT_DEBUG_", 0xCuLL))
      {
        v115 = strchr(v3, 61);
        if (!v115)
        {
          v115 = &v3[strlen(v3)];
        }

        swift::warning(0, "Warning: unknown environment variable %.*s\n", v116, v117, v115 - v3, v3);
      }
    }

LABEL_5:
    v6 = v2[1];
    ++v2;
    v3 = v6;
  }

  while (v6);
  if (v4)
  {
    swift::warning(0, "Swift runtime debugging:\n", v7, v8);
    swift::warning(0, "%7s %s [default: %s] - %s\n", v125, v126, "BOOL", "SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION", "false", "Enable additional metadata allocation tracking for swift-inspect to use.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v127, v128, "BOOL", "SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING", "false", "Enable logging of backtraces for each metadata allocation. Requires SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION to be enabled.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v129, v130, "uint8_t", "SWIFT_DEBUG_IMPLICIT_OBJC_ENTRYPOINT", "2", "Print warnings when using implicit @objc entrypoints. Set to desired reporting level, 0-3.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v131, v132, "BOOL", "SWIFT_DETERMINISTIC_HASHING", "false", "Disable randomized hash seeding.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v133, v134, "BOOL", "SWIFT_ENABLE_MANGLED_NAME_VERIFICATION", "false", "Enable verification that metadata can roundtrip through a mangled name each time metadata is instantiated.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v135, v136, "BOOL", "SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE", "false", "Scribble on runtime allocations such as metadata allocations.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v137, v138, "BOOL", "SWIFT_DEBUG_ENABLE_COW_CHECKS", "false", "Enable internal checks for copy-on-write operations.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v139, v140, "BOOL", "SWIFT_DEBUG_VALIDATE_UNCHECKED_CONTINUATIONS", "false", "Check for and error on double-calls of unchecked continuations.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v141, v142, "BOOL", "SWIFT_DEBUG_VALIDATE_SHARED_CACHE_PROTOCOL_CONFORMANCES", "false", "Validate shared cache protocol conformance results against the lists of conformances in the shared cache images.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v143, v144, "BOOL", "SWIFT_DEBUG_ENABLE_SHARED_CACHE_PROTOCOL_CONFORMANCES", "true", "Enable querying precomputed protocol conformances in the shared cache.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v145, v146, "BOOL", "SWIFT_DEBUG_CONCURRENCY_ENABLE_COOPERATIVE_QUEUES", "true", "Enable dispatch cooperative queues in the global executor.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v147, v148, "uint32_t", "SWIFT_BINARY_COMPATIBILITY_VERSION", "0", "Set the binary compatibility level of the Swift Standard Library");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v149, v150, "BOOL", "SWIFT_DEBUG_FAILED_TYPE_LOOKUP", "false", "Enable warnings when we fail to look up a type by name.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v151, v152, "BOOL", "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_METADATA", "true", "Enable use of metadata in prespecializations library.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v153, v154, "BOOL", "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP", "true", "Enable use of descriptor map in prespecializations library.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v155, v156, "BOOL", "SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP", "false", "Validate results from the prespecializations map descriptor map by comparing to a full scan.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v157, v158, "string", "SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH", "", "A path to a prespecializations library to use at runtime. In order to be used, this library must be loaded into the process by other means (such as DYLD_INSERT_LIBRARIES) before Swift tries to use it.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v159, v160, "string", "SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES", "", "A colon-separated list of process names where the prespecializations library will be forcibly disabled.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v161, v162, "string", "SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES", "", "A colon-separated list of process names where the prespecializations library will be forcibly enabled. This overrides the disabled processes list in the prespecializations library, as well as the list in SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v163, v164, "BOOL", "SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_LOGGING", "false", "Enable debug logging of prespecializations library use.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v165, v166, "string", "SWIFT_ROOT", "", "Overrides the root directory of the Swift installation. This is used to locate auxiliary files relative to the runtime itself.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v167, v168, "string", "SWIFT_BACKTRACE", "", "A comma-separated list of key=value pairs that controls the crash catching and backtracing support in the runtime. See docs/Backtracing.rst in the Swift repository for details.");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v169, v170, "string", "SWIFT_IS_CURRENT_EXECUTOR_LEGACY_MODE_OVERRIDE", "", "Allows for suppressing 'is current executor' equality check crashes. As since Swift 6.0 checking for current executor equality, may crash and will never return 'false' because we are calling into library implemented SerialExecutor.checkIsolation which should crash if the isolation is not the expected one. Some old code may rely on the non-crashing behavior. This flag enables temporarily restoring the legacy 'nocrash' behavior until adopting code has been adjusted. It is possible to force the use of Swift 6.2's isIsolatingCurrentContext instead of checkIsolated by passing  the 'isIsolatingCurrentContext' configuration value. Legal values are:  'legacy' (Legacy behavior),  'swift6' (Swift 6.0-6.1 behavior) 'isIsolatingCurrentContext' (Swift 6.2 behavior)");
    swift::warning(0, "%7s %s [default: %s] - %s\n", v171, v172, "BOOL", "SWIFT_DUMP_ACCESSIBLE_FUNCTIONS", "false", "Dump a listing of all 'AccessibleFunctionRecord's upon first access. These are used to obtain function pointers from accessible function record names, e.g. by the Distributed runtime to invoke distributed functions.");

    swift::warning(0, "SWIFT_DEBUG_HELP=YES - Print this help.", v173, v174);
  }
}

uint64_t swift_COWChecksEnabled()
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift_COWChecksEnabled_cold_1();
  }

  return swift::runtime::environment::SWIFT_DEBUG_ENABLE_COW_CHECKS_variable;
}

uint64_t concurrencyEnableCooperativeQueues()
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift_COWChecksEnabled_cold_1();
  }

  return swift::runtime::environment::SWIFT_DEBUG_CONCURRENCY_ENABLE_COOPERATIVE_QUEUES_variable;
}

uint64_t concurrencyValidateUncheckedContinuations()
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift_COWChecksEnabled_cold_1();
  }

  return swift::runtime::environment::SWIFT_DEBUG_VALIDATE_UNCHECKED_CONTINUATIONS_variable;
}

uint64_t concurrencyIsCurrentExecutorLegacyModeOverride()
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    swift_COWChecksEnabled_cold_1();
  }

  return swift::runtime::environment::SWIFT_IS_CURRENT_EXECUTOR_LEGACY_MODE_OVERRIDE_variable;
}

uint64_t swift_willThrow()
{
  explicit = atomic_load_explicit(&_swift_willThrow, memory_order_acquire);
  if (explicit)
  {
    return explicit(v0);
  }

  return result;
}

void swift_willThrowTypedImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  explicit = atomic_load_explicit(&_swift_willThrowTypedImpl, memory_order_acquire);
  if (explicit)
  {

    explicit();
  }

  else
  {
    v4 = atomic_load_explicit(&_swift_willThrow, memory_order_acquire);
    if (v4)
    {
      v5 = swift_allocError(a2, a3, a1, 0);
      v4();

      v5;
    }
  }
}

void swift::dumpStackTraceEntry(swift *this, swift::SymbolInfo *a2, void *a3)
{
  v3 = a3;
  v5 = this;
  v30[4] = *MEMORY[0x1E69E9840];
  swift::SymbolInfo::lookup(a2, v20);
  if (v21)
  {
    Filename = swift::SymbolInfo::getFilename(v20);
    v7 = Filename;
    if (Filename)
    {
      Filename = strlen(Filename);
    }

    v8 = Filename;
    do
    {
      if (!v8)
      {
        break;
      }

      v9 = (v8--)[(v7 - 1)];
    }

    while (v9 != 47);
    memset(&__p, 0, sizeof(__p));
    if (v21)
    {
      if (swift::SymbolInfo::getSymbolName(v20))
      {
        swift::SymbolInfo::getSymbolAddress(v20);
        status = 0;
        SymbolName = swift::SymbolInfo::getSymbolName(v20);
        v11 = __cxa_demangle(SymbolName, 0, 0, &status);
        if (status)
        {
          v12 = swift::SymbolInfo::getSymbolName(v20);
          v13 = swift::SymbolInfo::getSymbolName(v20);
          v14 = strlen(v13);
          v23[9] = 1;
          v25 = 1;
          v26 = 0;
          v27 = 1;
          v28 = 0;
          v29 = 0;
          v30[0] = &unk_1EEEAA698;
          v30[1] = swift::Demangle::__runtime::genericParameterName;
          v30[3] = v30;
          *v23 = 257;
          memset(&v23[2], 0, 7);
          v24 = 0x101000001010101;
          swift::Demangle::__runtime::demangleSymbolAsString(v12, v14, v23, v15);
        }

        v16 = v11;
        std::string::append(&__p, v11);
        free(v16);
      }

      else
      {
        swift::SymbolInfo::getBaseAddress(v20);
        MEMORY[0x1865C91F0](&__p, "<unavailable>");
      }

      v17 = *MEMORY[0x1E69E9848];
      if (v3)
      {
      }

      else
      {
        fprintf(v17, "%-4u %-34s 0x%0.16lx %s + %td\n");
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      swift::withCurrentBacktrace(v18);
    }
  }

  else
  {
    fprintf(*MEMORY[0x1E69E9848], "%-4u %-34s 0x%0.16tx\n", v5, "<unknown>", a2);
  }
}

uint64_t swift::withCurrentBacktrace(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (v2)
  {
    if (v2 == a1)
    {
      v7 = v6;
      (*(*v2 + 24))(v2, v6);
    }

    else
    {
      v7 = (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v7 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v5 = v8;
  v4 = backtrace(v8, 128);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v7 + 48))(v7, &v5, &v4);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return 1;
}

void *swift::printCurrentBacktrace(swift *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = this;
  v6[0] = &unk_1EEEAA828;
  v6[1] = &v3;
  v7 = v6;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v1 = backtrace(v8, 128);
  v5 = v8;
  v4 = v1;
  if (!v7)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v7 + 48))(v7, &v5, &v4);
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void swift_reportError(int a1, char *a2)
{
  v3 = MEMORY[0x1E69E9848];
  fputs(a2, *MEMORY[0x1E69E9848]);
  fflush(*v3);
  asl_log(0, 0, 3, "%s", a2);
  v8 = 0;
  v5 = qword_1EA79DC90[0];
  while (1)
  {
    if (v5)
    {
      swift_asprintf(&v8, v4, v5, a2);
      v6 = v8;
    }

    else
    {
      v6 = strdup(a2);
      v8 = v6;
    }

    v7 = v5;
    atomic_compare_exchange_strong_explicit(qword_1EA79DC90, &v7, v6, memory_order_release, memory_order_relaxed);
    if (v7 == v5)
    {
      break;
    }

    v5 = v7;
    if (v8)
    {
      free(v8);
      v8 = 0;
    }
  }
}

void swift::fatalErrorv(swift *this, char *__format, va_list a3, char *a4)
{
  LODWORD(v5) = vsnprintf(0, 0, __format, a3);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = (v5 + 1);
    v5 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v5)
    {
      v7 = v5;
      v8 = vsnprintf(v5, v6, __format, a3);
      if ((v8 & 0x80000000) == 0)
      {
        swift_reportError(v8, v7);
        abort();
      }

      free(v7);
    }
  }

  swift_reportError(v5, 0);
  abort();
}

void swift::warningv(swift *this, char *__format, va_list a3, char *a4)
{
  v5 = this;
  v6 = vsnprintf(0, 0, __format, a3);
  if (v6 < 0)
  {
    goto LABEL_5;
  }

  v7 = (v6 + 1);
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v9 = v8;
  if (v8 && vsnprintf(v8, v7, __format, a3) < 0)
  {
    free(v9);
LABEL_5:
    v9 = 0;
  }

  v10 = MEMORY[0x1E69E9848];
  fputs(v9, *MEMORY[0x1E69E9848]);
  fflush(*v10);
  asl_log(0, 0, 3, "%s", v9);
  if (v5)
  {
    fputs("Current stack trace:\n", *v10);
    swift::printCurrentBacktrace(1);
  }

  free(v9);
}

void swift::swift_abortRetainUnowned(swift *this, const void *a2, const char *a3, char *a4)
{
  if (!this)
  {
    swift::fatalError(0, "Fatal error: Attempted to read an unowned reference but the object was already deallocated\n", a3, a4);
  }

  swift::fatalError(this, "Fatal error: Attempted to read an unowned reference but object %p was already deallocated\n", a3, a4, this);
}

void swift_asprintf(char **a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "%s%s", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "%s%s", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, ".%ld", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, ".%ld", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

{
  va_start(va, a2);
  v3 = vsnprintf(0, 0, "<%s %p depth = %u>", va);
  *a1 = 0;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (vsnprintf(v5, v4, "<%s %p depth = %u>", va) < 0)
      {
        free(v6);
      }

      else
      {
        *a1 = v6;
      }
    }
  }
}

uint64_t std::__function::__func<swift::printCurrentBacktrace(unsigned int)::$_0,std::allocator<swift::printCurrentBacktrace(unsigned int)::$_0>,void ()(void **,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAA828;
  a2[1] = v2;
  return result;
}

void std::__function::__func<swift::printCurrentBacktrace(unsigned int)::$_0,std::allocator<swift::printCurrentBacktrace(unsigned int)::$_0>,void ()(void **,int)>::operator()(uint64_t a1, void *a2, int *a3)
{
  v3 = *a3;
  v4 = **(a1 + 8);
  if (v4 < *a3)
  {
    v6 = (*a2 + 8 * v4);
    do
    {
      v7 = *v6++;
      swift::dumpStackTraceEntry((v4 - **(a1 + 8)), v7, 0);
      ++v4;
    }

    while (v3 != v4);
  }
}

uint64_t _swift_stdlib_getDefaultErrorCode(uint64_t a1, void *a2)
{
  if (*a2 == 513)
  {
    return (*(*(a2 - 1) + 88))(a1, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t swift::runtime::AccessSet::insert(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1)
  {
    v6 = "modification";
    v7 = *a1;
    do
    {
      v8 = v7[2];
      if (*v7 == a4)
      {
        if (a5)
        {
          v14 = a5 & 1;
          v15 = a4;
          if ((v8 & 1) == 0)
          {
            v6 = "read";
          }

LABEL_13:
          v22 = v7[1];
          snprintf(__str, 0x64uLL, "Simultaneous accesses to 0x%lx, but modification requires exclusive access", v15);
          v10 = MEMORY[0x1E69E9848];
          fprintf(*MEMORY[0x1E69E9848], "%s.\n", __str);
          snprintf(v24, 0x32uLL, "Previous access (a %s) started at", v6);
          fprintf(*v10, "%s ", v24);
          if (v22)
          {
            swift::dumpStackTraceEntry(0, v22, 1);
            fprintf(*v10, " (0x%lx).\n", v22);
          }

          else
          {
            fwrite("<unknown>.\n", 0xBuLL, 1uLL, *v10);
          }

          v11 = "modification";
          if (!v14)
          {
            v11 = "read";
          }

          snprintf(v23, 0x32uLL, "Current access (a %s) started at", v11);
          fprintf(*v10, "%s:\n", v23);
          swift::printCurrentBacktrace(1);
          v19 = v24;
          v20 = xmmword_180672710;
          v21 = &v22;
          v16[0] = 2;
          v16[1] = "exclusivity-violation";
          v16[2] = v23;
          v16[3] = 1;
          v16[4] = v15;
          v16[5] = 1;
          v16[6] = &v19;
          v17 = 0u;
          v18 = 0u;
          _swift_reportToDebugger(1, __str, v16);
          swift::fatalError(0, "Fatal access conflict detected.\n", v12, v13);
        }

        if (v8)
        {
          v14 = a5 & 1;
          v15 = a4;
          goto LABEL_13;
        }
      }

      v7 = (v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    while ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0);
  }

  if ((a5 & 0x20) != 0)
  {
    *a2 = a4;
    a2[1] = a3;
    a2[2] = a5 & 1 | v5;
    *a1 = a2;
  }

  return (a5 >> 5) & 1;
}

unint64_t *swift::runtime::AccessSet::remove(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == a2)
  {
    *result = *(v2 + 16) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 16);
      v2 = v4 & 0xFFFFFFFFFFFFFFFELL;
      if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0)
      {
        break;
      }

      if (v2 == a2)
      {
        *(v3 + 16) = *(v2 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t swift_beginAccess(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  if (_swift_disableExclusivityChecking)
  {
    goto LABEL_5;
  }

  v6 = a4;
  v8 = result;
  if (!a4)
  {
    v6 = v4;
  }

  v9 = swift::runtime::SwiftTLSContext::get(result);
  result = swift::runtime::AccessSet::insert(v9, a2, v6, v8, a3);
  if ((result & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

swift::runtime::SwiftTLSContext *swift_endAccess(swift::runtime::SwiftTLSContext *result)
{
  if (*result)
  {
    v1 = result;
    result = swift::runtime::SwiftTLSContext::get(result);
    v2 = *result;
    if (*result == v1)
    {
      *result = *(v2 + 16) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      while (1)
      {
        v3 = v2;
        v4 = *(v2 + 16);
        v2 = v4 & 0xFFFFFFFFFFFFFFFELL;
        if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0)
        {
          break;
        }

        if (v2 == v1)
        {
          *(v3 + 16) = *(v2 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t *swift_task_enterThreadLocalContext(swift::runtime::SwiftTLSContext *a1)
{
  result = swift::runtime::SwiftTLSContext::get(a1);
  v3 = *a1;
  v4 = *result;
  if (*a1)
  {
    if (v4)
    {
      v5 = *(a1 + 1);
      *result = v3;
      *(v5 + 16) = *(v5 + 16) & 1 | v4;
      *a1 = v4;
    }

    else
    {
      *result = v3;
      *a1 = 0;
    }

    *(a1 + 1) = 0;
  }

  else if (v4)
  {
    *a1 = v4;
  }

  return result;
}

unint64_t *swift_task_exitThreadLocalContext(swift::runtime::SwiftTLSContext *a1)
{
  result = swift::runtime::SwiftTLSContext::get(a1);
  v3 = *a1;
  v4 = *result;
  if (*a1)
  {
    if (v4 == v3)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
    }

    else
    {
      v5 = *result;
      do
      {
        v6 = v5;
        v7 = *(v5 + 16);
        v5 = v7 & 0xFFFFFFFFFFFFFFFELL;
      }

      while ((v7 & 0xFFFFFFFFFFFFFFFELL) != v3);
      *result = v3;
      *(v6 + 16) = v7 & 1;
      *a1 = v4;
      *(a1 + 1) = v6;
    }
  }

  else if (v4)
  {
    v8 = *result;
    do
    {
      v9 = v8;
      v8 = *(v8 + 16) & 0xFFFFFFFFFFFFFFFELL;
    }

    while (v8);
    *result = 0;
    *a1 = v4;
    *(a1 + 1) = v9;
  }

  return result;
}

void *swift::TargetOpaqueExistentialContainer<swift::InProcess>::projectValue(void *result)
{
  v1 = *(*(result[3] - 8) + 80);
  if ((v1 & 0x20000) != 0)
  {
    return (*result + ((v1 + 16) & ~v1));
  }

  return result;
}

void swift::TargetOpaqueExistentialContainer<swift::InProcess>::deinit(uint64_t a1)
{
  if ((*(*(*(a1 + 24) - 8) + 80) & 0x20000) != 0)
  {
    swift_deallocObject(*a1);
  }
}

BOOL _swift_isObjCTypeNameSerializable(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1 > 0x7FFuLL)
  {
    LODWORD(v2) = 0;
  }

  result = 1;
  if ((v2 - 515) < 2 || v2 == 773)
  {
    return result;
  }

  if (v2)
  {
    return 0;
  }

  if ((v1[4] & 2) == 0)
  {
    return result;
  }

  if (v1[8])
  {
    goto LABEL_10;
  }

  if (v1[1])
  {
    v1 = v1[1];
LABEL_10:
    if ((v1[5] & 4) != 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v1 = 0;
  if ((MEMORY[0x28] & 4) != 0)
  {
    return result;
  }

LABEL_11:
  if (v1[8])
  {
    v4 = v1[8];
LABEL_16:
    if (v4)
    {
      while (1)
      {
        result = (*v4 & 0x1F) != 2;
        if ((*v4 & 0x1F) == 2)
        {
          break;
        }

        v7 = v4[1];
        v6 = v4 + 1;
        v5 = v7;
        if (!v7)
        {
          break;
        }

        v8 = (v6 + (v5 & 0xFFFFFFFFFFFFFFFELL));
        if (v5)
        {
          v4 = *v8;
          if (!*v8)
          {
            return result;
          }

          goto LABEL_16;
        }

        if (!v8)
        {
          return result;
        }

        v4 = (v6 + (v5 & 0xFFFFFFFFFFFFFFFELL));
      }
    }
  }

  return result;
}

uint64_t swift_getFunctionReplacement(swift::runtime::SwiftTLSContext *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    return 0;
  }

  v3 = swift::runtime::SwiftTLSContext::get(a1);
  if (*(v3 + 8) == 1)
  {
    v2 = 0;
    *(v3 + 8) = 0;
  }

  return v2;
}

uint64_t swift_getOrigOfReplaceable(swift::runtime::SwiftTLSContext *a1)
{
  v1 = *a1;
  *(swift::runtime::SwiftTLSContext::get(a1) + 8) = 1;
  return v1;
}

uint64_t swift::compareGenericMetadata(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *a1;
  if (*a1 > 0x7FFuLL)
  {
    LODWORD(v4) = 0;
  }

  v5 = *a2;
  if (*a2 > 0x7FFuLL)
  {
    LODWORD(v5) = 0;
  }

  if (v4 != v5)
  {
    validationLog(0, "Kinds do not match");
    goto LABEL_10;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
  result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  if (TypeContextDescriptor != result)
  {
    validationLog(0, "Descriptors do not match");
    goto LABEL_10;
  }

  v12 = *TypeContextDescriptor;
  if ((*TypeContextDescriptor & 0x80) != 0)
  {
    if (*(a1 - 8))
    {
      v13 = *(a1 - 8);
    }

    else
    {
      v13 = 0;
    }

    v60[0] = v13;
    if (*(a2 - 8))
    {
      v14 = *(a2 - 8);
    }

    else
    {
      v14 = 0;
    }

    v63[0] = v14;
    if (v13)
    {
      v15 = v13;
      if (v14)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = 0;
      if (v14)
      {
LABEL_33:
        v16 = v14;
        v17 = *v15;
        if (*v15)
        {
LABEL_34:
          v18 = v17;
          v19 = *v16;
LABEL_35:
          if (v18 == v19 && (!v15[1] ? (v20 = 0) : (v20 = v15[1]), v20 == *(v16 + 1) && (!v15[2] ? (v21 = 0) : (v21 = v15[2]), v21 == *(v16 + 2) && (!v15[3] ? (v22 = 0) : (v22 = v15[3]), v22 == *(v16 + 3) && (!v15[4] ? (v23 = 0) : (v23 = v15[4]), v23 == *(v16 + 4) && (!v15[5] ? (v24 = 0) : (v24 = v15[5]), v24 == *(v16 + 5) && (!v15[6] ? (v25 = 0) : (v25 = v15[6]), v25 == *(v16 + 6) && (!v15[7] ? (v26 = 0) : (v26 = v15[7]), v26 == *(v16 + 7) && v15[8] == *(v16 + 8) && v15[9] == *(v16 + 9) && (v27 = *(v15 + 20), v27 == *(v16 + 20)) && *(v15 + 21) == *(v16 + 21) && ((v27 & 0x200000) == 0 || (!v15[11] ? (v29 = 0) : (v29 = v15[11]), v29 == *(v16 + 11) && (!v15[12] ? (v30 = 0) : (v30 = v15[12]), v30 == *(v16 + 12) && (!v15[13] ? (v31 = 0) : (v31 = v15[13]), v31 == *(v16 + 13)))))))))))))
          {
            v28 = 1;
          }

          else
          {
            result = validationLog(0, "VWTs do not match");
            v28 = 0;
            v12 = *TypeContextDescriptor;
          }

          v32 = v12 & 0x1F;
          switch(v32)
          {
            case 18:
              if (TypeContextDescriptor)
              {
                v35 = TypeContextDescriptor;
              }

              else
              {
                v35 = 0;
              }

              if (!v35)
              {
                v35 = 0;
              }

              ResilientImmediateMembersOffset = 2;
              v37 = v35 + 7;
              break;
            case 17:
              if (TypeContextDescriptor)
              {
                v34 = TypeContextDescriptor;
              }

              else
              {
                v34 = 0;
              }

              if (!v34)
              {
                v34 = 0;
              }

              ResilientImmediateMembersOffset = 2;
              v37 = v34 + 7;
              break;
            case 16:
              if (TypeContextDescriptor)
              {
                v33 = TypeContextDescriptor;
              }

              else
              {
                v33 = 0;
              }

              if (!v33)
              {
                v33 = 0;
              }

              v37 = v33 + 11;
              if (TypeContextDescriptor)
              {
                v38 = TypeContextDescriptor;
              }

              else
              {
                v38 = 0;
              }

              if ((*v38 & 0x20000000) != 0)
              {
                ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(v38);
              }

              else
              {
                if ((*v38 & 0x10000000) != 0)
                {
                  v39 = 0;
                  v40 = 6;
                }

                else
                {
                  v39 = v38[7];
                  v40 = 8;
                }

                ResilientImmediateMembersOffset = v39 - v38[v40];
              }

              break;
            default:
LABEL_165:
              __break(1u);
              return result;
          }

          v41 = 8 * (*(v37 + 6) + ResilientImmediateMembersOffset);
          v42 = *a1;
          if (*a1 > 0x7FFuLL)
          {
            LODWORD(v42) = 0;
          }

          if (v42 == 513)
          {
            TrailingFlags = swift::TargetEnumMetadata<swift::InProcess>::getTrailingFlags(a1);
            if (TrailingFlags)
            {
              v43 = TrailingFlags - a1 + 8;
            }

            else
            {
              v43 = v41;
            }

            v45 = swift::TargetEnumMetadata<swift::InProcess>::getTrailingFlags(a2);
            if (v45)
            {
              result = v45 - a2 + 8;
            }

            else
            {
              result = v41;
            }
          }

          else if (v42 == 512)
          {
            v43 = swift::compareGenericMetadata(swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a1, v41);
            result = swift::compareGenericMetadata(swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a2, v41);
          }

          else
          {
            if (v42)
            {
              result = 8 * (*(v37 + 6) + ResilientImmediateMembersOffset);
              goto LABEL_131;
            }

            v43 = (*(a1 + 56) - *(a1 + 60)) >> 3;
            result = (*(a2 + 56) - *(a2 + 60)) >> 3;
          }

          if (v43 != result)
          {
            validationLog(0, "Sizes do not match");
            v28 = 0;
            result = v43;
          }

LABEL_131:
          v59 = result;
          if (*(v37 + 6))
          {
            v46 = 0;
            do
            {
              v47 = *TypeContextDescriptor;
              v48 = *TypeContextDescriptor & 0x1F;
              if ((v48 - 17) >= 2)
              {
                if (v48 != 16)
                {
                  goto LABEL_165;
                }

                if (TypeContextDescriptor)
                {
                  v52 = TypeContextDescriptor;
                }

                else
                {
                  v52 = 0;
                }

                if ((*v52 & 0x20000000) != 0)
                {
                  v49 = swift::getResilientImmediateMembersOffset(v52);
                  v47 = *TypeContextDescriptor;
                }

                else
                {
                  if ((*v52 & 0x10000000) != 0)
                  {
                    v54 = 0;
                    v55 = 6;
                  }

                  else
                  {
                    v54 = v52[7];
                    v55 = 8;
                  }

                  v49 = v54 - v52[v55];
                }
              }

              else
              {
                v49 = 2;
              }

              result = *(a1 + 8 * v49 + 8 * v46);
              v50 = v47 & 0x1F;
              if ((v50 - 17) >= 2)
              {
                if (v50 != 16)
                {
                  goto LABEL_165;
                }

                if (TypeContextDescriptor)
                {
                  v53 = TypeContextDescriptor;
                }

                else
                {
                  v53 = 0;
                }

                if ((*v53 & 0x20000000) != 0)
                {
                  v58 = result;
                  v51 = swift::getResilientImmediateMembersOffset(v53);
                  result = v58;
                }

                else
                {
                  if ((*v53 & 0x10000000) != 0)
                  {
                    v56 = 0;
                    v57 = 6;
                  }

                  else
                  {
                    v56 = v53[7];
                    v57 = 8;
                  }

                  v51 = v56 - v53[v57];
                }
              }

              else
              {
                v51 = 2;
              }

              result = swift::compareGenericMetadata(result, *(a2 + 8 * v51 + 8 * v46));
              if ((result & 1) == 0)
              {
                result = validationLog(0, "Generic argument %u does not match", v46);
                v28 = 0;
              }

              ++v46;
            }

            while (v46 < *(v37 + 6));
          }

          if (v59 > v41 && memcmp((a1 + v41), (a2 + v41), v59 - v41))
          {
            validationLog(0, "Metadatas do not match in the part after generic arguments");
          }

          if ((v28 & 1) == 0)
          {
            goto LABEL_10;
          }

          return 1;
        }

LABEL_40:
        v18 = 0;
        v19 = *v16;
        goto LABEL_35;
      }
    }

    v16 = 0;
    v17 = *v15;
    if (*v15)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  validationLog(0, "Descriptor is not generic and pointers are not identical");
LABEL_10:
  validationLog(0, "Error: original and new metadata do not match!");
  validationLog(0, "Original metadata:");
  v63[0] = printToStderr;
  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpMetadata(v63, a1, v60);
  v8 = v62;
  if (v62 != -1)
  {
    (off_1EEEAA890[v62])(v63, v60);
    if (v8 == 1)
    {
      if (v61 >= 0)
      {
        v9 = v60;
      }

      else
      {
        v9 = v60[0];
      }

      validationLog(0, "error dumping original metadata: %s", v9);
    }
  }

  validationLog(0, "New metadata builder:");
  v63[0] = printToStderr;
  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpMetadata(v63, a2, v60);
  v10 = v62;
  if (v62 != -1)
  {
    (off_1EEEAA890[v62])(v63, v60);
    if (v10 == 1)
    {
      if (v61 >= 0)
      {
        v11 = v60;
      }

      else
      {
        v11 = v60[0];
      }

      validationLog(0, "error dumping new metadata: %s", v11);
    }
  }

  return 0;
}

uint64_t validationLog(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = *MEMORY[0x1E69E9848];
  fputs("GenericMetadataBuilder validation: ", *MEMORY[0x1E69E9848]);
  vfprintf(v3, a2, va);
  return fputs("\n", v3);
}

uint64_t swift::compareGenericMetadata(swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (!v3)
  {
    v3 = 0;
  }

  v5 = v3 + 28;
  v6 = *(v5 + 4);
  if (v6)
  {
    v7 = v5 + 4 + v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(v7 + 8) & 2) != 0)
  {
    v10 = a1 + ((4 * *(v4 + 20) + 7) & 0x7FFFFFFF8) + 8 * *(v4 + 24) + 8;
    return v10 - a1;
  }

  if (v2)
  {
    v8 = *(v2 + 24);
    if (v8)
    {
      v9 = *(a1 + 8);
LABEL_16:
      v10 = a1 + 8 * v8 + 4 * *(v9 + 20);
      return v10 - a1;
    }
  }

  else
  {
    v8 = MEMORY[0x18];
    if (MEMORY[0x18])
    {
      v9 = 0;
      goto LABEL_16;
    }
  }

  return a2;
}

uint64_t swift::TargetEnumMetadata<swift::InProcess>::getTrailingFlags(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v2;
  if (!v2)
  {
    v2 = 0;
  }

  v5 = 0;
  v6 = v2 + 28;
  v7 = *(v6 + 4);
  if (v7)
  {
    v8 = v6 + 4 + v7;
  }

  else
  {
    v8 = 0;
  }

  if ((*(v8 + 8) & 2) != 0)
  {
    if (v4)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v9 + 40);
    if (v1)
    {
      v11 = *(a1 + 8);
    }

    else
    {
      v11 = 0;
    }

    return a1 + 8 * v10 + 8 * (*(v11 + 23) != 0) + 16;
  }

  return v5;
}

void swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpMetadata(void (**a1)(const char *, ...)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<swift::TargetMetadata<swift::InProcess> const>(a1, "Metadata ", a2, "\n");
  if (*(a2 - 1))
  {
    v6 = *(a2 - 1);
  }

  else
  {
    v6 = 0;
  }

  v30 = v6;
  v31 = 0;
  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<swift::TargetMetadata<swift::InProcess> const>(a1, "  value witnesses: ", v6, "\n");
  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpVWT(a1, v6, v26);
  if (v29)
  {
    if (v29 == 1)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

    v9 = &v28;
    if (v29 != 1)
    {
      v9 = 23;
    }

    if (*v9 < 0)
    {
      v15 = 8;
      if (v29 == 1)
      {
        v15 = &v27;
      }

      std::string::__init_copy_ctor_external(a3, *v8, *v15);
    }

    else
    {
      *a3 = *v8;
      *(a3 + 16) = *(v8 + 2);
    }

    *(a3 + 24) = 1;
    goto LABEL_24;
  }

  if (*a2 <= 0x7FFuLL)
  {
    v10 = *a2;
  }

  else
  {
    v10 = 0;
  }

  StringForMetadataKind = swift::getStringForMetadataKind(v10, v7);
  v13 = *a1;
  if (StringForMetadataKind)
  {
    v14 = v12;
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v12;
    if (v12)
    {
      memmove(&__dst, StringForMetadataKind, v12);
    }

    __dst.__r_.__value_.__s.__data_[v14] = 0;
    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
    p_dst = &__dst;
  }

  v13("  kind: %#x (%s)\n", v10, p_dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((*a2 - 1) < 0x7FF)
  {
    if (*a2 - 515 >= 0xFFFFFFFD)
    {
      swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpValueMetadata(a1, a2, a2, &__dst);
      v17 = v25;
      if (v25)
      {
        if (v25 == 1)
        {
          v18 = &__dst;
        }

        else
        {
          v18 = 0;
        }

        v19 = &__dst.__r_.__value_.__r.__words[2] + 7;
        if (v25 != 1)
        {
          v19 = 23;
        }

        if (*v19 < 0)
        {
          v20 = v18->__r_.__value_.__r.__words[0];
LABEL_60:
          v22 = v17 == 1;
          p_size = 8;
          if (v22)
          {
            p_size = &__dst.__r_.__value_.__l.__size_;
          }

          std::string::__init_copy_ctor_external(a3, v20, *p_size);
          v17 = v25;
          goto LABEL_63;
        }

        goto LABEL_57;
      }
    }

LABEL_58:
    *(a3 + 24) = 0;
    goto LABEL_24;
  }

  swift::BuilderError::BuilderError(&v32, "Class dumping is not yet implemented");
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    v25 = 1;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      v17 = v25;
      if (!v25)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    __dst = v32;
    v25 = 1;
    v17 = 1;
  }

  if (v17 == 1)
  {
    v18 = &__dst;
  }

  else
  {
    v18 = 0;
  }

  v21 = &__dst.__r_.__value_.__r.__words[2] + 7;
  if (v17 != 1)
  {
    v21 = 23;
  }

  if (*v21 < 0)
  {
    v20 = v18->__r_.__value_.__r.__words[0];
    goto LABEL_60;
  }

LABEL_57:
  *a3 = *&v18->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v18->__r_.__value_.__l + 2);
LABEL_63:
  *(a3 + 24) = 1;
  if (v17 != -1)
  {
    (off_1EEEAA890[v17])(&v32, &__dst);
  }

LABEL_24:
  if (v29 != -1)
  {
    (off_1EEEAA890[v29])(&__dst, v26);
  }

  if (v31 != -1)
  {
    (off_1EEEAA880[v31])(v26, &v30);
  }
}

uint64_t swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<swift::TargetMetadata<swift::InProcess> const>(void (**a1)(const char *, ...), const char *a2, void *a3, const char *a4)
{
  (*a1)("%s", a2);
  InProcessReaderWriter::getSymbolInfo<swift::TargetMetadata<swift::InProcess> const>(a3, v10);
  if (v11 >= 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v10[0];
  }

  p_p = &__p;
  if (v13 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", a3, v7, p_p, v14);
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v11 & 0x80000000) == 0)
    {
      return (*a1)("%s", a4);
    }

LABEL_10:
    operator delete(v10[0]);
    return (*a1)("%s", a4);
  }

  if (v11 < 0)
  {
    goto LABEL_10;
  }

  return (*a1)("%s", a4);
}

void swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpVWT(void (**a1)(const char *, ...)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj55882EEKPFPNS_11OpaqueValueEPNS_17TargetValueBufferINS_9InProcessEEESF_PKNS_14TargetMetadataISD_EEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "initializeBufferWithCopyOfBuffer", a2, v11);
  v6 = v14;
  if (v14
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj1272EEKPFvPNS_11OpaqueValueEPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "destroy", (a2 + 8), v11), (v6 = v14) != 0)
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj58298EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "initializeWithCopy", (a2 + 16), v11), (v6 = v14) != 0)
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj34641EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "assignWithCopy", (a2 + 24), v11), (v6 = v14) != 0)
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj18648EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "initializeWithTake", (a2 + 32), v11), (v6 = v14) != 0)
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj61402EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "assignWithTake", (a2 + 40), v11), (v6 = v14) != 0)
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj24816EEKPFjPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISE_EEEES5_PT_(a1, "getEnumTagSinglePayload", (a2 + 48), v11), (v6 = v14) != 0)
    || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj41169EEKPFvPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "storeEnumTagSinglePayload", (a2 + 56), v11), (v6 = v14) != 0)
    || ((*a1)("    %s: %#llx (%llu)\n", "size", *(a2 + 64), *(a2 + 64)), (*a1)("    %s: %#llx (%llu)\n", "stride", *(a2 + 72), *(a2 + 72)), (*a1)("    %s: %#llx (%llu)\n", "flags", *(a2 + 80), *(a2 + 80)), (*a1)("    %s: %#llx (%llu)\n", "extraInhabitantCount", *(a2 + 84), *(a2 + 84)), a2) && (*(a2 + 80) & 0x200000) != 0 && ((_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj41909EEKPFjPKNS_11OpaqueValueEPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISE_EEEES5_PT_(a1, "getEnumTag", (a2 + 88), v11), (v6 = v14) != 0) || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj1053EEKPFvPNS_11OpaqueValueEPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "destructiveProjectEnumData", (a2 + 96), v11), (v6 = v14) != 0) || (_ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj45796EEKPFvPNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_(a1, "destructiveInjectEnumTag", (a2 + 104), v11), (v6 = v14) != 0)))
  {
    if (v6 == 1)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    v8 = &v13;
    if (v6 != 1)
    {
      v8 = 23;
    }

    if (*v8 < 0)
    {
      v9 = v6 == 1;
      v10 = 8;
      if (v9)
      {
        v10 = &v12;
      }

      std::string::__init_copy_ctor_external(a3, *v7, *v10);
      v6 = v14;
    }

    else
    {
      *a3 = *v7;
      *(a3 + 16) = *(v7 + 2);
    }

    *(a3 + 24) = 1;
    if (v6 != -1)
    {
      (off_1EEEAA890[v6])(&v15, v11);
    }
  }

  else
  {
    *(a3 + 24) = 0;
  }
}

unint64_t swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::dumpValueMetadata@<X0>(void (**a1)(const char *, ...)@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 8))
  {
    v8 = *(a3 + 8);
  }

  else
  {
    v8 = 0;
  }

  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<swift::TargetValueTypeDescriptor<swift::InProcess> const>(a1, "  description: ", v8, "\n");
  if ((*(v8 + 2) & 0x10) != 0)
  {
    if (*(a3 - 16))
    {
      v9 = *(a3 - 16);
    }

    else
    {
      v9 = 0;
    }

    swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<swift::TargetMetadata<swift::InProcess> const>(a1, "  layout string: ", v9, "\n");
  }

  v40[0] = v8 + v8[2] + 8;
  v10 = v40[0];
  swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<char const>(a1, "  name: ", v40, "\n");
  result = (*a1)("        %s\n", v10);
  v12 = *a2;
  v37 = a4;
  if (*a2 != 512)
  {
    if (v12 > 0x7FF || (v12 - 515) < 0xFFFFFFFE)
    {
LABEL_26:
      v22 = *v8;
      if ((*v8 & 0x80) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_30;
    }

    v15 = a2[1];
    if (v15)
    {
      v40[0] = a2[1];
      LODWORD(__p) = 0;
      v16 = v15;
    }

    else
    {
      v16 = 0;
      v40[0] = 0;
      LODWORD(__p) = 0;
    }

    if (HIBYTE(*(v16 + 20)))
    {
      v21 = *(v16 + 20) >> 24;
      (*a1)("  offset: %u\n", HIBYTE(*(v16 + 20)));
      result = (*a1)("  payload size: %llu\n", a2[v21]);
      goto LABEL_25;
    }

LABEL_28:
    LODWORD(v17) = 0;
    goto LABEL_29;
  }

  v13 = a2[1];
  if (v13)
  {
    v40[0] = a2[1];
    LODWORD(__p) = 0;
    v14 = v13;
  }

  else
  {
    v14 = 0;
    v40[0] = 0;
    LODWORD(__p) = 0;
  }

  v17 = *(v14 + 24);
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v14;
  if (!*(v14 + 20))
  {
    goto LABEL_28;
  }

  v19 = 0;
  v20 = &a2[v17];
  do
  {
    result = (*a1)("  fieldOffset[%u]: %u\n", v19, *(v20 + v19));
    ++v19;
  }

  while (v19 < *(v18 + 20));
LABEL_25:
  LODWORD(v17) = __p;
  if (__p == -1)
  {
    goto LABEL_26;
  }

LABEL_29:
  result = (off_1EEEAA870[v17])(v38, v40);
  v22 = *v8;
  if ((*v8 & 0x80) == 0)
  {
    goto LABEL_63;
  }

LABEL_30:
  v23 = v22 & 0x1F;
  switch(v23)
  {
    case 18:
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v26 = 0;
      }

      if (!v26)
      {
        v26 = 0;
      }

      v27 = v26 + 7;
      goto LABEL_47;
    case 17:
      if (v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        v25 = 0;
      }

      v27 = v25 + 7;
LABEL_47:
      v28 = *(v27 + 4);
      result = 2;
      goto LABEL_48;
    case 16:
      if (v8)
      {
        v24 = v8;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        v24 = 0;
      }

      v28 = *(v24 + 26);
      if (v8)
      {
        v34 = v8;
      }

      else
      {
        v34 = 0;
      }

      if ((*v34 & 0x20000000) != 0)
      {
        result = swift::getResilientImmediateMembersOffset(v34);
      }

      else
      {
        if ((*v34 & 0x10000000) != 0)
        {
          v35 = 0;
          v36 = 6;
        }

        else
        {
          v35 = v34[7];
          v36 = 8;
        }

        result = (v35 - v34[v36]);
      }

LABEL_48:
      if (v28)
      {
        v29 = 0;
        v30 = a3 + 8 * result;
        do
        {
          v38[0] = *(v30 + 8 * v29);
          v39 = 0;
          (*a1)("  genericArg[%u]: ", v29);
          v31 = v38[0];
          InProcessReaderWriter::getSymbolInfo<swift::TargetMetadata<swift::InProcess> const>(v38[0], v40);
          if (v41 >= 0)
          {
            v32 = v40;
          }

          else
          {
            v32 = v40[0];
          }

          if (v43 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          (*a1)("%#llx - %s (%s + %llu)", v31, v32, p_p, v44);
          if (v43 < 0)
          {
            operator delete(__p);
            if (v41 < 0)
            {
LABEL_62:
              operator delete(v40[0]);
            }
          }

          else if (v41 < 0)
          {
            goto LABEL_62;
          }

          result = (*a1)("\n");
          if (v39 != -1)
          {
            result = (off_1EEEAA860[v39])(v40, v38);
          }

          ++v29;
        }

        while (v28 != v29);
      }

LABEL_63:
      *(v37 + 24) = 0;
      return result;
  }

  __break(1u);
  return result;
}

unint64_t InProcessReaderWriter::getSymbolInfo<swift::TargetMetadata<swift::InProcess> const>@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = dladdr(a1, &__s);
  if (!result)
  {
    strcpy((a2 + 23), "\t<unknown>");
    strcpy(a2, "<unknown>");
    *(a2 + 47) = 9;
    *(a2 + 48) = 0;
    return result;
  }

  dli_fname = __s.dli_fname;
  if (!__s.dli_fname)
  {
    dli_fname = "<unknown>";
    __s.dli_fname = "<unknown>";
    dli_sname = __s.dli_sname;
    if (__s.dli_sname)
    {
      goto LABEL_4;
    }

LABEL_21:
    dli_sname = "<unknown>";
    __s.dli_sname = "<unknown>";
    goto LABEL_4;
  }

  dli_sname = __s.dli_sname;
  if (!__s.dli_sname)
  {
    goto LABEL_21;
  }

LABEL_4:
  v7 = strrchr(dli_fname, 47);
  if (v7)
  {
    dli_fname = v7 + 1;
  }

  v8 = strlen(dli_sname);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_22;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, dli_sname, v8);
  }

  *(a2 + v9) = 0;
  result = strlen(dli_fname);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_22:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  v11 = (a2 + 24);
  *(a2 + 47) = result;
  if (result)
  {
    result = memmove(v11, dli_fname, result);
  }

  *(v11 + v10) = 0;
  *(a2 + 48) = a1 - __s.dli_fbase;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj55882EEKPFPNS_11OpaqueValueEPNS_17TargetValueBufferINS_9InProcessEEESF_PKNS_14TargetMetadataISD_EEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj1272EEKPFvPNS_11OpaqueValueEPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj58298EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj34641EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj18648EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj61402EEKPFPNS_11OpaqueValueESB_SB_PKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj24816EEKPFjPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISE_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj41169EEKPFvPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj41909EEKPFjPKNS_11OpaqueValueEPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISE_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj1053EEKPFvPNS_11OpaqueValueEPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

uint64_t _ZN5swift22GenericMetadataBuilderI21InProcessReaderWriterE6DumperIPFvPKczEE20dumpVWTFunctionFieldIU9__ptrauthILj0ELb1ELj45796EEKPFvPNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEEEEENS_14BuilderErrorOrINSt3__19monostateEEENS1_6BufferIKNS_23TargetValueWitnessTableISD_EEEES5_PT_@<X0>(void (**a1)(const char *, ...)@<X0>, const char *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  (*a1)("    %s: ", a2);
  v10 = v6;
  InProcessReaderWriter::getSymbolInfo<char const>(&v10, v11);
  if (v12 >= 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v6, v7, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator delete(v11[0]);
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  result = (*a1)("\n");
  *(a4 + 24) = 0;
  return result;
}

size_t InProcessReaderWriter::getSymbolInfo<char const>@<X0>(const void **a1@<X1>, uint64_t a2@<X8>)
{
  result = dladdr(*a1, &__s);
  if (!result)
  {
    strcpy((a2 + 23), "\t<unknown>");
    strcpy(a2, "<unknown>");
    *(a2 + 47) = 9;
    *(a2 + 48) = 0;
    return result;
  }

  dli_fname = __s.dli_fname;
  if (!__s.dli_fname)
  {
    dli_fname = "<unknown>";
    __s.dli_fname = "<unknown>";
    dli_sname = __s.dli_sname;
    if (__s.dli_sname)
    {
      goto LABEL_4;
    }

LABEL_21:
    dli_sname = "<unknown>";
    __s.dli_sname = "<unknown>";
    goto LABEL_4;
  }

  dli_sname = __s.dli_sname;
  if (!__s.dli_sname)
  {
    goto LABEL_21;
  }

LABEL_4:
  v7 = strrchr(dli_fname, 47);
  if (v7)
  {
    dli_fname = v7 + 1;
  }

  v8 = strlen(dli_sname);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_22;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, dli_sname, v8);
  }

  *(a2 + v9) = 0;
  result = strlen(dli_fname);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_22:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  v11 = (a2 + 24);
  *(a2 + 47) = result;
  if (result)
  {
    result = memmove(v11, dli_fname, result);
  }

  *(v11 + v10) = 0;
  *(a2 + 48) = *a1 - __s.dli_fbase;
  return result;
}

swift::BuilderError *swift::BuilderError::BuilderError(swift::BuilderError *this, const char *__format, ...)
{
  va_start(va, __format);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 < 0)
  {
    goto LABEL_6;
  }

  v5 = (v4 + 1);
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if (vsnprintf(v6, v5, __format, va) < 0)
  {
    free(v7);
LABEL_6:
    v8 = 0;
    v7 = "<could not create error string>";
    goto LABEL_7;
  }

  v8 = v7;
LABEL_7:
  MEMORY[0x1865C91F0](this, v7);
  free(v8);
  return this;
}

uint64_t swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<swift::TargetValueTypeDescriptor<swift::InProcess> const>(void (**a1)(const char *, ...), const char *a2, const void *a3, const char *a4)
{
  (*a1)("%s", a2);
  InProcessReaderWriter::getSymbolInfo<swift::TargetValueTypeDescriptor<swift::InProcess> const>(a3, v11);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  if (v12 >= 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = v11[0];
  }

  p_p = &__p;
  if (v14 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v7, v8, p_p, v15);
  if (v14 < 0)
  {
    operator delete(__p);
    if ((v12 & 0x80000000) == 0)
    {
      return (*a1)("%s", a4);
    }

LABEL_13:
    operator delete(v11[0]);
    return (*a1)("%s", a4);
  }

  if (v12 < 0)
  {
    goto LABEL_13;
  }

  return (*a1)("%s", a4);
}

uint64_t swift::GenericMetadataBuilder<InProcessReaderWriter>::Dumper<void (*)(char const*,...)>::printPointer<char const>(void (**a1)(const char *, ...), const char *a2, const void **a3, const char *a4)
{
  (*a1)("%s", a2);
  v7 = *a3;
  v11 = v7;
  InProcessReaderWriter::getSymbolInfo<char const>(&v11, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  p_p = &__p;
  if (v15 < 0)
  {
    p_p = __p;
  }

  (*a1)("%#llx - %s (%s + %llu)", v7, v8, p_p, v16);
  if (v15 < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
      return (*a1)("%s", a4);
    }

LABEL_10:
    operator delete(v12[0]);
    return (*a1)("%s", a4);
  }

  if (v13 < 0)
  {
    goto LABEL_10;
  }

  return (*a1)("%s", a4);
}

size_t InProcessReaderWriter::getSymbolInfo<swift::TargetValueTypeDescriptor<swift::InProcess> const>@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  result = dladdr(v4, &__s);
  if (!result)
  {
    strcpy((a2 + 23), "\t<unknown>");
    strcpy(a2, "<unknown>");
    *(a2 + 47) = 9;
    *(a2 + 48) = 0;
    return result;
  }

  dli_fname = __s.dli_fname;
  if (__s.dli_fname)
  {
    dli_sname = __s.dli_sname;
    if (__s.dli_sname)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dli_fname = "<unknown>";
    __s.dli_fname = "<unknown>";
    dli_sname = __s.dli_sname;
    if (__s.dli_sname)
    {
      goto LABEL_7;
    }
  }

  dli_sname = "<unknown>";
  __s.dli_sname = "<unknown>";
LABEL_7:
  v8 = strrchr(dli_fname, 47);
  if (v8)
  {
    dli_fname = v8 + 1;
  }

  v9 = strlen(dli_sname);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_27;
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v9;
  if (v9)
  {
    memmove(a2, dli_sname, v9);
  }

  *(a2 + v10) = 0;
  result = strlen(dli_fname);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_27:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  v12 = (a2 + 24);
  *(a2 + 47) = result;
  if (result)
  {
    result = memmove(v12, dli_fname, result);
    v12[v11] = 0;
    if (a1)
    {
      goto LABEL_20;
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  *v12 = 0;
  if (!a1)
  {
    goto LABEL_23;
  }

LABEL_20:
  v13 = a1;
LABEL_24:
  *(a2 + 48) = v13 - __s.dli_fbase;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN21InProcessReaderWriter6BufferIKN5swift14TargetMetadataINSA_9InProcessEEEEENSA_12BuilderErrorEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN21InProcessReaderWriter6BufferIKN5swift25TargetValueTypeDescriptorINSA_9InProcessEEEEENSA_12BuilderErrorEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN21InProcessReaderWriter6BufferIKN5swift23TargetValueWitnessTableINSA_9InProcessEEEEENSA_12BuilderErrorEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5swift12BuilderErrorEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS8_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void *swift_slowAlloc(swift *size, unint64_t a2)
{
  if (a2 > 0xF)
  {
    if (a2 == -1)
    {
      v7 = 16;
    }

    else
    {
      v7 = a2 + 1;
    }

    memptr = 0;
    malloc_type_posix_memalign(&memptr, v7, size, 0xDDA1F575uLL);
    result = memptr;
  }

  else
  {
    result = malloc_type_malloc(size, 0xFF87031DuLL);
  }

  if (!result)
  {
    swift::swift_abortAllocationFailure(size, a2, v5, v6);
  }

  return result;
}

void *swift::swift_slowAllocTyped(swift *size, unint64_t a2, malloc_type_id_t type_id)
{
  memptr = 0;
  if (a2 > 0xF)
  {
    if (a2 == -1)
    {
      v8 = 16;
    }

    else
    {
      v8 = a2 + 1;
    }

    if (malloc_type_posix_memalign(&memptr, v8, size, type_id))
    {
      memptr = 0;
LABEL_11:
      swift::swift_abortAllocationFailure(size, a2, v6, v7);
    }

    result = memptr;
  }

  else
  {
    result = malloc_type_malloc(size, type_id);
    memptr = result;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}

void *swift_coroFrameAlloc(swift *a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (!result)
  {
    swift::swift_abortAllocationFailure(a1, 0, v4, v5);
  }

  return result;
}

void *_swift_allocObject_(unint64_t a1, swift *size, unint64_t a3)
{
  if (*a1 <= 0x7FFuLL)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  if (v4 && (v4 != 773 || (v5 = *(a1 + 8)) == 0) || (*(v5 + 32) & 2) != 0)
  {
    v6 = 0x80000000000;
  }

  else
  {
    v6 = 0x40000000000;
  }

  result = swift::swift_slowAllocTyped(size, a3, v6 | a1 ^ HIDWORD(a1));
  *result = a1;
  result[1] = 3;
  return result;
}

atomic_ullong *_swift_retain_(atomic_ullong *result)
{
  if (result >= 1)
  {
    v1 = result[1];
    v2 = v1 + 0x200000000;
    if (v1 + 0x200000000 < 0)
    {
      v3 = result[1];
LABEL_8:
      if (v3 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(result + 1, v3, 1);
      }
    }

    else
    {
      v3 = result[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(result + 1, &v3, v2, memory_order_relaxed, memory_order_relaxed);
        if (v3 == v1)
        {
          break;
        }

        v1 = v3;
        v2 = v3 + 0x200000000;
        if (v3 + 0x200000000 < 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t _swift_retain_n_(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v3 = *(result + 8);
    if (a2 == 1 || (v3 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
    {
      v4 = a2 << 33;
      v5 = v3 + (a2 << 33);
      if (v5 < 0)
      {
        v6 = *(result + 8);
LABEL_11:
        if (v6 != -1)
        {
          v7 = result;
          swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow((result + 8), v6, a2);
          return v7;
        }
      }

      else
      {
        v6 = *(result + 8);
        while (1)
        {
          atomic_compare_exchange_strong_explicit((result + 8), &v6, v5, memory_order_relaxed, memory_order_relaxed);
          if (v6 == v3)
          {
            break;
          }

          v3 = v6;
          v5 = v6 + v4;
          if (v6 + v4 < 0)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _swift_release_(uint64_t result)
{
  if (result >= 1)
  {
    v1 = result;
    result += 8;
    v2 = *(v1 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v1 + 8);
LABEL_8:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(result, v4, 1);
      }
    }

    else
    {
      v4 = *(v1 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(result, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t _swift_release_n_(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v3 = *(result + 8);
    if (a2 == 1 || (v3 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
    {
      result += 8;
      if (a2 < 2 || (v3 & 0x8000000000000000) == 0)
      {
        v4 = a2 << 33;
        while (v3 - v4 >= 0)
        {
          v5 = v3;
          atomic_compare_exchange_strong_explicit(result, &v5, v3 - v4, memory_order_release, memory_order_relaxed);
          if (v5 == v3)
          {
            return result;
          }

          v3 = v5;
          if (a2 >= 2 && v5 < 0)
          {
            break;
          }
        }
      }

      if (v3 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(result, v3, a2);
      }
    }
  }

  return result;
}

uint64_t _swift_tryRetain_(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result < 1)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v4 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  while (v4 + 0x200000000 >= 0)
  {
    v5 = v4;
    atomic_compare_exchange_strong_explicit((result + 8), &v5, v4 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      return result;
    }

    v4 = v5;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    if ((~v4 & 0x1FFFFFFFFLL) == 0)
    {
      return 0;
    }
  }

  if (v4 != -1)
  {
    v6 = result;
    v7 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementSlow((result + 8), v4, a3, a4);
    result = v6;
    if (!v7)
    {
      return 0;
    }
  }

  return result;
}

void *swift_allocObject(unint64_t a1, swift *size, unint64_t a3)
{
  v4 = _swift_allocObject;
  if (_swift_allocObject == _swift_allocObject_)
  {
    if (*a1 <= 0x7FFuLL)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1;
    if (v5 && (v5 != 773 || (v6 = *(a1 + 8)) == 0) || (*(v6 + 32) & 2) != 0)
    {
      v7 = 0x80000000000;
    }

    else
    {
      v7 = 0x40000000000;
    }

    result = swift::swift_slowAllocTyped(size, a3, v7 | a1 ^ HIDWORD(a1));
    *result = a1;
    result[1] = 3;
  }

  else
  {
    if ((_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly & 1) == 0)
    {
      _swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly = 1;
    }

    return v4(a1, size, a3);
  }

  return result;
}

void *swift_initStackObject(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  a2[1] = 5;
  return a2;
}

uint64_t swift_initStaticObject(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v5[0] = a2;
  v5[1] = a1;
  if (v3 != -1)
  {
    dispatch_once_f((a2 - 8), v5, swift_initStaticObject::$_0::__invoke);
  }

  return a2;
}

void swift_verifyEndOfLifetime(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v6 = *(a1 + 8);
  if (v6 < 0 && v6 != 0xFFFFFFFFLL)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }
  }

  swift::fatalError(0, "Fatal error: Stack object escaped\n", a3, a4, v4, v5);
}

void *swift_bufferAllocate(unint64_t a1, swift *size, unint64_t a3)
{
  v4 = _swift_allocObject;
  if (_swift_allocObject == _swift_allocObject_)
  {
    if (*a1 <= 0x7FFuLL)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1;
    if (v5 && (v5 != 773 || (v6 = *(a1 + 8)) == 0) || (*(v6 + 32) & 2) != 0)
    {
      v7 = 0x80000000000;
    }

    else
    {
      v7 = 0x40000000000;
    }

    result = swift::swift_slowAllocTyped(size, a3, v7 | a1 ^ HIDWORD(a1));
    *result = a1;
    result[1] = 3;
  }

  else
  {
    if ((_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly & 1) == 0)
    {
      _swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly = 1;
    }

    return v4(a1, size, a3);
  }

  return result;
}

void *swift_makeBoxUnique(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  if (swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    return v4;
  }

  v6 = swift_allocBox(a2);
  (*(*(a2 - 8) + 16))();
  result = v6;
  *a1 = v6;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v4);
    return v6;
  }

  else if (v4 >= 1)
  {
    v7 = (v4 + 8);
    v8 = *(v4 + 8);
    v9 = v8 - 0x200000000;
    if (v8 - 0x200000000 < 0)
    {
      v10 = *(v4 + 8);
LABEL_11:
      if (v10 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v7, v10, 1);
        return v6;
      }
    }

    else
    {
      v10 = *(v4 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v7, &v10, v9, memory_order_release, memory_order_relaxed);
        if (v10 == v8)
        {
          break;
        }

        v8 = v10;
        v9 = v10 - 0x200000000;
        if (v10 - 0x200000000 < 0)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void *swift_allocBox(unint64_t a1)
{
  v74 = a1;
  explicit = atomic_load_explicit(&qword_1ED415F58, memory_order_acquire);
  if (!explicit || *(explicit + 40) != v74)
  {
    atomic_fetch_add_explicit(&Boxes, 1u, memory_order_acquire);
    do
    {
      v2 = atomic_load_explicit(&qword_1ED415F38, memory_order_acquire);
      v3 = atomic_load_explicit(&qword_1ED415F40, memory_order_acquire);
      v4 = atomic_load_explicit(&dword_1ED415F34, memory_order_acquire);
    }

    while (v2 != atomic_load_explicit(&qword_1ED415F38, memory_order_acquire));
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && v4 != 0)
    {
      if (v7)
      {
        qword_1ED415F58 = *v7;
        explicit = *v7;
        atomic_fetch_add_explicit(&Boxes, 0xFFFFFFFF, memory_order_release);
        goto LABEL_110;
      }
    }

    atomic_fetch_add_explicit(&Boxes, 0xFFFFFFFF, memory_order_release);
    v75 = v74;
    os_unfair_lock_lock(&unk_1ED415F48);
    v8 = qword_1ED415F40;
    v9 = qword_1ED415F40 & 3;
    v10 = v9 == 0;
    if ((qword_1ED415F40 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v10 = 1;
    }

    v73 = v10;
    if (v10)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(qword_1ED415F40 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v12 = dword_1ED415F34;
    v13 = qword_1ED415F38;
    v14 = (qword_1ED415F38 + 8);
    if (qword_1ED415F38)
    {
      v15 = qword_1ED415F38 + 8;
    }

    else
    {
      v15 = 0;
    }

    if (v16)
    {
      explicit = *v16;
      __dmb(0xBu);
      if (Boxes)
      {
LABEL_109:
        os_unfair_lock_unlock(&unk_1ED415F48);
        qword_1ED415F58 = explicit;
        goto LABEL_110;
      }

      v18 = qword_1ED415F50;
      if (qword_1ED415F50)
      {
        do
        {
          v19 = *v18;
          free(v18[1]);
          free(v18);
          v18 = v19;
        }

        while (v19);
      }

LABEL_108:
      qword_1ED415F50 = 0;
      goto LABEL_109;
    }

    v71 = v15;
    v72 = v8;
    v20 = (v12 + 1);
    if ((1 << v11) / ((1 << v11) - v20) < 4)
    {
      v28 = v8;
      v29 = v17;
      if (!v13)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v21 = (v11 + 1);
      v70 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      if (v21 >= 0x11)
      {
        v22 = 4;
      }

      else
      {
        v22 = 2;
      }

      if (v21 < 9)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = malloc_type_calloc(2 << v11, v23, 0x48DDA4AEuLL);
      if (!v24)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v25 = v15;
      v26 = v8;
      v27 = v11;
      v68 = v12;
      v69 = (v12 + 1);
      if (v23 != 1)
      {
        if (v23 == 4)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }
      }

      v28 = v23 | v24;
      *v24 = v11 + 1;
      if (v11)
      {
        v30 = v8 & 3;
        if (v9)
        {
          v31 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v31 = 0;
        }

        v32 = v28 & 3;
        if ((v28 & 3) != 0)
        {
          v33 = v24 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v33 = 0;
        }

        v34 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v72 & 3u) > 1)
          {
            if (v30 == 2)
            {
              LODWORD(v36) = *(v31 + 2 * v34);
              if (*(v31 + 2 * v34))
              {
                goto LABEL_61;
              }
            }

            else
            {
              LODWORD(v36) = *(v31 + 4 * v34);
              if (v36)
              {
LABEL_61:
                v37 = *(*(v25 + 8 * (v36 - 1)) + 40);
                {
                  v67 = v31;
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v31 = v67;
                  v27 = v11;
                  v25 = v71;
                  v26 = v72;
                }

                v38 = 0x9DDFEA08EB382D69 * ((p_cache[400] + 8 * v37) ^ HIDWORD(v37));
                v39 = 0x9DDFEA08EB382D69 * (HIDWORD(v37) ^ (v38 >> 47) ^ v38);
                for (i = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47)); ; i = v42 + 1)
                {
                  v42 = i & ~(-2 << v11);
                  if (v42)
                  {
                    if ((v28 & 3) > 1)
                    {
                      LODWORD(v41) = v32 == 2 ? *(v33 + 2 * v42) : *(v33 + 4 * v42);
                    }

                    else if ((v28 & 3) != 0)
                    {
                      LODWORD(v41) = *(v33 + v42);
                    }

                    else
                    {
                      v41 = (v28 >> (4 * v42)) & 0xF;
                    }

                    if (!v41)
                    {
                      break;
                    }
                  }
                }

                if (v32 == 3)
                {
                  *(v33 + 4 * v42) = v36;
                }

                else if (v32 == 2)
                {
                  *(v33 + 2 * v42) = v36;
                }

                else
                {
                  *(v33 + v42) = v36;
                }
              }
            }
          }

          else if (v30)
          {
            LODWORD(v36) = *(v31 + v34);
            if (*(v31 + v34))
            {
              goto LABEL_61;
            }
          }

          else
          {
            v36 = (v26 >> (4 * v34)) & 0xF;
            if (v36)
            {
              goto LABEL_61;
            }
          }

          ++v34;
        }

        while (!(v34 >> v27));
      }

      atomic_store(v28, &qword_1ED415F40);
      if (!v73)
      {
        v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v25 = v71;
        *v43 = qword_1ED415F50;
        v43[1] = v70;
        qword_1ED415F50 = v43;
      }

      v12 = v68;
      v20 = v69;
      v14 = v13 + 2;
      v29 = v44;
      if (!v13)
      {
        goto LABEL_82;
      }
    }

    v45 = v13;
    if (v12 < *v13)
    {
LABEL_88:
      v76[0] = 1;
      v50 = swift::MetadataAllocator::Allocate(v76, 0x30uLL, 8uLL);
      explicit = v50;
      v51 = v74;
      {
      }

      else
      {
        v52 = 0;
      }

      v53 = *(*(v74 - 8) + 80);
      *v50 = 0;
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0;
      }

      *(v50 + 1) = v54;
      *(v50 + 2) = 0;
      *(v50 + 3) = 1280;
      *(v50 + 8) = (v53 + 16) & ~v53;
      *(v50 + 5) = v51;
      *(v45 + 8 + 8 * v12) = v50;
      atomic_store(v20, &dword_1ED415F34);
      if ((v28 & 3) > 1)
      {
        if ((v28 & 3) == 2)
        {
          v55 = v28 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v28 & 3) == 0)
          {
            v55 = 0;
          }

          atomic_store(v20, (v55 + 2 * v29));
        }

        else
        {
          v56 = v28 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v28 & 3) == 0)
          {
            v56 = 0;
          }

          atomic_store(v20, (v56 + 4 * v29));
        }
      }

      else if ((v28 & 3) != 0)
      {
        atomic_store(v20, ((v28 & 0xFFFFFFFFFFFFFFFCLL) + v29));
      }

      else
      {
        atomic_store((v20 << (4 * v29)) | v28, &qword_1ED415F40);
      }

      __dmb(0xBu);
      if (Boxes)
      {
        goto LABEL_109;
      }

      v57 = qword_1ED415F50;
      if (qword_1ED415F50)
      {
        do
        {
          v58 = *v57;
          free(v57[1]);
          free(v57);
          v57 = v58;
        }

        while (v58);
      }

      goto LABEL_108;
    }

LABEL_82:
    v46 = v12 + (v12 >> 2);
    if (v46 <= v12 + 1)
    {
      v46 = v12 + 1;
    }

    v47 = malloc_good_size(8 * v46 + 8);
    v48 = malloc_type_malloc(v47, 0x1020040D5A9D86FuLL);
    if (!v48)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v45 = v48;
    *v48 = (v47 + 0x7FFFFFFF8) >> 3;
    if (v13)
    {
      memcpy(v48 + 2, v14, 8 * v12);
      v49 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v49 = qword_1ED415F50;
      v49[1] = v13;
      qword_1ED415F50 = v49;
    }

    atomic_store(v45, &qword_1ED415F38);
    goto LABEL_88;
  }

LABEL_110:
  v59 = explicit + 24;
  v60 = *(*(explicit + 40) - 8);
  v61 = (*(explicit + 32) + *(v60 + 64));
  v62 = *(v60 + 80) & 0xF8;
  if (_swift_allocObject == _swift_allocObject_)
  {
    if (*v59 <= 0x7FFuLL)
    {
      v63 = *v59;
    }

    else
    {
      v63 = 0;
    }

    v64 = explicit + 24;
    if (v63 && (v63 != 773 || (v64 = *(explicit + 32)) == 0) || (*(v64 + 32) & 2) != 0)
    {
      v65 = 0x80000000000;
    }

    else
    {
      v65 = 0x40000000000;
    }

    result = swift::swift_slowAllocTyped(v61, v62 | 7, v65 | v59 ^ HIDWORD(v59));
    *result = v59;
    result[1] = 3;
  }

  else
  {
    if ((_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly & 1) == 0)
    {
      _swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly = 1;
    }

    return _swift_allocObject(explicit + 24, v61, v62 | 7);
  }

  return result;
}

uint64_t swift_release(uint64_t result)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_release(result);
  }

  if (result >= 1)
  {
    v1 = result;
    result += 8;
    v2 = *(v1 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v1 + 8);
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(result, v4, 1);
      }
    }

    else
    {
      v4 = *(v1 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(result, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

void swift_deallocBox(atomic_ullong *a1)
{
  v1 = a1[1];
  if ((v1 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
  {
    if ((v1 & 0x8000000000000000) == 0 || (v2 = v1, v3 = 0xFFFFFFFFLL, v1 == 0xFFFFFFFFLL))
    {
      a1[1] = v1 & 0x80000000FFFFFFFFLL | 0x100000000;
    }

    else
    {
      _X4 = 0;
      _X5 = 0;
      v6 = 8 * v1 + 16;
      __asm { CASP            X4, X5, X4, X5, [X8] }

      _X2 = _X4 - 0x200000000;
      if (_X4 - 0x200000000 < 0)
      {
        if (_X4 != -1)
        {
LABEL_9:
          v15 = a1;
          swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)0>(v6, _X4, _X5 | (v2 << 32), 1);
          a1 = v15;
        }
      }

      else
      {
        v13 = _X4;
        while (1)
        {
          v14 = _X5 | (v3 << 32);
          _X5 = v14;
          __asm { CASPL           X4, X5, X2, X3, [X8] }

          if (_X4 == v13)
          {
            break;
          }

          v2 = HIDWORD(v14);
          v13 = _X4;
          v3 = HIDWORD(v14);
          _X2 = _X4 - 0x200000000;
          if (_X4 - 0x200000000 < 0)
          {
            if (_X4 == -1)
            {
              break;
            }

            goto LABEL_9;
          }
        }
      }
    }
  }

  v16 = a1[1];
  if (v16 < 0)
  {
    if ((~v16 & 0x1FFFFFFFFLL) != 0)
    {
LABEL_19:

      swift_unownedRelease(a1);
      return;
    }
  }

  else if ((v16 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

  if ((v16 & 0x7FFFFFFEFFFFFFFELL) != 2)
  {
    goto LABEL_19;
  }

  a1;
}

void swift_deallocObject(void *a1)
{
  v1 = *(a1 + 1);
  if (v1 < 0)
  {
    if ((~v1 & 0x1FFFFFFFFLL) != 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

  if ((v1 & 0x7FFFFFFEFFFFFFFELL) == 2)
  {
    a1;
    return;
  }

LABEL_7:
  swift_unownedRelease(a1);
}

uint64_t swift_projectBox(uint64_t result)
{
  if (result)
  {
    result += *(*result + 8);
  }

  return result;
}

_UNKNOWN **swift_allocEmptyBox()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    swift_allocEmptyBox_cold_1();
  }

  {
    v0 = qword_1EE322188;
    v1 = qword_1EE322188 + 0x200000000;
    if (qword_1EE322188 + 0x200000000 < 0)
    {
      v2 = qword_1EE322188;
LABEL_9:
      if (v2 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(&qword_1EE322188, v2, 1);
      }
    }

    else
    {
      v2 = qword_1EE322188;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(&qword_1EE322188, &v2, v1, memory_order_relaxed, memory_order_relaxed);
        if (v2 == v0)
        {
          break;
        }

        v0 = v2;
        v1 = v2 + 0x200000000;
        if (v2 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

atomic_ullong *swift_retain(atomic_ullong *result)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(result);
  }

  if (result >= 1)
  {
    v1 = result[1];
    v2 = v1 + 0x200000000;
    if (v1 + 0x200000000 < 0)
    {
      v3 = result[1];
LABEL_9:
      if (v3 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(result + 1, v3, 1);
      }
    }

    else
    {
      v3 = result[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(result + 1, &v3, v2, memory_order_relaxed, memory_order_relaxed);
        if (v3 == v1)
        {
          break;
        }

        v1 = v3;
        v2 = v3 + 0x200000000;
        if (v3 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x1(uint64_t a1, atomic_ullong *a2)
{
  result = a2;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a2);
  }

  if (a2 >= 1)
  {
    v3 = a2 + 1;
    v4 = a2[1];
    v5 = v4 + 0x200000000;
    if (v4 + 0x200000000 < 0)
    {
      v6 = a2[1];
LABEL_9:
      if (v6 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(result + 1, v6, 1);
      }
    }

    else
    {
      v6 = a2[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v3, &v6, v5, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v4)
        {
          break;
        }

        v4 = v6;
        v5 = v6 + 0x200000000;
        if (v6 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x2(uint64_t a1, uint64_t a2, atomic_ullong *a3)
{
  result = a3;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a3);
  }

  if (a3 >= 1)
  {
    v4 = a3[1];
    v5 = v4 + 0x200000000;
    if (v4 + 0x200000000 < 0)
    {
      v6 = a3[1];
LABEL_9:
      if (v6 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(a3 + 1, v6, 1);
      }
    }

    else
    {
      v6 = a3[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(a3 + 1, &v6, v5, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v4)
        {
          break;
        }

        v4 = v6;
        v5 = v6 + 0x200000000;
        if (v6 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x3(uint64_t a1, uint64_t a2, uint64_t a3, atomic_ullong *a4)
{
  result = a4;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a4);
  }

  if (a4 >= 1)
  {
    v5 = a4[1];
    v6 = v5 + 0x200000000;
    if (v5 + 0x200000000 < 0)
    {
      v7 = a4[1];
LABEL_9:
      if (v7 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(a4 + 1, v7, 1);
      }
    }

    else
    {
      v7 = a4[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(a4 + 1, &v7, v6, memory_order_relaxed, memory_order_relaxed);
        if (v7 == v5)
        {
          break;
        }

        v5 = v7;
        v6 = v7 + 0x200000000;
        if (v7 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_ullong *a5)
{
  result = a5;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a5);
  }

  if (a5 >= 1)
  {
    v6 = a5[1];
    v7 = v6 + 0x200000000;
    if (v6 + 0x200000000 < 0)
    {
      v8 = a5[1];
LABEL_9:
      if (v8 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(a5 + 1, v8, 1);
      }
    }

    else
    {
      v8 = a5[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(a5 + 1, &v8, v7, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v6)
        {
          break;
        }

        v6 = v8;
        v7 = v8 + 0x200000000;
        if (v8 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, atomic_ullong *a6)
{
  result = a6;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a6);
  }

  if (a6 >= 1)
  {
    v7 = a6[1];
    v8 = v7 + 0x200000000;
    if (v7 + 0x200000000 < 0)
    {
      v9 = a6[1];
LABEL_9:
      if (v9 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(a6 + 1, v9, 1);
      }
    }

    else
    {
      v9 = a6[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(a6 + 1, &v9, v8, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v7)
        {
          break;
        }

        v7 = v9;
        v8 = v9 + 0x200000000;
        if (v9 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_ullong *a7)
{
  result = a7;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a7);
  }

  if (a7 >= 1)
  {
    v8 = a7[1];
    v9 = v8 + 0x200000000;
    if (v8 + 0x200000000 < 0)
    {
      v10 = a7[1];
LABEL_9:
      if (v10 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(a7 + 1, v10, 1);
      }
    }

    else
    {
      v10 = a7[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(a7 + 1, &v10, v9, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v8)
        {
          break;
        }

        v8 = v10;
        v9 = v10 + 0x200000000;
        if (v10 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, atomic_ullong *a8)
{
  result = a8;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a8);
  }

  if (a8 >= 1)
  {
    v9 = a8[1];
    v10 = v9 + 0x200000000;
    if (v9 + 0x200000000 < 0)
    {
      v11 = a8[1];
LABEL_9:
      if (v11 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(a8 + 1, v11, 1);
      }
    }

    else
    {
      v11 = a8[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(a8 + 1, &v11, v10, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v9)
        {
          break;
        }

        v9 = v11;
        v10 = v11 + 0x200000000;
        if (v11 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x8@<X0>(atomic_ullong *a1@<X8>)
{
  result = a1;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(a1);
  }

  if (a1 >= 1)
  {
    v2 = a1 + 1;
    v3 = result[1];
    v4 = v3 + 0x200000000;
    if (v3 + 0x200000000 < 0)
    {
      v5 = result[1];
LABEL_9:
      if (v5 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(result + 1, v5, 1);
      }
    }

    else
    {
      v5 = result[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v2, &v5, v4, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v3)
        {
          break;
        }

        v3 = v5;
        v4 = v5 + 0x200000000;
        if (v5 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x9()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x10()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0 + 1;
    v3 = v0[1];
    v4 = v3 + 0x200000000;
    if (v3 + 0x200000000 < 0)
    {
      v5 = result[1];
LABEL_9:
      if (v5 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(result + 1, v5, 1);
      }
    }

    else
    {
      v5 = result[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v2, &v5, v4, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v3)
        {
          break;
        }

        v3 = v5;
        v4 = v5 + 0x200000000;
        if (v5 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x11()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0 + 1;
    v3 = v0[1];
    v4 = v3 + 0x200000000;
    if (v3 + 0x200000000 < 0)
    {
      v5 = result[1];
LABEL_9:
      if (v5 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(result + 1, v5, 1);
      }
    }

    else
    {
      v5 = result[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v2, &v5, v4, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v3)
        {
          break;
        }

        v3 = v5;
        v4 = v5 + 0x200000000;
        if (v5 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x12()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x13()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x14()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x15()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x19()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x20()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x21()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x22()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x23()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x24()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x25()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x26()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x27()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_retain_x28()
{
  result = v0;
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_retain(v0);
  }

  if (v0 >= 1)
  {
    v2 = v0[1];
    v3 = v2 + 0x200000000;
    if (v2 + 0x200000000 < 0)
    {
      v4 = v0[1];
LABEL_9:
      if (v4 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow(v0 + 1, v4, 1);
      }
    }

    else
    {
      v4 = v0[1];
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v0 + 1, &v4, v3, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 + 0x200000000;
        if (v4 + 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t swift_nonatomic_retain(uint64_t result)
{
  if (result >= 1)
  {
    v1 = *(result + 8);
    if (v1 + 0x200000000 < 0)
    {
      if (v1 != -1)
      {
        v2 = result;
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementNonAtomicSlow((result + 8), v1, 1);
        return v2;
      }
    }

    else
    {
      *(result + 8) = v1 + 0x200000000;
    }
  }

  return result;
}

uint64_t swift_retain_n(uint64_t result, uint64_t a2)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    v8 = _swift_retain_n[0];

    return v8(result, a2);
  }

  else if (result >= 1)
  {
    v3 = *(result + 8);
    if (a2 == 1 || (v3 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
    {
      v4 = a2 << 33;
      v5 = v3 + (a2 << 33);
      if (v5 < 0)
      {
        v6 = *(result + 8);
LABEL_12:
        if (v6 != -1)
        {
          v7 = result;
          swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementSlow((result + 8), v6, a2);
          return v7;
        }
      }

      else
      {
        v6 = *(result + 8);
        while (1)
        {
          atomic_compare_exchange_strong_explicit((result + 8), &v6, v5, memory_order_relaxed, memory_order_relaxed);
          if (v6 == v3)
          {
            break;
          }

          v3 = v6;
          v5 = v6 + v4;
          if (v6 + v4 < 0)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t swift_nonatomic_retain_n(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v3 = *(result + 8);
    if (a2 == 1 || (v3 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
    {
      if (v3 + (a2 << 33) < 0)
      {
        if (v3 != -1)
        {
          v4 = result;
          swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementNonAtomicSlow((result + 8), v3, a2);
          return v4;
        }
      }

      else
      {
        *(result + 8) = v3 + (a2 << 33);
      }
    }
  }

  return result;
}

void swift_release_x1(uint64_t a1, uint64_t a2)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a2);
  }

  else if (a2 >= 1)
  {
    v2 = (a2 + 8);
    v3 = *(a2 + 8);
    v4 = v3 - 0x200000000;
    if (v3 - 0x200000000 < 0)
    {
      v5 = *(a2 + 8);
LABEL_9:
      if (v5 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v2, v5, 1);
      }
    }

    else
    {
      v5 = *(a2 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v2, &v5, v4, memory_order_release, memory_order_relaxed);
        if (v5 == v3)
        {
          break;
        }

        v3 = v5;
        v4 = v5 - 0x200000000;
        if (v5 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a3);
  }

  else if (a3 >= 1)
  {
    v3 = (a3 + 8);
    v4 = *(a3 + 8);
    v5 = v4 - 0x200000000;
    if (v4 - 0x200000000 < 0)
    {
      v6 = *(a3 + 8);
LABEL_9:
      if (v6 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v3, v6, 1);
      }
    }

    else
    {
      v6 = *(a3 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v3, &v6, v5, memory_order_release, memory_order_relaxed);
        if (v6 == v4)
        {
          break;
        }

        v4 = v6;
        v5 = v6 - 0x200000000;
        if (v6 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a4);
  }

  else if (a4 >= 1)
  {
    v4 = (a4 + 8);
    v5 = *(a4 + 8);
    v6 = v5 - 0x200000000;
    if (v5 - 0x200000000 < 0)
    {
      v7 = *(a4 + 8);
LABEL_9:
      if (v7 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v4, v7, 1);
      }
    }

    else
    {
      v7 = *(a4 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v4, &v7, v6, memory_order_release, memory_order_relaxed);
        if (v7 == v5)
        {
          break;
        }

        v5 = v7;
        v6 = v7 - 0x200000000;
        if (v7 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a5);
  }

  else if (a5 >= 1)
  {
    v5 = (a5 + 8);
    v6 = *(a5 + 8);
    v7 = v6 - 0x200000000;
    if (v6 - 0x200000000 < 0)
    {
      v8 = *(a5 + 8);
LABEL_9:
      if (v8 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v5, v8, 1);
      }
    }

    else
    {
      v8 = *(a5 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v5, &v8, v7, memory_order_release, memory_order_relaxed);
        if (v8 == v6)
        {
          break;
        }

        v6 = v8;
        v7 = v8 - 0x200000000;
        if (v8 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a6);
  }

  else if (a6 >= 1)
  {
    v6 = (a6 + 8);
    v7 = *(a6 + 8);
    v8 = v7 - 0x200000000;
    if (v7 - 0x200000000 < 0)
    {
      v9 = *(a6 + 8);
LABEL_9:
      if (v9 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v6, v9, 1);
      }
    }

    else
    {
      v9 = *(a6 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v6, &v9, v8, memory_order_release, memory_order_relaxed);
        if (v9 == v7)
        {
          break;
        }

        v7 = v9;
        v8 = v9 - 0x200000000;
        if (v9 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a7);
  }

  else if (a7 >= 1)
  {
    v7 = (a7 + 8);
    v8 = *(a7 + 8);
    v9 = v8 - 0x200000000;
    if (v8 - 0x200000000 < 0)
    {
      v10 = *(a7 + 8);
LABEL_9:
      if (v10 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v7, v10, 1);
      }
    }

    else
    {
      v10 = *(a7 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v7, &v10, v9, memory_order_release, memory_order_relaxed);
        if (v10 == v8)
        {
          break;
        }

        v8 = v10;
        v9 = v10 - 0x200000000;
        if (v10 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a8);
  }

  else if (a8 >= 1)
  {
    v8 = (a8 + 8);
    v9 = *(a8 + 8);
    v10 = v9 - 0x200000000;
    if (v9 - 0x200000000 < 0)
    {
      v11 = *(a8 + 8);
LABEL_9:
      if (v11 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v8, v11, 1);
      }
    }

    else
    {
      v11 = *(a8 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v8, &v11, v10, memory_order_release, memory_order_relaxed);
        if (v11 == v9)
        {
          break;
        }

        v9 = v11;
        v10 = v11 - 0x200000000;
        if (v11 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x8(uint64_t a1@<X8>)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(a1);
  }

  else if (a1 >= 1)
  {
    v1 = (a1 + 8);
    v2 = *(a1 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(a1 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(a1 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x9()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = v2;
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = v2;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x10()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = v2;
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = v2;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x11()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x12()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x13()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x14()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x15()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x19()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x20()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x21()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x22()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x23()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x24()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x25()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x26()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x27()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void swift_release_x28()
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    _swift_release(v0);
  }

  else if (v0 >= 1)
  {
    v1 = (v0 + 8);
    v2 = *(v0 + 8);
    v3 = v2 - 0x200000000;
    if (v2 - 0x200000000 < 0)
    {
      v4 = *(v0 + 8);
LABEL_9:
      if (v4 != -1)
      {
        swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(v1, v4, 1);
      }
    }

    else
    {
      v4 = *(v0 + 8);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v1, &v4, v3, memory_order_release, memory_order_relaxed);
        if (v4 == v2)
        {
          break;
        }

        v2 = v4;
        v3 = v4 - 0x200000000;
        if (v4 - 0x200000000 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

uint64_t swift_nonatomic_release(uint64_t result)
{
  if (result >= 1)
  {
    v1 = *(result + 8);
    if ((v1 & 0x80000000FFFFFFFELL) == 2 && v1 >> 33)
    {
      *(result + 8) = v1 - 0x200000000;
    }

    else
    {
      return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementNonAtomicSlow<(swift::PerformDeinit)1>((result + 8), v1, 1);
    }
  }

  return result;
}

uint64_t swift_release_n(uint64_t result, uint64_t a2)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    return _swift_release_n(result, a2);
  }

  if (result >= 1)
  {
    v3 = *(result + 8);
    if (a2 == 1 || (v3 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
    {
      result += 8;
      if (a2 < 2 || (v3 & 0x8000000000000000) == 0)
      {
        v4 = a2 << 33;
        while (v3 - v4 >= 0)
        {
          v5 = v3;
          atomic_compare_exchange_strong_explicit(result, &v5, v3 - v4, memory_order_release, memory_order_relaxed);
          if (v5 == v3)
          {
            return result;
          }

          v3 = v5;
          if (a2 >= 2 && v5 < 0)
          {
            break;
          }
        }
      }

      if (v3 != -1)
      {
        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(result, v3, a2);
      }
    }
  }

  return result;
}

uint64_t swift_nonatomic_release_n(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v3 = *(result + 8);
    if ((v3 & 0x80000000FFFFFFFELL) == 2 && v3 - (a2 << 33) >= 0)
    {
      *(result + 8) = v3 - (a2 << 33);
    }

    else
    {
      return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementNonAtomicSlow<(swift::PerformDeinit)1>((result + 8), v3, a2);
    }
  }

  return result;
}

uint64_t swift_retainCount(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  _X0 = *(a1 + 8);
  if ((_X0 & 0x8000000000000000) != 0 && _X0 != 0xFFFFFFFFLL)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }
  }

  return ((_X0 >> 33) & 0x3FFFFFFF) + 1;
}

uint64_t swift_unownedRetainCount(uint64_t a1)
{
  _X0 = *(a1 + 8);
  if (_X0 < 0 && _X0 != 0xFFFFFFFFLL)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }
  }

  return _X0 >> 1;
}

BOOL swift_weakRetainCount(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x8000000000000000) == 0 || v1 == 0xFFFFFFFFLL)
  {
    return (*(a1 + 8) & 0xFFFFFFFELL) != 0;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  return 0;
}

uint64_t swift_unownedRetain(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = result;
    swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnowned((result + 8), 1, a3, a4);
    return v4;
  }

  return result;
}

atomic_ullong *swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnowned(atomic_ullong *result, uint64_t a2, const char *a3, char *a4)
{
  v4 = *result;
  if ((~*result & 0x80000000FFFFFFFFLL) != 0)
  {
    if (v4 < 0)
    {
      goto LABEL_11;
    }

    v5 = *result;
    do
    {
      do
      {
        v6 = 2 * (a2 + (v5 >> 1));
        if (v6 == -2 || v6 >> 1 != a2 + (v5 >> 1))
        {
          return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnownedSlow(result, a2, a3, a4);
        }

        v8 = v5 & 0xFFFFFFFF00000001 | (2 * (v6 >> 1));
        v4 = v5;
        atomic_compare_exchange_strong_explicit(result, &v4, v8, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v5)
        {
          return result;
        }

        v5 = v4;
      }

      while ((v4 & 0x8000000000000000) == 0);
LABEL_11:
      v5 = v4;
    }

    while (v4 == 0xFFFFFFFFLL);
    _X2 = 0;
    result = (8 * v4 + 16);
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X0] }

    if ((_X2 & 0x8000000000000000) == 0 || _X2 != 0xFFFFFFFFLL)
    {
      v15 = a2 + (_X2 >> 1);
      v16 = 2 * (a2 + (_X2 >> 1));
      if (v16 == -2 || v16 >> 1 != v15)
      {
LABEL_26:
        swift::RefCounts<swift::SideTableRefCountBits>::incrementUnownedSlow(result, a2, _X2, _X3);
      }

      LODWORD(_X5) = 0;
      while (1)
      {
        _X6 = _X2 & 0xFFFFFFFF00000001 | (2 * (v16 >> 1));
        _X3 = _X5 | (v15 << 32);
        _X5 = _X3;
        __asm { CASP            X4, X5, X6, X7, [X0] }

        if (_X4 == _X2)
        {
          break;
        }

        v15 = HIDWORD(_X3);
        v16 = 2 * (a2 + (_X4 >> 1));
        v21 = v16 != -2 && v16 >> 1 == a2 + (_X4 >> 1);
        _X2 = _X4;
        if (!v21)
        {
          goto LABEL_26;
        }
      }
    }
  }

  return result;
}

void swift_unownedRelease(atomic_ullong *a1)
{
  if (a1 < 1)
  {
    return;
  }

  v1 = a1[1];
  if ((~v1 & 0x80000000FFFFFFFFLL) == 0)
  {
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (v1 != 0xFFFFFFFFLL)
  {
    v4 = a1;
    if (!swift::HeapObjectSideTableEntry::decrementUnownedShouldFree((8 * v1), 1))
    {
      return;
    }

    a1 = v4;
    goto LABEL_12;
  }

LABEL_5:
  while (1)
  {
    v2 = v1;
    v3 = (v1 >> 1) - 1;
    atomic_compare_exchange_strong_explicit(a1 + 1, &v1, v1 & 0xFFFFFFFF00000001 | (2 * (v3 & 0x7FFFFFFF)), memory_order_relaxed, memory_order_relaxed);
    if (v1 == v2)
    {
      break;
    }

    if (v1 < 0)
    {
      goto LABEL_4;
    }
  }

  if ((v3 & 0x7FFFFFFF) == 0)
  {
LABEL_12:

    a1;
  }
}

uint64_t swift_nonatomic_unownedRetain(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = result;
    swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnownedNonAtomic((result + 8), 1, a3, a4);
    return v4;
  }

  return result;
}

atomic_ullong *swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnownedNonAtomic(atomic_ullong *result, uint64_t a2, const char *a3, char *a4)
{
  v5 = *result;
  if ((~*result & 0x80000000FFFFFFFFLL) != 0)
  {
    if ((v5 & 0x8000000000000000) == 0 || v5 == 0xFFFFFFFFLL)
    {
      v14 = 2 * (a2 + (v5 >> 1));
      if (v14 != -2 && v14 >> 1 == a2 + (v5 >> 1))
      {
        *result = v5 & 0xFFFFFFFF00000001 | (2 * (v14 >> 1));
      }

      else
      {

        return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnownedSlow(result, a2, a3, a4);
      }
    }

    else
    {
      _X2 = 0;
      _X3 = 0;
      result = (8 * v5 + 16);
      __asm { CASP            X2, X3, X2, X3, [X0] }

      if ((~_X2 & 0x80000000FFFFFFFFLL) != 0)
      {
        v12 = 2 * (a2 + (_X2 >> 1));
        _ZF = v12 != -2 && v12 >> 1 == a2 + (_X2 >> 1);
        if (!_ZF)
        {
          swift::RefCounts<swift::SideTableRefCountBits>::incrementUnownedSlow(result, a2, _X2, 0);
        }

        _X2 = _X2 & 0xFFFFFFFF00000001 | (2 * (v12 >> 1));
        v17 = *result;
        do
        {
          _X7 = result[1];
          __asm { CASP            X6, X7, X2, X3, [X0] }

          _ZF = _X6 == v17;
          v17 = _X6;
        }

        while (!_ZF);
      }
    }
  }

  return result;
}

void swift_nonatomic_unownedRelease(unint64_t *a1)
{
  if (a1 >= 1 && swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::decrementUnownedShouldFreeNonAtomic(a1 + 1, 1))
  {

    a1;
  }
}

BOOL swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::decrementUnownedShouldFreeNonAtomic(unint64_t *a1, int a2)
{
  v2 = *a1;
  if ((~*a1 & 0x80000000FFFFFFFFLL) == 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0 || v2 == 0xFFFFFFFFLL)
  {
    v18 = (v2 >> 1) - a2;
    *a1 = v2 & 0xFFFFFFFF00000001 | (2 * (v18 & 0x7FFFFFFF));
    return (v18 & 0x7FFFFFFF) == 0;
  }

  else
  {
    _X2 = 0;
    _X3 = 0;
    v6 = 8 * v2;
    __asm { CASP            X2, X3, X2, X3, [X8] }

    if ((~_X2 & 0x80000000FFFFFFFFLL) == 0)
    {
      return 0;
    }

    v12 = (_X2 >> 1) - a2;
    _X2 = _X2 & 0xFFFFFFFF00000001 | (2 * (v12 & 0x7FFFFFFF));
    v14 = v12 & 0x7FFFFFFF;
    v15 = *(v6 + 16);
    do
    {
      _X7 = *(v6 + 24);
      __asm { CASP            X6, X7, X2, X3, [X9] }

      _ZF = _X6 == v15;
      v15 = _X6;
    }

    while (!_ZF);
    if (!v14)
    {
      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      v22 = *(v6 + 16);
      do
      {
        _X7 = *(v6 + 24);
        __asm { CASP            X6, X7, X2, X3, [X8] }

        _ZF = _X6 == v22;
        v22 = _X6;
      }

      while (!_ZF);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t swift_unownedRetain_n(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = result;
    swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnowned((result + 8), a2, a3, a4);
    return v4;
  }

  return result;
}

void swift_unownedRelease_n(atomic_ullong *a1, int a2)
{
  if (a1 < 1)
  {
    return;
  }

  v2 = a1[1];
  if ((~v2 & 0x80000000FFFFFFFFLL) == 0)
  {
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (v2 != 0xFFFFFFFFLL)
  {
    v5 = a1;
    if (!swift::HeapObjectSideTableEntry::decrementUnownedShouldFree((8 * v2), a2))
    {
      return;
    }

    a1 = v5;
    goto LABEL_12;
  }

LABEL_5:
  while (1)
  {
    v3 = v2;
    v4 = (v2 >> 1) - a2;
    atomic_compare_exchange_strong_explicit(a1 + 1, &v2, v2 & 0xFFFFFFFF00000001 | (2 * (v4 & 0x7FFFFFFF)), memory_order_relaxed, memory_order_relaxed);
    if (v2 == v3)
    {
      break;
    }

    if (v2 < 0)
    {
      goto LABEL_4;
    }
  }

  if ((v4 & 0x7FFFFFFF) == 0)
  {
LABEL_12:

    a1;
  }
}

uint64_t swift_nonatomic_unownedRetain_n(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = result;
    swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::incrementUnownedNonAtomic((result + 8), a2, a3, a4);
    return v4;
  }

  return result;
}

void swift_nonatomic_unownedRelease_n(unint64_t *a1, int a2)
{
  if (a1 >= 1 && swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::decrementUnownedShouldFreeNonAtomic(a1 + 1, a2))
  {

    a1;
  }
}

uint64_t swift_tryRetain(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (_swift_enableSwizzlingOfAllocationAndRefCountingFunctions_forInstrumentsOnly)
  {
    v9 = _swift_tryRetain;

    return v9(result, &_swift_tryRetain, v9, a4);
  }

  else if (result < 1)
  {
    return 0;
  }

  else
  {
    v5 = *(result + 8);
    if (v5 < 0)
    {
      goto LABEL_6;
    }

LABEL_4:
    if ((v5 & 0x100000000) != 0)
    {
      return 0;
    }

    while (v5 + 0x200000000 >= 0)
    {
      v6 = v5;
      atomic_compare_exchange_strong_explicit((result + 8), &v6, v5 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        return result;
      }

      v5 = v6;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_6:
      if ((~v5 & 0x1FFFFFFFFLL) == 0)
      {
        return 0;
      }
    }

    if (v5 != -1)
    {
      v7 = result;
      v8 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementSlow((result + 8), v5, a3, a4);
      result = v7;
      if (!v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift_isDeallocating(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if ((v1 & 0x8000000000000000) == 0 || v1 == 0xFFFFFFFFLL)
  {
    return HIDWORD(v1) & 1;
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASP            X0, X1, X0, X1, [X8] }

  return HIDWORD(_X0) & 1;
}

uint64_t swift_setDeallocating(uint64_t result)
{
  v1 = *(result + 8);
  v2 = v1 & 0x80000000FFFFFFFFLL;
  if ((v1 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
  {
    if ((v1 & 0x8000000000000000) == 0 || (v3 = v1, v1 == 0xFFFFFFFFLL))
    {
      *(result + 8) = v2 | 0x100000000;
    }

    else
    {
      _X4 = 0;
      _X5 = 0;
      result = 8 * v1 + 16;
      __asm { CASP            X4, X5, X4, X5, [X0] }

      _X2 = _X4 - 0x200000000;
      if (_X4 - 0x200000000 < 0)
      {
        if (_X4 != -1)
        {
          return swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)0>(result, _X4, _X5 | (v2 << 32), 1);
        }
      }

      else
      {
        v12 = _X4;
        while (1)
        {
          v13 = _X5 | (v3 << 32);
          _X5 = v13;
          __asm { CASPL           X4, X5, X2, X3, [X0] }

          if (_X4 == v12)
          {
            break;
          }

          v2 = HIDWORD(v13);
          v12 = _X4;
          v3 = HIDWORD(v13);
          _X2 = _X4 - 0x200000000;
          if (_X4 - 0x200000000 < 0)
          {
            if (_X4 == -1)
            {
              return result;
            }

            return swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)0>(result, _X4, _X5 | (v2 << 32), 1);
          }
        }
      }
    }
  }

  return result;
}

atomic_ullong *swift_unownedRetainStrong(atomic_ullong *result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = result[1];
    if (v4 < 0)
    {
      goto LABEL_5;
    }

LABEL_3:
    if ((v4 & 0x100000000) != 0)
    {
      goto LABEL_13;
    }

    while (v4 + 0x200000000 >= 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong_explicit(result + 1, &v5, v4 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }

      v4 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_5:
      if ((~v4 & 0x1FFFFFFFFLL) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v4 != -1)
    {
      v6 = result;
      v7 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementSlow((result + 1), v4, a3, a4);
      result = v6;
      if ((v7 & 1) == 0)
      {
LABEL_13:
        swift::swift_abortRetainUnowned(result, v4, a3, a4);
      }
    }
  }

  return result;
}

uint64_t swift_nonatomic_unownedRetainStrong(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = *(result + 8);
    if (v4 < 0)
    {
      if ((~v4 & 0x1FFFFFFFFLL) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v4 & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    if (v4 + 0x200000000 < 0)
    {
      if (v4 != -1)
      {
        v6 = result;
        v5 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementNonAtomicSlow((result + 8), v4, a3, a4);
        result = v6;
        if ((v5 & 1) == 0)
        {
LABEL_11:
          swift::swift_abortRetainUnowned(result, v4, a3, a4);
        }
      }
    }

    else
    {
      *(result + 8) = v4 + 0x200000000;
    }
  }

  return result;
}

uint64_t swift_unownedRetainStrongAndRelease(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = (result + 8);
    v5 = *(result + 8);
    if (v5 < 0)
    {
      goto LABEL_5;
    }

LABEL_3:
    if ((v5 & 0x100000000) != 0)
    {
      goto LABEL_16;
    }

    while (v5 + 0x200000000 >= 0)
    {
      v6 = v5;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_12;
      }

      v5 = v6;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_5:
      if ((~v5 & 0x1FFFFFFFFLL) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v5 != -1)
    {
      v7 = result;
      v8 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementSlow((result + 8), v5, a3, a4);
      result = v7;
      if ((v8 & 1) == 0)
      {
LABEL_16:
        swift::swift_abortRetainUnowned(result, v5, a3, a4);
      }
    }

LABEL_12:
    v9 = *v4;
    if ((~*v4 & 0x80000000FFFFFFFFLL) != 0)
    {
      if (v9 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v10 = v9;
        atomic_compare_exchange_strong_explicit(v4, &v9, ((v9 & 0xFFFFFFFE) - 2) | v9 & 0xFFFFFFFF00000001, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v10)
        {
          break;
        }

        if (v9 < 0)
        {
LABEL_17:
          if (v9 != 0xFFFFFFFFLL)
          {

            return swift::HeapObjectSideTableEntry::decrementUnownedShouldFree((8 * v9), 1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t swift_nonatomic_unownedRetainStrongAndRelease(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  if (result >= 1)
  {
    v4 = *(result + 8);
    if (v4 < 0)
    {
      if ((~v4 & 0x1FFFFFFFFLL) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v4 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }

    if (v4 + 0x200000000 < 0)
    {
      if (v4 != -1)
      {
        v7 = result;
        v6 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::tryIncrementNonAtomicSlow((result + 8), v4, a3, a4);
        result = v7;
        if ((v6 & 1) == 0)
        {
LABEL_14:
          swift::swift_abortRetainUnowned(result, v4, a3, a4);
        }
      }
    }

    else
    {
      *(result + 8) = v4 + 0x200000000;
    }

    v5 = (result + 8);

    return swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::decrementUnownedShouldFreeNonAtomic(v5, 1);
  }

  return result;
}

uint64_t swift_unownedCheck(uint64_t result, const void *a2, const char *_X2, char *_X3)
{
  if (result >= 1)
  {
    v4 = *(result + 8);
    if ((v4 & 0x8000000000000000) == 0 || v4 == 0xFFFFFFFFLL)
    {
      if ((v4 & 0x100000000) != 0)
      {
LABEL_5:
        swift::swift_abortRetainUnowned(result, a2, _X2, _X3);
      }
    }

    else
    {
      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }

      if ((_X2 & 0x100000000) != 0)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void swift_deallocClassInstance(uint64_t a1)
{
  if (a1 >= 1)
  {
    _X2 = *(a1 + 8);
    if ((_X2 & 0x8000000000000000) != 0 && _X2 != 0xFFFFFFFFLL)
    {
      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X8] }
    }

    v8 = (_X2 >> 33) & 0x3FFFFFFF;
    if (v8)
    {
      swift_deallocClassInstance_cold_1(a1, v8);
    }
  }

  if ((*(a1 + 8) & 0x8000000000000001) != 1)
  {
    v9 = a1;
    objc_destructInstance(a1);
    a1 = v9;
  }

  v10 = *(a1 + 8);
  if (v10 < 0)
  {
    if ((~v10 & 0x1FFFFFFFFLL) != 0)
    {
LABEL_16:

      swift_unownedRelease(a1);
      return;
    }
  }

  else if ((v10 & 0x100000000) == 0)
  {
    goto LABEL_16;
  }

  if ((v10 & 0x7FFFFFFEFFFFFFFELL) != 2)
  {
    goto LABEL_16;
  }

  a1;
}

void swift_deallocPartialClassInstance(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *a1 & 0x7FFFFFFFFFFFF8;
  if ((*v3 - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    v3 = *((*a1 & 0x7FFFFFFFFFFFF8) + 8);
  }

  if ((*(v3 + 32) & 2) == 0)
  {
    goto LABEL_28;
  }

  v11 = a1;
  if (v3 != a2)
  {
    while ((*(v3 + 32) & 2) != 0)
    {
      v9 = *(v3 + 72);
      if (v9)
      {
        v9();
        a1 = v11;
      }

      if (*(v3 + 8))
      {
        v3 = *(v3 + 8);
      }

      else
      {
        v3 = 0;
      }

      v10 = *v3;
      if (*v3 > 0x7FFuLL)
      {
        LODWORD(v10) = 0;
      }

      if (v10)
      {
        if (v10 == 773)
        {
          v3 = *(v3 + 8);
        }

        else
        {
          v3 = 0;
        }
      }

      if (v3 == a2)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_27;
  }

LABEL_6:
  if ((swift::usesNativeSwiftReferenceCounting(v3) & 1) == 0)
  {
    a1 = v11;
    while ((*(v3 + 32) & 2) != 0)
    {
      if (*(v3 + 8))
      {
        v3 = *(v3 + 8);
      }

      else
      {
        v3 = 0;
      }

      if ((*v3 - 2048) >= 0xFFFFFFFFFFFFF801)
      {
        v3 = *(v3 + 8);
      }
    }

LABEL_27:
    object_setClass(a1, v3);
    a1 = v11;
LABEL_28:

    return;
  }

  v4 = v11;
  v5 = v11 + 1;
  v6 = v11[1];
  v7 = v6 - 0x200000000;
  if (v6 - 0x200000000 < 0)
  {
    v8 = v11[1];
LABEL_38:
    if (v8 != -1)
    {
      swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)0>(v5, v8, 1);
      v4 = v11;
    }
  }

  else
  {
    v8 = v11[1];
    while (1)
    {
      atomic_compare_exchange_strong_explicit(v5, &v8, v7, memory_order_release, memory_order_relaxed);
      if (v8 == v6)
      {
        break;
      }

      v6 = v8;
      v7 = v8 - 0x200000000;
      if (v8 - 0x200000000 < 0)
      {
        goto LABEL_38;
      }
    }
  }

  swift_deallocClassInstance(v4);
}

void swift_deallocUninitializedObject(atomic_ullong *a1)
{
  v1 = a1[1];
  if ((v1 & 0x80000000FFFFFFFFLL) != 0x80000000FFFFFFFFLL)
  {
    if ((v1 & 0x8000000000000000) == 0 || (v2 = v1, v3 = 0xFFFFFFFFLL, v1 == 0xFFFFFFFFLL))
    {
      a1[1] = v1 & 0x80000000FFFFFFFFLL | 0x100000000;
    }

    else
    {
      _X4 = 0;
      _X5 = 0;
      v6 = 8 * v1 + 16;
      __asm { CASP            X4, X5, X4, X5, [X8] }

      _X6 = _X4 - 0x200000000;
      if (_X4 - 0x200000000 < 0)
      {
        if (_X4 != -1)
        {
LABEL_9:
          v15 = a1;
          swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)0>(v6, _X4, _X5 | (v2 << 32), 1);
          a1 = v15;
        }
      }

      else
      {
        v13 = _X4;
        while (1)
        {
          v14 = _X5 | (v3 << 32);
          _X5 = v14;
          __asm { CASPL           X4, X5, X6, X7, [X8] }

          if (_X4 == v13)
          {
            break;
          }

          v2 = HIDWORD(v14);
          v13 = _X4;
          v3 = HIDWORD(v14);
          _X6 = _X4 - 0x200000000;
          if (_X4 - 0x200000000 < 0)
          {
            if (_X4 == -1)
            {
              break;
            }

            goto LABEL_9;
          }
        }
      }
    }
  }

  v16 = a1[1];
  if (v16 < 0)
  {
    if ((~v16 & 0x1FFFFFFFFLL) != 0)
    {
LABEL_19:

      swift_unownedRelease(a1);
      return;
    }
  }

  else if ((v16 & 0x100000000) == 0)
  {
    goto LABEL_19;
  }

  if ((v16 & 0x7FFFFFFEFFFFFFFELL) != 2)
  {
    goto LABEL_19;
  }

  a1;
}

uint64_t *swift_weakInit(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::formWeakReference((a2 + 8), a2);
    result = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3 | 1;
  }

  else
  {
    v4 = 0;
  }

  *result = v4;
  return result;
}

uint64_t *swift_weakAssign(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::formWeakReference((a2 + 8), a2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | 1;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = *a1;
  *a1 = v4;
  if ((v5 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    _X8 = 0;
    _X9 = 0;
    __asm { CASP            X8, X9, X8, X9, [X10] }

    _X6 = _X8;
    _X5 = 0;
    __asm { CASP            X4, X5, X6, X7, [X10] }

    if (_X4 != _X8)
    {
      _X2 = _X4;
      do
      {
        _X7 = 0;
        __asm { CASP            X6, X7, X2, X3, [X8] }

        v19 = _X6 ^ _X2;
        _X2 = _X6;
      }

      while (v19);
    }
  }

  return a1;
}

uint64_t swift_weakLoadStrong(void *a1)
{
  v2 = *a1 & 0x7FFFFFFFFFFFFFFELL;
  if (v2)
  {
    _X4 = 0;
    _X5 = 0;
    __asm { CASP            X4, X5, X4, X5, [X0] }

    if ((_X4 & 0x100000000) == 0)
    {
      _X3 = 0;
      while (1)
      {
        _X6 = _X4 + 0x200000000;
        if (_X4 + 0x200000000 < 0)
        {
          break;
        }

        v12 = _X3 | (v1 << 32);
        _X3 = v12;
        __asm { CASP            X2, X3, X6, X7, [X0] }

        if (_X2 == _X4)
        {
          return *v2;
        }

        v1 = HIDWORD(v12);
        _X4 = _X2;
        if ((_X2 & 0x100000000) != 0)
        {
          return 0;
        }
      }

      if (_X4 == -1 || swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow((v2 + 16), _X4, (_X3 | (v1 << 32)), _X3))
      {
        return *v2;
      }
    }
  }

  return 0;
}

uint64_t swift::WeakReference::nativeTakeStrong(swift::WeakReference *this)
{
  v2 = *this;
  *this = 0;
  v3 = (v2 & 0x7FFFFFFFFFFFFFFELL);
  if ((v2 & 0x7FFFFFFFFFFFFFFELL) == 0)
  {
    return 0;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X19] }

  if ((_X4 & 0x100000000) == 0)
  {
    _X3 = 0;
    while (1)
    {
      _X6 = _X4 + 0x200000000;
      if (_X4 + 0x200000000 < 0)
      {
        break;
      }

      v13 = _X3 | (v1 << 32);
      _X3 = v13;
      __asm { CASP            X2, X3, X6, X7, [X19] }

      if (_X2 == _X4)
      {
        goto LABEL_11;
      }

      v1 = HIDWORD(v13);
      _X4 = _X2;
      if ((_X2 & 0x100000000) != 0)
      {
        goto LABEL_7;
      }
    }

    if (_X4 == -1 || (v16 = v2 & 0x7FFFFFFFFFFFFFFELL, v17 = swift::RefCounts<swift::SideTableRefCountBits>::tryIncrementSlow((v3 + 2), _X4, (_X3 | (v1 << 32)), _X3), v3 = v16, v17))
    {
LABEL_11:
      v15 = *v3;
      goto LABEL_12;
    }
  }

LABEL_7:
  v15 = 0;
LABEL_12:
  _X8 = 0;
  _X9 = 0;
  __asm { CASP            X8, X9, X8, X9, [X19] }

  _X6 = _X8;
  _X5 = 0;
  __asm { CASP            X4, X5, X6, X7, [X19] }

  if (_X4 != _X8)
  {
    _X2 = _X4;
    do
    {
      _X7 = 0;
      __asm { CASP            X6, X7, X2, X3, [X19] }

      v27 = _X6 ^ _X2;
      _X2 = _X6;
    }

    while (v27);
  }

  return v15;
}

void swift_weakDestroy(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if ((v1 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    _X8 = 0;
    _X9 = 0;
    __asm { CASP            X8, X9, X8, X9, [X10] }

    _X6 = _X8;
    _X5 = 0;
    __asm { CASP            X4, X5, X6, X7, [X10] }

    if (_X4 != _X8)
    {
      _X2 = _X4;
      do
      {
        _X7 = 0;
        __asm { CASP            X6, X7, X2, X3, [X8] }

        v15 = _X6 ^ _X2;
        _X2 = _X6;
      }

      while (v15);
    }
  }
}