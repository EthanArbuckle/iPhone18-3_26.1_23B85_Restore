void google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4)
{
  v8 = *this;
  if (*(a4 + 10) != v8)
  {
    sub_10010C12C(v8, a4, "SetAllocatedMessage", "Field does not match message type.");
  }

  if (*(a4 + 15) == 3)
  {
    sub_10010C12C(*this, a4, "SetAllocatedMessage", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v9, &v28, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)] != 10)
  {
    sub_10010C8E8(*this, a4, "SetAllocatedMessage", 10);
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
        std::__call_once(v12, &v28, sub_1000B32C4);
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

    v22 = sub_100113574(this + 8, a4);
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
    *(a2 + sub_100113574(this + 8, a4)) = a3;
    *(a2 + *(this + 11) - 1431655764 * ((*(a4 + 11) - *(*(*(a4 + 11) + 16) + 48)) >> 4)) = *(a4 + 17);
  }
}

uint64_t google::protobuf::Reflection::UnsafeArenaReleaseMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "ReleaseMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "ReleaseMessage", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_10010C8E8(*this, a3, "ReleaseMessage", 10);
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
    v15 = sub_100113574(this + 8, a3);
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
    sub_10010C12C(v8, a3, "GetRepeatedMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedMessage", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedMessage", 10);
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
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_100113574(this + 8, a3);
    v13 = *(google::protobuf::internal::MapFieldBase::GetRepeatedField((a2 + v12)) + 16);
  }

  else
  {
    v13 = *(a2 + sub_100113574(this + 8, a3) + 16);
  }

  return *(v13 + 8 * a4 + 8);
}

uint64_t google::protobuf::Reflection::MutableRepeatedMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "MutableRepeatedMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "MutableRepeatedMessage", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_10010C8E8(*this, a3, "MutableRepeatedMessage", 10);
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
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_100113574(this + 8, a3);
    v13 = *(google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v12)) + 16);
  }

  else
  {
    v13 = *(a2 + sub_100113574(this + 8, a3) + 16);
  }

  return *(v13 + 8 * a4 + 8);
}

uint64_t google::protobuf::Reflection::AddMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddMessage", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v23, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_10010C8E8(*this, a3, "AddMessage", 10);
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
      std::__call_once(v11, &v23, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v12 = sub_100113574(this + 8, a3);
    v13 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v12));
  }

  else
  {
    v13 = a2 + sub_100113574(this + 8, a3);
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
    sub_1000FCCFC(v13, v10);
  }

  return v10;
}

uint64_t google::protobuf::Reflection::MutableRawRepeatedField(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, int a4, uint64_t a5, uint64_t a6)
{
  if (*(this + 15) != 3)
  {
    sub_10010C12C(*a1, this, "MutableRawRepeatedField", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v11, &v27, sub_1000B32C4);
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
      std::__call_once(v13, &v27, sub_1000B32C4);
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
    sub_10010C8E8(*a1, this, "MutableRawRepeatedField", a4);
    if (!a6)
    {
      goto LABEL_16;
    }
  }

  if (google::protobuf::FieldDescriptor::message_type(this) != a6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 1789);
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
        std::__call_once(v18, &v27, sub_1000B32C4);
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
        std::__call_once(v22, &v27, sub_1000B32C4);
      }
    }

    if (*(this + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(this))
    {
      v23 = sub_10011364C(a1 + 8, this);
      return google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v23));
    }

    else
    {
      return a2 + sub_10011364C(a1 + 8, this);
    }
  }
}

void sub_100112050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Reflection::GetRawRepeatedField(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *this, int a4, int a5, uint64_t a6)
{
  if (*(this + 15) != 3)
  {
    sub_10010C12C(*a1, this, "GetRawRepeatedField", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v12, &v28, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)] != a4)
  {
    sub_10010C8E8(*a1, this, "GetRawRepeatedField", a4);
  }

  if ((a5 & 0x80000000) == 0 && *(*(this + 15) + 72) != a5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 1813);
    v13 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (field->options().ctype()) == (ctype): ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, "subtype mismatch");
    google::protobuf::internal::LogFinisher::operator=(&v28, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }

  if (a6 && google::protobuf::FieldDescriptor::message_type(this) != a6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 1815);
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
        std::__call_once(v19, &v28, sub_1000B32C4);
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
        std::__call_once(v23, &v28, sub_1000B32C4);
      }
    }

    if (*(this + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(this))
    {
      v24 = sub_10011364C(a1 + 8, this);
      return google::protobuf::internal::MapFieldBase::GetRepeatedField((a2 + v24));
    }

    else
    {
      return a2 + sub_10011364C(a1 + 8, this);
    }
  }
}

void sub_100112330(_Unwind_Exception *a1, uint64_t a2, ...)
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
      std::__call_once(v10, v20, sub_1000B32C4);
    }
  }

  if (*(this + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(this) & 1) == 0)
  {
    sub_10010C12C(*a1, this, "LookupMapValue", "Field is not a map field.");
  }

  v11 = google::protobuf::FieldDescriptor::message_type(this);
  sub_1000B347C(__p, "value");
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
      std::__call_once(v14, &v22, sub_1000B32C4);
    }
  }

  *(a5 + 8) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)];
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = sub_100113574((a1 + 1), this);
  return (*(*(a2 + v15) + 32))(a2 + v15, a4, a5);
}

void sub_100112598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      std::__call_once(v8, &v13, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_10010C12C(*this, a3, "MapBegin", "Field is not a map field.");
  }

  sub_1001132CC(a4, a2, a3);
  v9 = sub_100113574(this + 8, a3);
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
      std::__call_once(v8, &v13, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_10010C12C(*this, a3, "MapEnd", "Field is not a map field.");
  }

  sub_1001132CC(a4, a2, a3);
  v9 = sub_100113574(this + 8, a3);
  return (*(*(a2 + v9) + 64))(a2 + v9, a4);
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
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 2281);
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
      std::__call_once(v11, &v29, sub_1000B32C4);
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
      std::__call_once(v13, &v29, sub_1000B32C4);
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
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 2284);
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
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 2289);
    v14 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (message_type) == (field->message_type()): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (*(this + 67) != 1)
  {
    return a2 + sub_10011364C(a1 + 8, this);
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
      std::__call_once(v17, &v29, sub_1000B32C4);
    }
  }

  v18 = *(this + 56);
  is_packed = google::protobuf::FieldDescriptor::is_packed(this);
  return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField((a2 + v15), v16, v18, is_packed, this);
}

void sub_100112BE8(_Unwind_Exception *a1, uint64_t a2, ...)
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
      std::__call_once(v6, &v10, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_10010C12C(*this, a3, "GetMapData", "Field is not a map field.");
  }

  return a2 + sub_100113574(this + 8, a3);
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
      std::__call_once(v6, &v10, sub_1000B32C4);
    }
  }

  if (*(a3 + 14) != 11 || (google::protobuf::FieldDescriptor::is_map_message_type(a3) & 1) == 0)
  {
    sub_10010C12C(*this, a3, "GetMapData", "Field is not a map field.");
  }

  return a2 + sub_100113574(this + 8, a3);
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
    v6[0] = sub_100112E24;
    v6[1] = &v4;
    v6[2] = &v3;
    v5 = v6;
    std::__call_once(v2, &v5, sub_100114CE8);
  }
}

void sub_100112E24(std::string::size_type a1, int a2)
{
  if ((atomic_load_explicit(&qword_1001EB348, memory_order_acquire) & 1) == 0)
  {
    sub_100164E14();
  }

  std::mutex::lock(&stru_1001EA328);
  google::protobuf::internal::AddDescriptors(a1);
  std::mutex::unlock(&stru_1001EA328);
  if (a2)
  {
    v5 = *(a1 + 60);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v4 = *(*(a1 + 48) + v6);
        if (v4)
        {
          v4 = google::protobuf::internal::AssignDescriptors(v4, 1);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  v8 = google::protobuf::DescriptorPool::internal_generated_pool(v4);
  sub_1000B347C(&__p, *(a1 + 16));
  FileByName = google::protobuf::DescriptorPool::FindFileByName(v8, &__p, v9);
  v11 = FileByName;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else if (FileByName)
  {
    goto LABEL_14;
  }

  google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 2452);
  v12 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: file != nullptr: ");
  google::protobuf::internal::LogFinisher::operator=(&v39, &v12->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
LABEL_14:
  v13 = google::protobuf::MessageFactory::generated_factory(FileByName);
  v14 = *(a1 + 104);
  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  __p.__r_.__value_.__r.__words[0] = v13;
  __p.__r_.__value_.__l.__size_ = v15;
  __p.__r_.__value_.__r.__words[2] = v14;
  v41 = *(a1 + 64);
  v42 = v16;
  if (*(v11 + 11) >= 1)
  {
    sub_100113718(&__p, *(v11 + 13));
  }

  v17 = *(v11 + 12);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = __p.__r_.__value_.__r.__words[2];
    v20 = 80 * v17;
    do
    {
      *v19 = *(v11 + 14) + v18;
      v19 = (__p.__r_.__value_.__r.__words[2] + 8);
      __p.__r_.__value_.__r.__words[2] += 8;
      v18 += 80;
    }

    while (v20 != v18);
  }

  if (*(*(v11 + 17) + 155) == 1)
  {
    v21 = *(v11 + 13);
    if (v21 >= 1)
    {
      for (i = 0; i != v21; ++i)
      {
        *(*(a1 + 112) + 8 * i) = *(v11 + 15) + 48 * i;
      }
    }
  }

  if ((atomic_load_explicit(&qword_1001EB358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB358))
  {
    operator new();
  }

  v23 = qword_1001EB350;
  v24 = *(a1 + 88);
  size = __p.__r_.__value_.__l.__size_;
  std::mutex::lock(qword_1001EB350);
  v27 = *(v23 + 72);
  v26 = *(v23 + 80);
  if (v27 >= v26)
  {
    v29 = *(v23 + 64);
    v30 = (v27 - v29) >> 4;
    v31 = v30 + 1;
    if ((v30 + 1) >> 60)
    {
      sub_100070E64();
    }

    v32 = v26 - v29;
    if (v32 >> 3 > v31)
    {
      v31 = v32 >> 3;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFF0)
    {
      v33 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      sub_1001139CC(v23 + 64, v33);
    }

    v34 = (16 * v30);
    *v34 = v24;
    v34[1] = size;
    v28 = 16 * v30 + 16;
    v35 = *(v23 + 64);
    v36 = *(v23 + 72) - v35;
    v37 = (16 * v30 - v36);
    memcpy(v37, v35, v36);
    v38 = *(v23 + 64);
    *(v23 + 64) = v37;
    *(v23 + 72) = v28;
    *(v23 + 80) = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v27 = v24;
    v27[1] = size;
    v28 = (v27 + 2);
  }

  *(v23 + 72) = v28;
  std::mutex::unlock(v23);
}

void google::protobuf::internal::AddDescriptors(std::string::size_type a1)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    if (*(a1 + 56) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = *(*(a1 + 40) + 8 * v3);
        if (atomic_load_explicit(v4, memory_order_acquire))
        {
          google::protobuf::internal::InitSCCImpl(v4);
        }

        ++v3;
      }

      while (v3 < *(a1 + 56));
    }

    v5 = *(a1 + 60);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        if (*(*(a1 + 48) + v6))
        {
          google::protobuf::internal::AddDescriptors();
        }

        v6 += 8;
      }

      while (v7 != v6);
    }

    google::protobuf::DescriptorPool::InternalAddGeneratedFile(*(a1 + 8), *(a1 + 24));

    google::protobuf::MessageFactory::InternalRegisterGeneratedFile(a1);
  }
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

uint64_t sub_1001132CC(uint64_t a1, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  (*(*a2 + 152))(a2);
  *(a1 + 8) = google::protobuf::Reflection::MutableMapData(v6, a2, a3);
  v7 = google::protobuf::FieldDescriptor::message_type(a3);
  sub_1000B347C(__p, "key");
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
      std::__call_once(v10, &v20, sub_1000B32C4);
    }
  }

  sub_1001043A0(a1 + 16, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)]);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = google::protobuf::FieldDescriptor::message_type(a3);
  sub_1000B347C(__p, "value");
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
      std::__call_once(v14, &v20, sub_1000B32C4);
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

void sub_1001134B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 40) == 9 && *(v14 + 39) < 0)
  {
    operator delete(*(v14 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100113504(uint64_t a1)
{
  (*(**(a1 + 8) + 136))(*(a1 + 8), a1);
  if (*(a1 + 40) == 9 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_100113574(uint64_t a1, void *a2)
{
  v4 = a2[11];
  if (!v4 || *(v4 + 24) == 1 && (*(**(v4 + 32) + 65) & 1) != 0)
  {

    return sub_10011364C(a1, a2);
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
        std::__call_once(v7, &v10, sub_1000B32C4);
      }
    }

    return v6 & 0x7FFFFFFF;
  }
}

uint64_t sub_10011364C(uint64_t a1, uint64_t a2)
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
      std::__call_once(v8, &v12, sub_1000B32C4);
    }
  }

  return v7 & 0x7FFFFFFF;
}

void sub_100113718(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_100113718(a1, *(a2 + 56) + v4);
      ++v5;
      v4 += 144;
    }

    while (v5 < *(a2 + 116));
  }

  **(a1 + 8) = a2;
  operator new();
}

std::mutex *sub_10011390C(std::mutex *this)
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
        for (i = *sig; i < sig[1]; i += 16)
        {
          if (*(i + 8))
          {
            operator delete();
          }
        }

        sig += 2;
      }

      while (sig != v3);
      sig = this[1].__m_.__sig;
    }

    if (sig)
    {
      *this[1].__m_.__opaque = sig;
      operator delete(sig);
    }

    std::mutex::~mutex(v1);

    operator delete();
  }

  return this;
}

void sub_1001139CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t sub_100113A14(uint64_t *a1, uint64_t a2)
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
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  return v7 + (v8 & 0x7FFFFFFF);
}

void sub_100113AE4(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v17.__r_.__value_.__r.__words[2] = 0;
  *&v17.__r_.__value_.__l.__data_ = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v17, v5);
    sub_100113C0C(&v17, v7, (v6 + 8), v5, *v17.__r_.__value_.__r.__words[2] - LODWORD(v17.__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v17.__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v17.__r_.__value_.__r.__words[1]) = v8;
    if (*v17.__r_.__value_.__r.__words[2] < v8)
    {
      *v17.__r_.__value_.__r.__words[2] = v8;
    }
  }

  sub_1000ED4AC(a1);
  v10 = a2 + 1;
  v9 = *(a2 + 2);
  if (v9)
  {
    v11 = a2[2];
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v9);
    sub_100113C0C(a1, v12, (v11 + 8), v9, **(a1 + 16) - *(a1 + 8));
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
  sub_1000ED63C(&v17);
}

std::string *sub_100113C0C(std::string *result, std::string **a2, std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_1000B3534(v18);
      result = google::protobuf::internal::GenericTypeHandler<std::string>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_100113CBC(google::protobuf::internal::RepeatedPtrFieldBase *this, void *a2)
{
  v4 = *a2;
  v21 = 0uLL;
  v20 = v4;
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v20, v5);
    sub_100113E24(&v20, v7, (v6 + 8), v5, **(&v21 + 1) - v21);
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
    sub_100113E24(this, v15, (v14 + 8), v12, **(this + 2) - *(this + 2));
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
  sub_1000F51C0(&v20);
}

uint64_t sub_100113E24(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_1001066AC(v13, v15);
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
      result = sub_1001066AC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unint64_t sub_100113ED8(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
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

      return sub_10011488C(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
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

      v66 = sub_100114A00(v8, v65);
      v8 = v65 + 1;
      result = sub_100114A00(v65 + 1, a2);
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
        result = sub_100113ED8(v7, v65, a3, a4 & 1);
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

uint64_t *sub_10011488C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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

BOOL sub_100114A00(uint64_t *a1, uint64_t *a2)
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

      sub_10011488C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
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

void sub_100114D00(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  google::protobuf::_BoolValue_default_instance_ = off_1001D1778;
  *algn_1001ED438 = 0;
  dword_1001ED444 = 0;
  byte_1001ED440 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_BoolValue_default_instance_, v4);
}

void sub_100114D7C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  google::protobuf::_BytesValue_default_instance_ = off_1001D18D8;
  unk_1001ED470 = 0;
  dword_1001ED480 = 0;
  if (atomic_load_explicit(scc_info_BytesValue_google_2fprotobuf_2fwrappers_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_BytesValue_google_2fprotobuf_2fwrappers_2eproto);
  }

  qword_1001ED478 = &google::protobuf::internal::fixed_address_empty_string;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_BytesValue_default_instance_, v4);
}

void sub_100114E2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  qword_1001ED390 = 0;
  unk_1001ED398 = 0;
  google::protobuf::_DoubleValue_default_instance_ = off_1001D1358;
  dword_1001ED3A0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_DoubleValue_default_instance_, v4);
}

void sub_100114EA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  qword_1001ED3B0 = 0;
  unk_1001ED3B8 = 0;
  google::protobuf::_FloatValue_default_instance_ = off_1001D1408;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FloatValue_default_instance_, v4);
}

void sub_100114F20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  *&v5 = 0;
  unk_1001ED408 = v5;
  google::protobuf::_Int32Value_default_instance_[0] = off_1001D1618;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_Int32Value_default_instance_, v4);
}

void sub_100114FA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  qword_1001ED3C8 = 0;
  unk_1001ED3D0 = 0;
  google::protobuf::_Int64Value_default_instance_ = off_1001D14B8;
  dword_1001ED3D8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Int64Value_default_instance_, v4);
}

void sub_10011501C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  google::protobuf::_StringValue_default_instance_ = off_1001D1828;
  unk_1001ED450 = 0;
  dword_1001ED460 = 0;
  if (atomic_load_explicit(scc_info_StringValue_google_2fprotobuf_2fwrappers_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_StringValue_google_2fprotobuf_2fwrappers_2eproto);
  }

  qword_1001ED458 = &google::protobuf::internal::fixed_address_empty_string;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_StringValue_default_instance_, v4);
}

void sub_1001150CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  *&v5 = 0;
  unk_1001ED420 = v5;
  google::protobuf::_UInt32Value_default_instance_[0] = off_1001D16C8;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_UInt32Value_default_instance_, v4);
}

void sub_10011514C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/wrappers.pb.cc", a4);
  qword_1001ED3E8 = 0;
  unk_1001ED3F0 = 0;
  google::protobuf::_UInt64Value_default_instance_ = off_1001D1568;
  dword_1001ED3F8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_UInt64Value_default_instance_, v4);
}

void google::protobuf::DoubleValue::~DoubleValue(google::protobuf::DoubleValue *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::DoubleValue::Clear(google::protobuf::DoubleValue *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 1) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DoubleValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v14 = a2;
  if ((sub_1000313B0(a3, &v14, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v14 + 1);
      v7 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v14, (v8 - 128));
      v14 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 9)
      {
        *(a1 + 16) = *v6;
        v14 = (v6 + 8);
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v14;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v14;
        }

        v14 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v14)
        {
          return 0;
        }
      }

      if (sub_1000313B0(a3, &v14, *(a3 + 92)))
      {
        return v14;
      }
    }

    v6 = (v14 + 2);
LABEL_5:
    v14 = v6;
    goto LABEL_6;
  }

  return v14;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DoubleValue::_InternalSerialize(google::protobuf::DoubleValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 2);
  if (v6 != 0.0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 2);
    }

    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::DoubleValue::ByteSizeLong(google::protobuf::DoubleValue *this)
{
  if (*(this + 2) == 0.0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 9;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 6);
  }

  *(this + 6) = v1;
  return v1;
}

void google::protobuf::DoubleValue::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = *(v5 + 1);
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    v9 = v7[2];
    if (v9 != 0.0)
    {
      *(this + 2) = v9;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::DoubleValue::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 1) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::DoubleValue::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::DoubleValue::GetMetadata(google::protobuf::DoubleValue *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = *off_1001EA498;
  v2 = off_1001EA498[1];
  return result;
}

void google::protobuf::FloatValue::~FloatValue(google::protobuf::FloatValue *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::FloatValue::Clear(google::protobuf::FloatValue *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::FloatValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v14 = a2;
  if ((sub_1000313B0(a3, &v14, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v14 + 1);
      v7 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v14, (v8 - 128));
      v14 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 13)
      {
        *(a1 + 16) = *v6;
        v14 = (v6 + 4);
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v14;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v14;
        }

        v14 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v14)
        {
          return 0;
        }
      }

      if (sub_1000313B0(a3, &v14, *(a3 + 92)))
      {
        return v14;
      }
    }

    v6 = (v14 + 2);
LABEL_5:
    v14 = v6;
    goto LABEL_6;
  }

  return v14;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FloatValue::_InternalSerialize(google::protobuf::FloatValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6 != 0.0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 4);
    }

    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::FloatValue::ByteSizeLong(google::protobuf::FloatValue *this)
{
  if (*(this + 4) == 0.0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 5;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 5);
  }

  *(this + 5) = v1;
  return v1;
}

void google::protobuf::FloatValue::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = *(v5 + 1);
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    v9 = v7[4];
    if (v9 != 0.0)
    {
      *(this + 4) = v9;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FloatValue::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::FloatValue::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::FloatValue::GetMetadata(google::protobuf::FloatValue *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[2];
  v2 = off_1001EA498[3];
  return result;
}

void google::protobuf::Int64Value::~Int64Value(google::protobuf::Int64Value *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Int64Value::Clear(google::protobuf::Int64Value *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 1) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::Int64Value::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v19 + 1);
      v7 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 8)
      {
        v13 = (v6 + 1);
        v12 = *v6;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v6 + 2);
LABEL_18:
          v19 = v13;
          *(a1 + 16) = v12;
          goto LABEL_19;
        }

        v16 = google::protobuf::internal::VarintParseSlow64(v6, v12);
        v19 = v16;
        *(a1 + 16) = v17;
        if (!v16)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v19;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v19;
        }

        v19 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v19)
        {
          return 0;
        }
      }

LABEL_19:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        return v19;
      }
    }

    v6 = (v19 + 2);
LABEL_5:
    v19 = v6;
    goto LABEL_6;
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Int64Value::_InternalSerialize(google::protobuf::Int64Value *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 2);
    }

    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Int64Value::ByteSizeLong(google::protobuf::Int64Value *this)
{
  v1 = *(this + 2);
  v2 = (9 * (__clz(v1 | 1) ^ 0x3F) + 73) >> 6;
  if (v1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 6);
  }

  *(this + 6) = v3;
  return v3;
}

void google::protobuf::Int64Value::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = v5[1];
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    v9 = v7[2];
    if (v9)
    {
      this[2] = v9;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::Int64Value::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 1) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::Int64Value::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::Int64Value::GetMetadata(google::protobuf::Int64Value *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[4];
  v2 = off_1001EA498[5];
  return result;
}

void google::protobuf::UInt64Value::~UInt64Value(google::protobuf::UInt64Value *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::UInt64Value::Clear(google::protobuf::UInt64Value *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 1) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::UInt64Value::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v19 + 1);
      v7 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 8)
      {
        v13 = (v6 + 1);
        v12 = *v6;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v6 + 2);
LABEL_18:
          v19 = v13;
          *(a1 + 16) = v12;
          goto LABEL_19;
        }

        v16 = google::protobuf::internal::VarintParseSlow64(v6, v12);
        v19 = v16;
        *(a1 + 16) = v17;
        if (!v16)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v19;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v19;
        }

        v19 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v19)
        {
          return 0;
        }
      }

LABEL_19:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        return v19;
      }
    }

    v6 = (v19 + 2);
LABEL_5:
    v19 = v6;
    goto LABEL_6;
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UInt64Value::_InternalSerialize(google::protobuf::UInt64Value *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 2);
    }

    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::UInt64Value::ByteSizeLong(google::protobuf::UInt64Value *this)
{
  v1 = *(this + 2);
  v2 = (9 * (__clz(v1 | 1) ^ 0x3F) + 73) >> 6;
  if (v1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 6);
  }

  *(this + 6) = v3;
  return v3;
}

void google::protobuf::UInt64Value::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = v5[1];
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    v9 = v7[2];
    if (v9)
    {
      this[2] = v9;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::UInt64Value::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 1) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::UInt64Value::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::UInt64Value::GetMetadata(google::protobuf::UInt64Value *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[6];
  v2 = off_1001EA498[7];
  return result;
}

void google::protobuf::Int32Value::~Int32Value(google::protobuf::Int32Value *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Int32Value::Clear(google::protobuf::Int32Value *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::Int32Value::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v19 + 1);
      v7 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 8)
      {
        v13 = (v6 + 1);
        LODWORD(v12) = *v6;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = v12 + (v14 << 7) - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v6 + 2);
LABEL_18:
          v19 = v13;
          *(a1 + 16) = v12;
          goto LABEL_19;
        }

        v16 = google::protobuf::internal::VarintParseSlow64(v6, v12);
        v19 = v16;
        *(a1 + 16) = v17;
        if (!v16)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v19;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v19;
        }

        v19 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v19)
        {
          return 0;
        }
      }

LABEL_19:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        return v19;
      }
    }

    v6 = (v19 + 2);
LABEL_5:
    v19 = v6;
    goto LABEL_6;
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Int32Value::_InternalSerialize(google::protobuf::Int32Value *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 4);
    }

    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Int32Value::ByteSizeLong(google::protobuf::Int32Value *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (v1 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v1 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void google::protobuf::Int32Value::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = v5[1];
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    v9 = *(v7 + 4);
    if (v9)
    {
      *(this + 4) = v9;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::Int32Value::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::Int32Value::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::Int32Value::GetMetadata(google::protobuf::Int32Value *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[8];
  v2 = off_1001EA498[9];
  return result;
}

void google::protobuf::UInt32Value::~UInt32Value(google::protobuf::UInt32Value *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::UInt32Value::Clear(google::protobuf::UInt32Value *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::UInt32Value::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v19 + 1);
      v7 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 8)
      {
        v12 = (v6 + 1);
        LODWORD(v13) = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v6 + 2);
LABEL_18:
          v19 = v12;
          *(a1 + 16) = v13;
          goto LABEL_19;
        }

        v16 = google::protobuf::internal::VarintParseSlow32(v6, v13);
        v19 = v16;
        *(a1 + 16) = v17;
        if (!v16)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v19;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v19;
        }

        v19 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v19)
        {
          return 0;
        }
      }

LABEL_19:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        return v19;
      }
    }

    v6 = (v19 + 2);
LABEL_5:
    v19 = v6;
    goto LABEL_6;
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UInt32Value::_InternalSerialize(google::protobuf::UInt32Value *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 4);
    }

    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::UInt32Value::ByteSizeLong(google::protobuf::UInt32Value *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = (((9 * (__clz(v1 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void google::protobuf::UInt32Value::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = v5[1];
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    v9 = *(v7 + 4);
    if (v9)
    {
      *(this + 4) = v9;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::UInt32Value::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::UInt32Value::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::UInt32Value::GetMetadata(google::protobuf::UInt32Value *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[10];
  v2 = off_1001EA498[11];
  return result;
}

void google::protobuf::BoolValue::~BoolValue(google::protobuf::BoolValue *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::BoolValue::Clear(google::protobuf::BoolValue *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::BoolValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v19 + 1);
      v7 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 8)
      {
        v13 = (v6 + 1);
        v12 = *v6;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v6 + 2);
LABEL_18:
          v19 = v13;
          *(a1 + 16) = v12 != 0;
          goto LABEL_19;
        }

        v16 = google::protobuf::internal::VarintParseSlow64(v6, v12);
        v19 = v16;
        *(a1 + 16) = v17 != 0;
        if (!v16)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v19;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v19;
        }

        v19 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
        if (!v19)
        {
          return 0;
        }
      }

LABEL_19:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        return v19;
      }
    }

    v6 = (v19 + 2);
LABEL_5:
    v19 = v6;
    goto LABEL_6;
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *google::protobuf::BoolValue::_InternalSerialize(google::protobuf::BoolValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 16);
  if (v6 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v6) = *(this + 16);
    }

    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::BoolValue::ByteSizeLong(google::protobuf::BoolValue *this)
{
  if (*(this + 16))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 5);
  }

  *(this + 5) = v1;
  return v1;
}

void google::protobuf::BoolValue::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v7 = v5;
    v8 = v5[1];
    if (v8)
    {
      sub_1000315A0(this + 1, ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v6);
    }

    if (*(v7 + 16) == 1)
    {
      *(this + 16) = 1;
    }
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::BoolValue::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 8) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::BoolValue::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::BoolValue::GetMetadata(google::protobuf::BoolValue *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[12];
  v2 = off_1001EA498[13];
  return result;
}

void google::protobuf::StringValue::~StringValue(google::protobuf::StringValue *this)
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

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::StringValue::~StringValue(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::StringValue::Clear(google::protobuf::StringValue *this)
{
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  v6 = *(this + 8);
  v5 = (this + 8);
  if (v6)
  {

    return sub_1000315EC(v5, v3, v4);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *google::protobuf::StringValue::_InternalSerialize(google::protobuf::StringValue *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.StringValue.value");
    a2 = sub_100030384(a3, 1, (*(this + 2) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::StringValue::ByteSizeLong(google::protobuf::StringValue *this)
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
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 6);
  }

  *(this + 6) = v4;
  return v4;
}

void google::protobuf::StringValue::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::StringValue::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::StringValue::MergeFrom(std::string *this, const google::protobuf::StringValue *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 8))
    {
      return this;
    }
  }

  else if (!*(v6 + 23))
  {
    return this;
  }

  size = v4->__r_.__value_.__l.__size_;
  if (size)
  {
    size = *(size & 0xFFFFFFFFFFFFFFFELL);
  }

  return google::protobuf::internal::ArenaStringPtr::Set(&v4->__r_.__value_.__r.__words[2], v6, size);
}

void google::protobuf::StringValue::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::StringValue::Clear(this);

    google::protobuf::StringValue::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::StringValue::GetMetadata(google::protobuf::StringValue *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[14];
  v2 = off_1001EA498[15];
  return result;
}

void google::protobuf::BytesValue::~BytesValue(google::protobuf::BytesValue *this)
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

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::BytesValue::~BytesValue(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::BytesValue::Clear(google::protobuf::BytesValue *this)
{
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 2);
  v6 = *(this + 8);
  v5 = (this + 8);
  if (v6)
  {

    return sub_1000315EC(v5, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::BytesValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  if ((sub_1000313B0(a3, &v17, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v17 + 1);
      v7 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
      v17 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 16), v13);
        v12 = google::protobuf::internal::InlineGreedyStringParser(v14, v17, a3);
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          return v17;
        }

        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v5, v6);
          v6 = v17;
        }

        v12 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      }

      v17 = v12;
      if (!v12)
      {
        return 0;
      }

      if (sub_1000313B0(a3, &v17, *(a3 + 92)))
      {
        return v17;
      }
    }

    v6 = (v17 + 2);
LABEL_5:
    v17 = v6;
    goto LABEL_6;
  }

  return v17;
}

const google::protobuf::UnknownFieldSet *google::protobuf::BytesValue::_InternalSerialize(google::protobuf::BytesValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7)
  {
    v4 = sub_100030384(a3, 1, v6, a2);
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::BytesValue::ByteSizeLong(google::protobuf::BytesValue *this)
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
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 6);
  }

  *(this + 6) = v4;
  return v4;
}

void google::protobuf::BytesValue::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::BytesValue::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::BytesValue::MergeFrom(std::string *this, const google::protobuf::BytesValue *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 8))
    {
      return this;
    }
  }

  else if (!*(v6 + 23))
  {
    return this;
  }

  size = v4->__r_.__value_.__l.__size_;
  if (size)
  {
    size = *(size & 0xFFFFFFFFFFFFFFFELL);
  }

  return google::protobuf::internal::ArenaStringPtr::Set(&v4->__r_.__value_.__r.__words[2], v6, size);
}

void google::protobuf::BytesValue::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::BytesValue::Clear(this);

    google::protobuf::BytesValue::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::BytesValue::GetMetadata(google::protobuf::BytesValue *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fwrappers_2eproto, 0);
  result = off_1001EA498[16];
  v2 = off_1001EA498[17];
  return result;
}

void *sub_1001178E0(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100117E3C(this, 1);
  *result = off_1001D1358;
  result[1] = this;
  *(result + 6) = 0;
  result[2] = 0;
  return result;
}

void *sub_100117954(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100117EE4(this, 1);
  *result = off_1001D1408;
  result[1] = this;
  result[2] = 0;
  return result;
}

void *sub_1001179C4(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100117F8C(this, 1);
  *result = off_1001D14B8;
  result[1] = this;
  *(result + 6) = 0;
  result[2] = 0;
  return result;
}

void *sub_100117A38(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100118034(this, 1);
  *result = off_1001D1568;
  result[1] = this;
  *(result + 6) = 0;
  result[2] = 0;
  return result;
}

void *sub_100117AAC(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_1001180DC(this, 1);
  *result = off_1001D1618;
  result[1] = this;
  result[2] = 0;
  return result;
}

void *sub_100117B1C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_100118184(this, 1);
  *result = off_1001D16C8;
  result[1] = this;
  result[2] = 0;
  return result;
}

void *sub_100117B8C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10011822C(this, 1);
  *result = off_1001D1778;
  result[1] = this;
  *(result + 5) = 0;
  *(result + 16) = 0;
  return result;
}

void *sub_100117C00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1001182D4(a1);
}

void *sub_100117CD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1001183DC(a1);
}

void *sub_100117E3C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165008(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_100117EC4);
}

void *sub_100117EE4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165038(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_100117F6C);
}

void *sub_100117F8C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165068(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_100118014);
}

void *sub_100118034(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165098(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_1001180BC);
}

void *sub_1001180DC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001650C8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_100118164);
}

void *sub_100118184(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001650F8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_10011820C);
}

void *sub_10011822C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165128(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1001182B4);
}

void *sub_1001182D4(google::protobuf::Arena *a1)
{
  v2 = sub_100118350(a1, 1);
  *v2 = off_1001D1828;
  v2[1] = a1;
  *(v2 + 6) = 0;
  if (atomic_load_explicit(scc_info_StringValue_google_2fprotobuf_2fwrappers_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_StringValue_google_2fprotobuf_2fwrappers_2eproto);
  }

  v2[2] = &google::protobuf::internal::fixed_address_empty_string;
  return v2;
}

void *sub_100118350(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165158(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, google::protobuf::StringValue::~StringValue);
}

void *sub_1001183DC(google::protobuf::Arena *a1)
{
  v2 = sub_100118458(a1, 1);
  *v2 = off_1001D18D8;
  v2[1] = a1;
  *(v2 + 6) = 0;
  if (atomic_load_explicit(scc_info_BytesValue_google_2fprotobuf_2fwrappers_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_BytesValue_google_2fprotobuf_2fwrappers_2eproto);
  }

  v2[2] = &google::protobuf::internal::fixed_address_empty_string;
  return v2;
}

void *sub_100118458(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165188(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, google::protobuf::BytesValue::~BytesValue);
}

void sub_1001184F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/any.pb.cc", a4);
  google::protobuf::Any::Any(&google::protobuf::_Any_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Any_default_instance_, v4);
}

uint64_t google::protobuf::Any::Any(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D1A70;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 16;
  *(a1 + 48) = a1 + 24;
  if (atomic_load_explicit(scc_info_Any_google_2fprotobuf_2fany_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Any_google_2fprotobuf_2fany_2eproto);
  }

  *(a1 + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void google::protobuf::Any::~Any(google::protobuf::Any *this)
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
  google::protobuf::Any::~Any(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Any::Clear(google::protobuf::Any *this)
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

const google::protobuf::UnknownFieldSet *google::protobuf::Any::_InternalSerialize(google::protobuf::Any *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "google.protobuf.Any.type_url");
    a2 = sub_100030384(a3, 1, (*(this + 2) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_7:
  v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v10 = *(v9 + 8);
  }

  if (v10)
  {
    a2 = sub_100030384(a3, 2, v9, a2);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Any::ByteSizeLong(google::protobuf::Any *this)
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

void google::protobuf::Any::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Any::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::Any::MergeFrom(std::string *this, const google::protobuf::Any *a2, uint64_t a3)
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

void google::protobuf::Any::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::Any::Clear(this);

    google::protobuf::Any::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::Any::GetMetadata(google::protobuf::Any *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fany_2eproto, 0);
  result = *off_1001EA528;
  v2 = off_1001EA528[1];
  return result;
}

void *sub_100118AC4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_100118B5C(a1, 1);
  google::protobuf::Any::Any(v2, a1);
  return v2;
}

void *sub_100118B5C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100165390(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::Any::~Any);
}

BOOL google::protobuf::internal::GetAnyFieldDescriptors(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = (*(*a1 + 152))(a1);
  v6 = *(v5 + 1);
  v7 = strlen("google.protobuf.Any");
  v8 = *(v6 + 23);
  if (v8 < 0)
  {
    if (v7 != v6[1])
    {
      return 0;
    }

    if (v7 == -1)
    {
      sub_1000CF3C0();
    }

    v6 = *v6;
  }

  else if (v7 != v8)
  {
    return 0;
  }

  if (memcmp(v6, "google.protobuf.Any", v7))
  {
    return 0;
  }

  *a2 = google::protobuf::Descriptor::FindFieldByNumber(v5, 1);
  *a3 = google::protobuf::Descriptor::FindFieldByNumber(v5, 2);
  v10 = *a2;
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 48);
  if (v11)
  {
    v14 = v10;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  if (*(v10 + 56) != 9)
  {
    return 0;
  }

  v12 = *a3;
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 48);
  if (v13)
  {
    v14 = v12;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v13, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v13, &v16, sub_1000B32C4);
    }
  }

  return *(v12 + 56) == 12;
}

void *google::protobuf::internal::ArenaImpl::thread_cache(google::protobuf::internal::ArenaImpl *this)
{
  if ((atomic_load_explicit(&qword_1001EB418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB418))
  {
    operator new();
  }

  v1 = qword_1001EB410;

  return sub_100118E70(v1);
}

void *sub_100118E70(pthread_key_t *a1)
{
  v1 = pthread_getspecific(*a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
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
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/arena.cc", 245);
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

void sub_100118FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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
  if (sub_1001653C8(this, &v7))
  {
    return sub_100119150(v7, a2, a3);
  }

  else
  {
    return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(this, a2, a3);
  }
}

void *sub_100119150(google::protobuf::internal::SerialArena *this, unint64_t a2, void (*a3)(void *))
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

  return sub_100119150(SerialArenaFallback, a2, a3);
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
    *this = xmmword_100180710;
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

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    operator delete();
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
  if ((atomic_load_explicit(&qword_1001EB420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB420))
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    qword_1001ED4C8 = 0;
    unk_1001ED4D0 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);

    __cxa_guard_release(&qword_1001EB420);
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

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_1001EB428, memory_order_acquire) & 1) == 0)
  {
    sub_10016555C();
  }

  v2 = pthread_self();
  v3 = v2;
  if (qword_1001EB430 == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_util.cc", 785);
      v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(v2);
    }

    std::mutex::lock(&stru_1001EA548);
    qword_1001EB430 = v3;
    sub_1001196F4(a1);
    qword_1001EB430 = 0;

    std::mutex::unlock(&stru_1001EA548);
  }
}

void sub_1001196D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1001196F4(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          sub_1001196F4();
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          sub_1001196F4();
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

unsigned __int8 *sub_1001197AC(google::protobuf::io::EpsCopyOutputStream *a1, void *a2, uint64_t a3, unsigned __int8 *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

void google::protobuf::Message::MergeFrom(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v4 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 83);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (from.GetDescriptor()) == (descriptor): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ": Tried to merge from a message with a different type.  to: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *(v4 + 8));
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, ", from: ");
    v10 = (*(*a2 + 152))(a2);
    v11 = google::protobuf::internal::LogMessage::operator<<(v9, *(v10 + 8));
    google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ReflectionOps::Merge(a2, this, v5);
}

void sub_100119968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Message::CopyFrom(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v4 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 99);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (from.GetDescriptor()) == (descriptor): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ": Tried to copy from a message with a different type. to: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *(v4 + 8));
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, ", from: ");
    v10 = (*(*a2 + 152))(a2);
    v11 = google::protobuf::internal::LogMessage::operator<<(v9, *(v10 + 8));
    google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ReflectionOps::Copy(a2, this, v5);
}

void sub_100119AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Message::GetTypeName@<X0>(google::protobuf::Message *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 152))(this);
  v4 = result[1];
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 1);

    return sub_1000B32D8(a2, v6, v7);
  }

  else
  {
    v5 = *v4;
    *(a2 + 16) = *(v4 + 2);
    *a2 = v5;
  }

  return result;
}

void google::protobuf::Message::FindInitializationErrors(const google::protobuf::Message *a1, uint64_t a2)
{
  v3 = 0;
  LOBYTE(__p) = 0;
  google::protobuf::internal::ReflectionOps::FindInitializationErrors(a1, &__p, a2);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100119BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Message::InitializationErrorString(google::protobuf::Message *this@<X0>, std::string *a2@<X8>)
{
  memset(v3, 0, sizeof(v3));
  google::protobuf::Message::FindInitializationErrors(this, v3);
  sub_1000CE968(", ", v3, a2);
  v4 = v3;
  sub_1000CF468(&v4);
}

void sub_100119C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000CF468(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Message::ByteSizeLong(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v3 = google::protobuf::internal::WireFormat::ByteSize(this, a2);
  (*(*this + 144))(this, v3);
  return v3;
}

void google::protobuf::Message::SetCachedSize(google::protobuf::Message *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 156);
  v2 = google::protobuf::internal::LogMessage::operator<<(v7, "Message class ");
  v3 = (*(*this + 152))(this);
  v4 = google::protobuf::internal::LogMessage::operator<<(v2, *(v3 + 8));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " implements neither SetCachedSize() nor ByteSize().  Must implement one or the other.");
  google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
}

void sub_100119D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Message::SpaceUsedLong(google::protobuf::Message *this)
{
  (*(*this + 152))(this);

  return google::protobuf::Reflection::SpaceUsedLong(v2, this);
}

uint64_t sub_100119DE0()
{
  if ((atomic_load_explicit(&qword_1001EB440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB440))
  {
    operator new();
  }

  return qword_1001EB438;
}

void google::protobuf::MessageFactory::InternalRegisterGeneratedFile(std::string::size_type a1)
{
  v2 = sub_100119DE0();
  sub_1000CD594(&v7, *(a1 + 16));
  *&v6[0].__r_.__value_.__l.__data_ = v7;
  v6[0].__r_.__value_.__r.__words[2] = a1;
  sub_1000D1DE4((v2 + 8), &v6[0].__r_.__value_.__l.__data_);
  if ((v3 & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 211);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "File is already registered: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, *(a1 + 16));
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }
}

void google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(const std::string::value_type **this, const google::protobuf::Descriptor *a2, const google::protobuf::Message *a3)
{
  v5 = sub_100119DE0();
  v10[0].__r_.__value_.__r.__words[0] = this;
  v10[0].__r_.__value_.__l.__size_ = a2;
  sub_10011A7C8((v5 + 112), v10);
  if ((v6 & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 226);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "Type is already registered: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, this[1]);
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }
}

void sub_10011A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::Reflection::RepeatedFieldAccessor(google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 298);
    v3 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v4, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v4, &v13, sub_1000B32C4);
    }
  }

  v5 = *(a2 + 14);
  v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v5];
  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        result = &qword_1001EB458;
        if ((atomic_load_explicit(&qword_1001EB460, memory_order_acquire) & 1) == 0)
        {
          sub_1001658F0(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else if (v6 == 4)
      {
        result = &qword_1001EB478;
        if ((atomic_load_explicit(&qword_1001EB480, memory_order_acquire) & 1) == 0)
        {
          sub_100165830(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        result = &qword_1001EB498;
        if ((atomic_load_explicit(&qword_1001EB4A0, memory_order_acquire) & 1) == 0)
        {
          sub_100165770(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      return result;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        result = &qword_1001EB468;
        if ((atomic_load_explicit(&qword_1001EB470, memory_order_acquire) & 1) == 0)
        {
          sub_100165890(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }

        return result;
      }

LABEL_40:
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 326);
      v9 = google::protobuf::internal::LogMessage::operator<<(v10, "Should not reach here.");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_31:
    sub_10011A370();
    return &qword_1001EB448;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      result = &qword_1001EB488;
      if ((atomic_load_explicit(&qword_1001EB490, memory_order_acquire) & 1) == 0)
      {
        sub_1001657D0(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      result = &qword_1001EB4A8;
      if ((atomic_load_explicit(&qword_1001EB4B0, memory_order_acquire) & 1) == 0)
      {
        sub_100165710(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    return result;
  }

  if (v6 == 8)
  {
    goto LABEL_31;
  }

  if (v6 == 9)
  {
    result = &qword_1001EB4B8;
    if ((atomic_load_explicit(&qword_1001EB4C0, memory_order_acquire) & 1) == 0)
    {
      sub_1001656B0(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }

    return result;
  }

  if (v6 != 10)
  {
    goto LABEL_40;
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v8, &v13, sub_1000B32C4);
    }

    LODWORD(v5) = *(a2 + 14);
  }

  if (v5 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a2))
  {
    result = &qword_1001EB4C8;
    if ((atomic_load_explicit(&qword_1001EB4D0, memory_order_acquire) & 1) == 0)
    {
      sub_100165624(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    result = &qword_1001EB4D8;
    if ((atomic_load_explicit(&qword_1001EB4E0, memory_order_acquire) & 1) == 0)
    {
      sub_1001655C4(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  return result;
}

void sub_10011A350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011A370()
{
  if ((atomic_load_explicit(&qword_1001EB450, memory_order_acquire) & 1) == 0)
  {
    sub_100165950();
  }
}

uint64_t google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::GetArena(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return *(result & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

uint64_t sub_10011A3E4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10011A410(uint64_t a1)
{
  *a1 = off_1001D1B60;
  v2 = a1 + 8;
  sub_1000CF798(a1 + 112);
  std::mutex::~mutex((a1 + 48));
  sub_1000CF798(v2);
  return a1;
}

void sub_10011A46C(uint64_t a1)
{
  *a1 = off_1001D1B60;
  v2 = a1 + 8;
  sub_1000CF798(a1 + 112);
  std::mutex::~mutex((a1 + 48));
  sub_1000CF798(v2);

  operator delete();
}

uint64_t sub_10011A4E8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  std::mutex::lock((a1 + 48));
  v3 = sub_10011A6DC((a1 + 112), &v20);
  if (v3)
  {
    v4 = v3[3];
    std::mutex::unlock((a1 + 48));
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    std::mutex::unlock((a1 + 48));
  }

  v6 = *(*(v20 + 16) + 16);
  if (v6 != google::protobuf::DescriptorPool::generated_pool(v5))
  {
    return 0;
  }

  v7 = **(v20 + 16);
  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  sub_1000CD594(v19, v7);
  v8 = sub_1000D0788((a1 + 8), &v19[0].__r_.__value_.__l.__data_);
  if (!v8 || (v9 = v8[4]) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 246);
    v15 = google::protobuf::internal::LogMessage::operator<<(v19, "File appears to be in generated pool but wasn't registered: ");
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, **(v20 + 16));
    google::protobuf::internal::LogFinisher::operator=(&v18, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    return 0;
  }

  std::mutex::lock((a1 + 48));
  v10 = sub_10011A6DC((a1 + 112), &v20);
  if (!v10 || (v4 = v10[3]) == 0)
  {
    google::protobuf::internal::RegisterFileLevelMetadata(v9);
    v11 = sub_10011A6DC((a1 + 112), &v20);
    if (!v11 || (v4 = v11[3]) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message.cc", 264);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "Type appears to be in generated pool but wasn't ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, "registered: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(v20 + 8));
      google::protobuf::internal::LogFinisher::operator=(&v18, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v4 = 0;
    }
  }

  std::mutex::unlock((a1 + 48));
  return v4;
}

void sub_10011A698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  std::mutex::unlock((v2 + 48));
  _Unwind_Resume(a1);
}

void *sub_10011A6DC(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_10011A7C8(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_10011AA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 4 * a3) = result;
  return result;
}

void sub_10011AAD0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<int>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + 4 * v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + 4 * v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

void sub_10011AB6C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = v5;
}

void sub_10011AB84(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<int>::Swap(a2, a4);
}

void sub_10011AC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011ACCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 4 * a3) = result;
  return result;
}

void sub_10011AD20(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + 4 * v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + 4 * v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

void sub_10011ADAC(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<unsigned int>::Swap(a2, a4);
}

void sub_10011AE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 8 * a3) = result;
  return result;
}

void sub_10011AEC4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<long long>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + 8 * v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + 8 * v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

void sub_10011AF50(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

void sub_10011AF68(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<long long>::Swap(a2, a4);
}

void sub_10011AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011B034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 8 * a3) = result;
  return result;
}

void sub_10011B088(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + 8 * v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + 8 * v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

void sub_10011B114(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<unsigned long long>::Swap(a2, a4);
}

void sub_10011B190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011B22C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<float>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + 4 * v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + 4 * v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

float sub_10011B2C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  result = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = result;
  return result;
}

void sub_10011B2D8(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<float>::Swap(a2, a4);
}

void sub_10011B354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011B3F8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<double>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + 8 * v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + 8 * v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

double sub_10011B48C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  result = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = result;
  return result;
}

void sub_10011B4A4(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<double>::Swap(a2, a4);
}

void sub_10011B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011B570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + a3) = result;
  return result;
}

void sub_10011B5C4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = v4;
  v6 = *a2;
  if (v6 == a2[1])
  {
    v7 = v6 + 1;
    google::protobuf::RepeatedField<BOOL>::Reserve(a2, v6 + 1);
    *(*(a2 + 1) + v6) = v5;
  }

  else
  {
    *(*(a2 + 1) + v6) = v4;
    v7 = v6 + 1;
  }

  *a2 = v7;
}

void sub_10011B650(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + a3);
  *(v4 + a3) = *(v4 + a4);
  *(v4 + a4) = v5;
}

void sub_10011B668(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<BOOL>::Swap(a2, a4);
}

void sub_10011B6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_10011B78C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = (*(*a1 + 128))(a1, a3);
  (*(*a1 + 136))(a1, a3, v6);

  return sub_10011BAC0(a2, v6);
}

void sub_10011B830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  v3 = *(a2 + 16) + 8 * v2;
  *(a2 + 8) = v2;
  v4 = *(v3 + 8);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
  }
}

void sub_10011B86C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 16) + 8;
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

__n128 sub_10011B888(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      if (*a4 == *a2)
      {
        v13 = a2[1];
        v14 = a2[2];
        result = *(a4 + 8);
        *(a2 + 1) = result;
        *(a4 + 8) = v13;
        *(a4 + 16) = v14;
      }

      else
      {

        sub_10011BE90(a2, a4);
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
    if (&v17 != a2)
    {
      if (*a2)
      {
        sub_10011BE90(&v17, a2);
      }

      else
      {
        v18 = *(a2 + 1);
        a2[1] = 0;
        a2[2] = 0;
      }
    }

    v9 = (*(*a3 + 8))(a3, a4);
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        sub_10011BDE4(a3, a4, v10, __p);
        sub_10011BD34(a1, a2, __p);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }

    v11 = *(a2 + 2);
    (*(*a3 + 24))(a3, a4);
    if (v11 >= 1)
    {
      v12 = 8;
      do
      {
        sub_10011BD34(a3, a4, *(*(&v18 + 1) + v12));
        v12 += 8;
        --v11;
      }

      while (v11);
    }

    sub_1000ED63C(&v17);
  }

  return result;
}

void sub_10011BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000ED63C(va);
  _Unwind_Resume(a1);
}

void sub_10011BA6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10011BA5CLL);
}

unsigned int *sub_10011BAC0(unsigned int *result, uint64_t a2)
{
  if (*result)
  {
    return sub_10011BB20(result, a2, 0, *result);
  }

  v2 = *(result + 2);
  if (!v2)
  {
    return sub_10011BB20(result, a2, 0, *result);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return sub_10011BB20(result, a2, 0, *result);
  }

  v4 = v2 + 2;
  v5 = result[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  result[2] = v5 + 1;
  ++**(result + 2);
  return result;
}

unsigned int *sub_10011BB20(unsigned int *a1, uint64_t a2, char *a3, char *a4)
{
  if (!a3 && a4)
  {
    sub_10011BBD0(a4, a2);
LABEL_9:
    v7 = a2;
    goto LABEL_10;
  }

  if (a4 == a3)
  {
    goto LABEL_9;
  }

  v7 = sub_1000B3534(a4);
  std::string::operator=(v7, a2);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }

LABEL_10:

  return sub_10011BBEC(a1, v7);
}

char *sub_10011BBD0(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_10011BCD8);
  }

  return result;
}

unsigned int *sub_10011BBEC(unsigned int *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = this[3];
    goto LABEL_13;
  }

  v5 = this[2];
  v6 = this[3];
  if (v5 == v6)
  {
LABEL_13:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
    goto LABEL_14;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v10 = v7 + 1;
      goto LABEL_15;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_14:
    v4 = *(v3 + 2);
    v10 = *v4 + 1;
LABEL_15:
    *v4 = v10;
    goto LABEL_16;
  }

  v8 = *&v4[2 * v5 + 2];
  if (v8)
  {
    v9 = *this == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

LABEL_16:
  v11 = v3[2];
  v3[2] = v11 + 1;
  *&v4[2 * v11 + 2] = a2;
  return this;
}

uint64_t sub_10011BCD8(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    operator delete();
  }

  return result;
}

void sub_10011BD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_1000B32D8(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  (*(*a1 + 40))(a1, a2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10011BDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011BDE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __p[1] = 0;
  v8 = 0;
  __p[0] = 0;
  v5 = (*(*a1 + 16))(a1, a2, a3, __p);
  if (*(v5 + 23) < 0)
  {
    sub_1000B32D8(a4, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    *(a4 + 16) = *(v5 + 16);
    *a4 = v6;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10011BE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011BE90(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v17.__r_.__value_.__r.__words[2] = 0;
  *&v17.__r_.__value_.__l.__data_ = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v17, v5);
    sub_1000ED8E8(&v17, v7, (v6 + 8), v5, *v17.__r_.__value_.__r.__words[2] - LODWORD(v17.__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v17.__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v17.__r_.__value_.__r.__words[1]) = v8;
    if (*v17.__r_.__value_.__r.__words[2] < v8)
    {
      *v17.__r_.__value_.__r.__words[2] = v8;
    }
  }

  sub_1000ED4AC(a1);
  v10 = a2 + 1;
  v9 = *(a2 + 2);
  if (v9)
  {
    v11 = a2[2];
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v9);
    sub_1000ED8E8(a1, v12, (v11 + 8), v9, **(a1 + 16) - *(a1 + 8));
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
  sub_1000ED63C(&v17);
}

uint64_t sub_10011C034(int a1, google::protobuf::internal::MapFieldBase *this)
{
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = (*(result + 16) + 8);
    do
    {
      v6 = *v5++;
      result = (*(*v6 + 40))(v6);
      --v3;
    }

    while (v3);
    *(v4 + 8) = 0;
  }

  return result;
}

uint64_t sub_10011C0AC(int a1, google::protobuf::internal::MapFieldBase *this, int a3)
{
  v3 = *(**(*(google::protobuf::internal::MapFieldBase::MutableRepeatedField(this) + 16) + 8 * a3 + 8) + 112);

  return v3();
}

unsigned int *sub_10011C118(uint64_t a1, google::protobuf::internal::MapFieldBase *a2, uint64_t a3)
{
  v5 = (*(*a3 + 24))(a3);
  (*(*v5 + 112))(v5, a3);
  v6 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);

  return sub_100106518(v6, v5);
}

uint64_t sub_10011C1B4(int a1, google::protobuf::internal::MapFieldBase *this)
{
  v2 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v3 = *(v2 + 8) - 1;
  v4 = *(v2 + 16) + 8 * v3;
  *(v2 + 8) = v3;
  v5 = *(**(v4 + 8) + 40);

  return v5();
}

uint64_t sub_10011C218(int a1, google::protobuf::internal::MapFieldBase *this, int a3, int a4)
{
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v7 = *(result + 16) + 8;
  v8 = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = *(v7 + 8 * a4);
  *(v7 + 8 * a4) = v8;
  return result;
}

__n128 sub_10011C25C(uint64_t a1, google::protobuf::internal::MapFieldBase *this, uint64_t a3, google::protobuf::internal::MapFieldBase *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 235);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v7 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v8 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a4);
  if (v7 != v8)
  {
    if (*v8 == *v7)
    {
      v10 = v7[1];
      v11 = v7[2];
      result = *(v8 + 8);
      *(v7 + 1) = result;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
    }

    else
    {
      sub_10011C394(v7, v8);
    }
  }

  return result;
}

void sub_10011C318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011C394(google::protobuf::internal::RepeatedPtrFieldBase *this, void *a2)
{
  v4 = *a2;
  v21 = 0uLL;
  v20 = v4;
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v20, v5);
    sub_10011C4FC(&v20, v7, (v6 + 8), v5, **(&v21 + 1) - v21);
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
    sub_10011C4FC(this, v15, (v14 + 8), v12, **(this + 2) - *(this + 2));
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
  sub_1000F51C0(&v20);
}

uint64_t sub_10011C4FC(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_1001066AC(v13, v15);
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
      v22 = (*(*v21 + 32))(v21, v18);
      result = sub_1001066AC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_10011C604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 1)
  {
    v4 = (*(a2 + 16) + 8);
    do
    {
      v5 = *v4++;
      result = (*(*v5 + 40))(v5);
      --v2;
    }

    while (v2);
    *(a2 + 8) = 0;
  }

  return result;
}

unsigned int *sub_10011C6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 128))(a1, a3);
  (*(*a1 + 136))(a1, a3, v6);

  return sub_100106518(a2, v6);
}

uint64_t sub_10011C74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  v3 = *(a2 + 16) + 8 * v2;
  *(a2 + 8) = v2;
  return (*(**(v3 + 8) + 40))();
}

__n128 sub_10011C788(uint64_t a1, google::protobuf::internal::RepeatedPtrFieldBase *this, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/reflection_internal.h", 343);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (this != a4)
  {
    if (*a4 == *this)
    {
      v8 = *(this + 1);
      v9 = *(this + 2);
      result = *(a4 + 8);
      *(this + 8) = result;
      *(a4 + 8) = v8;
      *(a4 + 16) = v9;
    }

    else
    {
      sub_10011C394(this, a4);
    }
  }

  return result;
}

void sub_10011C830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10011C848(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/timestamp.pb.cc", a4);
  qword_1001ED4E8 = 0;
  unk_1001ED4F0 = 0;
  google::protobuf::_Timestamp_default_instance_ = off_1001D2408;
  qword_1001ED4F8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_Timestamp_default_instance_, v4);
}

void google::protobuf::Timestamp::~Timestamp(google::protobuf::Timestamp *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::Timestamp::Clear(google::protobuf::Timestamp *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 1) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::Timestamp::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  if ((sub_1000313B0(a3, &v25, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v5;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v15 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = v14 + (v16 << 7) - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v25 = v15;
          *(a1 + 24) = v14;
          goto LABEL_29;
        }

        v21 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v25 = v21;
        *(a1 + 24) = v22;
        if (!v21)
        {
          return 0;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            return v25;
          }

          v12 = *(a1 + 8);
          if (v12)
          {
            v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v13 = sub_100031428((a1 + 8), v5, v7);
            v7 = v25;
          }

          v25 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
          if (!v25)
          {
            return 0;
          }

          goto LABEL_29;
        }

        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_28:
          v25 = v18;
          *(a1 + 16) = v17;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v25 = v23;
        *(a1 + 16) = v24;
        if (!v23)
        {
          return 0;
        }
      }

LABEL_29:
      if (sub_1000313B0(a3, &v25, *(a3 + 92)))
      {
        return v25;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

  return v25;
}

const google::protobuf::UnknownFieldSet *google::protobuf::Timestamp::_InternalSerialize(google::protobuf::Timestamp *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v6 = *(this + 2);
    }

    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 6);
  if (v10)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v10 = *(this + 6);
    }

    *a2 = 16;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *google::protobuf::Timestamp::ByteSizeLong(google::protobuf::Timestamp *this)
{
  v1 = *(this + 2);
  v2 = (9 * (__clz(v1 | 1) ^ 0x3F) + 73) >> 6;
  if (v1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 6);
  if (v4)
  {
    if (v4 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 = (v3 + v5);
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 7);
  }

  *(this + 7) = v3;
  return v3;
}

void google::protobuf::Timestamp::MergeFrom(google::protobuf::Timestamp *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::Timestamp::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::Timestamp::MergeFrom(void *this, const google::protobuf::Timestamp *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    v4[2] = v6;
  }

  v7 = *(a2 + 6);
  if (v7)
  {
    *(v4 + 6) = v7;
  }

  return this;
}

void google::protobuf::Timestamp::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 4) = 0;
    *(v6 + 1) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    google::protobuf::Timestamp::MergeFrom(this, lpsrc);
  }
}

uint64_t google::protobuf::Timestamp::GetMetadata(google::protobuf::Timestamp *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2ftimestamp_2eproto, 0);
  result = *off_1001EA5F8;
  v2 = off_1001EA5F8[1];
  return result;
}

void *sub_10011CEB4(google::protobuf::Arena *this, uint64_t a2, uint64_t a3)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10011CF38(this, 1, a3);
  *result = off_1001D2408;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_10011CF38(google::protobuf::Arena *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(this + 24))
  {
    sub_1001659B0(this, a2, a3);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10011CFC0);
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v8, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message_lite.cc", 133);
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "Can't ");
  std::string::append(&__p, "parse");
  std::string::append(&__p, " message of type ");
  (*(*this + 16))(&v9, this);
  if ((v11 & 0x80u) == 0)
  {
    v2 = &v9;
  }

  else
  {
    v2 = v9;
  }

  if ((v11 & 0x80u) == 0)
  {
    v3 = v11;
  }

  else
  {
    v3 = v10;
  }

  std::string::append(&__p, v2, v3);
  if (v11 < 0)
  {
    operator delete(v9);
  }

  std::string::append(&__p, " because it is missing required fields: ");
  (*(*this + 56))(&v9, this);
  if ((v11 & 0x80u) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9;
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = v10;
  }

  std::string::append(&__p, v4, v5);
  if (v11 < 0)
  {
    operator delete(v9);
  }

  v6 = google::protobuf::internal::LogMessage::operator<<(v8, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_10011D160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a15);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, __p);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " exceeded maximum protobuf size of 2GB: ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v6);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  else
  {
    std::string::resize(v2, v5 + size, 0);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
    }

    *&v15[0].__r_.__value_.__l.__data_ = v2 + size + v6;
    v16 = 0;
    v17 = 0;
    v18 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    (*(*a1 + 96))(a1);
  }

  return v7 == 0;
}

void sub_10011D364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a17);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToString(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendPartialToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_10011D414(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = sub_10011D54C();
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_100070E64();
    }

    v11 = v6 - *v5;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_10011D5F8(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = this;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = (16 * v9 - v14);
    memcpy(v15, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(v5 + 8) = v8;

  std::mutex::unlock((v5 + 24));
}

uint64_t sub_10011D54C()
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

void sub_10011D5F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100070F54();
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 40);
    if (v2 == (this + 40))
    {
      *v3 = **(this + 1);
      if (*(this + 21) < 1)
      {
LABEL_15:
        if (*(this + 9) == 2)
        {
          *(this + 9) = *(this + 1) - v2;
        }

        v4 = this + 56;
        *(this + 1) = this + 56;
        *(this + 2) = 0;
        *(this + 6) = 0;
      }

      else
      {
        __src = 0;
        while (1)
        {
          if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
          {
            *(this + 21) = 0;
            goto LABEL_15;
          }

          v5 = *(this + 6);
          *(this + 21) -= v5;
          if (v5 >= 17)
          {
            break;
          }

          if (v5 >= 1)
          {
            memcpy(this + 56, __src, v5);
            v6 = (this + 72);
            v7 = *(this + 9);
            v4 = v3 + v5;
            *(this + 1) = v3 + v5;
            *(this + 2) = v3;
            if (v7 < 2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        v6 = (this + 72);
        v8 = *(this + 9);
        v4 = this + 56;
        v9 = __src;
        *(this + 56) = *__src;
        *(this + 1) = this + 56;
        *(this + 2) = v9;
        if (v8 <= 1)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v6 = 1;
      }
    }

    else
    {
      v4 = v2 + *(this + 6) - 16;
      *(this + 1) = v4;
      *(this + 2) = v3;
      if (*(this + 9) == 1)
      {
        *(this + 9) = 2;
      }

      v3 = v2;
    }

LABEL_20:
    v10 = *(this + 7) + v3 - v4;
    *(this + 7) = v10;
    *this = &v4[v10 & (v10 >> 31)];
  }

  else
  {
    v3 = 0;
    *this = *(this + 1);
    *(this + 20) = 1;
  }

  return v3;
}

_OWORD *sub_10011D858(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a1 + 40);
  if (v3 == a1 + 40)
  {
    *v5 = **(a1 + 8);
    if (*(a1 + 84) < 1)
    {
LABEL_46:
      if (*(a1 + 72) == 2)
      {
        *(a1 + 72) = *(a1 + 8) - v3;
      }

      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      v6 = a3;
      if ((a3 & 0x80000000) == 0 && a2 <= 15)
      {
        v7 = a1 + 56;
        v8 = v5 + a2;
        v9 = v8;
        do
        {
          v10 = *v9++;
          v11 = v10;
          if (v10 < 0)
          {
            v11 = v11 + (*v9 << 7) - 128;
            if (*v9 < 0)
            {
              v9 = v8 + 3;
              v16 = -21;
              while (1)
              {
                v11 += (*(v9 - 1) - 1) << (v16 + 35);
                if ((*(v9 - 1) & 0x80000000) == 0)
                {
                  break;
                }

                ++v9;
                v16 += 7;
                if (!v16)
                {
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v9 = v8 + 2;
            }
          }

          if (v9 > v7)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_46;
          }

          v12 = v11 & 7;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                ++v6;
                break;
              case 4:
                v15 = __OFSUB__(v6--, 1);
                if (v6 < 0 != v15)
                {
                  goto LABEL_46;
                }

                break;
              case 5:
                v9 += 4;
                break;
              default:
                goto LABEL_39;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              v9 += 8;
            }

            else
            {
              v13 = *v9;
              if (*v9 < 0)
              {
                SizeFallback = google::protobuf::internal::ReadSizeFallback(v9, v13);
                if (!SizeFallback)
                {
                  break;
                }
              }

              else
              {
                SizeFallback = v9 + 1;
              }

              if ((v7 - SizeFallback) < v13)
              {
                break;
              }

              v9 = &SizeFallback[v13];
            }
          }

          else
          {
            __src = 0;
            v9 = sub_10011E310(v9, &__src);
            if (!v9)
            {
              break;
            }
          }

          v8 = v9;
        }

        while (v9 < v7);
      }

LABEL_39:
      __src = 0;
      while (1)
      {
        if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
        {
          *(a1 + 84) = 0;
          goto LABEL_46;
        }

        v17 = *(a1 + 24);
        *(a1 + 84) -= v17;
        if (v17 >= 17)
        {
          break;
        }

        if (v17 >= 1)
        {
          memcpy((a1 + 56), __src, v17);
          v19 = *(a1 + 72);
          v18 = (a1 + 72);
          *(v18 - 8) = v5 + v17;
          *(v18 - 7) = v5;
          if (v19 < 2)
          {
            return v5;
          }

          goto LABEL_50;
        }
      }

      v20 = *(a1 + 72);
      v18 = (a1 + 72);
      v21 = __src;
      *(v18 - 1) = *__src;
      *(v18 - 8) = v18 - 2;
      *(v18 - 7) = v21;
      if (v20 <= 1)
      {
        return v5;
      }

LABEL_50:
      *v18 = 1;
    }
  }

  else
  {
    *(a1 + 8) = v3 + *(a1 + 24) - 16;
    *(a1 + 16) = v5;
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 2;
    }

    return v3;
  }

  return v5;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (*(this + 2) && *(this + 7) >= 17)
  {
    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    a3 -= v5;
    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

char *google::protobuf::internal::VarintParseSlow32(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 35)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = this + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::VarintParseSlow64(google::protobuf::internal *this, unint64_t a2)
{
  a2 = a2;
  result = this + 3;
  v4 = this + 2;
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ReadTagFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = this + 2;
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    LODWORD(a2) = ((v6 - 1) << (v5 + 35)) + a2;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

BOOL google::protobuf::internal::VerifyUTF8(google::protobuf::internal *a1, const char *a2, google::protobuf::internal *a3)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    google::protobuf::internal::PrintUTF8ErrorLog(a3, "parsing", 0);
  }

  return IsStructurallyValidUTF8;
}

char *google::protobuf::internal::InlineGreedyStringParser(std::string *this, std::string::value_type *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1000FCED0(a3, v6, v5, this);
}

char *sub_10011DDB0(unsigned int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return sub_10011F14C(a3, v6, v5, a1);
}

char *sub_10011DE2C(unsigned int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return sub_10011F254(a3, v6, v5, a1);
}

char *sub_10011DEA8(unsigned int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return sub_10011F35C(a3, v6, v5, a1);
}

char *sub_10011DF24(unsigned int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return sub_10011F464(a3, v6, v5, a1);
}

char *sub_10011DFA0(unsigned int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return sub_10011F56C(a3, v6, v5, a1);
}

char *sub_10011E01C(unsigned int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return sub_10011F674(a3, v6, v5, a1);
}

google::protobuf::internal *sub_10011E094(int a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_1000313B0(a3, &v10, *(a3 + 92)))
    {
      return v10;
    }

    v5 = (v10 + 1);
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = (v10 + 3);
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          v5 = (v5 + 1);
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = (v10 + 2);
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = sub_10011E1AC(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

google::protobuf::internal *sub_10011E1AC(unint64_t a1, std::string *a2, google::protobuf::internal *this, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = this;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/parse_context.h", 758);
        v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = (this + 4);
        sub_10011FB78(a2, v4, *this);
      }

      return v5;
    }

    result = sub_10011FA84(a2, v4, this, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_10011E310(this, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_10011F77C(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = (this + 8);
    sub_10011F844(a2, v4, *this);
    return v5;
  }

  result = sub_10011F904(a2, v4, this, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_10011E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *sub_10011E310(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *sub_10011E380(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011E4CC(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011E4CC(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011E4CC(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_10011E4CC(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10011E574(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011E6C0(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011E6C0(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011E6C0(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_10011E6C0(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10011E310(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned int>::Reserve(a3, v7 + 1);
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10011E768(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_10011E8B4(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_10011E8B4(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_10011E8B4(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}