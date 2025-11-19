void sentencepiece::TrainerSpec::CheckTypeAndMergeFrom(sentencepiece::TrainerSpec *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::TrainerSpec::MergeFrom(this, lpsrc);
}

void sentencepiece::TrainerSpec::MergeFrom(sentencepiece::TrainerSpec *this, const sentencepiece::TrainerSpec *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v35, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = google::protobuf::internal::LogMessage::operator<<(v35, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v34, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v35[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56, a2 + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, a2 + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, a2 + 104);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, a2 + 128);
  v13 = *(a2 + 10);
  if (!v13)
  {
    goto LABEL_47;
  }

  if (v13)
  {
    v14 = *(a2 + 19);
    *(this + 10) |= 1u;
    v15 = *(this + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 152), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 20);
  *(this + 10) |= 2u;
  v17 = *(this + 1);
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 160), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v13 & 4) == 0)
  {
LABEL_17:
    if ((v13 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v18 = *(a2 + 21);
  *(this + 10) |= 4u;
  v19 = *(this + 1);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 168), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v13 & 8) == 0)
  {
LABEL_18:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v20 = *(a2 + 22);
  *(this + 10) |= 8u;
  v21 = *(this + 1);
  if (v21)
  {
    v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 176), (v20 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v13 & 0x10) == 0)
  {
LABEL_19:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v24 = *(a2 + 24);
    *(this + 10) |= 0x20u;
    v25 = *(this + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 192), (v24 & 0xFFFFFFFFFFFFFFFELL), v25);
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v22 = *(a2 + 23);
  *(this + 10) |= 0x10u;
  v23 = *(this + 1);
  if (v23)
  {
    v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 184), (v22 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v26 = *(a2 + 25);
  *(this + 10) |= 0x40u;
  v27 = *(this + 1);
  if (v27)
  {
    v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((this + 200), (v26 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v13 & 0x80) != 0)
  {
LABEL_44:
    v28 = *(a2 + 26);
    *(this + 10) |= 0x80u;
    v29 = *(this + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 208), (v28 & 0xFFFFFFFFFFFFFFFELL), v29);
  }

LABEL_47:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v13 & 0x100) != 0)
  {
    v32 = *(a2 + 27);
    *(this + 10) |= 0x100u;
    v33 = *(this + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 216), (v32 & 0xFFFFFFFFFFFFFFFELL), v33);
    if ((v13 & 0x200) == 0)
    {
LABEL_50:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(this + 56) = *(a2 + 56);
  if ((v13 & 0x400) == 0)
  {
LABEL_51:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(this + 57) = *(a2 + 57);
  if ((v13 & 0x800) == 0)
  {
LABEL_52:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(this + 29) = *(a2 + 29);
  if ((v13 & 0x1000) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(this + 60) = *(a2 + 60);
  if ((v13 & 0x2000) == 0)
  {
LABEL_54:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(this + 245) = *(a2 + 245);
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(this + 244) = *(a2 + 244);
  if ((v13 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v13 & 0x8000) != 0)
  {
LABEL_56:
    *(this + 246) = *(a2 + 246);
  }

LABEL_57:
  *(this + 10) |= v13;
LABEL_58:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v13 & 0x10000) != 0)
  {
    *(this + 247) = *(a2 + 247);
    if ((v13 & 0x20000) == 0)
    {
LABEL_61:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(this + 248) = *(a2 + 248);
  if ((v13 & 0x40000) == 0)
  {
LABEL_62:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(this + 249) = *(a2 + 249);
  if ((v13 & 0x80000) == 0)
  {
LABEL_63:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(this + 250) = *(a2 + 250);
  if ((v13 & 0x100000) == 0)
  {
LABEL_64:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(this + 63) = *(a2 + 63);
  if ((v13 & 0x200000) == 0)
  {
LABEL_65:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(this + 33) = *(a2 + 33);
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(this + 64) = *(a2 + 64);
  if ((v13 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v13 & 0x800000) != 0)
  {
LABEL_67:
    *(this + 68) = *(a2 + 68);
  }

LABEL_68:
  *(this + 10) |= v13;
LABEL_69:
  if (!HIBYTE(v13))
  {
    goto LABEL_79;
  }

  if ((v13 & 0x1000000) != 0)
  {
    *(this + 69) = *(a2 + 69);
    if ((v13 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(this + 70) = *(a2 + 70);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(this + 71) = *(a2 + 71);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(this + 72) = *(a2 + 72);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(this + 73) = *(a2 + 73);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(this + 75) = *(a2 + 75);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(this + 76) = *(a2 + 76);
    goto LABEL_78;
  }

LABEL_124:
  *(this + 74) = *(a2 + 74);
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(this + 10) |= v13;
LABEL_79:
  v30 = *(a2 + 11);
  if (!v30)
  {
    goto LABEL_90;
  }

  if (v30)
  {
    *(this + 308) = *(a2 + 308);
    if ((v30 & 2) == 0)
    {
LABEL_82:
      if ((v30 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(this + 309) = *(a2 + 309);
  if ((v30 & 4) == 0)
  {
LABEL_83:
    if ((v30 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(this + 310) = *(a2 + 310);
  if ((v30 & 8) == 0)
  {
LABEL_84:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(this + 311) = *(a2 + 311);
  if ((v30 & 0x10) == 0)
  {
LABEL_85:
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(this + 312) = *(a2 + 312);
  if ((v30 & 0x20) == 0)
  {
LABEL_86:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(this + 79) = *(a2 + 79);
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(this + 313) = *(a2 + 313);
  if ((v30 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v30 & 0x80) != 0)
  {
LABEL_88:
    *(this + 80) = *(a2 + 80);
  }

LABEL_89:
  *(this + 11) |= v30;
LABEL_90:
  if ((v30 & 0x100) != 0)
  {
    v31 = *(a2 + 81);
    *(this + 11) |= 0x100u;
    *(this + 81) = v31;
  }
}

void sub_26566C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::TrainerSpec::CopyFrom(sentencepiece::TrainerSpec *this, const sentencepiece::TrainerSpec *a2)
{
  if (a2 != this)
  {
    sentencepiece::TrainerSpec::Clear(this);

    sentencepiece::TrainerSpec::MergeFrom(this, a2);
  }
}

float sentencepiece::TrainerSpec::InternalSwap(sentencepiece::TrainerSpec *this, sentencepiece::TrainerSpec *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }

LABEL_5:
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v4)
    {
LABEL_6:
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v7 + 2);
      *v8 = *v7;
      *(v8 + 2) = v11;
      *v7 = v10;
      *(v7 + 2) = v9;
      goto LABEL_8;
    }

LABEL_50:
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 56), (a2 + 56));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 80), (a2 + 80));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 104), (a2 + 104));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 128), (a2 + 128));
  v14 = *(this + 1);
  v15 = v14;
  if (v14)
  {
    v15 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 19) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 19) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 19, v15);
    v17 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 19, v15);
    v18 = v16[2];
    v19 = *v16;
    v20 = v17[2];
    *v16 = *v17;
    v16[2] = v20;
    *v17 = v19;
    v17[2] = v18;
    v14 = *v5;
  }

  v21 = v14 & 1;
  v22 = v14;
  if (v14)
  {
    v22 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 20) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 20) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v23 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 20, v22);
    v24 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 20, v22);
    v25 = v23[2];
    v26 = *v23;
    v27 = v24[2];
    *v23 = *v24;
    v23[2] = v27;
    *v24 = v26;
    v24[2] = v25;
    v14 = *v5;
    v21 = *v5 & 1;
  }

  if (v21)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 21) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 21) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v28 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 21, v14);
    v29 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 21, v14);
    v30 = v28[2];
    v31 = *v28;
    v32 = v29[2];
    *v28 = *v29;
    v28[2] = v32;
    *v29 = v31;
    v29[2] = v30;
  }

  v33 = *(this + 22);
  if (v33)
  {
    v34 = *(a2 + 22);
  }

  else
  {
    v34 = *(a2 + 22);
    if (!v34)
    {
      goto LABEL_27;
    }
  }

  *(this + 22) = v34;
  *(a2 + 22) = v33;
LABEL_27:
  v35 = *(this + 23);
  if (v35)
  {
    v36 = *(a2 + 23);
  }

  else
  {
    v36 = *(a2 + 23);
    if (!v36)
    {
      goto LABEL_31;
    }
  }

  *(this + 23) = v36;
  *(a2 + 23) = v35;
LABEL_31:
  v37 = *(this + 24);
  if (v37)
  {
    v38 = *(a2 + 24);
  }

  else
  {
    v38 = *(a2 + 24);
    if (!v38)
    {
      goto LABEL_35;
    }
  }

  *(this + 24) = v38;
  *(a2 + 24) = v37;
LABEL_35:
  v39 = *(this + 25);
  if (v39)
  {
    v40 = *(a2 + 25);
  }

  else
  {
    v40 = *(a2 + 25);
    if (!v40)
    {
      goto LABEL_39;
    }
  }

  *(this + 25) = v40;
  *(a2 + 25) = v39;
LABEL_39:
  v41 = *(this + 26);
  if (v41)
  {
    v42 = *(a2 + 26);
  }

  else
  {
    v42 = *(a2 + 26);
    if (!v42)
    {
      goto LABEL_43;
    }
  }

  *(this + 26) = v42;
  *(a2 + 26) = v41;
LABEL_43:
  v43 = *(this + 1);
  if (v43)
  {
    v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 27) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 27) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v44 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 27, v43);
    v45 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 27, v43);
    v46 = v44[2];
    v47 = *v44;
    v48 = v45[2];
    *v44 = *v45;
    v44[2] = v48;
    *v45 = v47;
    v45[2] = v46;
  }

  v49 = *(this + 28);
  v50 = *(this + 29);
  *(this + 14) = *(a2 + 14);
  *(a2 + 28) = v49;
  *(a2 + 29) = v50;
  v51 = *(this + 30);
  v52 = *(this + 31);
  *(this + 15) = *(a2 + 15);
  *(a2 + 30) = v51;
  *(a2 + 31) = v52;
  v53 = *(this + 32);
  v54 = *(this + 33);
  *(this + 16) = *(a2 + 16);
  *(a2 + 32) = v53;
  *(a2 + 33) = v54;
  LODWORD(v53) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v53;
  LODWORD(v53) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v53;
  v55 = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v55;
  LODWORD(v53) = *(this + 71);
  *(this + 71) = *(a2 + 71);
  *(a2 + 71) = v53;
  result = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = result;
  LODWORD(v53) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v53;
  LODWORD(v53) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v53;
  LODWORD(v53) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v53;
  LODWORD(v53) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v53;
  LOBYTE(v53) = *(this + 308);
  *(this + 308) = *(a2 + 308);
  *(a2 + 308) = v53;
  LOBYTE(v53) = *(this + 309);
  *(this + 309) = *(a2 + 309);
  *(a2 + 309) = v53;
  LOBYTE(v53) = *(this + 310);
  *(this + 310) = *(a2 + 310);
  *(a2 + 310) = v53;
  LOBYTE(v53) = *(this + 311);
  *(this + 311) = *(a2 + 311);
  *(a2 + 311) = v53;
  LOBYTE(v53) = *(this + 312);
  *(this + 312) = *(a2 + 312);
  *(a2 + 312) = v53;
  LOBYTE(v53) = *(this + 313);
  *(this + 313) = *(a2 + 313);
  *(a2 + 313) = v53;
  LODWORD(v53) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v53;
  LODWORD(v53) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v53;
  LODWORD(v53) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v53;
  return result;
}

uint64_t sentencepiece::NormalizerSpec::NormalizerSpec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2877041B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_287704250;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 16843008;
  return a1;
}

sentencepiece::NormalizerSpec *sentencepiece::NormalizerSpec::NormalizerSpec(sentencepiece::NormalizerSpec *this, const sentencepiece::NormalizerSpec *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2877041B0;
  *(this + 2) = &unk_287704250;
  *(this + 3) = 0;
  v5 = (this + 24);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = *(a2 + 12);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 24));
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 56), (*(a2 + 7) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 12);
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 64), (*(a2 + 8) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 12);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 72), (*(a2 + 9) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sentencepiece::NormalizerSpec::~NormalizerSpec(sentencepiece::NormalizerSpec *this)
{
  sentencepiece::NormalizerSpec::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 24));
}

{
  sentencepiece::NormalizerSpec::~NormalizerSpec(this);

  JUMPOUT(0x26675B300);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::NormalizerSpec::SharedDtor(sentencepiece::NormalizerSpec *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer((this + 56));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x26675B300](v5, 0x1012C40EC159624);
  }

  result = (this + 64);
  if (*(this + 8) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v7 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x26675B300](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 9);
  v9 = (this + 72);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v11 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v9);
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    return MEMORY[0x26675B300](v12, 0x1012C40EC159624);
  }

  return result;
}

void sub_26566CD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk tosentencepiece::NormalizerSpec::~NormalizerSpec(sentencepiece::NormalizerSpec *this)
{
  sentencepiece::NormalizerSpec::~NormalizerSpec((this - 16));
}

{
  sentencepiece::NormalizerSpec::~NormalizerSpec((this - 16));

  JUMPOUT(0x26675B300);
}

void *sentencepiece::NormalizerSpec::default_instance(sentencepiece::NormalizerSpec *this)
{
  if (atomic_load_explicit(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_NormalizerSpec_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_NormalizerSpec_default_instance_;
}

void sentencepiece::NormalizerSpec::Clear(sentencepiece::NormalizerSpec *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 24));
  v2 = *(this + 12);
  if ((v2 & 7) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v4 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v3 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v5 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_17:
  if ((v2 & 0x78) != 0)
  {
    *(this + 20) = 16843008;
  }

  *(this + 12) = 0;
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 31) < 0)
    {
      **(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::NormalizerSpec::_InternalParse(sentencepiece::NormalizerSpec *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_76;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(this + 12) |= 1u;
          v23 = *(this + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (this + 56);
LABEL_53:
          v28 = google::protobuf::internal::ArenaStringPtr::Mutable(v24, v23);
          v29 = google::protobuf::internal::InlineGreedyStringParser(v28, v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(this + 12) |= 2u;
          v23 = *(this + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (this + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v41 = v16;
          *(this + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v41 = v39;
        *(this + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(this + 12) |= 4u;
            v23 = *(this + 1);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (this + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(this + 1);
            if (v31)
            {
              v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v32 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
              v7 = v41;
            }

            v29 = google::protobuf::internal::UnknownFieldParse(v8, v32, v7, a3);
          }

          else
          {
            v29 = google::protobuf::internal::ExtensionSet::ParseField((this + 24), v8, v7, &sentencepiece::_NormalizerSpec_default_instance_, this + 1, a3);
          }

LABEL_54:
          v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v41 = v19;
          *(this + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v41 = v37;
        *(this + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_44:
          v41 = v26;
          *(this + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v41 = v33;
        *(this + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v41 = v12;
          *(this + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v41 = v35;
        *(this + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v41, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 12) |= v5;
  return v41;
}

unsigned __int8 *sentencepiece::NormalizerSpec::_InternalSerialize(sentencepiece::NormalizerSpec *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 12);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 24), 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v11 >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v17, v16, v11);
}

uint64_t sentencepiece::NormalizerSpec::ByteSizeLong(sentencepiece::NormalizerSpec *this)
{
  result = google::protobuf::internal::ExtensionSet::ByteSize((this + 24));
  v3 = *(this + 12);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v9 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = result + 3;
  if ((v3 & 8) == 0)
  {
    v7 = result;
  }

  result = v7 + ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
LABEL_11:
  v8 = *(this + 1);
  if (v8)
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(this + 13) = result;
  return result;
}

void sentencepiece::NormalizerSpec::CheckTypeAndMergeFrom(sentencepiece::NormalizerSpec *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::NormalizerSpec::MergeFrom(this, lpsrc);
}

void sentencepiece::NormalizerSpec::MergeFrom(sentencepiece::NormalizerSpec *this, const sentencepiece::NormalizerSpec *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2246);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v20, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 24), (a2 + 24));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 12);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 7);
      *(this + 12) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 8);
    *(this + 12) |= 2u;
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

LABEL_30:
    v18 = *(a2 + 9);
    *(this + 12) |= 4u;
    v19 = *(this + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(this + 80) = *(a2 + 80);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(this + 81) = *(a2 + 81);
    if ((v13 & 0x20) == 0)
    {
LABEL_20:
      if ((v13 & 0x40) == 0)
      {
LABEL_22:
        *(this + 12) |= v13;
        return;
      }

LABEL_21:
      *(this + 83) = *(a2 + 83);
      goto LABEL_22;
    }

LABEL_35:
    *(this + 82) = *(a2 + 82);
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_26566D8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::NormalizerSpec::CopyFrom(sentencepiece::NormalizerSpec *this, const sentencepiece::NormalizerSpec *a2)
{
  if (a2 != this)
  {
    sentencepiece::NormalizerSpec::Clear(this);

    sentencepiece::NormalizerSpec::MergeFrom(this, a2);
  }
}

uint64_t *sentencepiece::NormalizerSpec::InternalSwap(sentencepiece::NormalizerSpec *this, sentencepiece::NormalizerSpec *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 24), (a2 + 24));
  v4 = (this + 8);
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_26:
      v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    goto LABEL_9;
  }

  v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = *(v10 + 2);
  v12 = *v10;
  v13 = *(v9 + 2);
  *v10 = *v9;
  *(v10 + 2) = v13;
  *v9 = v12;
  *(v9 + 2) = v11;
  v5 = *(this + 1);
  LODWORD(v11) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (this + 56);
  if (*(this + 7) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 7) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(result, v14);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 7, v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  v20 = v5;
  if (v7)
  {
    v20 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 8) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 8) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v21 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 8, v20);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 8, v20);
    v22 = v21[2];
    v23 = *v21;
    v24 = result[2];
    *v21 = *result;
    v21[2] = v24;
    *result = v23;
    result[2] = v22;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 9) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 9) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v25 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 9, v5);
    result = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 9, v5);
    v26 = v25[2];
    v27 = *v25;
    v28 = result[2];
    *v25 = *result;
    v25[2] = v28;
    *result = v27;
    result[2] = v26;
  }

  v29 = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v29;
  v30 = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v30;
  v31 = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v31;
  v32 = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v32;
  return result;
}

void *sentencepiece::SelfTestData_Sample::SelfTestData_Sample(void *a1, uint64_t a2)
{
  *a1 = &unk_287704290;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto);
  }

  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  a1[4] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

sentencepiece::SelfTestData_Sample *sentencepiece::SelfTestData_Sample::SelfTestData_Sample(sentencepiece::SelfTestData_Sample *this, const sentencepiece::SelfTestData_Sample *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287704290;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v11 = *(v7 + 8);
    v10 = v7 + 8;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    std::string::append(v8, v13, v14);
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v15 = *v4;
    if (*v4)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 24), (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v15);
    v5 = *(a2 + 4);
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 2) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 32), (*(a2 + 4) & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  return this;
}

void sentencepiece::SelfTestData_Sample::~SelfTestData_Sample(sentencepiece::SelfTestData_Sample *this)
{
  sentencepiece::SelfTestData_Sample::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
}

{
  sentencepiece::SelfTestData_Sample::~SelfTestData_Sample(this);

  JUMPOUT(0x26675B300);
}

google::protobuf::internal::ArenaStringPtr *sentencepiece::SelfTestData_Sample::SharedDtor(sentencepiece::SelfTestData_Sample *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2362);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  result = (this + 24);
  if (*(this + 3) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v5 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x26675B300](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 4);
  v7 = (this + 32);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v9 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x26675B300](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_26566DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::SelfTestData_Sample::default_instance(sentencepiece::SelfTestData_Sample *this)
{
  if (atomic_load_explicit(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_Sample_sentencepiece_5fmodel_2eproto);
  }

  return sentencepiece::_SelfTestData_Sample_default_instance_;
}

uint64_t sentencepiece::SelfTestData_Sample::Clear(uint64_t this)
{
  v1 = *(this + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(this + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  *(this + 16) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return this;
}

google::protobuf::internal *sentencepiece::SelfTestData_Sample::_InternalParse(sentencepiece::SelfTestData_Sample *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v20 = a2;
  for (i = a3[11].i32[1]; (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v20, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (v20 + 1);
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v20 + 2);
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v8 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(this + 4) |= 2u;
        v14 = *(this + 1);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = (this + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(this + 4) |= 1u;
      v14 = *(this + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = (this + 24);
LABEL_26:
      v16 = google::protobuf::internal::ArenaStringPtr::Mutable(v15, v14);
      v13 = google::protobuf::internal::InlineGreedyStringParser(v16, v20, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      a3[10].i32[0] = v7 - 1;
      return v20;
    }

    v11 = *(this + 1);
    if (v11)
    {
      v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v12 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      v6 = v20;
    }

    v13 = google::protobuf::internal::UnknownFieldParse(v7, v12, v6, a3);
LABEL_27:
    v20 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *sentencepiece::SelfTestData_Sample::_InternalSerialize(sentencepiece::SelfTestData_Sample *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v11, v10, v4);
}

uint64_t sentencepiece::SelfTestData_Sample::ByteSizeLong(sentencepiece::SelfTestData_Sample *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(this + 1);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(this + 5) = v2;
  return v2;
}

void sentencepiece::SelfTestData_Sample::CheckTypeAndMergeFrom(sentencepiece::SelfTestData_Sample *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SelfTestData_Sample::MergeFrom(this, lpsrc);
}

void sentencepiece::SelfTestData_Sample::MergeFrom(sentencepiece::SelfTestData_Sample *this, const sentencepiece::SelfTestData_Sample *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2516);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 4);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 3);
      *(this + 4) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 24), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      v16 = *(a2 + 4);
      *(this + 4) |= 2u;
      v17 = *(this + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 32), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    }
  }
}

void sub_26566E4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SelfTestData_Sample::CopyFrom(sentencepiece::SelfTestData_Sample *this, const sentencepiece::SelfTestData_Sample *a2)
{
  if (a2 != this)
  {
    sentencepiece::SelfTestData_Sample::Clear(this);

    sentencepiece::SelfTestData_Sample::MergeFrom(this, a2);
  }
}

__n128 sentencepiece::SelfTestData_Sample::InternalSwap(sentencepiece::SelfTestData_Sample *this, sentencepiece::SelfTestData_Sample *a2)
{
  v4 = (this + 8);
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v8;
    goto LABEL_9;
  }

  v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v11 = v10[1].n128_u64[0];
  result = *v10;
  v13 = *(v9 + 2);
  *v10 = *v9;
  v10[1].n128_u64[0] = v13;
  *v9 = result;
  *(v9 + 2) = v11;
  v5 = *(this + 1);
  LODWORD(v11) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  if (*(this + 3) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 3) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v15 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v14);
    v16 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 3, v14);
    v17 = v15[1].n128_i64[0];
    result = *v15;
    v18 = v16[2];
    *v15 = *v16;
    v15[1].n128_u64[0] = v18;
    *v16 = result;
    v16[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(this + 4) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 4) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v19 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 4, v5);
    v20 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 4, v5);
    v21 = v19[1].n128_i64[0];
    result = *v19;
    v22 = v20[2];
    *v19 = *v20;
    v19[1].n128_u64[0] = v22;
    *v20 = result;
    v20[2] = v21;
  }

  return result;
}

uint64_t sentencepiece::SelfTestData::SelfTestData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287704310;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto);
  }

  return a1;
}

void sub_26566E774(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

sentencepiece::SelfTestData *sentencepiece::SelfTestData::SelfTestData(sentencepiece::SelfTestData *this, const sentencepiece::SelfTestData *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287704310;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 6) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40, a2 + 40);
  *(this + 16) = 0;
  v6 = *(a2 + 1);
  if (v6)
  {
    if (*v4)
    {
      v7 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8 >= 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v10, v11);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  return this;
}

void sub_26566E868(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 40));
  google::protobuf::internal::ExtensionSet::~ExtensionSet(v1);
  _Unwind_Resume(a1);
}

void sentencepiece::SelfTestData::~SelfTestData(sentencepiece::SelfTestData *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2589);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  google::protobuf::internal::InternalMetadata::Delete<std::string>(v3);
  google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::~RepeatedPtrField(this + 5);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::SelfTestData::~SelfTestData(this);

  JUMPOUT(0x26675B300);
}

void sub_26566E938(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  __clang_call_terminate(a1);
}

void *sentencepiece::SelfTestData::default_instance(sentencepiece::SelfTestData *this)
{
  if (atomic_load_explicit(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SelfTestData_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_SelfTestData_default_instance_;
}

void sentencepiece::SelfTestData::Clear(sentencepiece::SelfTestData *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 31) < 0)
    {
      **(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    else
    {
      *(v3 + 8) = 0;
      *(v3 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::SelfTestData::_InternalParse(sentencepiece::SelfTestData *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v5 = (v23 + 1);
      v6 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v21;
LABEL_6:
      if (v6 == 10)
      {
        v10 = v5 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v23 = (v10 + 1);
          v12 = *(this + 7);
          if (!v12)
          {
            break;
          }

          v17 = *(this + 12);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(this + 12) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(this + 13))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData_Sample>(*(this + 5));
          v15 = *(this + 12);
          v16 = *(this + 7) + 8 * v15;
          *(this + 12) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v23;
LABEL_20:
          v10 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData_Sample>(a3, v14, v11);
          v23 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(this + 13);
LABEL_16:
        google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 10, v13 + 1);
        v12 = *(this + 7);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 20) = v6 - 1;
        return v23;
      }

      if (v6 < 0x640)
      {
        v18 = *(this + 1);
        if (v18)
        {
          v19 = ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v19 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
          v5 = v23;
        }

        v9 = google::protobuf::internal::UnknownFieldParse(v6, v19, v5, a3);
      }

      else
      {
        v9 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v6, v5, &sentencepiece::_SelfTestData_default_instance_, this + 1, a3);
      }

      v23 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v5 = (v23 + 2);
LABEL_5:
    v23 = v5;
    goto LABEL_6;
  }

  return v23;
}

unsigned __int8 *sentencepiece::SelfTestData::_InternalSerialize(sentencepiece::SelfTestData *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40, i);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
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
          a2[2] = v11;
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sentencepiece::SelfTestData_Sample::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, a2, a3);
  v15 = v14;
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v14 >= v19)
  {
    v21 = v19;
    memcpy(v14, v20, v19);
    v15 += v21;
    return v15;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v20, v19, v14);
}

uint64_t sentencepiece::SelfTestData::ByteSizeLong(sentencepiece::SelfTestData *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 12);
  v4 = v2 + v3;
  v5 = *(this + 7);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sentencepiece::SelfTestData_Sample::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(this + 16) = v4;
  return v4;
}

void sentencepiece::SelfTestData::CheckTypeAndMergeFrom(sentencepiece::SelfTestData *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::SelfTestData::MergeFrom(this, lpsrc);
}

void sentencepiece::SelfTestData::MergeFrom(sentencepiece::SelfTestData *this, const sentencepiece::SelfTestData *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2724);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(this + 40, a2 + 40);
}

void sub_26566EFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::SelfTestData::CopyFrom(sentencepiece::SelfTestData *this, const sentencepiece::SelfTestData *a2)
{
  if (a2 != this)
  {
    sentencepiece::SelfTestData::Clear(this);

    sentencepiece::SelfTestData::MergeFrom(this, a2);
  }
}

double sentencepiece::SelfTestData::InternalSwap(sentencepiece::SelfTestData *this, sentencepiece::SelfTestData *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_5:
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (v4)
    {
LABEL_6:
      v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
      v9 = *(v8 + 2);
      v10 = *v8;
      v11 = *(v7 + 2);
      *v8 = *v7;
      *(v8 + 2) = v11;
      *v7 = v10;
      *(v7 + 2) = v9;
      goto LABEL_8;
    }

LABEL_12:
    v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:

  *&result = google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 40), (a2 + 40)).n128_u64[0];
  return result;
}

void *sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(void *a1, uint64_t a2)
{
  *a1 = &unk_287704390;
  a1[1] = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 2), a2);
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto);
  }

  a1[6] = &google::protobuf::internal::fixed_address_empty_string;
  a1[7] = 0x100000000;
  return a1;
}

sentencepiece::ModelProto_SentencePiece *sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(sentencepiece::ModelProto_SentencePiece *this, const sentencepiece::ModelProto_SentencePiece *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287704390;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = *(a2 + 10);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 40))
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((this + 48), (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(this + 7) = *(a2 + 7);
  return this;
}

void sentencepiece::ModelProto_SentencePiece::~ModelProto_SentencePiece(sentencepiece::ModelProto_SentencePiece *this)
{
  sentencepiece::ModelProto_SentencePiece::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  sentencepiece::ModelProto_SentencePiece::~ModelProto_SentencePiece(this);

  JUMPOUT(0x26675B300);
}

void sentencepiece::ModelProto_SentencePiece::SharedDtor(sentencepiece::ModelProto_SentencePiece *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2813);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  v5 = *(this + 6);
  v4 = (this + 48);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x26675B300](v7, 0x1012C40EC159624);
  }
}

void sub_26566F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::ModelProto_SentencePiece::default_instance(sentencepiece::ModelProto_SentencePiece *this)
{
  if (atomic_load_explicit(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_SentencePiece_sentencepiece_5fmodel_2eproto);
  }

  return sentencepiece::_ModelProto_SentencePiece_default_instance_;
}

void sentencepiece::ModelProto_SentencePiece::Clear(sentencepiece::ModelProto_SentencePiece *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  if ((v2 & 6) != 0)
  {
    *(this + 7) = 0x100000000;
  }

  *(this + 10) = 0;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }
}

google::protobuf::internal *sentencepiece::ModelProto_SentencePiece::_InternalParse(sentencepiece::ModelProto_SentencePiece *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v23 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            if (!v23)
            {
LABEL_44:
              v23 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_25:
            v23 = v15;
          }

          if ((v14 - 1) > 5)
          {
            sentencepiece::ModelProto_SentencePiece::_InternalParse(this + 1, v14);
          }

          else
          {
            *(this + 10) |= 4u;
            *(this + 15) = v14;
          }

          goto LABEL_37;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(this + 14) = *v7;
          v23 = (v7 + 4);
          goto LABEL_37;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(this + 10) |= 1u;
        v17 = *(this + 1);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v17);
        v13 = google::protobuf::internal::InlineGreedyStringParser(v18, v23, a3);
        goto LABEL_36;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        a3[10].i32[0] = v8 - 1;
        goto LABEL_2;
      }

      if (v8 < 0x640)
      {
        v21 = *(this + 1);
        if (v21)
        {
          v22 = ((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v22 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
          v7 = v23;
        }

        v13 = google::protobuf::internal::UnknownFieldParse(v8, v22, v7, a3);
      }

      else
      {
        v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, sentencepiece::_ModelProto_SentencePiece_default_instance_, this + 1, a3);
      }

LABEL_36:
      v23 = v13;
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v5;
  return v23;
}

unsigned __int8 *sentencepiece::ModelProto_SentencePiece::_InternalSerialize(sentencepiece::ModelProto_SentencePiece *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 14);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 15);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 200, 0x20000000, v4, a3);
  v13 = v12;
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v12 >= v17)
  {
    v19 = v17;
    memcpy(v12, v18, v17);
    v13 += v19;
    return v13;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, v12);
}

uint64_t sentencepiece::ModelProto_SentencePiece::ByteSizeLong(sentencepiece::ModelProto_SentencePiece *this)
{
  result = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += 5;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(this + 15);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v8;
    }
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(this + 11) = result;
  return result;
}

void sentencepiece::ModelProto_SentencePiece::CheckTypeAndMergeFrom(sentencepiece::ModelProto_SentencePiece *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::ModelProto_SentencePiece::MergeFrom(this, lpsrc);
}

void sentencepiece::ModelProto_SentencePiece::MergeFrom(sentencepiece::ModelProto_SentencePiece *this, const sentencepiece::ModelProto_SentencePiece *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3001);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 10);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 6);
      *(this + 10) |= 1u;
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((this + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
LABEL_18:
          *(this + 10) |= v13;
          return;
        }

LABEL_17:
        *(this + 15) = *(a2 + 15);
        goto LABEL_18;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(this + 14) = *(a2 + 14);
    if ((v13 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_26566FB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelProto_SentencePiece::CopyFrom(sentencepiece::ModelProto_SentencePiece *this, const sentencepiece::ModelProto_SentencePiece *a2)
{
  if (a2 != this)
  {
    sentencepiece::ModelProto_SentencePiece::Clear(this);

    sentencepiece::ModelProto_SentencePiece::MergeFrom(this, a2);
  }
}

float sentencepiece::ModelProto_SentencePiece::InternalSwap(sentencepiece::ModelProto_SentencePiece *this, sentencepiece::ModelProto_SentencePiece *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a2 + 1);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
    goto LABEL_9;
  }

  v8 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if (v4)
  {
LABEL_6:
    v9 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    goto LABEL_7;
  }

LABEL_14:
  v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
LABEL_7:
  v10 = *(v9 + 2);
  v11 = *v9;
  v12 = *(v8 + 2);
  *v9 = *v8;
  *(v9 + 2) = v12;
  *v8 = v11;
  *(v8 + 2) = v10;
  v4 = *(this + 1);
  LODWORD(v10) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_9:
  if (*(this + 6) != &google::protobuf::internal::fixed_address_empty_string || *(a2 + 6) != &google::protobuf::internal::fixed_address_empty_string)
  {
    v13 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v4);
    v14 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 6, v4);
    v15 = v13[2];
    v16 = *v13;
    v17 = v14[2];
    *v13 = *v14;
    v13[2] = v17;
    *v14 = v16;
    v14[2] = v15;
  }

  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  v19 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v19;
  return result;
}

uint64_t sentencepiece::ModelProto::ModelProto(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287704410;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_287704528;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(scc_info_ModelProto_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_sentencepiece_5fmodel_2eproto);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_26566FE10(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 24));
  _Unwind_Resume(a1);
}

sentencepiece::ModelProto *sentencepiece::ModelProto::ModelProto(sentencepiece::ModelProto *this, const sentencepiece::ModelProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_287704410;
  *(this + 2) = &unk_287704528;
  *(this + 3) = 0;
  v5 = (this + 24);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 12) = *(a2 + 12);
  *(this + 19) = 0;
  *(this + 60) = 0;
  *(this + 68) = 0;
  *(this + 52) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, a2 + 56);
  v6 = *(a2 + 1);
  if (v6)
  {
    if (*v4)
    {
      v7 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v4);
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8 >= 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v10, v11);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 24));
  v12 = *(a2 + 12);
  if (v12)
  {
    if (!*(a2 + 10))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v13 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 10) = 0;
  if ((v12 & 2) != 0)
  {
    if (!*(a2 + 11))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v14 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 11) = 0;
  if ((v12 & 4) != 0)
  {
    if (!*(a2 + 12))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
      v15 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || self_test_data_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 12) = 0;
  if ((v12 & 8) != 0)
  {
    if (!*(a2 + 13))
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v16 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 13) = 0;
  return this;
}

void sub_26567012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField((v3 + 56));
  google::protobuf::internal::ExtensionSet::~ExtensionSet(v4);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelProto::~ModelProto(sentencepiece::ModelProto *this)
{
  sentencepiece::ModelProto::SharedDtor(this);
  google::protobuf::internal::InternalMetadata::Delete<std::string>(this + 1);
  google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField(this + 7);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 24));
}

{
  sentencepiece::ModelProto::~ModelProto(this);

  JUMPOUT(0x26675B300);
}

void sentencepiece::ModelProto::SharedDtor(sentencepiece::ModelProto *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: GetArena() == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

LABEL_4:
  if (this != &sentencepiece::_ModelProto_default_instance_)
  {
    v4 = *(this + 10);
    if (v4)
    {
      sentencepiece::TrainerSpec::~TrainerSpec(v4);
      MEMORY[0x26675B300]();
    }

    v5 = *(this + 11);
    if (v5)
    {
      sentencepiece::NormalizerSpec::~NormalizerSpec(v5);
      MEMORY[0x26675B300]();
    }

    v6 = *(this + 12);
    if (v6)
    {
      sentencepiece::SelfTestData::~SelfTestData(v6);
      MEMORY[0x26675B300]();
    }

    v7 = *(this + 13);
    if (v7)
    {
      sentencepiece::NormalizerSpec::~NormalizerSpec(v7);
      MEMORY[0x26675B300]();
    }
  }
}

void sub_265670318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk tosentencepiece::ModelProto::~ModelProto(sentencepiece::ModelProto *this)
{
  sentencepiece::ModelProto::~ModelProto((this - 16));
}

{
  sentencepiece::ModelProto::~ModelProto((this - 16));

  JUMPOUT(0x26675B300);
}

void *sentencepiece::ModelProto::default_instance(sentencepiece::ModelProto *this)
{
  if (atomic_load_explicit(scc_info_ModelProto_sentencepiece_5fmodel_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ModelProto_sentencepiece_5fmodel_2eproto);
  }

  return &sentencepiece::_ModelProto_default_instance_;
}

void sentencepiece::ModelProto::Clear(sentencepiece::ModelProto *this)
{
  google::protobuf::internal::ExtensionSet::Clear((this + 24));
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56);
  v2 = *(this + 12);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(this + 10);
      if (!v3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: trainer_spec_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v3 = *(this + 10);
      }

      sentencepiece::TrainerSpec::Clear(v3);
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(this + 11);
      if (!v5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v6 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: normalizer_spec_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v5 = *(this + 11);
      }

      sentencepiece::NormalizerSpec::Clear(v5);
    }

    if ((v2 & 4) != 0)
    {
      v7 = *(this + 12);
      if (!v7)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: self_test_data_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v7 = *(this + 12);
      }

      sentencepiece::SelfTestData::Clear(v7);
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(this + 13);
      if (!v9)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: denormalizer_spec_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v9 = *(this + 13);
      }

      sentencepiece::NormalizerSpec::Clear(v9);
    }
  }

  *(this + 12) = 0;
  v11 = *(this + 1);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 31) < 0)
    {
      **(v12 + 8) = 0;
      *(v12 + 16) = 0;
    }

    else
    {
      *(v12 + 8) = 0;
      *(v12 + 31) = 0;
    }
  }
}

void sub_2656705A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *sentencepiece::ModelProto::_InternalParse(sentencepiece::ModelProto *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v32 + 1);
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v8 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(this + 12) |= 2u;
            v10 = *(this + 11);
            if (!v10)
            {
              v16 = *(this + 1);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v16);
              *(this + 11) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::NormalizerSpec>(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(this + 12) |= 4u;
            v17 = *(this + 12);
            if (!v17)
            {
              v18 = *(this + 1);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData>(v18);
              *(this + 12) = v17;
              v6 = v32;
            }

            v15 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData>(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(this + 12) |= 8u;
          v10 = *(this + 13);
          if (!v10)
          {
            v11 = *(this + 1);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v11);
            *(this + 13) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = (v19 + 1);
          v32 = (v19 + 1);
          v21 = *(this + 9);
          if (!v21)
          {
            v22 = *(this + 17);
            goto LABEL_44;
          }

          v26 = *(this + 16);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(this + 17))
            {
LABEL_44:
              google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 14, v22 + 1);
              v21 = *(this + 9);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto_SentencePiece>(*(this + 7));
            v24 = *(this + 16);
            v25 = *(this + 9) + 8 * v24;
            *(this + 16) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(this + 16) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::ModelProto_SentencePiece>(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(this + 12) |= 1u;
        v13 = *(this + 10);
        if (!v13)
        {
          v14 = *(this + 1);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(v14);
          *(this + 10) = v13;
          v6 = v32;
        }

        google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::TrainerSpec>(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        *(a3 + 20) = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(this + 1);
        if (v30)
        {
          v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v31 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
          v6 = v32;
        }

        v15 = google::protobuf::internal::UnknownFieldParse(v7, v31, v6, a3);
      }

      else
      {
        v15 = google::protobuf::internal::ExtensionSet::ParseField((this + 24), v7, v6, &sentencepiece::_ModelProto_default_instance_, this + 1, a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v32, *(a3 + 23)))
      {
        return v32;
      }
    }

    v6 = (v32 + 2);
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

unsigned __int8 *sentencepiece::ModelProto::_InternalSerialize(sentencepiece::ModelProto *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 16);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, i);
      *a2 = 10;
      v9 = *(v8 + 11);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
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
          a2[2] = v11;
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sentencepiece::ModelProto_SentencePiece::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 10);
    *a2 = 18;
    v16 = *(v15 + 12);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = (a2 + 3);
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v16;
      v17 = (a2 + 2);
    }

    a2 = sentencepiece::TrainerSpec::_InternalSerialize(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 11);
  *a2 = 26;
  v22 = *(v21 + 13);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = (a2 + 3);
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v22;
    v23 = (a2 + 2);
  }

  a2 = sentencepiece::NormalizerSpec::_InternalSerialize(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 12);
  *a2 = 34;
  v28 = *(v27 + 16);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = (a2 + 3);
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v28;
    v29 = (a2 + 2);
  }

  a2 = sentencepiece::SelfTestData::_InternalSerialize(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 13);
    *a2 = 42;
    v34 = *(v33 + 13);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = (a2 + 3);
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v34;
      v35 = (a2 + 2);
    }

    a2 = sentencepiece::NormalizerSpec::_InternalSerialize(v33, v35, a3);
  }

LABEL_58:
  v39 = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 24), 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if (*a3 - v39 >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v45, v44, v39);
}

uint64_t sentencepiece::ModelProto::ByteSizeLong(sentencepiece::ModelProto *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 24));
  v3 = *(this + 16);
  v4 = v2 + v3;
  v5 = *(this + 9);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sentencepiece::ModelProto_SentencePiece::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 12);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sentencepiece::NormalizerSpec::ByteSizeLong(*(this + 11));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sentencepiece::TrainerSpec::ByteSizeLong(*(this + 10));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sentencepiece::SelfTestData::ByteSizeLong(*(this + 12));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sentencepiece::NormalizerSpec::ByteSizeLong(*(this + 13));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(this + 1);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(this + 13) = v4;
  return v4;
}

void sentencepiece::ModelProto::CheckTypeAndMergeFrom(sentencepiece::ModelProto *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    sentencepiece::SentencePieceText_SentencePiece::CheckTypeAndMergeFrom();
  }

  sentencepiece::ModelProto::MergeFrom(this, lpsrc);
}

void sentencepiece::ModelProto::MergeFrom(sentencepiece::ModelProto *this, const sentencepiece::ModelProto *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 24), (a2 + 24));
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(this + 1);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, a2 + 56);
  v13 = *(a2 + 12);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(this + 12) |= 1u;
      v14 = *(this + 10);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(v15);
        *(this + 10) = v14;
      }

      if (*(a2 + 10))
      {
        v16 = *(a2 + 10);
      }

      else
      {
        v16 = &sentencepiece::_TrainerSpec_default_instance_;
      }

      sentencepiece::TrainerSpec::MergeFrom(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(this + 12) |= 2u;
      v17 = *(this + 11);
      if (!v17)
      {
        v18 = *(this + 1);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v18);
        *(this + 11) = v17;
      }

      if (*(a2 + 11))
      {
        v19 = *(a2 + 11);
      }

      else
      {
        v19 = &sentencepiece::_NormalizerSpec_default_instance_;
      }

      sentencepiece::NormalizerSpec::MergeFrom(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(this + 12) |= 4u;
    v20 = *(this + 12);
    if (!v20)
    {
      v21 = *(this + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData>(v21);
      *(this + 12) = v20;
    }

    if (*(a2 + 12))
    {
      v22 = *(a2 + 12);
    }

    else
    {
      v22 = &sentencepiece::_SelfTestData_default_instance_;
    }

    sentencepiece::SelfTestData::MergeFrom(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(this + 12) |= 8u;
      v23 = *(this + 13);
      if (!v23)
      {
        v24 = *(this + 1);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(v24);
        *(this + 13) = v23;
      }

      if (*(a2 + 13))
      {
        v25 = *(a2 + 13);
      }

      else
      {
        v25 = &sentencepiece::_NormalizerSpec_default_instance_;
      }

      sentencepiece::NormalizerSpec::MergeFrom(v23, v25);
    }
  }
}

void sub_265671158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sentencepiece::ModelProto::CopyFrom(sentencepiece::ModelProto *this, const sentencepiece::ModelProto *a2)
{
  if (a2 != this)
  {
    sentencepiece::ModelProto::Clear(this);

    sentencepiece::ModelProto::MergeFrom(this, a2);
  }
}

uint64_t sentencepiece::ModelProto::IsInitialized(sentencepiece::ModelProto *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 24));
  if (!result)
  {
    return result;
  }

  result = google::protobuf::internal::AllAreInitialized<sentencepiece::ModelProto_SentencePiece>(this + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 10);
    if (!v4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v4 = *(this + 10);
    }

    result = google::protobuf::internal::ExtensionSet::IsInitialized((v4 + 16));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 12);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(this + 11);
    if (!v6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v6 = *(this + 11);
    }

    result = google::protobuf::internal::ExtensionSet::IsInitialized((v6 + 24));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 12);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(this + 13);
    if (!v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v10 = *(this + 13);
    }

    result = google::protobuf::internal::ExtensionSet::IsInitialized((v10 + 24));
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(this + 12);
  if (!v8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v8 = *(this + 12);
  }

  result = google::protobuf::internal::ExtensionSet::IsInitialized((v8 + 16));
  if (result)
  {
    v3 = *(this + 12);
    goto LABEL_18;
  }

  return result;
}

void sub_265671370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::AllAreInitialized<sentencepiece::ModelProto_SentencePiece>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(a1, v2);
  }

  while ((google::protobuf::internal::ExtensionSet::IsInitialized((v5 + 16)) & 1) != 0);
  return v3 < 1;
}

__n128 sentencepiece::ModelProto::InternalSwap(__n128 *this, __n128 *a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1].n128_i8[8], &a2[1].n128_i8[8]);
  v5 = &this->n128_u64[1];
  v4 = this->n128_u64[1];
  v6 = a2->n128_u64[1];
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(&a2->n128_u64[1]);
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      v8 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(&this->n128_u64[1]);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_7:
  v9 = *(v8 + 2);
  v10 = *v8;
  v11 = *(v7 + 2);
  *v8 = *v7;
  *(v8 + 2) = v11;
  *v7 = v10;
  *(v7 + 2) = v9;
LABEL_8:
  v12 = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(&this[3].n128_i8[8], &a2[3].n128_i8[8]);
  v13 = this[5].n128_u64[0];
  v14 = this[5].n128_u64[1];
  this[5] = a2[5];
  a2[5].n128_u64[0] = v13;
  a2[5].n128_u64[1] = v14;
  v15 = this[6].n128_u64[0];
  v16 = this[6].n128_u64[1];
  result = a2[6];
  this[6] = result;
  a2[6].n128_u64[0] = v15;
  a2[6].n128_u64[1] = v16;
  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::TrainerSpec>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x148uLL);
  sentencepiece::TrainerSpec::TrainerSpec(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::NormalizerSpec>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x58uLL);
  sentencepiece::NormalizerSpec::NormalizerSpec(AlignedNoHook, a1);
  return AlignedNoHook;
}

void *google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData_Sample>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x28uLL);
  sentencepiece::SelfTestData_Sample::SelfTestData_Sample(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x48uLL);
  sentencepiece::SelfTestData::SelfTestData(AlignedNoHook, a1);
  return AlignedNoHook;
}

void *google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto_SentencePiece>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x40uLL);
  sentencepiece::ModelProto_SentencePiece::ModelProto_SentencePiece(AlignedNoHook, a1);
  return AlignedNoHook;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto>(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(a1, 0x70uLL);
  sentencepiece::ModelProto::ModelProto(AlignedNoHook, a1);
  return AlignedNoHook;
}

unint64_t sentencepiece::ModelProto::UnkSurface(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_281565350, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::UnkPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_281565370, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::BosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2815653D0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::EosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2815653B0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sentencepiece::ModelProto::PadPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_281565390, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sentencepiece::ModelProto::ByteFallback(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  return v1[248];
}

uint64_t sentencepiece::ModelProto::HasUnkSurface(sentencepiece::ModelProto *this)
{
  v1 = &sentencepiece::_TrainerSpec_default_instance_;
  if (*(this + 10))
  {
    v1 = *(this + 10);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t *sentencepiece::ModelProto::IdToPiece(sentencepiece::ModelProto *this, int a2)
{
  v2 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 56, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t sentencepiece::ModelProto::NormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

uint64_t sentencepiece::ModelProto::DenormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

uint64_t sentencepiece::ModelProto::GetModelType(sentencepiece::ModelProto *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t non-virtual thunk tosentencepiece::ModelProto::UnkSurface(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_281565350, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t non-virtual thunk tosentencepiece::ModelProto::UnkPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_281565370, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t non-virtual thunk tosentencepiece::ModelProto::BosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2815653D0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t non-virtual thunk tosentencepiece::ModelProto::EosPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2815653B0, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t non-virtual thunk tosentencepiece::ModelProto::PadPiece(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_281565390, memory_order_acquire);
    if (!result)
    {
      result = google::protobuf::internal::LazyString::Init(&sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::ByteFallback(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  return v1[248];
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::HasUnkSurface(sentencepiece::ModelProto *this)
{
  v1 = &sentencepiece::_TrainerSpec_default_instance_;
  if (*(this + 8))
  {
    v1 = *(this + 8);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::GetModelType(sentencepiece::ModelProto *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v1 = &sentencepiece::_TrainerSpec_default_instance_;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t *non-virtual thunk tosentencepiece::ModelProto::IdToPiece(sentencepiece::ModelProto *this, int a2)
{
  v2 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(this + 40, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::NormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

uint64_t non-virtual thunk tosentencepiece::ModelProto::DenormalizerSpec(sentencepiece::ModelProto *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    v1 = &sentencepiece::_NormalizerSpec_default_instance_;
  }

  return v1 + 16;
}

void google::protobuf::internal::arena_destruct_object<std::string>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_265672330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::StringPiece::StringPiece<std::allocator<char>>(void *a1, uint64_t *a2, const char *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *a1 = v4;
  a1[1] = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if ((v5 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v5, "size_t to int conversion", a3);
    }
  }

  a1[1] = v5;
  return a1;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v2 = *(a1 + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_265672458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_265672530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SelfTestData_Sample::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_2656725E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::ModelProto_SentencePiece::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_265672698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_265672784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v18 + 32);
      }

      AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v18, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
      AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
      AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
      AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(AlignedAndAddCleanup, v21);
      *v20++ = AlignedAndAddCleanup;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

void google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(void *a1)
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
          sentencepiece::SelfTestData_Sample::~SelfTestData_Sample(*v3);
          MEMORY[0x26675B300]();
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

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_265672A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::SelfTestData_Sample>::TypeHandler>(uint64_t *a1, sentencepiece::SelfTestData_Sample **a2, sentencepiece::SelfTestData_Sample **a3, unsigned int a4, unsigned int a5)
{
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
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SelfTestData_Sample>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::SelfTestData_Sample>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::SelfTestData_Sample>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(void *a1)
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
          sentencepiece::ModelProto_SentencePiece::~ModelProto_SentencePiece(*v3);
          MEMORY[0x26675B300]();
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

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_265672CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<sentencepiece::ModelProto_SentencePiece>::TypeHandler>(uint64_t *a1, sentencepiece::ModelProto_SentencePiece **a2, sentencepiece::ModelProto_SentencePiece **a3, unsigned int a4, unsigned int a5)
{
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
      google::protobuf::internal::GenericTypeHandler<sentencepiece::ModelProto_SentencePiece>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<sentencepiece::ModelProto_SentencePiece>(v18);
      google::protobuf::internal::GenericTypeHandler<sentencepiece::ModelProto_SentencePiece>::Merge(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void *OUTLINED_FUNCTION_2()
{

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v0, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
}

uint64_t *OUTLINED_FUNCTION_8()
{
  result = *(*(v0 + 32) + 32);
  v2 = *result;
  return result;
}

void *OUTLINED_FUNCTION_17(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void OUTLINED_FUNCTION_21()
{

  operator new();
}

void sentencepiece::ModelProto_SentencePiece::_InternalParse(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(a1);
  }

  google::protobuf::internal::WriteVarint(3, a2, v3);
}

void *sentencepiece::filesystem::PosixReadableFile::PosixReadableFile(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_2877046D0;
  v6 = a1 + 1;
  sentencepiece::util::Status::Status(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x277D82668];
  a1[2] = MEMORY[0x277D82668];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 5;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "", 1);
    v8 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ": ", 3);
    v9 = __error();
    sentencepiece::util::StrError(*v9);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v10, v11);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, &v21);
    sentencepiece::util::Status::operator=(v6, &v21);
    sentencepiece::util::Status::~Status(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x277D82828];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
    v17 = MEMORY[0x277D82878] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x26675B290](&v20);
  }

  return a1;
}

void sub_265673380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  sentencepiece::util::Status::~Status((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sentencepiece::util::StatusBuilder::~StatusBuilder(&a15);
  sentencepiece::util::Status::~Status(v15);
  _Unwind_Resume(a1);
}

void sentencepiece::filesystem::PosixReadableFile::~PosixReadableFile(sentencepiece::filesystem::PosixReadableFile *this)
{
  sentencepiece::filesystem::PosixReadableFile::~PosixReadableFile(this);

  JUMPOUT(0x26675B300);
}

{
  *this = &unk_2877046D0;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82668] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sentencepiece::util::Status::~Status((this + 8));
}

BOOL sentencepiece::filesystem::PosixReadableFile::ReadLine(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sentencepiece::filesystem::PosixReadableFile::ReadAll(sentencepiece::logging *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = MEMORY[0x277D82668];
  if (v2 == MEMORY[0x277D82668])
  {
    if (sentencepiece::logging::GetMinLogLevel(a1) <= 2)
    {
      v12 = 0;
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "filesystem.cc", 13);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
      v6 = MEMORY[0x26675B160](v5, 55);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG(", 4);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ERROR", 5);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ReadAll is not supported for stdin.", 35);
      sentencepiece::error::Die::~Die(&v12);
    }
  }

  else
  {
    std::string::__assign_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(a2, *(v2 + *(*v2 - 24) + 40), 0);
  }

  return v2 != v3;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x26675B0A0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_265673828(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2656737E8);
  }

  __cxa_rethrow();
}

void std::string::__assign_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(uint64_t a1, void *a2, void *a3)
{
  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, a2, a3);
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

  MEMORY[0x26675AFD0](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26567391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_265673A68(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

void *sentencepiece::filesystem::PosixWritableFile::PosixWritableFile(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_287704730;
  v6 = a1 + 1;
  sentencepiece::util::Status::Status(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x277D82678];
  a1[2] = MEMORY[0x277D82678];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 7;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "", 1);
    v8 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ": ", 3);
    v9 = __error();
    sentencepiece::util::StrError(*v9);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v10, v11);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, &v21);
    sentencepiece::util::Status::operator=(v6, &v21);
    sentencepiece::util::Status::~Status(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x277D82828];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
    v17 = MEMORY[0x277D82878] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x26675B290](&v20);
  }

  return a1;
}

void sub_265673DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  sentencepiece::util::Status::~Status((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sentencepiece::util::StatusBuilder::~StatusBuilder(&a15);
  sentencepiece::util::Status::~Status(v15);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x26675B070](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_265673FAC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26675B290](v1);
  _Unwind_Resume(a1);
}

void sentencepiece::filesystem::PosixWritableFile::~PosixWritableFile(sentencepiece::filesystem::PosixWritableFile *this)
{
  sentencepiece::filesystem::PosixWritableFile::~PosixWritableFile(this);

  JUMPOUT(0x26675B300);
}

{
  *this = &unk_287704730;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82678] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sentencepiece::util::Status::~Status((this + 8));
}

BOOL sentencepiece::filesystem::PosixWritableFile::Write(uint64_t a1)
{
  v2 = *(a1 + 16);
  std::ostream::write();
  return *(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) == 0;
}

uint64_t sentencepiece::filesystem::PosixWritableFile::WriteLine(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v3 = *(*a1 + 24);

    return v3(a1, "\n", 1);
  }

  return result;
}

uint64_t sentencepiece::SetRandomGeneratorSeed(uint64_t this)
{
  if (this != -1)
  {
  }

  return this;
}

uint64_t sentencepiece::GetRandomGeneratorSeed(sentencepiece *this)
{
  if (v1 != -1)
  {
  }

  std::random_device::random_device[abi:ne200100](&v4);
  v2 = MEMORY[0x26675B1C0](&v4);
  std::random_device::~random_device(&v4);
  return v2;
}

void sub_26567420C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x2656741F8);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_26567428C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::string_util::DecodeUTF8(sentencepiece::string_util *this, const char *a2, char *a3, unint64_t *a4)
{
  v4 = *this;
  if ((v4 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *this;
  }

  v6 = a2 - this;
  if ((a2 - this) >= 2)
  {
    if ((v4 & 0xE0) == 0xC0)
    {
      v7 = *(this + 1);
      if (v7 <= -65)
      {
        v8 = (v4 & 0x1F) << 6;
        if (v8 >= 0x80)
        {
          result = v8 | v7 & 0x3F;
          v9 = 2;
LABEL_8:
          *a3 = v9;
          return result;
        }
      }
    }

    else if (v6 != 2)
    {
      if ((v4 & 0xF0) == 0xE0)
      {
        v10 = *(this + 1);
        if (v10 <= -65)
        {
          v11 = *(this + 2);
          if (v11 <= -65)
          {
            v12 = (v4 & 0xF) << 12;
            v13 = v12 & 0xFFFFF03F | ((v10 & 0x3F) << 6);
            if (v13 >= 0x800 && ((v12 - 57344) < 0x102000 || v13 >> 11 <= 0x1A))
            {
              result = v12 & 0xFFFFF000 | ((v10 & 0x3F) << 6) | v11 & 0x3F;
              v9 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v6 >= 4 && (v4 & 0xF8) == 0xF0)
      {
        v14 = *(this + 1);
        if (v14 <= -65)
        {
          v15 = *(this + 2);
          if (v15 <= -65)
          {
            v16 = *(this + 3);
            if (v16 <= -65)
            {
              v17 = ((v4 & 7) << 18) | ((v14 & 0x3F) << 12);
              if (v17 >= 0x10000)
              {
                result = v16 & 0x3F | ((v15 & 0x3F) << 6) | v17;
                if (v17 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v9 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sentencepiece::string_util::IsStructurallyValid(sentencepiece::string_util *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *v9 = 0;
  if (a2 < 1)
  {
    return 1;
  }

  v4 = this;
  v5 = this + a2;
  while (1)
  {
    v6 = sentencepiece::string_util::DecodeUTF8(v4, v5, v9, a4);
    v7 = v6 != 65533 || *v9 == 3;
    if (!v7 || v6 >> 11 >= 0x1B && (v6 - 57344) >> 13 > 0x80)
    {
      break;
    }

    v4 = (v4 + *v9);
    if (v4 >= v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sentencepiece::string_util::EncodeUTF8(sentencepiece::string_util *this, _BYTE *a2, char *a3)
{
  if (this > 0x7F)
  {
    if (this > 0x7FF)
    {
      if (this >> 16 <= 0x10)
      {
        v4 = this;
      }

      else
      {
        v4 = 65533;
      }

      v5 = v4 & 0x3F | 0x80;
      v6 = (v4 >> 6) & 0x3F | 0xFFFFFF80;
      if (HIWORD(v4))
      {
        a2[3] = v5;
        a2[2] = v6;
        a2[1] = (v4 >> 12) & 0x3F | 0x80;
        LODWORD(this) = (v4 >> 18) | 0xFFFFFFF0;
        v3 = 4;
      }

      else
      {
        a2[2] = v5;
        a2[1] = v6;
        LODWORD(this) = (v4 >> 12) | 0xFFFFFFE0;
        v3 = 3;
      }
    }

    else
    {
      a2[1] = this & 0x3F | 0x80;
      LODWORD(this) = (this >> 6) | 0xFFFFFFC0;
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  *a2 = this;
  return v3;
}

void sentencepiece::string_util::UnicodeCharToUTF8(sentencepiece::string_util *this@<X0>, std::string *a2@<X8>)
{
  v4 = this;
  memset(&__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v4, &__p, 1uLL);
  sentencepiece::string_util::UnicodeTextToUTF8(&__p, v3, a2);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2656745B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sentencepiece::string_util::UnicodeTextToUTF8@<X0>(std::string *result@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  while (v4 != size)
  {
    v6 = sentencepiece::string_util::EncodeUTF8(*v4, v8, a2);
    result = std::string::append(a3, v8, v6);
    ++v4;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265674668(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::string_util::UTF8ToUnicodeText(sentencepiece::string_util *this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2 >= 1)
  {
    v4 = this;
    v6 = 0;
    v7 = this + a2;
    do
    {
      *v17 = 0;
      v8 = sentencepiece::string_util::DecodeUTF8(v4, v7, v17, a3);
      v9 = a4[2];
      if (v6 >= v9)
      {
        v10 = *a4;
        v11 = v6 - *a4;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v15);
        }

        *(4 * v12) = v8;
        v6 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a4;
        *a4 = 0;
        a4[1] = v6;
        a4[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 4;
      }

      a4[1] = v6;
      v4 = (v4 + *v17);
    }

    while (v4 < v7);
  }
}

void sub_2656747C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::random::GetRandomGenerator(sentencepiece::random *this)
{
  if ((*v1 & 1) == 0)
  {
    sentencepiece::random::GetRandomGenerator(v1);
  }

  return sentencepiece::random::GetRandomGenerator(void)::mt(&sentencepiece::random::GetRandomGenerator(void)::mt);
}

uint64_t sentencepiece::util::StrError(sentencepiece::util *this)
{
  v13 = *MEMORY[0x277D85DE8];
  strerror_r(this, __strerrbuf, 0x3FFuLL);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  v2 = strlen(__strerrbuf);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, __strerrbuf, v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " Error #", 8);
  MEMORY[0x26675B160](v4, this);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  result = MEMORY[0x26675B290](&v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sentencepiece::util::StrSplitAsCSV(void *__src@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v33 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = v33;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (__len)
  {
    v7 = p_dst + __len;
    do
    {
      if (*p_dst == 34)
      {
        p_dst = (p_dst + 1);
        v8 = p_dst;
        v9 = p_dst;
        if (p_dst < v7)
        {
          v8 = p_dst;
          v9 = p_dst;
          do
          {
            v10 = *v9;
            if (v10 == 34)
            {
              v11 = *(v9 + 1);
              v9 = (v9 + 1);
              if (v11 != 34)
              {
                break;
              }
            }

            *v8++ = v10;
            v9 = (v9 + 1);
          }

          while (v9 < v7);
        }

        v12 = memchr(v9, 44, v7 - v9);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v7;
        }
      }

      else
      {
        v14 = memchr(p_dst, 44, v7 - p_dst);
        if (v14)
        {
          v13 = v14;
        }

        else
        {
          v13 = v7;
        }

        v8 = v13;
      }

      *v8 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, p_dst);
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v34.__end_cap_.__value_ = a3;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v21);
        }

        v22 = 24 * v18;
        v23 = *__p;
        *(v22 + 16) = v31;
        *v22 = v23;
        __p[1] = 0;
        v31 = 0;
        __p[0] = 0;
        v24 = 24 * v18 + 24;
        v25 = *(a3 + 8) - *a3;
        v26 = 24 * v18 - v25;
        memcpy((v22 - v25), *a3, v25);
        v27 = *a3;
        *a3 = v26;
        *(a3 + 8) = v24;
        v28 = *(a3 + 16);
        *(a3 + 16) = 0;
        v34.__end_ = v27;
        v34.__end_cap_.__value_ = v28;
        v34.__first_ = v27;
        v34.__begin_ = v27;
        std::__split_buffer<std::string>::~__split_buffer(&v34);
        v29 = SHIBYTE(v31);
        *(a3 + 8) = v24;
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = *__p;
        *(v16 + 16) = v31;
        *v16 = v17;
        *(a3 + 8) = v16 + 24;
      }

      p_dst = (v13 + 1);
    }

    while ((v13 + 1) < v7);
    v5 = v33;
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_265674CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

unint64_t sentencepiece::mmap_util::RoundUp(sentencepiece::mmap_util *this, unint64_t a2)
{
  if (!a2)
  {
    sentencepiece::mmap_util::RoundUp();
  }

  return (this + a2 - 1) / a2 * a2;
}

void sentencepiece::mmap_util::Padding(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sentencepiece::mmap_util::RemovePrefix@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sentencepiece::util::Status::Status(a3);
  }

  else
  {
    v9 = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x26675B160](&v10, 287);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "string.size() >= size", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a3);
    v10 = *MEMORY[0x277D82828];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x26675B290](&v14);
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_265674FEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sentencepiece::random::GetRandomGenerator(sentencepiece *a1)
{
  sentencepiece::GetRandomGeneratorSeed(a1);
  v1 = sentencepiece::random::GetRandomGenerator(void)::mt(&sentencepiece::random::GetRandomGenerator(void)::mt);
  *v1 = v4;
  do
  {
    v5 = v3(v2);
    *(v5 + 4 * v7) = v6;
  }

  while (v7 != 623);
  *(v3(v2) + 2496) = 0;
  *result = 1;
  return result;
}

sentencepiece::bpe::Model *sentencepiece::bpe::Model::Model(sentencepiece::bpe::Model *this, const sentencepiece::ModelProto *a2)
{
  v4 = sentencepiece::ModelInterface::ModelInterface(this);
  *v4 = &unk_287704790;
  *(v4 + 1) = a2 + 16;
  sentencepiece::ModelInterface::InitializePieces(v4);
  return this;
}

void *sentencepiece::bpe::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sentencepiece::ModelInterface::ModelInterface(a1, a2, a3, a4);
  *result = &unk_287704790;
  return result;
}

void sentencepiece::bpe::Model::~Model(sentencepiece::bpe::Model *this)
{
  sentencepiece::ModelInterface::~ModelInterface(this);

  JUMPOUT(0x26675B300);
}

void sentencepiece::bpe::Model::SampleEncode(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v71 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sentencepiece::util::Status::~Status(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_4;
  }

  sentencepiece::util::Status::~Status(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(v57, a3, 0, &__p);
  v11 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v11, __p, v62 - __p);
  v12 = __p;
  v13 = *(&v62 + 1);
  __p = v11;
  v62 = v57[1];
  *&v57[1] = v12;
  *(&v57[1] + 1) = v13;
  *&v57[0] = v12;
  *(&v57[0] + 1) = v12;
  if (v12)
  {
    operator delete(v12);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = &unk_2877048A8;
  v14 = 1;
  do
  {
    v64 = 0uLL;
    v15 = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v15;
    a3 -= v15;
    if (a3)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v63) = v14 - 2;
    DWORD1(v63) = v16;
    v17 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v20 = (v62 - __p) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v22 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(&v68, v23, v20, &__p);
      v24 = v70;
      v25 = v64;
      *v70 = v63;
      *(v24 + 16) = v25;
      *&v70 = v70 + 32;
      v26 = &v69[-(v62 - __p)];
      memcpy(v26, __p, v62 - __p);
      v27 = __p;
      v28 = *(&v62 + 1);
      __p = v26;
      v29 = v70;
      v62 = v70;
      *&v70 = v27;
      *(&v70 + 1) = v28;
      v68 = v27;
      v69 = v27;
      if (v27)
      {
        v55 = v29;
        operator delete(v27);
        v29 = v55;
      }

      v19 = v29;
    }

    else
    {
      v18 = v64;
      *v62 = v63;
      *(v17 + 16) = v18;
      v19 = (v17 + 32);
    }

    a2 += v15;
    *&v62 = v19;
    ++v14;
  }

  while (a3);
  if (__p != v19)
  {
    if ((v19 - __p) >= 0x21)
    {
      v30 = 1;
      do
      {
        sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, v30 - 1, v30);
        ++v30;
      }

      while (v30 < (v62 - __p) >> 5);
    }

    v31 = v65;
    v32 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    RandomGenerator = 0;
    while (1)
    {
      v34 = *v31;
      v35 = (v32 - v31) >> 3;
      if (v35 >= 2)
      {
        v36 = 0;
        v37 = v31;
        do
        {
          v38 = v37;
          v37 = (v37 + 8 * v36 + 8);
          v39 = 2 * v36;
          v36 = (2 * v36) | 1;
          v40 = v39 + 2;
          if (v40 < v35)
          {
            v41 = *(v37 + 1);
            v42 = *(*v37 + 8);
            v43 = *(v41 + 8);
            if (v42 < v43 || v42 == v43 && **v37 > *v41)
            {
              v37 = (v37 + 8);
              v36 = v40;
            }
          }

          *v38 = *v37;
        }

        while (v36 <= ((v35 - 2) >> 1));
        v44 = (v32 - 8);
        if (v37 == v44)
        {
          *v37 = v34;
        }

        else
        {
          *v37 = *v44;
          *v44 = v34;
          v31 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(v31, v37 + 8, ((v37 + 8) - v31) >> 3);
        }
      }

      v66 = (v66 - 8);
      v45 = *v34;
      v46 = *v34;
      v47 = __p;
      v48 = *(__p + 4 * v46 + 3);
      if (!v48)
      {
        goto LABEL_54;
      }

      v49 = v34[1];
      v50 = *(__p + 4 * v49 + 3);
      if (!v50 || v50 + v48 != *(v34 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!RandomGenerator)
        {
          RandomGenerator = sentencepiece::random::GetRandomGenerator(v31);
        }

        v51 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator);
        if ((v51 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v47 = __p;
        v45 = *v34;
        v49 = v34[1];
        v46 = *v34;
      }

      v52 = &v47[8 * v46];
      v53 = &v47[8 * v49];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v47[8 * v54] = v45;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, *(__p + 8 * v46), v45);
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v56, *v34, *(__p + 8 * *v34 + 1));
LABEL_54:
      v31 = v65;
      v32 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(v57);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_26567585C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](&a33);
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(&a18);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 208);
  if (v35)
  {
    *(v33 - 200) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

double sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v37[14] = v3;
    v37[15] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = *(v10 + 24) + *(v8 + 24);
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12++;
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v37[3] = v37;
                  v33 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(v32, v37);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void *sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(void *a1)
{
  *a1 = &unk_2877048A8;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x26675B2D0](*v2, 0x1000C801E56706BLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void *std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

void sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(void *a1)
{
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(a1);

  JUMPOUT(0x26675B300);
}

uint64_t std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

__n128 std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2877048D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = *(a1 + 8);
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::find<std::string_view>(*(a1 + 24), &v21)) != 0)
  {
    v9 = v8;
    std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(*(a1 + 16), v9[4], v9[5], v5);
    std::function<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::operator()(*(a1 + 16), v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t std::__function::__func<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::$_0>,void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265676808(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sentencepiece::error::Abort(sentencepiece::error *this)
{
  if (!sentencepiece::error::gTestCounter)
  {
    v1 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82670], "Program terminated with an unrecoverable error.");
    v2 = std::endl[abi:ne200100]<char,std::char_traits<char>>(v1);
    sentencepiece::ShutdownLibrary(v2);
    exit(-1);
  }

  sentencepiece::error::gTestCounter = 2;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

sentencepiece *sentencepiece::error::Exit(sentencepiece *this)
{
  if (!sentencepiece::error::gTestCounter)
  {
    v1 = this;
    sentencepiece::ShutdownLibrary(this);
    exit(v1);
  }

  sentencepiece::error::gTestCounter = 2;
  return this;
}

void sentencepiece::util::Status::~Status(sentencepiece::util::Status *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](this, v1);
  }
}

void sub_265676B04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::util::Status::Status(void *this, const sentencepiece::util::Status *a2)
{
  if (*a2)
  {
    operator new();
  }

  *this = 0;
  return this;
}

void sentencepiece::util::Status::operator=(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](a1, v3);
    }
  }
}

const char *sentencepiece::util::Status::error_message(sentencepiece::util::Status *this)
{
  v1 = *this;
  if (!*this)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sentencepiece::util::Status::set_error_message(sentencepiece::util::Status *this, const char *a2)
{
  if (!*this)
  {
    operator new();
  }

  JUMPOUT(0x26675AFC0);
}

uint64_t sentencepiece::util::Status::code(sentencepiece::util::Status *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

std::string *sentencepiece::util::Status::ToString@<X0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v4 = this;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      MEMORY[0x26675AFC0](a2, off_279B9AEE0[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return this;
}

void sub_265676E48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x26675B300);
  }
}

void *google::protobuf::internal::ArenaImpl::thread_cache(google::protobuf::internal::ArenaImpl *this)
{
  {
    operator new();
  }

  v1 = google::protobuf::internal::ArenaImpl::thread_cache(void)::thread_cache_;

  return google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(v1);
}

void sub_265676F58(_Unwind_Exception *a1)
{
  MEMORY[0x26675B300](v1, 0x1000C4000313F17);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_2656B9F90;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
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
  v9 = *(a2 + 24);
  if ((v8 & 7) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 97);
    v10 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (reinterpret_cast<uintptr_t>(mem) & 7) == (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  if (!v8 || v9 <= 0x87)
  {
    if (*a2 <= 0x88uLL)
    {
      v9 = 136;
    }

    else
    {
      v9 = *a2;
    }

    v8 = (*(a2 + 32))(v9);
  }

  v11 = 3;
  if (v8 != *(a2 + 16))
  {
    v11 = 1;
  }

  *v8 = v11;
  *(v8 + 8) = 24;
  *(v8 + 16) = v9;
  v12 = google::protobuf::internal::SerialArena::Block::Pointer(v8, 0x18uLL);
  *(a1 + 4) = v12;
  v13 = *(a2 + 32);
  *v12 = *a2;
  *(v12 + 16) = v13;
  *(v12 + 32) = v6;
  *(v8 + 8) += 40;
  google::protobuf::internal::ArenaImpl::Init(a1, v7);
  google::protobuf::internal::ArenaImpl::SetInitialBlock(a1, v8);
  return a1;
}

void sub_265677160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::SerialArena::Block::Pointer(google::protobuf::internal::SerialArena::Block *this, unint64_t a2)
{
  if (*(this + 2) < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: n <= size_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return this + a2;
}

void sub_2656771F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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

void *google::protobuf::internal::ArenaImpl::SetInitialBlock(google::protobuf::internal::ArenaImpl *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  v6 = google::protobuf::internal::SerialArena::New(a2, v4, this, v5);
  *(v6 + 4) = 0;
  *this = v6;
  *(this + 2) = *(a2 + 2);
  v7 = google::protobuf::internal::ArenaImpl::thread_cache(v6);
  *(v7 + 2) = v6;
  v8 = *(this + 3);
  result = google::protobuf::internal::ArenaImpl::thread_cache(v7);
  result[1] = v8;
  atomic_store(v6, this + 1);
  return result;
}

void *google::protobuf::internal::SerialArena::New(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, void *a3, google::protobuf::internal::ArenaImpl *a4)
{
  v7 = *(this + 1);
  v8 = v7 + 72;
  if (v7 + 72 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v10 = google::protobuf::internal::SerialArena::Block::Pointer(this, v7);
  *(this + 1) = v8;
  *v10 = a3;
  v10[1] = a2;
  v10[2] = this;
  v10[5] = google::protobuf::internal::SerialArena::Block::Pointer(this, v8);
  v11 = google::protobuf::internal::SerialArena::Block::Pointer(this, *(this + 2));
  v10[3] = 0;
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = v11;
  return v10;
}

void sub_2656773B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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
          v12 = *(v10 + 2);
          if (*v10)
          {
            if (v9)
            {
              google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 217);
              v13 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: special_block == nullptr: ");
              google::protobuf::internal::LogFinisher::operator=(&v18, &v13->__r_.__value_.__l.__data_);
              google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
            }

            v9 = v10;
          }

          else
          {
            (v6)(v10, *(v10 + 2));
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
    v14 = *v9;
    if (*v9 >= 4uLL)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 226);
      v15 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (special_block->next()) == (nullptr): ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v14 = *v9;
    }

    *v9 = v14 & 3;
    v16 = 64;
    if (!*(this + 4))
    {
      v16 = 24;
    }

    *(v9 + 1) = v16;
    google::protobuf::internal::ArenaImpl::SetInitialBlock(this, v9);
  }

  return v8;
}

void sub_265677700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
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

void sub_26567780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::SerialArena::Block *google::protobuf::internal::SerialArena::NewBlock(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, google::protobuf::internal::ArenaImpl *a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (this)
  {
    v7 = *(this + 2);
  }

  else
  {
    v7 = -1;
  }

  v8 = google::protobuf::internal::ArenaImpl::NewBuffer(a3, v7, a2);

  return google::protobuf::internal::SerialArena::Block::Block(v8, v9, this, 0, 0);
}

void *google::protobuf::internal::SerialArena::AddCleanupFallback(google::protobuf::internal::SerialArena *this, void *a2, void (*a3)(void *), google::protobuf::internal::ArenaImpl *a4)
{
  result = *(this + 3);
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v8 = 64;
      }

      else
      {
        v8 = 2 * *result;
      }
    }

    else
    {
      v8 = 8;
    }

    result = google::protobuf::internal::SerialArena::AllocateAligned(this, ((16 * v8 + 23) & 0xFF0), a3, a4);
    v9 = *(this + 3);
    *result = v8;
    result[1] = v9;
    *(this + 3) = result;
    *(this + 7) = result + 2;
    *(this + 8) = &result[2 * v8 + 2];
  }

  while (!v8);
  result[2] = a2;
  result[3] = a3;
  *(this + 7) = result + 4;
  return result;
}

unint64_t google::protobuf::internal::SerialArena::AllocateAligned(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, uint64_t a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 5);
  v8 = *(this + 6);
  if (v8 < result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v9 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (limit_) >= (ptr_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    result = *(this + 5);
    v8 = *(this + 6);
  }

  if (v8 - result < a2)
  {
    return google::protobuf::internal::SerialArena::AllocateAlignedFallback(this, a2, a3, a4);
  }

  *(this + 5) = a2 + result;
  return result;
}

void sub_265677A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(atomic_ullong *this, google::protobuf::internal::SerialArena::Block *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*(v6 + 1) == this[3])
  {
    explicit = *(v6 + 2);
    goto LABEL_3;
  }

  v10 = google::protobuf::internal::ArenaImpl::thread_cache(v6);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 1) == v10)
  {
LABEL_3:

    return google::protobuf::internal::SerialArena::AllocateAlignedAndAddCleanup(explicit, a2, a3, v7);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(this, a2, a3);
}

void *google::protobuf::internal::SerialArena::AllocateAlignedAndAddCleanup(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, void (*a3)(void *), google::protobuf::internal::ArenaImpl *a4)
{
  Aligned = google::protobuf::internal::SerialArena::AllocateAligned(this, a2, a3, a4);
  v8 = Aligned;
  v9 = *(this + 7);
  if (v9 == *(this + 8))
  {
    google::protobuf::internal::SerialArena::AddCleanupFallback(this, Aligned, a3, v7);
  }

  else
  {
    *v9 = Aligned;
    v9[1] = a3;
    *(this + 7) = v9 + 2;
  }

  return v8;
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(google::protobuf::internal::ArenaImpl *this, google::protobuf::internal::SerialArena::Block *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  SerialArenaFallback = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v6);

  return google::protobuf::internal::SerialArena::AllocateAlignedAndAddCleanup(SerialArenaFallback, a2, a3, v8);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::AddCleanup(atomic_ullong *this, void *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*(v6 + 1) == this[3])
  {
    result = *(v6 + 2);
    goto LABEL_3;
  }

  v10 = google::protobuf::internal::ArenaImpl::thread_cache(v6);
  result = atomic_load_explicit(this + 1, memory_order_acquire);
  if (result && *(result + 1) == v10)
  {
LABEL_3:
    v9 = *(result + 7);
    if (v9 == *(result + 8))
    {

      return google::protobuf::internal::SerialArena::AddCleanupFallback(result, a2, a3, v7);
    }

    else
    {
      *v9 = a2;
      v9[1] = a3;
      *(result + 7) = v9 + 2;
    }

    return result;
  }

  return google::protobuf::internal::ArenaImpl::AddCleanupFallback(this, a2, a3);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::AddCleanupFallback(google::protobuf::internal::ArenaImpl *this, void *a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  result = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v6);
  v9 = *(result + 7);
  if (v9 == *(result + 8))
  {

    return google::protobuf::internal::SerialArena::AddCleanupFallback(result, a2, a3, v8);
  }

  else
  {
    *v9 = a2;
    v9[1] = a3;
    *(result + 7) = v9 + 2;
  }

  return result;
}

unint64_t google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(google::protobuf::internal::ArenaImpl *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  SerialArenaFallback = google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v4);

  return google::protobuf::internal::SerialArena::AllocateAligned(SerialArenaFallback, a2, v6, v7);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(atomic_ullong *this, google::protobuf::internal::SerialArena::Block *a2)
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
    v5 = google::protobuf::internal::ArenaImpl::NewBuffer(this, -1, 0x48uLL);
    *v5 = xmmword_2656B9FA0;
    *(v5 + 2) = v6;
    this = google::protobuf::internal::SerialArena::New(v5, a2, v3, v7);
    explicit = this;
    v8 = *v3;
    this[4] = *v3;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(v3, &v9, this, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        this[4] = v9;
        atomic_compare_exchange_strong_explicit(v3, &v10, this, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  v12 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  *(v12 + 2) = explicit;
  v13 = v3[3];
  google::protobuf::internal::ArenaImpl::thread_cache(v12)[1] = v13;
  atomic_store(explicit, v3 + 1);
  return explicit;
}

uint64_t google::protobuf::internal::SerialArena::AllocateAlignedFallback(google::protobuf::internal::SerialArena *this, google::protobuf::internal::SerialArena::Block *a2, uint64_t a3, google::protobuf::internal::ArenaImpl *a4)
{
  v6 = *(this + 2);
  *(v6 + 1) = *(v6 + 2) - *(this + 6) + *(this + 5);
  v7 = google::protobuf::internal::SerialArena::NewBlock(v6, a2, *this, a4);
  *(this + 2) = v7;
  *(this + 5) = google::protobuf::internal::SerialArena::Block::Pointer(v7, v7[1]);
  *(this + 6) = google::protobuf::internal::SerialArena::Block::Pointer(*(this + 2), *(*(this + 2) + 16));

  return google::protobuf::internal::SerialArena::AllocateAligned(this, a2);
}

uint64_t google::protobuf::internal::ArenaImpl::SpaceUsed(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    v3 = 0;
    do
    {
      v3 += google::protobuf::internal::SerialArena::SpaceUsed(explicit);
      explicit = *(explicit + 4);
    }

    while (explicit);
  }

  else
  {
    v3 = 0;
  }

  if (this[4])
  {
    return v3 - 40;
  }

  else
  {
    return v3;
  }
}

uint64_t google::protobuf::internal::SerialArena::SpaceUsed(google::protobuf::internal::SerialArena *this)
{
  v2 = *(this + 5);
  v3 = v2 - google::protobuf::internal::SerialArena::Block::Pointer(*(this + 2), 0x18uLL);
  v4 = **(this + 2);
  while (1)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v4 = *v5;
    v3 = v3 + v6[1] - 24;
  }

  return v3 - 72;
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

unint64_t google::protobuf::internal::ArenaImpl::AllocateAligned(atomic_ullong *this, google::protobuf::internal::SerialArena::Block *a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*(v4 + 1) == this[3])
  {
    explicit = *(v4 + 2);
    goto LABEL_3;
  }

  v9 = google::protobuf::internal::ArenaImpl::thread_cache(v4);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 1) == v9)
  {
LABEL_3:

    return google::protobuf::internal::SerialArena::AllocateAligned(explicit, a2, v5, v6);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(this, a2);
}