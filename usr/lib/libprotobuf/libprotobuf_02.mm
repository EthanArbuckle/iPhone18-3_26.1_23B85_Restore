wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::Descriptor::CopyTo(wireless_diagnostics::google::protobuf::Descriptor *this, wireless_diagnostics::google::protobuf::DescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 39) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  v6 = std::string::operator=(v5, v4);
  if (*(this + 11) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 6);
      v13 = *(a2 + 9);
      v14 = *(a2 + 8);
      if (v14 >= v13)
      {
        if (v13 == *(a2 + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24));
          v13 = *(a2 + 9);
        }

        *(a2 + 9) = v13 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
      }

      v15 = *(a2 + 3);
      *(a2 + 8) = v14 + 1;
      v6 = wireless_diagnostics::google::protobuf::FieldDescriptor::CopyTo((v12 + v10), *(v15 + 8 * v14));
      ++v11;
      v10 += 120;
    }

    while (v11 < *(this + 11));
  }

  if (*(this + 14) >= 1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(this + 8);
      v19 = *(a2 + 21);
      v20 = *(a2 + 20);
      if (v20 >= v19)
      {
        if (v19 == *(a2 + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 72));
          v19 = *(a2 + 21);
        }

        *(a2 + 21) = v19 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto>::New();
      }

      v21 = *(a2 + 9);
      *(a2 + 20) = v20 + 1;
      v6 = wireless_diagnostics::google::protobuf::Descriptor::CopyTo((v18 + v16), *(v21 + 8 * v20));
      ++v17;
      v16 += 120;
    }

    while (v17 < *(this + 14));
  }

  if (*(this + 18) >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(this + 10);
      v25 = *(a2 + 27);
      v26 = *(a2 + 26);
      if (v26 >= v25)
      {
        if (v25 == *(a2 + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 96));
          v25 = *(a2 + 27);
        }

        *(a2 + 27) = v25 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumDescriptorProto>::New();
      }

      v27 = *(a2 + 12);
      *(a2 + 26) = v26 + 1;
      v6 = wireless_diagnostics::google::protobuf::EnumDescriptor::CopyTo((v24 + v22), *(v27 + 8 * v26));
      ++v23;
      v22 += 56;
    }

    while (v23 < *(this + 18));
  }

  if (*(this + 22) >= 1)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(a2 + 33);
      v31 = *(a2 + 32);
      if (v31 >= v30)
      {
        if (v30 == *(a2 + 34))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 120));
          v30 = *(a2 + 33);
        }

        *(a2 + 33) = v30 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::DescriptorProto_ExtensionRange>::New();
      }

      v32 = *(a2 + 15);
      *(a2 + 32) = v31 + 1;
      v6 = *(v32 + 8 * v31);
      v33 = (*(this + 12) + v28);
      v34 = *v33;
      v35 = *(v6 + 7);
      *(v6 + 7) = v35 | 1;
      LODWORD(v33) = v33[1];
      *(v6 + 7) = v35 | 3;
      *(v6 + 4) = v34;
      *(v6 + 5) = v33;
      ++v29;
      v28 += 8;
    }

    while (v29 < *(this + 22));
  }

  if (*(this + 26) >= 1)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(this + 14);
      v39 = *(a2 + 15);
      v40 = *(a2 + 14);
      if (v40 >= v39)
      {
        if (v39 == *(a2 + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 48));
          v39 = *(a2 + 15);
        }

        *(a2 + 15) = v39 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::FieldDescriptorProto>::New();
      }

      v41 = *(a2 + 6);
      *(a2 + 14) = v40 + 1;
      v6 = wireless_diagnostics::google::protobuf::FieldDescriptor::CopyTo((v38 + v36), *(v41 + 8 * v40));
      ++v37;
      v36 += 120;
    }

    while (v37 < *(this + 26));
  }

  v42 = *(this + 4);
  result = wireless_diagnostics::google::protobuf::MessageOptions::default_instance(v6, v7, v8, v9);
  if (v42 != result)
  {
    *(a2 + 39) |= 0x40u;
    if (!*(a2 + 18))
    {
      operator new();
    }

    v44 = *(this + 4);
    v45 = *(a2 + 18);

    return wireless_diagnostics::google::protobuf::MessageOptions::CopyFrom(v45, v44);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::EnumDescriptor::CopyTo(wireless_diagnostics::google::protobuf::EnumDescriptor *this, wireless_diagnostics::google::protobuf::EnumDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 15) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  v6 = std::string::operator=(v5, v4);
  if (*(this + 11) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 6);
      v13 = *(a2 + 9);
      v14 = *(a2 + 8);
      if (v14 >= v13)
      {
        if (v13 == *(a2 + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24));
          v13 = *(a2 + 9);
        }

        *(a2 + 9) = v13 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::EnumValueDescriptorProto>::New();
      }

      v15 = *(a2 + 3);
      *(a2 + 8) = v14 + 1;
      v6 = wireless_diagnostics::google::protobuf::EnumValueDescriptor::CopyTo((v12 + v10), *(v15 + 8 * v14));
      ++v11;
      v10 += 40;
    }

    while (v11 < *(this + 11));
  }

  v16 = *(this + 4);
  result = wireless_diagnostics::google::protobuf::EnumOptions::default_instance(v6, v7, v8, v9);
  if (v16 != result)
  {
    *(a2 + 15) |= 4u;
    if (!*(a2 + 6))
    {
      operator new();
    }

    v18 = *(this + 4);
    v19 = *(a2 + 6);

    return wireless_diagnostics::google::protobuf::EnumOptions::CopyFrom(v19, v18);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::ServiceDescriptor::CopyTo(wireless_diagnostics::google::protobuf::ServiceDescriptor *this, wireless_diagnostics::google::protobuf::ServiceDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 15) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  v6 = std::string::operator=(v5, v4);
  if (*(this + 8) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 5);
      v13 = *(a2 + 9);
      v14 = *(a2 + 8);
      if (v14 >= v13)
      {
        if (v13 == *(a2 + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24));
          v13 = *(a2 + 9);
        }

        *(a2 + 9) = v13 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<wireless_diagnostics::google::protobuf::MethodDescriptorProto>::New();
      }

      v15 = *(a2 + 3);
      *(a2 + 8) = v14 + 1;
      v6 = wireless_diagnostics::google::protobuf::MethodDescriptor::CopyTo((v12 + v10), *(v15 + 8 * v14));
      ++v11;
      v10 += 48;
    }

    while (v11 < *(this + 8));
  }

  v16 = *(this + 3);
  result = wireless_diagnostics::google::protobuf::ServiceOptions::default_instance(v6, v7, v8, v9);
  if (v16 != result)
  {
    *(a2 + 15) |= 4u;
    if (!*(a2 + 6))
    {
      operator new();
    }

    v18 = *(this + 3);
    v19 = *(a2 + 6);

    return wireless_diagnostics::google::protobuf::ServiceOptions::CopyFrom(v19, v18);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::FieldDescriptor::CopyTo(wireless_diagnostics::google::protobuf::FieldDescriptor *this, wireless_diagnostics::google::protobuf::FieldDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 18) |= 1u;
  v5 = *(a2 + 2);
  v6 = MEMORY[0x29EDC9758];
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  v7 = std::string::operator=(v5, v4);
  v11 = *(a2 + 18);
  v13 = *(this + 11);
  v12 = *(this + 12);
  *(a2 + 6) = *(this + 10);
  *(a2 + 7) = v12;
  v14 = v11 | 0xE;
  *(a2 + 18) = v11 | 0xE;
  *(a2 + 16) = v13;
  if (*(this + 52) == 1)
  {
    if ((*(*(this + 7) + 41) & 1) == 0)
    {
      *(a2 + 18) = v11 | 0x2E;
      if (*(a2 + 5) == v6)
      {
        operator new();
      }

      MEMORY[0x29C2A1FA0]();
      v14 = *(a2 + 18);
    }

    *(a2 + 18) = v14 | 0x20;
    v15 = *(a2 + 5);
    if (v15 == v6)
    {
      operator new();
    }

    v16 = *(*(this + 7) + 8);
    v17 = *(v16 + 23);
    if (v17 >= 0)
    {
      v18 = *(*(this + 7) + 8);
    }

    else
    {
      v18 = *v16;
    }

    if (v17 >= 0)
    {
      v19 = *(v16 + 23);
    }

    else
    {
      v19 = *(v16 + 8);
    }

    v7 = std::string::append(v15, v18, v19);
    v13 = *(this + 11);
  }

  v20 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13];
  if (v20 == 8)
  {
    v22 = this + 80;
    v23 = *(a2 + 18);
    if (*(*(this + 10) + 41))
    {
      goto LABEL_27;
    }

LABEL_24:
    *(a2 + 18) = v23 | 0x10;
    if (*(a2 + 4) == v6)
    {
      operator new();
    }

    MEMORY[0x29C2A1FA0]();
    v23 = *(a2 + 18);
    goto LABEL_27;
  }

  if (v20 != 10)
  {
    goto LABEL_36;
  }

  v22 = this + 72;
  v21 = *(this + 9);
  v23 = *(a2 + 18);
  if (*(v21 + 40) == 1)
  {
    *(a2 + 16) = 1;
    v23 &= ~8u;
    *(a2 + 18) = v23;
  }

  if ((*(v21 + 41) & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v24 = *(a2 + 4);
  *(a2 + 18) = v23 | 0x10;
  if (v24 == v6)
  {
    operator new();
  }

  v25 = *(*v22 + 8);
  v26 = *(v25 + 23);
  if (v26 >= 0)
  {
    v27 = *(*v22 + 8);
  }

  else
  {
    v27 = *v25;
  }

  if (v26 >= 0)
  {
    v28 = *(v25 + 23);
  }

  else
  {
    v28 = *(v25 + 8);
  }

  v7 = std::string::append(v24, v27, v28);
LABEL_36:
  if (*(this + 104) == 1)
  {
    wireless_diagnostics::google::protobuf::FieldDescriptor::DefaultValueAsString(this, 0, v9, &__str);
    *(a2 + 18) |= 0x40u;
    v29 = *(a2 + 6);
    if (v29 == v6)
    {
      operator new();
    }

    v7 = std::string::operator=(v29, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v30 = *(this + 12);
  result = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(v7, v8, v9, v10);
  if (v30 != result)
  {
    *(a2 + 18) |= 0x80u;
    v32 = *(a2 + 7);
    if (!v32)
    {
      operator new();
    }

    return wireless_diagnostics::google::protobuf::FieldOptions::CopyFrom(v32, *(this + 12));
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::FileDescriptor::CopySourceCodeInfoTo(wireless_diagnostics::google::protobuf::FileDescriptor *this, wireless_diagnostics::google::protobuf::FileDescriptorProto *a2, uint64_t a3, const char *a4)
{
  v6 = *(this + 19);
  result = wireless_diagnostics::google::protobuf::SourceCodeInfo::default_instance(this, a2, a3, a4);
  if (v6 != result)
  {
    *(a2 + 51) |= 0x400u;
    if (!*(a2 + 24))
    {
      operator new();
    }

    v8 = *(this + 19);
    v9 = *(a2 + 24);

    return wireless_diagnostics::google::protobuf::SourceCodeInfo::CopyFrom(v9, v8);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::EnumValueDescriptor::CopyTo(wireless_diagnostics::google::protobuf::EnumValueDescriptor *this, wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 10) |= 1u;
  v5 = *(a2 + 2);
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  v6 = std::string::operator=(v5, v4);
  v7 = *(this + 4);
  *(a2 + 10) |= 2u;
  *(a2 + 8) = v7;
  v8 = *(this + 4);
  result = wireless_diagnostics::google::protobuf::EnumValueOptions::default_instance(v6, v9, v10, v11);
  if (v8 != result)
  {
    *(a2 + 10) |= 4u;
    if (!*(a2 + 3))
    {
      operator new();
    }

    v13 = *(this + 4);
    v14 = *(a2 + 3);

    return wireless_diagnostics::google::protobuf::EnumValueOptions::CopyFrom(v14, v13);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::MethodDescriptor::CopyTo(wireless_diagnostics::google::protobuf::MethodDescriptor *this, wireless_diagnostics::google::protobuf::MethodDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 13) |= 1u;
  v5 = *(a2 + 2);
  v6 = MEMORY[0x29EDC9758];
  if (v5 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  if ((*(*(this + 3) + 41) & 1) == 0)
  {
    *(a2 + 13) |= 2u;
    if (*(a2 + 3) == v6)
    {
      operator new();
    }

    MEMORY[0x29C2A1FA0]();
  }

  *(a2 + 13) |= 2u;
  v7 = *(a2 + 3);
  if (v7 == v6)
  {
    operator new();
  }

  v8 = *(*(this + 3) + 8);
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = *(*(this + 3) + 8);
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  std::string::append(v7, v10, v11);
  if ((*(*(this + 4) + 41) & 1) == 0)
  {
    *(a2 + 13) |= 4u;
    if (*(a2 + 4) == v6)
    {
      operator new();
    }

    MEMORY[0x29C2A1FA0]();
  }

  *(a2 + 13) |= 4u;
  v12 = *(a2 + 4);
  if (v12 == v6)
  {
    operator new();
  }

  v13 = *(*(this + 4) + 8);
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = *(*(this + 4) + 8);
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = *(v13 + 8);
  }

  v17 = std::string::append(v12, v15, v16);
  v18 = *(this + 5);
  result = wireless_diagnostics::google::protobuf::MethodOptions::default_instance(v17, v19, v20, v21);
  if (v18 != result)
  {
    *(a2 + 13) |= 8u;
    if (!*(a2 + 5))
    {
      operator new();
    }

    v23 = *(this + 5);
    v24 = *(a2 + 5);

    return wireless_diagnostics::google::protobuf::MethodOptions::CopyFrom(v24, v23);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::FileDescriptor::DebugString(wireless_diagnostics::google::protobuf::FileDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v90 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(a2, "syntax = proto2;\n\n");
  v69[0] = 0;
  v69[1] = 0;
  v67[1] = 0;
  v68 = v69;
  v66 = v67;
  v67[0] = 0;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = 4 * v4;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(&v68, v69, v5++);
      v6 -= 4;
    }

    while (v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    v8 = *(this + 8);
    v9 = 4 * v7;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(&v66, v67, v8++);
      v9 -= 4;
    }

    while (v9);
  }

  if (*(this + 6) < 1)
  {
    goto LABEL_38;
  }

  v10 = 0;
  do
  {
    v11 = v69[0];
    if (!v69[0])
    {
LABEL_14:
      v13 = v67[0];
      if (!v67[0])
      {
LABEL_19:
        v15 = **(*(this + 4) + 8 * v10);
        v16 = *(v15 + 23);
        v17 = *(v15 + 8);
        if (v16 < 0)
        {
          v15 = *v15;
        }

        v88 = v15;
        if (v16 >= 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        v89 = v18;
        v86 = 0;
        v87 = -1;
        v84 = 0;
        v85 = -1;
        v82 = 0;
        v83 = -1;
        v80 = 0;
        v81 = -1;
        v78 = 0;
        v79 = -1;
        v76 = 0;
        v77 = -1;
        v74 = 0;
        v75 = -1;
        v72 = 0;
        v73 = -1;
        v70 = 0;
        v71 = -1;
        *&v58 = &v76;
        *(&v58 + 1) = &v74;
        wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "import $0;\n", &v88, &v86, &v84, &v82, &v80, &v78, v58, &v72, &v70);
        goto LABEL_37;
      }

      while (1)
      {
        v14 = *(v13 + 7);
        if (v10 >= v14)
        {
          if (v10 <= v14)
          {
            v23 = **(*(this + 4) + 8 * v10);
            v24 = *(v23 + 23);
            v25 = *(v23 + 8);
            if (v24 < 0)
            {
              v23 = *v23;
            }

            v88 = v23;
            if (v24 >= 0)
            {
              v26 = v24;
            }

            else
            {
              v26 = v25;
            }

            v89 = v26;
            v86 = 0;
            v87 = -1;
            v84 = 0;
            v85 = -1;
            v82 = 0;
            v83 = -1;
            v80 = 0;
            v81 = -1;
            v78 = 0;
            v79 = -1;
            v76 = 0;
            v77 = -1;
            v74 = 0;
            v75 = -1;
            v72 = 0;
            v73 = -1;
            v70 = 0;
            v71 = -1;
            *&v60 = &v76;
            *(&v60 + 1) = &v74;
            wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "import weak $0;\n", &v88, &v86, &v84, &v82, &v80, &v78, v60, &v72, &v70);
            goto LABEL_37;
          }

          ++v13;
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v12 = *(v11 + 7);
      if (v10 >= v12)
      {
        break;
      }

LABEL_13:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if (v10 > v12)
    {
      ++v11;
      goto LABEL_13;
    }

    v19 = **(*(this + 4) + 8 * v10);
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if (v20 < 0)
    {
      v19 = *v19;
    }

    v88 = v19;
    if (v20 >= 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v89 = v22;
    v86 = 0;
    v87 = -1;
    v84 = 0;
    v85 = -1;
    v82 = 0;
    v83 = -1;
    v80 = 0;
    v81 = -1;
    v78 = 0;
    v79 = -1;
    v76 = 0;
    v77 = -1;
    v74 = 0;
    v75 = -1;
    v72 = 0;
    v73 = -1;
    v70 = 0;
    v71 = -1;
    *&v59 = &v76;
    *(&v59 + 1) = &v74;
    wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "import public $0;\n", &v88, &v86, &v84, &v82, &v80, &v78, v59, &v72, &v70);
LABEL_37:
    ++v10;
  }

  while (v10 < *(this + 6));
LABEL_38:
  v27 = *(this + 1);
  v28 = *(v27 + 23);
  if (v28 < 0)
  {
    if (!*(v27 + 8))
    {
      goto LABEL_48;
    }
  }

  else if (!*(v27 + 23))
  {
    goto LABEL_48;
  }

  v29 = *(v27 + 8);
  if (v28 < 0)
  {
    v27 = *v27;
  }

  v88 = v27;
  if (v28 >= 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v89 = v30;
  v86 = 0;
  v87 = -1;
  v84 = 0;
  v85 = -1;
  v82 = 0;
  v83 = -1;
  v80 = 0;
  v81 = -1;
  v78 = 0;
  v79 = -1;
  v76 = 0;
  v77 = -1;
  v74 = 0;
  v75 = -1;
  v72 = 0;
  v73 = -1;
  v70 = 0;
  v71 = -1;
  *&v61 = &v76;
  *(&v61 + 1) = &v74;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "package $0;\n\n", &v88, &v86, &v84, &v82, &v80, &v78, v61, &v72, &v70);
LABEL_48:
  {
    std::string::append(a2, "\n");
  }

  if (*(this + 22) >= 1)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::EnumDescriptor::DebugString((*(this + 12) + v31), 0, a2);
      std::string::append(a2, "\n");
      ++v32;
      v31 += 56;
    }

    while (v32 < *(this + 22));
  }

  v65[0] = 0;
  v65[1] = 0;
  v64 = v65;
  v33 = *(this + 30);
  if (v33 >= 1)
  {
    v34 = 0;
    for (i = 0; i < v33; ++i)
    {
      v36 = *(this + 16) + v34;
      if (*(v36 + 44) == 10)
      {
        v88 = *(v36 + 72);
        std::__tree<wireless_diagnostics::google::protobuf::Descriptor const*>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::Descriptor const*>(&v64, &v88);
        v33 = *(this + 30);
      }

      v34 += 120;
    }
  }

  v37 = *(this + 18);
  if (v37 >= 1)
  {
    for (j = 0; j < v37; ++j)
    {
      v39 = *(this + 10) + 120 * j;
      for (k = v65[0]; k; k = *k)
      {
        v41 = k[4];
        if (v39 >= v41)
        {
          if (v41 >= v39)
          {
            goto LABEL_71;
          }

          ++k;
        }
      }

      v42 = *v39;
      v43 = *(*v39 + 23);
      v44 = v42[1];
      if (v43 < 0)
      {
        v42 = *v42;
      }

      v88 = v42;
      if (v43 >= 0)
      {
        v45 = v43;
      }

      else
      {
        v45 = v44;
      }

      v89 = v45;
      v86 = 0;
      v87 = -1;
      v84 = 0;
      v85 = -1;
      v82 = 0;
      v83 = -1;
      v80 = 0;
      v81 = -1;
      v78 = 0;
      v79 = -1;
      v76 = 0;
      v77 = -1;
      v74 = 0;
      v75 = -1;
      v72 = 0;
      v73 = -1;
      v70 = 0;
      v71 = -1;
      *&v62 = &v76;
      *(&v62 + 1) = &v74;
      wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "message $0", &v88, &v86, &v84, &v82, &v80, &v78, v62, &v72, &v70);
      wireless_diagnostics::google::protobuf::Descriptor::DebugString(*(this + 10) + 120 * j, 0, a2);
      std::string::append(a2, "\n");
      v37 = *(this + 18);
LABEL_71:
      ;
    }
  }

  if (*(this + 26) >= 1)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::ServiceDescriptor::DebugString((*(this + 14) + v46), a2);
      std::string::append(a2, "\n");
      ++v47;
      v46 += 48;
    }

    while (v47 < *(this + 26));
  }

  if (*(this + 30) >= 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 56;
    do
    {
      v51 = *(this + 16);
      if (*(v51 + v50) != v49)
      {
        v49 = *(v51 + v50);
        if (v50 != 56)
        {
          std::string::append(a2, "}\n\n");
          v49 = *(*(this + 16) + v50);
        }

        v52 = *(v49 + 8);
        v53 = *(v52 + 23);
        v54 = *(v52 + 8);
        if (v53 < 0)
        {
          v52 = *v52;
        }

        v88 = v52;
        if (v53 >= 0)
        {
          v55 = v53;
        }

        else
        {
          v55 = v54;
        }

        v89 = v55;
        v86 = 0;
        v87 = -1;
        v84 = 0;
        v85 = -1;
        v82 = 0;
        v83 = -1;
        v80 = 0;
        v81 = -1;
        v78 = 0;
        v79 = -1;
        v76 = 0;
        v77 = -1;
        v74 = 0;
        v75 = -1;
        v72 = 0;
        v73 = -1;
        v70 = 0;
        v71 = -1;
        *&v63 = &v76;
        *(&v63 + 1) = &v74;
        wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "extend .$0 {\n", &v88, &v86, &v84, &v82, &v80, &v78, v63, &v72, &v70);
        v51 = *(this + 16);
      }

      wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(v51 + v50 - 56, 1, a2);
      ++v48;
      v56 = *(this + 30);
      v50 += 120;
    }

    while (v48 < v56);
    if (v56 > 0)
    {
      std::string::append(a2, "}\n\n");
    }
  }

  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&v64, v65[0]);
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&v66, v67[0]);
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&v68, v69[0]);
  v57 = *MEMORY[0x29EDCA608];
}

void sub_29985BE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *a21)
{
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&a14, a15);
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&a17, a18);
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&a20, a21);
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::anonymous namespace::FormatLineOptions(int a1, const wireless_diagnostics::google::protobuf::Message *a2, std::string *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100](&__p, 2 * a1, 32);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = v20;
  v7 = v21;
  if (Options)
  {
    if (v21 == v20)
    {
      v7 = v20;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v25;
        p_p = __p;
        if (v25 >= 0)
        {
          p_p = &__p;
        }

        v44 = p_p;
        if (v25 < 0)
        {
          v11 = v24;
        }

        v45 = v11;
        v13 = v8 + v9;
        if (*(v8 + v9 + 23) >= 0)
        {
          v14 = v8 + v9;
        }

        else
        {
          v14 = *(v8 + v9);
        }

        v42 = v14;
        v15 = *(v13 + 23);
        v16 = *(v13 + 8);
        if ((v15 & 0x80u) == 0)
        {
          LODWORD(v16) = v15;
        }

        v43 = v16;
        v40 = 0;
        v41 = -1;
        v38 = 0;
        v39 = -1;
        v36 = 0;
        v37 = -1;
        v34 = 0;
        v35 = -1;
        v32 = 0;
        v33 = -1;
        v30 = 0;
        v31 = -1;
        v28 = 0;
        v29 = -1;
        v26 = 0;
        v27 = -1;
        *(&v19 + 1) = &v30;
        *&v19 = &v32;
        wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0option $1;\n", &v44, &v42, &v40, &v38, &v36, &v34, v19, &v28, &v26);
        ++v10;
        v8 = v20;
        v7 = v21;
        v9 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3) > v10);
    }
  }

  v44 = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  result = v8 != v7;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29985C0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 144) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 144));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::EnumDescriptor::DebugString(int *a1, int a2, std::string *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100](&__p, 2 * a2, 32);
  v6 = v21;
  p_p = __p;
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  v40 = p_p;
  if (v21 < 0)
  {
    v6 = v20;
  }

  v41 = v6;
  v8 = *a1;
  v9 = *(*a1 + 23);
  v10 = *(*a1 + 8);
  if (v9 < 0)
  {
    v8 = **a1;
  }

  v38 = v8;
  if (v9 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v39 = v11;
  v36 = 0;
  v37 = -1;
  v34 = 0;
  v35 = -1;
  v32 = 0;
  v33 = -1;
  v30 = 0;
  v31 = -1;
  v28 = 0;
  v29 = -1;
  v26 = 0;
  v27 = -1;
  v24 = 0;
  v25 = -1;
  v22 = 0;
  v23 = -1;
  *&v17 = &v28;
  *(&v17 + 1) = &v26;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0enum $1 {\n", &v40, &v38, &v36, &v34, &v32, &v30, v17, &v24, &v22);
  if (a1[11] >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::EnumValueDescriptor::DebugString((*(a1 + 6) + v12), a2 + 1, a3);
      ++v13;
      v12 += 40;
    }

    while (v13 < a1[11]);
  }

  v14 = v21;
  v15 = &__p;
  if (v21 < 0)
  {
    v15 = __p;
  }

  v40 = v15;
  if (v21 < 0)
  {
    v14 = v20;
  }

  v41 = v14;
  v38 = 0;
  v39 = -1;
  v36 = 0;
  v37 = -1;
  v34 = 0;
  v35 = -1;
  v32 = 0;
  v33 = -1;
  v30 = 0;
  v31 = -1;
  v28 = 0;
  v29 = -1;
  v26 = 0;
  v27 = -1;
  v24 = 0;
  v25 = -1;
  v22 = 0;
  v23 = -1;
  *&v18 = &v28;
  *(&v18 + 1) = &v26;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &v40, &v38, &v36, &v34, &v32, &v30, v18, &v24, &v22);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29985C38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::Descriptor::DebugString(uint64_t a1, int a2, std::string *a3)
{
  v86 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100](&__p, 2 * a2, 32);
  std::string::append(a3, " {\n");
  v60[0] = 0;
  v60[1] = 0;
  v59 = v60;
  v7 = *(a1 + 44);
  if (v7 >= 1)
  {
    v8 = 0;
    for (i = 0; i < v7; ++i)
    {
      v10 = *(a1 + 48) + v8;
      if (*(v10 + 44) == 10)
      {
        v84 = *(v10 + 72);
        std::__tree<wireless_diagnostics::google::protobuf::Descriptor const*>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::Descriptor const*>(&v59, &v84);
        v7 = *(a1 + 44);
      }

      v8 += 120;
    }
  }

  v11 = *(a1 + 104);
  if (v11 >= 1)
  {
    v12 = 0;
    for (j = 0; j < v11; ++j)
    {
      v14 = *(a1 + 112) + v12;
      if (*(v14 + 44) == 10)
      {
        v84 = *(v14 + 72);
        std::__tree<wireless_diagnostics::google::protobuf::Descriptor const*>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::Descriptor const*>(&v59, &v84);
        v11 = *(a1 + 104);
      }

      v12 += 120;
    }
  }

  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    for (k = 0; k < v15; ++k)
    {
      v17 = *(a1 + 64) + 120 * k;
      for (m = v60[0]; m; m = *m)
      {
        v19 = m[4];
        if (v17 >= v19)
        {
          if (v19 >= v17)
          {
            goto LABEL_28;
          }

          ++m;
        }
      }

      v20 = v63;
      p_p = __p;
      if (v63 >= 0)
      {
        p_p = &__p;
      }

      v84 = p_p;
      if (v63 < 0)
      {
        v20 = v62;
      }

      v85 = v20;
      v22 = *v17;
      v23 = *(*v17 + 23);
      v24 = *(v22 + 1);
      if (v23 < 0)
      {
        v22 = *v22;
      }

      v81 = v22;
      if (v23 >= 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      v82 = v25;
      v78 = 0;
      v79 = -1;
      v76 = 0;
      v77 = -1;
      v74 = 0;
      v75 = -1;
      v72 = 0;
      v73 = -1;
      v70 = 0;
      v71 = -1;
      v68 = 0;
      v69 = -1;
      v66 = 0;
      v67 = -1;
      v64 = 0;
      v65 = -1;
      *&v53 = &v70;
      *(&v53 + 1) = &v68;
      wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0  message $1", &v84, &v81, &v78, &v76, &v74, &v72, v53, &v66, &v64);
      wireless_diagnostics::google::protobuf::Descriptor::DebugString(*(a1 + 64) + 120 * k, (a2 + 1), a3);
      v15 = *(a1 + 56);
LABEL_28:
      ;
    }
  }

  if (*(a1 + 72) >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::EnumDescriptor::DebugString((*(a1 + 80) + v26), a2 + 1, a3);
      ++v27;
      v26 += 56;
    }

    while (v27 < *(a1 + 72));
  }

  if (*(a1 + 44) >= 1)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(*(a1 + 48) + v28, (a2 + 1), a3);
      ++v29;
      v28 += 120;
    }

    while (v29 < *(a1 + 44));
  }

  if (*(a1 + 88) >= 1)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = v63;
      v33 = __p;
      if (v63 >= 0)
      {
        v33 = &__p;
      }

      v84 = v33;
      if (v63 < 0)
      {
        v32 = v62;
      }

      v85 = v32;
      v81 = wireless_diagnostics::google::protobuf::FastInt32ToBuffer(*(*(a1 + 96) + v30), v83, v6);
      v82 = strlen(v81);
      v78 = wireless_diagnostics::google::protobuf::FastInt32ToBuffer((*(*(a1 + 96) + v30 + 4) - 1), v80, v34);
      v79 = strlen(v78);
      v76 = 0;
      v77 = -1;
      v74 = 0;
      v75 = -1;
      v72 = 0;
      v73 = -1;
      v70 = 0;
      v71 = -1;
      v68 = 0;
      v69 = -1;
      v66 = 0;
      v67 = -1;
      v64 = 0;
      v65 = -1;
      *&v54 = &v70;
      *(&v54 + 1) = &v68;
      wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0  extensions $1 to $2;\n", &v84, &v81, &v78, &v76, &v74, &v72, v54, &v66, &v64);
      ++v31;
      v30 += 8;
    }

    while (v31 < *(a1 + 88));
  }

  if (*(a1 + 104) >= 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = 56;
    do
    {
      v38 = *(a1 + 112);
      if (*(v38 + v37) != v36)
      {
        v36 = *(v38 + v37);
        if (v37 != 56)
        {
          v39 = v63;
          v40 = __p;
          if (v63 >= 0)
          {
            v40 = &__p;
          }

          v84 = v40;
          if (v63 < 0)
          {
            v39 = v62;
          }

          v85 = v39;
          v81 = 0;
          v82 = -1;
          v78 = 0;
          v79 = -1;
          v76 = 0;
          v77 = -1;
          v74 = 0;
          v75 = -1;
          v72 = 0;
          v73 = -1;
          v70 = 0;
          v71 = -1;
          v68 = 0;
          v69 = -1;
          v66 = 0;
          v67 = -1;
          v64 = 0;
          v65 = -1;
          *&v55 = &v70;
          *(&v55 + 1) = &v68;
          wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &v84, &v81, &v78, &v76, &v74, &v72, v55, &v66, &v64);
          v36 = *(*(a1 + 112) + v37);
        }

        v41 = v63;
        v42 = __p;
        if (v63 >= 0)
        {
          v42 = &__p;
        }

        v84 = v42;
        if (v63 < 0)
        {
          v41 = v62;
        }

        v85 = v41;
        v43 = *(v36 + 8);
        v44 = v43[23];
        v45 = *(v43 + 1);
        if (v44 < 0)
        {
          v43 = *v43;
        }

        v81 = v43;
        if (v44 >= 0)
        {
          v46 = v44;
        }

        else
        {
          v46 = v45;
        }

        v82 = v46;
        v78 = 0;
        v79 = -1;
        v76 = 0;
        v77 = -1;
        v74 = 0;
        v75 = -1;
        v72 = 0;
        v73 = -1;
        v70 = 0;
        v71 = -1;
        v68 = 0;
        v69 = -1;
        v66 = 0;
        v67 = -1;
        v64 = 0;
        v65 = -1;
        *&v56 = &v70;
        *(&v56 + 1) = &v68;
        wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0  extend .$1 {\n", &v84, &v81, &v78, &v76, &v74, &v72, v56, &v66, &v64);
        v38 = *(a1 + 112);
      }

      wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(v38 + v37 - 56, (a2 + 2), a3);
      ++v35;
      v47 = *(a1 + 104);
      v37 += 120;
    }

    while (v35 < v47);
    if (v47 > 0)
    {
      v48 = v63;
      v49 = &__p;
      if (v63 < 0)
      {
        v49 = __p;
      }

      v84 = v49;
      if (v63 < 0)
      {
        v48 = v62;
      }

      v85 = v48;
      v81 = 0;
      v82 = -1;
      v78 = 0;
      v79 = -1;
      v76 = 0;
      v77 = -1;
      v74 = 0;
      v75 = -1;
      v72 = 0;
      v73 = -1;
      v70 = 0;
      v71 = -1;
      v68 = 0;
      v69 = -1;
      v66 = 0;
      v67 = -1;
      v64 = 0;
      v65 = -1;
      *&v57 = &v70;
      *(&v57 + 1) = &v68;
      wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &v84, &v81, &v78, &v76, &v74, &v72, v57, &v66, &v64);
    }
  }

  v50 = v63;
  v51 = &__p;
  if (v63 < 0)
  {
    v51 = __p;
  }

  v84 = v51;
  if (v63 < 0)
  {
    v50 = v62;
  }

  v85 = v50;
  v81 = 0;
  v82 = -1;
  v78 = 0;
  v79 = -1;
  v76 = 0;
  v77 = -1;
  v74 = 0;
  v75 = -1;
  v72 = 0;
  v73 = -1;
  v70 = 0;
  v71 = -1;
  v68 = 0;
  v69 = -1;
  v66 = 0;
  v67 = -1;
  v64 = 0;
  v65 = -1;
  *&v58 = &v70;
  *(&v58 + 1) = &v68;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &v84, &v81, &v78, &v76, &v74, &v72, v58, &v66, &v64);
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&v59, v60[0]);
  if (v63 < 0)
  {
    operator delete(__p);
  }

  v52 = *MEMORY[0x29EDCA608];
}

void sub_29985CB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy(&a13, a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *wireless_diagnostics::google::protobuf::ServiceDescriptor::DebugString(int *a1, std::string *this)
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *(*a1 + 23);
  v6 = *(*a1 + 8);
  if (v5 < 0)
  {
    v4 = **a1;
  }

  v31 = v4;
  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v32 = v7;
  v29 = 0;
  v30 = -1;
  v27 = 0;
  v28 = -1;
  v25 = 0;
  v26 = -1;
  v23 = 0;
  v24 = -1;
  v21 = 0;
  v22 = -1;
  v19 = 0;
  v20 = -1;
  v17 = 0;
  v18 = -1;
  v15 = 0;
  v16 = -1;
  v13 = 0;
  v14 = -1;
  *&v12 = &v19;
  *(&v12 + 1) = &v17;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(this, "service $0 {\n", &v31, &v29, &v27, &v25, &v23, &v21, v12, &v15, &v13);
  if (a1[8] >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::MethodDescriptor::DebugString(*(a1 + 5) + v8, 1, this);
      ++v9;
      v8 += 48;
    }

    while (v9 < a1[8]);
  }

  result = std::string::append(this, "}\n");
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(uint64_t a1, int a2, std::string *a3)
{
  v54 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100](&__b, 2 * a2, 32);
  memset(&__p, 0, sizeof(__p));
  v6 = *(a1 + 44);
  if (v6 == 11)
  {
    v8 = *(*(a1 + 72) + 8);
    std::operator+<char>();
  }

  else
  {
    if (v6 != 14)
    {
      MEMORY[0x29C2A1FA0](&__p, (&wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToName)[v6]);
      goto LABEL_9;
    }

    v7 = *(*(a1 + 80) + 8);
    std::operator+<char>();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v53[0];
LABEL_9:
  v9 = v33;
  p_b = &__b;
  if (v33 < 0)
  {
    p_b = __b;
  }

  v53[0].__r_.__value_.__r.__words[0] = p_b;
  if (v33 < 0)
  {
    v9 = v32;
  }

  LODWORD(v53[0].__r_.__value_.__r.__words[1]) = v9;
  v51 = (&wireless_diagnostics::google::protobuf::FieldDescriptor::kLabelToName)[*(a1 + 48)];
  v52 = strlen(v51);
  v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v49 = p_p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = __p.__r_.__value_.__r.__words[1];
  }

  v50 = v12;
  v14 = a1;
  if (*(a1 + 44) == 10)
  {
    v14 = *(a1 + 72);
  }

  v15 = *v14;
  v16 = *(v15 + 23);
  v17 = v15[1];
  if (v16 < 0)
  {
    v15 = *v15;
  }

  v47 = v15;
  if (v16 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v48 = v18;
  v44 = wireless_diagnostics::google::protobuf::FastInt32ToBuffer(*(a1 + 40), v46, v11);
  v45 = strlen(v44);
  v42 = 0;
  v43 = -1;
  v40 = 0;
  v41 = -1;
  v38 = 0;
  v39 = -1;
  v36 = 0;
  v37 = -1;
  v34 = 0;
  v35 = -1;
  *&v27 = &v40;
  *(&v27 + 1) = &v38;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0$1 $2 $3 = $4", v53, &v51, &v49, &v47, &v44, &v42, v27, &v36, &v34);
  v20 = *(a1 + 104);
  if (v20 == 1)
  {
    wireless_diagnostics::google::protobuf::FieldDescriptor::DefaultValueAsString(a1, 1, v19, &v29);
    v21 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    v22 = v29.__r_.__value_.__r.__words[0];
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v29;
    }

    v53[0].__r_.__value_.__r.__words[0] = v22;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v29.__r_.__value_.__r.__words[1];
    }

    LODWORD(v53[0].__r_.__value_.__r.__words[1]) = v21;
    v51 = 0;
    v52 = -1;
    v49 = 0;
    v50 = -1;
    v47 = 0;
    v48 = -1;
    v44 = 0;
    v45 = -1;
    v42 = 0;
    v43 = -1;
    v40 = 0;
    v41 = -1;
    v38 = 0;
    v39 = -1;
    v36 = 0;
    v37 = -1;
    v34 = 0;
    v35 = -1;
    *&v28 = &v40;
    *(&v28 + 1) = &v38;
    wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, " [default = $0", v53, &v51, &v49, &v47, &v44, &v42, v28, &v36, &v34);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  memset(v53, 0, 24);
  {
    if (v20)
    {
      v23 = ", ";
    }

    else
    {
      v23 = " [";
    }

    std::string::append(a3, v23);
    if ((v53[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = v53;
    }

    else
    {
      v24 = v53[0].__r_.__value_.__r.__words[0];
    }

    if ((v53[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v53[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v53[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v24, size);
  }

  else if (!v20)
  {
    goto LABEL_44;
  }

  std::string::append(a3, "]");
LABEL_44:
  if (*(a1 + 44) == 10)
  {
    wireless_diagnostics::google::protobuf::Descriptor::DebugString(*(a1 + 72), a2, a3);
  }

  else
  {
    std::string::append(a3, ";\n");
  }

  if (SHIBYTE(v53[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__b);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_29985D100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::Descriptor::DebugString(uint64_t ***this@<X0>, std::string *a2@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *this;
  v5 = *(*this + 23);
  v6 = (*this)[1];
  if (v5 < 0)
  {
    v4 = **this;
  }

  v28 = v4;
  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v29 = v7;
  v26 = 0;
  v27 = -1;
  v24 = 0;
  v25 = -1;
  v22 = 0;
  v23 = -1;
  v20 = 0;
  v21 = -1;
  v18 = 0;
  v19 = -1;
  v16 = 0;
  v17 = -1;
  v14 = 0;
  v15 = -1;
  v12 = 0;
  v13 = -1;
  v10 = 0;
  v11 = -1;
  *&v9 = &v16;
  *(&v9 + 1) = &v14;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "message $0", &v28, &v26, &v24, &v22, &v20, &v18, v9, &v12, &v10);
  wireless_diagnostics::google::protobuf::Descriptor::DebugString(this, 0, a2);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29985D29C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(wireless_diagnostics::google::protobuf::FieldDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v31 = *MEMORY[0x29EDCA608];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this + 52) == 1)
  {
    v4 = *(*(this + 7) + 8);
    v5 = *(v4 + 23);
    v6 = v4[1];
    if (v5 < 0)
    {
      v4 = *v4;
    }

    v29 = v4;
    if (v5 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v30 = v7;
    v27 = 0;
    v28 = -1;
    v25 = 0;
    v26 = -1;
    v23 = 0;
    v24 = -1;
    v21 = 0;
    v22 = -1;
    v19 = 0;
    v20 = -1;
    v17 = 0;
    v18 = -1;
    v15 = 0;
    v16 = -1;
    v13 = 0;
    v14 = -1;
    v11 = 0;
    v12 = -1;
    *&v10 = &v17;
    *(&v10 + 1) = &v15;
    wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a2, "extend .$0 {\n", &v29, &v27, &v25, &v23, &v21, &v19, v10, &v13, &v11);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(this, v8, a2);
  if (*(this + 52) == 1)
  {
    std::string::append(a2, "}\n");
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29985D4C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::anonymous namespace::FormatBracketedOptions(int a1, const wireless_diagnostics::google::protobuf::Message *a2, std::string *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    wireless_diagnostics::google::protobuf::JoinStrings(&v11, ", ", &__p);
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v10 >= 0)
    {
      v5 = HIBYTE(v10);
    }

    else
    {
      v5 = v9;
    }

    std::string::append(a3, p_p, v5);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }
  }

  v6 = v11 != v12;
  __p = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v6;
}

void sub_29985D594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::EnumDescriptor::DebugString(wireless_diagnostics::google::protobuf::EnumDescriptor *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  wireless_diagnostics::google::protobuf::EnumDescriptor::DebugString(this, 0, a2);
}

void sub_29985D600(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::EnumValueDescriptor::DebugString(uint64_t ***a1, int a2, std::string *a3)
{
  v43 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100](&__b, 2 * a2, 32);
  v7 = v21;
  p_b = __b;
  if (v21 >= 0)
  {
    p_b = &__b;
  }

  v41 = p_b;
  if (v21 < 0)
  {
    v7 = v20;
  }

  v42 = v7;
  v9 = *a1;
  v10 = *(*a1 + 23);
  v11 = (*a1)[1];
  if (v10 < 0)
  {
    v9 = **a1;
  }

  v39 = v9;
  if (v10 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v40 = v12;
  v36 = wireless_diagnostics::google::protobuf::FastInt32ToBuffer(*(a1 + 4), v38, v6);
  v37 = strlen(v36);
  v34 = 0;
  v35 = -1;
  v32 = 0;
  v33 = -1;
  v30 = 0;
  v31 = -1;
  v28 = 0;
  v29 = -1;
  v26 = 0;
  v27 = -1;
  v24 = 0;
  v25 = -1;
  v22 = 0;
  v23 = -1;
  *&v16 = &v28;
  *(&v16 + 1) = &v26;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0$1 = $2", &v41, &v39, &v36, &v34, &v32, &v30, v16, &v24, &v22);
  memset(&__p, 0, sizeof(__p));
  {
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v41 = p_p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__r.__words[1];
    }

    v42 = v13;
    v39 = 0;
    v40 = -1;
    v36 = 0;
    v37 = -1;
    v34 = 0;
    v35 = -1;
    v32 = 0;
    v33 = -1;
    v30 = 0;
    v31 = -1;
    v28 = 0;
    v29 = -1;
    v26 = 0;
    v27 = -1;
    v24 = 0;
    v25 = -1;
    v22 = 0;
    v23 = -1;
    *&v17 = &v28;
    *(&v17 + 1) = &v26;
    wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, " [$0]", &v41, &v39, &v36, &v34, &v32, &v30, v17, &v24, &v22);
  }

  std::string::append(a3, ";\n");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__b);
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_29985D878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::EnumValueDescriptor::DebugString(uint64_t ***this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  wireless_diagnostics::google::protobuf::EnumValueDescriptor::DebugString(this, 0, a2);
}

void sub_29985D8F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *wireless_diagnostics::google::protobuf::ServiceDescriptor::DebugString@<X0>(wireless_diagnostics::google::protobuf::ServiceDescriptor *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return wireless_diagnostics::google::protobuf::ServiceDescriptor::DebugString(this, a2);
}

void sub_29985D93C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::MethodDescriptor::DebugString(uint64_t a1, int a2, std::string *a3)
{
  v52 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100](&__b, 2 * a2, 32);
  v6 = v31;
  p_b = __b;
  if (v31 >= 0)
  {
    p_b = &__b;
  }

  v50 = p_b;
  if (v31 < 0)
  {
    v6 = v30;
  }

  v51 = v6;
  v8 = *a1;
  v9 = *(*a1 + 23);
  v10 = *(*a1 + 8);
  if (v9 < 0)
  {
    v8 = **a1;
  }

  v48 = v8;
  if (v9 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v49 = v11;
  v12 = *(a1 + 32);
  v13 = *(*(a1 + 24) + 8);
  v14 = *(v13 + 23);
  v15 = v13[1];
  if (v14 < 0)
  {
    v13 = *v13;
  }

  v46 = v13;
  if (v14 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v47 = v16;
  v17 = *(v12 + 8);
  v18 = *(v17 + 23);
  v19 = v17[1];
  if (v18 < 0)
  {
    v17 = *v17;
  }

  v44 = v17;
  if (v18 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v45 = v20;
  v42 = 0;
  v43 = -1;
  v40 = 0;
  v41 = -1;
  v38 = 0;
  v39 = -1;
  v36 = 0;
  v37 = -1;
  v34 = 0;
  v35 = -1;
  v32 = 0;
  v33 = -1;
  *&v26 = &v38;
  *(&v26 + 1) = &v36;
  wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, "$0rpc $1(.$2) returns (.$3)", &v50, &v48, &v46, &v44, &v42, &v40, v26, &v34, &v32);
  memset(&__p, 0, sizeof(__p));
  {
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v50 = p_p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__r.__words[1];
    }

    v51 = v21;
    v23 = v31;
    v24 = &__b;
    if (v31 < 0)
    {
      v24 = __b;
    }

    v48 = v24;
    if (v31 < 0)
    {
      v23 = v30;
    }

    v49 = v23;
    v46 = 0;
    v47 = -1;
    v44 = 0;
    v45 = -1;
    v42 = 0;
    v43 = -1;
    v40 = 0;
    v41 = -1;
    v38 = 0;
    v39 = -1;
    v36 = 0;
    v37 = -1;
    v34 = 0;
    v35 = -1;
    v32 = 0;
    v33 = -1;
    *&v27 = &v38;
    *(&v27 + 1) = &v36;
    wireless_diagnostics::google::protobuf::strings::SubstituteAndAppend(a3, " {\n$0$1}\n", &v50, &v48, &v46, &v44, &v42, &v40, v27, &v34, &v32);
  }

  else
  {
    std::string::append(a3, ";\n");
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(__b);
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_29985DBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::MethodDescriptor::DebugString(wireless_diagnostics::google::protobuf::MethodDescriptor *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  wireless_diagnostics::google::protobuf::MethodDescriptor::DebugString(this, 0, a2);
}

void sub_29985DC70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(uint64_t a1, int **a2, uint64_t a3)
{
  wireless_diagnostics::google::protobuf::internal::CheckNotNull<wireless_diagnostics::google::protobuf::SourceLocation>("/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/descriptor.cc", 2000, "'out_location' must not be NULL", a3);
  v6 = *(a1 + 152);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 24);
  v9 = *a2;
  v8 = a2[1];
  v10 = v8 - *a2;
  v11 = v10 <= 1 ? 1 : v8 - *a2;
  if (v7 < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = v7 & ~(v7 >> 31);
  while (1)
  {
    v14 = *(*(v6 + 16) + 8 * v12);
    if (v10 == *(v14 + 24))
    {
      if (v8 != v9)
      {
        v15 = *(v14 + 16);
        v16 = v9;
        v17 = v11;
        do
        {
          v19 = *v16++;
          v18 = v19;
          v20 = *v15++;
          if (v18 != v20)
          {
            goto LABEL_13;
          }
        }

        while (--v17);
      }

      v21 = *(v14 + 48);
      if ((v21 - 3) <= 1)
      {
        break;
      }
    }

LABEL_13:
    if (++v12 == v13)
    {
      return 0;
    }
  }

  v23 = *(v14 + 40);
  *a3 = *v23;
  *(a3 + 8) = v23[1];
  *(a3 + 4) = v23[2 * (v21 != 3)];
  *(a3 + 12) = v23[v21 - 1];
  std::string::operator=((a3 + 16), *(v14 + 64));
  std::string::operator=((a3 + 40), *(*(*(v6 + 16) + 8 * v12) + 72));
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::internal::CheckNotNull<wireless_diagnostics::google::protobuf::SourceLocation>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  return a4;
}

void sub_29985DE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::FieldDescriptor::is_packed(wireless_diagnostics::google::protobuf::FieldDescriptor *this)
{
  if (*(this + 12) == 3 && (*(this + 11) - 13) <= 0xFFFFFFFB)
  {
    v1 = *(this + 12);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 44);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t wireless_diagnostics::google::protobuf::Descriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  wireless_diagnostics::google::protobuf::Descriptor::GetLocationPath(a1, &__p);
  SourceLocation = wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_29985DEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::Descriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::Descriptor::GetLocationPath(v4, a2);
    std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::DescriptorProto::kNestedTypeFieldNumber);
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = (v5 + 64);
    }

    else
    {
      v6 = (*(a1 + 16) + 80);
    }

    v11 = -286331153 * ((a1 - *v6) >> 3);
    v9 = &v11;
  }

  else
  {
    std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::FileDescriptorProto::kMessageTypeFieldNumber);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = (*(a1 + 16) + 80);
    }

    v10 = -286331153 * ((a1 - *v8) >> 3);
    v9 = &v10;
  }

  std::vector<int>::push_back[abi:ne200100](a2, v9);
}

uint64_t wireless_diagnostics::google::protobuf::FieldDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  wireless_diagnostics::google::protobuf::FieldDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 32), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_29985E03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::FieldDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  wireless_diagnostics::google::protobuf::Descriptor::GetLocationPath(*(a1 + 56), a2);
  std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::DescriptorProto::kFieldFieldNumber);
  if (*(a1 + 52))
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = (v4 + 112);
    }

    else
    {
      v5 = (*(a1 + 32) + 128);
    }
  }

  else
  {
    v5 = (*(a1 + 56) + 48);
  }

  v6 = -286331153 * ((a1 - *v5) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v6);
}

uint64_t wireless_diagnostics::google::protobuf::EnumDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  wireless_diagnostics::google::protobuf::EnumDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_29985E154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::EnumDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::Descriptor::GetLocationPath(v4, a2);
    std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::DescriptorProto::kEnumTypeFieldNumber);
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = (v5 + 80);
    }

    else
    {
      v6 = (*(a1 + 16) + 96);
    }

    v11 = -1227133513 * ((a1 - *v6) >> 3);
    v9 = &v11;
  }

  else
  {
    std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::FileDescriptorProto::kEnumTypeFieldNumber);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = (v7 + 80);
    }

    else
    {
      v8 = (*(a1 + 16) + 96);
    }

    v10 = -1227133513 * ((a1 - *v8) >> 3);
    v9 = &v10;
  }

  std::vector<int>::push_back[abi:ne200100](a2, v9);
}

uint64_t wireless_diagnostics::google::protobuf::MethodDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  wireless_diagnostics::google::protobuf::MethodDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(*(*(a1 + 16) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_29985E2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::MethodDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 16);
  std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::FileDescriptorProto::kServiceFieldNumber);
  v6 = -1431655765 * ((v4 - *(*(v4 + 16) + 112)) >> 4);
  std::vector<int>::push_back[abi:ne200100](a2, &v6);
  std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::ServiceDescriptorProto::kMethodFieldNumber);
  v5 = -1431655765 * ((a1 - *(*(a1 + 16) + 40)) >> 4);
  std::vector<int>::push_back[abi:ne200100](a2, &v5);
}

uint64_t wireless_diagnostics::google::protobuf::ServiceDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<int>::push_back[abi:ne200100](&__p, &wireless_diagnostics::google::protobuf::FileDescriptorProto::kServiceFieldNumber);
  v9 = -1431655765 * ((a1 - *(*(a1 + 16) + 112)) >> 4);
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  SourceLocation = wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_29985E40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::ServiceDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::FileDescriptorProto::kServiceFieldNumber);
  v4 = -1431655765 * ((a1 - *(*(a1 + 16) + 112)) >> 4);
  std::vector<int>::push_back[abi:ne200100](a2, &v4);
}

uint64_t wireless_diagnostics::google::protobuf::EnumValueDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  wireless_diagnostics::google::protobuf::EnumValueDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = wireless_diagnostics::google::protobuf::FileDescriptor::GetSourceLocation(*(*(a1 + 24) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_29985E4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::EnumValueDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  wireless_diagnostics::google::protobuf::EnumDescriptor::GetLocationPath(*(a1 + 24), a2);
  std::vector<int>::push_back[abi:ne200100](a2, &wireless_diagnostics::google::protobuf::EnumDescriptorProto::kValueFieldNumber);
  v4 = -858993459 * ((a1 - *(*(a1 + 24) + 48)) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v4);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

wireless_diagnostics::google::protobuf::FileDescriptor *wireless_diagnostics::google::protobuf::DescriptorPool::BuildFile(wireless_diagnostics::google::protobuf::DescriptorPool *this, const std::string **a2)
{
  if (*(this + 1))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v4 = *(this + 4);
  v7[0] = this;
  v7[1] = v4;
  v11 = 0;
  v12 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v13 = 0;
  v14 = v15;
  v16 = 0u;
  v17 = 0u;
  v5 = wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildFile(v7, a2);
  wireless_diagnostics::google::protobuf::DescriptorBuilder::~DescriptorBuilder(v7);
  return v5;
}

double wireless_diagnostics::google::protobuf::DescriptorBuilder::DescriptorBuilder(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, const wireless_diagnostics::google::protobuf::DescriptorPool *a2, wireless_diagnostics::google::protobuf::DescriptorPool::Tables *a3, wireless_diagnostics::google::protobuf::DescriptorPool::ErrorCollector *a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 12) = this + 104;
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 12) = this + 104;
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  return result;
}

wireless_diagnostics::google::protobuf::FileDescriptor *wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildFile(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, const std::string **a2)
{
  v60 = *MEMORY[0x29EDCA608];
  v4 = this + 56;
  std::string::operator=((this + 56), a2[2]);
  v5 = *(this + 1);
  if (*(this + 79) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(this + 7);
  }

  __p[0].__r_.__value_.__r.__words[0] = v6;
  v7 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>((v5 + 240), &__p[0].__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7[3];
  if (!v8)
  {
    goto LABEL_25;
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::FileDescriptorProto(__p);
  wireless_diagnostics::google::protobuf::FileDescriptor::CopyTo(v8, __p);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeAsString(&v57, __p);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeAsString(v58, a2);
  v9 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v57.__r_.__value_.__l.__size_;
  }

  v11 = v59;
  v12 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v11 = v58[1];
  }

  if (size != v11)
  {
    v15 = 0;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v57;
  }

  else
  {
    v13 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v59 & 0x80u) == 0)
  {
    v14 = v58;
  }

  else
  {
    v14 = v58[0];
  }

  v15 = memcmp(v13, v14, size) == 0;
  if (v12 < 0)
  {
LABEL_21:
    operator delete(v58[0]);
    v9 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

LABEL_22:
  if (v9 < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::FileDescriptorProto::~FileDescriptorProto(__p);
  if (v15)
  {
    goto LABEL_79;
  }

LABEL_25:
  v16 = *(this + 1);
  v17 = *v16;
  v18 = *(v16 + 1) - *v16;
  if (!v18)
  {
LABEL_43:
    if (*(*this + 8))
    {
      std::vector<std::string>::push_back[abi:ne200100](v16, a2[2]);
      if (*(a2 + 10) >= 1)
      {
        v31 = 0;
        while (1)
        {
          v32 = a2[4]->__r_.__value_.__r.__words[v31];
          v33 = *(this + 1);
          if (*(v32 + 23) < 0)
          {
            v32 = *v32;
          }

          __p[0].__r_.__value_.__r.__words[0] = v32;
          v34 = std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>((v33 + 240), &__p[0].__r_.__value_.__l.__data_);
          if (v34 && v34[3])
          {
            goto LABEL_54;
          }

          v35 = *this;
          if (!*(*this + 24))
          {
            goto LABEL_53;
          }

          if (!wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName(*(*this + 24), *(&a2[4]->__r_.__value_.__l.__data_ + v31)))
          {
            break;
          }

LABEL_54:
          if (++v31 >= *(a2 + 10))
          {
            goto LABEL_55;
          }
        }

        v35 = *this;
LABEL_53:
        wireless_diagnostics::google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(v35, *(&a2[4]->__r_.__value_.__l.__data_ + v31));
        goto LABEL_54;
      }

LABEL_55:
      v36 = *(this + 1);
      v37 = *(v36 + 1);
      v38 = (v37 - 24);
      v16 = v36;
      if (*(v37 - 1) < 0)
      {
        operator delete(*v38);
        v16 = *(this + 1);
      }

      *(v36 + 1) = v38;
    }

    wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddCheckpoint(v16);
    Bytes = wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateBytes(*(this + 1), 160);
    *(this + 10) = Bytes;
    if ((*(a2 + 205) & 4) == 0)
    {
      *(Bytes + 19) = wireless_diagnostics::google::protobuf::SourceCodeInfo::default_instance(Bytes, v40, v41, v42);
      wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateFileTables(*(this + 1));
    }

    v43 = *(this + 1);
    wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateMessage<wireless_diagnostics::google::protobuf::SourceCodeInfo>();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
  v22 = a2[2];
  v23 = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
  if (v23 >= 0)
  {
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v22->__r_.__value_.__l.__size_;
  }

  if (v21 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v21;
  }

  while (1)
  {
    v26 = *(v17 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v17 + 8);
    }

    if (v26 == v24)
    {
      v28 = v27 >= 0 ? v17 : *v17;
      v29 = v22->__r_.__value_.__r.__words[0];
      v30 = v23 >= 0 ? v22 : v22->__r_.__value_.__r.__words[0];
      if (!memcmp(v28, v30, v24))
      {
        break;
      }
    }

    ++v20;
    v19 -= 24;
    v17 += 24;
    if (v25 == v20)
    {
      goto LABEL_43;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "File recursively imports itself: ");
  v44 = **(this + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v44) >> 3) > v20)
  {
    v45 = -v19;
    do
    {
      v46 = v44 + v45;
      v47 = *(v46 + 23);
      if (v47 >= 0)
      {
        v48 = v46;
      }

      else
      {
        v48 = *v46;
      }

      if (v47 >= 0)
      {
        v49 = *(v46 + 23);
      }

      else
      {
        v49 = *(v46 + 8);
      }

      std::string::append(__p, v48, v49);
      std::string::append(__p, " -> ");
      ++v20;
      v44 = **(this + 1);
      v45 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v44) >> 3) > v20);
  }

  v50 = a2[2];
  v51 = SHIBYTE(v50->__r_.__value_.__r.__words[2]);
  if (v51 >= 0)
  {
    v52 = a2[2];
  }

  else
  {
    v52 = v50->__r_.__value_.__r.__words[0];
  }

  if (v51 >= 0)
  {
    v53 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v50->__r_.__value_.__l.__size_;
  }

  std::string::append(__p, v52, v53);
  wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, a2[2], a2, 9, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v8 = 0;
LABEL_79:
  v54 = *MEMORY[0x29EDCA608];
  return v8;
}

wireless_diagnostics::google::protobuf::FileDescriptor *wireless_diagnostics::google::protobuf::DescriptorPool::BuildFileCollectingErrors(wireless_diagnostics::google::protobuf::DescriptorPool *this, const std::string **a2, wireless_diagnostics::google::protobuf::DescriptorPool::ErrorCollector *a3)
{
  if (*(this + 1))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  if (*this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v6 = *(this + 4);
  v9[0] = this;
  v9[1] = v6;
  v11 = 0;
  v12 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v9[2] = a3;
  memset(&v9[3], 0, 24);
  v10 = 0;
  v13 = 0;
  v14 = v15;
  v16 = 0u;
  v17 = 0u;
  v7 = wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildFile(v9, a2);
  wireless_diagnostics::google::protobuf::DescriptorBuilder::~DescriptorBuilder(v9);
  return v7;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::~DescriptorBuilder(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::destroy((this + 12), this[13]);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this[3];
  if (v2)
  {
    v3 = this[4];
    v4 = this[3];
    if (v3 != v2)
    {
      do
      {
        v3 -= 64;
      }

      while (v3 != v2);
      v4 = this[3];
    }

    this[4] = v2;
    operator delete(v4);
  }
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 16))(v6, a1 + 56, a2, a3, a4, a5);
  }

  else
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  *(a1 + 48) = 1;
}

void sub_29985FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::AddNotDefinedError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 120))
  {
    std::operator+<char>();
    v8 = std::string::append(&v28, " seems to be defined in ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = **(a1 + 120);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = **(a1 + 120);
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = std::string::append(&v29, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v30, ", which is not imported by ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(a1 + 79);
    if (v18 >= 0)
    {
      v19 = (a1 + 56);
    }

    else
    {
      v19 = *(a1 + 56);
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 79);
    }

    else
    {
      v20 = *(a1 + 64);
    }

    v21 = std::string::append(&v31, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v32, ".  To use it here, please add the necessary import.");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34 = v23->__r_.__value_.__r.__words[2];
    v33 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v33);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = v28.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v25);
    }
  }

  else
  {
    std::operator+<char>();
    v26 = std::string::append(&v32, " is not defined.");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v34 = v26->__r_.__value_.__r.__words[2];
    v33 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v33);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = v32.__r_.__value_.__r.__words[0];
      goto LABEL_30;
    }
  }
}

void sub_29985FED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(exception_object);
}

BOOL wireless_diagnostics::google::protobuf::DescriptorBuilder::IsInPackage(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = v4[1];
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = a3[1];
    if (v6 < v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a3 + 23);
    if (v6 < v7)
    {
      return 0;
    }
  }

  v9 = *a3;
  if ((v5 & 0x80) == 0)
  {
    if (v8 != -1)
    {
      if (v5 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = *(v4 + 23);
      }

      v11 = *(a2 + 8);
      goto LABEL_19;
    }

LABEL_34:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 == -1)
  {
    goto LABEL_34;
  }

  if (v4[1] >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4[1];
  }

  v11 = *v4;
LABEL_19:
  if ((v7 & 0x80000000) == 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = memcmp(v11, v12, v10);
  if (v10 != v8 || v13 != 0)
  {
    return 0;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v7 = a3[1];
  }

  if (v6 == v7)
  {
    return 1;
  }

  if ((v5 & 0x80) != 0)
  {
    v4 = *v4;
  }

  return *(v4 + v7) == 46;
}

wireless_diagnostics::google::protobuf::DescriptorBuilder *wireless_diagnostics::google::protobuf::DescriptorBuilder::RecordPublicDependencies(wireless_diagnostics::google::protobuf::DescriptorBuilder *result, unint64_t a2)
{
  v6 = a2;
  if (a2)
  {
    v2 = result;
    result = std::__tree<wireless_diagnostics::google::protobuf::Descriptor const*>::__emplace_unique_key_args<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::Descriptor const*>(result + 96, &v6);
    if (v3)
    {
      v4 = v6;
      if (v6)
      {
        v5 = 0;
        do
        {
          if (v5 >= *(v4 + 40))
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::DescriptorBuilder::RecordPublicDependencies(v2, *(*(v4 + 32) + 8 * *(*(v4 + 48) + 4 * v5++)));
          v4 = v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::NewPlaceholderFile(uint64_t a1)
{
  Bytes = wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateBytes(*(a1 + 8), 160);
  *Bytes = 0u;
  Bytes[1] = 0u;
  Bytes[2] = 0u;
  Bytes[3] = 0u;
  Bytes[4] = 0u;
  Bytes[5] = 0u;
  Bytes[6] = 0u;
  Bytes[7] = 0u;
  Bytes[8] = 0u;
  Bytes[9] = 0u;
  v3 = *(a1 + 8);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::AddPackage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddSymbol(*(a1 + 8), a2))
  {
    v6 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v6 != -1)
    {
      v7 = *(a1 + 8);
      std::string::basic_string(&v36, a2, 0, v6, &v34);
      wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
    }

    wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateSymbolName(a1, a2, a2, a3);
    return;
  }

  v8 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = 0;
    v12 = (v9 + 1);
    do
    {
      v11 = 5 * v11 + v10;
      v13 = *v12++;
      v10 = v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
  }

  v14 = v8[26];
  if (!*&v14)
  {
    goto LABEL_32;
  }

  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v11;
    if (v11 >= *&v14)
    {
      v17 = v11 % *&v14;
    }
  }

  else
  {
    v17 = (*&v14 - 1) & v11;
  }

  v18 = *(*&v8[25] + 8 * v17);
  if (!v18)
  {
    goto LABEL_36;
  }

  v19 = *v18;
  if (!*v18)
  {
LABEL_32:
    v18 = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v20 = *(v19 + 8);
    if (v11 == v20)
    {
      if (!strcmp(*(v19 + 16), v9))
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v16 > 1)
    {
      if (v20 >= *&v14)
      {
        v20 %= *&v14;
      }
    }

    else
    {
      v20 &= *&v14 - 1;
    }

    if (v20 != v17)
    {
      break;
    }

LABEL_30:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
LABEL_34:
  v18 = (v19 + 24);
  if (!v19)
  {
    v18 = 0;
  }

LABEL_36:
  if (!v18)
  {
  }

  v21 = v18[1];
  v35[0] = *v18;
  v35[1] = v21;
  if (LODWORD(v35[0]) != 7)
  {
    std::operator+<char>();
    v22 = std::string::append(&v32, " is already defined (as something other than a package) in file ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v25 = *(*File + 23);
    if (v25 >= 0)
    {
      v26 = *File;
    }

    else
    {
      v26 = **File;
    }

    if (v25 >= 0)
    {
      v27 = *(*File + 23);
    }

    else
    {
      v27 = (*File)[1];
    }

    v28 = std::string::append(&v33, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v34, ".");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &v36);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2998604FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddSymbol(int8x8_t *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[26];
  if (!*&v7)
  {
    goto LABEL_26;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*&a1[25] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_26;
    }

LABEL_25:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  result = strcmp(v12[2], v2);
  if (result)
  {
    goto LABEL_25;
  }

  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateSymbolName(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 23);
  v8 = *(a2 + 23) < 0;
  v9 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    for (i = 0; i < v16; ++i)
    {
      if (v8)
      {
        v13 = *a2;
      }

      else
      {
        v13 = a2;
      }

      if (*(v13 + i) - 123 <= 0xFFFFFFE5 && *(v13 + i) - 91 <= 0xFFFFFFE5 && *(v13 + i) - 58 <= 0xFFFFFFF5 && *(v13 + i) != 95)
      {
        std::operator+<char>();
        v14 = std::string::append(&v17, " is not a valid identifier.");
        v15 = *&v14->__r_.__value_.__l.__data_;
        v19 = v14->__r_.__value_.__r.__words[2];
        *__p = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a3, a4, 0, __p);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v7 = *(a2 + 23);
        v9 = a2[1];
      }

      v8 = (v7 & 0x80u) != 0;
      if ((v7 & 0x80u) == 0)
      {
        v16 = v7;
      }

      else
      {
        v16 = v9;
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Missing name.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a3, a4, 0, __p);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_299860B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateQualifiedName(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_4;
  }

LABEL_2:
  v5 = a2;
  if (v2 >= v4)
  {
    return (v4 != 0) & ~v3;
  }

  while (1)
  {
    if (*(v5 + v2) - 97 >= 0x1A && *(v5 + v2) - 65 >= 0x1A && *(v5 + v2) - 48 >= 0xA)
    {
      v6 = *(v5 + v2);
      if (v6 != 95)
      {
        break;
      }
    }

    v3 = 0;
LABEL_10:
    ++v2;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_2;
    }

LABEL_4:
    v5 = *a2;
    if (a2[1] <= v2)
    {
      v4 = a2[1];
      return (v4 != 0) & ~v3;
    }
  }

  if (!(v3 & 1 | (v6 != 46)))
  {
    v3 = 1;
    goto LABEL_10;
  }

  return 0;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::AllocateOptions(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3[1];
  if (*(v5 + 23) >= 0)
  {
    v6 = *(v5 + 23);
  }

  else
  {
    v6 = v5[1];
  }

  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, v6 + 6);
  if (v11 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(v5 + 23) >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = *v5;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, ".dummy");
  v9 = *a3;
  wireless_diagnostics::google::protobuf::DescriptorBuilder::AllocateOptionsImpl<wireless_diagnostics::google::protobuf::FileDescriptor>(a1);
}

void sub_299860D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildMessage(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, const wireless_diagnostics::google::protobuf::DescriptorProto *a2, const wireless_diagnostics::google::protobuf::Descriptor *a3, wireless_diagnostics::google::protobuf::Descriptor *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  v5 = *(v4 + 1);
  v6 = *(this + 1);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void sub_2998615F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildEnum(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, const wireless_diagnostics::google::protobuf::EnumDescriptorProto *a2, const wireless_diagnostics::google::protobuf::Descriptor *a3, wireless_diagnostics::google::protobuf::EnumDescriptor *a4)
{
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  v5 = *(v4 + 1);
  v6 = *(this + 1);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void sub_2998617E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildService(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 80) + 8);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkFile(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::FileDescriptor *a2, const wireless_diagnostics::google::protobuf::FileDescriptorProto *a3, const char *a4)
{
  v6 = this;
  if (!*(a2 + 17))
  {
    this = wireless_diagnostics::google::protobuf::FileOptions::default_instance(this, a2, a3, a4);
    *(a2 + 17) = this;
  }

  if (*(a2 + 18) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkMessage(v6, (*(a2 + 10) + v7), *(*(a3 + 11) + 8 * v8++), a4);
      v7 += 120;
    }

    while (v8 < *(a2 + 18));
  }

  if (*(a2 + 30) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkField(v6, (*(a2 + 16) + v9), *(*(a3 + 20) + 8 * v10++), a4);
      v9 += 120;
    }

    while (v10 < *(a2 + 30));
  }

  if (*(a2 + 22) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkEnum(this, (*(a2 + 12) + v11), a3, a4);
      ++v12;
      v11 += 56;
    }

    while (v12 < *(a2 + 22));
  }

  if (*(a2 + 26) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkService(v6, (*(a2 + 14) + v13), *(*(a3 + 17) + 8 * v14++), a4);
      v13 += 48;
    }

    while (v14 < *(a2 + 26));
  }
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *this)
{
  wireless_diagnostics::google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 24));
}

{
  wireless_diagnostics::google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 24));
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateFileOptions(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::FileDescriptor *a2, const wireless_diagnostics::google::protobuf::FileDescriptorProto *a3, const char *a4)
{
  if (*(a2 + 18) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 10) + v7), *(*(a3 + 11) + 8 * v8++), a4);
      v7 += 120;
    }

    while (v8 < *(a2 + 18));
  }

  if (*(a2 + 22) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 12) + v9), *(*(a3 + 14) + 8 * v10++));
      v9 += 56;
    }

    while (v10 < *(a2 + 22));
  }

  if (*(a2 + 26) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateServiceOptions(this, (*(a2 + 14) + v11), *(*(a3 + 17) + 8 * v12++), a4);
      v11 += 48;
    }

    while (v12 < *(a2 + 26));
  }

  if (*(a2 + 30) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 16) + v13), *(*(a3 + 20) + 8 * v14++), a4);
      v13 += 120;
    }

    while (v14 < *(a2 + 30));
  }

  v15 = *(a2 + 17);
  v16 = wireless_diagnostics::google::protobuf::FileOptions::default_instance(this, a2, a3, a4);
  if ((v15 == v16 || *(*(a2 + 17) + 56) != 3) && *(a2 + 6) >= 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(*(a2 + 4) + 8 * v20);
      if (v21)
      {
        v22 = *(v21 + 136);
        v16 = wireless_diagnostics::google::protobuf::FileOptions::default_instance(v16, v17, v18, v19);
        if (v22 != v16 && *(*(v21 + 136) + 56) == 3)
        {
          break;
        }
      }

      if (++v20 >= *(a2 + 6))
      {
        return;
      }
    }

    v23 = *a2;
    v24 = **(*(a2 + 4) + 8 * v20);
    std::operator+<char>();
    v25 = std::string::append(&v27, " which is.");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v29 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v23, a3, 9, __p);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }
}

void sub_299861D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildExtensionRange(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = *(a2 + 16);
  *a4 = v7;
  v8 = *(a2 + 20);
  a4[1] = v8;
  if (v7 <= 0)
  {
    v10 = *(a3 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "Extension numbers must be positive integers.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, v10, a2, 1, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *a4;
    v8 = a4[1];
  }

  if (v7 >= v8)
  {
    v11 = *(a3 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "Extension range end number must be greater than start number.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, v11, a2, 1, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_299861E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::AddSymbol(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (!a3)
  {
    v7 = *(a1 + 80);
  }

  if (wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddSymbol(*(a1 + 8), a2))
  {
    if ((wireless_diagnostics::google::protobuf::FileDescriptorTables::AddAliasUnderParent(*(a1 + 88), v7, a4) & 1) == 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
      return 0;
    }

    return 1;
  }

  v11 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = (v12 + 1);
    do
    {
      v14 = 5 * v14 + v13;
      v16 = *v15++;
      v13 = v16;
    }

    while (v16);
  }

  else
  {
    v14 = 0;
  }

  v17 = v11[26];
  if (!*&v17)
  {
    goto LABEL_32;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = v14;
    if (v14 >= *&v17)
    {
      v20 = v14 % *&v17;
    }
  }

  else
  {
    v20 = (*&v17 - 1) & v14;
  }

  v21 = *(*&v11[25] + 8 * v20);
  if (!v21)
  {
    goto LABEL_36;
  }

  v22 = *v21;
  if (!*v21)
  {
LABEL_32:
    v21 = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v23 = *(v22 + 1);
    if (v14 == v23)
    {
      if (!strcmp(*(v22 + 2), v12))
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      break;
    }

LABEL_30:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_34;
    }
  }

  v22 = 0;
LABEL_34:
  v21 = (v22 + 24);
  if (!v22)
  {
    v21 = 0;
  }

LABEL_36:
  if (!v21)
  {
  }

  v24 = v21[1];
  __p[0] = *v21;
  __p[1] = v24;
  if (File == *(a1 + 80))
  {
    v37 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v37 == -1)
    {
      std::operator+<char>();
      v49 = std::string::append(&v55, " is already defined.");
      v50 = *&v49->__r_.__value_.__l.__data_;
      v57 = v49->__r_.__value_.__r.__words[2];
      *__p = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, __p);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(__p[0]);
      }

      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v36 = v55.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = v37;
      std::string::basic_string(&v52, a2, v37 + 1, 0xFFFFFFFFFFFFFFFFLL, &v51);
      v39 = std::string::insert(&v52, 0, "");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v53, " is already defined in ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string(&v51, a2, 0, v38, v58);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v51;
      }

      else
      {
        v43 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      v45 = std::string::append(&v54, v43, size);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = std::string::append(&v55, ".");
      v48 = *&v47->__r_.__value_.__l.__data_;
      v57 = v47->__r_.__value_.__r.__words[2];
      *__p = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, __p);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v36 = v52.__r_.__value_.__r.__words[0];
    }

LABEL_76:
    operator delete(v36);
    return 0;
  }

  v26 = File;
  std::operator+<char>();
  v27 = std::string::append(&v53, " is already defined in file ");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = *(*v26 + 23);
  if (v29 >= 0)
  {
    v30 = *v26;
  }

  else
  {
    v30 = **v26;
  }

  if (v29 >= 0)
  {
    v31 = *(*v26 + 23);
  }

  else
  {
    v31 = (*v26)[1];
  }

  v32 = std::string::append(&v54, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v55, ".");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v57 = v34->__r_.__value_.__r.__words[2];
  *__p = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, __p);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    v36 = v53.__r_.__value_.__r.__words[0];
    goto LABEL_76;
  }

  return 0;
}

void sub_299862364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildFieldOrExtension(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, const wireless_diagnostics::google::protobuf::FieldDescriptorProto *a2, const wireless_diagnostics::google::protobuf::Descriptor *a3, wireless_diagnostics::google::protobuf::FieldDescriptor *a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  v5 = *(v4 + 1);
  v6 = *(this + 1);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void sub_299862FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 113) < 0)
  {
    operator delete(*(v23 - 136));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildEnumValue(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void sub_299863488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 113) < 0)
  {
    operator delete(*(v42 - 136));
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::FileDescriptorTables::AddAliasUnderParent(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = (v4 + 1);
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = v6 - a2;
  v10 = v9 + (a2 << 16);
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_27;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9 + (a2 << 16);
    if (v10 >= *&v11)
    {
      v14 = v10 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_27;
    }

LABEL_26:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  if (v16[2] != a2)
  {
    goto LABEL_26;
  }

  result = strcmp(v16[3], v4);
  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::BuildMethod(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkMessage(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::Descriptor *a2, const wireless_diagnostics::google::protobuf::DescriptorProto *a3, const char *a4)
{
  v6 = this;
  if (!*(a2 + 4))
  {
    this = wireless_diagnostics::google::protobuf::MessageOptions::default_instance(this, a2, a3, a4);
    *(a2 + 4) = this;
  }

  if (*(a2 + 14) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkMessage(v6, (*(a2 + 8) + v7), *(*(a3 + 9) + 8 * v8++));
      v7 += 120;
    }

    while (v8 < *(a2 + 14));
  }

  if (*(a2 + 18) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkEnum(this, (*(a2 + 10) + v9), a3, a4);
      ++v10;
      v9 += 56;
    }

    while (v10 < *(a2 + 18));
  }

  if (*(a2 + 11) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkField(v6, (*(a2 + 6) + v11), *(*(a3 + 3) + 8 * v12++), a4);
      v11 += 120;
    }

    while (v12 < *(a2 + 11));
  }

  if (*(a2 + 26) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkField(v6, (*(a2 + 14) + v13), *(*(a3 + 6) + 8 * v14++), a4);
      v13 += 120;
    }

    while (v14 < *(a2 + 26));
  }
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkField(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::FieldDescriptor *a2, const wireless_diagnostics::google::protobuf::FieldDescriptorProto *a3, const char *a4)
{
  v118 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 12))
  {
    *(a2 + 12) = wireless_diagnostics::google::protobuf::FieldOptions::default_instance(this, a2, a3, a4);
  }

  if ((*(a3 + 72) & 0x20) == 0)
  {
    goto LABEL_4;
  }

  v18 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(this, *(a3 + 5), *(a2 + 1), 2, 0);
  if (v18 == 1)
  {
    *(a2 + 7) = v19;
    v28 = *(a2 + 10);
    v29 = *(v19 + 88);
    if (v29 < 1)
    {
      goto LABEL_33;
    }

    v30 = (*(v19 + 96) + 4);
    v31 = 1;
    v32 = *(v19 + 88);
    v33 = 1;
    do
    {
      if (*(v30 - 1) <= v28 && *v30 > v28)
      {
        break;
      }

      v33 = v31++ < v29;
      v30 += 2;
      --v32;
    }

    while (v32);
    if (!v33)
    {
LABEL_33:
      v34 = *(a2 + 1);
      v35 = *(v19 + 8);
      v36 = *(v35 + 23);
      v37 = v35[1];
      if (v36 < 0)
      {
        v35 = *v35;
      }

      *&v116 = v35;
      if (v36 >= 0)
      {
        v38 = v36;
      }

      else
      {
        v38 = v37;
      }

      DWORD2(v116) = v38;
      v115.__r_.__value_.__r.__words[0] = wireless_diagnostics::google::protobuf::FastInt32ToBuffer(v28, &v115.__r_.__value_.__s.__data_[12], v20);
      LODWORD(v115.__r_.__value_.__r.__words[1]) = strlen(v115.__r_.__value_.__l.__data_);
      v114.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v114.__r_.__value_.__r.__words[1]) = -1;
      v113.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v113.__r_.__value_.__r.__words[1]) = -1;
      v111 = 0;
      v112 = -1;
      v109 = 0;
      v110 = -1;
      v107 = 0;
      v108 = -1;
      v105 = 0;
      v106 = -1;
      v103 = 0;
      v104 = -1;
      v101 = 0;
      v102 = -1;
      *&v97 = &v105;
      *(&v97 + 1) = &v103;
      wireless_diagnostics::google::protobuf::strings::Substitute("$0 does not declare $1 as an extension number.", &v116, &v115, &v114, &v113, &v111, &v109, &v107, &__p, v97, &v101);
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v34, a3, 1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_4:
    v7 = *(a3 + 18);
    if ((v7 & 0x10) == 0)
    {
      if ((wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 11)] | 2) != 0xA)
      {
        goto LABEL_10;
      }

      v8 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&v116, "Field with message or enum type missing type_name.");
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v8, a3, 2, &v116);
LABEL_7:
      if (SHIBYTE(v117) < 0)
      {
        v9 = v116;
LABEL_9:
        operator delete(v9);
      }

LABEL_10:
      if ((wireless_diagnostics::google::protobuf::FileDescriptorTables::AddFieldByNumber(*(this + 11), a2) & 1) == 0)
      {
        v11 = *(this + 11);
        v12 = *(a2 + 10);
        v13 = v11[16];
        if (v13)
        {
          v14 = *(a2 + 7);
          v15 = v12 + 0x10000 * v14 - v14;
          v16 = vcnt_s8(v13);
          v16.i16[0] = vaddlv_u8(v16);
          if (v16.u32[0] > 1uLL)
          {
            v17 = v12 + 0x10000 * v14 - v14;
            if (v15 >= *&v13)
            {
              v17 = v15 % *&v13;
            }
          }

          else
          {
            v17 = (*&v13 - 1) & v15;
          }

          v49 = *(*&v11[15] + 8 * v17);
          if (v49)
          {
            for (i = *v49; i; i = *i)
            {
              v51 = i[1];
              if (v15 == v51)
              {
                if (i[2] == v14 && *(i + 6) == v12)
                {
                  v96 = i[4];
                  goto LABEL_68;
                }
              }

              else
              {
                if (v16.u32[0] > 1uLL)
                {
                  if (v51 >= *&v13)
                  {
                    v51 = (v51 % *&v13);
                  }
                }

                else
                {
                  v51 = (v51 & (*&v13 - 1));
                }

                if (v51 != v17)
                {
                  break;
                }
              }
            }
          }
        }

        v96 = 0;
LABEL_68:
        v53 = *(a2 + 1);
        if (*(a2 + 52) == 1)
        {
          *&v116 = wireless_diagnostics::google::protobuf::FastInt32ToBuffer(v12, &v116 + 12, v10);
          DWORD2(v116) = strlen(v116);
          v54 = *(*(a2 + 7) + 8);
          v55 = *(v54 + 23);
          v56 = *(v54 + 8);
          if (v55 < 0)
          {
            v54 = *v54;
          }

          v115.__r_.__value_.__r.__words[0] = v54;
          if (v55 >= 0)
          {
            v57 = v55;
          }

          else
          {
            v57 = v56;
          }

          LODWORD(v115.__r_.__value_.__r.__words[1]) = v57;
          v58 = v96[1];
          v59 = *(v58 + 23);
          v60 = *(v58 + 8);
          if (v59 < 0)
          {
            v58 = *v58;
          }

          v114.__r_.__value_.__r.__words[0] = v58;
          if (v59 >= 0)
          {
            v61 = v59;
          }

          else
          {
            v61 = v60;
          }

          LODWORD(v114.__r_.__value_.__r.__words[1]) = v61;
          v113.__r_.__value_.__r.__words[0] = 0;
          LODWORD(v113.__r_.__value_.__r.__words[1]) = -1;
          v111 = 0;
          v112 = -1;
          v109 = 0;
          v110 = -1;
          v107 = 0;
          v108 = -1;
          v105 = 0;
          v106 = -1;
          v103 = 0;
          v104 = -1;
          v101 = 0;
          v102 = -1;
          *&v98 = &v105;
          *(&v98 + 1) = &v103;
          wireless_diagnostics::google::protobuf::strings::Substitute("Extension number $0 has already been used in $1 by extension $2.", &v116, &v115, &v114, &v113, &v111, &v109, &v107, &__p, v98, &v101);
          wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v53, a3, 1, &__p);
        }

        else
        {
          *&v116 = wireless_diagnostics::google::protobuf::FastInt32ToBuffer(v12, &v116 + 12, v10);
          DWORD2(v116) = strlen(v116);
          v62 = *(*(a2 + 7) + 8);
          v63 = *(v62 + 23);
          v64 = *(v62 + 8);
          if (v63 < 0)
          {
            v62 = *v62;
          }

          v115.__r_.__value_.__r.__words[0] = v62;
          if (v63 >= 0)
          {
            v65 = v63;
          }

          else
          {
            v65 = v64;
          }

          LODWORD(v115.__r_.__value_.__r.__words[1]) = v65;
          v66 = *v96;
          v67 = *(*v96 + 23);
          v68 = *(*v96 + 8);
          if (v67 < 0)
          {
            v66 = **v96;
          }

          v114.__r_.__value_.__r.__words[0] = v66;
          if (v67 >= 0)
          {
            v69 = v67;
          }

          else
          {
            v69 = v68;
          }

          LODWORD(v114.__r_.__value_.__r.__words[1]) = v69;
          v113.__r_.__value_.__r.__words[0] = 0;
          LODWORD(v113.__r_.__value_.__r.__words[1]) = -1;
          v111 = 0;
          v112 = -1;
          v109 = 0;
          v110 = -1;
          v107 = 0;
          v108 = -1;
          v105 = 0;
          v106 = -1;
          v103 = 0;
          v104 = -1;
          v101 = 0;
          v102 = -1;
          *&v99 = &v105;
          *(&v99 + 1) = &v103;
          wireless_diagnostics::google::protobuf::strings::Substitute("Field number $0 has already been used in $1 by field $2.", &v116, &v115, &v114, &v113, &v111, &v109, &v107, &__p, v99, &v101);
          wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v53, a3, 1, &__p);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (*(a2 + 52) == 1)
      {
        wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AddExtension(*(this + 1), a2);
      }

      wireless_diagnostics::google::protobuf::FileDescriptorTables::AddFieldByStylizedNames(*(this + 11), a2);
      goto LABEL_96;
    }

    v24 = (v7 >> 6) & 1;
    if (*(a3 + 16) == 14)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v26 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(this, *(a3 + 4), *(a2 + 1), v25, 1);
    if (!v26)
    {
      v43 = *(a3 + 4);
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 2);
LABEL_96:
      v70 = *MEMORY[0x29EDCA608];
      return;
    }

    if ((*(a3 + 72) & 8) == 0)
    {
      if (v26 != 1)
      {
        if (v26 == 3)
        {
          *(a2 + 11) = 14;
          goto LABEL_101;
        }

        v72 = *(a2 + 1);
        v73 = *(a3 + 4);
        std::operator+<char>();
        v74 = std::string::append(&v115, " is not a type.");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v117 = v74->__r_.__value_.__r.__words[2];
        v116 = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v72, a3, 2, &v116);
        goto LABEL_41;
      }

      *(a2 + 11) = 11;
LABEL_98:
      *(a2 + 9) = v27;
      if (*(a2 + 104) != 1)
      {
        goto LABEL_10;
      }

      v71 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&v116, "Messages can't have default values.");
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v71, a3, 4, &v116);
      goto LABEL_7;
    }

    v44 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 11)];
    if (v44 == 8)
    {
      if (v26 == 3)
      {
LABEL_101:
        *(a2 + 10) = v27;
        if (*(v27 + 40) == 1)
        {
          *(a2 + 104) = 0;
        }

        else if (*(a2 + 104))
        {
          v77 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, *(a3 + 6), *(v27 + 8), 0);
          v79 = *(a2 + 10);
          if (v77 == 4 && *(v78 + 24) == v79)
          {
            *(a2 + 14) = v78;
            goto LABEL_10;
          }

          v80 = *(a2 + 1);
          v81 = *(v79 + 8);
          std::operator+<char>();
          v82 = std::string::append(&v113, " has no value named ");
          v83 = *&v82->__r_.__value_.__l.__data_;
          v114.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
          *&v114.__r_.__value_.__l.__data_ = v83;
          v82->__r_.__value_.__l.__size_ = 0;
          v82->__r_.__value_.__r.__words[2] = 0;
          v82->__r_.__value_.__r.__words[0] = 0;
          v84 = *(a3 + 6);
          v85 = *(v84 + 23);
          if (v85 >= 0)
          {
            v86 = *(a3 + 6);
          }

          else
          {
            v86 = *v84;
          }

          if (v85 >= 0)
          {
            v87 = *(v84 + 23);
          }

          else
          {
            v87 = *(v84 + 8);
          }

          v88 = std::string::append(&v114, v86, v87);
          v89 = *&v88->__r_.__value_.__l.__data_;
          v115.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
          *&v115.__r_.__value_.__l.__data_ = v89;
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          v90 = std::string::append(&v115, ".");
          v91 = *&v90->__r_.__value_.__l.__data_;
          v117 = v90->__r_.__value_.__r.__words[2];
          v116 = v91;
          v90->__r_.__value_.__l.__size_ = 0;
          v90->__r_.__value_.__r.__words[2] = 0;
          v90->__r_.__value_.__r.__words[0] = 0;
          wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v80, a3, 4, &v116);
          if (SHIBYTE(v117) < 0)
          {
            operator delete(v116);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v114.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          v9 = v113.__r_.__value_.__r.__words[0];
          goto LABEL_9;
        }

        if (*(v27 + 44) >= 1)
        {
          *(a2 + 14) = *(v27 + 48);
        }

        goto LABEL_10;
      }

      v92 = *(a2 + 1);
      v93 = *(a3 + 4);
      std::operator+<char>();
      v94 = std::string::append(&v115, " is not an enum type.");
      v95 = *&v94->__r_.__value_.__l.__data_;
      v117 = v94->__r_.__value_.__r.__words[2];
      v116 = v95;
      v94->__r_.__value_.__l.__size_ = 0;
      v94->__r_.__value_.__r.__words[2] = 0;
      v94->__r_.__value_.__r.__words[0] = 0;
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v92, a3, 2, &v116);
      goto LABEL_41;
    }

    if (v44 != 10)
    {
      v76 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&v116, "Field with primitive type has type_name.");
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v76, a3, 2, &v116);
      goto LABEL_7;
    }

    if (v26 == 1)
    {
      goto LABEL_98;
    }

    v45 = *(a2 + 1);
    v46 = *(a3 + 4);
    std::operator+<char>();
    v47 = std::string::append(&v115, " is not a message type.");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v117 = v47->__r_.__value_.__r.__words[2];
    v116 = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v45, a3, 2, &v116);
LABEL_41:
    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    goto LABEL_96;
  }

  if (v18)
  {
    v39 = *(a2 + 1);
    v40 = *(a3 + 5);
    std::operator+<char>();
    v41 = std::string::append(&v115, " is not a message type.");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v117 = v41->__r_.__value_.__r.__words[2];
    v116 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v39, a3, 3, &v116);
    goto LABEL_41;
  }

  v21 = *(a2 + 1);
  v22 = *(a3 + 5);
  v23 = *MEMORY[0x29EDCA608];

  wireless_diagnostics::google::protobuf::DescriptorBuilder::AddNotDefinedError(this, v21, a3, 3);
}

void sub_2998645E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
  }

  if (*(v17 - 137) < 0)
  {
    operator delete(*(v17 - 160));
  }

  if (*(v17 - 185) < 0)
  {
    operator delete(*(v17 - 208));
  }

  if (*(v17 - 233) < 0)
  {
    operator delete(*(v17 - 256));
  }

  _Unwind_Resume(exception_object);
}

wireless_diagnostics::google::protobuf::EnumOptions *wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkEnum(wireless_diagnostics::google::protobuf::EnumOptions *this, wireless_diagnostics::google::protobuf::EnumDescriptor *a2, const wireless_diagnostics::google::protobuf::EnumDescriptorProto *a3, const char *a4)
{
  if (!*(a2 + 4))
  {
    this = wireless_diagnostics::google::protobuf::EnumOptions::default_instance(this, a2, a3, a4);
    *(a2 + 4) = this;
  }

  v5 = *(a2 + 11);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 32;
    do
    {
      v8 = *(a2 + 6);
      if (!*(v8 + v7))
      {
        this = wireless_diagnostics::google::protobuf::EnumValueOptions::default_instance(this, a2, a3, a4);
        *(v8 + v7) = this;
        v5 = *(a2 + 11);
      }

      ++v6;
      v7 += 40;
    }

    while (v6 < v5);
  }

  return this;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkService(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::ServiceDescriptor *a2, const wireless_diagnostics::google::protobuf::ServiceDescriptorProto *a3, const char *a4)
{
  if (!*(a2 + 3))
  {
    *(a2 + 3) = wireless_diagnostics::google::protobuf::ServiceOptions::default_instance(this, a2, a3, a4);
  }

  if (*(a2 + 8) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkMethod(this, (*(a2 + 5) + v7), *(*(a3 + 3) + 8 * v8++), a4);
      v7 += 48;
    }

    while (v8 < *(a2 + 8));
  }
}

unint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(a1, a2, a3, a5);
  v8 = v7;
  v9 = HIDWORD(v7);
  if (!v7)
  {
    if (*(*a1 + 41) == 1)
    {
      if (wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateQualifiedName(v7, a2))
      {
        if (*(a2 + 23) >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        v11 = a1[1];
        if (*v10 == 46)
        {
          std::string::basic_string(&__p, a2, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v15);
          wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
        }

        v12 = a1[1];
        wireless_diagnostics::google::protobuf::DescriptorPool::Tables::AllocateString();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 | (v9 << 32);
}

void sub_299864C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(uint64_t a1, std::string *__str, uint64_t a3, int a4)
{
  *(a1 + 120) = 0;
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__str->__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    v8 = __str->__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = __str;
    if (!*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_8;
    }
  }

  if (v8->__r_.__value_.__s.__data_[0] == 46)
  {
    std::string::basic_string(&v21, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &__p);
    Symbol = wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbol(a1, &v21);
    goto LABEL_42;
  }

LABEL_8:
  v10 = std::string::find(__str, 46, 0);
  memset(&v21, 0, sizeof(v21));
  if (v10 == -1)
  {
    std::string::operator=(&v21, __str);
  }

  else
  {
    std::string::basic_string(&__p, __str, 0, v10, &v22);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v21 = __p;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  while (1)
  {
    v11 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v11 == -1)
    {
      break;
    }

    std::string::erase(&__p, v11, 0xFFFFFFFFFFFFFFFFLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, 1uLL, 46);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v21;
    }

    else
    {
      v13 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v21.__r_.__value_.__l.__size_;
    }

    std::string::append(&__p, v13, v14);
    v15 = wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p);
    Symbol = v15;
    if (v15)
    {
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v21.__r_.__value_.__l.__size_;
      }

      v17 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v17 & 0x80u) != 0)
      {
        v17 = __str->__r_.__value_.__l.__size_;
      }

      if (v17 <= v16)
      {
        if (a4 != 1 || (v15 & 0xFFFFFFFD) == 1)
        {
          goto LABEL_40;
        }
      }

      else if (((v15 - 1) & 0xFFFFFFF9) == 0)
      {
        std::string::append(&__p, __str, v16, v17 - v16);
        v18 = wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p);
        goto LABEL_39;
      }
    }

    std::string::erase(&__p, size, 0xFFFFFFFFFFFFFFFFLL);
  }

  v18 = wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbol(a1, __str);
LABEL_39:
  Symbol = v18;
LABEL_40:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return Symbol;
}

void sub_299864F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

wireless_diagnostics::google::protobuf::EnumValueOptions *wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkEnumValue(wireless_diagnostics::google::protobuf::EnumValueOptions *this, wireless_diagnostics::google::protobuf::EnumValueDescriptor *a2, const wireless_diagnostics::google::protobuf::EnumValueDescriptorProto *a3, const char *a4)
{
  if (!*(a2 + 4))
  {
    this = wireless_diagnostics::google::protobuf::EnumValueOptions::default_instance(this, a2, a3, a4);
    *(a2 + 4) = this;
  }

  return this;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::CrossLinkMethod(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::MethodDescriptor *a2, const wireless_diagnostics::google::protobuf::MethodDescriptorProto *a3, const char *a4)
{
  if (!*(a2 + 5))
  {
    *(a2 + 5) = wireless_diagnostics::google::protobuf::MethodOptions::default_instance(this, a2, a3, a4);
  }

  v7 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(this, *(a3 + 3), *(a2 + 1), 0, 0);
  if (v7 == 1)
  {
    *(a2 + 3) = v8;
  }

  else if (v7)
  {
    v10 = *(a2 + 1);
    v11 = *(a3 + 3);
    std::operator+<char>();
    v12 = std::string::append(&v21, " is not a message type.");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v23 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v10, a3, 5, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = *(a3 + 3);
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 5);
  }

  v14 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(this, *(a3 + 4), *(a2 + 1), 0, 0);
  if (v14 == 1)
  {
    *(a2 + 4) = v15;
  }

  else if (v14)
  {
    v17 = *(a2 + 1);
    v18 = *(a3 + 4);
    std::operator+<char>();
    v19 = std::string::append(&v21, " is not a message type.");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v23 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v17, a3, 6, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = *(a3 + 4);
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 6);
  }
}

void sub_2998651A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateMessageOptions(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::Descriptor *a2, const wireless_diagnostics::google::protobuf::DescriptorProto *a3, const char *a4)
{
  v45 = *MEMORY[0x29EDCA608];
  if (*(a2 + 11) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 6) + v7), *(*(a3 + 3) + 8 * v8++), a4);
      v7 += 120;
    }

    while (v8 < *(a2 + 11));
  }

  if (*(a2 + 14) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 8) + v9), *(*(a3 + 9) + 8 * v10++));
      v9 += 120;
    }

    while (v10 < *(a2 + 14));
  }

  if (*(a2 + 18) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 10) + v11), *(*(a3 + 12) + 8 * v12++));
      v11 += 56;
    }

    while (v12 < *(a2 + 18));
  }

  if (*(a2 + 26) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 14) + v13), *(*(a3 + 6) + 8 * v14++), a4);
      v13 += 120;
    }

    while (v14 < *(a2 + 26));
  }

  if (*(*(a2 + 4) + 64))
  {
    v15 = 0x7FFFFFFFLL;
  }

  else
  {
    v15 = 0x1FFFFFFFLL;
  }

  v16 = *(a2 + 22);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 4;
    do
    {
      if ((v15 + 1) < *(*(a2 + 12) + v18))
      {
        v19 = *(a2 + 1);
        v20 = *(*(a3 + 15) + 8 * v17);
        v42 = wireless_diagnostics::google::protobuf::FastInt64ToBuffer(v15, v44, a3);
        v43 = strlen(v42);
        v40 = 0;
        v41 = -1;
        v38 = 0;
        v39 = -1;
        v36 = 0;
        v37 = -1;
        v34 = 0;
        v35 = -1;
        v32 = 0;
        v33 = -1;
        v30 = 0;
        v31 = -1;
        v28 = 0;
        v29 = -1;
        v26 = 0;
        v27 = -1;
        v24 = 0;
        v25 = -1;
        *(&v22 + 1) = &v26;
        *&v22 = &v28;
        wireless_diagnostics::google::protobuf::strings::Substitute("Extension numbers cannot be greater than $0.", &v42, &v40, &v38, &v36, &v34, &v32, &v30, &__p, v22, &v24);
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v19, v20, 1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v16 = *(a2 + 22);
      }

      ++v17;
      v18 += 8;
    }

    while (v17 < v16);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_29986548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateEnumOptions(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::EnumDescriptor *a2, const wireless_diagnostics::google::protobuf::EnumDescriptorProto *a3)
{
  v6 = *(a2 + 4);
  if ((*(v6 + 72) & 1) == 0 || (*(v6 + 64) & 1) == 0)
  {
    v36[0] = 0;
    v36[1] = 0;
    v35 = v36;
    if (*(a2 + 11) < 1)
    {
      v28 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(a2 + 6) + 40 * v7;
        v9 = *(v8 + 16);
        v10 = v36[0];
        if (!v36[0])
        {
          goto LABEL_12;
        }

        v11 = v36;
        do
        {
          if (*(v10 + 32) >= v9)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 32) < v9));
        }

        while (v10);
        if (v11 != v36 && v9 >= *(v11 + 8))
        {
          v14 = *(v8 + 8);
          std::operator+<char>();
          v15 = std::string::append(&v31, " uses the same enum value as ");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v30 = *(v8 + 16);
          v36[3] = &v30;
          v17 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v35, &v30);
          v20 = v17[5];
          v18 = v17 + 5;
          v19 = v20;
          v21 = *(v18 + 23);
          if (v21 >= 0)
          {
            v22 = v18;
          }

          else
          {
            v22 = v19;
          }

          if (v21 >= 0)
          {
            v23 = *(v18 + 23);
          }

          else
          {
            v23 = v18[1];
          }

          v24 = std::string::append(&v32, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(__p, ". If this is intended, set 'option allow_alias = true;' to the enum definition.");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v34 = v26->__r_.__value_.__r.__words[2];
          *v33 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          if (*(*(a2 + 4) + 64))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
          }

          else
          {
            wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 1, v33);
          }

          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33[0]);
          }
        }

        else
        {
LABEL_12:
          v12 = *(v8 + 8);
          LODWORD(v33[0]) = v9;
          __p[0].__r_.__value_.__r.__words[0] = v33;
          v13 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v35, v33);
          std::string::operator=((v13 + 5), v12);
        }

        ++v7;
      }

      while (v7 < *(a2 + 11));
      v28 = v36[0];
    }

    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(&v35, v28);
  }
}

void sub_299865750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a9);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(v37 - 128, *(v37 - 120));
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateServiceOptions(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::ServiceDescriptor *a2, const wireless_diagnostics::google::protobuf::ServiceDescriptorProto *a3, const char *a4)
{
  v4 = *(a2 + 2);
  if (v4)
  {
    v8 = *(v4 + 136);
    if (v8 != wireless_diagnostics::google::protobuf::FileOptions::default_instance(this, a2, a3, a4) && *(*(v4 + 136) + 56) == 3)
    {
      v9 = *(*(a2 + 2) + 136);
      if ((*(v9 + 62) & 1) != 0 || *(v9 + 63) == 1)
      {
        v10 = *(a2 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "Files with optimize_for = LITE_RUNTIME cannot define services unless you set both options cc_generic_services and java_generic_sevices to false.");
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v10, a3, 0, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_2998658A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateFieldOptions(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::FieldDescriptor *a2, const wireless_diagnostics::google::protobuf::FieldDescriptorProto *a3, const char *a4)
{
  v6 = this;
  v7 = *(a2 + 12);
  if ((v7[84] & 0x10) != 0)
  {
    wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateMapKey(this, a2, a3);
    v7 = *(a2 + 12);
  }

  if (v7[45] == 1 && *(a2 + 11) != 11)
  {
    v8 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "[lazy = true] can only be specified for submessage fields.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(v6, v8, a3, 2, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a2 + 12);
  }

  if (v7[44] == 1 && (*(a2 + 12) != 3 || (*(a2 + 11) - 13) >= 0xFFFFFFFC))
  {
    v9 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "[packed = true] can only be specified for repeated primitive fields.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(v6, v9, a3, 2, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *(a2 + 7);
  if (v10)
  {
    v11 = *(v10 + 32);
    this = wireless_diagnostics::google::protobuf::MessageOptions::default_instance(this, a2, a3, a4);
    if (v11 != this && *(*(*(a2 + 7) + 32) + 64) == 1)
    {
      if (*(a2 + 52) == 1)
      {
        if (*(a2 + 12) == 1 && *(a2 + 11) == 11)
        {
          goto LABEL_23;
        }

        v12 = *(a2 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "Extensions of MessageSets must be optional messages.");
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(v6, v12, a3, 2, __p);
      }

      else
      {
        v13 = *(a2 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "MessageSets cannot have fields, only extensions.");
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(v6, v13, a3, 0, __p);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_23:
  v14 = *(a2 + 4);
  if (v14)
  {
    v15 = *(v14 + 136);
    v16 = wireless_diagnostics::google::protobuf::FileOptions::default_instance(this, a2, a3, a4);
    if (v15 != v16 && *(*(v14 + 136) + 56) == 3)
    {
      v20 = *(a2 + 7);
      if (v20)
      {
        v21 = *(v20 + 16);
        if (!v21 || (v22 = *(v21 + 136), v22 == wireless_diagnostics::google::protobuf::FileOptions::default_instance(v16, v17, v18, v19)) || *(*(v21 + 136) + 56) != 3)
        {
          v23 = *(a2 + 1);
          std::string::basic_string[abi:ne200100]<0>(__p, "Extensions to non-lite types can only be declared in non-lite files.  Note that you cannot extend a non-lite type to contain a lite type, but the reverse is allowed.");
          wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(v6, v23, a3, 3, __p);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_299865B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::ValidateMapKey(wireless_diagnostics::google::protobuf::DescriptorBuilder *this, wireless_diagnostics::google::protobuf::FieldDescriptor *a2, const wireless_diagnostics::google::protobuf::FieldDescriptorProto *a3)
{
  if (*(a2 + 12) != 3)
  {
    v19 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "map type is only allowed for repeated fields.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v19, a3, 2, &__p);
    goto LABEL_48;
  }

  if ((*(a2 + 11) & 0xFFFFFFFE) != 0xA)
  {
    v20 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "map type is only allowed for fields with a message type.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v20, a3, 2, &__p);
    goto LABEL_48;
  }

  v6 = *(a2 + 9);
  if (!v6)
  {
    v21 = *(a2 + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Could not find field type.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v21, a3, 2, &__p);
    goto LABEL_48;
  }

  v7 = *(*(a2 + 12) + 48);
  v8 = *(v6 + 8);
  if (*(v8 + 23) >= 0)
  {
    v9 = *(v8 + 23);
  }

  else
  {
    v9 = v8[1];
  }

  v10 = &v38;
  std::string::basic_string[abi:ne200100](&v38, v9 + 1);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v38.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if (*(v8 + 23) >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = *v8;
    }

    memmove(v10, v11, v9);
  }

  *(&v10->__r_.__value_.__l.__data_ + v9) = 46;
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  v15 = std::string::append(&v38, v13, v14);
  __p = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v16 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(this, v7, &__p, 0, 0);
  v18 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v16)
  {
LABEL_29:
    if (*(v18 + 52) == 1)
    {
      goto LABEL_30;
    }

    if (*(v18 + 48) == 3)
    {
      v34 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "map_key must not name a repeated field.");
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v34, a3, 2, &__p);
    }

    else
    {
      if ((*(v18 + 44) & 0xFFFFFFFE) != 0xA)
      {
        *(a2 + 11) = v18;
        return;
      }

      v35 = *(a2 + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "map key must name a scalar or string field.");
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v35, a3, 2, &__p);
    }

LABEL_48:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v33 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_50;
  }

LABEL_30:
  v22 = *(a2 + 1);
  std::operator+<char>();
  v23 = std::string::append(&v36, " in type ");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(v6 + 8);
  v26 = *(v25 + 23);
  if (v26 >= 0)
  {
    v27 = *(v6 + 8);
  }

  else
  {
    v27 = *v25;
  }

  if (v26 >= 0)
  {
    v28 = *(v25 + 23);
  }

  else
  {
    v28 = *(v25 + 8);
  }

  v29 = std::string::append(&v37, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".");
  v32 = *&v31->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(this, v22, a3, 2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    v33 = v36.__r_.__value_.__r.__words[0];
LABEL_50:
    operator delete(v33);
  }
}

void sub_299865ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::OptionInterpreter(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *this, wireless_diagnostics::google::protobuf::DescriptorBuilder *a2)
{
  *this = a2;
  wireless_diagnostics::google::protobuf::DynamicMessageFactory::DynamicMessageFactory((this + 24));
  if (!*this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v4);
  }

  return this;
}

void sub_29986600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  wireless_diagnostics::google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((v3 + 24));
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *this, wireless_diagnostics::google::protobuf::Message *a2)
{
  v3 = *(this + 2);
  if (!*(v3 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(&v64, "Option must have a name.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 7, &v64);
LABEL_64:
    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    return 0;
  }

  v5 = *(**(v3 + 16) + 16);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (v5[1] != 20)
    {
      goto LABEL_15;
    }

    v5 = *v5;
  }

  else if (v6 != 20)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 4);
  if (v7 == 0x707265746E696E75 && v8 == 0x706F5F6465746572 && v9 == 1852795252)
  {
    std::string::basic_string[abi:ne200100]<0>(&v64, "Option must not use reserved name uninterpreted_option.");
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 7, &v64);
    goto LABEL_64;
  }

LABEL_15:
  v12 = *this;
  v13 = (*(*a2 + 152))(a2);
  if (wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(v12, *v12, *(v13 + 8)) == 1)
  {
    v15 = v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = (*(*a2 + 152))(a2);
    if (!v15)
    {
LABEL_19:
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v64);
    }
  }

  __p = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v59, "");
  v16 = *(this + 2);
  if (*(v16 + 24) <= 0)
  {
    v27 = v63;
LABEL_61:
    v34 = __p;
    v35 = v61;
    v36 = (*(*a2 + 144))(a2);
    v37 = (*(*v36 + 16))(v36, a2);
    if (wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(this, v34, v35, v27, &v59, v37))
    {
      operator new();
    }

    goto LABEL_92;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(*(v16 + 16) + 8 * v17);
    v19 = *(v18 + 16);
    size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v59.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v59, ".");
      v18 = *(*(*(this + 2) + 16) + 8 * v17);
    }

    if (*(v18 + 24) == 1)
    {
      std::operator+<char>();
      v21 = std::string::append(&v56, ")");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v65 = v21->__r_.__value_.__r.__words[2];
      v64 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (v65 >= 0)
      {
        v23 = &v64;
      }

      else
      {
        v23 = v64;
      }

      if (v65 >= 0)
      {
        v24 = HIBYTE(v65);
      }

      else
      {
        v24 = *(&v64 + 1);
      }

      std::string::append(&v59, v23, v24);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      NestedSymbolOfType = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbol(*this, v19, *(this + 1), 0, 0);
      if (NestedSymbolOfType != 2)
      {
        v27 = v63;
        goto LABEL_52;
      }

      v27 = v26;
    }

    else
    {
      v28 = *(v19 + 23);
      v29 = v28 >= 0 ? v19 : *v19;
      v30 = v28 >= 0 ? *(v19 + 23) : *(v19 + 8);
      std::string::append(&v59, v29, v30);
      NestedSymbolOfType = wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(v15[2] + 18), v15, v19, 2);
      if (NestedSymbolOfType)
      {
        v27 = *(v31 + 52) ? 0 : v31;
      }

      else
      {
        v27 = 0;
      }
    }

    v63 = v27;
LABEL_52:
    if (!v27)
    {
      if (*(**this + 41) != 1)
      {
        std::operator+<char>();
        v39 = std::string::append(&v56, " unknown.");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v65 = v39->__r_.__value_.__r.__words[2];
        v64 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 7, &v64);
        goto LABEL_87;
      }

LABEL_70:
      wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(NestedSymbolOfType, *(this + 2), a2);
      v38 = 1;
      goto LABEL_93;
    }

    v32 = *(v27 + 56);
    if (v32 != v15)
    {
      break;
    }

    if (*(v27 + 48) == 3)
    {
      std::operator+<char>();
      v41 = std::string::append(&v56, " is repeated. Repeated options are not supported.");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v65 = v41->__r_.__value_.__r.__words[2];
      v64 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 7, &v64);
      goto LABEL_87;
    }

    v16 = *(this + 2);
    v33 = *(v16 + 24);
    if (v17 < v33 - 1)
    {
      if ((*(v27 + 44) & 0xFFFFFFFE) != 0xA)
      {
        std::operator+<char>();
        v53 = std::string::append(&v56, " is an atomic type, not a message.");
        v54 = *&v53->__r_.__value_.__l.__data_;
        v65 = v53->__r_.__value_.__r.__words[2];
        v64 = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 7, &v64);
LABEL_87:
        if (SHIBYTE(v65) < 0)
        {
          operator delete(v64);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          v52 = v56.__r_.__value_.__r.__words[0];
LABEL_91:
          operator delete(v52);
        }

        goto LABEL_92;
      }

      std::vector<wireless_diagnostics::google::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](&__p, &v63);
      v27 = v63;
      v15 = *(v63 + 72);
      v16 = *(this + 2);
      LODWORD(v33) = *(v16 + 24);
    }

    if (++v17 >= v33)
    {
      goto LABEL_61;
    }
  }

  if (*(v32 + 40))
  {
    goto LABEL_70;
  }

  std::operator+<char>();
  v43 = std::string::append(&v57, " is not a field or extension of message ");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = (*v15)[23];
  if (v45 >= 0)
  {
    v46 = *v15;
  }

  else
  {
    v46 = **v15;
  }

  if (v45 >= 0)
  {
    v47 = *(*v15 + 23);
  }

  else
  {
    v47 = *(*v15 + 1);
  }

  v48 = std::string::append(&v58, v46, v47);
  v49 = *&v48->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&v56, ".");
  v51 = *&v50->__r_.__value_.__l.__data_;
  v65 = v50->__r_.__value_.__r.__words[2];
  v64 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 7, &v64);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    v52 = v57.__r_.__value_.__r.__words[0];
    goto LABEL_91;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }

  return v38;
}

void sub_299866964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, wireless_diagnostics::google::protobuf::UnknownFieldSet *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage((v38 - 144));
  wireless_diagnostics::google::protobuf::internal::scoped_ptr<wireless_diagnostics::google::protobuf::UnknownFieldSet>::~scoped_ptr(&a18);
  wireless_diagnostics::google::protobuf::internal::scoped_ptr<wireless_diagnostics::google::protobuf::UnknownFieldSet>::~scoped_ptr(&a19);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *this, const wireless_diagnostics::google::protobuf::UninterpretedOption *a2, wireless_diagnostics::google::protobuf::Message *a3)
{
  v5 = (*(*a3 + 152))(a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "uninterpreted_option");
  if (wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(*(v5 + 16) + 144), v5, __p, 2))
  {
    if (*(v6 + 52))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
LABEL_10:
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
    }
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  v8 = (*(*a3 + 144))(a3);
  v9 = (*(*v8 + 520))(v8, a3, v7, 0);
  return (*(*v9 + 104))(v9, a2);
}

void sub_299866CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  if (a2 == a3)
  {
    v9 = 0;
    v10 = *a6;
    v11 = -1;
    do
    {
      if (v10)
      {
        v12 = ((v10[1] - *v10) >> 4);
      }

      else
      {
        v12 = 0;
      }

      if (++v11 >= v12)
      {
        return 1;
      }

      v13 = *(*v10 + v9);
      v9 += 16;
    }

    while ((v13 & 0x1FFFFFFF) != *(a4 + 40));
    std::operator+<char>();
    v14 = std::string::append(&v33, " was already set.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*a1, a1[1] + 24, a1[2], 7, __p);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    v18 = 0;
    for (i = 0; ; ++i)
    {
      v20 = *a6;
      v21 = *a6 ? ((v20[1] - *v20) >> 4) : 0;
      v22 = i >= v21;
      if (i >= v21)
      {
        break;
      }

      v23 = *v20;
      v24 = *(*v20 + v18);
      if ((v24 & 0x1FFFFFFF) == *(*a2 + 40))
      {
        v25 = *(*a2 + 44);
        if (v25 == 10)
        {
          if (v24 >> 29 == 4 && (wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 8, a3, a4, a5, *(v23 + v18 + 8)) & 1) == 0)
          {
            return v22;
          }
        }

        else
        {
          if (v25 != 11)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
            return 0;
          }

          if (v24 >> 29 == 3)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet(__p);
            v26 = *(v23 + v18 + 8);
            v27 = *(v26 + 8);
            if (*(v26 + 23) >= 0)
            {
              v28 = *(v23 + v18 + 8);
            }

            else
            {
              v28 = *v26;
            }

            if (wireless_diagnostics::google::protobuf::UnknownFieldSet::ParseFromArray(__p, v28) && (wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 8, a3, a4, a5, __p) & 1) == 0)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(__p);
              return 0;
            }

            wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(__p);
          }
        }
      }

      v18 += 16;
    }
  }

  return v22;
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *this, const wireless_diagnostics::google::protobuf::FieldDescriptor *a2, wireless_diagnostics::google::protobuf::UnknownFieldSet *a3)
{
  v6 = *(a2 + 11);
  v7 = wireless_diagnostics::google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v6];
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v14 = *(this + 2);
        v15 = *(v14 + 92);
        if ((v15 & 4) != 0)
        {
          v26 = *(v14 + 48);
          if (v26 >> 31)
          {
            goto LABEL_149;
          }
        }

        else
        {
          if ((v15 & 8) == 0)
          {
            goto LABEL_149;
          }

          v26 = *(v14 + 56);
          if (v26 <= 0xFFFFFFFF7FFFFFFFLL)
          {
            goto LABEL_149;
          }
        }

        wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(this, *(a2 + 10), v26, v6, a3);
      }

      else if (v7 == 2)
      {
        v11 = *(this + 2);
        v12 = *(v11 + 92);
        if ((v12 & 4) != 0)
        {
          v22 = *(v11 + 48);
          if (v22 < 0)
          {
            goto LABEL_149;
          }

          v23 = *(a2 + 10);
        }

        else
        {
          if ((v12 & 8) == 0)
          {
            goto LABEL_149;
          }

          v23 = *(a2 + 10);
          v22 = *(v11 + 56);
        }

        wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(this, v23, v22, v6, a3);
      }
    }

    else if (v7 == 3)
    {
      v18 = *(this + 2);
      if ((*(v18 + 92) & 4) == 0)
      {
        goto LABEL_149;
      }

      v28 = *(v18 + 48);
      if (HIDWORD(v28))
      {
        v29 = *a2;
        std::operator+<char>();
        v30 = std::string::append(&v99, ".");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v100.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v100.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 8, &v100);
LABEL_150:
        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v90 = v99.__r_.__value_.__r.__words[0];
LABEL_154:
        operator delete(v90);
        return 0;
      }

      wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(this, *(a2 + 10), v28, v6, a3);
    }

    else if (v7 == 4)
    {
      v20 = *(this + 2);
      if ((*(v20 + 92) & 4) == 0)
      {
        goto LABEL_149;
      }

      wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(this, *(a2 + 10), *(v20 + 48), v6, a3);
    }

    else
    {
      v8 = *(this + 2);
      v9 = *(v8 + 92);
      if ((v9 & 0x10) != 0)
      {
        v37 = *(v8 + 64);
      }

      else if ((v9 & 4) != 0)
      {
        v37 = *(v8 + 48);
      }

      else
      {
        if ((v9 & 8) == 0)
        {
          goto LABEL_149;
        }

        v37 = *(v8 + 56);
      }

      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddFixed64(a3, *(a2 + 10), *&v37);
    }

    return 1;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      v16 = *(this + 2);
      v17 = *(v16 + 92);
      if ((v17 & 0x10) != 0)
      {
        v27 = *(v16 + 64);
      }

      else if ((v17 & 4) != 0)
      {
        v27 = *(v16 + 48);
      }

      else
      {
        if ((v17 & 8) == 0)
        {
          goto LABEL_149;
        }

        v27 = *(v16 + 56);
      }

      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddFixed32(a3, *(a2 + 10), SLODWORD(v27));
      return 1;
    }

    v13 = *(this + 2);
    if ((*(v13 + 92) & 2) == 0)
    {
      goto LABEL_149;
    }

    v24 = *(v13 + 40);
    if (*(v24 + 23) < 0)
    {
      if (*(v24 + 1) != 4 || **v24 != 1702195828)
      {
        if (*(v24 + 1) == 5)
        {
          v24 = *v24;
LABEL_67:
          v40 = *v24;
          v41 = *(v24 + 4);
          if (v40 != 1936482662 || v41 != 101)
          {
            goto LABEL_149;
          }

          v43 = 0;
          goto LABEL_157;
        }

LABEL_149:
        v91 = *(a2 + 1);
        std::operator+<char>();
        v92 = std::string::append(&v99, ".");
        v93 = *&v92->__r_.__value_.__l.__data_;
        v100.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v100.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 8, &v100);
        goto LABEL_150;
      }
    }

    else
    {
      v25 = *(v24 + 23);
      if (v25 != 4)
      {
        if (v25 != 5)
        {
          goto LABEL_149;
        }

        goto LABEL_67;
      }

      if (*v24 != 1702195828)
      {
        goto LABEL_149;
      }
    }

    v43 = 1;
LABEL_157:
    v71 = *(a2 + 10);
    goto LABEL_158;
  }

  if (v7 == 8)
  {
    v19 = *(this + 2);
    if ((*(v19 + 92) & 2) == 0)
    {
      goto LABEL_149;
    }

    v32 = *(a2 + 10);
    v33 = *(v19 + 40);
    v34 = *(v32[2] + 16);
    if (v34 == wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(this))
    {
      if (!wireless_diagnostics::google::protobuf::FileDescriptorTables::FindNestedSymbolOfType(*(v32[2] + 144), v32, v33, 4))
      {
        goto LABEL_124;
      }

      v45 = v44;
LABEL_122:
      if (v45)
      {
        v71 = *(a2 + 10);
        v43 = *(v45 + 16);
LABEL_158:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint(a3, v71, v43);
        return 1;
      }

LABEL_124:
      v72 = *(*(a2 + 10) + 8);
      std::operator+<char>();
      v73 = std::string::append(&v95, " has no value named ");
      v74 = *&v73->__r_.__value_.__l.__data_;
      v96.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&v96.__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      v75 = *(v33 + 23);
      if (v75 >= 0)
      {
        v76 = v33;
      }

      else
      {
        v76 = *v33;
      }

      if (v75 >= 0)
      {
        v77 = *(v33 + 23);
      }

      else
      {
        v77 = *(v33 + 8);
      }

      v78 = std::string::append(&v96, v76, v77);
      v79 = *&v78->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      v80 = std::string::append(&v97, " for option ");
      v81 = *&v80->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      v82 = *(a2 + 1);
      v83 = *(v82 + 23);
      if (v83 >= 0)
      {
        v84 = *(a2 + 1);
      }

      else
      {
        v84 = *v82;
      }

      if (v83 >= 0)
      {
        v85 = *(v82 + 23);
      }

      else
      {
        v85 = *(v82 + 8);
      }

      v86 = std::string::append(&v98, v84, v85);
      v87 = *&v86->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      v88 = std::string::append(&v99, ".");
      v89 = *&v88->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 8, &v100);
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v90 = v95.__r_.__value_.__r.__words[0];
      goto LABEL_154;
    }

    v35 = v32[1];
    if (*(v35 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v100, *v35, *(v35 + 1));
    }

    else
    {
      v36 = *v35;
      v100.__r_.__value_.__r.__words[2] = *(v35 + 2);
      *&v100.__r_.__value_.__l.__data_ = v36;
    }

    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
    if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v100.__r_.__value_.__l.__size_;
    }

    v47 = *(*v32 + 23);
    if (v47 < 0)
    {
      v47 = *(*v32 + 8);
    }

    std::string::resize(&v100, size - v47, 0);
    v48 = *(v33 + 23);
    if (v48 >= 0)
    {
      v49 = v33;
    }

    else
    {
      v49 = *v33;
    }

    if (v48 >= 0)
    {
      v50 = *(v33 + 23);
    }

    else
    {
      v50 = *(v33 + 8);
    }

    std::string::append(&v100, v49, v50);
    if (wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(*this, **this, &v100) == 4)
    {
      v45 = v51;
      if (*(v51 + 24) != v32)
      {
        v52 = v32[1];
        std::operator+<char>();
        v53 = std::string::append(&v94, " has no value named ");
        v54 = *&v53->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = *(v33 + 23);
        if (v55 >= 0)
        {
          v56 = v33;
        }

        else
        {
          v56 = *v33;
        }

        if (v55 >= 0)
        {
          v57 = *(v33 + 23);
        }

        else
        {
          v57 = *(v33 + 8);
        }

        v58 = std::string::append(&v95, v56, v57);
        v59 = *&v58->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = std::string::append(&v96, " for option ");
        v61 = *&v60->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        v62 = *(a2 + 1);
        v63 = *(v62 + 23);
        if (v63 >= 0)
        {
          v64 = *(a2 + 1);
        }

        else
        {
          v64 = *v62;
        }

        if (v63 >= 0)
        {
          v65 = *(v62 + 23);
        }

        else
        {
          v65 = *(v62 + 8);
        }

        v66 = std::string::append(&v97, v64, v65);
        v67 = *&v66->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = std::string::append(&v98, ". This appears to be a value from a sibling type.");
        v69 = *&v68->__r_.__value_.__l.__data_;
        v99.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
        *&v99.__r_.__value_.__l.__data_ = v69;
        v68->__r_.__value_.__l.__size_ = 0;
        v68->__r_.__value_.__r.__words[2] = 0;
        v68->__r_.__value_.__r.__words[0] = 0;
        wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 8, &v99);
        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        v70 = 0;
        v45 = 0;
LABEL_119:
        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if ((v70 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_122;
      }
    }

    else
    {
      v45 = 0;
    }

    v70 = 1;
    goto LABEL_119;
  }

  if (v7 == 9)
  {
    v21 = *(this + 2);
    if ((*(v21 + 92) & 0x20) != 0)
    {
      v38 = *(a2 + 10);
      v39 = *(v21 + 72);
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddLengthDelimited(a3);
    }

    goto LABEL_149;
  }

  if (v7 != 10)
  {
    return 1;
  }

  result = wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(this, a2, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_299867BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *wireless_diagnostics::google::protobuf::internal::scoped_ptr<wireless_diagnostics::google::protobuf::UnknownFieldSet>::reset(wireless_diagnostics::google::protobuf::UnknownFieldSet **a1, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  result = *a1;
  if (result != a2)
  {
    if (result)
    {
      wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(result);
      result = MEMORY[0x29C2A2070]();
    }

    *a1 = a2;
  }

  return result;
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(int a1, int a2, uint64_t a3, int a4, wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 17)
  {
    a3 = (2 * a3) ^ (a3 >> 31);
LABEL_9:

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  if (a4 != 15)
  {
    if (a4 != 5)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
      return;
    }

    a3 = a3;
    goto LABEL_9;
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
}

void sub_299867ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(int a1, int a2, uint64_t a3, int a4, wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 18)
  {
    a3 = (2 * a3) ^ (a3 >> 63);
LABEL_9:

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  if (a4 != 16)
  {
    if (a4 != 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
      return;
    }

    goto LABEL_9;
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
}

void sub_299867FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(int a1, int a2, unsigned int a3, int a4, wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 7)
  {

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
  }

  else if (a4 == 13)
  {

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }
}

void sub_2998680A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(int a1, int a2, uint64_t a3, int a4, wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 6)
  {

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
  }

  else if (a4 == 4)
  {

    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }

  else
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }
}

void sub_299868180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter *this, const wireless_diagnostics::google::protobuf::Descriptor ***a2, wireless_diagnostics::google::protobuf::UnknownFieldSet *a3)
{
  if ((*(*(this + 2) + 92) & 0x40) != 0)
  {
    Prototype = wireless_diagnostics::google::protobuf::DynamicMessageFactory::GetPrototype((this + 24), a2[9]);
    v25 = (*(*Prototype + 24))(Prototype);
    if (!v25)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::FieldDescriptor::DebugString(a2, &v39);
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
    }

    v39.__r_.__value_.__r.__words[0] = &unk_2A1F919C8;
    *&v39.__r_.__value_.__r.__words[1] = 0uLL;
    v40 = 0;
    v26 = *this;
    v43.__r_.__value_.__r.__words[0] = &unk_2A1F91A10;
    v43.__r_.__value_.__l.__size_ = v26;
    wireless_diagnostics::google::protobuf::TextFormat::Parser::Parser(&v38);
    v38.__r_.__value_.__r.__words[0] = &v39;
    v38.__r_.__value_.__l.__size_ = &v43;
    v22 = wireless_diagnostics::google::protobuf::TextFormat::Parser::ParseFromString(&v38, *(*(this + 2) + 80), v25);
    if (v22)
    {
      memset(&__str, 0, sizeof(__str));
      wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
      v27 = *(a2 + 11);
      if (v27 == 11)
      {
        v28 = *(a2 + 10);
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddLengthDelimited(a3);
      }

      if (v27 != 10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
      }

      v36 = *(a2 + 10);
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddGroup(a3);
    }

    v29 = *a2;
    std::operator+<char>();
    v30 = std::string::append(&v44, ": ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      size = &v39.__r_.__value_.__s.__data_[8];
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    if (v40 >= 0)
    {
      v33 = HIBYTE(v40);
    }

    else
    {
      v33 = v39.__r_.__value_.__r.__words[2];
    }

    v34 = std::string::append(&__str, size, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v42 = v34->__r_.__value_.__r.__words[2];
    *__p = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 8, __p);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    wireless_diagnostics::google::protobuf::TextFormat::Parser::~Parser(&v38);
    wireless_diagnostics::google::protobuf::TextFormat::Finder::~Finder(&v43);
    v39.__r_.__value_.__r.__words[0] = &unk_2A1F919C8;
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__size_);
    }

    wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(&v39);
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  else
  {
    v5 = a2[1];
    std::operator+<char>();
    v6 = std::string::append(&v43, " is a message. To set the entire message, use syntax like ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(*a2 + 23);
    if (v8 >= 0)
    {
      v9 = *a2;
    }

    else
    {
      v9 = **a2;
    }

    if (v8 >= 0)
    {
      v10 = *(*a2 + 23);
    }

    else
    {
      v10 = (*a2)[1];
    }

    v11 = std::string::append(&v44, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&__str, " = { <proto text format> }. To set fields within it, use syntax like ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = *(*a2 + 23);
    if (v15 >= 0)
    {
      v16 = *a2;
    }

    else
    {
      v16 = **a2;
    }

    if (v15 >= 0)
    {
      v17 = *(*a2 + 23);
    }

    else
    {
      v17 = (*a2)[1];
    }

    v18 = std::string::append(&v38, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v39, ".foo = value.");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v42 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    wireless_diagnostics::google::protobuf::DescriptorBuilder::AddError(*this, *(this + 1) + 24, *(this + 2), 8, __p);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  return v22;
}

void sub_299868668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a23);
  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  wireless_diagnostics::google::protobuf::TextFormat::Parser::~Parser(&a9);
  wireless_diagnostics::google::protobuf::TextFormat::Finder::~Finder(&a33);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::anonymous namespace::AggregateErrorCollector::~AggregateErrorCollector(void **this)
{
  *this = &unk_2A1F919C8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(this);
}

{
  *this = &unk_2A1F919C8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  wireless_diagnostics::google::protobuf::io::ErrorCollector::~ErrorCollector(this);

  JUMPOUT(0x29C2A2070);
}

uint64_t std::__hash_table<wireless_diagnostics::google::protobuf::Descriptor const*,wireless_diagnostics::google::protobuf::hash<wireless_diagnostics::google::protobuf::Descriptor const*>,std::equal_to<wireless_diagnostics::google::protobuf::Descriptor const*>,std::allocator<wireless_diagnostics::google::protobuf::Descriptor const*>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::string,wireless_diagnostics::google::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,wireless_diagnostics::google::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,wireless_diagnostics::google::protobuf::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *wireless_diagnostics::google::protobuf::DescriptorPool::Tables::CheckPoint::CheckPoint(_DWORD *this, const wireless_diagnostics::google::protobuf::DescriptorPool::Tables *a2)
{
  v2 = (*(a2 + 17) - *(a2 + 16)) >> 3;
  *this = (*(a2 + 14) - *(a2 + 13)) >> 3;
  this[1] = v2;
  v3 = (*(a2 + 23) - *(a2 + 22)) >> 3;
  this[2] = (*(a2 + 20) - *(a2 + 19)) >> 3;
  this[3] = v3;
  v4 = (*(a2 + 45) - *(a2 + 44)) >> 3;
  this[4] = (*(a2 + 42) - *(a2 + 41)) >> 3;
  this[5] = v4;
  this[6] = (*(a2 + 48) - *(a2 + 47)) >> 4;
  return this;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::hash<char const*>,wireless_diagnostics::google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>,wireless_diagnostics::google::protobuf::streq,wireless_diagnostics::google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,wireless_diagnostics::google::protobuf::FileDescriptor const*>>>::find<char const*>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v4 == v13)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v4)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(wireless_diagnostics::google::protobuf::internal::Mutex **this)
{
  v1 = *this;
  if (v1)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::Unlock(v1);
  }
}

uint64_t wireless_diagnostics::google::protobuf::anonymous namespace::DeleteGeneratedPool(wireless_diagnostics::google::protobuf::_anonymous_namespace_ *this)
{
  {
  }

  {
    result = MEMORY[0x29C2A2070]();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::__map_value_compare<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>,std::less<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>,true>,std::allocator<std::__value_type<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>,wireless_diagnostics::google::protobuf::FieldDescriptor const*>>>::find<std::pair<wireless_diagnostics::google::protobuf::Descriptor const*,int>>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 10) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 10) < v6;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = v7[4];
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 10))
  {
    return v2;
  }

  return v7;
}

uint64_t *wireless_diagnostics::google::protobuf::FindPtrOrNull<wireless_diagnostics::google::protobuf::hash_map<std::pair<void const*,char const*>,wireless_diagnostics::google::protobuf::FieldDescriptor const*,wireless_diagnostics::google::protobuf::anonymous namespace::PointerStringPairHash,wireless_diagnostics::google::protobuf::anonymous namespace::PointerStringPairEqual>>(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (v7)
  {
    v8 = *a2;
    v9 = v4 - *a2 + (*a2 << 16);
    v10 = vcnt_s8(v7);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v4 - *a2 + (*a2 << 16);
      if (v9 >= *&v7)
      {
        v12 = v9 % *&v7;
      }
    }

    else
    {
      v12 = (*&v7 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v9 == v15)
        {
          if (i[2] == v8 && !strcmp(i[3], v2))
          {
            return i[4];
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v15 >= *&v7)
            {
              v15 %= *&v7;
            }
          }

          else
          {
            v15 &= *&v7 - 1;
          }

          if (v15 != v12)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

BOOL wireless_diagnostics::google::protobuf::anonymous namespace::RetrieveOptions(int a1, const wireless_diagnostics::google::protobuf::Message *a2, uint64_t a3)
{
  v57[2] = *MEMORY[0x29EDCA608];
  std::vector<std::string>::clear[abi:ne200100](a3);
  v6 = (*(*a2 + 144))(a2);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v47 = v6;
  (*(*v6 + 96))(v6, a2, &v52);
  v7 = v52;
  if (v53 != v52)
  {
    v8 = 0;
    v48 = a2;
    while (1)
    {
      v49 = *(*&v7[8 * v8] + 48);
      if (v49 != 3)
      {
        break;
      }

      v9 = (*(*v47 + 48))(v47, a2);
      if (v9 >= 1)
      {
        goto LABEL_7;
      }

LABEL_66:
      ++v8;
      v7 = v52;
      if (v8 >= (v53 - v52) >> 3)
      {
        goto LABEL_67;
      }
    }

    v9 = 1;
LABEL_7:
    for (i = 0; i != v9; ++i)
    {
      memset(&v51, 0, sizeof(v51));
      v11 = *&v52[8 * v8];
      if ((*(v11 + 11) & 0xFFFFFFFE) == 0xA)
      {
        memset(&__p, 0, 24);
        wireless_diagnostics::google::protobuf::TextFormat::Printer::Printer(&v50);
        LODWORD(v50.__r_.__value_.__l.__data_) = a1 + 1;
        if (v49 == 3)
        {
          v12 = i;
        }

        else
        {
          v12 = 0xFFFFFFFFLL;
        }

        wireless_diagnostics::google::protobuf::TextFormat::Printer::PrintFieldValueToString(&v50, a2, *&v52[8 * v8], v12, &__p);
        std::string::append(&v51, "{\n");
        if (SHIBYTE(__p.__end_) >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__first_;
        }

        if (SHIBYTE(__p.__end_) >= 0)
        {
          end_high = HIBYTE(__p.__end_);
        }

        else
        {
          end_high = __p.__begin_;
        }

        std::string::append(&v51, p_p, end_high);
        std::string::append(&v51, 2 * a1, 32);
        std::string::append(&v51, "}");
        wireless_diagnostics::google::protobuf::TextFormat::Printer::~Printer(&v50);
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }
      }

      else
      {
        if (v49 == 3)
        {
          v15 = i;
        }

        else
        {
          v15 = 0xFFFFFFFFLL;
        }

        wireless_diagnostics::google::protobuf::TextFormat::PrintFieldValueToString(a2, v11, v15, &v51);
      }

      memset(&v50, 0, sizeof(v50));
      v16 = *&v52[8 * v8];
      if (*(v16 + 52) == 1)
      {
        v17 = *(v16 + 8);
        std::operator+<char>();
        v18 = std::string::append(&__p, ")");
        v19 = v18->__r_.__value_.__r.__words[0];
        v56.__r_.__value_.__r.__words[0] = v18->__r_.__value_.__l.__size_;
        *(v56.__r_.__value_.__r.__words + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
        v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        v50.__r_.__value_.__r.__words[0] = v19;
        v50.__r_.__value_.__l.__size_ = v56.__r_.__value_.__r.__words[0];
        *(&v50.__r_.__value_.__r.__words[1] + 7) = *(v56.__r_.__value_.__r.__words + 7);
        *(&v50.__r_.__value_.__s + 23) = v20;
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }
      }

      else
      {
        std::string::operator=(&v50, *v16);
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v56, size + 3);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v56;
      }

      else
      {
        v22 = v56.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v50;
        }

        else
        {
          v23 = v50.__r_.__value_.__r.__words[0];
        }

        memmove(v22, v23, size);
      }

      *(&v22->__r_.__value_.__l.__data_ + size) = 2112800;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v51;
      }

      else
      {
        v24 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v51.__r_.__value_.__l.__size_;
      }

      v26 = std::string::append(&v56, v24, v25);
      v27 = v26->__r_.__value_.__r.__words[0];
      v57[0] = v26->__r_.__value_.__l.__size_;
      *(v57 + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
      v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v29 = *(a3 + 8);
      v30 = *(a3 + 16);
      if (v29 >= v30)
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 3);
        v34 = v33 + 1;
        if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<wireless_diagnostics::google::protobuf::TextFormat::ParseLocation>::__throw_length_error[abi:ne200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a3) >> 3);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x555555555555555)
        {
          v36 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v36 = v34;
        }

        __p.__end_cap_.__value_ = a3;
        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v36);
        }

        v37 = 24 * v33;
        v38 = v57[0];
        *v37 = v27;
        *(v37 + 8) = v38;
        *(v37 + 15) = *(v57 + 7);
        *(v37 + 23) = v28;
        v32 = 24 * v33 + 24;
        v39 = *(a3 + 8) - *a3;
        v40 = v37 - v39;
        memcpy((v37 - v39), *a3, v39);
        v41 = *a3;
        *a3 = v40;
        *(a3 + 8) = v32;
        v42 = *(a3 + 16);
        *(a3 + 16) = 0;
        __p.__end_ = v41;
        __p.__end_cap_.__value_ = v42;
        __p.__first_ = v41;
        __p.__begin_ = v41;
        std::__split_buffer<std::string>::~__split_buffer(&__p);
        a2 = v48;
      }

      else
      {
        v31 = v57[0];
        *v29 = v27;
        *(v29 + 8) = v31;
        *(v29 + 15) = *(v57 + 7);
        *(v29 + 23) = v28;
        v32 = v29 + 24;
      }

      *(a3 + 8) = v32;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_66;
  }

LABEL_67:
  v44 = *a3;
  v43 = *(a3 + 8);
  if (v7)
  {
    v53 = v7;
    operator delete(v7);
  }

  result = v44 != v43;
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998692F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbol(uint64_t a1, std::string *a2)
{
  SymbolNotEnforcingDepsHelper = wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, *a1, a2);
  v19[0] = SymbolNotEnforcingDepsHelper;
  v19[1] = v5;
  if (SymbolNotEnforcingDepsHelper)
  {
    if (*(*a1 + 40) == 1)
    {
      v7 = *(a1 + 80);
      if (File != v7)
      {
        v8 = File;
        v10 = (a1 + 104);
        for (i = *(a1 + 104); i; i = *i)
        {
          v11 = i[4];
          if (File >= v11)
          {
            if (v11 >= File)
            {
              return SymbolNotEnforcingDepsHelper;
            }

            ++i;
          }
        }

        if (SymbolNotEnforcingDepsHelper != 7)
        {
          goto LABEL_20;
        }

        v12 = wireless_diagnostics::google::protobuf::DescriptorBuilder::IsInPackage(File, v7, &a2->__r_.__value_.__l.__data_);
        if (v12)
        {
          return SymbolNotEnforcingDepsHelper;
        }

        v13 = *(a1 + 96);
        if (v13 == v10)
        {
LABEL_20:
          *(a1 + 120) = v8;
          std::string::operator=((a1 + 128), a2);
        }

        while (1)
        {
          v14 = v13[4];
          if (v14)
          {
            LOBYTE(v12) = wireless_diagnostics::google::protobuf::DescriptorBuilder::IsInPackage(v12, v14, &a2->__r_.__value_.__l.__data_);
            if (v12)
            {
              break;
            }
          }

          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v17 = *v16 == v13;
              v13 = v16;
            }

            while (!v17);
          }

          v13 = v16;
          if (v16 == v10)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  return SymbolNotEnforcingDepsHelper;
}

unint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(wireless_diagnostics::google::protobuf::internal::Mutex ***a1, wireless_diagnostics::google::protobuf::internal::Mutex **a2, uint64_t a3)
{
  if (*a1 == a2)
  {
    v39 = 0;
  }

  else
  {
    v6 = *a2;
    v39 = v6;
    if (v6)
    {
      wireless_diagnostics::google::protobuf::internal::Mutex::Lock(v6);
    }
  }

  v7 = a2[4];
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = 0;
    v11 = (v8 + 1);
    do
    {
      v10 = 5 * v10 + v9;
      v12 = *v11++;
      v9 = v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  v13 = v7[26];
  if (!*&v13)
  {
    goto LABEL_30;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v10;
    if (v10 >= *&v13)
    {
      v16 = v10 % *&v13;
    }
  }

  else
  {
    v16 = (*&v13 - 1) & v10;
  }

  v17 = *(*&v7[25] + 8 * v16);
  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = *v17;
  if (!*v17)
  {
LABEL_30:
    v17 = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v19 = *(v18 + 8);
    if (v10 == v19)
    {
      if (!strcmp(*(v18 + 16), v8))
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v13)
      {
        v19 %= *&v13;
      }
    }

    else
    {
      v19 &= *&v13 - 1;
    }

    if (v19 != v16)
    {
      break;
    }

LABEL_28:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_32;
    }
  }

  v18 = 0;
LABEL_32:
  v17 = (v18 + 24);
  if (!v18)
  {
    v17 = 0;
  }

LABEL_34:
  if (!v17)
  {
  }

  v21 = *v17;
  v20 = v17[1];
  v22 = HIDWORD(*v17);
  if (*v17)
  {
    goto LABEL_37;
  }

  v24 = a2[3];
  if (v24)
  {
    SymbolNotEnforcingDepsHelper = wireless_diagnostics::google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, v24, a3);
    LODWORD(v21) = SymbolNotEnforcingDepsHelper;
    v22 = HIDWORD(SymbolNotEnforcingDepsHelper);
    if (SymbolNotEnforcingDepsHelper)
    {
      goto LABEL_37;
    }
  }

  if (!wireless_diagnostics::google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3))
  {
    LODWORD(v21) = 0;
    goto LABEL_37;
  }

  v26 = a2[4];
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v27 = *a3;
  if (*a3)
  {
    v28 = 0;
    v29 = (a3 + 1);
    do
    {
      v28 = 5 * v28 + v27;
      v30 = *v29++;
      v27 = v30;
    }

    while (v30);
  }

  else
  {
    v28 = 0;
  }

  v31 = v26[26];
  if (!*&v31)
  {
    goto LABEL_66;
  }

  v32 = vcnt_s8(v31);
  v32.i16[0] = vaddlv_u8(v32);
  v33 = v32.u32[0];
  if (v32.u32[0] > 1uLL)
  {
    v34 = v28;
    if (v28 >= *&v31)
    {
      v34 = v28 % *&v31;
    }
  }

  else
  {
    v34 = (*&v31 - 1) & v28;
  }

  v35 = *(*&v26[25] + 8 * v34);
  if (!v35)
  {
    goto LABEL_70;
  }

  v36 = *v35;
  if (!*v35)
  {
LABEL_66:
    v35 = 0;
    goto LABEL_70;
  }

  while (2)
  {
    v37 = *(v36 + 8);
    if (v28 == v37)
    {
      if (!strcmp(*(v36 + 16), a3))
      {
        goto LABEL_68;
      }

LABEL_64:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  if (v33 > 1)
  {
    if (v37 >= *&v31)
    {
      v37 %= *&v31;
    }
  }

  else
  {
    v37 &= *&v31 - 1;
  }

  if (v37 == v34)
  {
    goto LABEL_64;
  }

  v36 = 0;
LABEL_68:
  v35 = (v36 + 24);
  if (!v36)
  {
    v35 = 0;
  }

LABEL_70:
  if (!v35)
  {
  }

  v21 = *v35;
  v38 = v35[1];
  v22 = HIDWORD(*v35);
LABEL_37:
  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(&v39);
  return v21 | (v22 << 32);
}

void sub_2998698D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

std::string *wireless_diagnostics::google::protobuf::anonymous namespace::AggregateErrorCollector::AddError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 31);
  if (v6 < 0)
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    std::string::append((a1 + 8), "; ");
  }

  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if (v7 >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = *(a4 + 8);
  }

  return std::string::append((a1 + 8), v8, v9);
}

void wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::~AggregateOptionFinder(wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder *this)
{
  wireless_diagnostics::google::protobuf::TextFormat::Finder::~Finder(this);

  JUMPOUT(0x29C2A2070);
}

uint64_t wireless_diagnostics::google::protobuf::DescriptorBuilder::OptionInterpreter::AggregateOptionFinder::FindExtension(uint64_t a1, uint64_t a2, std::string *a3)
{
  v6 = ***(a1 + 8);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::internal::Mutex::AssertHeld(v6);
  }

  v7 = (*(*a2 + 152))(a2);
  v8 = wireless_diagnostics::google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(*(a1 + 8), a3, *(v7 + 8), 0);
  if (v8 != 1)
  {
    if (v8 == 2)
    {
      result = v9;
      if (*(v9 + 52))
      {
        return result;
      }
    }

    return 0;
  }

  if (*(*(v7 + 32) + 64) != 1)
  {
    return 0;
  }

  v11 = *(v9 + 104);
  if (v11 < 1)
  {
    return 0;
  }

  for (result = *(v9 + 112); *(result + 56) != v7 || *(result + 44) != 11 || *(result + 48) != 1 || *(result + 72) != v9; result += 120)
  {
    if (!--v11)
    {
      return 0;
    }
  }

  return result;
}