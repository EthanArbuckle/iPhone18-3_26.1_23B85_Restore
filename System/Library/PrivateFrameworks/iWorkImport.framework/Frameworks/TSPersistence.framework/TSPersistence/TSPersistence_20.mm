uint64_t google::protobuf::Reflection::GetRepeatedUInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedUInt32", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_276B7106C(*this, a3, "GetRepeatedUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedUInt32((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedUInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, int a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedUInt32", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_276B7106C(*this, a3, "SetRepeatedUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedUInt32((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddUInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddUInt32", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_276B7106C(*this, a3, "AddUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddUInt32((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve();
    }

    *(*(v14 + 1) + 4 * v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetUInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetUInt64", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_276B7106C(*this, a3, "GetUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetUInt64((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
  }

  else
  {
    return *(a3 + 18);
  }
}

uint64_t *google::protobuf::Reflection::SetUInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, unint64_t a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_276B70414(v7, a3, "SetUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetUInt64", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_276B7106C(*this, a3, "SetUInt64", 4);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6EE84(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetUInt64((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedUInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedUInt64", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_276B7106C(*this, a3, "GetRepeatedUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedUInt64((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 8 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedUInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, uint64_t a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedUInt64", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_276B7106C(*this, a3, "SetRepeatedUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedUInt64((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 8 * a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddUInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddUInt64", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_276B7106C(*this, a3, "AddUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddUInt64((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve();
    }

    *(*(v14 + 1) + 8 * v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

float google::protobuf::Reflection::GetFloat(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetFloat", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_276B7106C(*this, a3, "GetFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetFloat((a2 + *(this + 10)), *(a3 + 17), *(a3 + 36));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
  }

  else
  {
    return *(a3 + 36);
  }
}

uint64_t *google::protobuf::Reflection::SetFloat(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, float a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_276B70414(v7, a3, "SetFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetFloat", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_276B7106C(*this, a3, "SetFloat", 6);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6EFF4(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetFloat((a2 + v9), v10, *(a3 + 56), v13, a3);
}

float google::protobuf::Reflection::GetRepeatedFloat(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedFloat", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_276B7106C(*this, a3, "GetRepeatedFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedFloat((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedFloat(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, float a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedFloat", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_276B7106C(*this, a3, "SetRepeatedFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedFloat((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddFloat(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, float a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddFloat", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_276B7106C(*this, a3, "AddFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddFloat((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<float>::Reserve();
    }

    *(*(v14 + 1) + 4 * v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

double google::protobuf::Reflection::GetDouble(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetDouble", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_276B7106C(*this, a3, "GetDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetDouble((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
  }

  else
  {
    return *(a3 + 18);
  }
}

uint64_t *google::protobuf::Reflection::SetDouble(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, double a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_276B70414(v7, a3, "SetDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetDouble", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_276B7106C(*this, a3, "SetDouble", 5);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6F16C(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetDouble((a2 + v9), v10, *(a3 + 56), v13, a3);
}

double google::protobuf::Reflection::GetRepeatedDouble(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedDouble", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_276B7106C(*this, a3, "GetRepeatedDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedDouble((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 8 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedDouble(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, double a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedDouble", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_276B7106C(*this, a3, "SetRepeatedDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedDouble((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 8 * a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddDouble(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, double a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddDouble", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_276B7106C(*this, a3, "AddDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddDouble((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<double>::Reserve();
    }

    *(*(v14 + 1) + 8 * v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetBool(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetBool", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetBool", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v7, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_276B7106C(*this, a3, "GetBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    Bool = google::protobuf::internal::ExtensionSet::GetBool((a2 + *(this + 10)), *(a3 + 17), *(a3 + 144));
  }

  else
  {
    v9 = *(a3 + 11);
    if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
    {
      Bool = *(a2 + sub_276B7958C(this + 8, a3));
    }

    else
    {
      Bool = *(a3 + 144);
    }
  }

  return Bool & 1;
}

uint64_t *google::protobuf::Reflection::SetBool(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, BOOL a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_276B70414(v7, a3, "SetBool", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetBool", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_276B7106C(*this, a3, "SetBool", 7);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6F2E4(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetBool((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedBool(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedBool", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedBool", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v9, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_276B7106C(*this, a3, "GetRepeatedBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    RepeatedBool = google::protobuf::internal::ExtensionSet::GetRepeatedBool((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    RepeatedBool = *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + a4);
  }

  return RepeatedBool & 1;
}

void google::protobuf::Reflection::SetRepeatedBool(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, char a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedBool", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedBool", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_276B7106C(*this, a3, "SetRepeatedBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedBool((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddBool(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, char a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddBool", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddBool", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_276B7106C(*this, a3, "AddBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddBool((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<BOOL>::Reserve();
    }

    *(*(v14 + 1) + v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

unint64_t google::protobuf::Reflection::GetStringReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(a3 + 80) != v6)
  {
    sub_276B70414(v6, a3, "GetStringReference", "Field does not match message type.");
  }

  if (*(a3 + 60) == 3)
  {
    sub_276B70414(*a1, a3, "GetStringReference", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 48);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)] != 9)
  {
    sub_276B7106C(*a1, a3, "GetStringReference", 9);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetString((a2 + *(a1 + 40)), *(a3 + 68), *(a3 + 144));
  }

  v9 = *(a3 + 88);
  if (v9 && (*(v9 + 24) != 1 || (*(**(v9 + 32) + 65) & 1) == 0) && *(a2 + *(a1 + 44) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) != *(a3 + 68))
  {
    return *(a3 + 144);
  }

  result = *(a2 + sub_276B7958C(a1 + 8, a3)) & 0xFFFFFFFFFFFFFFFELL;
  if (!result)
  {
    return *(a3 + 144);
  }

  return result;
}

void *google::protobuf::Reflection::GetRepeatedString@<X0>(google::protobuf::Reflection *this@<X0>, const google::protobuf::Message *a2@<X1>, const google::protobuf::FieldDescriptor *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "GetRepeatedString", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedString", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v21[0] = &v19;
      v21[1] = &v18;
      v20 = v21;
      std::__call_once(v11, &v20, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_276B7106C(*this, a3, "GetRepeatedString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    result = google::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(this + 10)), *(a3 + 17), a4);
    if ((*(result + 23) & 0x80000000) == 0)
    {
      v13 = *result;
      v14 = result[2];
LABEL_15:
      *(a5 + 16) = v14;
      *a5 = v13;
      return result;
    }

    v16 = *result;
    v17 = result[1];
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v15 = *(*(a2 + result + 16) + 8 * a4 + 8);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
      v13 = *v15;
      v14 = *(v15 + 2);
      goto LABEL_15;
    }

    v16 = *v15;
    v17 = *(v15 + 1);
  }

  return sub_276A07B90(a5, v16, v17);
}

uint64_t google::protobuf::Reflection::GetRepeatedStringReference(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *a1;
  if (*(a3 + 80) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedStringReference", "Field does not match message type.");
  }

  if (*(a3 + 60) != 3)
  {
    sub_276B70414(*a1, a3, "GetRepeatedStringReference", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 48);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)] != 9)
  {
    sub_276B7106C(*a1, a3, "GetRepeatedStringReference", 9);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(a1 + 40)), *(a3 + 68), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(a1 + 8, a3) + 16) + 8 * a4 + 8);
  }
}

void google::protobuf::Reflection::SetRepeatedString(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  if (*(a3 + 80) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedString", "Field does not match message type.");
  }

  if (*(a3 + 60) != 3)
  {
    sub_276B70414(*a1, a3, "SetRepeatedString", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 48);
  if (v11)
  {
    v22 = a3;
    v23 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v25[0] = &v23;
      v25[1] = &v22;
      v24 = v25;
      std::__call_once(v11, &v24, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)] != 9)
  {
    sub_276B7106C(*a1, a3, "SetRepeatedString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    v12 = *(a1 + 40);
    v13 = *(a3 + 68);
    v14 = *a5;
    v26[0] = a5[1];
    *(v26 + 7) = *(a5 + 15);
    v15 = *(a5 + 23);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    v16 = google::protobuf::internal::ExtensionSet::MutableRepeatedString((a2 + v12), v13, a4);
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v18 = v26[0];
    *v17 = v14;
    *(v17 + 8) = v18;
    *(v17 + 15) = *(v26 + 7);
    *(v17 + 23) = v15;
  }

  else
  {
    v19 = *(*(a2 + sub_276B7958C(a1 + 8, a3) + 16) + 8 * a4 + 8);
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    v20 = *a5;
    *(v19 + 16) = a5[2];
    *v19 = v20;
    *(a5 + 23) = 0;
    *a5 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_276B75490(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Reflection::AddString(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, __int128 *a4)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddString", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*a1, a3, "AddString", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v31 = &v29;
      v32 = &v28;
      v30 = &v31;
      std::__call_once(v9, &v30, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_276B7106C(*a1, a3, "AddString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v28 = a3;
      v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v31 = &v29;
        v32 = &v28;
        v30 = &v31;
        std::__call_once(v12, &v30, sub_2769C149C);
      }
    }

    v13 = *(a3 + 56);
    v14 = *a4;
    v33[0] = *(a4 + 1);
    *(v33 + 7) = *(a4 + 15);
    v15 = *(a4 + 23);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    v16 = google::protobuf::internal::ExtensionSet::AddString((a2 + v10), v11, v13, a3);
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v18 = v33[0];
    *v17 = v14;
    v17[1] = v18;
    *(v17 + 15) = *(v33 + 7);
    *(v17 + 23) = v15;
    goto LABEL_27;
  }

  v19 = a2 + sub_276B7958C(a1 + 8, a3);
  v20 = *(v19 + 16);
  if (!v20)
  {
    v22 = *(v19 + 12);
    goto LABEL_22;
  }

  v21 = *(v19 + 8);
  v22 = *v20;
  if (v21 >= *v20)
  {
    if (v22 != *(v19 + 12))
    {
LABEL_23:
      *v20 = v22 + 1;
      v23 = sub_2769C64F4(*v19);
      v24 = *(v19 + 8);
      v25 = *(v19 + 16) + 8 * v24;
      *(v19 + 8) = v24 + 1;
      *(v25 + 8) = v23;
      goto LABEL_24;
    }

LABEL_22:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v19, v22 + 1);
    v20 = *(v19 + 16);
    v22 = *v20;
    goto LABEL_23;
  }

  *(v19 + 8) = v21 + 1;
  v23 = *&v20[2 * v21 + 2];
LABEL_24:
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  v26 = *a4;
  v23[2] = *(a4 + 2);
  *v23 = v26;
  *(a4 + 23) = 0;
  *a4 = 0;
LABEL_27:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_276B75770(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Reflection::GetEnum(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  EnumValue = google::protobuf::Reflection::GetEnumValue(this, a2, a3);
  v5 = google::protobuf::FieldDescriptor::enum_type(a3);

  return google::protobuf::EnumDescriptor::FindValueByNumberCreatingIfUnknown(v5, EnumValue);
}

uint64_t google::protobuf::Reflection::GetEnumValue(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetEnumValue", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetEnumValue", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v13 = a3;
    v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v16[0] = &v14;
      v16[1] = &v13;
      v15 = v16;
      std::__call_once(v7, &v15, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_276B7106C(*this, a3, "GetEnumValue", 8);
  }

  if (*(a3 + 67) == 1)
  {
    v8 = *(this + 10);
    v9 = *(a3 + 17);
    v10 = google::protobuf::FieldDescriptor::default_value_enum(a3);
    return google::protobuf::internal::ExtensionSet::GetEnum((a2 + v8), v9, *(v10 + 16));
  }

  else
  {
    v12 = *(a3 + 11);
    if (!v12 || *(v12 + 24) == 1 && (*(**(v12 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v12 - *(*(v12 + 16) + 48)) >> 4)) == *(a3 + 17))
    {
      return *(a2 + sub_276B7958C(this + 8, a3));
    }

    else
    {
      return *(google::protobuf::FieldDescriptor::default_value_enum(a3) + 16);
    }
  }
}

uint64_t *google::protobuf::Reflection::SetEnum(google::protobuf::Reflection *this, google::protobuf::Message *a2, const std::string::value_type **a3, const google::protobuf::EnumValueDescriptor *a4)
{
  v8 = *(a4 + 3);
  if (v8 != google::protobuf::FieldDescriptor::enum_type(a3))
  {
    sub_276B75A08(*this, a3, "SetEnum", a4);
  }

  v9 = *(a4 + 4);

  return google::protobuf::Reflection::SetEnumValueInternal(this, a2, a3, v9);
}

void sub_276B75A08(uint64_t a1, const std::string::value_type **a2, const std::string::value_type *a3, uint64_t a4)
{
  google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 155);
  v8 = google::protobuf::internal::LogMessage::operator<<(v20, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::");
  v9 = google::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = google::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = google::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2[1]);
  v14 = google::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : Enum value did not match field type:\n    Expected  : ");
  v15 = google::protobuf::FieldDescriptor::enum_type(a2);
  v16 = google::protobuf::internal::LogMessage::operator<<(v14, *(v15 + 8));
  v17 = google::protobuf::internal::LogMessage::operator<<(v16, "\n    Actual    : ");
  v18 = google::protobuf::internal::LogMessage::operator<<(v17, *(a4 + 8));
  google::protobuf::internal::LogFinisher::operator=(&v19, &v18->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
}

void sub_276B75AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::Reflection::SetEnumValueInternal(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v10 = a4;
  if (*(a3 + 67) != 1)
  {
    return sub_276B6ED14(this, a2, a3, &v10);
  }

  v6 = *(this + 10);
  v7 = *(a3 + 17);
  v8 = *(a3 + 6);
  if (v8)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v8, &v13, sub_2769C149C);
    }

    a4 = v10;
  }

  return google::protobuf::internal::ExtensionSet::SetEnum((a2 + v6), v7, *(a3 + 56), a4, a3);
}

void google::protobuf::Reflection::SetEnumValue(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "SetEnumValue", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetEnumValue", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v17[0] = &v15;
      v17[1] = &v14;
      v16 = v17;
      std::__call_once(v9, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_276B7106C(*this, a3, "SetEnumValue", 8);
  }

  if (*(*(a3 + 5) + 60) == 3 || (v10 = google::protobuf::FieldDescriptor::enum_type(a3), google::protobuf::EnumDescriptor::FindValueByNumber(v10, a4)))
  {
    google::protobuf::Reflection::SetEnumValueInternal(this, a2, a3, a4);
  }

  else
  {
    v11 = *(this + 9);
    v12 = *(a2 + v11);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C((a2 + v11));
    }

    google::protobuf::UnknownFieldSet::AddVarint(v13, *(a3 + 17), a4);
  }
}

uint64_t google::protobuf::Reflection::GetRepeatedEnum(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  RepeatedEnumValue = google::protobuf::Reflection::GetRepeatedEnumValue(this, a2, a3, a4);
  v6 = google::protobuf::FieldDescriptor::enum_type(a3);

  return google::protobuf::EnumDescriptor::FindValueByNumberCreatingIfUnknown(v6, RepeatedEnumValue);
}

uint64_t google::protobuf::Reflection::GetRepeatedEnumValue(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedEnumValue", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedEnumValue", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_276B7106C(*this, a3, "GetRepeatedEnumValue", 8);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedEnum((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedEnum(uint64_t *a1, google::protobuf::Message *a2, const std::string::value_type **this, int a4, uint64_t a5)
{
  v10 = *(a5 + 24);
  if (v10 != google::protobuf::FieldDescriptor::enum_type(this))
  {
    sub_276B75A08(*a1, this, "SetRepeatedEnum", a5);
  }

  v11 = *(a5 + 16);

  google::protobuf::Reflection::SetRepeatedEnumValueInternal(a1, a2, this, a4, v11);
}

void google::protobuf::Reflection::SetRepeatedEnumValueInternal(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, int a5)
{
  if (*(a3 + 67) == 1)
  {
    v6 = *(a3 + 17);
    v7 = (a2 + *(this + 10));

    google::protobuf::internal::ExtensionSet::SetRepeatedEnum(v7, v6, a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4) = a5;
  }
}

void google::protobuf::Reflection::SetRepeatedEnumValue(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, int a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedEnum", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedEnum", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v19[0] = &v17;
      v19[1] = &v16;
      v18 = v19;
      std::__call_once(v11, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_276B7106C(*this, a3, "SetRepeatedEnum", 8);
  }

  if (*(*(a3 + 5) + 60) == 3 || (v12 = google::protobuf::FieldDescriptor::enum_type(a3), google::protobuf::EnumDescriptor::FindValueByNumber(v12, a5)))
  {
    google::protobuf::Reflection::SetRepeatedEnumValueInternal(this, a2, a3, a4, a5);
  }

  else
  {
    v13 = *(this + 9);
    v14 = *(a2 + v13);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v15 = sub_2769F617C((a2 + v13));
    }

    google::protobuf::UnknownFieldSet::AddVarint(v15, *(a3 + 17), a5);
  }
}

uint64_t *google::protobuf::Reflection::AddEnum(uint64_t *a1, google::protobuf::Message *a2, const std::string::value_type **this, uint64_t a4)
{
  v8 = *(a4 + 24);
  if (v8 != google::protobuf::FieldDescriptor::enum_type(this))
  {
    sub_276B75A08(*a1, this, "AddEnum", a4);
  }

  v9 = *(a4 + 16);

  return google::protobuf::Reflection::AddEnumValueInternal(a1, a2, this, v9);
}

uint64_t *google::protobuf::Reflection::AddEnumValueInternal(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  if (*(a3 + 67) == 1)
  {
    v7 = *(this + 10);
    v8 = *(a3 + 17);
    v9 = *(a3 + 6);
    if (v9)
    {
      v13 = a3;
      v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v9, memory_order_acquire) != -1)
      {
        v16[0] = &v14;
        v16[1] = &v13;
        v15 = v16;
        std::__call_once(v9, &v15, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddEnum((a2 + v7), v8, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v11 = (a2 + result);
    v12 = *v11;
    if (v12 == v11[1])
    {
      google::protobuf::RepeatedField<int>::Reserve();
    }

    *(*(v11 + 1) + 4 * v12) = a4;
    *v11 = v12 + 1;
  }

  return result;
}

void google::protobuf::Reflection::AddEnumValue(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddEnum", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddEnum", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v17[0] = &v15;
      v17[1] = &v14;
      v16 = v17;
      std::__call_once(v9, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_276B7106C(*this, a3, "AddEnum", 8);
  }

  if (*(*(a3 + 5) + 60) == 3 || (v10 = google::protobuf::FieldDescriptor::enum_type(a3), google::protobuf::EnumDescriptor::FindValueByNumber(v10, a4)))
  {
    google::protobuf::Reflection::AddEnumValueInternal(this, a2, a3, a4);
  }

  else
  {
    v11 = *(this + 9);
    v12 = *(a2 + v11);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C((a2 + v11));
    }

    google::protobuf::UnknownFieldSet::AddVarint(v13, *(a3 + 17), a4);
  }
}

unint64_t google::protobuf::Reflection::GetDefaultMessageInstance(google::protobuf::Reflection *this, atomic_ullong *a2)
{
  v4 = *(this + 8);
  if (v4 == google::protobuf::MessageFactory::generated_factory(this))
  {
    result = atomic_load_explicit(a2 + 18, memory_order_acquire);
    if (!result)
    {
      v11 = *(this + 8);
      v12 = google::protobuf::FieldDescriptor::message_type(a2);
      result = (*(*v11 + 16))(v11, v12);
      atomic_store(result, a2 + 18);
    }
  }

  else if (*(a2 + 67) & 1) != 0 || (v5 = a2[15], (*(v5 + 79)) || (*(v5 + 77) & 1) != 0 || (v6 = a2[11]) != 0 && (*(v6 + 24) != 1 || *(**(v6 + 32) + 65) != 1) || (result = *sub_276B79A2C(this + 1, a2)) == 0)
  {
    v8 = *(this + 8);
    v9 = google::protobuf::FieldDescriptor::message_type(a2);
    v10 = *(*v8 + 16);

    return v10(v8, v9);
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetMessage(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetMessage", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v15 = a3;
    v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v18[0] = &v16;
      v18[1] = &v15;
      v17 = v18;
      std::__call_once(v9, &v17, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "GetMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 8);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = google::protobuf::FieldDescriptor::message_type(a3);
    return google::protobuf::internal::ExtensionSet::GetMessage((a2 + v10), v11, v12, a4);
  }

  else
  {
    v14 = *(a3 + 11);
    if (v14 && (*(v14 + 24) != 1 || (*(**(v14 + 32) + 65) & 1) == 0) && *(a2 + *(this + 11) - 1431655764 * ((v14 - *(*(v14 + 16) + 48)) >> 4)) != *(a3 + 17))
    {
      return google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
    }

    result = *(a2 + sub_276B7958C(this + 8, a3));
    if (!result)
    {
      return google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
    }
  }

  return result;
}

uint64_t google::protobuf::Reflection::MutableMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "MutableMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "MutableMessage", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v27 = a3;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v30[0] = &v28;
      v30[1] = &v27;
      v29 = v30;
      std::__call_once(v9, &v29, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "MutableMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 8);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::MutableMessage((a2 + *(this + 10)), a3, a4);
  }

  v11 = sub_276B7958C(this + 8, a3);
  v12 = *(a3 + 11);
  if (!v12 || *(v12 + 24) == 1 && (*(**(v12 + 32) + 65) & 1) != 0)
  {
    v13 = *(this + 8);
    if (v13 != -1)
    {
      if (*(a3 + 67))
      {
        v14 = *(a3 + 12);
        v15 = (v14 ? v14 + 80 : *(a3 + 5) + 128);
      }

      else
      {
        v15 = (*(a3 + 10) + 40);
      }

      v20 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a3 - *v15) >> 3)) >> 30));
      if (v20 != -1)
      {
        *(a2 + v13 + ((v20 >> 3) & 0x1FFFFFFC)) |= 1 << v20;
      }
    }

LABEL_34:
    v21 = (a2 + v11);
    result = *v21;
    if (*v21)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (*(a2 + *(this + 11) - 1431655764 * ((v12 - *(*(v12 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    goto LABEL_34;
  }

  google::protobuf::Reflection::ClearOneof(this, a2, v12);
  v16 = *(a3 + 11);
  if (!v16 || *(v16 + 24) == 1 && (*(**(v16 + 32) + 65) & 1) != 0)
  {
    v17 = *(this + 8);
    if (v17 != -1)
    {
      if (*(a3 + 67))
      {
        v18 = *(a3 + 12);
        v19 = (v18 ? v18 + 80 : *(a3 + 5) + 128);
      }

      else
      {
        v19 = (*(a3 + 10) + 40);
      }

      v22 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a3 - *v19) >> 3)) >> 30));
      if (v22 != -1)
      {
        *(a2 + v17 + ((v22 >> 3) & 0x1FFFFFFC)) |= 1 << v22;
      }
    }
  }

  else
  {
    *(a2 + *(this + 11) - 1431655764 * ((v16 - *(*(v16 + 16) + 48)) >> 4)) = *(a3 + 17);
  }

  v21 = (a2 + sub_276B7958C(this + 8, a3));
  DefaultMessageInstance = google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
  v24 = *(a2 + 1);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = (*(*DefaultMessageInstance + 32))(DefaultMessageInstance, v24);
  *v21 = result;
  if (!result)
  {
LABEL_43:
    v25 = google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
    v26 = *(a2 + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = (*(*v25 + 32))(v25, v26);
    *v21 = result;
  }

  return result;
}

void google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4)
{
  v8 = *this;
  if (*(a4 + 10) != v8)
  {
    sub_276B70414(v8, a4, "SetAllocatedMessage", "Field does not match message type.");
  }

  if (*(a4 + 15) == 3)
  {
    sub_276B70414(*this, a4, "SetAllocatedMessage", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a4 + 6);
  if (v9)
  {
    v26 = a4;
    v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v29 = &v27;
      v30 = &v26;
      v28 = &v29;
      std::__call_once(v9, &v28, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)] != 10)
  {
    sub_276B7106C(*this, a4, "SetAllocatedMessage", 10);
  }

  if (*(a4 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a4 + 17);
    v12 = *(a4 + 6);
    if (v12)
    {
      v26 = a4;
      v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v29 = &v27;
        v30 = &v26;
        v28 = &v29;
        std::__call_once(v12, &v28, sub_2769C149C);
      }
    }

    google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage((a2 + v10), v11, *(a4 + 56), a4, a3);
    return;
  }

  v13 = *(a4 + 11);
  if (!v13 || *(v13 + 24) == 1 && (*(**(v13 + 32) + 65) & 1) != 0)
  {
    v14 = *(this + 8);
    if (a3)
    {
      if (v14 != -1)
      {
        v15 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a4 - *(*(a4 + 10) + 40)) >> 3)) >> 30));
        if (v15 != -1)
        {
          v16 = 1 << v15;
          v17 = a2 + v14;
          v18 = (v15 >> 3) & 0x1FFFFFFC;
          v19 = *&v17[v18] | v16;
LABEL_27:
          *&v17[v18] = v19;
        }
      }
    }

    else if (v14 != -1)
    {
      v20 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a4 - *(*(a4 + 10) + 40)) >> 3)) >> 30));
      if (v20 != -1)
      {
        v21 = 1 << v20;
        v17 = a2 + v14;
        v18 = (v20 >> 3) & 0x1FFFFFFC;
        v19 = *&v17[v18] & ~v21;
        goto LABEL_27;
      }
    }

    v22 = sub_276B7958C(this + 8, a4);
    v23 = v22;
    v24 = *(a2 + *(this + 9));
    if (v24)
    {
      if (!*(v24 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_30:
        v25 = *(a2 + v22);
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else if (!v24)
    {
      goto LABEL_30;
    }

    *(a2 + v23) = a3;
    return;
  }

  google::protobuf::Reflection::ClearOneof(this, a2, v13);
  if (a3)
  {
    *(a2 + sub_276B7958C(this + 8, a4)) = a3;
    *(a2 + *(this + 11) - 1431655764 * ((*(a4 + 11) - *(*(*(a4 + 11) + 16) + 48)) >> 4)) = *(a4 + 17);
  }
}

uint64_t google::protobuf::Reflection::UnsafeArenaReleaseMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "ReleaseMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "ReleaseMessage", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19[0] = &v17;
      v19[1] = &v16;
      v18 = v19;
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "ReleaseMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 8);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage((a2 + *(this + 10)), a3, a4);
  }

  v11 = *(a3 + 11);
  if (*(a3 + 15) != 3)
  {
    if (v11 && (*(v11 + 24) != 1 || *(**(v11 + 32) + 65) != 1))
    {
      goto LABEL_23;
    }

    v12 = *(this + 8);
    if (v12 != -1)
    {
      v13 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a3 - *(*(a3 + 10) + 40)) >> 3)) >> 30));
      if (v13 != -1)
      {
        *(a2 + v12 + ((v13 >> 3) & 0x1FFFFFFC)) &= ~(1 << v13);
      }
    }
  }

  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_23:
  if (*(v11 + 24) == 1 && (*(**(v11 + 32) + 65) & 1) != 0)
  {
    goto LABEL_27;
  }

  v14 = *(this + 11) - 1431655764 * ((v11 - *(*(v11 + 16) + 48)) >> 4);
  if (*(a2 + v14) == *(a3 + 17))
  {
    *(a2 + v14) = 0;
LABEL_27:
    v15 = sub_276B7958C(this + 8, a3);
    result = *(a2 + v15);
    *(a2 + v15) = 0;
    return result;
  }

  return 0;
}

uint64_t google::protobuf::Reflection::GetRepeatedMessage(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedMessage", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v9, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "GetRepeatedMessage", 10);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedMessage((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_276B7958C(this + 8, a3);
    v13 = *(google::protobuf::internal::MapFieldBase::GetRepeatedField((a2 + v12)) + 16);
  }

  else
  {
    v13 = *(a2 + sub_276B7958C(this + 8, a3) + 16);
  }

  return *(v13 + 8 * a4 + 8);
}

uint64_t google::protobuf::Reflection::MutableRepeatedMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "MutableRepeatedMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "MutableRepeatedMessage", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v9, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "MutableRepeatedMessage", 10);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::MutableRepeatedMessage((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_276B7958C(this + 8, a3);
    v13 = *(google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v12)) + 16);
  }

  else
  {
    v13 = *(a2 + sub_276B7958C(this + 8, a3) + 16);
  }

  return *(v13 + 8 * a4 + 8);
}

uint64_t google::protobuf::Reflection::AddMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddMessage", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v24 = &v22;
      v25 = &v21;
      v23 = &v24;
      std::__call_once(v9, &v23, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "AddMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 8);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::AddMessage((a2 + *(this + 10)), a3, a4);
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v24 = &v22;
      v25 = &v21;
      v23 = &v24;
      std::__call_once(v11, &v23, sub_2769C149C);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_276B7958C(this + 8, a3);
    v13 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v12));
  }

  else
  {
    v13 = a2 + sub_276B7958C(this + 8, a3);
  }

  v14 = *(v13 + 2);
  v15 = *(v13 + 2);
  if (!v14 || v15 >= *v14 || (v16 = v14 + 8 * v15, ++v15, *(v13 + 2) = v15, (v10 = *(v16 + 8)) == 0))
  {
    if (v15)
    {
      v17 = *(v14 + 8);
    }

    else
    {
      v18 = google::protobuf::FieldDescriptor::message_type(a3);
      v17 = (*(*a4 + 16))(a4, v18);
    }

    v19 = *(a2 + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = (*(*v17 + 32))(v17, v19);
    sub_276B62140(v13, v10);
  }

  return v10;
}

unsigned int *google::protobuf::Reflection::AddAllocatedMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::Message *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddAllocatedMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddAllocatedMessage", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v9, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "AddAllocatedMessage", 10);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::AddAllocatedMessage((a2 + *(this + 10)), a3, a4);
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_276B7958C(this + 8, a3);
    v13 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v12));
  }

  else
  {
    v13 = a2 + sub_276B7958C(this + 8, a3);
  }

  return sub_276B693D8(v13, a4);
}

uint64_t google::protobuf::Reflection::MutableRawRepeatedField(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, int a4, uint64_t a5, uint64_t a6)
{
  if (*(this + 15) != 3)
  {
    sub_276B70414(*a1, this, "MutableRawRepeatedField", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(this + 6);
  if (v11)
  {
    v25 = this;
    v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v24[0].__r_.__value_.__r.__words[0] = &v26;
      v24[0].__r_.__value_.__l.__size_ = &v25;
      v27 = v24;
      std::__call_once(v11, &v27, sub_2769C149C);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
  if (v12 == a4)
  {
    goto LABEL_13;
  }

  v13 = *(this + 6);
  if (v13)
  {
    v25 = this;
    v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v13, memory_order_acquire) != -1)
    {
      v24[0].__r_.__value_.__r.__words[0] = &v26;
      v24[0].__r_.__value_.__l.__size_ = &v25;
      v27 = v24;
      std::__call_once(v13, &v27, sub_2769C149C);
    }

    v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
  }

  if (a4 == 1 && v12 == 8)
  {
LABEL_13:
    if (!a6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_276B7106C(*a1, this, "MutableRawRepeatedField", a4);
    if (!a6)
    {
      goto LABEL_16;
    }
  }

  if (google::protobuf::FieldDescriptor::message_type(this) != a6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 1789);
    v14 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (field->message_type()) == (desc): ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, "wrong submessage type");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (*(this + 67) == 1)
  {
    v16 = *(a1 + 40);
    v17 = *(this + 17);
    v18 = *(this + 6);
    if (v18)
    {
      v25 = this;
      v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v18, memory_order_acquire) != -1)
      {
        v24[0].__r_.__value_.__r.__words[0] = &v26;
        v24[0].__r_.__value_.__l.__size_ = &v25;
        v27 = v24;
        std::__call_once(v18, &v27, sub_2769C149C);
      }
    }

    v19 = *(this + 56);
    is_packed = google::protobuf::FieldDescriptor::is_packed(this);
    return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + v16), v17, v19, is_packed, this);
  }

  else
  {
    v22 = *(this + 6);
    if (v22)
    {
      v25 = this;
      v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v22, memory_order_acquire) != -1)
      {
        v24[0].__r_.__value_.__r.__words[0] = &v26;
        v24[0].__r_.__value_.__l.__size_ = &v25;
        v27 = v24;
        std::__call_once(v22, &v27, sub_2769C149C);
      }
    }

    if (*(this + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(this))
    {
      v23 = sub_276B79664(a1 + 8, this);
      return google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v23));
    }

    else
    {
      return a2 + sub_276B79664(a1 + 8, this);
    }
  }
}

void sub_276B77B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Reflection::GetRawRepeatedField(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, int a4, int a5, uint64_t a6)
{
  if (*(this + 15) != 3)
  {
    sub_276B70414(*a1, this, "GetRawRepeatedField", "Field is singular; the method requires a repeated field.");
  }

  v12 = *(this + 6);
  if (v12)
  {
    v26 = this;
    v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v12, memory_order_acquire) != -1)
    {
      v25[0].__r_.__value_.__r.__words[0] = &v27;
      v25[0].__r_.__value_.__l.__size_ = &v26;
      v28 = v25;
      std::__call_once(v12, &v28, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)] != a4)
  {
    sub_276B7106C(*a1, this, "GetRawRepeatedField", a4);
  }

  if ((a5 & 0x80000000) == 0 && *(*(this + 15) + 72) != a5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 1813);
    v13 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (field->options().ctype()) == (ctype): ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, "subtype mismatch");
    google::protobuf::internal::LogFinisher::operator=(&v28, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }

  if (a6 && google::protobuf::FieldDescriptor::message_type(this) != a6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 1815);
    v15 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (field->message_type()) == (desc): ");
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, "wrong submessage type");
    google::protobuf::internal::LogFinisher::operator=(&v28, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 67) == 1)
  {
    v17 = *(a1 + 40);
    v18 = *(this + 17);
    v19 = *(this + 6);
    if (v19)
    {
      v26 = this;
      v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v19, memory_order_acquire) != -1)
      {
        v25[0].__r_.__value_.__r.__words[0] = &v27;
        v25[0].__r_.__value_.__l.__size_ = &v26;
        v28 = v25;
        std::__call_once(v19, &v28, sub_2769C149C);
      }
    }

    v20 = *(this + 56);
    is_packed = google::protobuf::FieldDescriptor::is_packed(this);
    return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + v17), v18, v20, is_packed, this);
  }

  else
  {
    v23 = *(this + 6);
    if (v23)
    {
      v26 = this;
      v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v23, memory_order_acquire) != -1)
      {
        v25[0].__r_.__value_.__r.__words[0] = &v27;
        v25[0].__r_.__value_.__l.__size_ = &v26;
        v28 = v25;
        std::__call_once(v23, &v28, sub_2769C149C);
      }
    }

    if (*(this + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(this))
    {
      v24 = sub_276B79664(a1 + 8, this);
      return google::protobuf::internal::MapFieldBase::GetRepeatedField((a2 + v24));
    }

    else
    {
      return a2 + sub_276B79664(a1 + 8, this);
    }
  }
}

void sub_276B77E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Reflection::GetOneofFieldDescriptor(google::protobuf::Reflection *a1, const google::protobuf::Message *a2, uint64_t a3)
{
  if (*(a3 + 24) == 1 && (v3 = **(a3 + 32), *(v3 + 65) == 1))
  {
    if (google::protobuf::Reflection::HasField(a1, a2, **(a3 + 32)))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a2 + *(a1 + 11) - 1431655764 * ((a3 - *(*(a3 + 16) + 48)) >> 4));
    if (v5)
    {
      v6 = *a1;

      return google::protobuf::Descriptor::FindFieldByNumber(v6, v5);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t google::protobuf::Reflection::ContainsMapKey(uint64_t *a1, uint64_t a2, google::protobuf::FieldDescriptor *this, uint64_t a4)
{
  v8 = *(this + 6);
  if (v8)
  {
    v11 = this;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v8, &v13, sub_2769C149C);
    }
  }

  if (*(this + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(this) & 1) == 0)
  {
    sub_276B70414(*a1, this, "LookupMapValue", "Field is not a map field.");
  }

  v9 = sub_276B7958C((a1 + 1), this);
  return (*(*(a2 + v9) + 16))(a2 + v9, a4);
}

uint64_t google::protobuf::Reflection::InsertOrLookupMapValue(uint64_t *a1, uint64_t a2, google::protobuf::FieldDescriptor *this, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 6);
  if (v10)
  {
    v21 = this;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      __p[0] = &v22;
      __p[1] = &v21;
      v20[0] = __p;
      std::__call_once(v10, v20, sub_2769C149C);
    }
  }

  if (*(this + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(this) & 1) == 0)
  {
    sub_276B70414(*a1, this, "InsertOrLookupMapValue", "Field is not a map field.");
  }

  v11 = google::protobuf::FieldDescriptor::message_type(this);
  sub_276A4D46C(__p, "value");
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v11, __p, v12);
  v14 = *(FieldByName + 48);
  if (v14)
  {
    v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v19 = FieldByName;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      v20[0] = &v21;
      v20[1] = &v19;
      v22 = v20;
      std::__call_once(v14, &v22, sub_2769C149C);
    }
  }

  *(a5 + 8) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)];
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = sub_276B7958C((a1 + 1), this);
  return (*(*(a2 + v15) + 24))(a2 + v15, a4, a5);
}

void sub_276B78188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Reflection::LookupMapValue(uint64_t *a1, uint64_t a2, google::protobuf::FieldDescriptor *this, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 6);
  if (v10)
  {
    v21 = this;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      __p[0] = &v22;
      __p[1] = &v21;
      v20[0] = __p;
      std::__call_once(v10, v20, sub_2769C149C);
    }
  }

  if (*(this + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(this) & 1) == 0)
  {
    sub_276B70414(*a1, this, "LookupMapValue", "Field is not a map field.");
  }

  v11 = google::protobuf::FieldDescriptor::message_type(this);
  sub_276A4D46C(__p, "value");
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v11, __p, v12);
  v14 = *(FieldByName + 48);
  if (v14)
  {
    v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v19 = FieldByName;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      v20[0] = &v21;
      v20[1] = &v19;
      v22 = v20;
      std::__call_once(v14, &v22, sub_2769C149C);
    }
  }

  *(a5 + 8) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)];
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = sub_276B7958C((a1 + 1), this);
  return (*(*(a2 + v15) + 32))(a2 + v15, a4, a5);
}

void sub_276B78350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Reflection::DeleteMapValue(uint64_t *a1, uint64_t a2, google::protobuf::FieldDescriptor *this, uint64_t a4)
{
  v8 = *(this + 6);
  if (v8)
  {
    v11 = this;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v8, &v13, sub_2769C149C);
    }
  }

  if (*(this + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(this) & 1) == 0)
  {
    sub_276B70414(*a1, this, "DeleteMapValue", "Field is not a map field.");
  }

  v9 = sub_276B7958C((a1 + 1), this);
  return (*(*(a2 + v9) + 40))(a2 + v9, a4);
}

uint64_t google::protobuf::Reflection::MapBegin@<X0>(google::protobuf::Reflection *this@<X0>, google::protobuf::Message *a2@<X1>, const google::protobuf::FieldDescriptor *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 6);
  if (v8)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v8, &v13, sub_2769C149C);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_276B70414(*this, a3, "MapBegin", "Field is not a map field.");
  }

  sub_276B792E4(a4, a2, a3);
  v9 = sub_276B7958C(this + 8, a3);
  return (*(*(a2 + v9) + 56))(a2 + v9, a4);
}

uint64_t google::protobuf::Reflection::MapEnd@<X0>(google::protobuf::Reflection *this@<X0>, google::protobuf::Message *a2@<X1>, const google::protobuf::FieldDescriptor *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 6);
  if (v8)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v8, &v13, sub_2769C149C);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_276B70414(*this, a3, "MapEnd", "Field is not a map field.");
  }

  sub_276B792E4(a4, a2, a3);
  v9 = sub_276B7958C(this + 8, a3);
  return (*(*(a2 + v9) + 64))(a2 + v9, a4);
}

uint64_t google::protobuf::Reflection::MapSize(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *(a3 + 6);
  if (v6)
  {
    v9 = a3;
    v10 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v12[0] = &v10;
      v12[1] = &v9;
      v11 = v12;
      std::__call_once(v6, &v11, sub_2769C149C);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_276B70414(*this, a3, "MapSize", "Field is not a map field.");
  }

  v7 = sub_276B7958C(this + 8, a3);
  return (*(*(a2 + v7) + 88))(a2 + v7);
}

uint64_t google::protobuf::Reflection::FindKnownExtensionByName(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == -1)
  {
    return 0;
  }

  else
  {
    return google::protobuf::DescriptorPool::FindExtensionByPrintableName(*(a1 + 56), *a1, a2);
  }
}

uint64_t google::protobuf::Reflection::FindKnownExtensionByNumber(std::mutex ***this, uint64_t a2)
{
  if (*(this + 10) == -1)
  {
    return 0;
  }

  else
  {
    return google::protobuf::DescriptorPool::FindExtensionByNumber(this[7], *this, a2);
  }
}

uint64_t google::protobuf::Reflection::HasOneof(google::protobuf::Reflection *a1, const google::protobuf::Message *a2, uint64_t a3)
{
  if (*(a3 + 24) == 1 && *(**(a3 + 32) + 65) == 1)
  {
    return google::protobuf::Reflection::HasField(a1, a2, **(a3 + 32));
  }

  else
  {
    return *(a2 + *(a1 + 11) - 1431655764 * ((a3 - *(*(a3 + 16) + 48)) >> 4)) != 0;
  }
}

uint64_t google::protobuf::Reflection::RepeatedFieldData(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, int a4, uint64_t a5)
{
  if (*(this + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 2281);
    v10 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
  }

  v11 = *(this + 6);
  if (v11)
  {
    v27 = this;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v26[0].__r_.__value_.__r.__words[0] = &v28;
      v26[0].__r_.__value_.__l.__size_ = &v27;
      v29 = v26;
      std::__call_once(v11, &v29, sub_2769C149C);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
  if (v12 == a4)
  {
    goto LABEL_13;
  }

  v13 = *(this + 6);
  if (v13)
  {
    v27 = this;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v13, memory_order_acquire) != -1)
    {
      v26[0].__r_.__value_.__r.__words[0] = &v28;
      v26[0].__r_.__value_.__l.__size_ = &v27;
      v29 = v26;
      std::__call_once(v13, &v29, sub_2769C149C);
    }

    v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
  }

  if (a4 == 1 && v12 == 8)
  {
LABEL_13:
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 2284);
    v21 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: field->cpp_type() == cpp_type || (field->cpp_type() == FieldDescriptor::CPPTYPE_ENUM && cpp_type == FieldDescriptor::CPPTYPE_INT32): ");
    v22 = google::protobuf::internal::LogMessage::operator<<(v21, "The type parameter T in RepeatedFieldRef<T> API doesn't match ");
    v23 = google::protobuf::internal::LogMessage::operator<<(v22, "the actual field type (for enums T should be the generated enum ");
    v24 = google::protobuf::internal::LogMessage::operator<<(v23, "type or int32).");
    google::protobuf::internal::LogFinisher::operator=(&v25, &v24->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (google::protobuf::FieldDescriptor::message_type(this) != a5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 2289);
    v14 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (message_type) == (field->message_type()): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (*(this + 67) != 1)
  {
    return a2 + sub_276B79664(a1 + 8, this);
  }

  v15 = *(a1 + 40);
  v16 = *(this + 17);
  v17 = *(this + 6);
  if (v17)
  {
    v27 = this;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v17, memory_order_acquire) != -1)
    {
      v26[0].__r_.__value_.__r.__words[0] = &v28;
      v26[0].__r_.__value_.__l.__size_ = &v27;
      v29 = v26;
      std::__call_once(v17, &v29, sub_2769C149C);
    }
  }

  v18 = *(this + 56);
  is_packed = google::protobuf::FieldDescriptor::is_packed(this);
  return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + v15), v16, v18, is_packed, this);
}

void sub_276B78BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Reflection::MutableMapData(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *(a3 + 6);
  if (v6)
  {
    v8 = a3;
    v9 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v11[0] = &v9;
      v11[1] = &v8;
      v10 = v11;
      std::__call_once(v6, &v10, sub_2769C149C);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_276B70414(*this, a3, "GetMapData", "Field is not a map field.");
  }

  return a2 + sub_276B7958C(this + 8, a3);
}

uint64_t google::protobuf::Reflection::GetMapData(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *(a3 + 6);
  if (v6)
  {
    v8 = a3;
    v9 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v11[0] = &v9;
      v11[1] = &v8;
      v10 = v11;
      std::__call_once(v6, &v10, sub_2769C149C);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_276B70414(*this, a3, "GetMapData", "Field is not a map field.");
  }

  return a2 + sub_276B7958C(this + 8, a3);
}

void google::protobuf::internal::AssignDescriptors(uint64_t a1, char a2)
{
  v4 = a1;
  v3 = a2;
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 1);
  }

  v2 = *(a1 + 32);
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6[0] = sub_276B78DF8;
    v6[1] = &v4;
    v6[2] = &v3;
    v5 = v6;
    std::__call_once(v2, &v5, sub_276B7AD00);
  }
}

void sub_276B78DF8(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_280A52F58, memory_order_acquire) & 1) == 0)
  {
    sub_276BD908C();
  }

  std::mutex::lock(&stru_280A52348);
  google::protobuf::internal::AddDescriptors(a1, v4, v5, v6, v7, v8);
  std::mutex::unlock(&stru_280A52348);
  if (a2)
  {
    v10 = *(a1 + 60);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 8 * v10;
      do
      {
        v9 = *(*(a1 + 48) + v11);
        if (v9)
        {
          v9 = google::protobuf::internal::AssignDescriptors(v9, 1);
        }

        v11 += 8;
      }

      while (v12 != v11);
    }
  }

  v13 = google::protobuf::DescriptorPool::internal_generated_pool(v9);
  sub_276A4D46C(&__p, *(a1 + 16));
  FileByName = google::protobuf::DescriptorPool::FindFileByName(v13, &__p, v14);
  v16 = FileByName;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else if (FileByName)
  {
    goto LABEL_14;
  }

  google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 2452);
  v17 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: file != nullptr: ");
  google::protobuf::internal::LogFinisher::operator=(&v44, &v17->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
LABEL_14:
  v18 = google::protobuf::MessageFactory::generated_factory(FileByName);
  v19 = *(a1 + 104);
  v21 = *(a1 + 80);
  v20 = *(a1 + 88);
  __p.__r_.__value_.__r.__words[0] = v18;
  __p.__r_.__value_.__l.__size_ = v20;
  __p.__r_.__value_.__r.__words[2] = v19;
  v46 = *(a1 + 64);
  v47 = v21;
  if (*(v16 + 11) >= 1)
  {
    sub_276B79730(&__p, *(v16 + 13));
  }

  v22 = *(v16 + 12);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = __p.__r_.__value_.__r.__words[2];
    v25 = 80 * v22;
    do
    {
      *v24 = *(v16 + 14) + v23;
      v24 = (__p.__r_.__value_.__r.__words[2] + 8);
      __p.__r_.__value_.__r.__words[2] += 8;
      v23 += 80;
    }

    while (v25 != v23);
  }

  if (*(*(v16 + 17) + 155) == 1)
  {
    v26 = *(v16 + 13);
    if (v26 >= 1)
    {
      for (i = 0; i != v26; ++i)
      {
        *(*(a1 + 112) + 8 * i) = *(v16 + 15) + 48 * i;
      }
    }
  }

  if ((atomic_load_explicit(&qword_280A52F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52F68))
  {
    operator new();
  }

  v28 = qword_280A52F60;
  v29 = *(a1 + 88);
  size = __p.__r_.__value_.__l.__size_;
  std::mutex::lock(qword_280A52F60);
  v32 = *(v28 + 72);
  v31 = *(v28 + 80);
  if (v32 >= v31)
  {
    v34 = *(v28 + 64);
    v35 = (v32 - v34) >> 4;
    v36 = v35 + 1;
    if ((v35 + 1) >> 60)
    {
      sub_2769BA860();
    }

    v37 = v31 - v34;
    if (v37 >> 3 > v36)
    {
      v36 = v37 >> 3;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFF0)
    {
      v38 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v36;
    }

    if (v38)
    {
      sub_276B799E4(v28 + 64, v38);
    }

    v39 = (16 * v35);
    *v39 = v29;
    v39[1] = size;
    v33 = 16 * v35 + 16;
    v40 = *(v28 + 64);
    v41 = *(v28 + 72) - v40;
    v42 = (16 * v35 - v41);
    memcpy(v42, v40, v41);
    v43 = *(v28 + 64);
    *(v28 + 64) = v42;
    *(v28 + 72) = v33;
    *(v28 + 80) = 0;
    if (v43)
    {
      operator delete(v43);
    }
  }

  else
  {
    *v32 = v29;
    v32[1] = size;
    v33 = (v32 + 2);
  }

  *(v28 + 72) = v33;
  std::mutex::unlock(v28);
}

uint64_t google::protobuf::internal::AddDescriptors(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*result & 1) == 0)
  {
    v6 = result;
    *result = 1;
    if (*(result + 56) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v6 + 40) + 8 * v7);
        if (atomic_load_explicit(v8, memory_order_acquire))
        {
          google::protobuf::internal::InitSCCImpl(v8);
        }

        ++v7;
      }

      while (v7 < *(v6 + 56));
    }

    v9 = *(v6 + 60);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 8 * v9;
      do
      {
        v12 = *(*(v6 + 48) + v10);
        if (v12)
        {
          google::protobuf::internal::AddDescriptors(v12, a2, a3, a4, a5, a6);
        }

        v10 += 8;
      }

      while (v11 != v10);
    }

    google::protobuf::DescriptorPool::InternalAddGeneratedFile(*(v6 + 8), *(v6 + 24));
  }

  return result;
}

void google::protobuf::internal::RegisterFileLevelMetadata(uint64_t a1)
{
  google::protobuf::internal::AssignDescriptors(a1, 0);
  v3 = *(a1 + 96);
  if (v3 >= 1)
  {
    v4 = *(a1 + 88) + 8;
    do
    {
      google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(*(v4 - 8), *(*v4 + 8), v2);
      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

const google::protobuf::UnknownFieldSet *google::protobuf::internal::UnknownFieldSetSerializer(const google::protobuf::UnknownFieldSet *this, const unsigned __int8 *a2, unsigned int a3, google::protobuf::io::EpsCopyOutputStream *a4, const google::protobuf::UnknownFieldSet **a5, google::protobuf::io::CodedOutputStream *a6)
{
  v6 = *(this + a2);
  if (v6)
  {
    this = google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v6 & 0xFFFFFFFFFFFFFFFELL) + 8), a5[8], a5, a4);
    a5[8] = this;
  }

  return this;
}

uint64_t sub_276B792E4(uint64_t a1, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  (*(*a2 + 152))(a2);
  *(a1 + 8) = google::protobuf::Reflection::MutableMapData(v6, a2, a3);
  v7 = google::protobuf::FieldDescriptor::message_type(a3);
  sub_276A4D46C(__p, "key");
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v7, __p, v8);
  v10 = *(FieldByName + 48);
  if (v10)
  {
    v18 = FieldByName;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v21 = &v19;
      v22 = &v18;
      v20 = &v21;
      std::__call_once(v10, &v20, sub_2769C149C);
    }
  }

  sub_276B67260(a1 + 16, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)]);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = google::protobuf::FieldDescriptor::message_type(a3);
  sub_276A4D46C(__p, "value");
  v13 = google::protobuf::Descriptor::FindFieldByName(v11, __p, v12);
  v14 = *(v13 + 48);
  if (v14)
  {
    v18 = v13;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      v21 = &v19;
      v22 = &v18;
      v20 = &v21;
      std::__call_once(v14, &v20, sub_2769C149C);
    }
  }

  *(a1 + 56) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v13 + 56)];
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  (*(**(a1 + 8) + 128))(*(a1 + 8), a1);
  return a1;
}

void sub_276B794D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 40) == 9 && *(v14 + 39) < 0)
  {
    operator delete(*(v14 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B7951C(uint64_t a1)
{
  (*(**(a1 + 8) + 136))(*(a1 + 8), a1);
  if (*(a1 + 40) == 9 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_276B7958C(uint64_t a1, void *a2)
{
  v4 = a2[11];
  if (!v4 || *(v4 + 24) == 1 && (*(**(v4 + 32) + 65) & 1) != 0)
  {

    return sub_276B79664(a1, a2);
  }

  else
  {
    v11[4] = v2;
    v11[5] = v3;
    v6 = *(*(a1 + 8) + 4 * (*(a2[10] + 104) - 1431655765 * ((v4 - *(*(v4 + 16) + 48)) >> 4)));
    v7 = a2[6];
    if (v7)
    {
      v8 = a2;
      v9 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v11[0] = &v9;
        v11[1] = &v8;
        v10 = v11;
        std::__call_once(v7, &v10, sub_2769C149C);
      }
    }

    return v6 & 0x7FFFFFFF;
  }
}

uint64_t sub_276B79664(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 67))
  {
    v5 = *(a2 + 96);
    if (v5)
    {
      v6 = (v5 + 80);
    }

    else
    {
      v6 = (*(a2 + 40) + 128);
    }
  }

  else
  {
    v6 = (*(a2 + 80) + 40);
  }

  v13[4] = v2;
  v13[5] = v3;
  v7 = *(v4 + ((0x286BCA1B00000000 * ((a2 - *v6) >> 3)) >> 30));
  v8 = *(a2 + 48);
  if (v8)
  {
    v10 = a2;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v8, &v12, sub_2769C149C);
    }
  }

  return v7 & 0x7FFFFFFF;
}

void sub_276B79730(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_276B79730(a1, *(a2 + 56) + v4);
      ++v5;
      v4 += 144;
    }

    while (v5 < *(a2 + 116));
  }

  **(a1 + 8) = a2;
  operator new();
}

std::mutex *sub_276B79924(std::mutex *this)
{
  if (this)
  {
    v1 = this;
    sig = this[1].__m_.__sig;
    v3 = *this[1].__m_.__opaque;
    if (sig != v3)
    {
      do
      {
        v4 = *sig;
        v5 = sig[1];
        while (v4 < v5)
        {
          v6 = *(v4 + 8);
          if (v6)
          {
            MEMORY[0x277C9F670](v6, 0x1070C4026DFEB36);
          }

          v4 += 16;
        }

        sig += 2;
      }

      while (sig != v3);
      sig = v1[1].__m_.__sig;
    }

    if (sig)
    {
      *v1[1].__m_.__opaque = sig;
      operator delete(sig);
    }

    std::mutex::~mutex(v1);

    JUMPOUT(0x277C9F670);
  }

  return this;
}

void sub_276B799E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276B79A2C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (*(a2 + 67))
  {
    v5 = *(a2 + 96);
    if (v5)
    {
      v6 = (v5 + 80);
    }

    else
    {
      v6 = (*(a2 + 40) + 128);
    }
  }

  else
  {
    v6 = (*(a2 + 80) + 40);
  }

  v14[4] = v2;
  v14[5] = v3;
  v7 = *a1;
  v8 = *(v4 + ((0x286BCA1B00000000 * ((a2 - *v6) >> 3)) >> 30));
  v9 = *(a2 + 48);
  if (v9)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  return v7 + (v8 & 0x7FFFFFFF);
}

void sub_276B79AFC(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v17.__r_.__value_.__r.__words[2] = 0;
  *&v17.__r_.__value_.__l.__data_ = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v17, v5);
    sub_276B79C24(&v17, v7, (v6 + 8), v5, *v17.__r_.__value_.__r.__words[2] - LODWORD(v17.__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v17.__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v17.__r_.__value_.__r.__words[1]) = v8;
    if (*v17.__r_.__value_.__r.__words[2] < v8)
    {
      *v17.__r_.__value_.__r.__words[2] = v8;
    }
  }

  google::protobuf::RepeatedPtrField<std::string>::Clear(a1);
  v10 = a2 + 1;
  v9 = *(a2 + 2);
  if (v9)
  {
    v11 = a2[2];
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v9);
    sub_276B79C24(a1, v12, (v11 + 8), v9, **(a1 + 16) - *(a1 + 8));
    v13 = *(a1 + 8) + v9;
    *(a1 + 8) = v13;
    v14 = *(a1 + 16);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *v10;
  v16 = v10[1];
  *v10 = *&v17.__r_.__value_.__r.__words[1];
  v17.__r_.__value_.__l.__size_ = v15;
  v17.__r_.__value_.__r.__words[2] = v16;
  sub_276B4A5CC(&v17);
}

std::string *sub_276B79C24(std::string *result, std::string **a2, std::string **a3, unsigned int a4, unsigned int a5)
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
      result = google::protobuf::internal::GenericTypeHandler<std::string>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2769C64F4(v18);
      result = google::protobuf::internal::GenericTypeHandler<std::string>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B79CD4(google::protobuf::internal::RepeatedPtrFieldBase *this, void *a2)
{
  v4 = *a2;
  v21 = 0uLL;
  v20 = v4;
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v20, v5);
    sub_276B79E3C(&v20, v7, (v6 + 8), v5, **(&v21 + 1) - v21);
    v8 = v21 + v5;
    LODWORD(v21) = v8;
    if (**(&v21 + 1) < v8)
    {
      **(&v21 + 1) = v8;
    }

    v9 = *(this + 2);
    if (v9 >= 1)
    {
      v10 = (*(this + 2) + 8);
      do
      {
        v11 = *v10++;
        (*(*v11 + 40))(v11);
        --v9;
      }

      while (v9);
      *(this + 2) = 0;
    }
  }

  v13 = a2 + 1;
  v12 = *(a2 + 2);
  if (v12)
  {
    v14 = a2[2];
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v12);
    sub_276B79E3C(this, v15, (v14 + 8), v12, **(this + 2) - *(this + 2));
    v16 = *(this + 2) + v12;
    *(this + 2) = v16;
    v17 = *(this + 2);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *v13;
  v19 = v13[1];
  *v13 = v21;
  *&v21 = v18;
  *(&v21 + 1) = v19;
  sub_276B55D34(&v20);
}

uint64_t sub_276B79E3C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276B69550(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::NewFromPrototype(v21);
      result = sub_276B69550(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unint64_t sub_276B79EF0(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 68) < *(*v8 + 68))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 17);
      v90 = *(*v8 + 68);
      v91 = *(v87 + 68);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 68) < *(v85 + 17))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 68);
        if (v143 < *(v142 + 68))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 68))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_276B7A8A4(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 68);
            if (v101 < *(v100 + 68))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *(v100 + 68))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 68);
          if (v138 < *(v137 + 68))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 68));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 68) < *(v108[1] + 68))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 68);
            if (*(v109 + 68) >= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 68) < *(v108[1] + 68))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 68) >= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 68);
              if (result >= *(v124 + 68))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 68);
              if (*(*v129 + 68) < v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 68) < v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 68);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 68);
      v17 = *(*v8 + 68);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 68) < *(*v8 + 68))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 68) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 68);
      v29 = *(v27 + 68);
      v30 = *(a2 - 2);
      v31 = *(v30 + 68);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 68) < *(v32 + 68))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 68) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 68);
      v40 = *(v38 + 68);
      v41 = *(a2 - 3);
      v42 = *(v41 + 68);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 68) < *(v43 + 68))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 68) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 68);
      v48 = *(*v25 + 68);
      v49 = *v35;
      v50 = *(*v35 + 68);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 68);
    v21 = *(*v11 + 68);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 68) < *(*v11 + 68))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 68) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 68);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 68) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 68) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 68) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 68) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 68) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = sub_276B7AA18(v8, v65);
      v8 = v65 + 1;
      result = sub_276B7AA18(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = sub_276B79EF0(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 68);
      if (*(*(v8 - 1) + 68) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 68))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 68));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 68));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 68));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 68));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 68));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 68);
  v81 = *(*v8 + 68);
  v82 = *(a2 - 1);
  v83 = *(v82 + 68);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 68) < *(*v8 + 68))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 68) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *sub_276B7A8A4(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 68);
  v8 = *(*result + 68);
  v9 = *a3;
  v10 = *(*a3 + 68);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 68) < *(*result + 68))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 68) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 68) < *(v5 + 68))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 68) < *(*a2 + 68))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 68) < *(*result + 68))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 68) < *(*a4 + 68))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 68) < *(*a3 + 68))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 68) < *(*a2 + 68))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 68) < *(*result + 68))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_276B7AA18(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 68);
      v8 = *(*a1 + 68);
      v9 = *(a2 - 1);
      v10 = *(v9 + 68);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 68) < *(*a1 + 68))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 68) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_276B7A8A4(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 68);
    v26 = *(*a1 + 68);
    v27 = *(v23 + 68);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 68) < *(v21 + 68))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 68);
          if (v45 < *(v44 + 68))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 68))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 68) < *(*a1 + 68))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 68);
  v16 = *(*a1 + 68);
  v17 = *(v11 + 68);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 68);
    if (v38 < *(v37 + 68))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 68))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

BOOL google::protobuf::internal::AnyMetadata::PackFrom(uint64_t ***this, const google::protobuf::Message *a2)
{
  v4 = strlen("type.googleapis.com/");
  v6 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    google::protobuf::StringPiece::LogFatalSizeTooBig(v4, "size_t to int conversion", v5);
  }

  return google::protobuf::internal::AnyMetadata::PackFrom(this, a2, "type.googleapis.com/", v6);
}

BOOL google::protobuf::internal::AnyMetadata::PackFrom(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(a1);
  }

  v9 = (*(*a2 + 152))(a2);
  sub_276B280C4(v13, *(v9 + 8), v10);
  google::protobuf::internal::GetTypeUrl(v13[0], v13[1], a3, a4, &__p);
  google::protobuf::internal::ArenaStringPtr::Set(v8, &google::protobuf::internal::fixed_address_empty_string, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = google::protobuf::internal::ArenaStringPtr::Mutable(a1[1], 0);
  return google::protobuf::MessageLite::SerializeToString(a2, v11);
}

void sub_276B7AE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::AnyMetadata::UnpackTo(google::protobuf::internal::AnyMetadata *this, google::protobuf::Message *a2)
{
  v4 = (*(*a2 + 152))(a2);
  sub_276B280C4(v7, *(v4 + 8), v5);
  result = google::protobuf::internal::AnyMetadata::InternalIs(this, v7[0], v7[1]);
  if (result)
  {
    return google::protobuf::MessageLite::ParseFromString(a2, **(this + 1) & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

BOOL google::protobuf::internal::GetAnyFieldDescriptors(google::protobuf::internal *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor **a3, const google::protobuf::FieldDescriptor **a4)
{
  v6 = (*(*this + 152))(this, a2, a3, a4);
  v7 = *(v6 + 1);
  v8 = strlen("google.protobuf.Any");
  v9 = *(v7 + 23);
  if (v9 < 0)
  {
    if (v8 != v7[1])
    {
      return 0;
    }

    if (v8 == -1)
    {
      sub_276B28120();
    }

    v7 = *v7;
  }

  else if (v8 != v9)
  {
    return 0;
  }

  if (memcmp(v7, "google.protobuf.Any", v8))
  {
    return 0;
  }

  *a2 = google::protobuf::Descriptor::FindFieldByNumber(v6, 1);
  *a3 = google::protobuf::Descriptor::FindFieldByNumber(v6, 2);
  v11 = *a2;
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 48);
  if (v12)
  {
    v15 = v11;
    v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v12, memory_order_acquire) != -1)
    {
      v18 = &v16;
      v19 = &v15;
      v17 = &v18;
      std::__call_once(v12, &v17, sub_2769C149C);
    }
  }

  if (*(v11 + 56) != 9)
  {
    return 0;
  }

  v13 = *a3;
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 48);
  if (v14)
  {
    v15 = v13;
    v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      v18 = &v16;
      v19 = &v15;
      v17 = &v18;
      std::__call_once(v14, &v17, sub_2769C149C);
    }
  }

  return *(v13 + 56) == 12;
}

void *google::protobuf::internal::ArenaImpl::thread_cache(google::protobuf::internal::ArenaImpl *this)
{
  if ((atomic_load_explicit(&qword_280A52F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52F78))
  {
    operator new();
  }

  v1 = qword_280A52F70;

  return sub_276B7B190(v1);
}

void sub_276B7B158(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v1, 0x1000C4000313F17);
  __cxa_guard_abort(&qword_280A52F78);
  _Unwind_Resume(a1);
}

void *sub_276B7B190(pthread_key_t *a1)
{
  v1 = pthread_getspecific(*a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::ArenaImpl(google::protobuf::internal::ArenaImpl *a1, uint64_t a2)
{
  *(a1 + 4) = 0;
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4();
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v5 + 32))(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(a2 + 16);
  if (v8 && (v9 = *(a2 + 24), v9 > 0x87))
  {
    v10 = *(a2 + 16);
  }

  else
  {
    if (*a2 <= 0x88uLL)
    {
      v9 = 136;
    }

    else
    {
      v9 = *a2;
    }

    v10 = (*(a2 + 32))(v9);
    v8 = *(a2 + 16);
  }

  v11 = v10 == v8;
  v12 = 3;
  if (!v11)
  {
    v12 = 1;
  }

  *v10 = v12;
  *(v10 + 16) = v9;
  *(v10 + 24) = *a2;
  *(a1 + 4) = v10 + 24;
  *(v10 + 40) = *(a2 + 32);
  *(v10 + 56) = v6;
  *(v10 + 8) = 64;
  google::protobuf::internal::ArenaImpl::Init(a1, v7);
  google::protobuf::internal::ArenaImpl::SetInitialBlock(a1, v10);
  return a1;
}

unint64_t *google::protobuf::internal::ArenaImpl::Init(google::protobuf::internal::ArenaImpl *this, unsigned int a2)
{
  result = google::protobuf::internal::ArenaImpl::thread_cache(this);
  add_explicit = *result;
  if ((*result & 0x1FF) == 0)
  {
    add_explicit = atomic_fetch_add_explicit(google::protobuf::internal::ArenaImpl::lifecycle_id_generator_, 0x200uLL, memory_order_relaxed);
  }

  *result = add_explicit + 2;
  *(this + 3) = add_explicit | a2;
  *(this + 1) = 0;
  *this = 0;
  *(this + 2) = 0;
  return result;
}

void *google::protobuf::internal::ArenaImpl::SetInitialBlock(unint64_t *a1, unint64_t *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(a1);
  v5 = a2[1];
  v6 = a2[2];
  v7 = (a2 + v5);
  *v7 = a1;
  v7[1] = v4;
  v5 += 72;
  a2[1] = v5;
  v7[7] = 0;
  v7[8] = 0;
  v7[5] = (a2 + v5);
  v7[6] = (a2 + v6);
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = a2;
  *a1 = v7;
  a1[2] = a2[2];
  v8 = google::protobuf::internal::ArenaImpl::thread_cache(v4);
  *(v8 + 2) = v7;
  v9 = a1[3];
  result = google::protobuf::internal::ArenaImpl::thread_cache(v8);
  result[1] = v9;
  atomic_store(v7, a1 + 1);
  return result;
}

void *google::protobuf::internal::SerialArena::New(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + v3);
  v3 += 72;
  *(a1 + 8) = v3;
  *v5 = a3;
  v5[1] = a2;
  v5[5] = a1 + v3;
  v5[6] = a1 + v4;
  v5[2] = a1;
  v5[3] = 0;
  v5[7] = 0;
  v5[8] = 0;
  return v5;
}

void google::protobuf::internal::ArenaImpl::~ArenaImpl(google::protobuf::internal::ArenaImpl *this)
{
  for (i = *this; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      google::protobuf::internal::SerialArena::CleanupListFallback(i);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
  }

  else
  {
    v5 = google::protobuf::internal::ArenaFree;
    v4 = 0;
  }

  v6 = *this;
  while (v6)
  {
    v7 = *(v6 + 16);
    v6 = *(v6 + 32);
    if (v7)
    {
      do
      {
        v8 = *v7;
        if ((*v7 & 2) == 0)
        {
          (v5)(v7, v7[2]);
        }

        v7 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      }

      while ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0);
    }
  }

  if (v4)
  {
    (*(*v4 + 16))(v4, *(this + 2));
  }
}

uint64_t *google::protobuf::internal::ArenaImpl::CleanupList(uint64_t *this)
{
  for (i = *this; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      this = google::protobuf::internal::SerialArena::CleanupListFallback(i);
    }
  }

  return this;
}

uint64_t google::protobuf::internal::ArenaImpl::Reset(google::protobuf::internal::ArenaImpl *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      (*(*v3 + 24))(v3, *(this + 2));
    }
  }

  for (i = *this; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      google::protobuf::internal::SerialArena::CleanupListFallback(i);
    }
  }

  v5 = *(this + 4);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = google::protobuf::internal::ArenaFree;
  }

  v7 = *this;
  if (*this)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 16);
      v7 = *(v7 + 32);
      if (v10)
      {
        do
        {
          v11 = *v10;
          v12 = v10[2];
          if (*v10)
          {
            v9 = v10;
          }

          else
          {
            v13 = v10[2];
            v6();
          }

          v8 += v12;
          v10 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        }

        while ((v11 & 0xFFFFFFFFFFFFFFFCLL) != 0);
      }
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  google::protobuf::internal::ArenaImpl::Init(this, *(this + 6) & 1);
  if (v9)
  {
    v14 = 64;
    if (!*(this + 4))
    {
      v14 = 24;
    }

    *v9 &= 3uLL;
    v9[1] = v14;
    google::protobuf::internal::ArenaImpl::SetInitialBlock(this, v9);
  }

  return v8;
}

void *google::protobuf::internal::ArenaImpl::NewBuffer(google::protobuf::internal::ArenaImpl *this, uint64_t a2, unint64_t a3)
{
  v5 = *(this + 4);
  if (a2 == -1)
  {
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = 256;
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0x2000;
    }

    if (v6 >= 2 * a2)
    {
      v7 = 2 * a2;
    }

    else
    {
      v7 = v6;
    }
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/arena.cc", 245);
    v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v5 = *(this + 4);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v5)
  {
    result = (*(v5 + 16))(v9);
  }

  else
  {
    result = operator new(v9);
  }

  atomic_fetch_add_explicit(this + 2, v9, memory_order_relaxed);
  return result;
}

void sub_276B7B7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::SerialArena::NewBlock(uint64_t a1, unint64_t a2, google::protobuf::internal::ArenaImpl *this)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  result = google::protobuf::internal::ArenaImpl::NewBuffer(this, v6, a2);
  *result = a1;
  result[1] = 24;
  result[2] = v8;
  return result;
}

void *google::protobuf::internal::SerialArena::AddCleanupFallback(google::protobuf::internal::SerialArena *this, void *a2, void (*a3)(void *))
{
  result = *(this + 3);
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    v8 = (16 * v7 + 23) & 0xFF0;
    v9 = *(this + 5);
    if (*(this + 6) - v9 < v8)
    {
      result = google::protobuf::internal::SerialArena::AllocateAlignedFallback(this, v8);
      v10 = *(this + 3);
    }

    else
    {
      *(this + 5) = v9 + v8;
      v10 = result;
      result = v9;
    }

    *result = v7;
    result[1] = v10;
    *(this + 3) = result;
    *(this + 7) = result + 2;
    *(this + 8) = &result[2 * v7 + 2];
  }

  while (!v7);
  result[2] = a2;
  result[3] = a3;
  *(this + 7) = result + 4;
  return result;
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(google::protobuf::internal::ArenaImpl *this, unint64_t a2, void (*a3)(void *))
{
  v7 = 0;
  if (sub_276BD9108(this, &v7))
  {
    return sub_276B7B950(v7, a2, a3);
  }

  else
  {
    return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(this, a2, a3);
  }
}

void *sub_276B7B950(google::protobuf::internal::SerialArena *this, unint64_t a2, void (*a3)(void *))
{
  AlignedFallback = *(this + 5);
  if (*(this + 6) - AlignedFallback < a2)
  {
    AlignedFallback = google::protobuf::internal::SerialArena::AllocateAlignedFallback(this, a2);
  }

  else
  {
    *(this + 5) = AlignedFallback + a2;
  }

  v6 = *(this + 7);
  if (v6 == *(this + 8))
  {
    google::protobuf::internal::SerialArena::AddCleanupFallback(this, AlignedFallback, a3);
  }

  else
  {
    *v6 = AlignedFallback;
    v6[1] = a3;
    *(this + 7) = v6 + 2;
  }

  return AlignedFallback;
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(google::protobuf::internal::ArenaImpl *this, unint64_t a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  SerialArenaFallback = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v6);

  return sub_276B7B950(SerialArenaFallback, a2, a3);
}

char *google::protobuf::internal::ArenaImpl::AddCleanupFallback(google::protobuf::internal::ArenaImpl *this, void *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  result = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v6);
  v8 = *(result + 7);
  if (v8 == *(result + 8))
  {

    return google::protobuf::internal::SerialArena::AddCleanupFallback(result, a2, a3);
  }

  else
  {
    *v8 = a2;
    v8[1] = a3;
    *(result + 7) = v8 + 2;
  }

  return result;
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(google::protobuf::internal::ArenaImpl *this, unint64_t a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  SerialArenaFallback = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v4);
  v6 = *(SerialArenaFallback + 5);
  if (*(SerialArenaFallback + 6) - v6 < a2)
  {

    return google::protobuf::internal::SerialArena::AllocateAlignedFallback(SerialArenaFallback, a2);
  }

  else
  {
    *(SerialArenaFallback + 5) = v6 + a2;
    return v6;
  }
}

char *google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(atomic_ullong *this, void *a2)
{
  v3 = this;
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 1) != a2)
    {
      explicit = *(explicit + 4);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    this = google::protobuf::internal::ArenaImpl::NewBuffer(this, -1, 0x48uLL);
    this[3] = v3;
    explicit = (this + 3);
    this[2] = v5;
    *this = xmmword_276C1A0C0;
    this[4] = a2;
    this[5] = this;
    this[8] = (this + 12);
    this[9] = this + v5;
    this[6] = 0;
    this[10] = 0;
    this[11] = 0;
    v6 = *v3;
    this[7] = *v3;
    v7 = v6;
    atomic_compare_exchange_strong_explicit(v3, &v7, (this + 3), memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      v8 = v7;
      do
      {
        this[7] = v7;
        atomic_compare_exchange_strong_explicit(v3, &v8, explicit, memory_order_release, memory_order_relaxed);
        v9 = v8 == v7;
        v7 = v8;
      }

      while (!v9);
    }
  }

  v10 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  *(v10 + 2) = explicit;
  v11 = v3[3];
  *(google::protobuf::internal::ArenaImpl::thread_cache(v10) + 1) = v11;
  atomic_store(explicit, v3 + 1);
  return explicit;
}

void *google::protobuf::internal::SerialArena::AllocateAlignedFallback(google::protobuf::internal::SerialArena *this, unint64_t a2)
{
  v4 = *(this + 2);
  v5 = v4[2];
  v8 = this + 40;
  result = *(this + 5);
  v7 = *(v8 + 1);
  do
  {
    v4[1] = result + v5 - v7;
    v9 = google::protobuf::internal::ArenaImpl::NewBuffer(*this, v5, a2);
    *v9 = v4;
    v9[1] = 24;
    v9[2] = v5;
    *(this + 2) = v9;
    result = v9 + 3;
    v7 = v9 + v5;
    *(this + 5) = v9 + 3;
    *(this + 6) = v9 + v5;
    v4 = v9;
  }

  while (v5 - 24 < a2);
  *(this + 5) = result + a2;
  return result;
}

uint64_t google::protobuf::internal::ArenaImpl::SpaceUsed(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    v2 = 0;
    do
    {
      v3 = explicit[2];
      v4 = explicit[5] - v3 - 24;
      v5 = *v3;
      while (1)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
        if (!v6)
        {
          break;
        }

        v7 = v6;
        v5 = *v6;
        v4 = v4 + v7[1] - 24;
      }

      v2 = v2 + v4 - 72;
      explicit = explicit[4];
    }

    while (explicit);
  }

  else
  {
    v2 = 0;
  }

  if (this[4])
  {
    return v2 - 40;
  }

  else
  {
    return v2;
  }
}

uint64_t google::protobuf::internal::SerialArena::SpaceUsed(google::protobuf::internal::SerialArena *this)
{
  v1 = *(this + 2);
  v2 = *(this + 5) - v1 - 24;
  v3 = *v1;
  while (1)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v3 = *v4;
    v2 = v2 + v5[1] - 24;
  }

  return v2 - 72;
}

uint64_t google::protobuf::internal::SerialArena::CleanupList(uint64_t this)
{
  if (*(this + 24))
  {
    return google::protobuf::internal::SerialArena::CleanupListFallback(this);
  }

  return this;
}

uint64_t google::protobuf::internal::SerialArena::CleanupListFallback(uint64_t this)
{
  v1 = *(this + 24);
  v2 = (*(this + 56) - v1 - 16) >> 4;
  if (v2)
  {
LABEL_2:
    v3 = &v1[2 * v2 + 1];
    do
    {
      this = (*v3)(*(v3 - 1));
      v3 -= 2;
      --v2;
    }

    while (v2);
  }

  while (1)
  {
    v1 = v1[1];
    if (!v1)
    {
      return this;
    }

    v2 = *v1;
    if (*v1)
    {
      goto LABEL_2;
    }
  }
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x277C9F670);
  }

  return result;
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InitProtobufDefaultsSlow(google::protobuf::internal *this)
{
  if ((atomic_load_explicit(&qword_2812FE3F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2812FE3F8))
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    qword_2812FE378 = 0;
    unk_2812FE380 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);

    __cxa_guard_release(&qword_2812FE3F8);
  }
}

uint64_t google::protobuf::internal::StringSpaceUsedExcludingSelfLong(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 >= a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::SerializeMessageNoTable(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 96))(a1, *(a2 + 64), a2);
  *(a2 + 64) = result;
  return result;
}

void google::protobuf::internal::SerializeMessageNoTable(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v6, *a2, 0x7FFFFFFF, -1);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v7, v6, 1);
  v7[58] = *(a2 + 8);
  v8 = (*(*a1 + 96))(a1, v8, v7);
  v4 = google::protobuf::io::EpsCopyOutputStream::ByteCount(v7, v8);
  *a2 += v4 - v9;
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v7);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_276B7C020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SerializeInternal(uint64_t a1, unsigned int *a2, int a3, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a3 >= 1)
  {
    v24 = v4;
    v25 = v5;
    v9 = a3;
    do
    {
      v10 = a2[3];
      v11 = *a2;
      v12 = (a1 + v11);
      switch(v10)
      {
        case 0:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_101;
          }

          break;
        case 1:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_124;
          }

          break;
        case 2:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_115;
          }

          break;
        case 3:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_75;
          }

          break;
        case 4:
        case 13:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_14;
          }

          break;
        case 5:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_101;
          }

          break;
        case 6:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_124;
          }

          break;
        case 7:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_66;
          }

          break;
        case 8:
        case 11:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_12;
          }

          break;
        case 9:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_84;
          }

          break;
        case 10:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_96;
          }

          break;
        case 12:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_70;
          }

          break;
        case 14:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_124;
          }

          break;
        case 15:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_101;
          }

          break;
        case 16:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_111;
          }

          break;
        case 17:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_119;
          }

          break;
        case 20:
          if (*v12 != 0.0)
          {
            goto LABEL_101;
          }

          break;
        case 21:
          if (*v12 != 0.0)
          {
            goto LABEL_124;
          }

          break;
        case 22:
          if (*v12)
          {
LABEL_115:
            v21 = a2[1];
            goto LABEL_76;
          }

          break;
        case 23:
          if (*v12)
          {
LABEL_75:
            v21 = a2[1];
            goto LABEL_76;
          }

          break;
        case 24:
        case 33:
          if (*v12)
          {
LABEL_14:
            v16 = a2[1];
            goto LABEL_19;
          }

          break;
        case 25:
          if (*v12)
          {
            goto LABEL_101;
          }

          break;
        case 26:
          if (*v12)
          {
            goto LABEL_124;
          }

          break;
        case 27:
          if (*v12)
          {
            goto LABEL_66;
          }

          break;
        case 28:
        case 31:
          v13 = *v12 & 0xFFFFFFFFFFFFFFFELL;
          v14 = *(v13 + 23);
          if (v14 < 0)
          {
            v14 = *(v13 + 8);
          }

          if (v14)
          {
LABEL_12:
            v15 = a2[1];
            goto LABEL_17;
          }

          break;
        case 29:
          if (*v12)
          {
            goto LABEL_84;
          }

          break;
        case 30:
          if (*v12)
          {
LABEL_96:
            sub_276B7E6D0((a1 + v11), a2, this);
          }

          break;
        case 32:
          if (*v12)
          {
LABEL_70:
            v17 = a2[1];
            goto LABEL_71;
          }

          break;
        case 34:
          if (*v12)
          {
            goto LABEL_124;
          }

          break;
        case 35:
          if (*v12)
          {
            goto LABEL_101;
          }

          break;
        case 36:
          if (*v12)
          {
LABEL_111:
            v20 = a2[1];
            goto LABEL_112;
          }

          break;
        case 37:
          if (*v12)
          {
LABEL_119:
            v22 = a2[1];
            goto LABEL_120;
          }

          break;
        case 40:
        case 45:
        case 55:
          sub_276B7DD20((a1 + v11), a2, this);
          break;
        case 41:
        case 46:
        case 54:
          sub_276B7DEF4((a1 + v11), a2, this);
          break;
        case 42:
        case 43:
          sub_276B7E05C((a1 + v11), a2, this);
          break;
        case 44:
        case 53:
          sub_276B7E18C((a1 + v11), a2, this);
          break;
        case 47:
          sub_276B7E328((a1 + v11), a2, this);
          break;
        case 48:
        case 51:
          sub_276B7E490((a1 + v11), a2, this);
          break;
        case 49:
          sub_276B7E628((a1 + v11), a2, this);
          break;
        case 50:
          sub_276B7E72C(a1 + v11, a2, this);
          break;
        case 52:
          sub_276B7E7BC((a1 + v11), a2, this);
          break;
        case 56:
          sub_276B7E8EC((a1 + v11), a2, this);
          break;
        case 57:
          sub_276B7EA1C((a1 + v11), a2, this);
          break;
        case 60:
        case 65:
        case 75:
          sub_276B7DDCC((a1 + v11), a2, this);
          break;
        case 61:
        case 66:
        case 74:
          sub_276B7DFA0((a1 + v11), a2, this);
          break;
        case 62:
        case 63:
          sub_276B7E0EC((a1 + v11), a2, this);
          break;
        case 64:
        case 73:
          sub_276B7E21C((a1 + v11), a2, this);
          break;
        case 67:
          sub_276B7E3D4((a1 + v11), a2, this);
          break;
        case 68:
        case 69:
        case 70:
        case 71:
          sub_276B7E51C(a1 + v11, a2);
          break;
        case 72:
          sub_276B7E84C((a1 + v11), a2, this);
          break;
        case 76:
          sub_276B7E97C((a1 + v11), a2, this);
          break;
        case 77:
          sub_276B7EAAC((a1 + v11), a2, this);
          break;
        case 80:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_101;
          }

          break;
        case 81:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_124;
          }

          break;
        case 82:
          v21 = a2[1];
          if (*(a1 + a2[2]) == v21 >> 3)
          {
            goto LABEL_76;
          }

          break;
        case 83:
          v21 = a2[1];
          if (*(a1 + a2[2]) == v21 >> 3)
          {
LABEL_76:
            v23 = v21;
            sub_276B80624(&v23, this);
            sub_276B806C0(v12, this);
          }

          break;
        case 84:
        case 93:
          v16 = a2[1];
          if (*(a1 + a2[2]) == v16 >> 3)
          {
LABEL_19:
            v23 = v16;
            sub_276B80624(&v23, this);
            sub_276B8075C(v12, this);
          }

          break;
        case 85:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_101;
          }

          break;
        case 86:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_124;
          }

          break;
        case 87:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_66:
            sub_276B7E2BC((a1 + v11), a2, this);
          }

          break;
        case 88:
        case 91:
          v15 = a2[1];
          if (*(a1 + a2[2]) == v15 >> 3)
          {
LABEL_17:
            v23 = v15;
            sub_276B80624(&v23, this);
            sub_276B807F8(*v12 & 0xFFFFFFFFFFFFFFFELL, this);
          }

          break;
        case 89:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_84:
            sub_276B7E5B4((a1 + v11), a2, this);
          }

          break;
        case 90:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            v23 = a2[1];
            sub_276B80624(&v23, this);
            sub_276B809DC(*v12, *(a2 + 2), this);
          }

          break;
        case 92:
          v17 = a2[1];
          if (*(a1 + a2[2]) == v17 >> 3)
          {
LABEL_71:
            v23 = v17;
            sub_276B80624(&v23, this);
            sub_276B80624(v12, this);
          }

          break;
        case 94:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_124:
            sub_276B7DE88((a1 + v11), a2, this);
          }

          break;
        case 95:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_101:
            sub_276B7DCB4((a1 + v11), a2, this);
          }

          break;
        case 96:
          v20 = a2[1];
          if (*(a1 + a2[2]) == v20 >> 3)
          {
LABEL_112:
            v23 = v20;
            sub_276B80624(&v23, this);
            sub_276B80ABC(v12, this);
          }

          break;
        case 97:
          v22 = a2[1];
          if (*(a1 + a2[2]) == v22 >> 3)
          {
LABEL_120:
            v23 = v22;
            sub_276B80624(&v23, this);
            sub_276B80B60(v12, this);
          }

          break;
        case 100:
          v18 = a2[1];
          v19 = a2[2];
          (*(a2 + 2))(a1);
          break;
        default:
          google::protobuf::internal::SerializeNotImplemented(v10);
          break;
      }

      a2 += 6;
      --v9;
    }

    while (v9);
  }
}

void *google::protobuf::internal::SerializeMessageDispatch(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = google::protobuf::internal::SerializeInternalToArray(a1, a2, a3, *(a5 + 8), *a5);
  *a5 = result;
  return result;
}

void *google::protobuf::internal::SerializeInternalToArray(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, void *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v55[0] = a5;
  v55[1] = a4;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = (a2 + 24 * v8);
      v11 = (a1 + *v10);
      switch(v10[3])
      {
        case 0u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v17 = v14 >> 14;
                v14 >>= 7;
              }

              while (v17);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 1u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v43 = v29 >> 14;
                v29 >>= 7;
              }

              while (v43);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 2u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_194;
          }

          break;
        case 3u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_194;
          }

          break;
        case 4u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_209;
          }

          break;
        case 5u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v41 = v14 >> 14;
                v14 >>= 7;
              }

              while (v41);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 6u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v42 = v29 >> 14;
                v29 >>= 7;
              }

              while (v42);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 7u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v18 = v10[1];
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_109;
            }

            *v55[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v48 = v20 >> 14;
                v20 >>= 7;
              }

              while (v48);
              goto LABEL_223;
            }

            goto LABEL_216;
          }

          break;
        case 8u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_214;
          }

          break;
        case 9u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_197;
          }

          break;
        case 0xAu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_168;
          }

          break;
        case 0xBu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_214;
          }

          break;
        case 0xCu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_172;
          }

          break;
        case 0xDu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_209;
          }

          break;
        case 0xEu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v47 = v29 >> 14;
                v29 >>= 7;
              }

              while (v47);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 0xFu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v50 = v14 >> 14;
                v14 >>= 7;
              }

              while (v50);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 0x10u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_189;
          }

          break;
        case 0x11u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_200;
          }

          break;
        case 0x14u:
          if (*v11 != 0.0)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v35 = v14 >> 14;
                v14 >>= 7;
              }

              while (v35);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 0x15u:
          if (*v11 != 0.0)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v45 = v29 >> 14;
                v29 >>= 7;
              }

              while (v45);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 0x16u:
          if (*v11)
          {
            goto LABEL_194;
          }

          break;
        case 0x17u:
          if (*v11)
          {
            goto LABEL_194;
          }

          break;
        case 0x18u:
          if (*v11)
          {
            goto LABEL_209;
          }

          break;
        case 0x19u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v40 = v14 >> 14;
                v14 >>= 7;
              }

              while (v40);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 0x1Au:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v46 = v29 >> 14;
                v29 >>= 7;
              }

              while (v46);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 0x1Bu:
          if (*v11)
          {
            v18 = v10[1];
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_109;
            }

            *v55[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v39 = v20 >> 14;
                v20 >>= 7;
              }

              while (v39);
              goto LABEL_223;
            }

            goto LABEL_216;
          }

          break;
        case 0x1Cu:
          v33 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v33 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v33 + 8))
            {
              goto LABEL_214;
            }
          }

          else if (*(v33 + 23))
          {
            goto LABEL_214;
          }

          break;
        case 0x1Du:
          if (*v11)
          {
            goto LABEL_197;
          }

          break;
        case 0x1Eu:
          if (*v11)
          {
            goto LABEL_168;
          }

          break;
        case 0x1Fu:
          v44 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v44 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v44 + 8))
            {
              goto LABEL_214;
            }
          }

          else if (*(v44 + 23))
          {
            goto LABEL_214;
          }

          break;
        case 0x20u:
          if (*v11)
          {
            goto LABEL_172;
          }

          break;
        case 0x21u:
          if (*v11)
          {
            goto LABEL_209;
          }

          break;
        case 0x22u:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v32 = v29 >> 14;
                v29 >>= 7;
              }

              while (v32);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 0x23u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v38 = v14 >> 14;
                v14 >>= 7;
              }

              while (v38);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 0x24u:
          if (*v11)
          {
            goto LABEL_189;
          }

          break;
        case 0x25u:
          if (*v11)
          {
            goto LABEL_200;
          }

          break;
        case 0x28u:
        case 0x2Du:
        case 0x37u:
          sub_276B7EB4C(v11, a2 + 24 * v8, v55);
          break;
        case 0x29u:
        case 0x2Eu:
        case 0x36u:
          sub_276B7ECD8(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Au:
        case 0x2Bu:
          sub_276B7EECC(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Cu:
        case 0x35u:
          sub_276B7F120(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Fu:
          sub_276B7F30C(v11, a2 + 24 * v8, v55);
          break;
        case 0x30u:
        case 0x33u:
          sub_276B7F528(v11, a2 + 24 * v8, v55);
          break;
        case 0x31u:
          sub_276B7F6F4(v11, a2 + 24 * v8, v55);
          break;
        case 0x32u:
          sub_276B7F898(v11, a2 + 24 * v8, v55);
          break;
        case 0x34u:
          sub_276B7F9D4(v11, a2 + 24 * v8, v55);
          break;
        case 0x38u:
          sub_276B7FC48(v11, a2 + 24 * v8, v55);
          break;
        case 0x39u:
          sub_276B7FEC4(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Cu:
        case 0x41u:
        case 0x4Bu:
          sub_276B7EBDC(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Du:
        case 0x42u:
        case 0x4Au:
          sub_276B7ED68(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Eu:
        case 0x3Fu:
          sub_276B7EF90(v11, a2 + 24 * v8, v55);
          break;
        case 0x40u:
        case 0x49u:
          sub_276B7F1E4(v11, a2 + 24 * v8, v55);
          break;
        case 0x43u:
          sub_276B7F39C(v11, a2 + 24 * v8, v55);
          break;
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
          sub_276B7E51C(v11, a2 + 24 * v8);
          break;
        case 0x48u:
          sub_276B7FA98(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Cu:
          sub_276B7FD10(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Du:
          sub_276B7FF8C(v11, a2 + 24 * v8, v55);
          break;
        case 0x50u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v26 = v14 >> 14;
                v14 >>= 7;
              }

              while (v26);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 0x51u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v34 = v29 >> 14;
                v29 >>= 7;
              }

              while (v34);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 0x52u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_194;
          }

          break;
        case 0x53u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_194:
            sub_276B7EE64(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x54u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_209;
          }

          break;
        case 0x55u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_181;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v25 = v14 >> 14;
                v14 >>= 7;
              }

              while (v25);
              goto LABEL_227;
            }

            goto LABEL_218;
          }

          break;
        case 0x56u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_204;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v37 = v29 >> 14;
                v29 >>= 7;
              }

              while (v37);
              goto LABEL_231;
            }

            goto LABEL_220;
          }

          break;
        case 0x57u:
          v18 = v10[1];
          if (*(a1 + v10[2]) == v18 >> 3)
          {
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
LABEL_109:
              *v19 = v18;
              v21 = v19 + 1;
            }

            else
            {
              *v55[0] = v18 | 0x80;
              v20 = v18 >> 7;
              if (v18 >> 14)
              {
                v21 = v19 + 2;
                do
                {
                  *(v21 - 1) = v20 | 0x80;
                  v22 = v20 >> 7;
                  ++v21;
                  v23 = v20 >> 14;
                  v20 >>= 7;
                }

                while (v23);
LABEL_223:
                *(v21 - 1) = v22;
              }

              else
              {
LABEL_216:
                v19[1] = v20;
                v21 = v19 + 2;
              }
            }

            *v21 = *v11;
            v49 = v21 + 1;
            goto LABEL_233;
          }

          break;
        case 0x58u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_214;
          }

          break;
        case 0x59u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_197:
            sub_276B7F5FC(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Au:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_168:
            sub_276B7F82C(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Bu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_214:
            sub_276B7F498(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Cu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_172:
            sub_276B7F96C(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Du:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_209:
            sub_276B7F0B8(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Eu:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 > 0x7F)
            {
              *v55[0] = v27 | 0x80;
              v29 = v27 >> 7;
              if (v27 >> 14)
              {
                v30 = (v28 + 2);
                do
                {
                  *(v30 - 1) = v29 | 0x80;
                  v31 = v29 >> 7;
                  v30 = (v30 + 1);
                  v51 = v29 >> 14;
                  v29 >>= 7;
                }

                while (v51);
LABEL_231:
                *(v30 - 1) = v31;
              }

              else
              {
LABEL_220:
                v28[1] = v29;
                v30 = (v28 + 2);
              }
            }

            else
            {
LABEL_204:
              *v28 = v27;
              v30 = (v28 + 1);
            }

            *v30 = *v11;
            v49 = v30 + 1;
            goto LABEL_233;
          }

          break;
        case 0x5Fu:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
LABEL_181:
              *v13 = v12;
              v15 = v13 + 1;
            }

            else
            {
              *v55[0] = v12 | 0x80;
              v14 = v12 >> 7;
              if (v12 >> 14)
              {
                v15 = v13 + 2;
                do
                {
                  *(v15 - 1) = v14 | 0x80;
                  v16 = v14 >> 7;
                  v15 = (v15 + 1);
                  v36 = v14 >> 14;
                  v14 >>= 7;
                }

                while (v36);
LABEL_227:
                *(v15 - 1) = v16;
              }

              else
              {
LABEL_218:
                v13[1] = v14;
                v15 = v13 + 2;
              }
            }

            *v15 = *v11;
            v49 = v15 + 1;
LABEL_233:
            v55[0] = v49;
          }

          break;
        case 0x60u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_189:
            sub_276B7FBC0(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x61u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_200:
            sub_276B7FE3C(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x64u:
          google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v54, v55[0], 0x7FFFFFFF, -1);
          google::protobuf::io::CodedOutputStream::CodedOutputStream(v56, v54, 1);
          v56[58] = a4;
          (*(v10 + 2))(a1, *v10, v10[1], v10[2], v56);
          v24 = google::protobuf::io::EpsCopyOutputStream::ByteCount(v56, v57);
          v55[0] = v55[0] + v24 - v58;
          google::protobuf::io::CodedOutputStream::~CodedOutputStream(v56);
          break;
        default:
          google::protobuf::internal::SerializeNotImplemented(v10[3]);
          break;
      }

      ++v8;
    }

    while (v8 != v9);
    a5 = v55[0];
  }

  v52 = *MEMORY[0x277D85DE8];
  return a5;
}

void sub_276B7DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SerializeNotImplemented(google::protobuf::internal *this)
{
  v1 = this;
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_util.cc", 534);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "Not implemented field number ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, v1);
  google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_276B7DC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::IsNull<9>(void *a1)
{
  v1 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return v2 == 0;
}

BOOL google::protobuf::internal::IsNull<12>(void *a1)
{
  v1 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return v2 == 0;
}

unsigned __int8 *sub_276B7DCB4(uint64_t *a1, uint64_t a2, unsigned __int8 **this)
{
  v8 = *(a2 + 4);
  result = sub_276B80624(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 8;
  return result;
}

int *sub_276B7DD20(int *result, uint64_t a2, unsigned __int8 **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      result = sub_276B80624(&v11, this);
      v9 = *(*(v7 + 1) + 8 * v8);
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7DDCC(unsigned __int8 *result, uint64_t a2, unsigned __int8 **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_276B80624(&v8, this);
    v9 = *(v4 + 4);
    result = sub_276B80624(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = this[8];
      do
      {
        v7 = *(*(v4 + 1) + 8 * v5);
        if (*this <= v6)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
          v6 = result;
        }

        *v6 = v7;
        v6 += 8;
        this[8] = v6;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7DE88(int *a1, uint64_t a2, unsigned __int8 **this)
{
  v8 = *(a2 + 4);
  result = sub_276B80624(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 4;
  return result;
}

int *sub_276B7DEF4(int *result, uint64_t a2, unsigned __int8 **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      result = sub_276B80624(&v11, this);
      v9 = *(*(v7 + 1) + 4 * v8);
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7DFA0(unsigned __int8 *result, uint64_t a2, unsigned __int8 **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_276B80624(&v8, this);
    v9 = *(v4 + 4);
    result = sub_276B80624(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = this[8];
      do
      {
        v7 = *(*(v4 + 1) + 4 * v5);
        if (*this <= v6)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
          v6 = result;
        }

        *v6 = v7;
        v6 += 4;
        this[8] = v6;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7E05C(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_276B80624(&v10, this);
      result = sub_276B806C0((*(v7 + 1) + v8), this);
      ++v9;
      v8 += 8;
    }

    while (v9 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7E0EC(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_276B80624(&v7, this);
    v8 = *(v4 + 4);
    result = sub_276B80624(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        result = sub_276B806C0((*(v4 + 1) + v5), this);
        ++v6;
        v5 += 8;
      }

      while (v6 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7E18C(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_276B80624(&v10, this);
      result = sub_276B8075C((*(v7 + 1) + v8), this);
      ++v9;
      v8 += 4;
    }

    while (v9 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7E21C(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_276B80624(&v7, this);
    v8 = *(v4 + 4);
    result = sub_276B80624(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        result = sub_276B8075C((*(v4 + 1) + v5), this);
        ++v6;
        v5 += 4;
      }

      while (v6 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7E2BC(unsigned __int8 *a1, uint64_t a2, unsigned __int8 **this)
{
  v8 = *(a2 + 4);
  result = sub_276B80624(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 1;
  return result;
}

int *sub_276B7E328(int *result, uint64_t a2, unsigned __int8 **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      result = sub_276B80624(&v11, this);
      v9 = *(*(v7 + 1) + v8);
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 1;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7E3D4(unsigned __int8 *result, uint64_t a2, unsigned __int8 **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_276B80624(&v8, this);
    v9 = *(v4 + 4);
    result = sub_276B80624(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = this[8];
      do
      {
        v7 = *(*(v4 + 1) + v5);
        if (*this <= v6)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
          v6 = result;
        }

        *v6++ = v7;
        this[8] = v6;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7E490(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 2) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_276B80624(&v11, this);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = sub_276B807F8(*(v10 + 8 * v8++), this);
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

void sub_276B7E51C(uint64_t a1, uint64_t a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_util.cc", 509);
  v3 = google::protobuf::internal::LogMessage::operator<<(v8, "Not implemented field number ");
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, *(a2 + 4));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " with type ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a2 + 12));
  google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_276B7E59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_276B7E5B4(uint64_t *a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v7 = *(a2 + 4);
  sub_276B80624(&v7, this);
  sub_276B80958(*a1, *(a2 + 16), this);
  v8 = *(a2 + 4) + 1;
  return sub_276B80624(&v8, this);
}

unsigned __int8 *sub_276B7E628(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 2) >= 1)
  {
    v13 = v3;
    v14 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_276B80624(&v11, this);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      sub_276B80958(*(v10 + 8 * v8), *(a2 + 16), this);
      v12 = *(a2 + 4) + 1;
      result = sub_276B80624(&v12, this);
      ++v8;
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

uint64_t sub_276B7E6D0(uint64_t *a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v7 = *(a2 + 4);
  sub_276B80624(&v7, this);
  return sub_276B809DC(*a1, *(a2 + 16), this);
}

uint64_t sub_276B7E72C(uint64_t result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 8) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_276B80624(&v11, this);
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = sub_276B809DC(*(v10 + 8 * v8++), *(a2 + 16), this);
    }

    while (v8 < *(v7 + 8));
  }

  return result;
}

unsigned __int8 *sub_276B7E7BC(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_276B80624(&v10, this);
      result = sub_276B80624((*(v7 + 1) + v8), this);
      ++v9;
      v8 += 4;
    }

    while (v9 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7E84C(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_276B80624(&v7, this);
    v8 = *(v4 + 4);
    result = sub_276B80624(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        result = sub_276B80624((*(v4 + 1) + v5), this);
        ++v6;
        v5 += 4;
      }

      while (v6 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7E8EC(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_276B80624(&v10, this);
      result = sub_276B80ABC((*(v7 + 1) + v8), this);
      ++v9;
      v8 += 4;
    }

    while (v9 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7E97C(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_276B80624(&v7, this);
    v8 = *(v4 + 4);
    result = sub_276B80624(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        result = sub_276B80ABC((*(v4 + 1) + v5), this);
        ++v6;
        v5 += 4;
      }

      while (v6 < *v4);
    }
  }

  return result;
}

unsigned __int8 *sub_276B7EA1C(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_276B80624(&v10, this);
      result = sub_276B80B60((*(v7 + 1) + v8), this);
      ++v9;
      v8 += 8;
    }

    while (v9 < *v7);
  }

  return result;
}

unsigned __int8 *sub_276B7EAAC(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_276B80624(&v7, this);
    v8 = *(v4 + 4);
    result = sub_276B80624(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        result = sub_276B80B60((*(v4 + 1) + v5), this);
        ++v6;
        v5 += 8;
      }

      while (v6 < *v4);
    }
  }

  return result;
}

int *sub_276B7EB4C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 > 0x7F)
      {
        *v4 = v5 | 0x80;
        v7 = v5 >> 7;
        if (v5 >> 14)
        {
          v6 = v4 + 2;
          do
          {
            *(v6 - 1) = v7 | 0x80;
            v8 = v7 >> 7;
            v6 = (v6 + 1);
            v9 = v7 >> 14;
            v7 >>= 7;
          }

          while (v9);
          *(v6 - 1) = v8;
        }

        else
        {
          v4[1] = v7;
          v6 = v4 + 2;
        }
      }

      else
      {
        *v4 = v5;
        v6 = v4 + 1;
      }

      *v6 = *(*(result + 1) + 8 * v3);
      v4 = v6 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_276B7EBDC(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 > 0x7F)
    {
      *v4 = v3 | 0x80;
      v6 = v3 >> 7;
      if (v3 >> 14)
      {
        v5 = v4 + 2;
        do
        {
          *(v5 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++v5;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(v5 - 1) = v7;
      }

      else
      {
        v4[1] = v6;
        v5 = v4 + 2;
      }
    }

    else
    {
      *v4 = v3;
      v5 = v4 + 1;
    }

    v9 = result[4];
    if (v9 > 0x7F)
    {
      *v5 = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v5 + 2;
        do
        {
          *(v10 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v10;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v10 - 1) = v12;
      }

      else
      {
        v5[1] = v11;
        v10 = v5 + 2;
      }
    }

    else
    {
      *v5 = v9;
      v10 = v5 + 1;
    }

    *a3 = v10;
    if (*result >= 1)
    {
      v14 = 0;
      v15 = v10 + 8;
      do
      {
        *(v15 - 1) = *(*(result + 1) + 8 * v14);
        *a3 = v15;
        ++v14;
        v15 += 8;
      }

      while (v14 < *result);
    }
  }

  return result;
}

int *sub_276B7ECD8(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 > 0x7F)
      {
        *v4 = v5 | 0x80;
        v7 = v5 >> 7;
        if (v5 >> 14)
        {
          v6 = v4 + 2;
          do
          {
            *(v6 - 1) = v7 | 0x80;
            v8 = v7 >> 7;
            v6 = (v6 + 1);
            v9 = v7 >> 14;
            v7 >>= 7;
          }

          while (v9);
          *(v6 - 1) = v8;
        }

        else
        {
          v4[1] = v7;
          v6 = v4 + 2;
        }
      }

      else
      {
        *v4 = v5;
        v6 = v4 + 1;
      }

      *v6 = *(*(result + 1) + 4 * v3);
      v4 = v6 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_276B7ED68(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 > 0x7F)
    {
      *v4 = v3 | 0x80;
      v6 = v3 >> 7;
      if (v3 >> 14)
      {
        v5 = v4 + 2;
        do
        {
          *(v5 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++v5;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(v5 - 1) = v7;
      }

      else
      {
        v4[1] = v6;
        v5 = v4 + 2;
      }
    }

    else
    {
      *v4 = v3;
      v5 = v4 + 1;
    }

    v9 = result[4];
    if (v9 > 0x7F)
    {
      *v5 = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v5 + 2;
        do
        {
          *(v10 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v10;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v10 - 1) = v12;
      }

      else
      {
        v5[1] = v11;
        v10 = v5 + 2;
      }
    }

    else
    {
      *v5 = v9;
      v10 = v5 + 1;
    }

    *a3 = v10;
    if (*result >= 1)
    {
      v14 = 0;
      v15 = v10 + 4;
      do
      {
        *(v15 - 1) = *(*(result + 1) + 4 * v14);
        *a3 = v15;
        ++v14;
        v15 += 4;
      }

      while (v14 < *result);
    }
  }

  return result;
}

unint64_t *sub_276B7EE64(unint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return sub_276B80C68(a1, a3);
}

unint64_t *sub_276B7EECC(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      result = sub_276B80C68((v5[1] + 8 * v6++), a3);
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_276B7EF90(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
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

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        result = sub_276B80C68((*(v4 + 1) + v16), a3);
        ++v17;
        v16 += 8;
      }

      while (v17 < *v4);
    }
  }

  return result;
}

int *sub_276B7F0B8(int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return sub_276B80CCC(a1, a3);
}

int *sub_276B7F120(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      result = sub_276B80CCC((*(v5 + 1) + 4 * v6++), a3);
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_276B7F1E4(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
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

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        result = sub_276B80CCC((*(v4 + 1) + v16), a3);
        ++v17;
        v16 += 4;
      }

      while (v17 < *v4);
    }
  }

  return result;
}

int *sub_276B7F30C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 > 0x7F)
      {
        *v4 = v5 | 0x80;
        v7 = v5 >> 7;
        if (v5 >> 14)
        {
          v6 = v4 + 2;
          do
          {
            *(v6 - 1) = v7 | 0x80;
            v8 = v7 >> 7;
            ++v6;
            v9 = v7 >> 14;
            v7 >>= 7;
          }

          while (v9);
          *(v6 - 1) = v8;
        }

        else
        {
          v4[1] = v7;
          v6 = v4 + 2;
        }
      }

      else
      {
        *v4 = v5;
        v6 = v4 + 1;
      }

      *v6 = *(*(result + 1) + v3);
      v4 = v6 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_276B7F39C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 > 0x7F)
    {
      *v4 = v3 | 0x80;
      v6 = v3 >> 7;
      if (v3 >> 14)
      {
        v5 = v4 + 2;
        do
        {
          *(v5 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++v5;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(v5 - 1) = v7;
      }

      else
      {
        v4[1] = v6;
        v5 = v4 + 2;
      }
    }

    else
    {
      *v4 = v3;
      v5 = v4 + 1;
    }

    v9 = result[4];
    if (v9 > 0x7F)
    {
      *v5 = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v5 + 2;
        do
        {
          *(v10 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v10;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v10 - 1) = v12;
      }

      else
      {
        v5[1] = v11;
        v10 = v5 + 2;
      }
    }

    else
    {
      *v5 = v9;
      v10 = v5 + 1;
    }

    *a3 = v10;
    if (*result >= 1)
    {
      v14 = 0;
      v15 = v10 + 1;
      do
      {
        *(v15 - 1) = *(*(result + 1) + v14);
        *a3 = v15;
        ++v14;
        ++v15;
      }

      while (v14 < *result);
    }
  }

  return result;
}

char *sub_276B7F498(void *a1, uint64_t a2, char **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray((*a1 & 0xFFFFFFFFFFFFFFFELL), v6);
  *a3 = result;
  return result;
}

char *sub_276B7F528(char *result, uint64_t a2, char **a3)
{
  if (*(result + 2) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(v5 + 2);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      result = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(*(v14 + 8 * v6), v9);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *(v5 + 2));
  }

  return result;
}

void sub_276B7F5FC(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 4);
  v6 = *a3;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x80;
    v8 = v5 >> 7;
    if (v5 >> 14)
    {
      v7 = v6 + 2;
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
      v6[1] = v8;
      v7 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5;
    v7 = v6 + 1;
  }

  *a3 = v7;
  sub_276B80D30(*a1, *(a2 + 16), a3);
  v11 = *(a2 + 4) + 1;
  v12 = *a3;
  if (v11 > 0x7F)
  {
    *v12 = v11 | 0x80;
    v14 = v11 >> 7;
    if (v11 >> 14)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v13;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v13 - 1) = v15;
    }

    else
    {
      v12[1] = v14;
      v13 = v12 + 2;
    }
  }

  else
  {
    *v12 = v11;
    v13 = v12 + 1;
  }

  *a3 = v13;
}

void sub_276B7F6F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
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
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      sub_276B80D30(*(v14 + 8 * v6), *(a2 + 16), a3);
      v15 = *(a2 + 4) + 1;
      v16 = *a3;
      if (v15 > 0x7F)
      {
        *v16 = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v7 = v16 + 2;
          do
          {
            *(v7 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v7 - 1) = v18;
        }

        else
        {
          v16[1] = v17;
          v7 = v16 + 2;
        }
      }

      else
      {
        *v16 = v15;
        v7 = v16 + 1;
      }

      *a3 = v7;
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }
}

void sub_276B7F82C(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  sub_276B80D94(*a1, *(a2 + 16), a3);
}

void sub_276B7F898(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
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
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      sub_276B80D94(*(v14 + 8 * v6++), *(a2 + 16), a3);
    }

    while (v6 < *(a1 + 8));
  }
}