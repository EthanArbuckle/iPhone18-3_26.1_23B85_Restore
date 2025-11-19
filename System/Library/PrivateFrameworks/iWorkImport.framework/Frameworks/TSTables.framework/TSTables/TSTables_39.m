uint64_t TST::DataStore::RequiredFieldsByteSizeFallback(TST::DataStore *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::HeaderStorage::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v7 = TST::TileStorage::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v8 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = TSP::Reference::ByteSizeLong(*(this + 7));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = TSP::Reference::ByteSizeLong(*(this + 8));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = TST::TableRBTree::ByteSizeLong(*(this + 9));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = TST::TableRBTree::ByteSizeLong(*(this + 10));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v3 += ((9 * (__clz(*(this + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x100000) == 0)
    {
      return v3;
    }

    goto LABEL_15;
  }

LABEL_23:
  v13 = TSP::Reference::ByteSizeLong(*(this + 11));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x80000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v2 & 0x100000) != 0)
  {
LABEL_15:
    v3 += ((9 * (__clz(*(this + 45) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TST::DataStore::ByteSizeLong(TST::HeaderStorage **this)
{
  if ((~*(this + 4) & 0x1801FF) != 0)
  {
    v17 = TST::DataStore::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::HeaderStorage::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = TST::TileStorage::ByteSizeLong(this[5]);
    v5 = TSP::Reference::ByteSizeLong(this[6]);
    v6 = TSP::Reference::ByteSizeLong(this[7]);
    v7 = TSP::Reference::ByteSizeLong(this[8]);
    v8 = TST::TableRBTree::ByteSizeLong(this[9]);
    v9 = TST::TableRBTree::ByteSizeLong(this[10]);
    v10.i32[0] = v6 | 1;
    v10.i32[1] = v7 | 1;
    v10.i32[2] = v8 | 1;
    v10.i32[3] = v9 | 1;
    v11.i32[0] = v2 | 1;
    v11.i32[1] = v3 | 1;
    v11.i32[2] = v4 | 1;
    v11.i32[3] = v5 | 1;
    v12.i64[0] = 0x1F0000001FLL;
    v12.i64[1] = 0x1F0000001FLL;
    v13.i64[0] = 0x4900000049;
    v13.i64[1] = 0x4900000049;
    v14.i64[0] = 0x4900000049;
    v14.i64[1] = 0x4900000049;
    v30 = vshrq_n_u32(vmlal_u16(v14, vmovn_s32(veorq_s8(vclzq_s32(v11), v12)), 0x9000900090009), 6uLL);
    v31 = vshrq_n_u32(vmlal_u16(v13, vmovn_s32(veorq_s8(vclzq_s32(v10), v12)), 0x9000900090009), 6uLL);
    v15 = TSP::Reference::ByteSizeLong(this[11]);
    v16 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((this[22] | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v17 = v2 + v6 + v5 + v4 + v3 + vaddvq_s64(vaddq_s64(vaddl_u32(*v30.i8, *v31.i8), vaddl_high_u32(v30, v31))) + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + v16.u32[0] + v16.u32[1] + v15 + v9 + v8 + v7 + 11;
  }

  v18 = *(this + 4);
  if ((v18 & 0xFE00) == 0)
  {
    goto LABEL_13;
  }

  if ((v18 & 0x200) != 0)
  {
    v22 = TSP::Reference::ByteSizeLong(this[12]);
    v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 0x400) == 0)
    {
LABEL_7:
      if ((v18 & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((v18 & 0x400) == 0)
  {
    goto LABEL_7;
  }

  v23 = TSP::Reference::ByteSizeLong(this[13]);
  v17 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x800) == 0)
  {
LABEL_8:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v24 = TSP::Reference::ByteSizeLong(this[14]);
  v17 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x1000) == 0)
  {
LABEL_9:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v26 = TSP::Reference::ByteSizeLong(this[16]);
    v17 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v18 & 0x4000) == 0)
    {
LABEL_11:
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v25 = TSP::Reference::ByteSizeLong(this[15]);
  v17 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v18 & 0x2000) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v18 & 0x4000) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v27 = TSP::Reference::ByteSizeLong(this[17]);
  v17 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v18 & 0x8000) != 0)
  {
LABEL_12:
    v19 = TSP::Reference::ByteSizeLong(this[18]);
    v17 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  if ((v18 & 0x70000) == 0)
  {
    goto LABEL_18;
  }

  if ((v18 & 0x10000) != 0)
  {
    v28 = TSP::Reference::ByteSizeLong(this[19]);
    v17 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v18 & 0x20000) == 0)
    {
LABEL_16:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_16;
  }

  v29 = TSP::Reference::ByteSizeLong(this[20]);
  v17 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v18 & 0x40000) != 0)
  {
LABEL_17:
    v20 = TSP::Reference::ByteSizeLong(this[21]);
    v17 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_18:
  if ((v18 & 0x200000) != 0)
  {
    v17 += ((9 * (__clz(*(this + 46) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v17, this + 20);
  }

  else
  {
    *(this + 5) = v17;
    return v17;
  }
}

uint64_t TST::DataStore::MergeFrom(TST::DataStore *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DataStore::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DataStore::MergeFrom(uint64_t this, const TST::DataStore *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorage>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_HeaderStorage_default_instance_;
      }

      this = TST::HeaderStorage::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0390](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage>(v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = &TST::_TileStorage_default_instance_;
    }

    this = TST::TileStorage::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0390](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v9;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
LABEL_59:
        if ((v5 & 0x40) != 0)
        {
          *(v3 + 16) |= 0x40u;
          v25 = *(v3 + 72);
          if (!v25)
          {
            v26 = *(v3 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v26);
            *(v3 + 72) = v25;
          }

          if (*(a2 + 9))
          {
            v27 = *(a2 + 9);
          }

          else
          {
            v27 = &TST::_TableRBTree_default_instance_;
          }

          this = TST::TableRBTree::MergeFrom(v25, v27);
        }

        if ((v5 & 0x80) != 0)
        {
          *(v3 + 16) |= 0x80u;
          v28 = *(v3 + 80);
          if (!v28)
          {
            v29 = *(v3 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v29);
            *(v3 + 80) = v28;
          }

          if (*(a2 + 10))
          {
            v30 = *(a2 + 10);
          }

          else
          {
            v30 = &TST::_TableRBTree_default_instance_;
          }

          this = TST::TableRBTree::MergeFrom(v28, v30);
        }

        goto LABEL_77;
      }

LABEL_51:
      *(v3 + 16) |= 0x20u;
      v22 = *(v3 + 64);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x223DA0390](v23);
        *(v3 + 64) = v22;
      }

      if (*(a2 + 8))
      {
        v24 = *(a2 + 8);
      }

      else
      {
        v24 = v9;
      }

      this = TSP::Reference::MergeFrom(v22, v24);
      goto LABEL_59;
    }

LABEL_43:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0390](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v9;
    }

    this = TSP::Reference::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_51;
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 88);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x223DA0390](v32);
      *(v3 + 88) = v31;
    }

    if (*(a2 + 11))
    {
      v33 = *(a2 + 11);
    }

    else
    {
      v33 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_103;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v34 = *(v3 + 96);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0390](v35);
    *(v3 + 96) = v34;
  }

  if (*(a2 + 12))
  {
    v36 = *(a2 + 12);
  }

  else
  {
    v36 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v34, v36);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(v3 + 16) |= 0x400u;
  v37 = *(v3 + 104);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0390](v38);
    *(v3 + 104) = v37;
  }

  if (*(a2 + 13))
  {
    v39 = *(a2 + 13);
  }

  else
  {
    v39 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v37, v39);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(v3 + 16) |= 0x800u;
  v40 = *(v3 + 112);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0390](v41);
    *(v3 + 112) = v40;
  }

  if (*(a2 + 14))
  {
    v42 = *(a2 + 14);
  }

  else
  {
    v42 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v40, v42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(v3 + 16) |= 0x1000u;
  v43 = *(v3 + 120);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x223DA0390](v44);
    *(v3 + 120) = v43;
  }

  if (*(a2 + 15))
  {
    v45 = *(a2 + 15);
  }

  else
  {
    v45 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v43, v45);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(v3 + 16) |= 0x2000u;
  v46 = *(v3 + 128);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x223DA0390](v47);
    *(v3 + 128) = v46;
  }

  if (*(a2 + 16))
  {
    v48 = *(a2 + 16);
  }

  else
  {
    v48 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v46, v48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_85:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x4000u;
  v49 = *(v3 + 136);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x223DA0390](v50);
    *(v3 + 136) = v49;
  }

  if (*(a2 + 17))
  {
    v51 = *(a2 + 17);
  }

  else
  {
    v51 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v49, v51);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v52 = *(v3 + 144);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x223DA0390](v53);
      *(v3 + 144) = v52;
    }

    if (*(a2 + 18))
    {
      v54 = *(a2 + 18);
    }

    else
    {
      v54 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v52, v54);
  }

LABEL_151:
  if ((v5 & 0x3F0000) == 0)
  {
    return this;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v55 = *(v3 + 152);
    if (!v55)
    {
      v56 = *(v3 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x223DA0390](v56);
      *(v3 + 152) = v55;
    }

    if (*(a2 + 19))
    {
      v57 = *(a2 + 19);
    }

    else
    {
      v57 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v55, v57);
    if ((v5 & 0x20000) == 0)
    {
LABEL_154:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_177;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 16) |= 0x20000u;
  v58 = *(v3 + 160);
  if (!v58)
  {
    v59 = *(v3 + 8);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = MEMORY[0x223DA0390](v59);
    *(v3 + 160) = v58;
  }

  if (*(a2 + 20))
  {
    v60 = *(a2 + 20);
  }

  else
  {
    v60 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v58, v60);
  if ((v5 & 0x40000) == 0)
  {
LABEL_155:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_185;
  }

LABEL_177:
  *(v3 + 16) |= 0x40000u;
  v61 = *(v3 + 168);
  if (!v61)
  {
    v62 = *(v3 + 8);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x223DA0390](v62);
    *(v3 + 168) = v61;
  }

  if (*(a2 + 21))
  {
    v63 = *(a2 + 21);
  }

  else
  {
    v63 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v61, v63);
  if ((v5 & 0x80000) == 0)
  {
LABEL_156:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

LABEL_186:
    *(v3 + 180) = *(a2 + 45);
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

LABEL_185:
  *(v3 + 176) = *(a2 + 44);
  if ((v5 & 0x100000) != 0)
  {
    goto LABEL_186;
  }

LABEL_157:
  if ((v5 & 0x200000) != 0)
  {
LABEL_158:
    *(v3 + 184) = *(a2 + 46);
  }

LABEL_159:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TST::DataStore::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DataStore::Clear(this);

    return TST::DataStore::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::DataStore::CopyFrom(uint64_t *this, const TST::DataStore *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DataStore::Clear(this);

    return TST::DataStore::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::DataStore::IsInitialized(TST::DataStore *this)
{
  if ((~*(this + 4) & 0x1801FF) != 0)
  {
    return 0;
  }

  result = TST::HeaderStorage::IsInitialized(*(this + 3));
  if (!result)
  {
    return result;
  }

  v3 = *(this + 4);
  if ((v3 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 4) != 0)
  {
    result = sub_2215D9824(*(this + 5) + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x40) != 0)
  {
    v4 = *(this + 9);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);
    while (v5 >= 1)
    {
      result = 0;
      v7 = *(v6 + 8 * v5--);
      if ((~*(v7 + 16) & 3) != 0)
      {
        return result;
      }
    }
  }

  if ((v3 & 0x80) != 0)
  {
    v8 = *(this + 10);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    while (v9 >= 1)
    {
      result = 0;
      v11 = *(v10 + 8 * v9--);
      if ((~*(v11 + 16) & 3) != 0)
      {
        return result;
      }
    }
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x200) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x400) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x4000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x8000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x20000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x40000) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 21));
  if (result)
  {
    return 1;
  }

  return result;
}

double TST::DataStore::InternalSwap(TST::DataStore *this, TST::DataStore *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;

  *&result = sub_2215E99F8(this + 3, a2 + 24).n128_u64[0];
  return result;
}

__n128 sub_2215E99F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  *(a1 + 6) = *(a2 + 96);
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v16 = a1[14];
  v17 = a1[15];
  *(a1 + 7) = *(a2 + 112);
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  v18 = a1[16];
  v19 = a1[17];
  *(a1 + 8) = *(a2 + 128);
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  v20 = a1[18];
  v21 = a1[19];
  result = *(a2 + 144);
  *(a1 + 9) = result;
  *(a2 + 144) = v20;
  *(a2 + 152) = v21;
  LODWORD(v20) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 160);
  *(a2 + 160) = v20;
  return result;
}

TSD::DrawableArchive *TST::TableInfoArchive::clear_super(TST::TableInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::DrawableArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_tablemodel(TST::TableInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_editing_state(TST::TableInfoArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_summary_model(TST::TableInfoArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_category_order(TST::TableInfoArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_view_column_row_uids(TST::TableInfoArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::UUID *TST::TableInfoArchive::clear_group_by_uuid(TST::TableInfoArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUID *TST::TableInfoArchive::clear_hidden_states_uuid(TST::TableInfoArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

uint64_t *TST::TableInfoArchive::clear_pasteboard_coord_mapper(TST::TableInfoArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSCE::CoordMapperArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_pivot_data_model(TST::TableInfoArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::Reference *TST::TableInfoArchive::clear_pivot_order(TST::TableInfoArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TST::TableInfoArchive *TST::TableInfoArchive::TableInfoArchive(TST::TableInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3348;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 113) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B3348;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 113) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::TableInfoArchive *TST::TableInfoArchive::TableInfoArchive(TST::TableInfoArchive *this, const TST::TableInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3348;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v5 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  v7 = *(a2 + 15);
  *(this + 128) = *(a2 + 128);
  *(this + 15) = v7;
  return this;
}

void TST::TableInfoArchive::~TableInfoArchive(TST::TableInfoArchive *this)
{
  sub_2215EA234(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::TableInfoArchive::~TableInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2215EA234(uint64_t *result)
{
  if (result != TST::_TableInfoArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x223D9F9E0]();
      MEMORY[0x223DA1450](v2, 0x10A1C40DF356F3CLL);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSP::UUID::~UUID(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSP::UUID::~UUID(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = v1[11];
    if (v10)
    {
      TSCE::CoordMapperArchive::~CoordMapperArchive(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = v1[12];
    if (v11)
    {
      TST::LayoutEngineArchive::~LayoutEngineArchive(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = v1[13];
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x223DA1450]();
    }

    result = v1[14];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::TableInfoArchive::default_instance(TST::TableInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_TableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableInfoArchive_default_instance_;
}

uint64_t *TST::TableInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSD::DrawableArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Reference::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    this = TSP::Reference::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = TSP::Reference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  this = TSP::UUID::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::UUID::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xF00) == 0)
  {
    goto LABEL_17;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSCE::CoordMapperArchive::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TST::LayoutEngineArchive::Clear(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  this = TSP::Reference::Clear(*(v1 + 104));
  if ((v2 & 0x800) != 0)
  {
LABEL_16:
    this = TSP::Reference::Clear(*(v1 + 112));
  }

LABEL_17:
  if ((v2 & 0x7000) != 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 120) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

uint64_t *TST::LayoutEngineArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::WidthHeightCache::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::TableInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v56) & 1) == 0)
  {
    while (1)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if (*v56 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
          v56 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_109;
          }

          v7 = TagFallback;
          v8 = v15;
          goto LABEL_7;
        }

        v7 = (v56 + 2);
      }

      v56 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x223DA02A0](v11);
            LODWORD(v10) = v12;
            *(a1 + 24) = v12;
            v7 = v56;
          }

          v13 = sub_2217027A8(a3, v10, v7);
          goto LABEL_82;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 2u;
          v21 = *(a1 + 32);
          if (v21)
          {
            goto LABEL_81;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x223DA0390](v30);
          LODWORD(v21) = v31;
          *(a1 + 32) = v31;
          goto LABEL_80;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 4u;
          v21 = *(a1 + 40);
          if (v21)
          {
            goto LABEL_81;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x223DA0390](v24);
          LODWORD(v21) = v25;
          *(a1 + 40) = v25;
          goto LABEL_80;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 8u;
          v21 = *(a1 + 48);
          if (v21)
          {
            goto LABEL_81;
          }

          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x223DA0390](v39);
          LODWORD(v21) = v40;
          *(a1 + 48) = v40;
          goto LABEL_80;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x10u;
          v21 = *(a1 + 56);
          if (v21)
          {
            goto LABEL_81;
          }

          v41 = *(a1 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v42 = MEMORY[0x223DA0390](v41);
          LODWORD(v21) = v42;
          *(a1 + 56) = v42;
          goto LABEL_80;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x20u;
          v21 = *(a1 + 64);
          if (v21)
          {
            goto LABEL_81;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x223DA0390](v26);
          LODWORD(v21) = v27;
          *(a1 + 64) = v27;
          goto LABEL_80;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x40u;
          v32 = *(a1 + 72);
          if (v32)
          {
            goto LABEL_64;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x223DA0360](v33);
          LODWORD(v32) = v34;
          *(a1 + 72) = v34;
          goto LABEL_63;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x80u;
          v32 = *(a1 + 80);
          if (v32)
          {
            goto LABEL_64;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x223DA0360](v35);
          LODWORD(v32) = v36;
          *(a1 + 80) = v36;
LABEL_63:
          v7 = v56;
LABEL_64:
          v13 = sub_2216F813C(a3, v32, v7);
          goto LABEL_82;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_95;
          }

          v5 |= 0x1000u;
          v46 = (v7 + 1);
          LODWORD(v47) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          v48 = *v46;
          v47 = (v47 + (v48 << 7) - 128);
          if (v48 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow32(v7, v47);
            v56 = v54;
            *(a1 + 120) = v55;
            if (!v54)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_94:
            v56 = v46;
            *(a1 + 120) = v47;
          }

          goto LABEL_83;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_95;
          }

          v5 |= 0x2000u;
          v43 = (v7 + 1);
          LODWORD(v44) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_89;
          }

          v45 = *v43;
          v44 = (v44 + (v45 << 7) - 128);
          if (v45 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow32(v7, v44);
            v56 = v52;
            *(a1 + 124) = v53;
            if (!v52)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_89:
            v56 = v43;
            *(a1 + 124) = v44;
          }

          goto LABEL_83;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x100u;
          v19 = *(a1 + 88);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive>(v20);
            *(a1 + 88) = v19;
            v7 = v56;
          }

          v13 = sub_221702878(a3, v19, v7);
          goto LABEL_82;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x200u;
          v28 = *(a1 + 96);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TST::LayoutEngineArchive>(v29);
            *(a1 + 96) = v28;
            v7 = v56;
          }

          v13 = sub_221702948(a3, v28, v7);
          goto LABEL_82;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x400u;
          v21 = *(a1 + 104);
          if (v21)
          {
            goto LABEL_81;
          }

          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x223DA0390](v22);
          LODWORD(v21) = v23;
          *(a1 + 104) = v23;
          goto LABEL_80;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_95;
          }

          v5 |= 0x4000u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            v56 = v50;
            *(a1 + 128) = v51 != 0;
            if (!v50)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_20:
            v56 = v17;
            *(a1 + 128) = v16 != 0;
          }

          goto LABEL_83;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_95;
          }

          *(a1 + 16) |= 0x800u;
          v21 = *(a1 + 112);
          if (v21)
          {
            goto LABEL_81;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = MEMORY[0x223DA0390](v37);
          LODWORD(v21) = v38;
          *(a1 + 112) = v38;
LABEL_80:
          v7 = v56;
LABEL_81:
          v13 = sub_22170B7F8(a3, v21, v7);
          goto LABEL_82;
        default:
LABEL_95:
          if (v8)
          {
            v49 = (v8 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_82:
          v56 = v13;
          if (!v13)
          {
LABEL_109:
            v56 = 0;
            goto LABEL_2;
          }

LABEL_83:
          if (sub_221567030(a3, &v56))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

unsigned __int8 *TST::TableInfoArchive::_InternalSerialize(TST::TableInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
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
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::DrawableArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 4);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 6);
  *a2 = 34;
  v25 = *(v24 + 5);
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = a2 + 3;
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      a2[2] = v27;
      v26 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v25;
    v26 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 7);
  *a2 = 42;
  v31 = *(v30 + 5);
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = a2 + 3;
      do
      {
        *(v32 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v32;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v32 - 1) = v34;
    }

    else
    {
      a2[2] = v33;
      v32 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v31;
    v32 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_67:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 8);
  *a2 = 50;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    a2[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = a2 + 3;
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
      a2[2] = v39;
      v38 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v37;
    v38 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_87;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 9);
  *a2 = 58;
  v43 = *(v42 + 5);
  if (v43 > 0x7F)
  {
    a2[1] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = a2 + 3;
      do
      {
        *(v44 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++v44;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(v44 - 1) = v46;
    }

    else
    {
      a2[2] = v45;
      v44 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v43;
    v44 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 10);
  *a2 = 66;
  v49 = *(v48 + 5);
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = a2 + 3;
      do
      {
        *(v50 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v50;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v50 - 1) = v52;
    }

    else
    {
      a2[2] = v51;
      v50 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v49;
    v50 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

LABEL_108:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v58 = *(this + 31);
    *a2 = 80;
    if (v58 > 0x7F)
    {
      a2[1] = v58 | 0x80;
      v59 = v58 >> 7;
      if (v58 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v59 | 0x80;
          v60 = v59 >> 7;
          ++a2;
          v61 = v59 >> 14;
          v59 >>= 7;
        }

        while (v61);
        *(a2 - 1) = v60;
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        a2[2] = v59;
        a2 += 3;
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_119;
        }
      }
    }

    else
    {
      a2[1] = v58;
      a2 += 2;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_119;
      }
    }

LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_129;
  }

LABEL_97:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(this + 30);
  *a2 = 72;
  if (v54 > 0x7F)
  {
    a2[1] = v54 | 0x80;
    v55 = v54 >> 7;
    if (v54 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v55 | 0x80;
        v56 = v55 >> 7;
        ++a2;
        v57 = v55 >> 14;
        v55 >>= 7;
      }

      while (v57);
      *(a2 - 1) = v56;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a2[2] = v55;
      a2 += 3;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_108;
      }
    }
  }

  else
  {
    a2[1] = v54;
    a2 += 2;
    if ((v5 & 0x2000) != 0)
    {
      goto LABEL_108;
    }
  }

LABEL_11:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_119:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 11);
  *a2 = 106;
  v63 = *(v62 + 5);
  if (v63 > 0x7F)
  {
    a2[1] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = a2 + 3;
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      a2[2] = v65;
      v64 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v63;
    v64 = a2 + 2;
  }

  a2 = TSCE::CoordMapperArchive::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_139;
  }

LABEL_129:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(this + 12);
  *a2 = 114;
  v69 = *(v68 + 5);
  if (v69 > 0x7F)
  {
    a2[1] = v69 | 0x80;
    v71 = v69 >> 7;
    if (v69 >> 14)
    {
      v70 = a2 + 3;
      do
      {
        *(v70 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v70;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v70 - 1) = v72;
    }

    else
    {
      a2[2] = v71;
      v70 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v69;
    v70 = a2 + 2;
  }

  a2 = TST::LayoutEngineArchive::_InternalSerialize(v68, v70, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_149;
  }

LABEL_139:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v74 = *(this + 13);
  *a2 = 122;
  v75 = *(v74 + 5);
  if (v75 > 0x7F)
  {
    a2[1] = v75 | 0x80;
    v77 = v75 >> 7;
    if (v75 >> 14)
    {
      v76 = a2 + 3;
      do
      {
        *(v76 - 1) = v77 | 0x80;
        v78 = v77 >> 7;
        ++v76;
        v79 = v77 >> 14;
        v77 >>= 7;
      }

      while (v79);
      *(v76 - 1) = v78;
    }

    else
    {
      a2[2] = v77;
      v76 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v75;
    v76 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v74, v76, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_152;
  }

LABEL_149:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v80 = *(this + 128);
  *a2 = 384;
  a2[2] = v80;
  a2 += 3;
  if ((v5 & 0x800) != 0)
  {
LABEL_152:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(this + 14);
    *a2 = 394;
    v82 = *(v81 + 5);
    if (v82 > 0x7F)
    {
      a2[2] = v82 | 0x80;
      v84 = v82 >> 7;
      if (v82 >> 14)
      {
        v83 = a2 + 4;
        do
        {
          *(v83 - 1) = v84 | 0x80;
          v85 = v84 >> 7;
          ++v83;
          v86 = v84 >> 14;
          v84 >>= 7;
        }

        while (v86);
        *(v83 - 1) = v85;
      }

      else
      {
        a2[3] = v84;
        v83 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v82;
      v83 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v81, v83, a3);
  }

LABEL_162:
  v87 = *(this + 1);
  if ((v87 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v87 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableInfoArchive::RequiredFieldsByteSizeFallback(TST::TableInfoArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSD::DrawableArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::TableInfoArchive::ByteSizeLong(TST::TableInfoArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::TableInfoArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSD::DrawableArchive::ByteSizeLong(*(this + 3));
    v3 = TSP::Reference::ByteSizeLong(*(this + 4));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 4);
  if ((v5 & 0xFC) == 0)
  {
    goto LABEL_12;
  }

  if ((v5 & 4) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 5));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_7;
  }

  v9 = TSP::Reference::ByteSizeLong(*(this + 6));
  v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_27:
    v11 = TSP::Reference::ByteSizeLong(*(this + 8));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 0x40) == 0)
    {
LABEL_10:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_26:
  v10 = TSP::Reference::ByteSizeLong(*(this + 7));
  v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_28:
  v12 = TSP::UUID::ByteSizeLong(*(this + 9));
  v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x80) != 0)
  {
LABEL_11:
    v6 = TSP::UUID::ByteSizeLong(*(this + 10));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v5 & 0x7F00) == 0)
  {
    goto LABEL_22;
  }

  if ((v5 & 0x100) != 0)
  {
    v13 = TSCE::CoordMapperArchive::ByteSizeLong(*(this + 11));
    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 0x200) == 0)
    {
LABEL_15:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v14 = TST::LayoutEngineArchive::ByteSizeLong(*(this + 12));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = TSP::Reference::ByteSizeLong(*(this + 13));
  v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x800) == 0)
  {
LABEL_17:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = TSP::Reference::ByteSizeLong(*(this + 14));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  v4 += ((9 * (__clz(*(this + 30) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x2000) != 0)
  {
LABEL_19:
    v4 += ((9 * (__clz(*(this + 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_20:
  if ((v5 & 0x4000) != 0)
  {
    v4 += 3;
  }

LABEL_22:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::TableInfoArchive::MergeFrom(TST::TableInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableInfoArchive::MergeFrom(uint64_t this, const TST::TableInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA02A0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D804B0];
      }

      this = TSD::DrawableArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0390](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0390](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v9;
    }

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0390](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v9;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
LABEL_59:
        v25 = MEMORY[0x277D809E0];
        if ((v5 & 0x40) != 0)
        {
          *(v3 + 16) |= 0x40u;
          v26 = *(v3 + 72);
          if (!v26)
          {
            v27 = *(v3 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x223DA0360](v27);
            *(v3 + 72) = v26;
          }

          if (*(a2 + 9))
          {
            v28 = *(a2 + 9);
          }

          else
          {
            v28 = v25;
          }

          this = TSP::UUID::MergeFrom(v26, v28);
        }

        if ((v5 & 0x80) != 0)
        {
          *(v3 + 16) |= 0x80u;
          v29 = *(v3 + 80);
          if (!v29)
          {
            v30 = *(v3 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = MEMORY[0x223DA0360](v30);
            *(v3 + 80) = v29;
          }

          if (*(a2 + 10))
          {
            v31 = *(a2 + 10);
          }

          else
          {
            v31 = v25;
          }

          this = TSP::UUID::MergeFrom(v29, v31);
        }

        goto LABEL_77;
      }

LABEL_51:
      *(v3 + 16) |= 0x20u;
      v22 = *(v3 + 64);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x223DA0390](v23);
        *(v3 + 64) = v22;
      }

      if (*(a2 + 8))
      {
        v24 = *(a2 + 8);
      }

      else
      {
        v24 = v9;
      }

      this = TSP::Reference::MergeFrom(v22, v24);
      goto LABEL_59;
    }

LABEL_43:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0390](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v9;
    }

    this = TSP::Reference::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_51;
  }

LABEL_77:
  if ((v5 & 0x7F00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 88);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive>(v33);
      *(v3 + 88) = v32;
    }

    if (*(a2 + 11))
    {
      v34 = *(a2 + 11);
    }

    else
    {
      v34 = &TSCE::_CoordMapperArchive_default_instance_;
    }

    this = TSCE::CoordMapperArchive::MergeFrom(v32, v34);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v35 = *(v3 + 96);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = google::protobuf::Arena::CreateMaybeMessage<TST::LayoutEngineArchive>(v36);
    *(v3 + 96) = v35;
  }

  if (*(a2 + 12))
  {
    v37 = *(a2 + 12);
  }

  else
  {
    v37 = &TST::_LayoutEngineArchive_default_instance_;
  }

  this = TST::LayoutEngineArchive::MergeFrom(v35, v37);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x400u;
  v38 = *(v3 + 104);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0390](v39);
    *(v3 + 104) = v38;
  }

  if (*(a2 + 13))
  {
    v40 = *(a2 + 13);
  }

  else
  {
    v40 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v38, v40);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x800u;
  v41 = *(v3 + 112);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x223DA0390](v42);
    *(v3 + 112) = v41;
  }

  if (*(a2 + 14))
  {
    v43 = *(a2 + 14);
  }

  else
  {
    v43 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v41, v43);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

LABEL_121:
    *(v3 + 124) = *(a2 + 31);
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_120:
  *(v3 + 120) = *(a2 + 30);
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_121;
  }

LABEL_84:
  if ((v5 & 0x4000) != 0)
  {
LABEL_85:
    *(v3 + 128) = *(a2 + 128);
  }

LABEL_86:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t TST::LayoutEngineArchive::MergeFrom(uint64_t this, const TST::LayoutEngineArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCache>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_WidthHeightCache_default_instance_;
    }

    return TST::WidthHeightCache::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::TableInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableInfoArchive::Clear(this);

    return TST::TableInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableInfoArchive::CopyFrom(uint64_t *this, const TST::TableInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableInfoArchive::Clear(this);

    return TST::TableInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableInfoArchive::IsInitialized(TST::TableInfoArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSD::DrawableArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSCE::CoordMapperArchive::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 13));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 14));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double TST::TableInfoArchive::InternalSwap(TST::TableInfoArchive *this, TST::TableInfoArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;

  *&result = sub_2216E37A8(this + 5, a2 + 40).n128_u64[0];
  return result;
}

TSD::DrawableArchive *TST::CategoryInfoArchive::clear_super(TST::CategoryInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::DrawableArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::CategoryInfoArchive::clear_tablemodel(TST::CategoryInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CategoryInfoArchive *TST::CategoryInfoArchive::CategoryInfoArchive(TST::CategoryInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B33F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B33F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::CategoryInfoArchive *TST::CategoryInfoArchive::CategoryInfoArchive(TST::CategoryInfoArchive *this, const TST::CategoryInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B33F8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TST::CategoryInfoArchive::~CategoryInfoArchive(TST::CategoryInfoArchive *this)
{
  if (this != &TST::_CategoryInfoArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x223D9F9E0]();
      MEMORY[0x223DA1450](v2, 0x10A1C40DF356F3CLL);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CategoryInfoArchive::~CategoryInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CategoryInfoArchive::default_instance(TST::CategoryInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_CategoryInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CategoryInfoArchive_default_instance_;
}

uint64_t *TST::CategoryInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::DrawableArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::CategoryInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_221567030(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_22170B7F8(a3, v11, v5);
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA02A0](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_2217027A8(a3, v14, v5);
    }

LABEL_30:
    v20 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TST::CategoryInfoArchive::_InternalSerialize(TST::CategoryInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
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
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::DrawableArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CategoryInfoArchive::RequiredFieldsByteSizeFallback(TST::CategoryInfoArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSD::DrawableArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::CategoryInfoArchive::ByteSizeLong(TSD::DrawableArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::CategoryInfoArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSD::DrawableArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::CategoryInfoArchive::MergeFrom(TST::CategoryInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CategoryInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CategoryInfoArchive::MergeFrom(uint64_t this, const TST::CategoryInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA02A0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D804B0];
      }

      this = TSD::DrawableArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x223DA0390](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::CategoryInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryInfoArchive::Clear(this);

    return TST::CategoryInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CategoryInfoArchive::CopyFrom(uint64_t *this, const TST::CategoryInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryInfoArchive::Clear(this);

    return TST::CategoryInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CategoryInfoArchive::IsInitialized(TST::CategoryInfoArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSD::DrawableArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CategoryInfoArchive::InternalSwap(TST::CategoryInfoArchive *this, TST::CategoryInfoArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSP::Reference *TST::WPTableInfoArchive::clear_storage(TST::WPTableInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::WPTableInfoArchive *TST::WPTableInfoArchive::WPTableInfoArchive(TST::WPTableInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B34A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_WPTableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B34A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_WPTableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::WPTableInfoArchive *TST::WPTableInfoArchive::WPTableInfoArchive(TST::WPTableInfoArchive *this, const TST::WPTableInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B34A8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TST::WPTableInfoArchive::~WPTableInfoArchive(TST::WPTableInfoArchive *this)
{
  if (this != TST::_WPTableInfoArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::TableInfoArchive::~TableInfoArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::WPTableInfoArchive::~WPTableInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::WPTableInfoArchive::default_instance(TST::WPTableInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_WPTableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_WPTableInfoArchive_default_instance_;
}

uint64_t *TST::WPTableInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TST::TableInfoArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::WPTableInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_221567030(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_22170B7F8(a3, v11, v5);
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TST::TableInfoArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_221702A18(a3, v14, v5);
    }

LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TST::WPTableInfoArchive::_InternalSerialize(TST::WPTableInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
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
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TST::TableInfoArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::WPTableInfoArchive::ByteSizeLong(TST::WPTableInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::TableInfoArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::WPTableInfoArchive::MergeFrom(TST::WPTableInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::WPTableInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::WPTableInfoArchive::MergeFrom(uint64_t this, const TST::WPTableInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::TableInfoArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_TableInfoArchive_default_instance_;
      }

      this = TST::TableInfoArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x223DA0390](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::WPTableInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WPTableInfoArchive::Clear(this);

    return TST::WPTableInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::WPTableInfoArchive::CopyFrom(uint64_t *this, const TST::WPTableInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WPTableInfoArchive::Clear(this);

    return TST::WPTableInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::WPTableInfoArchive::IsInitialized(TST::WPTableInfoArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TST::TableInfoArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::WPTableInfoArchive::InternalSwap(TST::WPTableInfoArchive *this, TST::WPTableInfoArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_body_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_header_row_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_header_column_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_footer_row_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_body_cell_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_header_row_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_header_column_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_footer_row_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_table_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_table_name_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_table_name_shape_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_1_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_2_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_3_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_4_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_5_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_1_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_2_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_3_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_4_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_category_level_5_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_1_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_2_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_3_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x800000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_4_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 28);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x1000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_5_text_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x2000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_1_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x4000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_2_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x8000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_3_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 32);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_4_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 33);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_label_level_5_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 34);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40000000u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_pivot_body_summary_row_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 35);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80000000;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_pivot_body_summary_column_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 36);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~1u;
  return result;
}

TSP::Reference *TST::TableStyleNetworkArchive::clear_pivot_header_column_summary_style(TST::TableStyleNetworkArchive *this)
{
  result = *(this + 37);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~2u;
  return result;
}

TST::TableStyleNetworkArchive *TST::TableStyleNetworkArchive::TableStyleNetworkArchive(TST::TableStyleNetworkArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3558;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_TableStyleNetworkArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 76) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  return this;
}

{
  *this = &unk_2834B3558;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_TableStyleNetworkArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 76) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  return this;
}

TST::TableStyleNetworkArchive *TST::TableStyleNetworkArchive::TableStyleNetworkArchive(TST::TableStyleNetworkArchive *this, const TST::TableStyleNetworkArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3558;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v6 & 0x8000000) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  if ((v6 & 0x10000000) != 0)
  {
    operator new();
  }

  *(this + 32) = 0;
  if ((v6 & 0x20000000) != 0)
  {
    operator new();
  }

  *(this + 33) = 0;
  if ((v6 & 0x40000000) != 0)
  {
    operator new();
  }

  *(this + 34) = 0;
  if (v6 < 0)
  {
    operator new();
  }

  *(this + 35) = 0;
  v7 = *(a2 + 5);
  if (v7)
  {
    operator new();
  }

  *(this + 36) = 0;
  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(this + 37) = 0;
  *(this + 76) = *(a2 + 76);
  return this;
}

void TST::TableStyleNetworkArchive::~TableStyleNetworkArchive(TST::TableStyleNetworkArchive *this)
{
  sub_2215EE7B0(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::TableStyleNetworkArchive::~TableStyleNetworkArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2215EE7B0(uint64_t *result)
{
  if (result != &TST::_TableStyleNetworkArchive_default_instance_)
  {
    v1 = result;
    v2 = result[4];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[5];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[6];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[7];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[8];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[9];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[10];
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[11];
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = v1[12];
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = v1[13];
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = v1[14];
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x223DA1450]();
    }

    v13 = v1[15];
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x223DA1450]();
    }

    v14 = v1[16];
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x223DA1450]();
    }

    v15 = v1[17];
    if (v15)
    {
      TSP::Reference::~Reference(v15);
      MEMORY[0x223DA1450]();
    }

    v16 = v1[18];
    if (v16)
    {
      TSP::Reference::~Reference(v16);
      MEMORY[0x223DA1450]();
    }

    v17 = v1[19];
    if (v17)
    {
      TSP::Reference::~Reference(v17);
      MEMORY[0x223DA1450]();
    }

    v18 = v1[20];
    if (v18)
    {
      TSP::Reference::~Reference(v18);
      MEMORY[0x223DA1450]();
    }

    v19 = v1[21];
    if (v19)
    {
      TSP::Reference::~Reference(v19);
      MEMORY[0x223DA1450]();
    }

    v20 = v1[22];
    if (v20)
    {
      TSP::Reference::~Reference(v20);
      MEMORY[0x223DA1450]();
    }

    v21 = v1[23];
    if (v21)
    {
      TSP::Reference::~Reference(v21);
      MEMORY[0x223DA1450]();
    }

    v22 = v1[24];
    if (v22)
    {
      TSP::Reference::~Reference(v22);
      MEMORY[0x223DA1450]();
    }

    v23 = v1[25];
    if (v23)
    {
      TSP::Reference::~Reference(v23);
      MEMORY[0x223DA1450]();
    }

    v24 = v1[26];
    if (v24)
    {
      TSP::Reference::~Reference(v24);
      MEMORY[0x223DA1450]();
    }

    v25 = v1[27];
    if (v25)
    {
      TSP::Reference::~Reference(v25);
      MEMORY[0x223DA1450]();
    }

    v26 = v1[28];
    if (v26)
    {
      TSP::Reference::~Reference(v26);
      MEMORY[0x223DA1450]();
    }

    v27 = v1[29];
    if (v27)
    {
      TSP::Reference::~Reference(v27);
      MEMORY[0x223DA1450]();
    }

    v28 = v1[30];
    if (v28)
    {
      TSP::Reference::~Reference(v28);
      MEMORY[0x223DA1450]();
    }

    v29 = v1[31];
    if (v29)
    {
      TSP::Reference::~Reference(v29);
      MEMORY[0x223DA1450]();
    }

    v30 = v1[32];
    if (v30)
    {
      TSP::Reference::~Reference(v30);
      MEMORY[0x223DA1450]();
    }

    v31 = v1[33];
    if (v31)
    {
      TSP::Reference::~Reference(v31);
      MEMORY[0x223DA1450]();
    }

    v32 = v1[34];
    if (v32)
    {
      TSP::Reference::~Reference(v32);
      MEMORY[0x223DA1450]();
    }

    v33 = v1[35];
    if (v33)
    {
      TSP::Reference::~Reference(v33);
      MEMORY[0x223DA1450]();
    }

    v34 = v1[36];
    if (v34)
    {
      TSP::Reference::~Reference(v34);
      MEMORY[0x223DA1450]();
    }

    result = v1[37];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::TableStyleNetworkArchive::default_instance(TST::TableStyleNetworkArchive *this)
{
  if (atomic_load_explicit(scc_info_TableStyleNetworkArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableStyleNetworkArchive_default_instance_;
}

uint64_t *TST::TableStyleNetworkArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSP::Reference::Clear(this[4]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = TSP::Reference::Clear(*(v1 + 56));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_54:
    this = TSP::Reference::Clear(*(v1 + 72));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = TSP::Reference::Clear(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_55:
  this = TSP::Reference::Clear(*(v1 + 80));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::Reference::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 96));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_59;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSP::Reference::Clear(*(v1 + 104));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = TSP::Reference::Clear(*(v1 + 112));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = TSP::Reference::Clear(*(v1 + 120));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = TSP::Reference::Clear(*(v1 + 128));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = TSP::Reference::Clear(*(v1 + 136));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_63:
  this = TSP::Reference::Clear(*(v1 + 144));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSP::Reference::Clear(*(v1 + 152));
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 160));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_67;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSP::Reference::Clear(*(v1 + 168));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = TSP::Reference::Clear(*(v1 + 176));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = TSP::Reference::Clear(*(v1 + 184));
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = TSP::Reference::Clear(*(v1 + 192));
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = TSP::Reference::Clear(*(v1 + 200));
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_71:
  this = TSP::Reference::Clear(*(v1 + 208));
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    this = TSP::Reference::Clear(*(v1 + 216));
  }

LABEL_31:
  if (!HIBYTE(v2))
  {
    goto LABEL_40;
  }

  if ((v2 & 0x1000000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 224));
    if ((v2 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_75;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this = TSP::Reference::Clear(*(v1 + 232));
  if ((v2 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = TSP::Reference::Clear(*(v1 + 240));
  if ((v2 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = TSP::Reference::Clear(*(v1 + 248));
  if ((v2 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = TSP::Reference::Clear(*(v1 + 256));
  if ((v2 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_79:
    this = TSP::Reference::Clear(*(v1 + 272));
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_78:
  this = TSP::Reference::Clear(*(v1 + 264));
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_79;
  }

LABEL_39:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_80:
  this = TSP::Reference::Clear(*(v1 + 280));
LABEL_40:
  v3 = *(v1 + 20);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      this = TSP::Reference::Clear(*(v1 + 288));
    }

    if ((v3 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 296));
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 296) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TST::TableStyleNetworkArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v87 = a2;
  if ((sub_221567030(a3, &v87) & 1) == 0)
  {
    while (1)
    {
      v6 = (v87 + 1);
      v7 = *v87;
      if (*v87 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v87, (v8 - 128));
          v87 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v13;
          goto LABEL_7;
        }

        v6 = (v87 + 2);
      }

      v87 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 1u;
          v9 = *(a1 + 32);
          if (v9)
          {
            goto LABEL_186;
          }

          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x223DA0390](v10);
          LODWORD(v9) = v11;
          *(a1 + 32) = v11;
          goto LABEL_185;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 2u;
          v9 = *(a1 + 40);
          if (v9)
          {
            goto LABEL_186;
          }

          v45 = *(a1 + 8);
          if (v45)
          {
            v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
          }

          v46 = MEMORY[0x223DA0390](v45);
          LODWORD(v9) = v46;
          *(a1 + 40) = v46;
          goto LABEL_185;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 4u;
          v9 = *(a1 + 48);
          if (v9)
          {
            goto LABEL_186;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = MEMORY[0x223DA0390](v37);
          LODWORD(v9) = v38;
          *(a1 + 48) = v38;
          goto LABEL_185;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 56);
          if (v9)
          {
            goto LABEL_186;
          }

          v41 = *(a1 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v42 = MEMORY[0x223DA0390](v41);
          LODWORD(v9) = v42;
          *(a1 + 56) = v42;
          goto LABEL_185;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x10u;
          v9 = *(a1 + 64);
          if (v9)
          {
            goto LABEL_186;
          }

          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v28 = MEMORY[0x223DA0390](v27);
          LODWORD(v9) = v28;
          *(a1 + 64) = v28;
          goto LABEL_185;
        case 6u:
          if (v7 != 50)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x20u;
          v9 = *(a1 + 72);
          if (v9)
          {
            goto LABEL_186;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
          }

          v54 = MEMORY[0x223DA0390](v53);
          LODWORD(v9) = v54;
          *(a1 + 72) = v54;
          goto LABEL_185;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x40u;
          v9 = *(a1 + 80);
          if (v9)
          {
            goto LABEL_186;
          }

          v59 = *(a1 + 8);
          if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x223DA0390](v59);
          LODWORD(v9) = v60;
          *(a1 + 80) = v60;
          goto LABEL_185;
        case 8u:
          if (v7 != 66)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x80u;
          v9 = *(a1 + 88);
          if (v9)
          {
            goto LABEL_186;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = MEMORY[0x223DA0390](v43);
          LODWORD(v9) = v44;
          *(a1 + 88) = v44;
          goto LABEL_185;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x100u;
          v9 = *(a1 + 96);
          if (v9)
          {
            goto LABEL_186;
          }

          v65 = *(a1 + 8);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v66 = MEMORY[0x223DA0390](v65);
          LODWORD(v9) = v66;
          *(a1 + 96) = v66;
          goto LABEL_185;
        case 0xAu:
          if (v7 != 82)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x200u;
          v9 = *(a1 + 104);
          if (v9)
          {
            goto LABEL_186;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x223DA0390](v31);
          LODWORD(v9) = v32;
          *(a1 + 104) = v32;
          goto LABEL_185;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x400u;
          v9 = *(a1 + 112);
          if (v9)
          {
            goto LABEL_186;
          }

          v63 = *(a1 + 8);
          if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
          }

          v64 = MEMORY[0x223DA0390](v63);
          LODWORD(v9) = v64;
          *(a1 + 112) = v64;
          goto LABEL_185;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_190;
          }

          *(a1 + 20) |= 4u;
          v24 = (v6 + 1);
          LODWORD(v25) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          v26 = *v24;
          v25 = (v25 + (v26 << 7) - 128);
          if (v26 < 0)
          {
            v85 = google::protobuf::internal::VarintParseSlow32(v6, v25);
            v87 = v85;
            *(a1 + 304) = v86;
            if (!v85)
            {
              return 0;
            }
          }

          else
          {
            v24 = (v6 + 2);
LABEL_44:
            v87 = v24;
            *(a1 + 304) = v25;
          }

          goto LABEL_188;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x800u;
          v9 = *(a1 + 120);
          if (v9)
          {
            goto LABEL_186;
          }

          v29 = *(a1 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x223DA0390](v29);
          LODWORD(v9) = v30;
          *(a1 + 120) = v30;
          goto LABEL_185;
        case 0xEu:
          if (v7 != 114)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x1000u;
          v9 = *(a1 + 128);
          if (v9)
          {
            goto LABEL_186;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v58 = MEMORY[0x223DA0390](v57);
          LODWORD(v9) = v58;
          *(a1 + 128) = v58;
          goto LABEL_185;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x2000u;
          v9 = *(a1 + 136);
          if (v9)
          {
            goto LABEL_186;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA0390](v20);
          LODWORD(v9) = v21;
          *(a1 + 136) = v21;
          goto LABEL_185;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x4000u;
          v9 = *(a1 + 144);
          if (v9)
          {
            goto LABEL_186;
          }

          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x223DA0390](v39);
          LODWORD(v9) = v40;
          *(a1 + 144) = v40;
          goto LABEL_185;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x8000u;
          v9 = *(a1 + 152);
          if (v9)
          {
            goto LABEL_186;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x223DA0390](v18);
          LODWORD(v9) = v19;
          *(a1 + 152) = v19;
          goto LABEL_185;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x10000u;
          v9 = *(a1 + 160);
          if (v9)
          {
            goto LABEL_186;
          }

          v49 = *(a1 + 8);
          if (v49)
          {
            v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
          }

          v50 = MEMORY[0x223DA0390](v49);
          LODWORD(v9) = v50;
          *(a1 + 160) = v50;
          goto LABEL_185;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x20000u;
          v9 = *(a1 + 168);
          if (v9)
          {
            goto LABEL_186;
          }

          v61 = *(a1 + 8);
          if (v61)
          {
            v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          }

          v62 = MEMORY[0x223DA0390](v61);
          LODWORD(v9) = v62;
          *(a1 + 168) = v62;
          goto LABEL_185;
        case 0x14u:
          if (v7 != 162)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x40000u;
          v9 = *(a1 + 176);
          if (v9)
          {
            goto LABEL_186;
          }

          v73 = *(a1 + 8);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v74 = MEMORY[0x223DA0390](v73);
          LODWORD(v9) = v74;
          *(a1 + 176) = v74;
          goto LABEL_185;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x80000u;
          v9 = *(a1 + 184);
          if (v9)
          {
            goto LABEL_186;
          }

          v51 = *(a1 + 8);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v52 = MEMORY[0x223DA0390](v51);
          LODWORD(v9) = v52;
          *(a1 + 184) = v52;
          goto LABEL_185;
        case 0x16u:
          if (v7 != 178)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x100000u;
          v9 = *(a1 + 192);
          if (v9)
          {
            goto LABEL_186;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x223DA0390](v55);
          LODWORD(v9) = v56;
          *(a1 + 192) = v56;
          goto LABEL_185;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x200000u;
          v9 = *(a1 + 200);
          if (v9)
          {
            goto LABEL_186;
          }

          v71 = *(a1 + 8);
          if (v71)
          {
            v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
          }

          v72 = MEMORY[0x223DA0390](v71);
          LODWORD(v9) = v72;
          *(a1 + 200) = v72;
          goto LABEL_185;
        case 0x18u:
          if (v7 != 194)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x400000u;
          v9 = *(a1 + 208);
          if (v9)
          {
            goto LABEL_186;
          }

          v75 = *(a1 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          v76 = MEMORY[0x223DA0390](v75);
          LODWORD(v9) = v76;
          *(a1 + 208) = v76;
          goto LABEL_185;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x800000u;
          v9 = *(a1 + 216);
          if (v9)
          {
            goto LABEL_186;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x223DA0390](v35);
          LODWORD(v9) = v36;
          *(a1 + 216) = v36;
          goto LABEL_185;
        case 0x1Au:
          if (v7 != 210)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x1000000u;
          v9 = *(a1 + 224);
          if (v9)
          {
            goto LABEL_186;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x223DA0390](v33);
          LODWORD(v9) = v34;
          *(a1 + 224) = v34;
          goto LABEL_185;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x2000000u;
          v9 = *(a1 + 232);
          if (v9)
          {
            goto LABEL_186;
          }

          v81 = *(a1 + 8);
          if (v81)
          {
            v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
          }

          v82 = MEMORY[0x223DA0390](v81);
          LODWORD(v9) = v82;
          *(a1 + 232) = v82;
          goto LABEL_185;
        case 0x1Cu:
          if (v7 != 226)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x4000000u;
          v9 = *(a1 + 240);
          if (v9)
          {
            goto LABEL_186;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x223DA0390](v14);
          LODWORD(v9) = v15;
          *(a1 + 240) = v15;
          goto LABEL_185;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x8000000u;
          v9 = *(a1 + 248);
          if (v9)
          {
            goto LABEL_186;
          }

          v77 = *(a1 + 8);
          if (v77)
          {
            v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
          }

          v78 = MEMORY[0x223DA0390](v77);
          LODWORD(v9) = v78;
          *(a1 + 248) = v78;
          goto LABEL_185;
        case 0x1Eu:
          if (v7 != 242)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x10000000u;
          v9 = *(a1 + 256);
          if (v9)
          {
            goto LABEL_186;
          }

          v79 = *(a1 + 8);
          if (v79)
          {
            v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
          }

          v80 = MEMORY[0x223DA0390](v79);
          LODWORD(v9) = v80;
          *(a1 + 256) = v80;
          goto LABEL_185;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x20000000u;
          v9 = *(a1 + 264);
          if (v9)
          {
            goto LABEL_186;
          }

          v67 = *(a1 + 8);
          if (v67)
          {
            v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
          }

          v68 = MEMORY[0x223DA0390](v67);
          LODWORD(v9) = v68;
          *(a1 + 264) = v68;
          goto LABEL_185;
        case 0x20u:
          if (v7 != 2)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x40000000u;
          v9 = *(a1 + 272);
          if (v9)
          {
            goto LABEL_186;
          }

          v47 = *(a1 + 8);
          if (v47)
          {
            v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
          }

          v48 = MEMORY[0x223DA0390](v47);
          LODWORD(v9) = v48;
          *(a1 + 272) = v48;
          goto LABEL_185;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_190;
          }

          *(a1 + 16) |= 0x80000000;
          v9 = *(a1 + 280);
          if (v9)
          {
            goto LABEL_186;
          }

          v69 = *(a1 + 8);
          if (v69)
          {
            v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
          }

          v70 = MEMORY[0x223DA0390](v69);
          LODWORD(v9) = v70;
          *(a1 + 280) = v70;
          goto LABEL_185;
        case 0x22u:
          if (v7 != 18)
          {
            goto LABEL_190;
          }

          *(a1 + 20) |= 1u;
          v9 = *(a1 + 288);
          if (v9)
          {
            goto LABEL_186;
          }

          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x223DA0390](v22);
          LODWORD(v9) = v23;
          *(a1 + 288) = v23;
          goto LABEL_185;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_190;
          }

          *(a1 + 20) |= 2u;
          v9 = *(a1 + 296);
          if (v9)
          {
            goto LABEL_186;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x223DA0390](v16);
          LODWORD(v9) = v17;
          *(a1 + 296) = v17;
LABEL_185:
          v6 = v87;
LABEL_186:
          v83 = sub_22170B7F8(a3, v9, v6);
          goto LABEL_187;
        default:
LABEL_190:
          if (v7)
          {
            v84 = (v7 & 7) == 4;
          }

          else
          {
            v84 = 1;
          }

          if (v84)
          {
            *(a3 + 80) = v7 - 1;
            return v87;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v83 = google::protobuf::internal::UnknownFieldParse();
LABEL_187:
          v87 = v83;
          if (!v83)
          {
            return 0;
          }

LABEL_188:
          if (sub_221567030(a3, &v87))
          {
            return v87;
          }

          break;
      }
    }
  }

  return v87;
}

unsigned __int8 *TST::TableStyleNetworkArchive::_InternalSerialize(TST::TableStyleNetworkArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 4);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
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
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 5);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 6);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 7);
  *a2 = 34;
  v25 = *(v24 + 5);
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = a2 + 3;
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      a2[2] = v27;
      v26 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v25;
    v26 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 8);
  *a2 = 42;
  v31 = *(v30 + 5);
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = a2 + 3;
      do
      {
        *(v32 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v32;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v32 - 1) = v34;
    }

    else
    {
      a2[2] = v33;
      v32 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v31;
    v32 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_73;
  }

LABEL_63:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 9);
  *a2 = 50;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    a2[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = a2 + 3;
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
      a2[2] = v39;
      v38 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v37;
    v38 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_83;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 10);
  *a2 = 58;
  v43 = *(v42 + 5);
  if (v43 > 0x7F)
  {
    a2[1] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = a2 + 3;
      do
      {
        *(v44 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++v44;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(v44 - 1) = v46;
    }

    else
    {
      a2[2] = v45;
      v44 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v43;
    v44 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_93;
  }

LABEL_83:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 11);
  *a2 = 66;
  v49 = *(v48 + 5);
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = a2 + 3;
      do
      {
        *(v50 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v50;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v50 - 1) = v52;
    }

    else
    {
      a2[2] = v51;
      v50 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v49;
    v50 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_103;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(this + 12);
  *a2 = 74;
  v55 = *(v54 + 5);
  if (v55 > 0x7F)
  {
    a2[1] = v55 | 0x80;
    v57 = v55 >> 7;
    if (v55 >> 14)
    {
      v56 = a2 + 3;
      do
      {
        *(v56 - 1) = v57 | 0x80;
        v58 = v57 >> 7;
        ++v56;
        v59 = v57 >> 14;
        v57 >>= 7;
      }

      while (v59);
      *(v56 - 1) = v58;
    }

    else
    {
      a2[2] = v57;
      v56 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v55;
    v56 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v54, v56, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_113;
  }

LABEL_103:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(this + 13);
  *a2 = 82;
  v61 = *(v60 + 5);
  if (v61 > 0x7F)
  {
    a2[1] = v61 | 0x80;
    v63 = v61 >> 7;
    if (v61 >> 14)
    {
      v62 = a2 + 3;
      do
      {
        *(v62 - 1) = v63 | 0x80;
        v64 = v63 >> 7;
        ++v62;
        v65 = v63 >> 14;
        v63 >>= 7;
      }

      while (v65);
      *(v62 - 1) = v64;
    }

    else
    {
      a2[2] = v63;
      v62 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v61;
    v62 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v60, v62, a3);
  if ((v5 & 0x400) != 0)
  {
LABEL_113:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v66 = *(this + 14);
    *a2 = 90;
    v67 = *(v66 + 5);
    if (v67 > 0x7F)
    {
      a2[1] = v67 | 0x80;
      v69 = v67 >> 7;
      if (v67 >> 14)
      {
        v68 = a2 + 3;
        do
        {
          *(v68 - 1) = v69 | 0x80;
          v70 = v69 >> 7;
          ++v68;
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
        *(v68 - 1) = v70;
      }

      else
      {
        a2[2] = v69;
        v68 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v67;
      v68 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v66, v68, a3);
  }

LABEL_123:
  if ((*(this + 20) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v72 = *(this + 76);
    *a2 = 96;
    if (v72 > 0x7F)
    {
      a2[1] = v72 | 0x80;
      v73 = v72 >> 7;
      if (v72 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v73 | 0x80;
          v74 = v73 >> 7;
          ++a2;
          v75 = v73 >> 14;
          v73 >>= 7;
        }

        while (v75);
        *(a2 - 1) = v74;
      }

      else
      {
        a2[2] = v73;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v72;
      a2 += 2;
    }
  }

  v76 = *(this + 4);
  if ((v76 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v77 = *(this + 15);
    *a2 = 106;
    v78 = *(v77 + 5);
    if (v78 > 0x7F)
    {
      a2[1] = v78 | 0x80;
      v80 = v78 >> 7;
      if (v78 >> 14)
      {
        v79 = a2 + 3;
        do
        {
          *(v79 - 1) = v80 | 0x80;
          v81 = v80 >> 7;
          ++v79;
          v82 = v80 >> 14;
          v80 >>= 7;
        }

        while (v82);
        *(v79 - 1) = v81;
      }

      else
      {
        a2[2] = v80;
        v79 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v78;
      v79 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v77, v79, a3);
    if ((v76 & 0x1000) == 0)
    {
LABEL_135:
      if ((v76 & 0x2000) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_175;
    }
  }

  else if ((v76 & 0x1000) == 0)
  {
    goto LABEL_135;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v83 = *(this + 16);
  *a2 = 114;
  v84 = *(v83 + 5);
  if (v84 > 0x7F)
  {
    a2[1] = v84 | 0x80;
    v86 = v84 >> 7;
    if (v84 >> 14)
    {
      v85 = a2 + 3;
      do
      {
        *(v85 - 1) = v86 | 0x80;
        v87 = v86 >> 7;
        ++v85;
        v88 = v86 >> 14;
        v86 >>= 7;
      }

      while (v88);
      *(v85 - 1) = v87;
    }

    else
    {
      a2[2] = v86;
      v85 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v84;
    v85 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v83, v85, a3);
  if ((v76 & 0x2000) == 0)
  {
LABEL_136:
    if ((v76 & 0x4000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_185;
  }

LABEL_175:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v89 = *(this + 17);
  *a2 = 122;
  v90 = *(v89 + 5);
  if (v90 > 0x7F)
  {
    a2[1] = v90 | 0x80;
    v92 = v90 >> 7;
    if (v90 >> 14)
    {
      v91 = a2 + 3;
      do
      {
        *(v91 - 1) = v92 | 0x80;
        v93 = v92 >> 7;
        ++v91;
        v94 = v92 >> 14;
        v92 >>= 7;
      }

      while (v94);
      *(v91 - 1) = v93;
    }

    else
    {
      a2[2] = v92;
      v91 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v90;
    v91 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v89, v91, a3);
  if ((v76 & 0x4000) == 0)
  {
LABEL_137:
    if ((v76 & 0x8000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_195;
  }

LABEL_185:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v95 = *(this + 18);
  *a2 = 386;
  v96 = *(v95 + 5);
  if (v96 > 0x7F)
  {
    a2[2] = v96 | 0x80;
    v98 = v96 >> 7;
    if (v96 >> 14)
    {
      v97 = a2 + 4;
      do
      {
        *(v97 - 1) = v98 | 0x80;
        v99 = v98 >> 7;
        ++v97;
        v100 = v98 >> 14;
        v98 >>= 7;
      }

      while (v100);
      *(v97 - 1) = v99;
    }

    else
    {
      a2[3] = v98;
      v97 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v96;
    v97 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v95, v97, a3);
  if ((v76 & 0x8000) == 0)
  {
LABEL_138:
    if ((v76 & 0x10000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_205;
  }

LABEL_195:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v101 = *(this + 19);
  *a2 = 394;
  v102 = *(v101 + 5);
  if (v102 > 0x7F)
  {
    a2[2] = v102 | 0x80;
    v104 = v102 >> 7;
    if (v102 >> 14)
    {
      v103 = a2 + 4;
      do
      {
        *(v103 - 1) = v104 | 0x80;
        v105 = v104 >> 7;
        ++v103;
        v106 = v104 >> 14;
        v104 >>= 7;
      }

      while (v106);
      *(v103 - 1) = v105;
    }

    else
    {
      a2[3] = v104;
      v103 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v102;
    v103 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v101, v103, a3);
  if ((v76 & 0x10000) == 0)
  {
LABEL_139:
    if ((v76 & 0x20000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_215;
  }

LABEL_205:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v107 = *(this + 20);
  *a2 = 402;
  v108 = *(v107 + 5);
  if (v108 > 0x7F)
  {
    a2[2] = v108 | 0x80;
    v110 = v108 >> 7;
    if (v108 >> 14)
    {
      v109 = a2 + 4;
      do
      {
        *(v109 - 1) = v110 | 0x80;
        v111 = v110 >> 7;
        ++v109;
        v112 = v110 >> 14;
        v110 >>= 7;
      }

      while (v112);
      *(v109 - 1) = v111;
    }

    else
    {
      a2[3] = v110;
      v109 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v108;
    v109 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v107, v109, a3);
  if ((v76 & 0x20000) == 0)
  {
LABEL_140:
    if ((v76 & 0x40000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_225;
  }

LABEL_215:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v113 = *(this + 21);
  *a2 = 410;
  v114 = *(v113 + 5);
  if (v114 > 0x7F)
  {
    a2[2] = v114 | 0x80;
    v116 = v114 >> 7;
    if (v114 >> 14)
    {
      v115 = a2 + 4;
      do
      {
        *(v115 - 1) = v116 | 0x80;
        v117 = v116 >> 7;
        ++v115;
        v118 = v116 >> 14;
        v116 >>= 7;
      }

      while (v118);
      *(v115 - 1) = v117;
    }

    else
    {
      a2[3] = v116;
      v115 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v114;
    v115 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v113, v115, a3);
  if ((v76 & 0x40000) == 0)
  {
LABEL_141:
    if ((v76 & 0x80000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_235;
  }

LABEL_225:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v119 = *(this + 22);
  *a2 = 418;
  v120 = *(v119 + 5);
  if (v120 > 0x7F)
  {
    a2[2] = v120 | 0x80;
    v122 = v120 >> 7;
    if (v120 >> 14)
    {
      v121 = a2 + 4;
      do
      {
        *(v121 - 1) = v122 | 0x80;
        v123 = v122 >> 7;
        ++v121;
        v124 = v122 >> 14;
        v122 >>= 7;
      }

      while (v124);
      *(v121 - 1) = v123;
    }

    else
    {
      a2[3] = v122;
      v121 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v120;
    v121 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v119, v121, a3);
  if ((v76 & 0x80000) == 0)
  {
LABEL_142:
    if ((v76 & 0x100000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_245;
  }

LABEL_235:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v125 = *(this + 23);
  *a2 = 426;
  v126 = *(v125 + 5);
  if (v126 > 0x7F)
  {
    a2[2] = v126 | 0x80;
    v128 = v126 >> 7;
    if (v126 >> 14)
    {
      v127 = a2 + 4;
      do
      {
        *(v127 - 1) = v128 | 0x80;
        v129 = v128 >> 7;
        ++v127;
        v130 = v128 >> 14;
        v128 >>= 7;
      }

      while (v130);
      *(v127 - 1) = v129;
    }

    else
    {
      a2[3] = v128;
      v127 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v126;
    v127 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v125, v127, a3);
  if ((v76 & 0x100000) == 0)
  {
LABEL_143:
    if ((v76 & 0x200000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_255;
  }

LABEL_245:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v131 = *(this + 24);
  *a2 = 434;
  v132 = *(v131 + 5);
  if (v132 > 0x7F)
  {
    a2[2] = v132 | 0x80;
    v134 = v132 >> 7;
    if (v132 >> 14)
    {
      v133 = a2 + 4;
      do
      {
        *(v133 - 1) = v134 | 0x80;
        v135 = v134 >> 7;
        ++v133;
        v136 = v134 >> 14;
        v134 >>= 7;
      }

      while (v136);
      *(v133 - 1) = v135;
    }

    else
    {
      a2[3] = v134;
      v133 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v132;
    v133 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v131, v133, a3);
  if ((v76 & 0x200000) == 0)
  {
LABEL_144:
    if ((v76 & 0x400000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_265;
  }

LABEL_255:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v137 = *(this + 25);
  *a2 = 442;
  v138 = *(v137 + 5);
  if (v138 > 0x7F)
  {
    a2[2] = v138 | 0x80;
    v140 = v138 >> 7;
    if (v138 >> 14)
    {
      v139 = a2 + 4;
      do
      {
        *(v139 - 1) = v140 | 0x80;
        v141 = v140 >> 7;
        ++v139;
        v142 = v140 >> 14;
        v140 >>= 7;
      }

      while (v142);
      *(v139 - 1) = v141;
    }

    else
    {
      a2[3] = v140;
      v139 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v138;
    v139 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v137, v139, a3);
  if ((v76 & 0x400000) == 0)
  {
LABEL_145:
    if ((v76 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_275;
  }

LABEL_265:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v143 = *(this + 26);
  *a2 = 450;
  v144 = *(v143 + 5);
  if (v144 > 0x7F)
  {
    a2[2] = v144 | 0x80;
    v146 = v144 >> 7;
    if (v144 >> 14)
    {
      v145 = a2 + 4;
      do
      {
        *(v145 - 1) = v146 | 0x80;
        v147 = v146 >> 7;
        ++v145;
        v148 = v146 >> 14;
        v146 >>= 7;
      }

      while (v148);
      *(v145 - 1) = v147;
    }

    else
    {
      a2[3] = v146;
      v145 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v144;
    v145 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v143, v145, a3);
  if ((v76 & 0x800000) == 0)
  {
LABEL_146:
    if ((v76 & 0x1000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_285;
  }

LABEL_275:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v149 = *(this + 27);
  *a2 = 458;
  v150 = *(v149 + 5);
  if (v150 > 0x7F)
  {
    a2[2] = v150 | 0x80;
    v152 = v150 >> 7;
    if (v150 >> 14)
    {
      v151 = a2 + 4;
      do
      {
        *(v151 - 1) = v152 | 0x80;
        v153 = v152 >> 7;
        ++v151;
        v154 = v152 >> 14;
        v152 >>= 7;
      }

      while (v154);
      *(v151 - 1) = v153;
    }

    else
    {
      a2[3] = v152;
      v151 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v150;
    v151 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v149, v151, a3);
  if ((v76 & 0x1000000) == 0)
  {
LABEL_147:
    if ((v76 & 0x2000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_295;
  }

LABEL_285:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v155 = *(this + 28);
  *a2 = 466;
  v156 = *(v155 + 5);
  if (v156 > 0x7F)
  {
    a2[2] = v156 | 0x80;
    v158 = v156 >> 7;
    if (v156 >> 14)
    {
      v157 = a2 + 4;
      do
      {
        *(v157 - 1) = v158 | 0x80;
        v159 = v158 >> 7;
        ++v157;
        v160 = v158 >> 14;
        v158 >>= 7;
      }

      while (v160);
      *(v157 - 1) = v159;
    }

    else
    {
      a2[3] = v158;
      v157 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v156;
    v157 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v155, v157, a3);
  if ((v76 & 0x2000000) == 0)
  {
LABEL_148:
    if ((v76 & 0x4000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_305;
  }

LABEL_295:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v161 = *(this + 29);
  *a2 = 474;
  v162 = *(v161 + 5);
  if (v162 > 0x7F)
  {
    a2[2] = v162 | 0x80;
    v164 = v162 >> 7;
    if (v162 >> 14)
    {
      v163 = a2 + 4;
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
      a2[3] = v164;
      v163 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v162;
    v163 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v161, v163, a3);
  if ((v76 & 0x4000000) == 0)
  {
LABEL_149:
    if ((v76 & 0x8000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_315;
  }

LABEL_305:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v167 = *(this + 30);
  *a2 = 482;
  v168 = *(v167 + 5);
  if (v168 > 0x7F)
  {
    a2[2] = v168 | 0x80;
    v170 = v168 >> 7;
    if (v168 >> 14)
    {
      v169 = a2 + 4;
      do
      {
        *(v169 - 1) = v170 | 0x80;
        v171 = v170 >> 7;
        ++v169;
        v172 = v170 >> 14;
        v170 >>= 7;
      }

      while (v172);
      *(v169 - 1) = v171;
    }

    else
    {
      a2[3] = v170;
      v169 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v168;
    v169 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v167, v169, a3);
  if ((v76 & 0x8000000) == 0)
  {
LABEL_150:
    if ((v76 & 0x10000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_325;
  }

LABEL_315:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v173 = *(this + 31);
  *a2 = 490;
  v174 = *(v173 + 5);
  if (v174 > 0x7F)
  {
    a2[2] = v174 | 0x80;
    v176 = v174 >> 7;
    if (v174 >> 14)
    {
      v175 = a2 + 4;
      do
      {
        *(v175 - 1) = v176 | 0x80;
        v177 = v176 >> 7;
        ++v175;
        v178 = v176 >> 14;
        v176 >>= 7;
      }

      while (v178);
      *(v175 - 1) = v177;
    }

    else
    {
      a2[3] = v176;
      v175 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v174;
    v175 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v173, v175, a3);
  if ((v76 & 0x10000000) == 0)
  {
LABEL_151:
    if ((v76 & 0x20000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_335;
  }

LABEL_325:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v179 = *(this + 32);
  *a2 = 498;
  v180 = *(v179 + 5);
  if (v180 > 0x7F)
  {
    a2[2] = v180 | 0x80;
    v182 = v180 >> 7;
    if (v180 >> 14)
    {
      v181 = a2 + 4;
      do
      {
        *(v181 - 1) = v182 | 0x80;
        v183 = v182 >> 7;
        ++v181;
        v184 = v182 >> 14;
        v182 >>= 7;
      }

      while (v184);
      *(v181 - 1) = v183;
    }

    else
    {
      a2[3] = v182;
      v181 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v180;
    v181 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v179, v181, a3);
  if ((v76 & 0x20000000) == 0)
  {
LABEL_152:
    if ((v76 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_345;
  }

LABEL_335:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v185 = *(this + 33);
  *a2 = 506;
  v186 = *(v185 + 5);
  if (v186 > 0x7F)
  {
    a2[2] = v186 | 0x80;
    v188 = v186 >> 7;
    if (v186 >> 14)
    {
      v187 = a2 + 4;
      do
      {
        *(v187 - 1) = v188 | 0x80;
        v189 = v188 >> 7;
        ++v187;
        v190 = v188 >> 14;
        v188 >>= 7;
      }

      while (v190);
      *(v187 - 1) = v189;
    }

    else
    {
      a2[3] = v188;
      v187 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v186;
    v187 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v185, v187, a3);
  if ((v76 & 0x40000000) == 0)
  {
LABEL_153:
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_365;
    }

    goto LABEL_355;
  }

LABEL_345:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v191 = *(this + 34);
  *a2 = 642;
  v192 = *(v191 + 5);
  if (v192 > 0x7F)
  {
    a2[2] = v192 | 0x80;
    v194 = v192 >> 7;
    if (v192 >> 14)
    {
      v193 = a2 + 4;
      do
      {
        *(v193 - 1) = v194 | 0x80;
        v195 = v194 >> 7;
        ++v193;
        v196 = v194 >> 14;
        v194 >>= 7;
      }

      while (v196);
      *(v193 - 1) = v195;
    }

    else
    {
      a2[3] = v194;
      v193 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v192;
    v193 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v191, v193, a3);
  if (v76 < 0)
  {
LABEL_355:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v197 = *(this + 35);
    *a2 = 650;
    v198 = *(v197 + 5);
    if (v198 > 0x7F)
    {
      a2[2] = v198 | 0x80;
      v200 = v198 >> 7;
      if (v198 >> 14)
      {
        v199 = a2 + 4;
        do
        {
          *(v199 - 1) = v200 | 0x80;
          v201 = v200 >> 7;
          ++v199;
          v202 = v200 >> 14;
          v200 >>= 7;
        }

        while (v202);
        *(v199 - 1) = v201;
      }

      else
      {
        a2[3] = v200;
        v199 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v198;
      v199 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v197, v199, a3);
  }

LABEL_365:
  v203 = *(this + 5);
  if (v203)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v204 = *(this + 36);
    *a2 = 658;
    v205 = *(v204 + 5);
    if (v205 > 0x7F)
    {
      a2[2] = v205 | 0x80;
      v207 = v205 >> 7;
      if (v205 >> 14)
      {
        v206 = a2 + 4;
        do
        {
          *(v206 - 1) = v207 | 0x80;
          v208 = v207 >> 7;
          ++v206;
          v209 = v207 >> 14;
          v207 >>= 7;
        }

        while (v209);
        *(v206 - 1) = v208;
      }

      else
      {
        a2[3] = v207;
        v206 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v205;
      v206 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v204, v206, a3);
  }

  if ((v203 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v210 = *(this + 37);
    *a2 = 666;
    v211 = *(v210 + 5);
    if (v211 > 0x7F)
    {
      a2[2] = v211 | 0x80;
      v213 = v211 >> 7;
      if (v211 >> 14)
      {
        v212 = a2 + 4;
        do
        {
          *(v212 - 1) = v213 | 0x80;
          v214 = v213 >> 7;
          ++v212;
          v215 = v213 >> 14;
          v213 >>= 7;
        }

        while (v215);
        *(v212 - 1) = v214;
      }

      else
      {
        a2[3] = v213;
        v212 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v211;
      v212 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v210, v212, a3);
  }

  v216 = *(this + 1);
  if ((v216 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v216 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableStyleNetworkArchive::RequiredFieldsByteSizeFallback(TST::TableStyleNetworkArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 6));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v9 = TSP::Reference::ByteSizeLong(*(this + 7));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = TSP::Reference::ByteSizeLong(*(this + 8));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = TSP::Reference::ByteSizeLong(*(this + 9));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v13 = TSP::Reference::ByteSizeLong(*(this + 11));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x100) == 0)
    {
      return v3;
    }

    goto LABEL_13;
  }

LABEL_19:
  v12 = TSP::Reference::ByteSizeLong(*(this + 10));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v2 & 0x100) != 0)
  {
LABEL_13:
    v6 = TSP::Reference::ByteSizeLong(*(this + 12));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::TableStyleNetworkArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 0x1FF) != 0)
  {
    v16 = TST::TableStyleNetworkArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[4]);
    v3 = TSP::Reference::ByteSizeLong(this[5]);
    v4 = TSP::Reference::ByteSizeLong(this[6]);
    v5 = TSP::Reference::ByteSizeLong(this[7]);
    v6 = TSP::Reference::ByteSizeLong(this[8]);
    v7 = TSP::Reference::ByteSizeLong(this[9]);
    v8 = TSP::Reference::ByteSizeLong(this[10]);
    v9 = TSP::Reference::ByteSizeLong(this[11]);
    v10.i32[0] = v6 | 1;
    v10.i32[1] = v7 | 1;
    v10.i32[2] = v8 | 1;
    v10.i32[3] = v9 | 1;
    v11.i32[0] = v2 | 1;
    v11.i32[1] = v3 | 1;
    v11.i32[2] = v4 | 1;
    v11.i32[3] = v5 | 1;
    v12.i64[0] = 0x1F0000001FLL;
    v12.i64[1] = 0x1F0000001FLL;
    v13.i64[0] = 0x4900000049;
    v13.i64[1] = 0x4900000049;
    v14.i64[0] = 0x4900000049;
    v14.i64[1] = 0x4900000049;
    v45 = vshrq_n_u32(vmlal_u16(v14, vmovn_s32(veorq_s8(vclzq_s32(v11), v12)), 0x9000900090009), 6uLL);
    v46 = vshrq_n_u32(vmlal_u16(v13, vmovn_s32(veorq_s8(vclzq_s32(v10), v12)), 0x9000900090009), 6uLL);
    v15 = TSP::Reference::ByteSizeLong(this[12]);
    v16 = v2 + v4 + v3 + vaddvq_s64(vaddq_s64(vaddl_u32(*v45.i8, *v46.i8), vaddl_high_u32(v45, v46))) + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + v15 + v9 + v8 + v7 + v6 + v5 + 9;
  }

  v17 = *(this + 4);
  if ((v17 & 0xFE00) == 0)
  {
    goto LABEL_13;
  }

  if ((v17 & 0x200) != 0)
  {
    v22 = TSP::Reference::ByteSizeLong(this[13]);
    v16 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 0x400) == 0)
    {
LABEL_7:
      if ((v17 & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_41;
    }
  }

  else if ((v17 & 0x400) == 0)
  {
    goto LABEL_7;
  }

  v23 = TSP::Reference::ByteSizeLong(this[14]);
  v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x800) == 0)
  {
LABEL_8:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = TSP::Reference::ByteSizeLong(this[15]);
  v16 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x1000) == 0)
  {
LABEL_9:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

LABEL_43:
    v26 = TSP::Reference::ByteSizeLong(this[17]);
    v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 0x4000) == 0)
    {
LABEL_11:
      if ((v17 & 0x8000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_42:
  v25 = TSP::Reference::ByteSizeLong(this[16]);
  v16 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x2000) != 0)
  {
    goto LABEL_43;
  }

LABEL_10:
  if ((v17 & 0x4000) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  v27 = TSP::Reference::ByteSizeLong(this[18]);
  v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x8000) != 0)
  {
LABEL_12:
    v18 = TSP::Reference::ByteSizeLong(this[19]);
    v16 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  if ((v17 & 0xFF0000) == 0)
  {
    goto LABEL_23;
  }

  if ((v17 & 0x10000) != 0)
  {
    v28 = TSP::Reference::ByteSizeLong(this[20]);
    v16 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x20000) == 0)
    {
LABEL_16:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_16;
  }

  v29 = TSP::Reference::ByteSizeLong(this[21]);
  v16 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x40000) == 0)
  {
LABEL_17:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v30 = TSP::Reference::ByteSizeLong(this[22]);
  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x80000) == 0)
  {
LABEL_18:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v31 = TSP::Reference::ByteSizeLong(this[23]);
  v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x100000) == 0)
  {
LABEL_19:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v32 = TSP::Reference::ByteSizeLong(this[24]);
  v16 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x200000) == 0)
  {
LABEL_20:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v33 = TSP::Reference::ByteSizeLong(this[25]);
  v16 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x400000) == 0)
  {
LABEL_21:
    if ((v17 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_52:
  v34 = TSP::Reference::ByteSizeLong(this[26]);
  v16 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x800000) != 0)
  {
LABEL_22:
    v19 = TSP::Reference::ByteSizeLong(this[27]);
    v16 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_23:
  if (!HIBYTE(v17))
  {
    goto LABEL_32;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v37 = TSP::Reference::ByteSizeLong(this[28]);
    v16 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x2000000) == 0)
    {
LABEL_26:
      if ((v17 & 0x4000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_59;
    }
  }

  else if ((v17 & 0x2000000) == 0)
  {
    goto LABEL_26;
  }

  v38 = TSP::Reference::ByteSizeLong(this[29]);
  v16 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v39 = TSP::Reference::ByteSizeLong(this[30]);
  v16 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v40 = TSP::Reference::ByteSizeLong(this[31]);
  v16 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v17 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v41 = TSP::Reference::ByteSizeLong(this[32]);
  v16 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_63:
    v43 = TSP::Reference::ByteSizeLong(this[34]);
    v16 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_62:
  v42 = TSP::Reference::ByteSizeLong(this[33]);
  v16 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_31:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_64:
  v44 = TSP::Reference::ByteSizeLong(this[35]);
  v16 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_32:
  v20 = *(this + 5);
  if ((v20 & 7) == 0)
  {
    goto LABEL_37;
  }

  if (v20)
  {
    v35 = TSP::Reference::ByteSizeLong(this[36]);
    v16 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v20 & 2) == 0)
    {
LABEL_35:
      if ((v20 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_35;
  }

  v36 = TSP::Reference::ByteSizeLong(this[37]);
  v16 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v20 & 4) != 0)
  {
LABEL_36:
    v16 += ((9 * (__clz(*(this + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_37:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v16, this + 3);
  }

  else
  {
    *(this + 6) = v16;
    return v16;
  }
}