void google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::DescriptorPool::Tables **this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  if (!*(a2 + 15))
  {
    *(a2 + 15) = google::protobuf::FieldOptions::default_instance(this);
  }

  google::protobuf::FileDescriptorTables::AddFieldByStylizedNames(this[11], a2);
  if ((*(a3 + 16) & 2) != 0)
  {
    v16 = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 4) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), 2, 0, 1);
    if (v16 != 1)
    {
      if (!v16)
      {
        v19 = *(a2 + 1);
        v20 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;

        google::protobuf::DescriptorBuilder::AddNotDefinedError(this, v19, a3, 3, v20);
        return;
      }

      v41 = *(a2 + 1);
      v42 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;
      std::operator+<char>();
      v43 = std::string::append(&v140, " is not a message type.");
      v44 = *&v43->__r_.__value_.__l.__data_;
      __dst[0].__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&__dst[0].__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::DescriptorBuilder::AddError(this, v41, a3, 3, __dst);
      goto LABEL_111;
    }

    v31 = v17;
    *(a2 + 10) = v17;
    v32 = *(a2 + 17);
    v33 = *(v17 + 124);
    if (v33 < 1)
    {
LABEL_41:
      if (*(*this + 42) != 1 || (v35 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL, (*(v35 + 23) & 0x80000000) == 0) || *(v35 + 8) != 33 || memcmp(*v35, "google.protobuf.bridge.MessageSet", 0x21uLL))
      {
        v36 = *(a2 + 1);
        v37 = *(v31 + 8);
        v38 = *(v37 + 23);
        v39 = *(v37 + 8);
        if (v38 < 0)
        {
          v37 = *v37;
        }

        __dst[0].__r_.__value_.__r.__words[0] = v37;
        if (v38 >= 0)
        {
          v40 = v38;
        }

        else
        {
          v40 = v39;
        }

        LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = v40;
        v140.__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(v32, &v140.__r_.__value_.__s.__data_[12], v18);
        LODWORD(v140.__r_.__value_.__r.__words[1]) = strlen(v140.__r_.__value_.__l.__data_);
        v139.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v139.__r_.__value_.__r.__words[1]) = -1;
        v138.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v138.__r_.__value_.__r.__words[1]) = -1;
        v136 = 0;
        v137 = -1;
        v134 = 0;
        v135 = -1;
        v132 = 0;
        v133 = -1;
        v130 = 0;
        v131 = -1;
        v128 = 0;
        v129 = -1;
        v126 = 0;
        v127 = -1;
        *&v120 = &v130;
        *(&v120 + 1) = &v128;
        google::protobuf::strings::Substitute("$0 does not declare $1 as an extension number.", __dst, &v140, &v139, &v138, &v136, &v134, &v132, &__p, v120, &v126);
        google::protobuf::DescriptorBuilder::AddError(this, v36, a3, 1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v34 = (*(v17 + 72) + 4);
      while (*(v34 - 1) > v32 || *v34 <= v32)
      {
        v34 += 4;
        if (!--v33)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (*(a2 + 11) && *(a2 + 15) != 1)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 0, "Fields of oneofs must themselves have label LABEL_OPTIONAL.");
  }

  v6 = *(a3 + 4);
  if ((v6 & 4) == 0)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v138.__r_.__value_.__r.__words[0] = a2;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        __dst[0].__r_.__value_.__r.__words[0] = &v139;
        __dst[0].__r_.__value_.__l.__size_ = &v138;
        v140.__r_.__value_.__r.__words[0] = __dst;
        std::__call_once(v7, &v140, sub_1000B32C4);
      }
    }

    v8 = *(a2 + 14);
    if ((v8 & 0xFFFFFFFE) == 0xA)
    {
      goto LABEL_17;
    }

    v9 = *(a2 + 6);
    if (v9)
    {
      v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v138.__r_.__value_.__r.__words[0] = a2;
      if (atomic_load_explicit(v9, memory_order_acquire) != -1)
      {
        __dst[0].__r_.__value_.__r.__words[0] = &v139;
        __dst[0].__r_.__value_.__l.__size_ = &v138;
        v140.__r_.__value_.__r.__words[0] = __dst;
        std::__call_once(v9, &v140, sub_1000B32C4);
      }

      v8 = *(a2 + 14);
    }

    if (v8 == 14)
    {
LABEL_17:
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Field with message or enum type missing type_name.");
    }

    goto LABEL_18;
  }

  v21 = (v6 >> 3) & 1;
  if (*(a3 + 22) == 14)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (*(*this + 43))
  {
    v23 = 0;
  }

  else
  {
    v45 = *(a3 + 8);
    if (!v45)
    {
      v45 = &google::protobuf::_FieldOptions_default_instance_;
    }

    v23 = v45[79];
  }

  v46 = *(*this + 41) & (v23 ^ 1);
  Symbol = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 5) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), v22, 1, (v46 & 1) == 0);
  v49 = v48;
  if (!Symbol)
  {
    if (v46)
    {
      v51 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v51 + 23) < 0)
      {
        sub_1000B32D8(__dst, *v51, *(v51 + 8));
      }

      else
      {
        v52 = *v51;
        __dst[0].__r_.__value_.__r.__words[2] = *(v51 + 16);
        *&__dst[0].__r_.__value_.__l.__data_ = v52;
      }

      google::protobuf::DescriptorPool::Tables::AllocateOnceDynamic(this[1]);
    }

    if (v23)
    {
      sub_1000B347C(__dst, "google.protobuf.Empty");
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(this, __dst, 1);
      v49 = v60;
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }
    }

    if (!Symbol)
    {
      google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 2, *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL);
      return;
    }
  }

  if ((*(a3 + 17) & 4) == 0)
  {
    if (Symbol == 1)
    {
      v50 = 11;
    }

    else
    {
      if (Symbol != 4)
      {
        v68 = *(a2 + 1);
        v69 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v70 = std::string::append(&v140, " is not a type.");
        v71 = *&v70->__r_.__value_.__l.__data_;
        __dst[0].__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
        *&__dst[0].__r_.__value_.__l.__data_ = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(this, v68, a3, 2, __dst);
        goto LABEL_111;
      }

      v50 = 14;
    }

    *(a2 + 14) = v50;
  }

  v61 = *(a2 + 6);
  if (v61)
  {
    v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v138.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v61, memory_order_acquire) != -1)
    {
      __dst[0].__r_.__value_.__r.__words[0] = &v139;
      __dst[0].__r_.__value_.__l.__size_ = &v138;
      v140.__r_.__value_.__r.__words[0] = __dst;
      std::__call_once(v61, &v140, sub_1000B32C4);
    }
  }

  v62 = *(a2 + 14);
  if ((v62 & 0xFFFFFFFE) != 0xA)
  {
    v63 = *(a2 + 6);
    if (v63)
    {
      v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v138.__r_.__value_.__r.__words[0] = a2;
      if (atomic_load_explicit(v63, memory_order_acquire) != -1)
      {
        __dst[0].__r_.__value_.__r.__words[0] = &v139;
        __dst[0].__r_.__value_.__l.__size_ = &v138;
        v140.__r_.__value_.__r.__words[0] = __dst;
        std::__call_once(v63, &v140, sub_1000B32C4);
      }

      v62 = *(a2 + 14);
    }

    if (v62 != 14)
    {
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Field with primitive type has type_name.");
      goto LABEL_18;
    }

    if (Symbol != 4)
    {
      v72 = *(a2 + 1);
      v73 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
      std::operator+<char>();
      v74 = std::string::append(&v140, " is not an enum type.");
      v75 = *&v74->__r_.__value_.__l.__data_;
      __dst[0].__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&__dst[0].__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::DescriptorBuilder::AddError(this, v72, a3, 2, __dst);
      goto LABEL_111;
    }

    *(a2 + 14) = v49;
    if (*(google::protobuf::FieldDescriptor::enum_type(a2) + 40) == 1)
    {
      *(a2 + 64) = 0;
    }

    else if (*(a2 + 64))
    {
      if (google::protobuf::io::Tokenizer::IsIdentifier(*(a3 + 6) & 0xFFFFFFFFFFFFFFFELL))
      {
        v103 = *(a3 + 6);
        v104 = google::protobuf::FieldDescriptor::enum_type(a2);
        if (google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, (v103 & 0xFFFFFFFFFFFFFFFELL), *(v104 + 8), 0, 1) == 5 && (v106 = v105, v107 = *(v105 + 24), v107 == google::protobuf::FieldDescriptor::enum_type(a2)))
        {
          *(a2 + 18) = v106;
        }

        else
        {
          v108 = *(a2 + 1);
          v109 = *(google::protobuf::FieldDescriptor::enum_type(a2) + 8);
          std::operator+<char>();
          v110 = std::string::append(&v138, " has no value named ");
          v111 = *&v110->__r_.__value_.__l.__data_;
          v139.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v139.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          v112 = *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL;
          v113 = *(v112 + 23);
          if (v113 >= 0)
          {
            v114 = (*(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v114 = *v112;
          }

          if (v113 >= 0)
          {
            v115 = *(v112 + 23);
          }

          else
          {
            v115 = *(v112 + 8);
          }

          v116 = std::string::append(&v139, v114, v115);
          v117 = *&v116->__r_.__value_.__l.__data_;
          v140.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
          *&v140.__r_.__value_.__l.__data_ = v117;
          v116->__r_.__value_.__l.__size_ = 0;
          v116->__r_.__value_.__r.__words[2] = 0;
          v116->__r_.__value_.__r.__words[0] = 0;
          v118 = std::string::append(&v140, ".");
          v119 = *&v118->__r_.__value_.__l.__data_;
          __dst[0].__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
          *&__dst[0].__r_.__value_.__l.__data_ = v119;
          v118->__r_.__value_.__l.__size_ = 0;
          v118->__r_.__value_.__r.__words[2] = 0;
          v118->__r_.__value_.__r.__words[0] = 0;
          google::protobuf::DescriptorBuilder::AddError(this, v108, a3, 4, __dst);
          if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst[0].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v139.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 4, "Default value for an enum field must be an identifier.");
      }

LABEL_18:
      if (google::protobuf::FileDescriptorTables::AddFieldByNumber(this[11], a2))
      {
        if (*(a2 + 67) == 1 && (google::protobuf::DescriptorPool::Tables::AddExtension(this[1], a2) & 1) == 0)
        {
          v11 = this[1];
          v12 = *(a2 + 17);
          __dst[0].__r_.__value_.__r.__words[0] = *(a2 + 10);
          LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = v12;
          v13 = sub_1000CD868(v11 + 384, __dst);
          if ((v11 + 392) == v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v13[6];
          }

          v77 = *(a2 + 10);
          if (v77)
          {
            v78 = *(v77 + 8);
            if (*(v78 + 23) < 0)
            {
              sub_1000B32D8(&__p, *v78, *(v78 + 1));
            }

            else
            {
              v79 = *v78;
              __p.__r_.__value_.__r.__words[2] = *(v78 + 2);
              *&__p.__r_.__value_.__l.__data_ = v79;
            }
          }

          else
          {
            sub_1000B347C(&__p, "unknown");
          }

          __dst[0].__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(*(a2 + 17), &__dst[0].__r_.__value_.__s.__data_[12], v14);
          LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = strlen(__dst[0].__r_.__value_.__l.__data_);
          v93 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v140.__r_.__value_.__r.__words[0] = p_p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v93 = __p.__r_.__value_.__r.__words[1];
          }

          LODWORD(v140.__r_.__value_.__r.__words[1]) = v93;
          v95 = *(v15 + 8);
          v96 = *(v95 + 23);
          v97 = *(v95 + 8);
          if (v96 < 0)
          {
            v95 = *v95;
          }

          v139.__r_.__value_.__r.__words[0] = v95;
          if (v96 >= 0)
          {
            v98 = v96;
          }

          else
          {
            v98 = v97;
          }

          LODWORD(v139.__r_.__value_.__r.__words[1]) = v98;
          v99 = **(v15 + 40);
          v100 = *(v99 + 23);
          v101 = *(v99 + 8);
          if (v100 < 0)
          {
            v99 = *v99;
          }

          v138.__r_.__value_.__r.__words[0] = v99;
          if (v100 >= 0)
          {
            v102 = v100;
          }

          else
          {
            v102 = v101;
          }

          LODWORD(v138.__r_.__value_.__r.__words[1]) = v102;
          v136 = 0;
          v137 = -1;
          v134 = 0;
          v135 = -1;
          v132 = 0;
          v133 = -1;
          v130 = 0;
          v131 = -1;
          v128 = 0;
          v129 = -1;
          v126 = 0;
          v127 = -1;
          *&v123 = &v130;
          *(&v123 + 1) = &v128;
          google::protobuf::strings::Substitute("Extension number $0 has already been used in $1 by extension $2 defined in $3.", __dst, &v140, &v139, &v138, &v136, &v134, &v132, &v124, v123, &v126);
          google::protobuf::DescriptorBuilder::AddWarning(this, *(a2 + 1), a3, 1, &v124);
          goto LABEL_161;
        }

        return;
      }

      v24 = this[11];
      v25 = *(a2 + 10);
      v26 = v24[20];
      if (v26)
      {
        v27 = *(a2 + 17);
        v28 = (16777619 * v27) ^ (16777499 * v25);
        v29 = vcnt_s8(v26);
        v29.i16[0] = vaddlv_u8(v29);
        if (v29.u32[0] > 1uLL)
        {
          v30 = (16777619 * v27) ^ (16777499 * v25);
          if (v28 >= *&v26)
          {
            v30 = v28 % *&v26;
          }
        }

        else
        {
          v30 = v28 & (*&v26 - 1);
        }

        v53 = *(*&v24[19] + 8 * v30);
        if (v53)
        {
          for (i = *v53; i; i = *i)
          {
            v55 = i[1];
            if (v28 == v55)
            {
              if (i[2] == v25 && *(i + 6) == v27)
              {
                v57 = i[4];
                if (!v25)
                {
LABEL_123:
                  sub_1000B347C(&__p, "unknown");
LABEL_124:
                  v80 = *(a2 + 1);
                  if (*(a2 + 67) == 1)
                  {
                    __dst[0].__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(*(a2 + 17), &__dst[0].__r_.__value_.__s.__data_[12], v10);
                    LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = strlen(__dst[0].__r_.__value_.__l.__data_);
                    v81 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                    v82 = &__p;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v82 = __p.__r_.__value_.__r.__words[0];
                    }

                    v140.__r_.__value_.__r.__words[0] = v82;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v81 = __p.__r_.__value_.__r.__words[1];
                    }

                    LODWORD(v140.__r_.__value_.__r.__words[1]) = v81;
                    v83 = v57[1];
                    v84 = *(v83 + 23);
                    v85 = *(v83 + 8);
                    if (v84 < 0)
                    {
                      v83 = *v83;
                    }

                    v139.__r_.__value_.__r.__words[0] = v83;
                    if (v84 >= 0)
                    {
                      v86 = v84;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    LODWORD(v139.__r_.__value_.__r.__words[1]) = v86;
                    v138.__r_.__value_.__r.__words[0] = 0;
                    LODWORD(v138.__r_.__value_.__r.__words[1]) = -1;
                    v136 = 0;
                    v137 = -1;
                    v134 = 0;
                    v135 = -1;
                    v132 = 0;
                    v133 = -1;
                    v130 = 0;
                    v131 = -1;
                    v128 = 0;
                    v129 = -1;
                    v126 = 0;
                    v127 = -1;
                    *&v121 = &v130;
                    *(&v121 + 1) = &v128;
                    google::protobuf::strings::Substitute("Extension number $0 has already been used in $1 by extension $2.", __dst, &v140, &v139, &v138, &v136, &v134, &v132, &v124, v121, &v126);
                    google::protobuf::DescriptorBuilder::AddError(this, v80, a3, 1, &v124);
                  }

                  else
                  {
                    __dst[0].__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(*(a2 + 17), &__dst[0].__r_.__value_.__s.__data_[12], v10);
                    LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = strlen(__dst[0].__r_.__value_.__l.__data_);
                    v87 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                    v88 = &__p;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v88 = __p.__r_.__value_.__r.__words[0];
                    }

                    v140.__r_.__value_.__r.__words[0] = v88;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v87 = __p.__r_.__value_.__r.__words[1];
                    }

                    LODWORD(v140.__r_.__value_.__r.__words[1]) = v87;
                    v89 = *v57;
                    v90 = *(*v57 + 23);
                    v91 = *(*v57 + 8);
                    if (v90 < 0)
                    {
                      v89 = **v57;
                    }

                    v139.__r_.__value_.__r.__words[0] = v89;
                    if (v90 >= 0)
                    {
                      v92 = v90;
                    }

                    else
                    {
                      v92 = v91;
                    }

                    LODWORD(v139.__r_.__value_.__r.__words[1]) = v92;
                    v138.__r_.__value_.__r.__words[0] = 0;
                    LODWORD(v138.__r_.__value_.__r.__words[1]) = -1;
                    v136 = 0;
                    v137 = -1;
                    v134 = 0;
                    v135 = -1;
                    v132 = 0;
                    v133 = -1;
                    v130 = 0;
                    v131 = -1;
                    v128 = 0;
                    v129 = -1;
                    v126 = 0;
                    v127 = -1;
                    *&v122 = &v130;
                    *(&v122 + 1) = &v128;
                    google::protobuf::strings::Substitute("Field number $0 has already been used in $1 by field $2.", __dst, &v140, &v139, &v138, &v136, &v134, &v132, &v124, v122, &v126);
                    google::protobuf::DescriptorBuilder::AddError(this, v80, a3, 1, &v124);
                  }

LABEL_161:
                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v76 = __p.__r_.__value_.__r.__words[0];
LABEL_165:
                    operator delete(v76);
                  }

                  return;
                }

LABEL_82:
                v58 = *(v25 + 8);
                if (*(v58 + 23) < 0)
                {
                  sub_1000B32D8(&__p, *v58, *(v58 + 1));
                }

                else
                {
                  v59 = *v58;
                  __p.__r_.__value_.__r.__words[2] = *(v58 + 2);
                  *&__p.__r_.__value_.__l.__data_ = v59;
                }

                goto LABEL_124;
              }
            }

            else
            {
              if (v29.u32[0] > 1uLL)
              {
                if (v55 >= *&v26)
                {
                  v55 %= *&v26;
                }
              }

              else
              {
                v55 &= *&v26 - 1;
              }

              if (v55 != v30)
              {
                break;
              }
            }
          }
        }
      }

      v57 = 0;
      if (!v25)
      {
        goto LABEL_123;
      }

      goto LABEL_82;
    }

    if (*(google::protobuf::FieldDescriptor::enum_type(a2) + 44) >= 1)
    {
      *(a2 + 18) = *(google::protobuf::FieldDescriptor::enum_type(a2) + 48);
    }

    goto LABEL_18;
  }

  if (Symbol == 1)
  {
    *(a2 + 13) = v49;
    if (*(a2 + 64) == 1)
    {
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 4, "Messages can't have default values.");
    }

    goto LABEL_18;
  }

  v64 = *(a2 + 1);
  v65 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
  std::operator+<char>();
  v66 = std::string::append(&v140, " is not a message type.");
  v67 = *&v66->__r_.__value_.__l.__data_;
  __dst[0].__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
  *&__dst[0].__r_.__value_.__l.__data_ = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::DescriptorBuilder::AddError(this, v64, a3, 2, __dst);
LABEL_111:
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    v76 = v140.__r_.__value_.__r.__words[0];
    goto LABEL_165;
  }
}

void sub_1000C7B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v60 - 121) < 0)
  {
    operator delete(*(v60 - 144));
  }

  if (*(v60 - 169) < 0)
  {
    operator delete(*(v60 - 192));
  }

  if (*(v60 - 217) < 0)
  {
    operator delete(*(v60 - 240));
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

google::protobuf::EnumOptions *google::protobuf::DescriptorBuilder::CrossLinkEnum(google::protobuf::EnumOptions *this, google::protobuf::EnumDescriptor *a2, const google::protobuf::EnumDescriptorProto *a3)
{
  if (!*(a2 + 4))
  {
    this = google::protobuf::EnumOptions::default_instance(this);
    *(a2 + 4) = this;
  }

  v4 = *(a2 + 11);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 6);
      if (!*(v7 + v6))
      {
        this = google::protobuf::EnumValueOptions::default_instance(this);
        *(v7 + v6) = this;
        v4 = *(a2 + 11);
      }

      ++v5;
      v6 += 40;
    }

    while (v5 < v4);
  }

  return this;
}

void google::protobuf::DescriptorBuilder::CrossLinkService(google::protobuf::DescriptorBuilder *this, google::protobuf::ServiceDescriptor *a2, const google::protobuf::ServiceDescriptorProto *a3)
{
  if (!*(a2 + 3))
  {
    *(a2 + 3) = google::protobuf::ServiceOptions::default_instance(this);
  }

  if (*(a2 + 10) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkMethod(this, (*(a2 + 4) + v6), *(*(a3 + 5) + 8 * v7++ + 8));
      v6 += 104;
    }

    while (v7 < *(a2 + 10));
  }
}

void google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::DescriptorBuilder *this, google::protobuf::MethodDescriptor *a2, const google::protobuf::MethodDescriptorProto *a3)
{
  if (!*(a2 + 11))
  {
    *(a2 + 11) = google::protobuf::MethodOptions::default_instance(this);
  }

  v6 = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 4) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), 0, 0, (*(*this + 41) & 1) == 0);
  if (v6 == 1)
  {
    google::protobuf::internal::LazyDescriptor::Set((a2 + 24), v7);
  }

  else if (v6)
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;
    std::operator+<char>();
    v11 = std::string::append(&v20, " is not a message type.");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v9, a3, 5, __p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(*this + 41))
    {
      sub_1000B3420(__p, (*(a3 + 4) & 0xFFFFFFFFFFFFFFFELL), v8);
      google::protobuf::internal::LazyDescriptor::SetLazy(a2 + 3, __p[0], __p[1], *(this + 10));
    }

    google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 5, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
  }

  v13 = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 5) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), 0, 0, (*(*this + 41) & 1) == 0);
  if (v13 == 1)
  {
    google::protobuf::internal::LazyDescriptor::Set((a2 + 56), v14);
  }

  else if (v13)
  {
    v16 = *(a2 + 1);
    v17 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
    std::operator+<char>();
    v18 = std::string::append(&v20, " is not a message type.");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v22 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v16, a3, 6, __p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(*this + 41))
    {
      sub_1000B3420(__p, (*(a3 + 5) & 0xFFFFFFFFFFFFFFFELL), v15);
      google::protobuf::internal::LazyDescriptor::SetLazy(a2 + 7, __p[0], __p[1], *(this + 10));
    }

    google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 6, *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL);
  }
}

void sub_1000C7F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void google::protobuf::internal::LazyDescriptor::SetLazy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7414);
    v8 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !descriptor_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a1[3])
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7415);
    v9 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !file_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7416);
    v10 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !name_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a1[2])
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7417);
    v11 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !once_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (!a4 || (v12 = *(a4 + 16)) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7418);
    v13 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: file && file->pool_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    v12 = *(a4 + 16);
  }

  if ((*(v12 + 41) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7419);
    v14 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: file->pool_->lazily_build_dependencies_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (*(a4 + 65) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7420);
    v15 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !file->finished_building_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  a1[3] = a4;
  google::protobuf::DescriptorPool::Tables::AllocateString(*(*(a4 + 16) + 32), a2, a3);
}

void sub_1000C8214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::LazyDescriptor::Set(google::protobuf::internal::LazyDescriptor *this, const google::protobuf::Descriptor *a2)
{
  if (*(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7405);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !name_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7406);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !once_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 3))
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7407);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !file_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  *this = a2;
}

void sub_1000C8358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateMessageOptions(std::once_flag::_State_type *this, google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  if (*(a2 + 26) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 5) + v6), *(*(a3 + 5) + 8 * v7++ + 8));
      v6 += 152;
    }

    while (v7 < *(a2 + 26));
  }

  if (*(a2 + 29) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 7) + v8), *(*(a3 + 8) + 8 * v9++ + 8));
      v8 += 144;
    }

    while (v9 < *(a2 + 29));
  }

  if (*(a2 + 30) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 8) + v10), *(*(a3 + 11) + 8 * v11++ + 8));
      v10 += 80;
    }

    while (v11 < *(a2 + 30));
  }

  if (*(a2 + 32) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 10) + v12), *(*(a3 + 17) + 8 * v13++ + 8));
      v12 += 152;
    }

    while (v13 < *(a2 + 32));
  }

  if (*(*(a2 + 4) + 72))
  {
    v14 = 0x7FFFFFFFLL;
  }

  else
  {
    v14 = 0x1FFFFFFFLL;
  }

  v15 = *(a2 + 31);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 4;
    do
    {
      if ((v14 + 1) < *(*(a2 + 9) + v17))
      {
        v18 = *(a2 + 1);
        v19 = *(*(a3 + 14) + 8 * v16 + 8);
        v40 = google::protobuf::FastInt64ToBuffer(v14, v42, a3);
        v41 = strlen(v40);
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
        *(&v20 + 1) = &v24;
        *&v20 = &v26;
        google::protobuf::strings::Substitute("Extension numbers cannot be greater than $0.", &v40, &v38, &v36, &v34, &v32, &v30, &v28, &__p, v20, &v22);
        google::protobuf::DescriptorBuilder::AddError(this, v18, v19, 1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 31);
      }

      ++v16;
      v17 += 16;
    }

    while (v16 < v15);
  }
}

void sub_1000C8644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateEnumOptions(google::protobuf::DescriptorBuilder *this, google::protobuf::EnumDescriptor *a2, const google::protobuf::EnumDescriptorProto *a3)
{
  v6 = *(a2 + 4);
  if ((*(v6 + 40) & 1) == 0 || (*(v6 + 72) & 1) == 0)
  {
    v36[1] = 0;
    v35 = v36;
    v36[0] = 0;
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
          v15 = std::string::append(&v30, " uses the same enum value as ");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v31.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v31.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v29 = *(v8 + 16);
          v36[3] = &v29;
          v17 = sub_1000D5E14(&v35, &v29);
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

          v24 = std::string::append(&v31, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&v32, ". If this is intended, set 'option allow_alias = true;' to the enum definition.");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v34 = v26->__r_.__value_.__r.__words[2];
          *__p = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
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

          if ((*(*(a2 + 4) + 72) & 1) == 0)
          {
            google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), *(*(a3 + 5) + 8 * v7 + 8), 1, __p);
          }

          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
LABEL_12:
          v12 = *(v8 + 8);
          LODWORD(v32.__r_.__value_.__l.__data_) = v9;
          __p[0] = &v32;
          v13 = sub_1000D5E14(&v35, &v32);
          std::string::operator=((v13 + 5), v12);
        }

        ++v7;
      }

      while (v7 < *(a2 + 11));
      v28 = v36[0];
    }

    sub_1000D5DB0(&v35, v28);
  }
}

void sub_1000C88D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, char *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1000D5DB0(&a36, a37);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateServiceOptions(google::protobuf::FileOptions *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v7 = *(v3 + 136);
    if (v7 != google::protobuf::FileOptions::default_instance(a1) && *(*(v3 + 136) + 160) == 3)
    {
      v8 = *(*(a2 + 16) + 136);
      if ((*(v8 + 155) & 1) != 0 || *(v8 + 156) == 1)
      {
        v9 = *(a2 + 8);

        google::protobuf::DescriptorBuilder::AddError(a1, v9, a3, 0, "Files with optimize_for = LITE_RUNTIME cannot define services unless you set both options cc_generic_services and java_generic_services to false.");
      }
    }
  }
}

void google::protobuf::DescriptorBuilder::ValidateFieldOptions(std::once_flag::_State_type *this, const std::string::value_type **a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v5 = this;
  if (*(*this + 41) == 1)
  {
    if (!a2)
    {
      return;
    }

    this = google::protobuf::FieldDescriptor::message_type(a2);
    if (!this)
    {
      return;
    }
  }

  if (a2[15][77] == 1)
  {
    this = a2[6];
    if (this)
    {
      v29 = a2;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(this, memory_order_acquire) != -1)
      {
        __p.__r_.__value_.__r.__words[0] = &v30;
        __p.__r_.__value_.__l.__size_ = &v29;
        p_p = &__p;
        std::__call_once(this, &p_p, sub_1000B32C4);
      }
    }

    if (*(a2 + 14) != 11)
    {
      google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 2, "[lazy = true] can only be specified for submessage fields.");
    }
  }

  if (a2[15][76] == 1)
  {
    if (*(a2 + 15) != 3)
    {
      goto LABEL_16;
    }

    this = a2[6];
    if (this)
    {
      v29 = a2;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(this, memory_order_acquire) != -1)
      {
        __p.__r_.__value_.__r.__words[0] = &v30;
        __p.__r_.__value_.__l.__size_ = &v29;
        p_p = &__p;
        std::__call_once(this, &p_p, sub_1000B32C4);
      }
    }

    if ((*(a2 + 14) - 13) >= 0xFFFFFFFC)
    {
LABEL_16:
      google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 2, "[packed = true] can only be specified for repeated primitive fields.");
    }
  }

  v6 = a2[10];
  if (v6)
  {
    v7 = *(v6 + 4);
    this = google::protobuf::MessageOptions::default_instance(this);
    if (v7 != this && *(*(a2[10] + 4) + 72) == 1)
    {
      if (*(a2 + 67) != 1)
      {
        v8 = a2[1];
        v9 = "MessageSets cannot have fields, only extensions.";
        v10 = v5;
        v11 = a3;
        v12 = 0;
        goto LABEL_28;
      }

      if (*(a2 + 15) != 1)
      {
        goto LABEL_26;
      }

      this = a2[6];
      if (this)
      {
        v29 = a2;
        v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(this, memory_order_acquire) != -1)
        {
          __p.__r_.__value_.__r.__words[0] = &v30;
          __p.__r_.__value_.__l.__size_ = &v29;
          p_p = &__p;
          std::__call_once(this, &p_p, sub_1000B32C4);
        }
      }

      if (*(a2 + 14) != 11)
      {
LABEL_26:
        v8 = a2[1];
        v9 = "Extensions of MessageSets must be optional messages.";
        v10 = v5;
        v11 = a3;
        v12 = 2;
LABEL_28:
        google::protobuf::DescriptorBuilder::AddError(v10, v8, v11, v12, v9);
      }
    }
  }

  v13 = a2[5];
  if (v13)
  {
    v14 = *(v13 + 17);
    v15 = google::protobuf::FileOptions::default_instance(this);
    if (v14 != v15 && *(*(v13 + 17) + 160) == 3)
    {
      v16 = a2[10];
      if (v16)
      {
        v17 = *(v16 + 2);
        if (!v17 || (v18 = *(v17 + 136), v18 == google::protobuf::FileOptions::default_instance(v15)) || *(*(v17 + 136) + 160) != 3)
        {
          google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 3, "Extensions to non-lite types can only be declared in non-lite files.  Note that you cannot extend a non-lite type to contain a lite type, but the reverse is allowed.");
        }
      }
    }
  }

  v19 = a2[6];
  if (v19)
  {
    v29 = a2;
    v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      __p.__r_.__value_.__r.__words[0] = &v30;
      __p.__r_.__value_.__l.__size_ = &v29;
      p_p = &__p;
      std::__call_once(v19, &p_p, sub_1000B32C4);
    }
  }

  if (*(a2 + 14) == 11 && *(*(a2[13] + 4) + 75) == 1 && !google::protobuf::DescriptorBuilder::ValidateMapEntry(v5, a2, a3))
  {
    google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 2, "map_entry should not be set explicitly. Use map<KeyType, ValueType> instead.");
  }

  google::protobuf::DescriptorBuilder::ValidateJSType(v5, a2, a3);
  if (*(a2 + 67) == 1 && *(a2 + 66) == 1)
  {
    v20 = a2[4];
    sub_1000C50A0(*a2, &__p);
    v21 = *(v20 + 23);
    if (v21 >= 0)
    {
      v22 = *(v20 + 23);
    }

    else
    {
      v22 = v20[1];
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v22 == size)
    {
      if (v21 >= 0)
      {
        v25 = v20;
      }

      else
      {
        v25 = *v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      v27 = memcmp(v25, v26, v22) != 0;
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v27 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_62:
    if (v27)
    {
      google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 7, "option json_name is not allowed on extension fields.");
    }
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3(google::protobuf::DescriptorBuilder *this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  if (*(a2 + 14) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 16) + v6), *(*(a3 + 17) + 8 * v7++ + 8));
      v6 += 152;
    }

    while (v7 < *(a2 + 14));
  }

  if (*(a2 + 11) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Message(this, (*(a2 + 13) + v8), *(*(a3 + 8) + 8 * v9++ + 8));
      v8 += 144;
    }

    while (v9 < *(a2 + 11));
  }

  if (*(a2 + 12) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Enum(this, (*(a2 + 14) + v10), *(*(a3 + 11) + 8 * v11++ + 8));
      v10 += 80;
    }

    while (v11 < *(a2 + 12));
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3Field(google::protobuf::DescriptorBuilder *this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  if (*(a2 + 67) == 1)
  {
    v6 = *(*(a2 + 10) + 8);
    if ((atomic_load_explicit(&qword_1001EB0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB0F0))
    {
      sub_1000CEAC4();
    }

    if (qword_1001EB0E8 + 8 == sub_1000CEF34(qword_1001EB0E8, v6))
    {
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 3, "Extensions in proto3 are only allowed for defining options.");
    }
  }

  if (*(a2 + 15) == 2)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Required fields are not allowed in proto3.");
  }

  if (*(a2 + 64) == 1)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 4, "Explicit default values are not allowed in proto3.");
  }

  v7 = *(a2 + 6);
  if (v7)
  {
    v22.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v21.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      *&v24 = &v22;
      *(&v24 + 1) = &v21;
      v23.__r_.__value_.__r.__words[0] = &v24;
      std::__call_once(v7, &v23, sub_1000B32C4);
    }
  }

  if (*(a2 + 14) == 14 && google::protobuf::FieldDescriptor::enum_type(a2) && *(*(google::protobuf::FieldDescriptor::enum_type(a2) + 16) + 60) != 3 && *(*(google::protobuf::FieldDescriptor::enum_type(a2) + 16) + 60))
  {
    v8 = *(a2 + 1);
    v9 = *(google::protobuf::FieldDescriptor::enum_type(a2) + 8);
    std::operator+<char>();
    v10 = std::string::append(&v21, " is not a proto3 enum, but is used in ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(*(a2 + 10) + 8);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(*(a2 + 10) + 8);
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::string::append(&v22, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v23, " which is a proto3 message type.");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v25 = v18->__r_.__value_.__r.__words[2];
    v24 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v8, a3, 2, &v24);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v20 = *(a2 + 6);
  if (v20)
  {
    v22.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v21.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v20, memory_order_acquire) != -1)
    {
      *&v24 = &v22;
      *(&v24 + 1) = &v21;
      v23.__r_.__value_.__r.__words[0] = &v24;
      std::__call_once(v20, &v23, sub_1000B32C4);
    }
  }

  if (*(a2 + 14) == 10)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Groups are not supported in proto3 syntax.");
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3Message(google::protobuf::DescriptorBuilder *this, google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  if (*(a2 + 29) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Message(this, (*(a2 + 7) + v6), *(*(a3 + 8) + 8 * v7++ + 8));
      v6 += 144;
    }

    while (v7 < *(a2 + 29));
  }

  if (*(a2 + 30) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Enum(this, (*(a2 + 8) + v8), *(*(a3 + 11) + 8 * v9++ + 8));
      v8 += 80;
    }

    while (v9 < *(a2 + 30));
  }

  if (*(a2 + 26) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 5) + v10), *(*(a3 + 5) + 8 * v11++ + 8));
      v10 += 152;
    }

    while (v11 < *(a2 + 26));
  }

  if (*(a2 + 32) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 10) + v12), *(*(a3 + 17) + 8 * v13++ + 8));
      v12 += 152;
    }

    while (v13 < *(a2 + 32));
  }

  if (*(a2 + 31) > 0)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), *(*(a3 + 14) + 8), 1, "Extension ranges are not allowed in proto3.");
  }

  if (*(*(a2 + 4) + 72) == 1)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 0, "MessageSet is not supported in proto3.");
  }

  v46[0] = 0;
  v46[1] = 0;
  v45 = v46;
  if (*(a2 + 26) < 1)
  {
    v37 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 5) + 152 * v14);
      memset(&v44, 0, sizeof(v44));
      v16 = v15[23];
      if (v16 >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = v15[23];
      }

      else
      {
        v18 = *(v15 + 1);
      }

      for (; v18; --v18)
      {
        v19 = *v17;
        if (v19 != 95)
        {
          if ((v19 - 65) < 0x1A)
          {
            LOBYTE(v19) = v19 | 0x20;
          }

          std::string::push_back(&v44, v19);
        }

        ++v17;
      }

      if (v46 == sub_1000CEF34(&v45, &v44.__r_.__value_.__l.__data_))
      {
        v36 = *(a2 + 5);
        __p[0] = &v44;
        *(sub_1000D4BB0(&v45, &v44.__r_.__value_.__l.__data_) + 56) = v36 + 152 * v14;
      }

      else
      {
        v20 = *(a2 + 1);
        v21 = *(*(a3 + 5) + 8 * v14 + 8);
        v22 = *(*(a2 + 5) + 152 * v14);
        std::operator+<char>();
        v23 = std::string::append(&v38, " conflicts with field ");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v46[3] = &v44;
        v25 = sub_1000D4BB0(&v45, &v44.__r_.__value_.__l.__data_);
        v26 = **(v25 + 56);
        v27 = *(v26 + 23);
        if (v27 >= 0)
        {
          v28 = **(v25 + 56);
        }

        else
        {
          v28 = *v26;
        }

        if (v27 >= 0)
        {
          v29 = *(v26 + 23);
        }

        else
        {
          v29 = *(v26 + 8);
        }

        v30 = std::string::append(&v39, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v40, ". This is not ");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = std::string::append(&v41, "allowed in proto3.");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v43 = v34->__r_.__value_.__r.__words[2];
        *__p = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(this, v20, v21, 0, __p);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      ++v14;
    }

    while (v14 < *(a2 + 26));
    v37 = v46[0];
  }

  sub_1000D279C(&v45, v37);
}

void sub_1000C9728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_1000D279C(v48 - 128, *(v48 - 120));
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateProto3Enum(google::protobuf::DescriptorBuilder *this, const std::string::value_type **a2, const google::protobuf::EnumDescriptorProto *a3)
{
  if (*(a2 + 11) >= 1)
  {
    if (*(a2[6] + 4))
    {
      google::protobuf::DescriptorBuilder::AddError(this, a2[1], *(*(a3 + 5) + 8), 1, "The first enum value must be zero in proto3.");
    }
  }
}

BOOL google::protobuf::DescriptorBuilder::ValidateMapEntry(google::protobuf::DescriptorBuilder *this, const std::string::value_type **a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v6 = google::protobuf::FieldDescriptor::message_type(a2);
  if (*(v6 + 128))
  {
    return 0;
  }

  if (*(a2 + 15) != 3)
  {
    return 0;
  }

  v7 = v6;
  if (*(v6 + 124) || *(v6 + 116) || *(v6 + 120) || *(v6 + 104) != 2)
  {
    return 0;
  }

  v8 = *v6;
  sub_1000C4F88(*a2, 0, &v21);
  v9 = std::string::append(&v21, "Entry");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = !sub_1000BFEC4(v8, __p) || a2[10] != v7[3];
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    return 0;
  }

  if (*(v7[4] + 75) == 1)
  {
    v12 = v7[5];
    v13 = (v12 + 38);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v12[15] != 1 || v12[17] != 1)
  {
    return 0;
  }

  v14 = *v12;
  v15 = *(*v12 + 23);
  if (v15 < 0)
  {
    if (*(v14 + 1) != 3)
    {
      return 0;
    }

    v14 = *v14;
  }

  else if (v15 != 3)
  {
    return 0;
  }

  v16 = *v14;
  v17 = *(v14 + 2);
  v18 = v16 == 25963 && v17 == 121;
  if (!v18 || *(v13 + 15) != 1 || *(v13 + 17) != 2)
  {
    return 0;
  }

  result = sub_1000C11FC(*v13, "value");
  if (result)
  {
    v20 = sub_1000B6AA4(v12) - 1;
    if (v20 <= 0xD && ((0x2E03u >> v20) & 1) != 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, a2[1], a3, 2, off_1001CF2D0[v20]);
    }

    if (sub_1000B6AA4(v13) == 14)
    {
      if (*(*(google::protobuf::FieldDescriptor::enum_type(v13) + 48) + 16))
      {
        google::protobuf::DescriptorBuilder::AddError(this, a2[1], a3, 2, "Enum value in map must define 0 as the first value.");
      }
    }

    return 1;
  }

  return result;
}

void sub_1000C9A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateJSType(google::protobuf::DescriptorBuilder *this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v3 = *(*(a2 + 15) + 80);
  if (v3)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      v16 = a2;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        __p[0] = &v17;
        __p[1] = &v16;
        v18 = __p;
        std::__call_once(v7, &v18, sub_1000B32C4);
      }
    }

    v8 = *(a2 + 14);
    v9 = v8 > 0x12;
    v10 = (1 << v8) & 0x50058;
    if (v9 || v10 == 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "jstype is only allowed on int64, uint64, sint64, fixed64 or sfixed64 fields.");
    }

    else if (v3 >= 3)
    {
      v12 = *(a2 + 1);
      v13 = *(*(google::protobuf::FieldOptions_JSType_descriptor(v7) + 48) + 40 * v3);
      std::operator+<char>();
      google::protobuf::DescriptorBuilder::AddError(this, v12, a3, 2, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1000C9B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::DescriptorBuilder::OptionInterpreter *google::protobuf::DescriptorBuilder::OptionInterpreter::OptionInterpreter(google::protobuf::DescriptorBuilder::OptionInterpreter *this, google::protobuf::DescriptorBuilder *a2)
{
  *(this + 4) = 0;
  *this = a2;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  google::protobuf::DynamicMessageFactory::DynamicMessageFactory((this + 72));
  if (!*this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 6378);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: builder_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1000C9C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((v4 + 72));
  sub_1000D5FA0(v5, *v7);
  sub_1000D5EEC(v3, *v6);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(google::protobuf::DescriptorBuilder::OptionInterpreter *this)
{
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 72));
  sub_1000D5FA0(this + 48, *(this + 7));
  sub_1000D5EEC(this + 24, *(this + 4));
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(uint64_t *a1, const google::protobuf::Message *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1[2];
  if (!*(v5 + 32))
  {
    sub_1000B347C(v100, "Option must have a name.");
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
LABEL_64:
    if (SHIBYTE(v101) < 0)
    {
      operator delete(*v100);
    }

    return 0;
  }

  v8 = *(*(*(v5 + 40) + 8) + 24) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 20)
    {
      goto LABEL_15;
    }

    v8 = *v8;
  }

  else if (v9 != 20)
  {
    goto LABEL_15;
  }

  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  if (v10 == 0x707265746E696E75 && v11 == 0x706F5F6465746572 && v12 == 1852795252)
  {
    sub_1000B347C(v100, "Option must not use reserved name uninterpreted_option.");
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
    goto LABEL_64;
  }

LABEL_15:
  v15 = *a1;
  v16 = (*(*a2 + 152))(a2);
  if (google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDeps(v15, *(v16 + 8), 1) == 1)
  {
    v18 = v17;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (*(*a2 + 152))(a2);
    if (!v18)
    {
LABEL_19:
      v19 = google::protobuf::internal::LogMessage::LogMessage(v100, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 6502);
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: options_descriptor: ");
      google::protobuf::internal::LogFinisher::operator=(&v85, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(v100);
    }
  }

  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  sub_1000B347C(&__str, "");
  __p = 0;
  v92 = 0;
  v93 = 0;
  sub_1000D3024(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
  if (*(a1[2] + 32) < 1)
  {
LABEL_60:
    v43 = v98;
    if (*(v98 + 15) == 3 || (v44 = v95, v45 = v96, (*(*a2 + 152))(a2), UnknownFields = google::protobuf::Reflection::GetUnknownFields(v46, a2), (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, v44, v45, v43, &__str, UnknownFields) & 1) != 0))
    {
      operator new();
    }

    goto LABEL_121;
  }

  v21 = 1;
  while (1)
  {
    v22 = *a1;
    if (*(*a1 + 199) < 0)
    {
      **(v22 + 176) = 0;
      *(v22 + 184) = 0;
    }

    else
    {
      *(v22 + 176) = 0;
      *(v22 + 199) = 0;
    }

    v23 = *(*(a1[2] + 40) + 8 * v21);
    v24 = *(v23 + 24);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&__str, ".");
      v23 = *(*(a1[2] + 40) + 8 * v21);
    }

    v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 32) != 1)
    {
      break;
    }

    std::operator+<char>();
    v27 = std::string::append(&v85, ")");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v101 = v27->__r_.__value_.__r.__words[2];
    *v100 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v101 >= 0)
    {
      v29 = v100;
    }

    else
    {
      v29 = *v100;
    }

    if (v101 >= 0)
    {
      v30 = HIBYTE(v101);
    }

    else
    {
      v30 = *&v100[8];
    }

    std::string::append(&__str, v29, v30);
    if (SHIBYTE(v101) < 0)
    {
      operator delete(*v100);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v31 = google::protobuf::DescriptorBuilder::LookupSymbol(*a1, v26, a1[1], 0, 0, 1);
    FieldByName = v32;
    if (v31 == 2)
    {
      goto LABEL_50;
    }

    FieldByName = v98;
    if (!v98)
    {
      goto LABEL_67;
    }

LABEL_51:
    v38 = *(FieldByName + 10);
    if (v38 != v18)
    {
      if (!v38 || (*(v38 + 140) & 1) == 0)
      {
        std::operator+<char>();
        v67 = std::string::append(&v89, " is not a field or extension of message ");
        v68 = *&v67->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = (*v18)[23];
        if (v69 >= 0)
        {
          v70 = *v18;
        }

        else
        {
          v70 = **v18;
        }

        if (v69 >= 0)
        {
          v71 = *(*v18 + 23);
        }

        else
        {
          v71 = *(*v18 + 1);
        }

        v72 = std::string::append(&v90, v70, v71);
        v73 = *&v72->__r_.__value_.__l.__data_;
        v85.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v85.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v85, ".");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v101 = v74->__r_.__value_.__r.__words[2];
        *v100 = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
        if (SHIBYTE(v101) < 0)
        {
          operator delete(*v100);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          v66 = v89.__r_.__value_.__r.__words[0];
          goto LABEL_120;
        }

        goto LABEL_121;
      }

LABEL_99:
      google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(FieldByName, a1[2], a2);
      v48 = 1;
      goto LABEL_122;
    }

    *v100 = *(FieldByName + 17);
    sub_1000B966C(&__p, v100);
    v39 = *(a1[2] + 32);
    if (v21 - 1 < v39 - 1)
    {
      v40 = v98;
      v41 = *(v98 + 6);
      if (v41)
      {
        v90.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v89.__r_.__value_.__r.__words[0] = v98;
        if (atomic_load_explicit(v41, memory_order_acquire) != -1)
        {
          *v100 = &v90;
          *&v100[8] = &v89;
          v85.__r_.__value_.__r.__words[0] = v100;
          std::__call_once(v41, &v85, sub_1000B32C4);
        }
      }

      if ((*(v40 + 14) & 0xFFFFFFFE) != 0xA)
      {
        std::operator+<char>();
        v76 = std::string::append(&v85, " is an atomic type, not a message.");
        v77 = *&v76->__r_.__value_.__l.__data_;
        v101 = v76->__r_.__value_.__r.__words[2];
        *v100 = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
        goto LABEL_116;
      }

      if (*(v98 + 15) == 3)
      {
        std::operator+<char>();
        v78 = std::string::append(&v85, " is a repeated message. Repeated message options must be initialized using an aggregate value.");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v101 = v78->__r_.__value_.__r.__words[2];
        *v100 = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
LABEL_116:
        if (SHIBYTE(v101) < 0)
        {
          operator delete(*v100);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          v66 = v85.__r_.__value_.__r.__words[0];
          goto LABEL_120;
        }

        goto LABEL_121;
      }

      sub_1000CAE3C(&v95, &v98);
      v18 = google::protobuf::FieldDescriptor::message_type(v98);
      LODWORD(v39) = *(a1[2] + 32);
    }

    if (v21++ >= v39)
    {
      goto LABEL_60;
    }
  }

  v34 = *(v26 + 23);
  if (v34 >= 0)
  {
    v35 = v26;
  }

  else
  {
    v35 = *v26;
  }

  if (v34 >= 0)
  {
    v36 = *(v26 + 23);
  }

  else
  {
    v36 = *(v26 + 8);
  }

  std::string::append(&__str, v35, v36);
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v18, v26, v37);
LABEL_50:
  v98 = FieldByName;
  if (FieldByName)
  {
    goto LABEL_51;
  }

LABEL_67:
  v49 = *a1;
  if (*(**a1 + 42) == 1)
  {
    goto LABEL_99;
  }

  v50 = *(v49 + 199);
  if (v50 < 0)
  {
    v50 = *(v49 + 184);
  }

  if (v50)
  {
    std::operator+<char>();
    v51 = std::string::append(&v87, " is resolved to (");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = *(*a1 + 199);
    if (v53 >= 0)
    {
      v54 = (*a1 + 176);
    }

    else
    {
      v54 = *(*a1 + 176);
    }

    if (v53 >= 0)
    {
      v55 = *(*a1 + 199);
    }

    else
    {
      v55 = *(*a1 + 184);
    }

    v56 = std::string::append(&v88, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    v58 = std::string::append(&v89, "), which is not defined. The innermost scope is searched first in name resolution. Consider using a leading '.'(i.e., (.");
    v59 = *&v58->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string(&v86, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v99);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v86;
    }

    else
    {
      v60 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v86.__r_.__value_.__l.__size_;
    }

    v62 = std::string::append(&v90, v60, v61);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v85, ") to start from the outermost scope.");
    v65 = *&v64->__r_.__value_.__l.__data_;
    v101 = v64->__r_.__value_.__r.__words[2];
    *v100 = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
    if (SHIBYTE(v101) < 0)
    {
      operator delete(*v100);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      v66 = v87.__r_.__value_.__r.__words[0];
      goto LABEL_120;
    }
  }

  else
  {
    std::operator+<char>();
    v81 = std::string::append(&v90, " unknown. Ensure that your proto");
    v82 = *&v81->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    v83 = std::string::append(&v85, " definition file imports the proto which defines the option.");
    v84 = *&v83->__r_.__value_.__l.__data_;
    v101 = v83->__r_.__value_.__r.__words[2];
    *v100 = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v100);
    if (SHIBYTE(v101) < 0)
    {
      operator delete(*v100);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v66 = v90.__r_.__value_.__r.__words[0];
LABEL_120:
      operator delete(v66);
    }
  }

LABEL_121:
  v48 = 0;
LABEL_122:
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  return v48;
}

void sub_1000CAA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v60 - 153) < 0)
  {
    operator delete(*(v60 - 176));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  v62 = *(v60 - 216);
  if (v62)
  {
    *(v60 - 208) = v62;
    operator delete(v62);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::UninterpretedOption *a2, google::protobuf::Message *a3)
{
  v5 = (*(*a3 + 152))(a3);
  sub_1000B347C(__p, "uninterpreted_option");
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v5, __p, v6);
  v8 = FieldByName;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (!v8)
    {
LABEL_5:
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 6773);
      v9 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: field != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }
  }

  else if (!FieldByName)
  {
    goto LABEL_5;
  }

  (*(*a3 + 152))(a3);
  v11 = google::protobuf::Reflection::AddMessage(v10, a3, v8, 0);
  return (*(*v11 + 112))(v11, a2);
}

void sub_1000CAE3C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100070E64();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000D1B24(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int **a6)
{
  v9 = *a6;
  v10 = a6[1] - *a6;
  v11 = v10 >> 4;
  if (a2 == a3)
  {
    if (v11 >= 1)
    {
      v12 = (v10 >> 4) & 0x7FFFFFFF;
      while (1)
      {
        v13 = *v9;
        v9 += 4;
        if (v13 == *(a4 + 68))
        {
          break;
        }

        if (!--v12)
        {
          return 1;
        }
      }

      std::operator+<char>();
      v28 = std::string::append(&v34, " was already set.");
      v29 = *&v28->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        v30 = v34.__r_.__value_.__r.__words[0];
        goto LABEL_36;
      }

      return 0;
    }

    return 1;
  }

  if (v11 < 1)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *a2;
    if (v9[v17] != *(*a2 + 68))
    {
      goto LABEL_30;
    }

    v20 = *(v19 + 48);
    if (v20)
    {
      v35 = *a2;
      v36 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v20, memory_order_acquire) != -1)
      {
        __p[0].__r_.__value_.__r.__words[0] = &v36;
        __p[0].__r_.__value_.__l.__size_ = &v35;
        v34.__r_.__value_.__r.__words[0] = __p;
        std::__call_once(v20, &v34, sub_1000B32C4);
      }
    }

    v21 = *(v19 + 56);
    if (v21 == 10)
    {
      if (v9[v17 + 1] == 4 && (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 1, a3, a4, a5, *&v9[v17 + 2]) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_30;
    }

    if (v21 != 11)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 6833);
      v31 = google::protobuf::internal::LogMessage::operator<<(__p, "Invalid wire type for CPPTYPE_MESSAGE: ");
      v32 = google::protobuf::internal::LogMessage::operator<<(v31, v21);
      google::protobuf::internal::LogFinisher::operator=(&v34, &v32->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      return 0;
    }

    if (v9[v17 + 1] == 3)
    {
      break;
    }

LABEL_30:
    ++v18;
    v9 = *a6;
    v17 += 4;
    if (v18 >= ((a6[1] - *a6) >> 4))
    {
      return 1;
    }
  }

  memset(__p, 0, 24);
  v22 = *&v9[v17 + 2];
  v23 = *(v22 + 23);
  if (v23 >= 0)
  {
    v24 = *&v9[v17 + 2];
  }

  else
  {
    v24 = *v22;
  }

  if (v23 >= 0)
  {
    v25 = *(v22 + 23);
  }

  else
  {
    v25 = *(v22 + 8);
  }

  if (!google::protobuf::UnknownFieldSet::ParseFromArray(__p, v24, v25) || (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 1, a3, a4, a5, __p) & 1) != 0)
  {
    v26 = __p[0].__r_.__value_.__r.__words[0];
    if (__p[0].__r_.__value_.__r.__words[0] != __p[0].__r_.__value_.__l.__size_)
    {
      google::protobuf::UnknownFieldSet::ClearFallback(__p);
      v26 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v26)
    {
      __p[0].__r_.__value_.__l.__size_ = v26;
      operator delete(v26);
    }

    goto LABEL_30;
  }

  v30 = __p[0].__r_.__value_.__r.__words[0];
  if (__p[0].__r_.__value_.__r.__words[0] != __p[0].__r_.__value_.__l.__size_)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(__p);
    v30 = __p[0].__r_.__value_.__r.__words[0];
  }

  if (v30)
  {
    __p[0].__r_.__value_.__l.__size_ = v30;
LABEL_36:
    operator delete(v30);
  }

  return 0;
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::UnknownFieldSet *a3)
{
  v6 = *(a2 + 6);
  if (v6)
  {
    v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v109.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      __dst.__r_.__value_.__r.__words[0] = &v110;
      __dst.__r_.__value_.__l.__size_ = &v109;
      v111.__r_.__value_.__r.__words[0] = &__dst;
      std::__call_once(v6, &v111, sub_1000B32C4);
    }
  }

  v7 = *(a2 + 14);
  v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7];
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v15 = *(this + 2);
        v16 = *(v15 + 16);
        if ((v16 & 8) != 0)
        {
          v26 = *(v15 + 72);
          if (v26 >> 31)
          {
            goto LABEL_170;
          }

          v46 = *(a2 + 17);
          v47 = *(a2 + 6);
          if (v47)
          {
            v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            v109.__r_.__value_.__r.__words[0] = a2;
            if (atomic_load_explicit(v47, memory_order_acquire) != -1)
            {
              __dst.__r_.__value_.__r.__words[0] = &v110;
              __dst.__r_.__value_.__l.__size_ = &v109;
              v111.__r_.__value_.__r.__words[0] = &__dst;
              std::__call_once(v47, &v111, sub_1000B32C4);
            }

            LODWORD(v7) = *(a2 + 14);
          }

          v48 = v46;
          v49 = v26;
        }

        else
        {
          if ((v16 & 0x10) == 0)
          {
            goto LABEL_170;
          }

          v45 = *(v15 + 80);
          if (v45 <= 0xFFFFFFFF7FFFFFFFLL)
          {
            goto LABEL_170;
          }

          v57 = *(a2 + 17);
          LODWORD(v47) = sub_1000B6AA4(a2);
          v48 = v57;
          v49 = v45;
          LODWORD(v7) = v47;
        }

        google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(v47, v48, v49, v7, a3);
      }

      else if (v8 == 2)
      {
        v12 = *(this + 2);
        v13 = *(v12 + 16);
        if ((v13 & 8) != 0)
        {
          v22 = *(v12 + 72);
          if (v22 < 0)
          {
            goto LABEL_170;
          }

          v23 = *(a2 + 17);
        }

        else
        {
          if ((v13 & 0x10) == 0)
          {
            goto LABEL_170;
          }

          v23 = *(a2 + 17);
          v22 = *(v12 + 80);
        }

        v44 = *(a2 + 6);
        if (v44)
        {
          v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v109.__r_.__value_.__r.__words[0] = a2;
          if (atomic_load_explicit(v44, memory_order_acquire) != -1)
          {
            __dst.__r_.__value_.__r.__words[0] = &v110;
            __dst.__r_.__value_.__l.__size_ = &v109;
            v111.__r_.__value_.__r.__words[0] = &__dst;
            std::__call_once(v44, &v111, sub_1000B32C4);
          }

          LODWORD(v7) = *(a2 + 14);
        }

        google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(v44, v23, v22, v7, a3);
      }
    }

    else if (v8 == 3)
    {
      v19 = *(this + 2);
      if ((*(v19 + 16) & 8) == 0)
      {
        goto LABEL_170;
      }

      v28 = *(v19 + 72);
      if (HIDWORD(v28))
      {
        v29 = *a2;
        std::operator+<char>();
        v30 = std::string::append(&v111, ".");
        v31 = *&v30->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__dst);
LABEL_171:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v102 = v111.__r_.__value_.__r.__words[0];
LABEL_175:
        operator delete(v102);
        return 0;
      }

      v50 = *(a2 + 17);
      v51 = *(a2 + 6);
      if (v51)
      {
        v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v109.__r_.__value_.__r.__words[0] = a2;
        if (atomic_load_explicit(v51, memory_order_acquire) != -1)
        {
          __dst.__r_.__value_.__r.__words[0] = &v110;
          __dst.__r_.__value_.__l.__size_ = &v109;
          v111.__r_.__value_.__r.__words[0] = &__dst;
          std::__call_once(v51, &v111, sub_1000B32C4);
        }

        LODWORD(v7) = *(a2 + 14);
      }

      google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(v51, v50, v28, v7, a3);
    }

    else if (v8 == 4)
    {
      v20 = *(this + 2);
      if ((*(v20 + 16) & 8) == 0)
      {
        goto LABEL_170;
      }

      v40 = *(a2 + 17);
      v41 = *(v20 + 72);
      v42 = *(a2 + 6);
      if (v42)
      {
        v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v109.__r_.__value_.__r.__words[0] = a2;
        if (atomic_load_explicit(v42, memory_order_acquire) != -1)
        {
          __dst.__r_.__value_.__r.__words[0] = &v110;
          __dst.__r_.__value_.__l.__size_ = &v109;
          v111.__r_.__value_.__r.__words[0] = &__dst;
          std::__call_once(v42, &v111, sub_1000B32C4);
        }

        LODWORD(v7) = *(a2 + 14);
      }

      google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(v42, v40, v41, v7, a3);
    }

    else
    {
      v9 = *(this + 2);
      v10 = *(v9 + 16);
      if ((v10 & 0x20) != 0)
      {
        v39 = *(v9 + 88);
      }

      else if ((v10 & 8) != 0)
      {
        v39 = *(v9 + 72);
      }

      else
      {
        if ((v10 & 0x10) == 0)
        {
          goto LABEL_170;
        }

        v39 = *(v9 + 80);
      }

      google::protobuf::UnknownFieldSet::AddFixed64(a3, *(a2 + 17), *&v39);
    }

    return 1;
  }

  if (v8 <= 7)
  {
    if (v8 == 6)
    {
      v17 = *(this + 2);
      v18 = *(v17 + 16);
      if ((v18 & 0x20) != 0)
      {
        v27 = *(v17 + 88);
      }

      else if ((v18 & 8) != 0)
      {
        v27 = *(v17 + 72);
      }

      else
      {
        if ((v18 & 0x10) == 0)
        {
          goto LABEL_170;
        }

        v27 = *(v17 + 80);
      }

      google::protobuf::UnknownFieldSet::AddFixed32(a3, *(a2 + 17), SLODWORD(v27));
      return 1;
    }

    v14 = *(this + 2);
    if ((*(v14 + 16) & 1) == 0)
    {
      goto LABEL_170;
    }

    v24 = (*(v14 + 48) & 0xFFFFFFFFFFFFFFFELL);
    if (*(v24 + 23) < 0)
    {
      if (*(v24 + 1) != 4 || **v24 != 1702195828)
      {
        if (*(v24 + 1) == 5)
        {
          v24 = *v24;
LABEL_87:
          v52 = *v24;
          v53 = *(v24 + 4);
          if (v52 != 1936482662 || v53 != 101)
          {
            goto LABEL_170;
          }

          v55 = 0;
          goto LABEL_178;
        }

LABEL_170:
        v103 = *(a2 + 1);
        std::operator+<char>();
        v104 = std::string::append(&v111, ".");
        v105 = *&v104->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__dst);
        goto LABEL_171;
      }
    }

    else
    {
      v25 = *(v24 + 23);
      if (v25 != 4)
      {
        if (v25 != 5)
        {
          goto LABEL_170;
        }

        goto LABEL_87;
      }

      if (*v24 != 1702195828)
      {
        goto LABEL_170;
      }
    }

    v55 = 1;
LABEL_178:
    v83 = *(a2 + 17);
LABEL_179:
    google::protobuf::UnknownFieldSet::AddVarint(a3, v83, v55);
    return 1;
  }

  if (v8 == 8)
  {
    if ((*(*(this + 2) + 16) & 1) == 0)
    {
      goto LABEL_170;
    }

    v32 = google::protobuf::FieldDescriptor::enum_type(a2);
    v33 = *(*(this + 2) + 48) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(*(v32 + 2) + 16);
    v35 = google::protobuf::DescriptorPool::internal_generated_pool(v32);
    google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
    if (v34 == v35)
    {
      ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v32, v33, v36);
LABEL_143:
      if (!ValueByName)
      {
        v84 = *(google::protobuf::FieldDescriptor::enum_type(a2) + 8);
        std::operator+<char>();
        v85 = std::string::append(&v107, " has no value named ");
        v86 = *&v85->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        v87 = *(v33 + 23);
        if (v87 >= 0)
        {
          v88 = v33;
        }

        else
        {
          v88 = *v33;
        }

        if (v87 >= 0)
        {
          v89 = *(v33 + 23);
        }

        else
        {
          v89 = *(v33 + 8);
        }

        v90 = std::string::append(&v108, v88, v89);
        v91 = *&v90->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = v91;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        v92 = std::string::append(&v109, " for option ");
        v93 = *&v92->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = *(a2 + 1);
        v95 = *(v94 + 23);
        if (v95 >= 0)
        {
          v96 = *(a2 + 1);
        }

        else
        {
          v96 = *v94;
        }

        if (v95 >= 0)
        {
          v97 = *(v94 + 23);
        }

        else
        {
          v97 = *(v94 + 8);
        }

        v98 = std::string::append(&v110, v96, v97);
        v99 = *&v98->__r_.__value_.__l.__data_;
        v111.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
        *&v111.__r_.__value_.__l.__data_ = v99;
        v98->__r_.__value_.__l.__size_ = 0;
        v98->__r_.__value_.__r.__words[2] = 0;
        v98->__r_.__value_.__r.__words[0] = 0;
        v100 = std::string::append(&v111, ".");
        v101 = *&v100->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v101;
        v100->__r_.__value_.__l.__size_ = 0;
        v100->__r_.__value_.__r.__words[2] = 0;
        v100->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v102 = v107.__r_.__value_.__r.__words[0];
        goto LABEL_175;
      }

      v83 = *(a2 + 17);
      v55 = *(ValueByName + 16);
      goto LABEL_179;
    }

    v37 = *(v32 + 1);
    if (*(v37 + 23) < 0)
    {
      sub_1000B32D8(&__dst, *v37, *(v37 + 1));
    }

    else
    {
      v38 = *v37;
      __dst.__r_.__value_.__r.__words[2] = *(v37 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v38;
    }

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v59 = *(*v32 + 23);
    if (v59 < 0)
    {
      v59 = *(*v32 + 8);
    }

    std::string::resize(&__dst, size - v59, 0);
    v60 = *(v33 + 23);
    if (v60 >= 0)
    {
      v61 = v33;
    }

    else
    {
      v61 = *v33;
    }

    if (v60 >= 0)
    {
      v62 = *(v33 + 23);
    }

    else
    {
      v62 = *(v33 + 8);
    }

    std::string::append(&__dst, v61, v62);
    if (google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDeps(*this, &__dst, 1) == 5)
    {
      ValueByName = v63;
      if (*(v63 + 24) != v32)
      {
        v64 = *(v32 + 1);
        std::operator+<char>();
        v65 = std::string::append(&v106, " has no value named ");
        v66 = *&v65->__r_.__value_.__l.__data_;
        v107.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
        *&v107.__r_.__value_.__l.__data_ = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = *(v33 + 23);
        if (v67 >= 0)
        {
          v68 = v33;
        }

        else
        {
          v68 = *v33;
        }

        if (v67 >= 0)
        {
          v69 = *(v33 + 23);
        }

        else
        {
          v69 = *(v33 + 8);
        }

        v70 = std::string::append(&v107, v68, v69);
        v71 = *&v70->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        v72 = std::string::append(&v108, " for option ");
        v73 = *&v72->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = *(a2 + 1);
        v75 = *(v74 + 23);
        if (v75 >= 0)
        {
          v76 = *(a2 + 1);
        }

        else
        {
          v76 = *v74;
        }

        if (v75 >= 0)
        {
          v77 = *(v74 + 23);
        }

        else
        {
          v77 = *(v74 + 8);
        }

        v78 = std::string::append(&v109, v76, v77);
        v79 = *&v78->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v110, ". This appears to be a value from a sibling type.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v111.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v111.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &v111);
        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }

        v82 = 0;
        ValueByName = 0;
LABEL_140:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if ((v82 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_143;
      }
    }

    else
    {
      ValueByName = 0;
    }

    v82 = 1;
    goto LABEL_140;
  }

  if (v8 == 9)
  {
    v21 = *(this + 2);
    if ((*(v21 + 16) & 2) != 0)
    {
      v43 = *(v21 + 56);
      google::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(a2 + 17));
    }

    goto LABEL_170;
  }

  if (v8 != 10)
  {
    return 1;
  }

  result = google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(this, a2, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_1000CC07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
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

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(a1);
}

google::protobuf::UnknownFieldSet **sub_1000CC250(google::protobuf::UnknownFieldSet **result, google::protobuf::UnknownFieldSet *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2 != *(v2 + 1))
    {
      google::protobuf::UnknownFieldSet::ClearFallback(v2);
      v3 = *v2;
    }

    if (v3)
    {
      *(v2 + 1) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(int a1, unsigned int a2, uint64_t a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 17)
  {
    a3 = (2 * a3) ^ (a3 >> 31);
LABEL_9:

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  if (a4 != 15)
  {
    if (a4 != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7195);
      v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_INT32: ");
      v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
      google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return;
    }

    a3 = a3;
    goto LABEL_9;
  }

  google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
}

void sub_1000CC3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(int a1, unsigned int a2, uint64_t a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 18)
  {
    a3 = (2 * a3) ^ (a3 >> 63);
LABEL_9:

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  if (a4 != 16)
  {
    if (a4 != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7218);
      v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_INT64: ");
      v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
      google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return;
    }

    goto LABEL_9;
  }

  google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
}

void sub_1000CC498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(int a1, unsigned int a2, unsigned int a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 7)
  {

    google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
  }

  else if (a4 == 13)
  {

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7236);
    v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_UINT32: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
    google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }
}

void sub_1000CC578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(int a1, unsigned int a2, uint64_t a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 6)
  {

    google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
  }

  else if (a4 == 4)
  {

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7254);
    v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_UINT64: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
    google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }
}

void sub_1000CC654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::UnknownFieldSet *a3)
{
  if ((*(*(this + 2) + 16) & 4) != 0)
  {
    v24 = google::protobuf::FieldDescriptor::message_type(a2);
    Prototype = google::protobuf::DynamicMessageFactory::GetPrototype((this + 72), v24);
    v26 = (*(*Prototype + 24))(Prototype);
    if (!v26)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7148);
      v27 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: dynamic.get() != nullptr: ");
      v28 = google::protobuf::internal::LogMessage::operator<<(v27, "Could not create an instance of ");
      LOWORD(v45.__r_.__value_.__l.__data_) = 0;
      v45.__r_.__value_.__s.__data_[2] = 0;
      google::protobuf::FieldDescriptor::DebugStringWithOptions(a2, &v45, &v44);
      v29 = google::protobuf::internal::LogMessage::operator<<(v28, &v44);
      google::protobuf::internal::LogFinisher::operator=(&__str, &v29->__r_.__value_.__l.__data_);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    v45.__r_.__value_.__r.__words[0] = off_1001CF240;
    *&v45.__r_.__value_.__r.__words[1] = 0uLL;
    v46 = 0;
    v30 = *this;
    v48.__r_.__value_.__r.__words[0] = &off_1001CF288;
    v48.__r_.__value_.__l.__size_ = v30;
    google::protobuf::TextFormat::Parser::Parser(&v44);
    v44.__r_.__value_.__r.__words[0] = &v45;
    v44.__r_.__value_.__l.__size_ = &v48;
    v22 = google::protobuf::TextFormat::Parser::ParseFromString(&v44.__r_.__value_.__l.__data_, *(*(this + 2) + 64) & 0xFFFFFFFFFFFFFFFELL, v26);
    if (v22)
    {
      memset(&__str, 0, sizeof(__str));
      google::protobuf::MessageLite::SerializeToString(v26, &__str);
      v31 = *(a2 + 6);
      if (v31)
      {
        v51 = a2;
        v52 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v31, memory_order_acquire) != -1)
        {
          __p[0].__r_.__value_.__r.__words[0] = &v52;
          __p[0].__r_.__value_.__l.__size_ = &v51;
          v49.__r_.__value_.__r.__words[0] = __p;
          std::__call_once(v31, &v49, sub_1000B32C4);
        }
      }

      v32 = *(a2 + 14);
      if (v32 == 11)
      {
        google::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(a2 + 17));
      }

      v40 = *(a2 + 6);
      if (v40)
      {
        v51 = a2;
        v52 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v40, memory_order_acquire) != -1)
        {
          __p[0].__r_.__value_.__r.__words[0] = &v52;
          __p[0].__r_.__value_.__l.__size_ = &v51;
          v49.__r_.__value_.__r.__words[0] = __p;
          std::__call_once(v40, &v49, sub_1000B32C4);
        }

        v32 = *(a2 + 14);
      }

      if (v32 != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7168);
        v41 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (option_field->type()) == (FieldDescriptor::TYPE_GROUP): ");
        google::protobuf::internal::LogFinisher::operator=(&v43, &v41->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      }

      google::protobuf::UnknownFieldSet::AddGroup(a3, *(a2 + 17));
    }

    v33 = *a2;
    std::operator+<char>();
    v34 = std::string::append(&v49, ": ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (v46 >= 0)
    {
      size = &v45.__r_.__value_.__s.__data_[8];
    }

    else
    {
      size = v45.__r_.__value_.__l.__size_;
    }

    if (v46 >= 0)
    {
      v37 = HIBYTE(v46);
    }

    else
    {
      v37 = v45.__r_.__value_.__r.__words[2];
    }

    v38 = std::string::append(&__str, size, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    google::protobuf::TextFormat::Parser::~Parser(&v44);
    google::protobuf::TextFormat::Finder::~Finder(&v48);
    v45.__r_.__value_.__r.__words[0] = off_1001CF240;
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__size_);
    }

    google::protobuf::io::ErrorCollector::~ErrorCollector(&v45);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    std::operator+<char>();
    v6 = std::string::append(&v48, " is a message. To set the entire message, use syntax like ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v7;
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
      v10 = *(*a2 + 8);
    }

    v11 = std::string::append(&v49, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&__str, " = { <proto text format> }. To set fields within it, use syntax like ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v14;
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
      v17 = *(*a2 + 8);
    }

    v18 = std::string::append(&v45, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v44, ".foo = value.");
    v21 = *&v20->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  return v22;
}

void sub_1000CCC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a27);
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v43 + 56));
  }

  google::protobuf::TextFormat::Parser::~Parser(&__p);
  google::protobuf::TextFormat::Finder::~Finder(&a37);
  sub_1000CCDA4(&a20);
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1000CCDA4(void **this)
{
  *this = off_1001CF240;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ErrorCollector::~ErrorCollector(this);
}

unint64_t google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  sub_1000CD768(v11, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__str.__r_.__value_.__l.__size_)
    {
      goto LABEL_10;
    }

    p_str = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_10;
    }

    p_str = &__str;
  }

  if (p_str->__r_.__value_.__s.__data_[0] == 46)
  {
    std::string::basic_string(&v9, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v12);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v9;
  }

LABEL_10:
  v6 = *(a1 + 32);
  sub_1000B3420(&v9, &__str, v4);
  v7 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(v6, a1, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1000CCEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FieldDescriptor::InternalTypeOnceInit(google::protobuf::FieldDescriptor *this, uint64_t a2, const char *a3)
{
  if ((*(*(this + 5) + 65) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7296);
    v4 = google::protobuf::internal::LogMessage::operator<<(&__str, "CHECK failed: file()->finished_building_ == true: ");
    google::protobuf::internal::LogFinisher::operator=(&v30, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
  }

  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(*(this + 5) + 16);
    sub_1000B3420(&__str, v5, a3);
    v7 = google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v6, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    if (v7 == 1)
    {
      v9 = 11;
      v10 = 104;
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_9;
      }

      v9 = 14;
      v10 = 112;
    }

    *(this + 14) = v9;
    *(this + v10) = v8;
  }

LABEL_9:
  v11 = *(this + 14);
  if (v11 && !*(this + 18))
  {
    if (!*(this + 17))
    {
      goto LABEL_34;
    }

    v12 = *(v11 + 8);
    if (*(v12 + 23) < 0)
    {
      sub_1000B32D8(&__str, *v12, *(v12 + 1));
    }

    else
    {
      v13 = *v12;
      __str.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&__str.__r_.__value_.__l.__data_ = v13;
    }

    v14 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v14 == -1)
    {
      std::string::operator=(&__str, *(this + 17));
    }

    else
    {
      std::string::basic_string(&v29, &__str, 0, v14, &v32);
      v15 = std::string::append(&v29, ".");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = *(this + 17);
      v18 = *(v17 + 23);
      if (v18 >= 0)
      {
        v19 = *(this + 17);
      }

      else
      {
        v19 = *v17;
      }

      if (v18 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      v21 = std::string::append(&v30, v19, v20);
      v23 = v21->__r_.__value_.__r.__words[0];
      v33[0] = v21->__r_.__value_.__l.__size_;
      *(v33 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v24 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v23;
      __str.__r_.__value_.__l.__size_ = v33[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v33 + 7);
      *(&__str.__r_.__value_.__s + 23) = v24;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    v25 = *(*(this + 5) + 16);
    sub_1000B3420(&v30, &__str, v22);
    if (google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v25, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_) == 5)
    {
      *(this + 18) = v26;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (!*(this + 18))
    {
LABEL_34:
      v27 = *(this + 14);
      if (!*(v27 + 44))
      {
        google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7328);
        v28 = google::protobuf::internal::LogMessage::operator<<(&__str, "CHECK failed: enum_type_->value_count(): ");
        google::protobuf::internal::LogFinisher::operator=(&v30, &v28->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
        v27 = *(this + 14);
      }

      *(this + 18) = *(v27 + 48);
    }
  }
}

uint64_t google::protobuf::FieldDescriptor::PrintableNameForExtension(std::once_flag::_State_type **this)
{
  v1 = this;
  if (*(this + 67) == 1 && *(this[10][4] + 72) == 1)
  {
    v2 = this[6];
    if (v2)
    {
      v5 = v1;
      v6 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v2, memory_order_acquire) != -1)
      {
        v8[0] = &v6;
        v8[1] = &v5;
        v7 = v8;
        std::__call_once(v2, &v7, sub_1000B32C4);
      }
    }

    if (*(v1 + 14) == 11 && *(v1 + 15) == 1)
    {
      v3 = *(v1 + 12);
      if (v3 == google::protobuf::FieldDescriptor::message_type(v1))
      {
        v1 = google::protobuf::FieldDescriptor::message_type(v1);
      }
    }
  }

  return *(v1 + 1);
}

void google::protobuf::FileDescriptor::InternalDependenciesOnceInit(google::protobuf::FileDescriptor *this, uint64_t a2, const char *a3)
{
  if ((*(this + 65) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7372);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: finished_building_ == true: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 8);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(this + 10) + 8 * i);
      if (v7)
      {
        *(*(this + 9) + 8 * i) = google::protobuf::DescriptorPool::FindFileByName(*(this + 2), v7, a3);
        v5 = *(this + 8);
      }
    }
  }
}

void sub_1000CD3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::LazyDescriptor::Once(google::protobuf::internal::LazyDescriptor *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v5[0] = google::protobuf::internal::LazyDescriptor::OnceStatic;
      v5[1] = &v3;
      v4 = v5;
      std::__call_once(v2, &v4, sub_1000D6764);
    }
  }
}

void google::protobuf::internal::LazyDescriptor::OnceInternal(google::protobuf::internal::LazyDescriptor *this, uint64_t a2, const char *a3)
{
  if ((*(*(this + 3) + 65) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 7435);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: file_->finished_building_: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  if (!*this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v6 = *(*(this + 3) + 16);
      sub_1000B3420(v9, v5, a3);
      if (google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v6, v9[0].__r_.__value_.__l.__data_, v9[0].__r_.__value_.__l.__size_) == 1)
      {
        *this = v7;
      }
    }
  }
}

void sub_1000CD4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1000CD514(_DWORD *result, void *a2)
{
  v2 = (a2[30] - a2[29]) >> 3;
  *result = (a2[27] - a2[26]) >> 3;
  result[1] = v2;
  v3 = (a2[36] - a2[35]) >> 3;
  result[2] = (a2[33] - a2[32]) >> 3;
  result[3] = v3;
  v4 = (a2[55] - a2[54]) >> 3;
  result[4] = -1431655765 * ((a2[24] - a2[23]) >> 3);
  result[5] = v4;
  v5 = (a2[61] - a2[60]) >> 4;
  result[6] = (a2[58] - a2[57]) >> 3;
  result[7] = v5;
  return result;
}

void *sub_1000CD594(void *a1, char *__s)
{
  *a1 = __s;
  a1[1] = 0;
  if (__s)
  {
    v3 = strlen(__s);
    v5 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v3, "size_t to int conversion", v4);
    }

    a1[1] = v5;
  }

  return a1;
}

void *sub_1000CD5E4(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v5 == v15)
      {
        if (sub_1000CD70C(a1, (v14 + 2), a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL sub_1000CD70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (v4 != *(a3 + 8))
  {
    return 0;
  }

  v5 = *a2;
  v6 = *a3;
  return v4 < 1 || v5 == v6 || memcmp(v5, v6, v4) == 0;
}

_BYTE *sub_1000CD768@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    return sub_1000CD78C(a2, *a1, *(a1 + 8));
  }

  else
  {
    return sub_1000B347C(a2, "");
  }
}

_BYTE *sub_1000CD78C(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::EncodedDescriptorDatabase>(google::protobuf::EncodedDescriptorDatabase *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1000CD868(uint64_t a1, unint64_t *a2)
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

BOOL sub_1000CD908(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v4 = a2[2];
  if (v4 != a3[2])
  {
    return 0;
  }

  v5 = a2[1];
  v6 = a3[1];
  return v4 < 1 || v5 == v6 || memcmp(v5, v6, v4) == 0;
}

uint64_t sub_1000CD974(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = (16777619 * v3) ^ (16777499 * *a2);
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = (16777619 * v3) ^ (16777499 * *a2);
      if (v4 >= *&v2)
      {
        v6 = v4 % *&v2;
      }
    }

    else
    {
      v6 = v4 & (*&v2 - 1);
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (i[2] == *a2 && *(i + 6) == v3)
          {
            return i[4];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v2)
            {
              v9 %= *&v2;
            }
          }

          else
          {
            v9 &= *&v2 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1000CDA50(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = (16777619 * v3) ^ (16777499 * *a2);
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = (16777619 * v3) ^ (16777499 * *a2);
      if (v4 >= *&v2)
      {
        v6 = v4 % *&v2;
      }
    }

    else
    {
      v6 = v4 & (*&v2 - 1);
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == v4)
        {
          if (i[2] == *a2 && *(i + 6) == v3)
          {
            return i[4];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v2)
            {
              v9 %= *&v2;
            }
          }

          else
          {
            v9 &= *&v2 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1000CDB2C(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_1000CF468(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1000CDB88(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000B32D8(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  google::protobuf::StripWhitespace(&__p);
  sub_1000B3420(&v37, &__p, v5);
  v16 = 0;
  v17 = 0;
  v15 = 0;
  google::protobuf::SplitStringUsing(v37, v38, "\n", &v15);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = v15;
  for (i = v16; v6 != i; v6 += 3)
  {
    v8 = *(a1 + 127);
    v9 = *(a1 + 104);
    v10 = *(a1 + 112);
    if (v8 >= 0)
    {
      v9 = (a1 + 104);
    }

    v37 = v9;
    if (v8 < 0)
    {
      LODWORD(v8) = v10;
    }

    LODWORD(v38) = v8;
    v11 = *(v6 + 23);
    v12 = *v6;
    v13 = v6[1];
    if (v11 >= 0)
    {
      v12 = v6;
    }

    v35 = v12;
    if (v11 < 0)
    {
      LODWORD(v11) = v13;
    }

    v36 = v11;
    v33 = 0;
    v34 = -1;
    v31 = 0;
    v32 = -1;
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
    *&v14 = &v25;
    *(&v14 + 1) = &v23;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0// $1\n", &v37, &v35, &v33, &v31, &v29, &v27, v14, &v21, &v19);
  }

  v37 = &v15;
  sub_1000CF468(&v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

BOOL sub_1000CDDCC(int a1, const google::protobuf::Message *a2, uint64_t a3, uint64_t a4)
{
  if (*(*((*(*a2 + 152))(a2) + 16) + 16) == a3 || (v8 = (*(*a2 + 152))(a2), (MessageTypeByName = google::protobuf::DescriptorPool::FindMessageTypeByName(a3, *(v8 + 8), v9)) == 0))
  {

    return sub_1000CE0B0(a1, a2, a4);
  }

  else
  {
    v11 = MessageTypeByName;
    google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v23);
    Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v23, v11);
    v13 = (*(*Prototype + 24))(Prototype);
    google::protobuf::MessageLite::SerializeAsString(a2, __p);
    v14 = google::protobuf::MessageLite::ParseFromString(v13, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v15 = v13;
    if ((v14 & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 2341);
      v16 = google::protobuf::internal::LogMessage::operator<<(__p, "Found invalid proto option data for: ");
      v17 = (*(*a2 + 152))(a2);
      v18 = google::protobuf::internal::LogMessage::operator<<(v16, *(v17 + 8));
      google::protobuf::internal::LogFinisher::operator=(&v21, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      v15 = a2;
    }

    v19 = sub_1000CE0B0(a1, v15, a4);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v23);
    return v19;
  }
}

void sub_1000CE02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  google::protobuf::internal::LogMessage::~LogMessage(&__p);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a19);
  _Unwind_Resume(a1);
}

BOOL sub_1000CE0B0(int a1, const google::protobuf::Message *a2, uint64_t a3)
{
  sub_1000CE6B8(a3);
  (*(*a2 + 152))(a2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v43 = v6;
  google::protobuf::Reflection::ListFields(v6, a2, &v56);
  v7 = v56;
  v44 = v57;
  if (v56 != v57)
  {
    v48 = a1 + 1;
    v46 = a2;
    __n = 2 * a1;
    while (1)
    {
      v8 = *v7;
      v49 = *(*v7 + 60);
      v45 = v7;
      if (v49 != 3)
      {
        break;
      }

      v9 = google::protobuf::Reflection::FieldSize(v43, a2, v8);
      if (v9 >= 1)
      {
        goto LABEL_7;
      }

LABEL_67:
      v7 = v45 + 8;
      if (v45 + 8 == v44)
      {
        v7 = v56;
        goto LABEL_69;
      }
    }

    v9 = 1;
LABEL_7:
    for (i = 0; i != v9; ++i)
    {
      memset(&v55, 0, sizeof(v55));
      v11 = *(v8 + 48);
      if (v11)
      {
        v59.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v60[0] = v8;
        if (atomic_load_explicit(v11, memory_order_acquire) != -1)
        {
          v50.__r_.__value_.__r.__words[0] = &v59;
          v50.__r_.__value_.__l.__size_ = v60;
          __p.__r_.__value_.__r.__words[0] = &v50;
          std::__call_once(v11, &__p, sub_1000B32C4);
        }
      }

      if ((*(v8 + 56) & 0xFFFFFFFE) != 0xA)
      {
        google::protobuf::TextFormat::PrintFieldValueToString();
      }

      memset(&__p, 0, sizeof(__p));
      google::protobuf::TextFormat::Printer::Printer(&v50);
      LODWORD(v50.__r_.__value_.__l.__data_) = v48;
      if (v49 == 3)
      {
        v12 = i;
      }

      else
      {
        v12 = -1;
      }

      google::protobuf::TextFormat::Printer::PrintFieldValueToString(&v50, a2, v8, v12, &__p);
      std::string::append(&v55, "{\n");
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v55, p_p, size);
      std::string::append(&v55, __n, 32);
      std::string::append(&v55, "}");
      sub_1000CE774(v53, v53[1]);
      sub_1000CE7F8(v52, v52[1]);
      v15 = v51;
      v51 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      if (*(v8 + 67) == 1)
      {
        v16 = *(v8 + 8);
        std::operator+<char>();
        v17 = std::string::append(&v50, ")");
        v18 = v17->__r_.__value_.__r.__words[0];
        v59.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
        *(v59.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
        v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v18;
        __p.__r_.__value_.__l.__size_ = v59.__r_.__value_.__r.__words[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v59.__r_.__value_.__r.__words + 7);
        *(&__p.__r_.__value_.__s + 23) = v19;
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::operator=(&__p, *v8);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      sub_1000B3394(&v59, v20 + 3);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v59;
      }

      else
      {
        v21 = v59.__r_.__value_.__r.__words[0];
      }

      if (v20)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &__p;
        }

        else
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v21, v22, v20);
      }

      *(&v21->__r_.__value_.__l.__data_ + v20) = 2112800;
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v55;
      }

      else
      {
        v23 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v55.__r_.__value_.__l.__size_;
      }

      v25 = std::string::append(&v59, v23, v24);
      v26 = v25->__r_.__value_.__r.__words[0];
      v60[0] = v25->__r_.__value_.__l.__size_;
      *(v60 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
      v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v28 = *(a3 + 8);
      v29 = *(a3 + 16);
      if (v28 >= v29)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a3) >> 3);
        v32 = v31 + 1;
        if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100070E64();
        }

        v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 3);
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        if (v33 >= 0x555555555555555)
        {
          v34 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v34 = v32;
        }

        v52[0] = a3;
        if (v34)
        {
          sub_1000CE87C(a3, v34);
        }

        v35 = 24 * v31;
        *v35 = v26;
        *(v35 + 8) = v60[0];
        *(v35 + 15) = *(v60 + 7);
        *(v35 + 23) = v27;
        v30 = 24 * v31 + 24;
        v36 = *(a3 + 8) - *a3;
        v37 = v35 - v36;
        memcpy((v35 - v36), *a3, v36);
        v38 = *a3;
        *a3 = v37;
        *(a3 + 8) = v30;
        v39 = *(a3 + 16);
        *(a3 + 16) = 0;
        v50.__r_.__value_.__r.__words[2] = v38;
        v51 = v39;
        v50.__r_.__value_.__r.__words[0] = v38;
        v50.__r_.__value_.__l.__size_ = v38;
        sub_1000CE8D4(&v50);
        a2 = v46;
      }

      else
      {
        *v28 = v26;
        *(v28 + 8) = v60[0];
        *(v28 + 15) = *(v60 + 7);
        *(v28 + 23) = v27;
        v30 = v28 + 24;
      }

      *(a3 + 8) = v30;
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_67;
  }

LABEL_69:
  v41 = *a3;
  v40 = *(a3 + 8);
  if (v7)
  {
    v57 = v7;
    operator delete(v7);
  }

  return v41 != v40;
}

void sub_1000CE608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v43 = *(v41 - 160);
  if (v43)
  {
    *(v41 - 152) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE6B8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1000CE708(uint64_t a1)
{
  sub_1000CE774(a1 + 56, *(a1 + 64));
  sub_1000CE7F8(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000CE774(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000CE774(a1, *a2);
    sub_1000CE774(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void sub_1000CE7F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000CE7F8(a1, *a2);
    sub_1000CE7F8(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void sub_1000CE87C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t sub_1000CE8D4(uint64_t a1)
{
  sub_1000CE90C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000CE90C(uint64_t a1, void **a2)
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

std::string *sub_1000CE968@<X0>(std::string::value_type *__s@<X1>, std::string **a2@<X0>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return sub_1000CE9C0(*a2, a2[1], __s, a3);
}

void sub_1000CE9A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000CE9C0(std::string *result, std::string *a2, std::string::value_type *__s, std::string *this)
{
  if (result != a2)
  {
    v7 = result;
    v8 = 0;
    do
    {
      if (v8)
      {
        std::string::append(this, __s);
      }

      v9 = *(v7 + 23);
      v10 = *v7;
      if (v9 >= 0)
      {
        v10 = v7;
      }

      if (v9 < 0)
      {
        v9 = *(v7 + 8);
      }

      v11[0] = v10;
      v11[1] = v9;
      result = google::protobuf::StrAppend(this, v11);
      v7 += 24;
      v8 -= 24;
    }

    while (v7 != a2);
  }

  return result;
}

google::protobuf::FileDescriptorTables *google::protobuf::internal::OnShutdownDelete<google::protobuf::FileDescriptorTables>(google::protobuf::FileDescriptorTables *)::{lambda(void const*)#1}::__invoke(google::protobuf::FileDescriptorTables *result)
{
  if (result)
  {
    google::protobuf::FileDescriptorTables::~FileDescriptorTables(result);

    operator delete();
  }

  return result;
}

void sub_1000CEC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::OnShutdownDelete<std::set<std::string>>(std::set<std::string> *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    sub_1000D279C(result, *(result + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1000CED24(uint64_t a1, const void **a2)
{
  v2 = *sub_1000CEDC8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1000CEDC8(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000CEE64(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000CEE64(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_1000CEE64(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_1000CEED0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1000CEF34(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1000CEE64(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_1000CEE64(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

google::protobuf::UnknownFieldSet *sub_1000CEFC4(google::protobuf::UnknownFieldSet *a1)
{
  v2 = *a1;
  if (v2 != *(a1 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(a1);
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 1) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000CF014(void **this)
{
  *this = off_1001CF240;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ErrorCollector::~ErrorCollector(this);

  operator delete();
}

std::string *sub_1000CF088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1000CF0FC(google::protobuf::TextFormat::Finder *a1)
{
  google::protobuf::TextFormat::Finder::~Finder(a1);

  operator delete();
}

uint64_t sub_1000CF134(uint64_t a1, uint64_t a2, std::string *a3)
{
  v5 = (*(*a2 + 152))(a2);
  v6 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(*(a1 + 8), a3, *(v5 + 8), 0, 1);
  v8 = v7;
  if (v6 != 1)
  {
    if (v6 == 2 && (*(v7 + 67) & 1) != 0)
    {
      return v8;
    }

    return 0;
  }

  if (*(*(v5 + 32) + 72) != 1 || *(v7 + 128) < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v8 + 80);
    if (*(v11 + v9 + 80) == v5)
    {
      v12 = *(v11 + v9 + 48);
      if (v12)
      {
        v14 = v11 + v9;
        v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v12, memory_order_acquire) != -1)
        {
          v17[0] = &v15;
          v17[1] = &v14;
          v16 = v17;
          std::__call_once(v12, &v16, sub_1000B32C4);
        }
      }

      if (*(v11 + v9 + 56) == 11 && *(v11 + v9 + 60) == 1 && google::protobuf::FieldDescriptor::message_type((v11 + v9)) == v8)
      {
        break;
      }
    }

    ++v10;
    v9 += 152;
    if (v10 >= *(v8 + 128))
    {
      return 0;
    }
  }

  return v11 + v9;
}

uint64_t sub_1000CF2BC(uint64_t a1, uint64_t a2, const void **a3, std::string *a4)
{
  v7 = strlen("type.googleapis.com/");
  v8 = v7;
  v9 = *(a3 + 23);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a3;
    if (v8 != v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!memcmp(v10, "type.googleapis.com/", v8))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v7 == a3[1])
  {
    if (v7 == -1)
    {
      sub_1000CF3C0();
    }

    v10 = *a3;
    goto LABEL_7;
  }

LABEL_8:
  v11 = strlen("type.googleprod.com/");
  if ((v9 & 0x80000000) != 0)
  {
    if (v11 != a3[1])
    {
      return 0;
    }

    if (v11 == -1)
    {
      sub_1000CF3C0();
    }

    a3 = *a3;
  }

  else if (v11 != v9)
  {
    return 0;
  }

  if (memcmp(a3, "type.googleprod.com/", v11))
  {
    return 0;
  }

LABEL_16:
  if (google::protobuf::DescriptorBuilder::FindSymbol(*(a1 + 8), a4, 1) == 1)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_1000CF3D8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000CF434(exception, a1);
}

std::logic_error *sub_1000CF434(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000CF468(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CE6B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000CF4BC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1000CF5AC(a1, prime);
    }
  }
}

void sub_1000CF5AC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100070F54();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1000CF710(uint64_t a1)
{
  sub_1000CF74C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000CF74C(int a1, void **__p)
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

uint64_t sub_1000CF798(uint64_t a1)
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

void sub_1000CF7E4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CF838(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000CF838(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1000CF890(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CF8E4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000CF8E4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_1000CF948(v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1000CF948(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

void sub_1000CF9A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CF9F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1000CF9F8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_1000CFA64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CFAB8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1000CFAB8(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_1000CFB20(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000CFB74(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

google::protobuf::FileDescriptorTables *sub_1000CFB74(google::protobuf::FileDescriptorTables *result, google::protobuf::FileDescriptorTables **a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; result = sub_1000CFBC8(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

google::protobuf::FileDescriptorTables *sub_1000CFBC8(uint64_t a1, google::protobuf::FileDescriptorTables **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    google::protobuf::FileDescriptorTables::~FileDescriptorTables(result);

    operator delete();
  }

  return result;
}

const void **sub_1000CFC10(void *a1, const void **a2)
{
  v4 = sub_1000CFF30(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_1000CFE70();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1000D03DC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1000CFE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000D0454(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CFF14(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000D0454(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_1000CFF30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_1000CFF70(&v5, a2, v3);
}

unint64_t sub_1000CFF70(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1000D031C(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1000D0270(a2, a3);
  }

  else
  {
    return sub_1000D0178(a2, a3);
  }
}

unint64_t sub_1000D0178(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1000D0270(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1000D031C(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_1000D03DC(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_1000D0454(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1000D04B8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_100070F54();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t sub_1000D06BC(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_1000CF798(result);

    operator delete();
  }

  return result;
}

void sub_1000D0708(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t *sub_1000D0750(void *a1, char **a2)
{
  result = sub_1000D0788(a1, a2);
  if (result)
  {
    sub_1000D08B0(a1, result);
    return 1;
  }

  return result;
}

void *sub_1000D0788(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v5)
      {
        if (sub_1000CD70C(a1, (v14 + 2), a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

uint64_t sub_1000D08B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000D08F4(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_1000D08F4@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_1000D0A30(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_1000CD868(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000D0A84(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t *sub_1000D0A84(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000D0AF8(v6, a2);
  return v3;
}

uint64_t *sub_1000D0AF8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_1000D0E78(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_100070E64();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000D0F8C(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1000D0F8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100070F54();
}

void sub_1000D0FD4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_100070E64();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      sub_1000D10F0(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_1000D10F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100070F54();
}

void sub_1000D1138(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100070E64();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_1000D125C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_1000D12A4(v14);
  }
}

void sub_1000D125C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t sub_1000D12A4(uint64_t a1)
{
  sub_1000D12DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000D12DC(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_1000CF948(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void sub_1000D132C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100070E64();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_1000D125C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_1000D1450(v14);
  }
}

uint64_t sub_1000D1450(uint64_t a1)
{
  sub_1000D1488(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000D1488(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1000D14FC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100070E64();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_1000D125C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_1000D1620(v14);
  }
}

uint64_t sub_1000D1620(uint64_t a1)
{
  sub_1000D1658(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000D1658(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1000D16C8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100070E64();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_1000D125C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_1000D17EC(v14);
  }
}

uint64_t *sub_1000D17EC(uint64_t *a1)
{
  sub_1000D1824(a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

google::protobuf::FileDescriptorTables *sub_1000D1824(google::protobuf::FileDescriptorTables *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 4);
    *(v3 + 2) = v4 - 8;
    result = sub_1000CFBC8(v5, (v4 - 8));
  }

  return result;
}

void sub_1000D186C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100070E64();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1000D19D8(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1000D1A30(v18);
  }
}

void sub_1000D19D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t sub_1000D1A30(uint64_t a1)
{
  sub_1000D1A68(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000D1A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_1000D1AC8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1000CF74C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1000D1B24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100070F54();
}

void *sub_1000D1B6C(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v5)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1000CD70C(a1, (v14 + 2), a2))
  {
    goto LABEL_22;
  }

  return v14;
}

void *sub_1000D1DE4(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v5)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1000CD70C(a1, (v14 + 2), a2))
  {
    goto LABEL_22;
  }

  return v14;
}

uint64_t sub_1000D2064(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_1000D2100(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1000D2100(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 10);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_1000D2168(uint64_t a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100070E64();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1000D19D8(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  v16 = 0;
  sub_1000D2288((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_1000D1A30(&v13);
  return v7;
}

void sub_1000D2274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D1A30(va);
  _Unwind_Resume(a1);
}

void *sub_1000D2288(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000D22FC(result, a2);
  }

  return result;
}

void sub_1000D22E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D22FC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100070E64();
}

std::string *sub_1000D234C(std::string *result, std::string *a2, std::string::value_type *__s, std::string *this)
{
  if (result != a2)
  {
    v7 = result;
    v8 = 0;
    do
    {
      if (v8)
      {
        std::string::append(this, __s);
      }

      data = v7->__r_.__value_.__l.__data_;
      v7 = (v7 + 4);
      v10[0] = v11;
      v10[1] = google::protobuf::FastInt32ToBufferLeft(data, v11, __s) - v11;
      result = google::protobuf::StrAppend(this, v10);
      v8 -= 4;
    }

    while (v7 != a2);
  }

  return result;
}

const void **sub_1000D2410(void *a1, const void **a2)
{
  v4 = sub_1000CFF30(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1000D03DC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

const void **sub_1000D26A0(void *a1, const void **a2)
{
  v4 = sub_1000CFF30(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_1000D03DC(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1000D279C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000D279C(a1, *a2);
    sub_1000D279C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

char **google::protobuf::internal::OnShutdownDelete<google::protobuf::DescriptorPool>(google::protobuf::DescriptorPool *)::{lambda(void const*)#1}::__invoke(char **result)
{
  if (result)
  {
    google::protobuf::DescriptorPool::~DescriptorPool(result);

    operator delete();
  }

  return result;
}

const void **sub_1000D2840(void *a1, const void **a2)
{
  v4 = sub_1000CFF30(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_1000D03DC(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_1000D293C(void *a1, const void **a2)
{
  v4 = sub_1000CFF30(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1000D03DC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1000D2BB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100070F54();
}

void *sub_1000D2BFC(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_1000D2CC8(std::string **a1, const std::string **a2, __int128 **a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1000D2E54(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000D2E94(a1, v10);
    }

    sub_100070E64();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v14 = *v6++;
        std::string::operator=(v8++, v14);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = &a2[0xAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3)];
    if (v11 != v8)
    {
      do
      {
        v13 = *v6++;
        std::string::operator=(v8++, v13);
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_1000D2EE0(a1, v12, a3, v11);
  }
}

void sub_1000D2E54(uint64_t a1)
{
  if (*a1)
  {
    sub_1000CE6B8(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1000D2E94(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1000CE87C(a1, a2);
  }

  sub_100070E64();
}

char *sub_1000D2EE0(uint64_t a1, __int128 **a2, __int128 **a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        sub_1000B32D8(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        *(v4 + 2) = *(v7 + 2);
        *v4 = v8;
      }

      ++v6;
      v4 += 24;
      v13 = v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_1000D2FA4(v10);
  return v4;
}

uint64_t sub_1000D2FA4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D2FDC(a1);
  }

  return a1;
}

void sub_1000D2FDC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_1000D3024(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D30A0(result, a4);
  }

  return result;
}

void sub_1000D3084(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D30A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1000D2BB4(a1, a2);
  }

  sub_100070E64();
}

const void **sub_1000D30DC(void *a1, const void **a2)
{
  v4 = sub_1000CFF30(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_1000D333C();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1000D03DC(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1000D3318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000D0454(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D33D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000D0454(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D33F4(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1000D0A84(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1000D35B0(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      sub_100070E64();
    }

    v10 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1745D1745D1745DLL)
    {
      v11 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_100070F54();
    }

    v12 = 88 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 24) = v13;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(v12 + 48) = a2[3];
    *(v12 + 64) = *(a2 + 8);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(v12 + 72) = *(a2 + 72);
    v14 = *a1;
    v15 = a1[1];
    v16 = v12 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = *a1;
      v18 = v12 + *a1 - v15;
      do
      {
        v19 = *v17;
        *(v18 + 16) = *(v17 + 2);
        *v18 = v19;
        *(v17 + 1) = 0;
        *(v17 + 2) = 0;
        *v17 = 0;
        v20 = *(v17 + 24);
        *(v18 + 40) = *(v17 + 5);
        *(v18 + 24) = v20;
        *(v17 + 4) = 0;
        *(v17 + 5) = 0;
        *(v17 + 3) = 0;
        *(v18 + 56) = 0;
        *(v18 + 64) = 0;
        *(v18 + 48) = *(v17 + 3);
        *(v18 + 64) = *(v17 + 8);
        *(v17 + 6) = 0;
        *(v17 + 7) = 0;
        *(v17 + 8) = 0;
        *(v18 + 72) = *(v17 + 72);
        v17 += 88;
        v18 += 88;
      }

      while (v17 != v15);
      do
      {
        sub_1000D394C(v14);
        v14 += 88;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    v7 = v12 + 88;
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = a2[3];
    *(v3 + 64) = *(a2 + 8);
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(v3 + 72) = *(a2 + 72);
    v7 = v3 + 88;
  }

  a1[1] = v7;
}

char *sub_1000D380C(char *__dst, __int128 *a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000B32D8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v11;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000B32D8(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v12;
  }

  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_1000D3024((__dst + 48), *a4, a4[1], (a4[1] - *a4) >> 2);
  *(__dst + 9) = a5;
  *(__dst + 10) = a6;
  return __dst;
}

void sub_1000D38C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D38F8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000D394C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *sub_1000D39B4(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1000B32D8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1000D3A14(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100070E64();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1000CE87C(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000B32D8(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1000CE8D4(&v17);
  return v11;
}

void sub_1000D3B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000CE8D4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000D3B54(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t sub_1000D3C20(uint64_t a1, const void **a2)
{
  result = *sub_1000CEDC8(a1, &v3, a2);
  if (!result)
  {
    sub_1000D3CA0();
  }

  return result;
}

void sub_1000D3D34(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000CEED0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D4B0C(uint64_t a1, const void **a2)
{
  v2 = *sub_1000CEDC8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1000D4BB0(uint64_t a1, const void **a2)
{
  result = *sub_1000CEDC8(a1, &v3, a2);
  if (!result)
  {
    sub_1000D4C48();
  }

  return result;
}

void sub_1000D4CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000CEED0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1000D5DB0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000D5DB0(a1, *a2);
    sub_1000D5DB0(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t *sub_1000D5E14(uint64_t a1, int *a2)
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

void sub_1000D5EEC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000D5EEC(a1, *a2);
    sub_1000D5EEC(a1, a2[1]);
    sub_1000D5F48((a2 + 4));

    operator delete(a2);
  }
}

void sub_1000D5F48(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void sub_1000D5FA0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000D5FA0(a1, *a2);
    sub_1000D5FA0(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1000D6004(uint64_t a1, int **a2)
{
  result = *sub_1000D609C(a1, &v3, a2);
  if (!result)
  {
    sub_1000D615C();
  }

  return result;
}

void *sub_1000D609C(uint64_t a1, void *a2, int **a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = a3[1];
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        v9 = v7[5];
        if (v8 != v9)
        {
          break;
        }

LABEL_12:
        if (*a3 != v6)
        {
          v15 = (*a3 + 1);
          while (v8 != v9)
          {
            v16 = *v8;
            v17 = *(v15 - 4);
            if (*v8 < v17)
            {
              break;
            }

            ++v8;
            v18 = v17 < v16 || v15 == v6;
            v15 += 4;
            if (v18)
            {
              goto LABEL_27;
            }
          }

          result = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

      v10 = v8 + 1;
      v11 = *a3;
      while (v11 != v6)
      {
        v12 = *v11;
        v13 = *(v10 - 1);
        if (*v11 < v13)
        {
          break;
        }

        ++v11;
        if (v13 < v12 || v10++ == v9)
        {
          goto LABEL_12;
        }
      }

      v4 = *v7;
      result = v7;
    }

    while (*v7);
  }

  else
  {
    v7 = result;
  }

LABEL_27:
  *a2 = v7;
  return result;
}

void sub_1000D61E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000D6204(v3, v2);
  _Unwind_Resume(a1);
}