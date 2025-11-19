char *google::protobuf::internal::ExtensionSet::Erase(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v12 = a2;
  v3 = *(this + 4);
  result = *(this + 2);
  if (v3 >= 0x101)
  {
    return sub_1000FD578(result, &v12);
  }

  v5 = *(this + 5);
  v6 = &result[32 * v5];
  if (*(this + 5))
  {
    v7 = *(this + 5);
    do
    {
      v8 = v7 >> 1;
      v9 = &result[32 * (v7 >> 1)];
      v11 = *v9;
      v10 = (v9 + 8);
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        result = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (result != v6 && *result == a2)
  {
    if (v6 != result + 32)
    {
      result = memmove(result, result + 32, v6 - (result + 32));
      LOWORD(v5) = *(this + 5);
    }

    *(this + 5) = v5 - 1;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 744);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_1000F78E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 751);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_1000F7988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    *(v9 + 9) = 1;
    v12 = sub_1000FCBC0(*this);
    *v10 = v12;
  }

  else
  {
    v12 = *v9;
  }

  v13 = *(v12 + 2);
  if (!v13 || (v14 = v12[2], v14 >= *v13) || (v12[2] = v14 + 1, (v15 = *&v13[2 * v14 + 2]) == 0))
  {
    v15 = (*(*a4 + 32))(a4, *this);
    sub_1000FCCA8(*v10, v15);
  }

  return v15;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Clear(unsigned __int8 *this)
{
  v2 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_1000FCDDC(v5, v6);
  }

  else if (*(this + 5))
  {
    v3 = 32 * *(this + 5);
    v4 = (v2 + 1);
    do
    {
      this = google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return this;
}

unsigned __int16 *google::protobuf::internal::ExtensionSet::GrowCapacity(unsigned __int16 *this, unint64_t a2)
{
  v2 = this[4];
  if (v2 <= 0x100 && v2 < a2)
  {
    v4 = this;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < a2);
    v5 = *(this + 2);
    v6 = this[5];
    v7 = *this;
    if (v2 < 0x101u)
    {
      this = sub_1000F5CB0(v7, v2);
      v8 = this;
      if (v6)
      {
        this = memmove(this, v5, 32 * v6);
      }
    }

    else
    {
      this = sub_1000FD25C(v7);
      v8 = this;
      if (v6)
      {
        v9 = &v5[32 * v6];
        v10 = *this;
        v11 = v5;
        do
        {
          v14 = *v11;
          v12 = *(v11 + 3);
          v15 = *(v11 + 8);
          v16 = v12;
          this = sub_1000FD338(v8, v10, &v14);
          v10 = this;
          v11 += 32;
        }

        while (v11 != v9);
      }
    }

    if (*v4)
    {
      v13 = 1;
    }

    else
    {
      v13 = v5 == 0;
    }

    if (!v13)
    {
      operator delete[]();
    }

    v4[4] = v2;
    *(v4 + 2) = v8;
    if (v2 >= 0x101u)
    {
      v4[5] = 0;
    }
  }

  return this;
}

uint64_t sub_1000F7C18(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}

void google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(google::protobuf::internal::ExtensionSet *this, int a2, int **a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v16 = *(a3 + 8);
    v17 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v16];
    if (v17 <= 5)
    {
      if (v17 <= 2)
      {
        if (v17 != 1)
        {
          if (v17 != 2)
          {
            return;
          }

LABEL_58:
          v48 = *a3;
          v49 = a3[2];
          v50 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v50[2] = v49;
          if (v51)
          {
            *(v50 + 8) = v16;
            *(v50 + 9) = 0;
          }

          *(v50 + 10) &= 0xF0u;
          *v50 = v48;
          return;
        }
      }

      else if (v17 != 3)
      {
        if (v17 != 4)
        {
          v18 = *a3;
          v19 = a3[2];
          v20 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          v20[2] = v19;
          if (v21)
          {
            *(v20 + 8) = v16;
            *(v20 + 9) = 0;
          }

          *(v20 + 10) &= 0xF0u;
          *v20 = v18;
          return;
        }

        goto LABEL_58;
      }

LABEL_61:
      v52 = *a3;
      v53 = a3[2];
      v54 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
      v54[2] = v53;
      if (v55)
      {
        *(v54 + 8) = v16;
        *(v54 + 9) = 0;
      }

      *(v54 + 10) &= 0xF0u;
      *v54 = v52;
      return;
    }

    if (v17 <= 7)
    {
      if (v17 == 6)
      {
        v72 = *a3;
        v73 = a3[2];
        v74 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v74[2] = v73;
        if (v75)
        {
          *(v74 + 8) = v16;
          *(v74 + 9) = 0;
        }

        *(v74 + 10) &= 0xF0u;
        *v74 = v72;
      }

      else
      {
        v56 = *a3;
        v57 = a3[2];
        v58 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        v58[2] = v57;
        if (v59)
        {
          *(v58 + 8) = v16;
          *(v58 + 9) = 0;
        }

        *(v58 + 10) &= 0xF0u;
        *v58 = v56;
      }

      return;
    }

    if (v17 == 8)
    {
      goto LABEL_61;
    }

    if (v17 == 9)
    {
      v76 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_1000B32D8(&v86, *v76, *(v76 + 1));
      }

      else
      {
        v77 = *v76;
        v87 = *(v76 + 2);
        v86 = v77;
      }

      v82 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, v16, a3[2]);
      v83 = v82;
      if (*(v82 + 23) < 0)
      {
        operator delete(*v82);
      }

      v84 = v86;
      v83[2] = v87;
      *v83 = v84;
      return;
    }

    if (v17 != 10)
    {
      return;
    }

    v29 = a3[2];
    v30 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v31 = v30;
    v30[2] = v29;
    if (v32)
    {
      *(v30 + 8) = *(a3 + 8);
      *(v30 + 11) = *(a3 + 11);
      *(v30 + 9) = 0;
      v33 = *(v30 + 10) & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        *(v30 + 10) = v33 | 0x10;
        v85 = (*(**a3 + 16))(*a3, *this);
        *v31 = v85;
        (*(*v85 + 104))(v85, *a3);
        goto LABEL_108;
      }

      *(v30 + 10) = v33;
      v34 = (*(**a3 + 32))(*a3, *this);
      *v31 = v34;
LABEL_98:
      (*(*v34 + 64))(v34, *a3);
LABEL_108:
      *(v31 + 10) &= 0xF0u;
      return;
    }

    v78 = *(v30 + 10);
    v79 = *v30;
    v80 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v30 + 10) & 0x10) != 0)
      {
        (*(*v79 + 104))(*v30, v80);
        goto LABEL_108;
      }

      v80 = (*(*v80 + 24))(*a3, *v30);
      v81 = *v79;
    }

    else
    {
      v81 = *v79;
      if ((*(v30 + 10) & 0x10) != 0)
      {
        v34 = (*(v81 + 32))(*v30, v80);
        goto LABEL_98;
      }
    }

    (*(v81 + 64))(v79, v80);
    goto LABEL_108;
  }

  v6 = a3[2];
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v9 = v7;
  v7[2] = v6;
  v10 = *(a3 + 8);
  if (v8)
  {
    *(v7 + 8) = v10;
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  v11 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v10];
  if (v11 > 5)
  {
    if (v11 <= 7)
    {
      if (v11 != 6)
      {
        if (v8)
        {
          *v7 = sub_1000FC9C8(*this);
        }

        v36 = *a3;
        v37 = **a3;
        if (!v37)
        {
          return;
        }

        v38 = *v9;
        v39 = **v9;
        google::protobuf::RepeatedField<BOOL>::Reserve(v38, v39 + v37);
        v40 = *(v38 + 1);
        *v38 += *v36;
        v41 = *(v36 + 1);
        v42 = *v36;
        v43 = (v40 + v39);
LABEL_82:

        memcpy(v43, v41, v42);
        return;
      }

      if (v8)
      {
        *v7 = sub_1000FC7D8(*this);
      }

      v44 = *a3;
      v60 = **a3;
      if (!v60)
      {
        return;
      }

      v46 = *v9;
      v47 = **v9;
      google::protobuf::RepeatedField<float>::Reserve(v46, v47 + v60);
LABEL_76:
      v62 = *(v46 + 1);
      *v46 += *v44;
      v43 = (v62 + 4 * v47);
      v41 = *(v44 + 1);
      v42 = 4 * *v44;
      goto LABEL_82;
    }

    if (v11 != 8)
    {
      if (v11 == 9)
      {
        if (v8)
        {
          *v7 = sub_1000FCAC0(*this);
        }

        v65 = *a3;
        v66 = (*a3)[2];
        if (v66)
        {
          v67 = *v9;
          v68 = *(v65 + 2);
          v69 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v67, v66);
          sub_1000ED8E8(v67, v69, (v68 + 8), v66, **(v67 + 2) - v67[2]);
          v70 = v67[2] + v66;
          v67[2] = v70;
          v71 = *(v67 + 2);
          if (*v71 < v70)
          {
            *v71 = v70;
          }
        }
      }

      else if (v11 == 10)
      {
        if (v8)
        {
          *v7 = sub_1000FCBC0(*this);
        }

        v22 = *a3;
        if ((*a3)[2] >= 1)
        {
          v23 = 0;
          do
          {
            v24 = *(*(v22 + 2) + 8 * v23 + 8);
            v25 = *v9;
            v26 = *(*v9 + 2);
            if (!v26 || (v27 = v25[2], v27 >= *v26) || (v25[2] = v27 + 1, (v28 = *&v26[2 * v27 + 2]) == 0))
            {
              v28 = (*(*v24 + 32))(v24, *this);
              sub_1000FCCA8(*v9, v28);
            }

            (*(*v28 + 64))(v28, v24);
            ++v23;
          }

          while (v23 < v22[2]);
        }
      }

      return;
    }

LABEL_52:
    if (v8)
    {
      *v7 = sub_1000FC3F8(*this);
    }

    v44 = *a3;
    v45 = **a3;
    if (!v45)
    {
      return;
    }

    v46 = *v9;
    v47 = **v9;
    google::protobuf::RepeatedField<int>::Reserve(v46, v47 + v45);
    goto LABEL_76;
  }

  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8)
        {
          *v7 = sub_1000FC6E0(*this);
        }

        v12 = *a3;
        v63 = **a3;
        if (v63)
        {
          v14 = *v9;
          v15 = **v9;
          google::protobuf::RepeatedField<unsigned long long>::Reserve(v14, v15 + v63);
          goto LABEL_81;
        }
      }

      else
      {
        if (v8)
        {
          *v7 = sub_1000FC8D0(*this);
        }

        v12 = *a3;
        v13 = **a3;
        if (v13)
        {
          v14 = *v9;
          v15 = **v9;
          google::protobuf::RepeatedField<double>::Reserve(v14, v15 + v13);
LABEL_81:
          v64 = *(v14 + 1);
          *v14 += *v12;
          v43 = (v64 + 8 * v15);
          v41 = *(v12 + 1);
          v42 = 8 * *v12;
          goto LABEL_82;
        }
      }

      return;
    }

    if (v8)
    {
      *v7 = sub_1000FC5E8(*this);
    }

    v44 = *a3;
    v61 = **a3;
    if (!v61)
    {
      return;
    }

    v46 = *v9;
    v47 = **v9;
    google::protobuf::RepeatedField<unsigned int>::Reserve(v46, v47 + v61);
    goto LABEL_76;
  }

  if (v11 == 1)
  {
    goto LABEL_52;
  }

  if (v11 == 2)
  {
    if (v8)
    {
      *v7 = sub_1000FC4F0(*this);
    }

    v12 = *a3;
    v35 = **a3;
    if (v35)
    {
      v14 = *v9;
      v15 = **v9;
      google::protobuf::RepeatedField<long long>::Reserve(v14, v15 + v35);
      goto LABEL_81;
    }
  }
}

void sub_1000F8530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ExtensionSet::Swap(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal::ExtensionSet *a2)
{
  if (*this == *a2)
  {
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    google::protobuf::internal::ExtensionSet::MergeFrom(&v7, a2);
    google::protobuf::internal::ExtensionSet::Clear(a2);
    google::protobuf::internal::ExtensionSet::MergeFrom(a2, this);
    google::protobuf::internal::ExtensionSet::Clear(this);
    google::protobuf::internal::ExtensionSet::MergeFrom(this, &v7);
    google::protobuf::internal::ExtensionSet::~ExtensionSet(&v7);
  }
}

void sub_1000F8604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::ExtensionSet::Insert(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return sub_1000FD190(v4, &v14) + 5;
  }

  else
  {
    v6 = *(this + 5);
    v7 = &v4[32 * v6];
    if (*(this + 5))
    {
      v8 = *(this + 5);
      do
      {
        v9 = v8 >> 1;
        v10 = &v4[32 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 8);
        v8 += ~(v8 >> 1);
        if (v12 < a2)
        {
          v4 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v4 == v7)
    {
      if (v6 < v3)
      {
LABEL_15:
        *(this + 5) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = (v4 + 8);
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return (v4 + 8);
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(this + 5);
        goto LABEL_15;
      }
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v6 + 1);
    return google::protobuf::internal::ExtensionSet::Insert(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::IsInitialized(google::protobuf::internal::ExtensionSet *this)
{
  if (*(this + 4) < 0x101u)
  {
    if (*(this + 5))
    {
      v2 = *(this + 2);
      do
      {
        result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized((v2 + 8));
        if ((result & 1) == 0)
        {
          break;
        }

        v2 += 32;
      }

      while (v2 != *(this + 2) + 32 * *(this + 5));
      return result;
    }

    return 1;
  }

  v4 = *(this + 2);
  v7 = *v4;
  v5 = (v4 + 1);
  v6 = v7;
  if (v7 == v5)
  {
    return 1;
  }

  do
  {
    result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v6 + 5);
    if (!result)
    {
      break;
    }

    v8 = v6[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v5);
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(uint64_t **this)
{
  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)] != 10)
  {
    return 1;
  }

  if (*(this + 9) == 1)
  {
    v2 = *this;
    if (*(*this + 2) >= 1)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(v2[2] + 8 * v3 + 8);
        if (((*(*v4 + 48))(v4) & 1) == 0)
        {
          break;
        }

        ++v3;
        v2 = *this;
        if (v3 >= *(*this + 2))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  v5 = *(this + 10);
  if (v5)
  {
    return 1;
  }

  v7 = *this;
  v8 = **this;
  if ((v5 & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*a5];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v10 > 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 82);
        v11 = google::protobuf::internal::LogMessage::operator<<(v13, "can't reach here.");
        google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      }

      else
      {
        result = 1;
        if (((1 << v10) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v10 == a2;
  }

  return result;
}

void sub_1000F89FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F8A18(char **this)
{
  v2 = *this;
  if (*this >= this[1])
  {
    TagFallback = 0;
    goto LABEL_5;
  }

  TagFallback = *v2;
  if (*v2 < 0)
  {
LABEL_5:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
    goto LABEL_6;
  }

  *this = v2 + 1;
LABEL_6:
  *(this + 8) = TagFallback;
  return TagFallback;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::_InternalSerialize(google::protobuf::internal::ExtensionSet *this, int a2, signed int a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *a5)
{
  v7 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v17 = *(v7 + 1);
    v16 = v7 + 2;
    v15 = v17;
    if (v17)
    {
      v18 = v16;
      do
      {
        if (*(v15 + 32) >= a2)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 32) < a2));
      }

      while (v15);
      if (v18 != v16)
      {
        do
        {
          v19 = *(v18 + 8);
          if (v19 >= a3)
          {
            break;
          }

          a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v18 + 5, v19, a4, a5);
          v20 = v18[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v18[2];
              v22 = *v21 == v18;
              v18 = v21;
            }

            while (!v22);
          }

          v18 = v21;
        }

        while (v21 != v16);
      }
    }
  }

  else
  {
    v8 = *(this + 5);
    v9 = &v7[8 * v8];
    while (v8)
    {
      v10 = v8 >> 1;
      v11 = &v7[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v7 != v9 && *v7 < a3)
    {
      a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v7 + 1, *v7, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(int **this, unsigned int a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a3;
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        if (*a4 <= a3)
        {
          v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v8 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v8 | 0x82;
          v24 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v24 | 0x80;
              v25 = v24 >> 7;
              ++v9;
              v26 = v24 >> 14;
              v24 >>= 7;
            }

            while (v26);
            *(v9 - 1) = v25;
          }

          else
          {
            v5[1] = v24;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v27 = *(this + 3);
        if (v27 > 0x7F)
        {
          *v9 = v27 | 0x80;
          v28 = v27 >> 7;
          if (v27 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v28 | 0x80;
              v29 = v28 >> 7;
              ++v5;
              v30 = v28 >> 14;
              v28 >>= 7;
            }

            while (v30);
            *(v5 - 1) = v29;
          }

          else
          {
            v9[1] = v28;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v27;
          v5 = v9 + 1;
        }

        switch(*(this + 8))
        {
          case 1:
            v290 = *this;
            if (**this >= 1)
            {
              v291 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v290 = *this;
                }

                *v5 = *(*(v290 + 1) + 8 * v291);
                v5 += 8;
                ++v291;
                v290 = *this;
              }

              while (v291 < **this);
            }

            break;
          case 2:
            v292 = *this;
            if (**this >= 1)
            {
              v293 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v292 = *this;
                }

                *v5 = *(*(v292 + 1) + 4 * v293);
                v5 += 4;
                ++v293;
                v292 = *this;
              }

              while (v293 < **this);
            }

            break;
          case 3:
            v274 = *this;
            if (**this >= 1)
            {
              v275 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v274 = *this;
                }

                v276 = *(*(v274 + 1) + 8 * v275);
                if (v276 > 0x7F)
                {
                  *v5 = v276 | 0x80;
                  v277 = v276 >> 7;
                  if (v276 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v277 | 0x80;
                      v278 = v277 >> 7;
                      ++v5;
                      v279 = v277 >> 14;
                      v277 >>= 7;
                    }

                    while (v279);
                    *(v5 - 1) = v278;
                  }

                  else
                  {
                    v5[1] = v277;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v276;
                }

                ++v275;
                v274 = *this;
              }

              while (v275 < **this);
            }

            break;
          case 4:
            v282 = *this;
            if (**this >= 1)
            {
              v283 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v282 = *this;
                }

                v284 = *(*(v282 + 1) + 8 * v283);
                if (v284 > 0x7F)
                {
                  *v5 = v284 | 0x80;
                  v285 = v284 >> 7;
                  if (v284 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v285 | 0x80;
                      v286 = v285 >> 7;
                      ++v5;
                      v287 = v285 >> 14;
                      v285 >>= 7;
                    }

                    while (v287);
                    *(v5 - 1) = v286;
                  }

                  else
                  {
                    v5[1] = v285;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v284;
                }

                ++v283;
                v282 = *this;
              }

              while (v283 < **this);
            }

            break;
          case 5:
            v262 = *this;
            if (**this >= 1)
            {
              v263 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v262 = *this;
                }

                v264 = *(*(v262 + 1) + 4 * v263);
                if (v264 > 0x7F)
                {
                  *v5 = v264 | 0x80;
                  v265 = v264 >> 7;
                  if (v264 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v265 | 0x80;
                      v266 = v265 >> 7;
                      ++v5;
                      v267 = v265 >> 14;
                      v265 >>= 7;
                    }

                    while (v267);
                    *(v5 - 1) = v266;
                  }

                  else
                  {
                    v5[1] = v265;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v264;
                }

                ++v263;
                v262 = *this;
              }

              while (v263 < **this);
            }

            break;
          case 6:
            v307 = *this;
            if (**this >= 1)
            {
              v308 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v307 = *this;
                }

                *v5 = *(*(v307 + 1) + 8 * v308);
                v5 += 8;
                ++v308;
                v307 = *this;
              }

              while (v308 < **this);
            }

            break;
          case 7:
            v309 = *this;
            if (**this >= 1)
            {
              v310 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v309 = *this;
                }

                *v5 = *(*(v309 + 1) + 4 * v310);
                v5 += 4;
                ++v310;
                v309 = *this;
              }

              while (v310 < **this);
            }

            break;
          case 8:
            v288 = *this;
            if (**this >= 1)
            {
              v289 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v288 = *this;
                }

                *v5++ = *(*(v288 + 1) + v289++);
                v288 = *this;
              }

              while (v289 < **this);
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            google::protobuf::internal::LogMessage::LogMessage(v315, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 1966);
            v31 = google::protobuf::internal::LogMessage::operator<<(v315, "Non-primitive types can't be packed.");
            google::protobuf::internal::LogFinisher::operator=(&v314, &v31->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v315[0].__r_.__value_.__l.__data_);
            break;
          case 0xD:
            v268 = *this;
            if (**this >= 1)
            {
              v269 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v268 = *this;
                }

                v270 = *(*(v268 + 1) + 4 * v269);
                if (v270 > 0x7F)
                {
                  *v5 = v270 | 0x80;
                  v271 = v270 >> 7;
                  if (v270 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v271 | 0x80;
                      v272 = v271 >> 7;
                      ++v5;
                      v273 = v271 >> 14;
                      v271 >>= 7;
                    }

                    while (v273);
                    *(v5 - 1) = v272;
                  }

                  else
                  {
                    v5[1] = v271;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v270;
                }

                ++v269;
                v268 = *this;
              }

              while (v269 < **this);
            }

            break;
          case 0xE:
            v301 = *this;
            if (**this >= 1)
            {
              v302 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v301 = *this;
                }

                v303 = *(*(v301 + 1) + 4 * v302);
                if (v303 > 0x7F)
                {
                  *v5 = v303 | 0x80;
                  v304 = v303 >> 7;
                  if (v303 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v304 | 0x80;
                      v305 = v304 >> 7;
                      ++v5;
                      v306 = v304 >> 14;
                      v304 >>= 7;
                    }

                    while (v306);
                    *(v5 - 1) = v305;
                  }

                  else
                  {
                    v5[1] = v304;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v303;
                }

                ++v302;
                v301 = *this;
              }

              while (v302 < **this);
            }

            break;
          case 0xF:
            v260 = *this;
            if (**this >= 1)
            {
              v261 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v260 = *this;
                }

                *v5 = *(*(v260 + 1) + 4 * v261);
                v5 += 4;
                ++v261;
                v260 = *this;
              }

              while (v261 < **this);
            }

            break;
          case 0x10:
            v280 = *this;
            if (**this >= 1)
            {
              v281 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v280 = *this;
                }

                *v5 = *(*(v280 + 1) + 8 * v281);
                v5 += 8;
                ++v281;
                v280 = *this;
              }

              while (v281 < **this);
            }

            break;
          case 0x11:
            v253 = *this;
            if (**this >= 1)
            {
              v254 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v253 = *this;
                }

                v255 = *(*(v253 + 1) + 4 * v254);
                v256 = (2 * v255) ^ (v255 >> 31);
                if (v256 > 0x7F)
                {
                  *v5 = v256 | 0x80;
                  v257 = v256 >> 7;
                  if (v256 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v257 | 0x80;
                      v258 = v257 >> 7;
                      ++v5;
                      v259 = v257 >> 14;
                      v257 >>= 7;
                    }

                    while (v259);
                    *(v5 - 1) = v258;
                  }

                  else
                  {
                    v5[1] = v257;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v256;
                }

                ++v254;
                v253 = *this;
              }

              while (v254 < **this);
            }

            break;
          case 0x12:
            v294 = *this;
            if (**this >= 1)
            {
              v295 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                  v294 = *this;
                }

                v296 = *(*(v294 + 1) + 8 * v295);
                v297 = (2 * v296) ^ (v296 >> 63);
                if (v297 > 0x7F)
                {
                  *v5 = v297 | 0x80;
                  v298 = v297 >> 7;
                  if (v297 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v298 | 0x80;
                      v299 = v298 >> 7;
                      ++v5;
                      v300 = v298 >> 14;
                      v298 >>= 7;
                    }

                    while (v300);
                    *(v5 - 1) = v299;
                  }

                  else
                  {
                    v5[1] = v298;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v297;
                }

                ++v295;
                v294 = *this;
              }

              while (v295 < **this);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      switch(*(this + 8))
      {
        case 1:
          v11 = *this;
          if (**this >= 1)
          {
            v12 = 0;
            v13 = 8 * a2;
            v14 = (8 * a2) | 0x81;
            v15 = (a2 >> 4) & 0x1FFFFFF;
            v16 = (8 * a2) | 1;
            v17 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v11 = *this;
              }

              v18 = *(*(v11 + 1) + 8 * v12);
              if (v13 > 0x7F)
              {
                *v5 = v14;
                if (v13 >= 0x4000)
                {
                  v19 = v5 + 2;
                  v20 = v15;
                  do
                  {
                    *(v19 - 1) = v20 | 0x80;
                    v21 = v20 >> 7;
                    v19 = (v19 + 1);
                    v22 = v20 >> 14;
                    v20 >>= 7;
                  }

                  while (v22);
                  *(v19 - 1) = v21;
                }

                else
                {
                  v5[1] = v17;
                  v19 = v5 + 2;
                }
              }

              else
              {
                *v5 = v16;
                v19 = v5 + 1;
              }

              *v19 = v18;
              v5 = (v19 + 1);
              ++v12;
              v11 = *this;
            }

            while (v12 < **this);
          }

          break;
        case 2:
          v167 = *this;
          if (**this >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (a2 >> 4) & 0x1FFFFFF;
            v171 = (8 * a2) | 5;
            v172 = (8 * a2) >> 7;
            v173 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v167 = *this;
              }

              v174 = *(*(v167 + 1) + 4 * v168);
              if (v169 > 0x7F)
              {
                *v5 = v173;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v170;
                  do
                  {
                    *(v175 - 1) = v176 | 0x80;
                    v177 = v176 >> 7;
                    v175 = (v175 + 1);
                    v178 = v176 >> 14;
                    v176 >>= 7;
                  }

                  while (v178);
                  *(v175 - 1) = v177;
                }

                else
                {
                  v5[1] = v172;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v171;
                v175 = v5 + 1;
              }

              *v175 = v174;
              v5 = (v175 + 1);
              ++v168;
              v167 = *this;
            }

            while (v168 < **this);
          }

          break;
        case 3:
          v112 = *this;
          if (**this >= 1)
          {
            v113 = 0;
            v114 = 8 * a2;
            v115 = (8 * a2) | 0x80;
            v116 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v112 = *this;
              }

              v117 = *(*(v112 + 1) + 8 * v113);
              if (v114 > 0x7F)
              {
                *v5 = v115;
                if (v114 >= 0x4000)
                {
                  v118 = v5 + 2;
                  v119 = v116;
                  do
                  {
                    *(v118 - 1) = v119 | 0x80;
                    v120 = v119 >> 7;
                    ++v118;
                    v121 = v119 >> 14;
                    v119 >>= 7;
                  }

                  while (v121);
                  *(v118 - 1) = v120;
                }

                else
                {
                  v5[1] = v114 >> 7;
                  v118 = v5 + 2;
                }
              }

              else
              {
                v118 = v5 + 1;
                *v5 = v114;
              }

              if (v117 > 0x7F)
              {
                *v118 = v117 | 0x80;
                v122 = v117 >> 7;
                if (v117 >> 14)
                {
                  v5 = v118 + 2;
                  do
                  {
                    *(v5 - 1) = v122 | 0x80;
                    v123 = v122 >> 7;
                    ++v5;
                    v124 = v122 >> 14;
                    v122 >>= 7;
                  }

                  while (v124);
                  *(v5 - 1) = v123;
                }

                else
                {
                  v118[1] = v122;
                  v5 = v118 + 2;
                }
              }

              else
              {
                *v118 = v117;
                v5 = v118 + 1;
              }

              ++v113;
              v112 = *this;
            }

            while (v113 < **this);
          }

          break;
        case 4:
          v143 = *this;
          if (**this >= 1)
          {
            v144 = 0;
            v145 = 8 * a2;
            v146 = (8 * a2) | 0x80;
            v147 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v143 = *this;
              }

              v148 = *(*(v143 + 1) + 8 * v144);
              if (v145 > 0x7F)
              {
                *v5 = v146;
                if (v145 >= 0x4000)
                {
                  v149 = v5 + 2;
                  v150 = v147;
                  do
                  {
                    *(v149 - 1) = v150 | 0x80;
                    v151 = v150 >> 7;
                    ++v149;
                    v152 = v150 >> 14;
                    v150 >>= 7;
                  }

                  while (v152);
                  *(v149 - 1) = v151;
                }

                else
                {
                  v5[1] = v145 >> 7;
                  v149 = v5 + 2;
                }
              }

              else
              {
                v149 = v5 + 1;
                *v5 = v145;
              }

              if (v148 > 0x7F)
              {
                *v149 = v148 | 0x80;
                v153 = v148 >> 7;
                if (v148 >> 14)
                {
                  v5 = v149 + 2;
                  do
                  {
                    *(v5 - 1) = v153 | 0x80;
                    v154 = v153 >> 7;
                    ++v5;
                    v155 = v153 >> 14;
                    v153 >>= 7;
                  }

                  while (v155);
                  *(v5 - 1) = v154;
                }

                else
                {
                  v149[1] = v153;
                  v5 = v149 + 2;
                }
              }

              else
              {
                *v149 = v148;
                v5 = v149 + 1;
              }

              ++v144;
              v143 = *this;
            }

            while (v144 < **this);
          }

          break;
        case 5:
          v65 = *this;
          if (**this >= 1)
          {
            v66 = 0;
            v67 = 8 * a2;
            v68 = (8 * a2) | 0x80;
            v69 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v65 = *this;
              }

              v70 = *(*(v65 + 1) + 4 * v66);
              if (v67 > 0x7F)
              {
                *v5 = v68;
                if (v67 >= 0x4000)
                {
                  v71 = v5 + 2;
                  v72 = v69;
                  do
                  {
                    *(v71 - 1) = v72 | 0x80;
                    v73 = v72 >> 7;
                    ++v71;
                    v74 = v72 >> 14;
                    v72 >>= 7;
                  }

                  while (v74);
                  *(v71 - 1) = v73;
                }

                else
                {
                  v5[1] = v67 >> 7;
                  v71 = v5 + 2;
                }
              }

              else
              {
                v71 = v5 + 1;
                *v5 = v67;
              }

              if (v70 > 0x7F)
              {
                *v71 = v70 | 0x80;
                v75 = v70 >> 7;
                if (v70 >> 14)
                {
                  v5 = v71 + 2;
                  do
                  {
                    *(v5 - 1) = v75 | 0x80;
                    v76 = v75 >> 7;
                    ++v5;
                    v77 = v75 >> 14;
                    v75 >>= 7;
                  }

                  while (v77);
                  *(v5 - 1) = v76;
                }

                else
                {
                  v71[1] = v75;
                  v5 = v71 + 2;
                }
              }

              else
              {
                *v71 = v70;
                v5 = v71 + 1;
              }

              ++v66;
              v65 = *this;
            }

            while (v66 < **this);
          }

          break;
        case 6:
          v197 = *this;
          if (**this >= 1)
          {
            v198 = 0;
            v199 = 8 * a2;
            v200 = (8 * a2) | 0x81;
            v201 = (a2 >> 4) & 0x1FFFFFF;
            v202 = (8 * a2) | 1;
            v203 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v197 = *this;
              }

              v204 = *(*(v197 + 1) + 8 * v198);
              if (v199 > 0x7F)
              {
                *v5 = v200;
                if (v199 >= 0x4000)
                {
                  v205 = v5 + 2;
                  v206 = v201;
                  do
                  {
                    *(v205 - 1) = v206 | 0x80;
                    v207 = v206 >> 7;
                    v205 = (v205 + 1);
                    v208 = v206 >> 14;
                    v206 >>= 7;
                  }

                  while (v208);
                  *(v205 - 1) = v207;
                }

                else
                {
                  v5[1] = v203;
                  v205 = v5 + 2;
                }
              }

              else
              {
                *v5 = v202;
                v205 = v5 + 1;
              }

              *v205 = v204;
              v5 = (v205 + 1);
              ++v198;
              v197 = *this;
            }

            while (v198 < **this);
          }

          break;
        case 7:
          v222 = *this;
          if (**this >= 1)
          {
            v223 = 0;
            v224 = 8 * a2;
            v225 = (a2 >> 4) & 0x1FFFFFF;
            v226 = (8 * a2) | 5;
            v227 = (8 * a2) >> 7;
            v228 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v222 = *this;
              }

              v229 = *(*(v222 + 1) + 4 * v223);
              if (v224 > 0x7F)
              {
                *v5 = v228;
                if (v224 >= 0x4000)
                {
                  v230 = v5 + 2;
                  v231 = v225;
                  do
                  {
                    *(v230 - 1) = v231 | 0x80;
                    v232 = v231 >> 7;
                    v230 = (v230 + 1);
                    v233 = v231 >> 14;
                    v231 >>= 7;
                  }

                  while (v233);
                  *(v230 - 1) = v232;
                }

                else
                {
                  v5[1] = v227;
                  v230 = v5 + 2;
                }
              }

              else
              {
                *v5 = v226;
                v230 = v5 + 1;
              }

              *v230 = v229;
              v5 = (v230 + 1);
              ++v223;
              v222 = *this;
            }

            while (v223 < **this);
          }

          break;
        case 8:
          v156 = *this;
          if (**this >= 1)
          {
            v157 = 0;
            v158 = 8 * a2;
            v159 = (8 * a2) | 0x80;
            v160 = (a2 >> 4) & 0x1FFFFFF;
            v161 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v156 = *this;
              }

              v162 = *(*(v156 + 1) + v157);
              if (v158 > 0x7F)
              {
                *v5 = v159;
                if (v158 >= 0x4000)
                {
                  v163 = v5 + 2;
                  v164 = v160;
                  do
                  {
                    *(v163 - 1) = v164 | 0x80;
                    v165 = v164 >> 7;
                    ++v163;
                    v166 = v164 >> 14;
                    v164 >>= 7;
                  }

                  while (v166);
                  *(v163 - 1) = v165;
                }

                else
                {
                  v5[1] = v161;
                  v163 = v5 + 2;
                }
              }

              else
              {
                *v5 = v158;
                v163 = v5 + 1;
              }

              *v163 = v162;
              v5 = v163 + 1;
              ++v157;
              v156 = *this;
            }

            while (v157 < **this);
          }

          break;
        case 9:
          v251 = *this;
          if ((*this)[2] >= 1)
          {
            v252 = 0;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v251 = *this;
              }

              v5 = sub_1000D92B8(a4, a2, *(*(v251 + 2) + 8 * v252++ + 8), v5);
              v251 = *this;
            }

            while (v252 < (*this)[2]);
          }

          break;
        case 0xA:
          v95 = *this;
          if ((*this)[2] >= 1)
          {
            v96 = 0;
            v97 = 8 * a2;
            v313 = (8 * a2) | 0x83;
            v98 = (a2 >> 4) & 0x1FFFFFF;
            v99 = (8 * a2) | 3;
            v100 = (8 * a2) | 4;
            v101 = (8 * a2) >> 7;
            v102 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v95 = *this;
              }

              v103 = *(*(v95 + 2) + 8 * v96 + 8);
              if (v97 > 0x7F)
              {
                *v5 = v313;
                if (v97 >= 0x4000)
                {
                  v104 = v5 + 2;
                  v105 = v98;
                  do
                  {
                    *(v104 - 1) = v105 | 0x80;
                    v106 = v105 >> 7;
                    ++v104;
                    v107 = v105 >> 14;
                    v105 >>= 7;
                  }

                  while (v107);
                  *(v104 - 1) = v106;
                }

                else
                {
                  v5[1] = v101;
                  v104 = v5 + 2;
                }
              }

              else
              {
                v104 = v5 + 1;
                *v5 = v99;
              }

              v108 = (*(*v103 + 96))(v103, v104, a4);
              if (*a4 <= v108)
              {
                v108 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v108);
              }

              if (v97 > 0x7F)
              {
                *v108 = v102;
                if (v97 >= 0x4000)
                {
                  v5 = v108 + 2;
                  v109 = v98;
                  do
                  {
                    *(v5 - 1) = v109 | 0x80;
                    v110 = v109 >> 7;
                    ++v5;
                    v111 = v109 >> 14;
                    v109 >>= 7;
                  }

                  while (v111);
                  *(v5 - 1) = v110;
                }

                else
                {
                  v108[1] = v101;
                  v5 = v108 + 2;
                }
              }

              else
              {
                v5 = v108 + 1;
                *v108 = v100;
              }

              ++v96;
              v95 = *this;
            }

            while (v96 < (*this)[2]);
          }

          break;
        case 0xB:
          v234 = *this;
          if ((*this)[2] >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (a2 >> 4) & 0x1FFFFFF;
            v238 = (8 * a2) | 2;
            v239 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v234 = *this;
              }

              v240 = *(*(v234 + 2) + 8 * v235 + 8);
              if (v236 > 0x7F)
              {
                *v5 = v239;
                if (v236 >= 0x4000)
                {
                  v241 = v5 + 2;
                  v242 = v237;
                  do
                  {
                    *(v241 - 1) = v242 | 0x80;
                    v243 = v242 >> 7;
                    ++v241;
                    v244 = v242 >> 14;
                    v242 >>= 7;
                  }

                  while (v244);
                  *(v241 - 1) = v243;
                }

                else
                {
                  v5[1] = v236 >> 7;
                  v241 = v5 + 2;
                }
              }

              else
              {
                v241 = v5 + 1;
                *v5 = v238;
              }

              v245 = (*(*v240 + 80))(v240);
              if (v245 > 0x7F)
              {
                *v241 = v245 | 0x80;
                v247 = v245 >> 7;
                if (v245 >> 14)
                {
                  v246 = v241 + 2;
                  do
                  {
                    *(v246 - 1) = v247 | 0x80;
                    v248 = v247 >> 7;
                    ++v246;
                    v249 = v247 >> 14;
                    v247 >>= 7;
                  }

                  while (v249);
                  *(v246 - 1) = v248;
                }

                else
                {
                  v241[1] = v247;
                  v246 = v241 + 2;
                }
              }

              else
              {
                *v241 = v245;
                v246 = v241 + 1;
              }

              v5 = (*(*v240 + 96))(v240, v246, a4);
              ++v235;
              v234 = *this;
            }

            while (v235 < (*this)[2]);
          }

          break;
        case 0xC:
          v62 = *this;
          if ((*this)[2] >= 1)
          {
            v63 = 0;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v62 = *this;
              }

              v5 = sub_1000D92B8(a4, a2, *(*(v62 + 2) + 8 * v63++ + 8), v5);
              v62 = *this;
            }

            while (v63 < (*this)[2]);
          }

          break;
        case 0xD:
          v78 = *this;
          if (**this >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = (8 * a2) | 0x80;
            v82 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v78 = *this;
              }

              v83 = *(*(v78 + 1) + 4 * v79);
              if (v80 > 0x7F)
              {
                *v5 = v81;
                if (v80 >= 0x4000)
                {
                  v84 = v5 + 2;
                  v85 = v82;
                  do
                  {
                    *(v84 - 1) = v85 | 0x80;
                    v86 = v85 >> 7;
                    ++v84;
                    v87 = v85 >> 14;
                    v85 >>= 7;
                  }

                  while (v87);
                  *(v84 - 1) = v86;
                }

                else
                {
                  v5[1] = v80 >> 7;
                  v84 = v5 + 2;
                }
              }

              else
              {
                v84 = v5 + 1;
                *v5 = v80;
              }

              if (v83 > 0x7F)
              {
                *v84 = v83 | 0x80;
                v88 = v83 >> 7;
                if (v83 >> 14)
                {
                  v5 = v84 + 2;
                  do
                  {
                    *(v5 - 1) = v88 | 0x80;
                    v89 = v88 >> 7;
                    ++v5;
                    v90 = v88 >> 14;
                    v88 >>= 7;
                  }

                  while (v90);
                  *(v5 - 1) = v89;
                }

                else
                {
                  v84[1] = v88;
                  v5 = v84 + 2;
                }
              }

              else
              {
                *v84 = v83;
                v5 = v84 + 1;
              }

              ++v79;
              v78 = *this;
            }

            while (v79 < **this);
          }

          break;
        case 0xE:
          v209 = *this;
          if (**this >= 1)
          {
            v210 = 0;
            v211 = 8 * a2;
            v212 = (8 * a2) | 0x80;
            v213 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v209 = *this;
              }

              v214 = *(*(v209 + 1) + 4 * v210);
              if (v211 > 0x7F)
              {
                *v5 = v212;
                if (v211 >= 0x4000)
                {
                  v215 = v5 + 2;
                  v216 = v213;
                  do
                  {
                    *(v215 - 1) = v216 | 0x80;
                    v217 = v216 >> 7;
                    ++v215;
                    v218 = v216 >> 14;
                    v216 >>= 7;
                  }

                  while (v218);
                  *(v215 - 1) = v217;
                }

                else
                {
                  v5[1] = v211 >> 7;
                  v215 = v5 + 2;
                }
              }

              else
              {
                v215 = v5 + 1;
                *v5 = v211;
              }

              if (v214 > 0x7F)
              {
                *v215 = v214 | 0x80;
                v219 = v214 >> 7;
                if (v214 >> 14)
                {
                  v5 = v215 + 2;
                  do
                  {
                    *(v5 - 1) = v219 | 0x80;
                    v220 = v219 >> 7;
                    ++v5;
                    v221 = v219 >> 14;
                    v219 >>= 7;
                  }

                  while (v221);
                  *(v5 - 1) = v220;
                }

                else
                {
                  v215[1] = v219;
                  v5 = v215 + 2;
                }
              }

              else
              {
                *v215 = v214;
                v5 = v215 + 1;
              }

              ++v210;
              v209 = *this;
            }

            while (v210 < **this);
          }

          break;
        case 0xF:
          v47 = *this;
          if (**this >= 1)
          {
            v48 = 0;
            v49 = 8 * a2;
            v50 = (a2 >> 4) & 0x1FFFFFF;
            v51 = (8 * a2) | 5;
            v52 = (8 * a2) >> 7;
            v53 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v47 = *this;
              }

              v54 = *(*(v47 + 1) + 4 * v48);
              if (v49 > 0x7F)
              {
                *v5 = v53;
                if (v49 >= 0x4000)
                {
                  v55 = v5 + 2;
                  v56 = v50;
                  do
                  {
                    *(v55 - 1) = v56 | 0x80;
                    v57 = v56 >> 7;
                    v55 = (v55 + 1);
                    v58 = v56 >> 14;
                    v56 >>= 7;
                  }

                  while (v58);
                  *(v55 - 1) = v57;
                }

                else
                {
                  v5[1] = v52;
                  v55 = v5 + 2;
                }
              }

              else
              {
                *v5 = v51;
                v55 = v5 + 1;
              }

              *v55 = v54;
              v5 = (v55 + 1);
              ++v48;
              v47 = *this;
            }

            while (v48 < **this);
          }

          break;
        case 0x10:
          v128 = *this;
          if (**this >= 1)
          {
            v129 = 0;
            v130 = 8 * a2;
            v131 = (8 * a2) | 0x81;
            v132 = (a2 >> 4) & 0x1FFFFFF;
            v133 = (8 * a2) | 1;
            v134 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v128 = *this;
              }

              v135 = *(*(v128 + 1) + 8 * v129);
              if (v130 > 0x7F)
              {
                *v5 = v131;
                if (v130 >= 0x4000)
                {
                  v136 = v5 + 2;
                  v137 = v132;
                  do
                  {
                    *(v136 - 1) = v137 | 0x80;
                    v138 = v137 >> 7;
                    v136 = (v136 + 1);
                    v139 = v137 >> 14;
                    v137 >>= 7;
                  }

                  while (v139);
                  *(v136 - 1) = v138;
                }

                else
                {
                  v5[1] = v134;
                  v136 = v5 + 2;
                }
              }

              else
              {
                *v5 = v133;
                v136 = v5 + 1;
              }

              *v136 = v135;
              v5 = (v136 + 1);
              ++v129;
              v128 = *this;
            }

            while (v129 < **this);
          }

          break;
        case 0x11:
          v32 = *this;
          if (**this >= 1)
          {
            v33 = 0;
            v34 = 8 * a2;
            v35 = (8 * a2) | 0x80;
            v36 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v32 = *this;
              }

              v37 = *(*(v32 + 1) + 4 * v33);
              if (v34 > 0x7F)
              {
                *v5 = v35;
                if (v34 >= 0x4000)
                {
                  v38 = v5 + 2;
                  v39 = v36;
                  do
                  {
                    *(v38 - 1) = v39 | 0x80;
                    v40 = v39 >> 7;
                    ++v38;
                    v41 = v39 >> 14;
                    v39 >>= 7;
                  }

                  while (v41);
                  *(v38 - 1) = v40;
                }

                else
                {
                  v5[1] = v34 >> 7;
                  v38 = v5 + 2;
                }
              }

              else
              {
                v38 = v5 + 1;
                *v5 = v34;
              }

              v42 = (2 * v37) ^ (v37 >> 31);
              if (v42 > 0x7F)
              {
                *v38 = v42 | 0x80;
                v43 = v42 >> 7;
                if (v42 >> 14)
                {
                  v5 = v38 + 2;
                  do
                  {
                    *(v5 - 1) = v43 | 0x80;
                    v44 = v43 >> 7;
                    ++v5;
                    v45 = v43 >> 14;
                    v43 >>= 7;
                  }

                  while (v45);
                  *(v5 - 1) = v44;
                }

                else
                {
                  v38[1] = v43;
                  v5 = v38 + 2;
                }
              }

              else
              {
                *v38 = v42;
                v5 = v38 + 1;
              }

              ++v33;
              v32 = *this;
            }

            while (v33 < **this);
          }

          break;
        case 0x12:
          v182 = *this;
          if (**this >= 1)
          {
            v183 = 0;
            v184 = 8 * a2;
            v185 = (8 * a2) | 0x80;
            v186 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v5);
                v182 = *this;
              }

              v187 = *(*(v182 + 1) + 8 * v183);
              if (v184 > 0x7F)
              {
                *v5 = v185;
                if (v184 >= 0x4000)
                {
                  v188 = v5 + 2;
                  v189 = v186;
                  do
                  {
                    *(v188 - 1) = v189 | 0x80;
                    v190 = v189 >> 7;
                    ++v188;
                    v191 = v189 >> 14;
                    v189 >>= 7;
                  }

                  while (v191);
                  *(v188 - 1) = v190;
                }

                else
                {
                  v5[1] = v184 >> 7;
                  v188 = v5 + 2;
                }
              }

              else
              {
                v188 = v5 + 1;
                *v5 = v184;
              }

              v192 = (2 * v187) ^ (v187 >> 63);
              if (v192 > 0x7F)
              {
                *v188 = v192 | 0x80;
                v193 = v192 >> 7;
                if (v192 >> 14)
                {
                  v5 = v188 + 2;
                  do
                  {
                    *(v5 - 1) = v193 | 0x80;
                    v194 = v193 >> 7;
                    ++v5;
                    v195 = v193 >> 14;
                    v193 >>= 7;
                  }

                  while (v195);
                  *(v5 - 1) = v194;
                }

                else
                {
                  v188[1] = v193;
                  v5 = v188 + 2;
                }
              }

              else
              {
                *v188 = v192;
                v5 = v188 + 1;
              }

              ++v183;
              v182 = *this;
            }

            while (v183 < **this);
          }

          break;
        default:
          return v5;
      }
    }

    return v5;
  }

  if (*(this + 10))
  {
    return v5;
  }

  switch(*(this + 8))
  {
    case 1:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v180 = *this;

      return sub_1000FBF00(a2, v5, v180);
    case 2:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v181 = *this;

      return sub_1000FBE90(a2, v5, v181);
    case 3:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v125 = *this;
      v126 = a2;
      v127 = v5;

      return sub_1000FBAD8(v126, v125, v127);
    case 4:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v125 = *this;
      v126 = a2;
      v127 = v5;

      return sub_1000FBAD8(v126, v125, v127);
    case 5:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v92 = *this;
      v93 = a2;
      v94 = v5;

      goto LABEL_148;
    case 6:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v140 = *this;
      v141 = a2;
      v142 = v5;

      goto LABEL_213;
    case 7:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v59 = *this;
      v60 = a2;
      v61 = v5;

      goto LABEL_86;
    case 8:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v179 = *this;

      return sub_1000FBF68(a2, v179, v5);
    case 9:
    case 0xC:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v23 = *this;

      return sub_1000D92B8(a4, a2, v23, v5);
    case 0xA:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v250 = *this;

      return sub_1000FBFCC(a2, v250, v5, a4);
    case 0xB:
      if ((*(this + 10) & 0x10) != 0)
      {
        v311 = *this;
        v312 = *(**this + 136);

        return v312();
      }

      else
      {
        if (*a4 <= a3)
        {
          v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v64 = *this;

        return sub_1000FC0FC(a2, v64, v5, a4);
      }

    case 0xD:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v91 = *this;

      return sub_1000FBB8C(a2, v91, v5);
    case 0xE:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v92 = *this;
      v93 = a2;
      v94 = v5;

LABEL_148:
      result = sub_1000FBA20(v93, v92, v94);
      break;
    case 0xF:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v59 = *this;
      v60 = a2;
      v61 = v5;

LABEL_86:
      result = sub_1000FBDB8(v60, v59, v61);
      break;
    case 0x10:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v140 = *this;
      v141 = a2;
      v142 = v5;

LABEL_213:
      result = sub_1000FBE28(v141, v140, v142);
      break;
    case 0x11:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v46 = *this;

      result = sub_1000FBC40(a2, v46, v5);
      break;
    case 0x12:
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v196 = *this;

      result = sub_1000FBCFC(a2, v196, v5);
      break;
    default:
      return v5;
  }

  return result;
}

void sub_1000FAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_1000FD104(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(uint64_t **this, int a2)
{
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v8 = 8 * **this;
          goto LABEL_110;
        case 2:
        case 7:
        case 0xF:
          v8 = 4 * **this;
          goto LABEL_110;
        case 3:
          v71 = **this;
          if (v71 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v72 = (*this)[1];
          do
          {
            v73 = *v72++;
            v8 += (9 * (__clz(v73 | 1) ^ 0x3F) + 73) >> 6;
            --v71;
          }

          while (v71);
          goto LABEL_110;
        case 4:
          v74 = **this;
          if (v74 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v75 = (*this)[1];
          do
          {
            v76 = *v75++;
            v8 += (9 * (__clz(v76 | 1) ^ 0x3F) + 73) >> 6;
            --v74;
          }

          while (v74);
          goto LABEL_110;
        case 5:
          v54 = **this;
          if (v54 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v55 = (*this)[1];
          do
          {
            v57 = *v55++;
            v56 = v57;
            if (v57 < 0)
            {
              v58 = 10;
            }

            else
            {
              v58 = (9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6;
            }

            v8 += v58;
            --v54;
          }

          while (v54);
          goto LABEL_110;
        case 8:
          v8 = **this;
          goto LABEL_110;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v90, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set.cc", 1599);
          v3 = google::protobuf::internal::LogMessage::operator<<(v90, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v89, &v3->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v90[0].__r_.__value_.__l.__data_);
          goto LABEL_5;
        case 0xD:
          v20 = **this;
          if (v20 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v21 = (*this)[1];
          do
          {
            v22 = *v21++;
            v8 += (9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6;
            --v20;
          }

          while (v20);
          goto LABEL_110;
        case 0xE:
          v39 = **this;
          if (v39 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v40 = (*this)[1];
          do
          {
            v42 = *v40++;
            v41 = v42;
            if (v42 < 0)
            {
              v43 = 10;
            }

            else
            {
              v43 = (9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6;
            }

            v8 += v43;
            --v39;
          }

          while (v39);
          goto LABEL_110;
        case 0x11:
          v13 = **this;
          if (v13 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v14 = (*this)[1];
          do
          {
            v15 = *v14++;
            v8 += (9 * (__clz((2 * v15) ^ (v15 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            --v13;
          }

          while (v13);
          goto LABEL_110;
        case 0x12:
          v59 = **this;
          if (v59 < 1)
          {
            goto LABEL_5;
          }

          v8 = 0;
          v60 = (*this)[1];
          do
          {
            v61 = *v60++;
            v8 += (9 * (__clz((2 * v61) ^ (v61 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            --v59;
          }

          while (v59);
LABEL_110:
          *(this + 3) = v8;
          v77 = v8 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
          if (v8)
          {
            v4 = v77;
          }

          else
          {
            v4 = 0;
          }

          break;
        default:
LABEL_5:
          v4 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      v6 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v7 = v6 + 8;
          goto LABEL_13;
        case 2:
        case 7:
        case 0xF:
          v7 = v6 + 4;
LABEL_13:
          v4 = v7 * **this;
          break;
        case 3:
          v65 = **this;
          v4 = v6 * v65;
          if (v65 >= 1)
          {
            v66 = (*this)[1];
            do
            {
              v67 = *v66++;
              v4 += (9 * (__clz(v67 | 1) ^ 0x3F) + 73) >> 6;
              --v65;
            }

            while (v65);
          }

          break;
        case 4:
          v68 = **this;
          v4 = v6 * v68;
          if (v68 >= 1)
          {
            v69 = (*this)[1];
            do
            {
              v70 = *v69++;
              v4 += (9 * (__clz(v70 | 1) ^ 0x3F) + 73) >> 6;
              --v68;
            }

            while (v68);
          }

          break;
        case 5:
          v49 = **this;
          v4 = v6 * v49;
          if (v49 >= 1)
          {
            v50 = (*this)[1];
            do
            {
              v52 = *v50++;
              v51 = v52;
              if (v52 < 0)
              {
                v53 = 10;
              }

              else
              {
                v53 = (9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v53;
              --v49;
            }

            while (v49);
          }

          break;
        case 8:
          v4 = **this + **this * v6;
          break;
        case 9:
          v84 = *(*this + 2);
          v4 = v6 * v84;
          if (v84 >= 1)
          {
            v85 = ((*this)[2] + 8);
            do
            {
              v86 = *v85++;
              v87 = *(v86 + 23);
              v88 = *(v86 + 8);
              if ((v87 & 0x80u) == 0)
              {
                v88 = v87;
              }

              v4 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6);
              --v84;
            }

            while (v84);
          }

          break;
        case 0xA:
          v27 = *this;
          v28 = *(*this + 2);
          v4 = v6 * v28;
          if (v28 >= 1)
          {
            v29 = 0;
            do
            {
              v30 = *(*(v27 + 2) + 8 * v29 + 8);
              v4 += (*(*v30 + 72))(v30);
              ++v29;
              v27 = *this;
            }

            while (v29 < *(*this + 2));
          }

          break;
        case 0xB:
          v34 = *this;
          v35 = *(*this + 2);
          v4 = v6 * v35;
          if (v35 >= 1)
          {
            v36 = 0;
            do
            {
              v37 = *(*(v34 + 2) + 8 * v36 + 8);
              v38 = (*(*v37 + 72))(v37);
              v4 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
              ++v36;
              v34 = *this;
            }

            while (v36 < *(*this + 2));
          }

          break;
        case 0xC:
          v79 = *(*this + 2);
          v4 = v6 * v79;
          if (v79 >= 1)
          {
            v80 = ((*this)[2] + 8);
            do
            {
              v81 = *v80++;
              v82 = *(v81 + 23);
              v83 = *(v81 + 8);
              if ((v82 & 0x80u) == 0)
              {
                v83 = v82;
              }

              v4 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6);
              --v79;
            }

            while (v79);
          }

          break;
        case 0xD:
          v23 = **this;
          v4 = v6 * v23;
          if (v23 >= 1)
          {
            v24 = (*this)[1];
            do
            {
              v25 = *v24++;
              v4 += (9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6;
              --v23;
            }

            while (v23);
          }

          break;
        case 0xE:
          v44 = **this;
          v4 = v6 * v44;
          if (v44 >= 1)
          {
            v45 = (*this)[1];
            do
            {
              v47 = *v45++;
              v46 = v47;
              if (v47 < 0)
              {
                v48 = 10;
              }

              else
              {
                v48 = (9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v48;
              --v44;
            }

            while (v44);
          }

          break;
        case 0x11:
          v16 = **this;
          v4 = v6 * v16;
          if (v16 >= 1)
          {
            v17 = (*this)[1];
            do
            {
              v18 = *v17++;
              v4 += (9 * (__clz((2 * v18) ^ (v18 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              --v16;
            }

            while (v16);
          }

          break;
        case 0x12:
          v62 = **this;
          v4 = v6 * v62;
          if (v62 >= 1)
          {
            v63 = (*this)[1];
            do
            {
              v64 = *v63++;
              v4 += (9 * (__clz((2 * v64) ^ (v64 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              --v62;
            }

            while (v62);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else
  {
    v5 = *(this + 10);
    if (v5)
    {
      return 0;
    }

    else
    {
      v4 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v4 += 8;
          return v4;
        case 2:
        case 7:
        case 0xF:
          v4 += 4;
          return v4;
        case 3:
        case 4:
          v9 = *this;
          goto LABEL_94;
        case 5:
        case 0xE:
          v10 = (9 * (__clz(*this | 1) ^ 0x1F) + 73) >> 6;
          if (*this >= 0)
          {
            v11 = v10;
          }

          else
          {
            v11 = 10;
          }

          v4 += v11;
          return v4;
        case 8:
          return ++v4;
        case 9:
        case 0xC:
          v12 = (*this)[1];
          if (*(*this + 23) >= 0)
          {
            v12 = *(*this + 23);
          }

          v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
          return v4;
        case 0xA:
          v26 = *this;
          v4 += (*(**this + 72))();
          return v4;
        case 0xB:
          v31 = *this;
          v32 = **this;
          if ((v5 & 0x10) != 0)
          {
            v33 = (*(v32 + 88))();
          }

          else
          {
            v33 = (*(v32 + 72))();
          }

          v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
          return v4;
        case 0xD:
          v19 = *this;
          goto LABEL_70;
        case 0x11:
          v19 = (2 * *this) ^ (*this >> 31);
LABEL_70:
          v4 += (9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6;
          break;
        case 0x12:
          v9 = (2 * *this) ^ (*this >> 63);
LABEL_94:
          v4 += (9 * (__clz(v9 | 1) ^ 0x3F) + 73) >> 6;
          break;
        default:
          return v4;
      }
    }
  }

  return v4;
}

void sub_1000FB730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *google::protobuf::internal::ExtensionSet::Extension::Free(_BYTE *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
  if (this[9] == 1)
  {
    if (v1 > 5)
    {
      if (v1 > 8)
      {
        if (v1 == 9)
        {
          if (*this)
          {
            sub_1000ED63C(*this);
            goto LABEL_27;
          }
        }

        else if (v1 == 10 && *this)
        {
          sub_1000F51C0(*this);
          goto LABEL_27;
        }

        return this;
      }
    }

    else if (v1 <= 2 && v1 != 1 && v1 != 2)
    {
      return this;
    }

    v5 = *this;
    if (*this)
    {
      if (*(v5 + 4) >= 1)
      {
        v6 = *(v5 + 8);
        v8 = *(v6 - 8);
        v7 = (v6 - 8);
        if (!v8)
        {
          operator delete(v7);
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = this[10];
      this = *this;
      if ((v3 & 0x10) != 0)
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      else
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *this;
      if (*this)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_27:

        operator delete();
      }
    }
  }

  return this;
}

_BYTE *sub_1000FBA20(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_1000FBAD8(int a1, unint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_1000FBB8C(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_1000FBC40(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_BYTE *sub_1000FBCFC(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 63);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_DWORD *sub_1000FBDB8(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 5;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

void *sub_1000FBE28(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 1;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

float *sub_1000FBE90(int a1, _BYTE *a2, float a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 5;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

double *sub_1000FBF00(int a1, _BYTE *a2, double a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 1;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

_BYTE *sub_1000FBF68(int a1, char a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

unsigned __int8 *sub_1000FBFCC(int a1, uint64_t a2, _BYTE *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = 8 * a1;
  v6 = (8 * a1) >> 7;
  v7 = (8 * a1) >> 14;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v5 | 0x83;
    if (v7)
    {
      v8 = a3 + 2;
      v9 = v5 >> 7;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      a3[1] = v6;
      v8 = a3 + 2;
    }
  }

  else
  {
    *a3 = v5 | 3;
    v8 = a3 + 1;
  }

  v12 = (*(*a2 + 96))(a2, v8, a4);
  if (*a4 <= v12)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v12);
  }

  if (v5 > 0x7F)
  {
    *v12 = v5 | 0x84;
    if (v7)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v6 | 0x80;
        v14 = v6 >> 7;
        ++v13;
        v15 = v6 >> 14;
        v6 >>= 7;
      }

      while (v15);
      *(v13 - 1) = v14;
    }

    else
    {
      v12[1] = v6;
      return v12 + 2;
    }
  }

  else
  {
    *v12 = v5 | 4;
    return v12 + 1;
  }

  return v13;
}

uint64_t sub_1000FC0FC(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v6 | 0x82;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a3 + 2;
      do
      {
        *(v7 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v7 - 1) = v9;
    }

    else
    {
      a3[1] = v8;
      v7 = a3 + 2;
    }
  }

  else
  {
    *a3 = v6 | 2;
    v7 = a3 + 1;
  }

  v11 = (*(*a2 + 80))(a2);
  if (v11 > 0x7F)
  {
    *v7 = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v7 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v7[1] = v13;
      v12 = v7 + 2;
    }
  }

  else
  {
    *v7 = v11;
    v12 = v7 + 1;
  }

  v16 = *(*a2 + 96);

  return v16(a2, v12, a4);
}

uint64_t sub_1000FC258(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1000FC2CC(google::protobuf::Arena *this, unint64_t a2)
{
  if (a2 >> 59)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/arena.h", 558);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (num_elements) <= (std::numeric_limits<size_t>::max() / sizeof(T)): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Requested size is too large to fit into size_t.");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v6 = 32 * a2;
  if (*(this + 24))
  {
    sub_100163B1C(this);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v6);
}

void sub_1000FC370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000FC388(_BYTE *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Free(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

void *sub_1000FC3F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC448(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC448(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163B5C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC4D0);
}

void sub_1000FC4D0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC4F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC540(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC540(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163B8C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC5C8);
}

void sub_1000FC5C8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC5E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC638(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC638(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163BBC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC6C0);
}

void sub_1000FC6C0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC6E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC730(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC730(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163BEC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC7B8);
}

void sub_1000FC7B8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC7D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC828(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC828(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163C1C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC8B0);
}

void sub_1000FC8B0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC8D0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FC920(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FC920(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163C4C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FC9A8);
}

void sub_1000FC9A8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FC9C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FCA18(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_1000FCA18(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163C7C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_1000FCAA0);
}

void sub_1000FCAA0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_1000FCAC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FCB1C(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_1000FCB1C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163CAC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000FCBA4);
}

void *sub_1000FCBC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FCC1C(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_1000FCC1C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163CDC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000FCCA4);
}

unsigned int *sub_1000FCCA8(unsigned int *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return sub_1000FCCFC(this, a2);
  }

  v3 = *v2;
  if (v3 >= this[3])
  {
    return sub_1000FCCFC(this, a2);
  }

  v4 = v2 + 2;
  v5 = this[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  this[2] = v5 + 1;
  ++**(this + 2);
  return this;
}

unsigned int *sub_1000FCCFC(unsigned int *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = this[3];
    goto LABEL_11;
  }

  v5 = this[2];
  v6 = this[3];
  if (v5 == v6)
  {
LABEL_11:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  this = *&v4[2 * v5 + 2];
  if (this)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    this = (*(*this + 8))(this);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return this;
}

unsigned __int8 *sub_1000FCDDC(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

google::protobuf::internal::ExtensionSet *sub_1000FCE4C(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, *(v5 + 8), v5 + 5);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *sub_1000FCED0(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 >= a3)
  {
    v6 = a3;
    std::string::assign(this, __s, a3);
    return &__s[v6];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

uint64_t sub_1000FCF3C(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1[11].i32[0];
  v5 = __OFSUB__(v4--, 1);
  a1[11].i32[0] = v4;
  if (v4 < 0 != v5)
  {
    return 0;
  }

  ++a1[11].i32[1];
  result = (*(*a2 + 88))(a2, a3, a1);
  a1[11] = vadd_s32(a1[11], 0xFFFFFFFF00000001);
  v9 = a1[10].i32[0];
  a1[10].i32[0] = 0;
  if (v9 != a4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000FCFDC(uint64_t a1, int a2, const char *a3, char **a4, uint64_t *a5)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = -NAN;
  *(a1 + 88) = a2;
  *(a1 + 92) = 0x80000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1000B3420(v8, a5, a3);
  *a4 = sub_1000FD050(a1, v8[0], v8[1]);
  return a1;
}

char *sub_1000FD050(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *sub_1000FD104(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_1000FD190(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1000FD25C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000FD2A8(a1, 0);
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  return result;
}

void *sub_1000FD2A8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100163D0C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000FD330);
}

uint64_t sub_1000FD338(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1000FD3D0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1000FD3D0(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_1000FD578(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000D0A84(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1000FD61C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/api.pb.cc", a4);
  google::protobuf::Api::Api(&google::protobuf::_Api_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Api_default_instance_, v4);
}

void sub_1000FD68C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/api.pb.cc", a4);
  google::protobuf::Method::Method(&google::protobuf::_Method_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Method_default_instance_, v4);
}

void sub_1000FD6FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/api.pb.cc", a4);
  google::protobuf::_Mixin_default_instance_ = off_1001D0E70;
  unk_1001ED350 = 0;
  dword_1001ED368 = 0;
  if (atomic_load_explicit(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto);
  }

  qword_1001ED358 = &google::protobuf::internal::fixed_address_empty_string;
  unk_1001ED360 = &google::protobuf::internal::fixed_address_empty_string;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Mixin_default_instance_, v4);
}

uint64_t google::protobuf::Api::Api(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0D10;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 40) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 116) = 0;
  if (atomic_load_explicit(scc_info_Api_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Api_google_2fprotobuf_2fapi_2eproto);
  }

  *(a1 + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_1000FD850(_Unwind_Exception *a1)
{
  sub_1000FF7BC(v3);
  sub_1000FF738(v2);
  sub_1000FF6B4(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::Api::~Api(google::protobuf::Api *this)
{
  v2 = *(this + 11);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 12);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (this != &google::protobuf::_Api_default_instance_)
  {
    v4 = *(this + 13);
    if (v4)
    {
      google::protobuf::SourceContext::~SourceContext(v4);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000FF7BC(this + 8);
  sub_1000FF738(this + 5);
  sub_1000FF6B4(this + 2);
}

{
  google::protobuf::Api::~Api(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Api::Clear(google::protobuf::Api *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Method::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  v5 = *(this + 12);
  if (v5 >= 1)
  {
    v6 = (*(this + 7) + 8);
    do
    {
      v7 = *v6++;
      google::protobuf::Option::Clear(v7);
      --v5;
    }

    while (v5);
    *(this + 12) = 0;
  }

  v8 = *(this + 18);
  if (v8 >= 1)
  {
    v9 = (*(this + 10) + 8);
    do
    {
      v10 = *v9++;
      google::protobuf::Mixin::Clear(v10);
      --v8;
    }

    while (v8);
    *(this + 18) = 0;
  }

  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 11);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 12);
  v14 = *(this + 1);
  if (v14)
  {
    if (*(v14 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_17;
    }
  }

  else if (v14)
  {
    goto LABEL_17;
  }

  result = *(this + 13);
  if (result)
  {
    google::protobuf::SourceContext::~SourceContext(result);
    operator delete();
  }

LABEL_17:
  *(this + 13) = 0;
  *(this + 28) = 0;
  if (v14)
  {

    return sub_1000315EC(this + 1, v12, v13);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Api::_InternalSerialize(google::protobuf::Api *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Api.name");
    a2 = sub_100030384(a3, 1, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 6);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 4) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 18);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = (a2 + 3);
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            v13 = (v13 + 1);
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = (a2 + 2);
      }

      a2 = google::protobuf::Method::_InternalSerialize(v11, v13, a3, a4);
    }
  }

  v17 = *(this + 12);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 7) + 8 * j + 8);
      *a2 = 26;
      v20 = *(v19 + 8);
      if (v20 > 0x7F)
      {
        *(a2 + 1) = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = (a2 + 3);
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            v21 = (v21 + 1);
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          *(a2 + 2) = v22;
          v21 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v20;
        v21 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v19, v21, a3, a4);
    }
  }

  v25 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  if ((v26 & 0x8000000000000000) == 0)
  {
    if (!*(v25 + 23))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v26 = *(v25 + 8);
  if (v26)
  {
    v25 = *v25;
LABEL_36:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v25, v26, 1, "google.protobuf.Api.version");
    a2 = sub_100030384(a3, 4, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_37:
  if (this != &google::protobuf::_Api_default_instance_)
  {
    v27 = *(this + 13);
    if (v27)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v27 = *(this + 13);
      }

      *a2 = 42;
      v28 = *(v27 + 6);
      if (v28 > 0x7F)
      {
        *(a2 + 1) = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = (a2 + 3);
          do
          {
            *(v29 - 1) = v30 | 0x80;
            v31 = v30 >> 7;
            v29 = (v29 + 1);
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
          *(v29 - 1) = v31;
        }

        else
        {
          *(a2 + 2) = v30;
          v29 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v28;
        v29 = (a2 + 2);
      }

      a2 = google::protobuf::SourceContext::_InternalSerialize(v27, v29, a3, a4);
    }
  }

  v33 = *(this + 18);
  if (v33)
  {
    for (k = 0; k != v33; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v35 = *(*(this + 10) + 8 * k + 8);
      *a2 = 50;
      v36 = *(v35 + 8);
      if (v36 > 0x7F)
      {
        *(a2 + 1) = v36 | 0x80;
        v38 = v36 >> 7;
        if (v36 >> 14)
        {
          v37 = (a2 + 3);
          do
          {
            *(v37 - 1) = v38 | 0x80;
            v39 = v38 >> 7;
            v37 = (v37 + 1);
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
          *(v37 - 1) = v39;
        }

        else
        {
          *(a2 + 2) = v38;
          v37 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v36;
        v37 = (a2 + 2);
      }

      a2 = google::protobuf::Mixin::_InternalSerialize(v35, v37, a3, a4);
    }
  }

  v41 = *(this + 28);
  if (v41)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v41 = *(this + 28);
    }

    *a2 = 56;
    if (v41 > 0x7F)
    {
      *(a2 + 1) = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          a2 = (a2 + 1);
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(a2 - 1) = v43;
      }

      else
      {
        *(a2 + 2) = v42;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v41;
      a2 = (a2 + 2);
    }
  }

  v45 = *(this + 1);
  if ((v45 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v45 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Api::ByteSizeLong(google::protobuf::Api *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::Method::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = google::protobuf::Option::ByteSizeLong(v13);
      v9 += &v14[(9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6];
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = (v9 + v15);
  v17 = *(this + 10);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::Mixin::ByteSizeLong(v20);
      v16 = (v16 + v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6));
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    if (!*(v22 + 8))
    {
      goto LABEL_26;
    }
  }

  else if (!*(v22 + 23))
  {
    goto LABEL_26;
  }

  v24 = *(v22 + 8);
  if (v23 >= 0)
  {
    v24 = v23;
  }

  v16 = (v16 + v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_26:
  v25 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  if (v26 < 0)
  {
    if (!*(v25 + 8))
    {
      goto LABEL_31;
    }
  }

  else if (!*(v25 + 23))
  {
    goto LABEL_31;
  }

  v27 = *(v25 + 8);
  if (v26 >= 0)
  {
    v27 = v26;
  }

  v16 = (v16 + v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_31:
  if (this != &google::protobuf::_Api_default_instance_)
  {
    v28 = *(this + 13);
    if (v28)
    {
      v29 = google::protobuf::SourceContext::ByteSizeLong(v28);
      v16 = &v29[((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1 + v16];
    }
  }

  v30 = *(this + 28);
  v31 = 11;
  v32 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v30 >= 0)
  {
    v31 = v32;
  }

  v33 = (v16 + v31);
  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v16;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v34, this + 29);
  }

  else
  {
    *(this + 29) = v34;
    return v34;
  }
}

void google::protobuf::Api::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Api::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Api::MergeFrom(std::string *this, const google::protobuf::Api *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_1000FF840(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1].__r_.__value_.__r.__words[2], *(a2 + 12));
    this = sub_1000FF900((v4 + 40), v13, v12 + 8, v11, *v4[2].__r_.__value_.__l.__size_ - LODWORD(v4[2].__r_.__value_.__l.__data_));
    v14 = LODWORD(v4[2].__r_.__value_.__l.__data_) + v11;
    LODWORD(v4[2].__r_.__value_.__l.__data_) = v14;
    v15 = v4[2].__r_.__value_.__l.__size_;
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = *(a2 + 10);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[2].__r_.__value_.__r.__words[2], *(a2 + 18));
    this = sub_1000FF9C0((v4 + 64), v18, v17 + 8, v16, *v4[3].__r_.__value_.__l.__size_ - LODWORD(v4[3].__r_.__value_.__l.__data_));
    v19 = LODWORD(v4[3].__r_.__value_.__l.__data_) + v16;
    LODWORD(v4[3].__r_.__value_.__l.__data_) = v19;
    v20 = v4[3].__r_.__value_.__l.__size_;
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 11) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    v22 = *(v21 + 8);
  }

  if (v22)
  {
    v23 = v4->__r_.__value_.__l.__size_;
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[3].__r_.__value_.__r.__words[2], v21, v23);
  }

  v24 = *(a2 + 12) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  if (v25 < 0)
  {
    v25 = *(v24 + 8);
  }

  if (v25)
  {
    v26 = v4->__r_.__value_.__l.__size_;
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[4], v24, v26);
  }

  if (a2 != &google::protobuf::_Api_default_instance_)
  {
    v27 = *(a2 + 13);
    if (v27)
    {
      v28 = v4[4].__r_.__value_.__l.__size_;
      if (!v28)
      {
        v29 = v4->__r_.__value_.__l.__size_;
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceContext>(v29);
        v4[4].__r_.__value_.__l.__size_ = v28;
        v27 = *(a2 + 13);
      }

      if (v27)
      {
        v30 = v27;
      }

      else
      {
        v30 = &google::protobuf::_SourceContext_default_instance_;
      }

      this = google::protobuf::SourceContext::MergeFrom(v28, v30, a3);
    }
  }

  v31 = *(a2 + 28);
  if (v31)
  {
    LODWORD(v4[4].__r_.__value_.__r.__words[2]) = v31;
  }

  return this;
}

void google::protobuf::Api::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Api::Clear(this);

    google::protobuf::Api::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Api::GetMetadata(google::protobuf::Api *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fapi_2eproto, 0);
  result = *off_1001EA278;
  v2 = off_1001EA278[1];
  return result;
}

uint64_t google::protobuf::Method::Method(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0DC0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(scc_info_Method_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Method_google_2fprotobuf_2fapi_2eproto);
  }

  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  return a1;
}

void google::protobuf::Method::~Method(google::protobuf::Method *this)
{
  v2 = *(this + 5);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 6);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  sub_1000FF738(this + 2);
}

{
  google::protobuf::Method::~Method(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Method::Clear(google::protobuf::Method *this)
{
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::Option::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 6) = 0;
  }

  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 6);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 7);
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 7) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v6, v7);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Method::_InternalSerialize(google::protobuf::Method *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Method.name");
    a2 = sub_100030384(a3, 1, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 8);
    if (!v10)
    {
      goto LABEL_13;
    }

    v9 = *v9;
    goto LABEL_12;
  }

  if (*(v9 + 23))
  {
LABEL_12:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v9, v10, 1, "google.protobuf.Method.request_type_url");
    a2 = sub_100030384(a3, 2, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_13:
  v11 = *(this + 64);
  if (v11 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v11) = *(this + 64);
    }

    *a2 = 24;
    *(a2 + 1) = v11;
    a2 = (a2 + 2);
  }

  v12 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(v12 + 8);
    if (!v13)
    {
      goto LABEL_23;
    }

    v12 = *v12;
    goto LABEL_22;
  }

  if (*(v12 + 23))
  {
LABEL_22:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v12, v13, 1, "google.protobuf.Method.response_type_url");
    a2 = sub_100030384(a3, 4, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_23:
  v14 = *(this + 65);
  if (v14 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v14) = *(this + 65);
    }

    *a2 = 40;
    *(a2 + 1) = v14;
    a2 = (a2 + 2);
  }

  v15 = *(this + 6);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(*(this + 4) + 8 * i + 8);
      *a2 = 50;
      v18 = *(v17 + 8);
      if (v18 > 0x7F)
      {
        *(a2 + 1) = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = (a2 + 3);
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            v19 = (v19 + 1);
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          *(a2 + 2) = v20;
          v19 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v18;
        v19 = (a2 + 2);
      }

      a2 = google::protobuf::Option::_InternalSerialize(v17, v19, a3, a4);
    }
  }

  v23 = *(this + 17);
  if (v23)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v23 = *(this + 17);
    }

    *a2 = 56;
    if (v23 > 0x7F)
    {
      *(a2 + 1) = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        a2 = (a2 + 3);
        do
        {
          *(a2 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          a2 = (a2 + 1);
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(a2 - 1) = v25;
      }

      else
      {
        *(a2 + 2) = v24;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v23;
      a2 = (a2 + 2);
    }
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Method::ByteSizeLong(google::protobuf::Method *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = google::protobuf::Option::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_14:
  v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (!*(v11 + 23))
  {
    goto LABEL_19;
  }

  v13 = *(v11 + 8);
  if (v12 >= 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_19:
  v14 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    if (!*(v14 + 8))
    {
      goto LABEL_24;
    }
  }

  else if (!*(v14 + 23))
  {
    goto LABEL_24;
  }

  v16 = *(v14 + 8);
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_24:
  if (*(this + 64))
  {
    v17 = v2 + 2;
  }

  else
  {
    v17 = v2;
  }

  if (*(this + 65))
  {
    v18 = (v17 + 2);
  }

  else
  {
    v18 = v17;
  }

  v19 = *(this + 17);
  if (v19)
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    v18 = (v18 + v21);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v18, this + 18);
  }

  else
  {
    *(this + 18) = v18;
    return v18;
  }
}

void google::protobuf::Method::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Method::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Method::MergeFrom(std::string *this, const google::protobuf::Method *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], *(a2 + 6));
    this = sub_1000FF900(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  v11 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    v13 = v4->__r_.__value_.__l.__size_;
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1].__r_.__value_.__r.__words[2], v11, v13);
  }

  v14 = *(a2 + 6) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15)
  {
    v16 = v4->__r_.__value_.__l.__size_;
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2], v14, v16);
  }

  v17 = *(a2 + 7) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    v18 = *(v17 + 8);
  }

  if (v18)
  {
    v19 = v4->__r_.__value_.__l.__size_;
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__l.__size_, v17, v19);
  }

  if (*(a2 + 64) == 1)
  {
    v4[2].__r_.__value_.__s.__data_[16] = 1;
  }

  if (*(a2 + 65) == 1)
  {
    v4[2].__r_.__value_.__s.__data_[17] = 1;
  }

  v20 = *(a2 + 17);
  if (v20)
  {
    HIDWORD(v4[2].__r_.__value_.__r.__words[2]) = v20;
  }

  return this;
}

void google::protobuf::Method::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Method::Clear(this);

    google::protobuf::Method::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Method::GetMetadata(google::protobuf::Method *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fapi_2eproto, 0);
  result = off_1001EA278[2];
  v2 = off_1001EA278[3];
  return result;
}

void google::protobuf::Mixin::~Mixin(google::protobuf::Mixin *this)
{
  v1 = *(this + 2);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::Mixin::~Mixin(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Mixin::Clear(google::protobuf::Mixin *this)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 3);
  v6 = *(this + 8);
  v5 = (this + 8);
  if (v6)
  {

    return sub_1000315EC(v5, v3, v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Mixin::_InternalSerialize(google::protobuf::Mixin *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Mixin.name");
    a2 = sub_100030384(a3, 1, (*(this + 2) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 8);
    if (!v10)
    {
      goto LABEL_13;
    }

    v9 = *v9;
    goto LABEL_12;
  }

  if (*(v9 + 23))
  {
LABEL_12:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v9, v10, 1, "google.protobuf.Mixin.root");
    a2 = sub_100030384(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_13:
  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Mixin::ByteSizeLong(google::protobuf::Mixin *this)
{
  v1 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = (v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_8:
  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (!*(v5 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (!*(v5 + 23))
  {
    goto LABEL_13;
  }

  v7 = *(v5 + 8);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  v4 = (v4 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_13:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 8);
  }

  *(this + 8) = v4;
  return v4;
}

void google::protobuf::Mixin::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Mixin::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Mixin::MergeFrom(std::string *this, const google::protobuf::Mixin *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7)
  {
    size = v4->__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4->__r_.__value_.__r.__words[2], v6, size);
  }

  v9 = *(a2 + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v9 + 8))
    {
      return this;
    }
  }

  else if (!*(v9 + 23))
  {
    return this;
  }

  v10 = v4->__r_.__value_.__l.__size_;
  if (v10)
  {
    v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  return google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v9, v10);
}

void google::protobuf::Mixin::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Mixin::Clear(this);

    google::protobuf::Mixin::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Mixin::GetMetadata(google::protobuf::Mixin *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fapi_2eproto, 0);
  result = off_1001EA278[4];
  v2 = off_1001EA278[5];
  return result;
}

void *sub_1000FF484(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000FFA80(a1, 1);
  google::protobuf::Api::Api(v2, a1);
  return v2;
}

void *sub_1000FF510(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000FFB0C(a1, 1);
  google::protobuf::Method::Method(v2, a1);
  return v2;
}

void *sub_1000FF59C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1000FFB98(a1);
}

void sub_1000FF6B4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::Method::~Method(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1000FF738(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::Option::~Option(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1000FF7BC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::Mixin::~Mixin(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_1000FF840(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_1000FF8F0(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Method>(v18);
      result = sub_1000FF8F0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_1000FF900(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_1000FF9B0(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Option>(v18);
      result = sub_1000FF9B0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_1000FF9C0(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_1000FFA70(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Mixin>(v18);
      result = sub_1000FFA70(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_1000FFA80(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164A38(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x78uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x78uLL, google::protobuf::Api::~Api);
}

void *sub_1000FFB0C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164A70(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::Method::~Method);
}

void *sub_1000FFB98(google::protobuf::Arena *a1)
{
  v2 = sub_1000FFC14(a1, 1);
  *v2 = off_1001D0E70;
  v2[1] = a1;
  *(v2 + 8) = 0;
  if (atomic_load_explicit(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Mixin_google_2fprotobuf_2fapi_2eproto);
  }

  v2[2] = &google::protobuf::internal::fixed_address_empty_string;
  v2[3] = &google::protobuf::internal::fixed_address_empty_string;
  return v2;
}

void *sub_1000FFC14(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164AA8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::Mixin::~Mixin);
}

uint64_t sub_1000FFCB8(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32) + 8 * v2;
  *(v1 + 24) = v2 + 1;
  *(v3 + 8) = result;
  return result;
}

char *sub_1000FFCF4(std::string *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string::value_type *a10)
{

  return google::protobuf::internal::InlineGreedyStringParser(a1, a10, v10);
}

uint64_t sub_1000FFD20(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *(v1 + 92);

  return sub_1000313B0(v1, va, v3);
}

char *sub_1000FFD3C(std::string *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string::value_type *a10)
{

  return google::protobuf::internal::InlineGreedyStringParser(a1, a10, v10);
}

void sub_1000FFDD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/empty.pb.cc", a4);
  google::protobuf::_Empty_default_instance_ = off_1001D0F78;
  *algn_1001ED378 = 0;
  dword_1001ED380 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Empty_default_instance_, v4);
}

void google::protobuf::Empty::~Empty(google::protobuf::Empty *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::Arena **google::protobuf::Empty::Clear(google::protobuf::Empty *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Empty::_InternalSerialize(google::protobuf::Empty *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

char *google::protobuf::Empty::ByteSizeLong(google::protobuf::Empty *this)
{
  v2 = *(this + 8);
  v1 = (this + 8);
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize(v1, 0, v1 + 2);
  }

  *(v1 + 2) = 0;
  return 0;
}

void google::protobuf::Empty::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5[1];
    if (v7)
    {

      sub_1000315A0(this + 1, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::Empty::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::Empty::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::Empty::GetMetadata(google::protobuf::Empty *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fempty_2eproto, 0);
  result = *off_1001EA308;
  v2 = off_1001EA308[1];
  return result;
}

void *sub_10010007C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100100100(this, 1);
  *result = off_1001D0F78;
  result[1] = this;
  *(result + 4) = 0;
  return result;
}

void *sub_100100100(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164BE4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_100100188);
}

void google::protobuf::internal::MapFieldBase::~MapFieldBase(google::protobuf::internal::MapFieldBase *this)
{
  *this = off_1001D1040;
  if (*(this + 2) && !*(this + 1))
  {
    sub_1000F51C0(*(this + 2));
    operator delete();
  }

  std::mutex::~mutex((this + 24));
}

void google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(google::protobuf::internal::MapFieldBase *this)
{
  explicit = atomic_load_explicit(this + 22, memory_order_acquire);
  if (explicit == 2)
  {
    v3 = (this + 24);
    std::mutex::lock((this + 24));
    if (*(this + 22) == 2)
    {
      if (!*(this + 2))
      {
        v4 = *(this + 1);
        if (!v4)
        {
          operator new();
        }

        *(this + 2) = sub_1001043FC(v4);
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (explicit)
    {
      return;
    }

    v3 = (this + 24);
    std::mutex::lock((this + 24));
    if (!*(this + 22))
    {
      (*(*this + 112))(this);
LABEL_11:
      atomic_store(2u, this + 22);
    }
  }

  std::mutex::unlock(v3);
}

uint64_t google::protobuf::internal::MapFieldBase::MutableRepeatedField(google::protobuf::internal::MapFieldBase *this)
{
  google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(this);
  *(this + 22) = 1;
  return *(this + 2);
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong(google::protobuf::internal::MapFieldBase *this)
{
  std::mutex::lock((this + 24));
  v2 = (*(*this + 104))(this);
  std::mutex::unlock((this + 24));
  return v2;
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::MapFieldBase *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 8 * *(v1 + 12);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (*v3 >= 1)
    {
      v4 = 0;
      do
      {
        v2 += (*(**&v3[2 * v4 + 2] + 136))(*&v3[2 * v4 + 2]);
        ++v4;
        v3 = *(v1 + 16);
      }

      while (v4 < *v3);
    }

    v2 += 8;
  }

  return v2;
}

void *google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMapNoLock(void *this)
{
  if (!this[2])
  {
    v1 = this;
    this = sub_1001043FC(this[1]);
    v1[2] = this;
  }

  return this;
}

void google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(google::protobuf::internal::MapFieldBase *this)
{
  if (atomic_load_explicit(this + 22, memory_order_acquire) == 1)
  {
    std::mutex::lock((this + 24));
    if (*(this + 22) == 1)
    {
      (*(*this + 120))(this);
      atomic_store(2u, this + 22);
    }

    std::mutex::unlock((this + 24));
  }
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *a1 = off_1001D10F0;
  result = 0.0;
  *(a1 + 96) = xmmword_10017FFF0;
  *(a1 + 112) = xmmword_10017FFF0;
  *(a1 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  return result;
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(google::protobuf::internal::DynamicMapField *this, const google::protobuf::Message *a2, google::protobuf::Arena *a3)
{
  v5 = sub_10010484C(this, a3);
  *v5 = off_1001D10F0;
  result = 0.0;
  *(v5 + 96) = xmmword_10017FFF0;
  *(v5 + 112) = xmmword_10017FFF0;
  *(v5 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v5 + 136) = a3;
  *(v5 + 144) = a2;
  return result;
}

void google::protobuf::internal::DynamicMapField::~DynamicMapField(google::protobuf::internal::DynamicMapField *this)
{
  *this = off_1001D10F0;
  v2 = this + 96;
  v3 = *(this + 15);
  v4 = *(this + 13);
  if (v4 > v3)
  {
    v5 = *(this + 16);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        goto LABEL_10;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
      v7 = v6;
      v8 = this + 96;
      v9 = v3;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = *(v5 + 8 * v3);
      v8 = this + 96;
      v9 = v3;
    }

    do
    {
      sub_10010071C(v6 + 8);
      sub_100104958(&v7);
      v6 = v7;
    }

    while (v7);
  }

LABEL_10:
  sub_100104550(v2);
  sub_1001044FC(v2);
  google::protobuf::internal::MapFieldBase::~MapFieldBase(this);
}

{
  google::protobuf::internal::DynamicMapField::~DynamicMapField(this);

  operator delete();
}

_DWORD *sub_10010071C(_DWORD *result)
{
  v1 = result[2];
  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        goto LABEL_20;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v1 == 8)
      {
        goto LABEL_20;
      }

      if (v1 != 9)
      {
        if (v1 == 10)
        {
          result = *result;
          if (result)
          {
            v2 = *(*result + 8);

            return v2();
          }
        }

        return result;
      }

      v3 = *result;
      if (!*result)
      {
        return result;
      }

      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }
    }

LABEL_21:

    operator delete();
  }

  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_20:
    result = *result;
    if (result)
    {
      goto LABEL_21;
    }

    return result;
  }

  if (v1 == 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  result = *result;
  if (result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t google::protobuf::internal::DynamicMapField::Clear(google::protobuf::internal::DynamicMapField *this)
{
  v2 = this + 96;
  if (!*(this + 1))
  {
    v3 = *(this + 15);
    v4 = *(this + 13);
    if (v4 > v3)
    {
      v5 = *(this + 16);
      while (1)
      {
        v6 = *(v5 + 8 * v3);
        if (v6)
        {
          break;
        }

        if (v4 == ++v3)
        {
          goto LABEL_11;
        }
      }

      if (v6 == *(v5 + 8 * (v3 ^ 1)))
      {
        v6 = *(*v6 + 40);
        v12 = v6;
        v13 = this + 96;
        v14 = v3;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = *(v5 + 8 * v3);
        v13 = this + 96;
        v14 = v3;
      }

      do
      {
        sub_10010071C(v6 + 8);
        sub_100104958(&v12);
        v6 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  result = sub_100104550(v2);
  v8 = *(this + 2);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9 >= 1)
    {
      v10 = (*(v8 + 16) + 8);
      do
      {
        v11 = *v10++;
        result = (*(*v11 + 40))(v11);
        --v9;
      }

      while (v9);
      *(v8 + 8) = 0;
    }
  }

  *(this + 22) = 0;
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::ContainsMapKey(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 160))(a1);
  sub_100104ACC(v3, a2, 0, v5);
  return v5[0] != 0;
}

void google::protobuf::internal::DynamicMapField::AllocateMapValue(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 144) + 152))(*(a1 + 144));
  v5 = google::protobuf::Descriptor::map_value(v4);
  v6 = *(v5 + 48);
  if (v6)
  {
    v12 = v5;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v15 = &v13;
      v16 = &v12;
      v14 = &v15;
      std::__call_once(v6, &v14, sub_1000B32C4);
    }

    v7 = *(v5 + 48);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
    if (v7)
    {
      v12 = v5;
      v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v15 = &v13;
        v16 = &v12;
        v14 = &v15;
        std::__call_once(v7, &v14, sub_1000B32C4);
      }

      v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    }
  }

  else
  {
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
  }

  if (v8 > 5)
  {
    if (v8 <= 7)
    {
      if (v8 == 6)
      {
        v9 = sub_1001055EC(*(a1 + 8));
      }

      else
      {
        v9 = sub_1001056B8(*(a1 + 8));
      }

      goto LABEL_29;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        v9 = sub_1000B3534(*(a1 + 8));
      }

      else
      {
        if (v8 != 10)
        {
          return;
        }

        (*(**(a1 + 144) + 152))(*(a1 + 144));
        Message = google::protobuf::Reflection::GetMessage(v10, *(a1 + 144), v5, 0);
        v9 = (*(*Message + 32))(Message, *(a1 + 8));
      }

      goto LABEL_29;
    }

LABEL_24:
    v9 = sub_1001051F0(*(a1 + 8));
    goto LABEL_29;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = sub_100105388(*(a1 + 8));
    }

    else if (v8 == 4)
    {
      v9 = sub_100105454(*(a1 + 8));
    }

    else
    {
      v9 = sub_100105520(*(a1 + 8));
    }

    goto LABEL_29;
  }

  if (v8 == 1)
  {
    goto LABEL_24;
  }

  if (v8 != 2)
  {
    return;
  }

  v9 = sub_1001052BC(*(a1 + 8));
LABEL_29:
  *a2 = v9;
}

BOOL google::protobuf::internal::DynamicMapField::InsertOrLookupMapValue(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v6 = (*(*a1 + 168))(a1);
  sub_100104ACC(v6, a2, 0, v10);
  v7 = v10[0];
  if (v10[0])
  {
    v8 = v10[0];
  }

  else
  {
    sub_100105784(a1 + 12, a2, v10);
    v8 = v10[0];
    google::protobuf::internal::DynamicMapField::AllocateMapValue(a1, v10[0] + 32);
  }

  result = v7 == 0;
  *(a3 + 8) = *(v8 + 40);
  *a3 = *(v8 + 32);
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::LookupMapValue(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (*(*a1 + 160))(a1);
  sub_100104ACC(v5, a2, 0, v8);
  v6 = v8[0];
  if (v8[0])
  {
    *(a3 + 8) = *(v8[0] + 40);
    *a3 = *(v6 + 32);
  }

  return v6 != 0;
}

BOOL google::protobuf::internal::DynamicMapField::DeleteMapValue(uint64_t a1, unsigned int *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  sub_100104ACC((a1 + 96), a2, 0, &v11);
  v4 = v11;
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    *(a1 + 88) = 0;
    if (!*(a1 + 8))
    {
      v8 = v4;
      sub_10010071C((v5 + 32));
      v4 = v8;
    }

    v9 = v4;
    v10 = v6;
    v11 = v4;
    v12 = v6;
    sub_100104958(&v9);
    sub_100106148((a1 + 96), &v11);
  }

  return v5 != 0;
}

uint64_t google::protobuf::internal::DynamicMapField::MutableMap(google::protobuf::internal::DynamicMapField *this)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this);
  *(this + 22) = 0;
  return this + 96;
}

void google::protobuf::internal::DynamicMapField::SetMapIteratorValue(uint64_t a1, const std::string ***a2)
{
  v2 = **a2;
  if (v2)
  {
    sub_100100F44((a2 + 2), **a2);
    *(a2 + 14) = v2[1].__r_.__value_.__r.__words[2];
    a2[6] = v2[1].__r_.__value_.__l.__size_;
  }
}

void sub_100100F44(uint64_t a1, const std::string *a2)
{
  v4 = sub_100103FB4(a2);
  sub_1001043A0(a1, v4);
  v5 = *(a1 + 24);
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
LABEL_15:
        *a1 = a2->__r_.__value_.__r.__words[0];
        return;
      }

      if (v5 != 3)
      {
        return;
      }
    }

    *a1 = a2->__r_.__value_.__l.__data_;
    return;
  }

  if (v5 > 0xA)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0x560) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 213);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return;
  }

  if (v5 == 7)
  {
    *a1 = a2->__r_.__value_.__s.__data_[0];
    return;
  }

  if (v5 != 9)
  {
LABEL_14:
    if (v5 != 4)
    {
      return;
    }

    goto LABEL_15;
  }

  std::string::operator=(a1, a2);
}

void sub_100101064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::DynamicMapField::MergeFrom(google::protobuf::internal::DynamicMapField *this, const google::protobuf::internal::MapFieldBase *a2)
{
  result = (*(*this + 168))(this);
  v5 = *(a2 + 15);
  v6 = *(a2 + 13);
  if (v6 > v5)
  {
    v7 = result;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *(v8 + 8 * v5);
      if (v9)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return result;
      }
    }

    if (v9 == *(v8 + 8 * (v5 ^ 1)))
    {
      v9 = *(*v9 + 40);
      v26 = v9;
      v27 = a2 + 96;
      v28 = v5;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v26 = *(v8 + 8 * v5);
      v27 = a2 + 96;
      v28 = v5;
    }

    do
    {
      sub_100104ACC(v7, v9, 0, v29);
      if (v29[0])
      {
        v10 = (v29[0] + 32);
      }

      else
      {
        sub_100105784(this + 12, v26, v29);
        v10 = (v29[0] + 32);
        google::protobuf::internal::DynamicMapField::AllocateMapValue(this, v29[0] + 32);
      }

      v11 = (*(**(this + 18) + 152))(*(this + 18));
      v12 = google::protobuf::Descriptor::map_value(v11);
      v13 = *(v12 + 48);
      if (v13)
      {
        v30 = v12;
        v31 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v13, memory_order_acquire) != -1)
        {
          v29[0] = &v31;
          v29[1] = &v30;
          v32 = v29;
          std::__call_once(v13, &v32, sub_1000B32C4);
        }
      }

      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 56)];
      if (v14 > 5)
      {
        if (v14 <= 7)
        {
          if (v14 == 6)
          {
            v21 = sub_100101CC4((v26 + 8));
            sub_100101BBC(v10, v21);
          }

          else
          {
            v19 = sub_1001020C4(v26 + 4);
            sub_100101FC4(v10, v19);
          }
        }

        else
        {
          switch(v14)
          {
            case 8:
              v23 = sub_1001024BC(v26 + 4);
              sub_1001023BC(v10, v23);
              break;
            case 9:
              v25 = sub_1001022C4((v26 + 8));
              sub_1001021C0(v10, v25);
              break;
            case 10:
              v16 = sub_1001025B8(v10);
              v17 = sub_1001026B0((v26 + 8));
              (*(*v16 + 112))(v16, v17);
              break;
          }
        }
      }

      else if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v20 = sub_1001014CC(v26 + 4);
          sub_1001013CC(v10, v20);
        }

        else if (v14 == 2)
        {
          v18 = sub_1001016C8((v26 + 8));
          sub_1001015C8(v10, v18);
        }
      }

      else if (v14 == 3)
      {
        v22 = sub_1001018C4(v26 + 4);
        sub_1001017C4(v10, v22);
      }

      else if (v14 == 4)
      {
        v24 = sub_100101AC0((v26 + 8));
        sub_1001019C0(v10, v24);
      }

      else
      {
        v15 = sub_100101EC8((v26 + 8));
        sub_100101DC0(v10, v15);
      }

      result = sub_100104958(&v26);
      v9 = v26;
    }

    while (v26);
  }

  return result;
}

void sub_1001013CC(_DWORD **a1, int a2)
{
  if (sub_100104054(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 783);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001014B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001014CC(unsigned int **a1)
{
  if (sub_100104054(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 695);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001015B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001015C8(void **a1, uint64_t a2)
{
  if (sub_100104054(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 775);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001016B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001016C8(uint64_t a1)
{
  if (sub_100104054(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 685);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001017AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001017C4(_DWORD **a1, int a2)
{
  if (sub_100104054(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 787);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001018AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001018C4(unsigned int **a1)
{
  if (sub_100104054(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 700);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001019A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001019C0(void **a1, uint64_t a2)
{
  if (sub_100104054(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 779);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_100101AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101AC0(uint64_t a1)
{
  if (sub_100104054(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 690);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_100101BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100101BBC(float **a1, float a2)
{
  if (sub_100104054(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 804);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetFloatValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "float");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_100101CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float sub_100101CC4(uint64_t a1)
{
  if (sub_100104054(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 718);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetFloatValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "float");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_100101DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100101DC0(double **a1, double a2)
{
  if (sub_100104054(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 808);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetDoubleValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "double");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_100101EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100101EC8(uint64_t a1)
{
  if (sub_100104054(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 723);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetDoubleValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "double");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_100101FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100101FC4(_BYTE **a1, char a2)
{
  if (sub_100104054(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 791);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetBoolValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "BOOL");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001020AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001020C4(unsigned __int8 **a1)
{
  if (sub_100104054(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 704);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001021A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *sub_1001021C0(std::string **a1, const std::string *a2)
{
  if (sub_100104054(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 800);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetStringValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "string");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return std::string::operator=(*a1, a2);
}

void sub_1001022AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001022C4(uint64_t a1)
{
  if (sub_100104054(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 713);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001023A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001023BC(_DWORD **a1, int a2)
{
  if (sub_100104054(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 796);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetEnumValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "enum");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_100104054(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_1001024A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001024BC(unsigned int **a1)
{
  if (sub_100104054(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 708);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetEnumValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "enum");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_1001025A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001025B8(uint64_t a1)
{
  if (sub_100104054(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 814);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueRef::MutableMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_100102698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001026B0(uint64_t a1)
{
  if (sub_100104054(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 729);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100104054(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_100102790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::DynamicMapField::Swap(google::protobuf::internal::DynamicMapField *this, google::protobuf::internal::MapFieldBase *a2)
{
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = sub_1001027F8(this + 12, a2 + 12);
  v6 = *(a2 + 22);
  *(a2 + 22) = *(this + 22);
  *(this + 22) = v6;
  return result;
}

uint64_t *sub_1001027F8(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5])
  {

    return sub_100106298(a1, a2);
  }

  else
  {
    sub_1001062EC(v5, a1);
    sub_1001063B8(a1, a2);
    sub_1001063B8(a2, v5);
    return sub_1001044FC(v5);
  }
}

void *google::protobuf::internal::DynamicMapField::SyncRepeatedFieldWithMapNoLock(google::protobuf::internal::DynamicMapField *this)
{
  (*(**(this + 18) + 152))(*(this + 18));
  v3 = v2;
  v4 = (*(**(this + 18) + 152))(*(this + 18));
  v5 = google::protobuf::Descriptor::map_key(v4);
  v6 = (*(**(this + 18) + 152))(*(this + 18));
  result = google::protobuf::Descriptor::map_value(v6);
  v8 = result;
  v9 = *(this + 2);
  if (!v9)
  {
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    result = sub_1001043FC(v10);
    v9 = result;
    *(this + 2) = result;
  }

  v11 = *(v9 + 8);
  if (v11 >= 1)
  {
    v12 = (*(v9 + 16) + 8);
    do
    {
      v13 = *v12++;
      result = (*(*v13 + 40))(v13);
      --v11;
    }

    while (v11);
    *(v9 + 8) = 0;
  }

  v14 = *(this + 15);
  v15 = *(this + 13);
  if (v15 > v14)
  {
    v16 = *(this + 16);
    while (1)
    {
      v17 = *(v16 + 8 * v14);
      if (v17)
      {
        break;
      }

      if (v15 == ++v14)
      {
        return result;
      }
    }

    if (v17 != *(v16 + 8 * (v14 ^ 1)))
    {
      v50 = *(v16 + 8 * v14);
      v51 = this + 96;
      v52 = v14;
      while (1)
      {
LABEL_17:
        v18 = (*(**(this + 18) + 32))(*(this + 18), *(this + 1));
        sub_100106518(*(this + 2), v18);
        v19 = v50;
        v20 = *(v5 + 48);
        if (v20)
        {
          v53 = v5;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v20, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v20, &v55, sub_1000B32C4);
          }
        }

        v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
        if (v21 <= 3)
        {
          switch(v21)
          {
            case 1:
              v27 = sub_10010311C(v19);
              google::protobuf::Reflection::SetInt32(v3, v18, v5, v27);
              break;
            case 2:
              v28 = sub_100103024(v19);
              google::protobuf::Reflection::SetInt64(v3, v18, v5, v28);
              break;
            case 3:
              v23 = sub_10010330C(v19);
              google::protobuf::Reflection::SetUInt32(v3, v18, v5, v23);
              break;
          }

          goto LABEL_40;
        }

        if (v21 > 0xA)
        {
          break;
        }

        if (((1 << v21) & 0x560) != 0)
        {
          google::protobuf::internal::LogMessage::LogMessage(v47, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/map_field.cc", 430);
          v22 = google::protobuf::internal::LogMessage::operator<<(v47, "Can't get here.");
          google::protobuf::internal::LogFinisher::operator=(&v55, &v22->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v47[0].__r_.__value_.__l.__data_);
        }

        else if (v21 == 7)
        {
          v29 = sub_100103404(v19);
          google::protobuf::Reflection::SetBool(v3, v18, v5, v29);
        }

        else
        {
          if (v21 != 9)
          {
            break;
          }

          v24 = sub_100102F2C(v19);
          if (*(v24 + 23) < 0)
          {
            sub_1000B32D8(__p, *v24, *(v24 + 8));
          }

          else
          {
            v25 = *v24;
            v49 = *(v24 + 16);
            *__p = v25;
          }

          google::protobuf::Reflection::SetString(v3, v18, v5, __p);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_40:
        v30 = v50;
        v31 = *(v8 + 48);
        if (v31)
        {
          v53 = v8;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v31, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v31, &v55, sub_1000B32C4);
          }
        }

        v32 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        if (v32 > 5)
        {
          if (v32 <= 7)
          {
            if (v32 == 6)
            {
              v39 = sub_100101CC4((v30 + 8));
              google::protobuf::Reflection::SetFloat(v3, v18, v8, v39);
            }

            else
            {
              v37 = sub_1001020C4(v30 + 4);
              google::protobuf::Reflection::SetBool(v3, v18, v8, v37);
            }
          }

          else
          {
            switch(v32)
            {
              case 8:
                v41 = sub_1001024BC(v30 + 4);
                google::protobuf::Reflection::SetEnumValue(v3, v18, v8, v41);
                break;
              case 10:
                v43 = sub_1001026B0((v30 + 8));
                v44 = google::protobuf::Reflection::MutableMessage(v3, v18, v8, 0);
                (*(*v44 + 112))(v44, v43);
                break;
              case 9:
                v34 = sub_1001022C4((v30 + 8));
                if (*(v34 + 23) < 0)
                {
                  sub_1000B32D8(v45, *v34, *(v34 + 8));
                }

                else
                {
                  v35 = *v34;
                  v46 = *(v34 + 16);
                  *v45 = v35;
                }

                google::protobuf::Reflection::SetString(v3, v18, v8, v45);
                if (SHIBYTE(v46) < 0)
                {
                  operator delete(v45[0]);
                }

                break;
            }
          }
        }

        else if (v32 <= 2)
        {
          if (v32 == 1)
          {
            v38 = sub_1001014CC(v30 + 4);
            google::protobuf::Reflection::SetInt32(v3, v18, v8, v38);
          }

          else if (v32 == 2)
          {
            v36 = sub_1001016C8((v30 + 8));
            google::protobuf::Reflection::SetInt64(v3, v18, v8, v36);
          }
        }

        else if (v32 == 3)
        {
          v40 = sub_1001018C4(v30 + 4);
          google::protobuf::Reflection::SetUInt32(v3, v18, v8, v40);
        }

        else if (v32 == 4)
        {
          v42 = sub_100101AC0((v30 + 8));
          google::protobuf::Reflection::SetUInt64(v3, v18, v8, v42);
        }

        else
        {
          v33 = sub_100101EC8((v30 + 8));
          google::protobuf::Reflection::SetDouble(v3, v18, v8, v33);
        }

        result = sub_100104958(&v50);
        if (!v50)
        {
          return result;
        }
      }

      if (v21 == 4)
      {
        v26 = sub_100103214(v19);
        google::protobuf::Reflection::SetUInt64(v3, v18, v5, v26);
      }

      goto LABEL_40;
    }

    v50 = *(*v17 + 40);
    v51 = this + 96;
    v52 = v14;
    if (v50)
    {
      goto LABEL_17;
    }
  }

  return result;
}