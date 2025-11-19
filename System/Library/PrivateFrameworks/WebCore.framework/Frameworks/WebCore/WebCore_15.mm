size_t webrtc::ToString@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v17[7] = *MEMORY[0x277D85DE8];
  __s = &v16;
  v15 = xmmword_273B91D00;
  LOBYTE(v16) = 0;
  if (a1 == 0x8000000000000000)
  {
    *(&v15 + 1) = 8;
    v16 = 0x73706220666E692DLL;
    v3 = v17;
    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (__ROR8__(0x1CAC083126E978D5 * a1 + 0x10624DD2F1A9FB8, 3) < 0x4189374BC6A7EFuLL)
    {
      v12 = a1 / 0x3E8uLL;
      if (a1 % 0x3E8uLL > 0x1F3)
      {
        ++v12;
      }

      if (-a1 % 0x3E8uLL <= 0x1F4)
      {
        v13 = 0;
      }

      else
      {
        v13 = -1;
      }

      if (a1 < 0)
      {
        v12 = v13 - -a1 / 0x3E8uLL;
      }

      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", v12);
      v4 = *(&v15 + 1);
      v5 = __s;
      if (v15 + ~*(&v15 + 1) >= 5uLL)
      {
        v6 = 5;
      }

      else
      {
        v6 = v15 + ~*(&v15 + 1);
      }

      v7 = " kbps";
      goto LABEL_11;
    }

LABEL_7:
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", a1);
    v4 = *(&v15 + 1);
    v5 = __s;
    if (v15 + ~*(&v15 + 1) >= 4uLL)
    {
      v6 = 4;
    }

    else
    {
      v6 = v15 + ~*(&v15 + 1);
    }

    v7 = " bps";
LABEL_11:
    memcpy(&v5[v4], v7, v6);
    *(&v15 + 1) += v6;
    v3 = &__s[*(&v15 + 1)];
    goto LABEL_12;
  }

  v16 = 0x73706220666E692BLL;
  *(&v15 + 1) = 8;
  v3 = v17;
LABEL_12:
  *v3 = 0;
  v8 = __s;
  if (!__s)
  {
    goto LABEL_35;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_36;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v10 = &a2[result];
  if (a2 <= v8 && v10 > v8)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v8, result);
  }

  *v10 = 0;
  return result;
}

{
  v14 = *MEMORY[0x277D85DE8];
  v9 = __s;
  v10 = xmmword_273B91D00;
  __s[0] = 0;
  if (a1 == 0x8000000000000000)
  {
    v12 = 29541;
    v3 = "-inf bytes";
    goto LABEL_5;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 29541;
    v3 = "+inf bytes";
LABEL_5:
    v4 = *v3;
    *(&v10 + 1) = 10;
    *__s = v4;
    v13 = 0;
    v5 = __s;
    goto LABEL_10;
  }

  webrtc::SimpleStringBuilder::AppendFormat(&v9, "%lld", a1);
  if (v10 + ~*(&v10 + 1) >= 6uLL)
  {
    v6 = 6;
  }

  else
  {
    v6 = v10 + ~*(&v10 + 1);
  }

  memcpy(&v9[*(&v10 + 1)], " bytes", v6);
  *(&v10 + 1) += v6;
  v9[*(&v10 + 1)] = 0;
  v5 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_10:
  result = strlen(v5);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_20;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v8 = &a2[result];
  if (a2 <= v5 && v8 > v5)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v5, result);
  }

  *v8 = 0;
  return result;
}

uint64_t dcsctp::DataTracker::Observe(uint64_t a1, unsigned int a2, char a3)
{
  if (*(a1 + 52) == 1)
  {
    v5 = *(a1 + 48);
    v6 = a2 >= v5;
    v7 = a2 - v5;
    v8 = v7 != 0 && v6;
    if (v7 != 0x80000000)
    {
      v8 = v7 >= 0;
    }

    if (!v8)
    {
      v7 |= 0xFFFFFFFF00000000;
    }

    v9 = v7 + *(a1 + 40);
  }

  else
  {
    v9 = a2;
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = a2;
  *(a1 + 52) = 1;
  v10 = *(a1 + 56);
  if (v9 > v10)
  {
    if (v9 == v10 + 1)
    {
      *(a1 + 56) = v9;
      v11 = *(a1 + 72);
      v12 = *(a1 + 64);
      if (v12 == v11 || *v12 != v9 + 1)
      {
        goto LABEL_98;
      }

      *(a1 + 56) = *(v12 + 1);
      v13 = v11 - (v12 + 16);
      if (v11 != v12 + 16)
      {
        memmove(v12, v12 + 16, v11 - (v12 + 16));
      }

      v14 = &v12[v13];
      goto LABEL_18;
    }

    v22 = *(a1 + 64);
    v21 = *(a1 + 72);
    v23 = v21 - v22;
    if (v21 == v22)
    {
      goto LABEL_50;
    }

    v24 = v23 >> 4;
    v25 = *(a1 + 64);
    do
    {
      v26 = v24 >> 1;
      v27 = &v25[16 * (v24 >> 1)];
      v28 = *(v27 + 1) + 1;
      v29 = v27 + 16;
      v24 += ~(v24 >> 1);
      if (v28 < v9)
      {
        v25 = v29;
      }

      else
      {
        v24 = v26;
      }
    }

    while (v24);
    if (v21 == v25)
    {
LABEL_50:
      v35 = *(a1 + 80);
      if (v21 < v35)
      {
        if (v21)
        {
          *v21 = v9;
          *(v21 + 1) = v9;
          *(a1 + 72) = v21 + 16;
          goto LABEL_98;
        }

        goto LABEL_126;
      }

      v39 = (v23 >> 4) + 1;
      if (v39 >> 60)
      {
        goto LABEL_127;
      }

      v40 = v35 - v22;
      if (v40 >> 3 > v39)
      {
        v39 = v40 >> 3;
      }

      if (v40 >= 0x7FFFFFFFFFFFFFF0)
      {
        v39 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (!v39)
      {
        goto LABEL_126;
      }

      if (!(v39 >> 60))
      {
        operator new();
      }
    }

    else
    {
      v30 = *(v25 + 1);
      if (*v25 <= v9 && v30 >= v9)
      {
        if (*(a1 + 104) <= 0x13uLL)
        {
          v36 = *(a1 + 96);
          if (!v36)
          {
LABEL_60:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v37 = v36;
              v38 = *(v36 + 28);
              if (v38 <= v9)
              {
                break;
              }

              v36 = *v37;
              if (!*v37)
              {
                goto LABEL_60;
              }
            }

            if (v38 >= v9)
            {
              break;
            }

            v36 = v37[1];
            if (!v36)
            {
              goto LABEL_60;
            }
          }
        }

LABEL_61:
        result = 0;
        goto LABEL_99;
      }

      if (v30 + 1 == v9)
      {
        v32 = v25 + 16;
        if (v21 != v25 + 16 && v9 + 1 == *v32)
        {
          *(v25 + 1) = *(v25 + 3);
          v33 = v25 + 32;
          v34 = v21 - (v25 + 32);
          if (v21 != v32 + 16)
          {
            memmove(v32, v33, v21 - (v32 + 16));
          }

          v14 = &v32[v34];
          goto LABEL_18;
        }

LABEL_97:
        *(v25 + 1) = v9;
        goto LABEL_98;
      }

      if (*v25 == v9 + 1)
      {
        *v25 = v9;
        goto LABEL_98;
      }

      v41 = *(a1 + 80);
      if (v21 < v41)
      {
        if (v25 != v21)
        {
          v42 = v25 + 16;
          if (v21 < 0x10)
          {
            v43 = *(a1 + 72);
          }

          else
          {
            v43 = v21 + 16;
            *v21 = *(v21 - 1);
          }

          *(a1 + 72) = v43;
          if (v21 != v42)
          {
            memmove(v25 + 16, v25, v21 - v42);
          }

          *v25 = v9;
          goto LABEL_97;
        }

        if (v22)
        {
          *v21 = v9;
          *(v21 + 1) = v9;
          v14 = v21 + 16;
LABEL_18:
          *(a1 + 72) = v14;
LABEL_98:
          result = 1;
          goto LABEL_99;
        }

        goto LABEL_126;
      }

      v44 = (v23 >> 4) + 1;
      if (v44 >> 60)
      {
        goto LABEL_127;
      }

      v45 = v41 - v22;
      if (v45 >> 3 > v44)
      {
        v44 = v45 >> 3;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFF0)
      {
        v46 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        if (!(v46 >> 60))
        {
          operator new();
        }

        goto LABEL_128;
      }

      v47 = v25 - v22;
      v48 = (v25 - v22) >> 4;
      v49 = (16 * v48);
      if (v48)
      {
        goto LABEL_90;
      }

      if (v47 >= 1)
      {
        v49 = (v49 - (((v47 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
LABEL_90:
        if (v49)
        {
          *v49 = v9;
          v49[1] = v9;
          memcpy(v49 + 2, v25, *(a1 + 72) - v25);
          v50 = *(a1 + 64);
          v51 = v49 + *(a1 + 72) - v25 + 16;
          *(a1 + 72) = v25;
          v52 = v25 - v50;
          v53 = v49 - (v25 - v50);
          memcpy(v53, v50, v52);
          v54 = *(a1 + 64);
          *(a1 + 64) = v53;
          *(a1 + 72) = v51;
          *(a1 + 80) = 0;
          if (v54)
          {
            operator delete(v54);
          }

          goto LABEL_98;
        }

LABEL_126:
        __break(1u);
LABEL_127:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v66 = v47 >> 3;
      if (v25 == v22)
      {
        v66 = 1;
      }

      if (!(v66 >> 60))
      {
        operator new();
      }
    }

LABEL_128:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a1 + 104) <= 0x13uLL)
  {
    v15 = *(a1 + 96);
    if (!v15)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 28);
        if (v17 <= v9)
        {
          break;
        }

        v15 = *v16;
        if (!*v16)
        {
          goto LABEL_26;
        }
      }

      if (v17 >= v9)
      {
        break;
      }

      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_26;
      }
    }
  }

  v18 = *(a1 + 32);
  if (v18 == 3)
  {
    goto LABEL_61;
  }

  if (v18 == 2)
  {
    v19 = *(a1 + 24);
    if (*(v19 + 156) == 1)
    {
      (*(**(v19 + 136) + 24))(*(v19 + 136));
      *(v19 + 160) = 0;
      *(v19 + 156) = 0;
    }
  }

  result = 0;
  *(a1 + 32) = 3;
LABEL_99:
  if (*(a1 + 64) != *(a1 + 72))
  {
    v55 = *(a1 + 32);
    if (v55 != 3)
    {
      if (v55 == 2)
      {
        v56 = *(a1 + 24);
        if (*(v56 + 156) == 1)
        {
          v57 = result;
          (*(**(v56 + 136) + 24))(*(v56 + 136));
          result = v57;
          *(v56 + 160) = 0;
          *(v56 + 156) = 0;
        }
      }

      *(a1 + 32) = 3;
    }
  }

  if (a3)
  {
    v58 = *(a1 + 32);
    if (v58 != 3)
    {
      if (v58 == 2)
      {
        v59 = *(a1 + 24);
        if (*(v59 + 156) == 1)
        {
          v60 = result;
          (*(**(v59 + 136) + 24))(*(v59 + 136));
          result = v60;
          *(v59 + 160) = 0;
          *(v59 + 156) = 0;
        }
      }

      *(a1 + 32) = 3;
    }
  }

  if (*(a1 + 16))
  {
    v61 = *(a1 + 32);
    if (v61 != 2)
    {
      if (v61)
      {
        return result;
      }

      v62 = 1;
      goto LABEL_120;
    }
  }

  else
  {
    *(a1 + 16) = 1;
    v63 = *(a1 + 32);
    if (v63 == 3)
    {
      return result;
    }

    if (v63 != 2)
    {
      goto LABEL_119;
    }
  }

  v64 = *(a1 + 24);
  if (*(v64 + 156) == 1)
  {
    v65 = result;
    (*(**(v64 + 136) + 24))(*(v64 + 136));
    result = v65;
    *(v64 + 160) = 0;
    *(v64 + 156) = 0;
  }

LABEL_119:
  v62 = 3;
LABEL_120:
  *(a1 + 32) = v62;
  return result;
}

void **dcsctp::DataTracker::HandleForwardTsn(void **result, unsigned int a2)
{
  v2 = result;
  if (*(result + 52) == 1)
  {
    v3 = *(result + 12);
    v4 = a2 >= v3;
    v5 = a2 - v3;
    v6 = v5 != 0 && v4;
    if (v5 != 0x80000000)
    {
      v6 = v5 >= 0;
    }

    if (!v6)
    {
      v5 |= 0xFFFFFFFF00000000;
    }

    v7 = result[5] + v5;
  }

  else
  {
    v7 = a2;
  }

  result[5] = v7;
  *(result + 12) = a2;
  *(result + 52) = 1;
  v8 = result[7];
  if (v7 <= v8)
  {
    v19 = *(result + 8);
    if (v19 == 3)
    {
      return (v7 > v8);
    }

    if (v19 != 2)
    {
LABEL_44:
      v24 = 3;
      goto LABEL_45;
    }

LABEL_42:
    v25 = v2[3];
    if (*(v25 + 156) == 1)
    {
      (*(*v25[17] + 24))(v25[17]);
      *(v25 + 40) = 0;
      *(v25 + 156) = 0;
    }

    goto LABEL_44;
  }

  result[7] = v7;
  v10 = result[8];
  v9 = result[9];
  if (v9 == v10)
  {
    v12 = result[9];
    goto LABEL_25;
  }

  v11 = (v9 - v10) >> 4;
  v12 = result[8];
  do
  {
    v13 = v11 >> 1;
    v14 = &v12[16 * (v11 >> 1)];
    v15 = *(v14 + 1);
    v16 = v14 + 16;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v12 = v16;
    }

    else
    {
      v11 = v13;
    }
  }

  while (v11);
  if (v9 == v12)
  {
LABEL_25:
    v17 = 0;
    v18 = v12 == v10;
    if (v12 < v10)
    {
      goto LABEL_47;
    }

    goto LABEL_26;
  }

  v17 = *v12 <= v7;
  v18 = v12 == v10;
  if (v12 < v10)
  {
    goto LABEL_47;
  }

LABEL_26:
  if (!v18)
  {
    v20 = v9 - v12;
    if (v9 == v12)
    {
      v21 = result[8];
    }

    else
    {
      result = memmove(result[8], v12, v9 - v12);
      v21 = v2[8];
    }

    v9 = &v10[v20];
    v2[9] = &v10[v20];
    v10 = v21;
  }

  if (!v17)
  {
LABEL_34:
    if (v10 != v9 && *v10 == v2[7] + 1)
    {
      v2[7] = *(v10 + 1);
      v22 = v9 - (v10 + 16);
      if (v9 != v10 + 16)
      {
        memmove(v10, v10 + 16, v9 - (v10 + 16));
      }

      v2[9] = &v10[v22];
    }

    v23 = *(v2 + 8);
    if (v23 != 2)
    {
      if (!v23)
      {
        v24 = 1;
LABEL_45:
        *(v2 + 8) = v24;
      }

      return (v7 > v8);
    }

    goto LABEL_42;
  }

  if (v10 != v9)
  {
    *v10 = v7 + 1;
    goto LABEL_34;
  }

LABEL_47:
  __break(1u);
  return result;
}

void dcsctp::DataTracker::CreateSelectiveAck(dcsctp::DataTracker *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = &v18;
  v6 = *(this + 12);
  v18 = *(this + 11);
  v19 = v6;
  v7 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  v20 = v7;
  *(this + 11) = this + 96;
  if (v7)
  {
    v5 = v6 + 2;
  }

  *v5 = &v19;
  v8 = *(this + 14);
  dcsctp::DataTracker::CreateGapAckBlocks(this, &v16);
  v10 = v18;
  v9 = v19;
  v13 = v18;
  v14 = v19;
  v11 = v20;
  v15 = v20;
  if (v20)
  {
    v19[2] = &v14;
    v18 = &v19;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v13 = &v14;
    v10 = &v14;
  }

  *a3 = &unk_28829E470;
  *(a3 + 8) = v8;
  *(a3 + 12) = a2;
  *(a3 + 16) = v16;
  *(a3 + 32) = v17;
  *(a3 + 40) = v10;
  *(a3 + 48) = v9;
  v12 = a3 + 48;
  *(a3 + 56) = v11;
  if (v11)
  {
    v9[2] = v12;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v9 = 0;
  }

  else
  {
    *(a3 + 40) = v12;
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(&v13, v9);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v18, v19);
}

uint64_t dcsctp::DataTracker::CreateGapAckBlocks@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 72) != *(this + 64))
  {
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
  return this;
}

void dcsctp::DcSctpSocket::DcSctpSocket(uint64_t a1, std::string *a2, size_t a3, uint64_t a4, uint64_t *a5, __int128 *a6)
{
  v28[4] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882921D0;
  v6 = (a1 + 8);
  if (a3 < 0x7FFFFFFFFFFFFFF8)
  {
    if (a3 > 0x16)
    {
      operator new();
    }

    *(&v27.__r_.__value_.__s + 23) = a3;
    v11 = (&v27 + a3);
    if (&v27 > a2 || v11 <= a2)
    {
      if (a3)
      {
        memmove(&v27, a2, a3);
      }

      v11->__r_.__value_.__s.__data_[0] = 0;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = 22;
      }

      else
      {
        v12 = (v27.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (v12 - size < 2)
      {
        std::string::__grow_by_and_replace(&v27, v12, size - v12 + 2, size, size, 0, 2uLL, ": ");
        goto LABEL_25;
      }

      v14 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v27.__r_.__value_.__r.__words[0];
      }

      v15 = (v14 + size);
      if (v14 + size > ": " || v15 + 1 <= ": ")
      {
        *v15 = 8250;
        v16 = size + 2;
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          v27.__r_.__value_.__l.__size_ = size + 2;
        }

        else
        {
          *(&v27.__r_.__value_.__s + 23) = v16 & 0x7F;
        }

        v14->__r_.__value_.__s.__data_[v16] = 0;
LABEL_25:
        *v6 = v27;
        v17 = *a5;
        *a5 = 0;
        *(a1 + 32) = v17;
        *(a1 + 40) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 68) = 0u;
        *(a1 + 88) = 0u;
        *(a1 + 104) = 0u;
        *(a1 + 118) = 0;
        v18 = *a6;
        v19 = a6[1];
        v20 = a6[3];
        *(a1 + 160) = a6[2];
        *(a1 + 176) = v20;
        *(a1 + 128) = v18;
        *(a1 + 144) = v19;
        v21 = a6[4];
        v22 = a6[5];
        v23 = a6[7];
        *(a1 + 224) = a6[6];
        *(a1 + 240) = v23;
        *(a1 + 192) = v21;
        *(a1 + 208) = v22;
        v24 = a6[8];
        v25 = a6[9];
        v26 = a6[11];
        *(a1 + 288) = a6[10];
        *(a1 + 304) = v26;
        *(a1 + 256) = v24;
        *(a1 + 272) = v25;
        *(a1 + 320) = &unk_288290710;
        *(a1 + 328) = a4;
        *(a1 + 336) = 0;
        *(a1 + 352) = 0;
        *(a1 + 360) = 0;
        *(a1 + 344) = 0;
        v28[0] = &unk_288292318;
        v28[1] = a1;
        v28[3] = v28;
        *(a1 + 368) = &unk_288292318;
        *(a1 + 376) = a1;
        *(a1 + 408) = 0;
        *(a1 + 416) = 0;
        *(a1 + 392) = a1 + 368;
        *(a1 + 400) = a1 + 408;
        *(a1 + 424) = 0;
        operator new();
      }
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t dcsctp::DcSctpSocket::OnInitTimerExpiry(dcsctp::DcSctpSocket *this)
{
  if (*(*(this + 54) + 156) == 1)
  {
    dcsctp::DcSctpSocket::SendInit(this);
  }

  if (!*(this + 172))
  {
    return 0;
  }

  v3 = *(this + 55);
  if (*(v3 + 156) == 1)
  {
    (*(**(v3 + 136) + 24))(*(v3 + 136));
    *(v3 + 160) = 0;
    *(v3 + 156) = 0;
    v4 = *(this + 56);
    if (*(v4 + 156) != 1)
    {
LABEL_7:
      v5 = *(this + 87);
      *(this + 87) = 0;
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(this + 56);
    if (*(v4 + 156) != 1)
    {
      goto LABEL_7;
    }
  }

  (*(**(v4 + 136) + 24))(*(v4 + 136));
  *(v4 + 160) = 0;
  *(v4 + 156) = 0;
  v5 = *(this + 87);
  *(this + 87) = 0;
  if (v5)
  {
LABEL_8:
    (*(*v5 + 8))(v5);
  }

LABEL_9:
  dcsctp::CallbackDeferrer::OnAborted(this + 40, 1, "No INIT_ACK received", 0x14uLL);
  if (!*(this + 172))
  {
    return 0;
  }

  *(this + 172) = 0;
  return 0;
}

uint64_t dcsctp::DcSctpSocket::OnCookieTimerExpiry(dcsctp::DcSctpSocket *this)
{
  if (*(*(this + 55) + 156) == 1)
  {
    v2 = *(this + 87);
    v3.var0 = (*(**(this + 41) + 56))(*(this + 41));
    LODWORD(v15[0]) = *(v2 + 264);
    v4 = *(v2 + 28);
    WORD2(v15[0]) = *(v2 + 24);
    HIWORD(v15[0]) = v4;
    v15[1] = (*(v2 + 40) & 0xFFFFFFFFFFFFFFFCLL);
    __p = 0;
    v17 = 0;
    v18 = 0;
    dcsctp::TransmissionControlBlock::SendBufferedPackets(v2, v15, v3, v5, v6, v7, v8, v9);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    return 0;
  }

  if (!*(this + 172))
  {
    return 0;
  }

  v11 = *(this + 54);
  if (*(v11 + 156) == 1)
  {
    (*(**(v11 + 136) + 24))(*(v11 + 136));
    *(v11 + 160) = 0;
    *(v11 + 156) = 0;
    v12 = *(this + 55);
    if (*(v12 + 156))
    {
      (*(**(v12 + 136) + 24))(*(v12 + 136));
      *(v12 + 160) = 0;
      *(v12 + 156) = 0;
    }
  }

  v13 = *(this + 56);
  if (*(v13 + 156) == 1)
  {
    (*(**(v13 + 136) + 24))(*(v13 + 136));
    *(v13 + 160) = 0;
    *(v13 + 156) = 0;
  }

  v14 = *(this + 87);
  *(this + 87) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  dcsctp::CallbackDeferrer::OnAborted(this + 40, 1, "No COOKIE_ACK received", 0x16uLL);
  if (!*(this + 172))
  {
    return 0;
  }

  *(this + 172) = 0;
  return 0;
}

uint64_t dcsctp::DcSctpSocket::OnShutdownTimerExpiry(dcsctp::DcSctpSocket *this)
{
  if ((*(*(this + 56) + 156) & 1) == 0)
  {
    (*(**(this + 87) + 88))(v12);
    operator new();
  }

  (*(**(this + 87) + 88))(v12);
  v2 = *(*(this + 87) + 480);
  v10 = &unk_28829FAC8;
  v11 = v2;
  dcsctp::SctpPacket::Builder::Add(v12, &v10, v3, v4, v5, v6, v7, v8);
  dcsctp::PacketSender::Send(this + 57, v12, 1);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return (*(**(this + 87) + 56))(*(this + 87));
}

uint64_t dcsctp::DcSctpSocket::OnSentPacket(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v9 = (*(**(result + 328) + 56))(*(result + 328));
    v10 = v9 / 0x3E8uLL;
    if (v9 % 0x3E8uLL > 0x1F3)
    {
      ++v10;
    }

    if (-v9 % 0x3E8uLL <= 0x1F4)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if (v9 < 0)
    {
      v12 = v11 - -v9 / 0x3E8uLL;
    }

    else
    {
      v12 = v10;
    }

    if (a3)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    result = (*(*v6 + 16))(v6, v12, v13, a3);
  }

  if (!a4)
  {
    ++*(v5 + 40);
  }

  return result;
}

void dcsctp::DcSctpSocket::SendInit(dcsctp::DcSctpSocket *this)
{
  v1 = 0uLL;
  v2 = 0;
}

uint64_t dcsctp::DcSctpSocket::Connect(dcsctp::DcSctpSocket *this)
{
  *(this + 336) = 1;
  if (!*(this + 172))
  {
    *(this + 170) = (*(**(this + 41) + 64))(*(this + 41), 0, 0xFFFFFFFFLL);
    *(this + 171) = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL);
    dcsctp::DcSctpSocket::SendInit(this);
  }

  v2 = this + 320;

  return dcsctp::CallbackDeferrer::TriggerDeferred(v2);
}

void dcsctp::DcSctpSocket::CreateTransmissionControlBlock(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = *(a2 + 1);
  *(a1 + 121) = *(a2 + 3);
  *(a1 + 122) = *(a2 + 4);
  operator new();
}

uint64_t dcsctp::DcSctpSocket::RestoreFromState(uint64_t a1, _DWORD *a2)
{
  *(a1 + 336) = 1;
  if (*(a1 + 688))
  {
    dcsctp::CallbackDeferrer::OnError((a1 + 320), 8, "Only closed socket can be restored from state", 0x2DuLL);
  }

  else if (*a2 == 1)
  {
    *(a1 + 684) = a2[1];
    v3 = a2[9];
    v5[0] = a2[8];
    v5[1] = v3;
    dcsctp::RRSendQueue::RestoreFromState(a1 + 496, a2);
    dcsctp::DcSctpSocket::CreateTransmissionControlBlock(a1, v5);
  }

  return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
}

uint64_t dcsctp::DcSctpSocket::Shutdown(dcsctp::DcSctpSocket *this)
{
  *(this + 336) = 1;
  v2 = *(this + 172);
  if (*(this + 87))
  {
    if (v2 == 4)
    {
LABEL_21:
      v10 = *(this + 54);
      if (*(v10 + 156) == 1)
      {
        (*(**(v10 + 136) + 24))(*(v10 + 136));
        *(v10 + 160) = 0;
        *(v10 + 156) = 0;
      }

      v11 = *(this + 55);
      if (*(v11 + 156) == 1)
      {
        (*(**(v11 + 136) + 24))(*(v11 + 136));
        *(v11 + 160) = 0;
        *(v11 + 156) = 0;
      }

      dcsctp::DcSctpSocket::MaybeSendShutdownOrAck(this);
      v4 = this + 320;

      return dcsctp::CallbackDeferrer::TriggerDeferred(v4);
    }

    if (v2 != 5 && v2 != 7)
    {
      *(this + 172) = 4;
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    v4 = this + 320;

    return dcsctp::CallbackDeferrer::TriggerDeferred(v4);
  }

  v6 = *(this + 54);
  if (*(v6 + 156) == 1)
  {
    (*(**(v6 + 136) + 24))(*(v6 + 136));
    *(v6 + 160) = 0;
    *(v6 + 156) = 0;
    v7 = *(this + 55);
    if (*(v7 + 156) != 1)
    {
LABEL_14:
      v8 = *(this + 56);
      if (*(v8 + 156) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v7 = *(this + 55);
    if (*(v7 + 156) != 1)
    {
      goto LABEL_14;
    }
  }

  (*(**(v7 + 136) + 24))(*(v7 + 136));
  *(v7 + 160) = 0;
  *(v7 + 156) = 0;
  v8 = *(this + 56);
  if (*(v8 + 156) != 1)
  {
LABEL_15:
    v9 = *(this + 87);
    *(this + 87) = 0;
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  (*(**(v8 + 136) + 24))(*(v8 + 136));
  *(v8 + 160) = 0;
  *(v8 + 156) = 0;
  v9 = *(this + 87);
  *(this + 87) = 0;
  if (v9)
  {
LABEL_16:
    (*(*v9 + 8))(v9);
  }

LABEL_17:
  dcsctp::CallbackDeferrer::OnClosed(this + 40);
  if (!*(this + 172))
  {
    goto LABEL_8;
  }

  *(this + 172) = 0;
  v4 = this + 320;

  return dcsctp::CallbackDeferrer::TriggerDeferred(v4);
}

void *dcsctp::DcSctpSocket::MaybeSendShutdownOrAck(dcsctp::DcSctpSocket *this)
{
  result = *(this + 87);
  if (!result[152])
  {
    v3 = *(this + 172);
    if (v3 == 6)
    {
      result = dcsctp::DcSctpSocket::SendShutdownAck(this);
      if (*(this + 172) != 7)
      {
        *(this + 172) = 7;
      }
    }

    else if (v3 == 4)
    {
      (*(*result + 88))(v16);
      v4 = *(*(this + 87) + 480);
      v14 = &unk_28829FAC8;
      v15 = v4;
      dcsctp::SctpPacket::Builder::Add(v16, &v14, v5, v6, v7, v8, v9, v10);
      dcsctp::PacketSender::Send(this + 57, v16, 1);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      v11 = *(this + 56);
      v12 = (*(**(this + 87) + 56))(*(this + 87));
      v13 = 86400000000;
      if (v12 < 86400000000)
      {
        v13 = v12;
      }

      *(v11 + 144) = v13;
      result = dcsctp::Timer::Start(*(this + 56));
      if (*(this + 172) != 5)
      {
        *(this + 172) = 5;
      }
    }
  }

  return result;
}

void *dcsctp::DcSctpSocket::Close(dcsctp::DcSctpSocket *this)
{
  *(this + 336) = 1;
  if (!*(this + 172))
  {
    return dcsctp::CallbackDeferrer::TriggerDeferred(this + 320);
  }

  v2 = *(this + 87);
  if (!v2)
  {
LABEL_14:
    v18 = *(this + 54);
    if (*(v18 + 156) == 1)
    {
      (*(**(v18 + 136) + 24))(*(v18 + 136));
      *(v18 + 160) = 0;
      *(v18 + 156) = 0;
      v19 = *(this + 55);
      if (*(v19 + 156) != 1)
      {
LABEL_16:
        v20 = *(this + 56);
        if (*(v20 + 156) != 1)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v19 = *(this + 55);
      if (*(v19 + 156) != 1)
      {
        goto LABEL_16;
      }
    }

    (*(**(v19 + 136) + 24))(*(v19 + 136));
    *(v19 + 160) = 0;
    *(v19 + 156) = 0;
    v20 = *(this + 56);
    if (*(v20 + 156) != 1)
    {
LABEL_17:
      v21 = *(this + 87);
      *(this + 87) = 0;
      if (!v21)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_24:
    (*(**(v20 + 136) + 24))(*(v20 + 136));
    *(v20 + 160) = 0;
    *(v20 + 156) = 0;
    v21 = *(this + 87);
    *(this + 87) = 0;
    if (!v21)
    {
LABEL_19:
      dcsctp::CallbackDeferrer::OnClosed(this + 40);
      if (*(this + 172))
      {
        *(this + 172) = 0;
      }

      return dcsctp::CallbackDeferrer::TriggerDeferred(this + 320);
    }

LABEL_18:
    (*(*v21 + 8))(v21);
    goto LABEL_19;
  }

  result = (*(*v2 + 88))(v31);
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v22 = &unk_2882A1920;
  v24 = 12;
  if (v23 > "Close called" || &v23[1] + 4 <= "Close called")
  {
    strcpy(v23, "Close called");
    off_2882A1930(&v22, v25, v4, v5, v6, v7, v8, v9);
    v10 = v26;
    v11 = *v25;
    v25[1] = 0;
    v26 = 0;
    v25[0] = 0;
    v27 = &unk_28828CAC0;
    v28 = 1;
    *__p = v11;
    v30 = v10;
    dcsctp::SctpPacket::Builder::Add(v31, &v27, v12, v13, v14, v15, v16, v17);
    v27 = &unk_28828CAC0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v22 = &unk_2882A1920;
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    dcsctp::PacketSender::Send(this + 57, v31, 1);
    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (!*(this + 172))
    {
      return dcsctp::CallbackDeferrer::TriggerDeferred(this + 320);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double dcsctp::DcSctpSocket::SetStreamPriority(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = *(dcsctp::RRSendQueue::GetOrCreateStreamInfo(a1 + 496, a2) + 16);
  *(v4 + 18) = a3;
  v5 = a3;
  if (v5 < 0.000001)
  {
    v5 = 0.000001;
  }

  result = 1.0 / v5;
  *(v4 + 24) = result;
  return result;
}

uint64_t dcsctp::DcSctpSocket::GetStreamPriority(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 664);
  if (!v2)
  {
    return *(a1 + 528);
  }

  v3 = a1 + 664;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != a1 + 664 && *(v3 + 32) <= a2)
  {
    return *(*(v3 + 56) + 18);
  }

  else
  {
    return *(a1 + 528);
  }
}

uint64_t dcsctp::DcSctpSocket::Send(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 336) = 1;
  v6 = dcsctp::DcSctpSocket::InternalSend(a1, a2, *(a3 + 32));
  if (!v6)
  {
    v8 = (*(**(a1 + 328) + 56))(*(a1 + 328));
    ++*(a1 + 48);
    v17 = *a2;
    *__p = *(a2 + 8);
    v19 = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    dcsctp::RRSendQueue::Add(a1 + 496, v8, &v17, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v14 = *(a1 + 696);
    if (v14)
    {
      LODWORD(v20[0]) = *(v14 + 264);
      v15 = *(v14 + 28);
      WORD2(v20[0]) = *(v14 + 24);
      HIWORD(v20[0]) = v15;
      v20[1] = (*(v14 + 40) & 0xFFFFFFFFFFFFFFFCLL);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v16.var0 = v8;
      dcsctp::TransmissionControlBlock::SendBufferedPackets(v14, v20, v16, v9, v10, v11, v12, v13);
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }
    }
  }

  dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
  return v6;
}

uint64_t dcsctp::DcSctpSocket::InternalSend(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a2 + 2) - *(a2 + 1);
  if (v4)
  {
    if (v4 > *(a1 + 152))
    {
      if (a3)
      {
        (*(**(a1 + 328) + 200))(*(a1 + 328), a3);
      }

      dcsctp::CallbackDeferrer::OnError((a1 + 320), 6, "Unable to send too large message", 0x20uLL);
      return 2;
    }

    if ((*(a1 + 688) & 0xFFFFFFFC) == 4)
    {
      if (a3)
      {
        (*(**(a1 + 328) + 200))(*(a1 + 328), a3);
      }

      dcsctp::CallbackDeferrer::OnError((a1 + 320), 4, "Unable to send message as the socket is shutting down", 0x35uLL);
      return 4;
    }

    if (*(a1 + 640) < *(a1 + 184))
    {
      v6 = *(a1 + 664);
      if (!v6)
      {
        goto LABEL_30;
      }

      v7 = *a2;
      v8 = a1 + 664;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != a1 + 664 && *(v8 + 32) <= v7)
      {
        if (*(v8 + 160) < *(a1 + 192))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        if (*(a1 + 192))
        {
          return 0;
        }
      }
    }

    if (a3)
    {
      (*(**(a1 + 328) + 200))(*(a1 + 328), a3);
    }

    dcsctp::CallbackDeferrer::OnError((a1 + 320), 7, "Unable to send message as the send queue is full", 0x30uLL);
    return 3;
  }

  else
  {
    if (a3)
    {
      (*(**(a1 + 328) + 200))(*(a1 + 328), a3);
    }

    dcsctp::CallbackDeferrer::OnError((a1 + 320), 6, "Unable to send empty message", 0x1CuLL);
    return 1;
  }
}

uint64_t dcsctp::DcSctpSocket::SendMany@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 336) = 1;
  v15 = (*(**(a1 + 328) + 56))(*(a1 + 328));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = *(a1 + 696);
  if (v11)
  {
    LODWORD(v16[0]) = *(v11 + 264);
    v12 = *(v11 + 28);
    WORD2(v16[0]) = *(v11 + 24);
    HIWORD(v16[0]) = v12;
    v16[1] = (*(v11 + 40) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v13.var0 = v15;
    dcsctp::TransmissionControlBlock::SendBufferedPackets(v11, v16, v13, v6, v7, v8, v9, v10);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
}

uint64_t dcsctp::DcSctpSocket::ResetStreams(dcsctp::DcSctpSocket *this, unsigned __int16 *a2, uint64_t a3)
{
  *(this + 336) = 1;
  v4 = *(this + 87);
  if (v4)
  {
    if (*(v4 + 226))
    {
      if (a3)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      if (a3)
      {
        v6 = 2 * a3;
        do
        {
          v7 = *v5++;
          (*(**(*(v4 + 1336) + 384) + 32))(*(*(v4 + 1336) + 384), v7);
          v6 -= 2;
        }

        while (v6);
      }

      dcsctp::DcSctpSocket::MaybeSendResetStreamsRequest(this);
      v4 = 1;
    }

    else
    {
      dcsctp::CallbackDeferrer::OnError(this + 40, 8, "Can't reset streams as the peer doesn't support it", 0x32uLL);
      v4 = 2;
    }
  }

  else
  {
    dcsctp::CallbackDeferrer::OnError(this + 40, 4, "Can't reset streams as the socket is not connected", 0x32uLL);
  }

  dcsctp::CallbackDeferrer::TriggerDeferred(this + 320);
  return v4;
}

void dcsctp::DcSctpSocket::MaybeSendResetStreamsRequest(dcsctp::DcSctpSocket *this)
{
  StreamResetRequest = dcsctp::StreamResetHandler::MakeStreamResetRequest((*(this + 87) + 1296), &v12);
  if (v15 == 1)
  {
    (*(**(this + 87) + 88))(v9, StreamResetRequest);
    if (v15)
    {
      dcsctp::SctpPacket::Builder::Add(v9, &v12, v3, v4, v5, v6, v7, v8);
      dcsctp::PacketSender::Send(this + 57, v9, 1);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        v12 = &unk_28829A3E0;
        if (v13)
        {
          v14 = v13;
          operator delete(v13);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t dcsctp::DcSctpSocket::state(dcsctp::DcSctpSocket *this)
{
  v1 = *(this + 172) - 1;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_273B91D60[v1];
  }
}

uint64_t dcsctp::DcSctpSocket::buffered_amount(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 664);
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 664;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != a1 + 664 && *(v3 + 32) <= a2)
  {
    return *(v3 + 160);
  }

  else
  {
    return 0;
  }
}

uint64_t dcsctp::DcSctpSocket::buffered_amount_low_threshold(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 664);
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 664;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != a1 + 664 && *(v3 + 32) <= a2)
  {
    return *(v3 + 168);
  }

  else
  {
    return 0;
  }
}

void *dcsctp::DcSctpSocket::SetBufferedAmountLowThreshold(uint64_t a1, unsigned __int16 a2, unint64_t a3)
{
  result = dcsctp::RRSendQueue::GetOrCreateStreamInfo(a1 + 496, a2);
  v5 = result;
  v6 = result[15];
  if (result[16] >= v6 || v6 > a3)
  {
    goto LABEL_7;
  }

  v8 = result[14];
  if (v8)
  {
    result = (*(*v8 + 48))(v8);
LABEL_7:
    v5[16] = a3;
    return result;
  }

  v9 = std::__throw_bad_function_call[abi:sn200100]();
  return dcsctp::DcSctpSocket::GetMetrics(v9, v10);
}

uint64_t dcsctp::DcSctpSocket::GetMetrics@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 696);
  if (v2)
  {
    v3 = *(this + 84);
    v4 = *(this + 124);
    v5 = *(v2 + 1032);
    v6 = *(v2 + 368);
    v7 = v6 / 0x3E8uLL;
    if (v6 % 0x3E8uLL > 0x1F3)
    {
      LODWORD(v7) = v7 + 1;
    }

    if (-v6 % 0x3E8uLL <= 0x1F4)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v6 < 0)
    {
      v9 = v8 - -v6 / 0x3E8uLL;
    }

    else
    {
      v9 = v7;
    }

    v10 = *(this + 144);
    v11 = v10 - 28;
    v12 = *(v2 + 1216);
    v13 = v10 + *(this + 640) - 29;
    v14 = *(v2 + 1064);
    v15 = *(v2 + 1040);
    v16 = *(v2 + 228);
    *a2 = *(this + 40);
    *(a2 + 16) = v14;
    *(a2 + 32) = v5;
    *(a2 + 40) = v9;
    *(a2 + 44) = v3;
    *(a2 + 48) = v13 / v11 + v12;
    *(a2 + 56) = *(this + 96);
    v17 = *(this + 116);
    *(a2 + 80) = *(this + 120);
    *(a2 + 72) = v15;
    *(a2 + 76) = v17;
    *(a2 + 82) = v16;
    *(a2 + 84) = v4;
    *(a2 + 88) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 88) = 0;
  }

  return this;
}

uint64_t dcsctp::DcSctpSocket::HandleTimeout(uint64_t a1, uint64_t a2)
{
  *(a1 + 336) = 1;
  v3 = *(a1 + 408);
  if (v3)
  {
    v4 = a1 + 408;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= HIDWORD(a2);
      v7 = v5 < HIDWORD(a2);
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != a1 + 408 && *(v4 + 32) <= HIDWORD(a2))
    {
      dcsctp::Timer::Trigger(*(v4 + 40), a2);
    }
  }

  v8 = *(a1 + 696);
  if (v8 && (*(*v8 + 80))(v8))
  {
    (*(**(a1 + 696) + 88))(&v10);
    operator new();
  }

  return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
}

uint64_t dcsctp::DcSctpSocket::ReceivePacket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 336) = 1;
  ++*(a1 + 96);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (*(**(a1 + 328) + 56))(*(a1 + 328));
    v8 = v7 / 0x3E8uLL;
    if (v7 % 0x3E8uLL > 0x1F3)
    {
      ++v8;
    }

    if (-v7 % 0x3E8uLL <= 0x1F4)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    if (v7 < 0)
    {
      v10 = v9 - -v7 / 0x3E8uLL;
    }

    else
    {
      v10 = v8;
    }

    if (a3)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }

    (*(*v6 + 24))(v6, v10, v11, a3);
  }

  dcsctp::SctpPacket::Parse(a3, v46);
  if ((v52 & 1) == 0)
  {
    dcsctp::CallbackDeferrer::OnError((a1 + 320), 3, "Failed to parse received SCTP packet", 0x24uLL);
    if (v52 != 1)
    {
      return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
    }

    goto LABEL_84;
  }

  result = *(a1 + 696);
  if (result)
  {
    v18 = *(result + 256);
    v19 = v47;
    v20 = __p;
    v21 = v51;
    v23 = v51 - __p;
    v22 = v51 == __p;
    if (v47)
    {
      goto LABEL_17;
    }

LABEL_28:
    if (v23 == 24 && *v20 == 1)
    {
      goto LABEL_56;
    }

    dcsctp::CallbackDeferrer::OnError((a1 + 320), 3, "Only a single INIT chunk can be present in packets sent on verification_tag = 0", 0x4FuLL);
    if (v52 != 1)
    {
      return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
    }

    goto LABEL_84;
  }

  v18 = 0;
  v19 = v47;
  v20 = __p;
  v21 = v51;
  v23 = v51 - __p;
  v22 = v51 == __p;
  if (!v47)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20;
  }

  v25 = *v24;
  if (v23 == 24 && v25 == 6)
  {
    if (v24[1])
    {
      if (!result || v19 == *(result + 264))
      {
        goto LABEL_56;
      }
    }

    else if (v19 == v18)
    {
      goto LABEL_56;
    }

    dcsctp::CallbackDeferrer::OnError((a1 + 320), 3, "ABORT chunk verification tag was wrong", 0x26uLL);
    if (v52 != 1)
    {
      return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
    }

LABEL_84:
    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
  }

  if (v25 != 10)
  {
    if (v25 == 2)
    {
      v18 = *(a1 + 684);
    }

    else if (v23 == 24 && v25 == 14)
    {
      if (v24[1])
      {
        if (!result || v19 == *(result + 264))
        {
          goto LABEL_56;
        }
      }

      else if (v19 == v18)
      {
        goto LABEL_56;
      }

      dcsctp::CallbackDeferrer::OnError((a1 + 320), 3, "SHUTDOWN_COMPLETE chunk verification tag was wrong", 0x32uLL);
      if (v52 == 1)
      {
        goto LABEL_84;
      }

      return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
    }

    if (v19 != v18)
    {
      webrtc::StringFormat("Packet has invalid verification tag: %08x, expected %08x", v55, v19, v18);
      if (SHIBYTE(v56) >= 0)
      {
        v26 = v55;
      }

      else
      {
        v26 = v55[0];
      }

      if (SHIBYTE(v56) >= 0)
      {
        v27 = HIBYTE(v56);
      }

      else
      {
        v27 = v55[1];
      }

      dcsctp::CallbackDeferrer::OnError((a1 + 320), 3, v26, v27);
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      operator delete(v55[0]);
      if (v52 != 1)
      {
        return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
      }

      goto LABEL_84;
    }
  }

LABEL_56:
  if (*(a1 + 688) == 5)
  {
    v28 = v21 == v20;
    v29 = v21 == v20 ? 0 : v20;
    v30 = &v29[v23];
    if (v28)
    {
      v20 = 0;
    }

    else
    {
      while (*v20)
      {
        v20 += 24;
        if (v20 == v30)
        {
          goto LABEL_71;
        }
      }
    }

    if (v20 != v30)
    {
      (*(*result + 88))(v55);
      v31 = *(*(a1 + 696) + 480);
      v53 = &unk_28829FAC8;
      v54 = v31;
      dcsctp::SctpPacket::Builder::Add(v55, &v53, v32, v33, v34, v35, v36, v37);
      dcsctp::PacketSender::Send((a1 + 456), v55, 1);
      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      v38 = *(a1 + 448);
      v39 = (*(**(a1 + 696) + 56))(*(a1 + 696));
      v40 = 86400000000;
      if (v39 < 86400000000)
      {
        v40 = v39;
      }

      *(v38 + 144) = v40;
      result = dcsctp::Timer::Start(*(a1 + 448));
      if ((v52 & 1) == 0)
      {
        goto LABEL_91;
      }
    }
  }

LABEL_71:
  v41 = __p;
  if (v51 == __p)
  {
    v42 = 0;
  }

  else
  {
    v42 = __p;
  }

  if (v51 == __p)
  {
LABEL_79:
    v44 = *(a1 + 696);
    if (v44)
    {
      if (*(v44 + 456) == 1)
      {
        v45 = *(a1 + 696);
        dcsctp::Timer::Start(*(v44 + 448));
        *(v45 + 456) = 2;
        v44 = *(a1 + 696);
      }

      dcsctp::TransmissionControlBlock::MaybeSendSack(v44);
    }

LABEL_83:
    if (v52 == 1)
    {
      goto LABEL_84;
    }

    return dcsctp::CallbackDeferrer::TriggerDeferred(a1 + 320);
  }

  v43 = &v42[v51 - __p];
  while ((v52 & 1) != 0)
  {
    result = dcsctp::DcSctpSocket::Dispatch(a1, v46, v41, v12, v13, v14, v15, v16);
    if (result)
    {
      v41 += 24;
      if (v41 != v43)
      {
        continue;
      }
    }

    goto LABEL_79;
  }

LABEL_91:
  __break(1u);
  return result;
}

BOOL dcsctp::DcSctpSocket::Dispatch(dcsctp::DcSctpSocket *this, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  switch(*a3)
  {
    case 0u:
      dcsctp::DataChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v249 & 1) == 0)
      {
        operator new();
      }

      goto LABEL_51;
    case 1u:
      dcsctp::InitChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v247 & 1) == 0)
      {
        operator new();
      }

      if (v243 && WORD4(v243) && WORD5(v243))
      {
        v30 = *(this + 172);
        if ((v30 - 1) < 2)
        {
          v178 = 0;
          v179 = *(this + 171);
          v180 = *(this + 170);
        }

        else if (v30)
        {
          if (v30 == 7)
          {
            dcsctp::DcSctpSocket::SendShutdownAck(this);
            goto LABEL_334;
          }

          v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL);
          v192 = *(this + 87);
          if (v191 == *(v192 + 256) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)) && (v191 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL), v192 = *(this + 87), v191 == *(v192 + 256)))
          {
            v179 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL);
            v192 = *(this + 87);
          }

          else
          {
            v179 = v191;
          }

          v180 = *(v192 + 1192) + *(v192 + 1112) + 1000001;
          v178 = *(v192 + 272);
        }

        else
        {
          v179 = (*(**(this + 41) + 64))(*(this + 41), 1, 0xFFFFFFFFLL);
          v180 = (*(**(this + 41) + 64))(*(this + 41), 0, 0xFFFFFFFFLL);
          v178 = 0;
        }

        if (v247)
        {
          if (v247)
          {
            v194 = *(this + 33);
            WORD2(__p) = *(this + 32);
            LODWORD(__p) = v243;
            HIWORD(__p) = v194;
            v240[0] = (*(this + 18) & 0xFFFFFFFFFFFFFFFCLL);
            v240[1] = 0;
            v240[2] = 0;
            v241 = 0;
            v231[0] = 0;
            v231[1] = 0;
            v232 = 0;
            v235.__r_.__value_.__r.__words[0] = __PAIR64__(v179, v243);
            v235.__r_.__value_.__l.__size_ = __PAIR64__(v180, HIDWORD(v243));
            LODWORD(v235.__r_.__value_.__r.__words[2]) = DWORD1(v243);
            v236 = v178;
            v237 = v193;
            dcsctp::StateCookie::Serialize(&v235, &v227);
            v233 = &unk_28829FFE8;
            memset(v234, 0, 24);
            if (v228 == v227)
            {
              unk_28829FFF8(&v233, v231);
              memset(v229, 0, 24);
              if (v231[1] == v231[0])
              {
                v233 = &unk_28829FFE8;
                if (v234[0])
                {
                  v234[1] = v234[0];
                  operator delete(v234[0]);
                }

                if (v227)
                {
                  v228 = v227;
                  operator delete(v227);
                }

                if (v231[0])
                {
                  v231[1] = v231[0];
                  operator delete(v231[0]);
                }
              }

              if (((v231[1] - v231[0]) & 0x8000000000000000) == 0)
              {
                operator new();
              }
            }

            else if (((v228 - v227) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_401;
          }
        }

LABEL_400:
        __break(1u);
        goto LABEL_401;
      }

      LODWORD(v235.__r_.__value_.__l.__data_) = 0;
      v113 = *(this + 33);
      WORD2(v235.__r_.__value_.__r.__words[0]) = *(this + 32);
      HIWORD(v235.__r_.__value_.__r.__words[0]) = v113;
      v235.__r_.__value_.__l.__size_ = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
      v235.__r_.__value_.__r.__words[2] = 0;
      v236 = 0;
      v237 = 0;
      memset(v229, 0, 24);
      v233 = &unk_288299ED8;
      HIBYTE(v234[2]) = 14;
      if (v234 <= "INIT malformed" && &v234[1] + 6 > "INIT malformed")
      {
        goto LABEL_400;
      }

      strcpy(v234, "INIT malformed");
      off_288299EE8(&v233, v229, v24, v25, v26, v27, v28, v29);
      v114 = *&v229[16];
      v115 = *v229;
      memset(v229, 0, 24);
      __p = &unk_28828CAC0;
      LOBYTE(v240[0]) = 0;
      *&v240[1] = v115;
      v241 = v114;
      v122 = dcsctp::SctpPacket::Builder::Add(&v235, &__p, v116, v117, v118, v119, v120, v121);
      dcsctp::PacketSender::Send(this + 57, v122, 1);
      __p = &unk_28828CAC0;
      if (v240[1])
      {
        v240[2] = v240[1];
        operator delete(v240[1]);
      }

      v233 = &unk_288299ED8;
      if (SHIBYTE(v234[2]) < 0)
      {
        operator delete(v234[0]);
      }

      if (*v229)
      {
        *&v229[8] = *v229;
        operator delete(*v229);
      }

      if (v235.__r_.__value_.__r.__words[2])
      {
        v236 = v235.__r_.__value_.__r.__words[2];
        operator delete(v235.__r_.__value_.__r.__words[2]);
      }

      if (!*(this + 172))
      {
        goto LABEL_334;
      }

      v123 = *(this + 54);
      if (*(v123 + 156) == 1)
      {
        (*(**(v123 + 136) + 24))(*(v123 + 136));
        *(v123 + 160) = 0;
        *(v123 + 156) = 0;
        v124 = *(this + 55);
        if (*(v124 + 156) != 1)
        {
          goto LABEL_162;
        }
      }

      else
      {
        v124 = *(this + 55);
        if (*(v124 + 156) != 1)
        {
LABEL_162:
          v125 = *(this + 56);
          if (*(v125 + 156) == 1)
          {
            goto LABEL_163;
          }

          goto LABEL_171;
        }
      }

      (*(**(v124 + 136) + 24))(*(v124 + 136));
      *(v124 + 160) = 0;
      *(v124 + 156) = 0;
      v125 = *(this + 56);
      if (*(v125 + 156) == 1)
      {
LABEL_163:
        (*(**(v125 + 136) + 24))(*(v125 + 136));
        *(v125 + 160) = 0;
        *(v125 + 156) = 0;
        v126 = *(this + 87);
        *(this + 87) = 0;
        if (!v126)
        {
LABEL_173:
          dcsctp::CallbackDeferrer::OnAborted(this + 40, 6, "Received invalid INIT", 0x15uLL);
          if (*(this + 172))
          {
            *(this + 172) = 0;
          }

LABEL_334:
          if (v247 == 1)
          {
            v242 = &unk_288294B78;
            size = v244;
            if (v244)
            {
              goto LABEL_373;
            }
          }

          return 1;
        }

LABEL_172:
        (*(*v126 + 8))(v126);
        goto LABEL_173;
      }

LABEL_171:
      v126 = *(this + 87);
      *(this + 87) = 0;
      if (!v126)
      {
        goto LABEL_173;
      }

      goto LABEL_172;
    case 2u:
      dcsctp::InitAckChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v247 & 1) == 0)
      {
        operator new();
      }

      if (*(this + 172) != 1)
      {
        goto LABEL_371;
      }

      dcsctp::Parameters::descriptors(&v244, v58, v59, v60, v61, &v233);
      if (v233 == v234[0])
      {
        goto LABEL_70;
      }

      v68 = v233;
      do
      {
        if (*v68 == 7)
        {
          v172 = v68[2];
          if (v172 < 4 || (v173 = v68[1], __rev16(*v173) != 7) || ((v174 = __rev16(v173[1]), v174 >= 4) ? (v175 = v172 >= v174) : (v175 = 0), v175 ? (v176 = v172 - v174 >= 4) : (v176 = 1), v176))
          {
            v69 = 0;
            LOBYTE(__p) = 0;
            LOBYTE(v241) = 0;
            if (!v233)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v235.__r_.__value_.__r.__words[0] = &unk_28829FFE8;
            v235.__r_.__value_.__l.__size_ = 0;
            if (v174 <= 4)
            {
              v207 = 0;
            }

            else
            {
              v207 = v174 - 4;
            }

            v235.__r_.__value_.__r.__words[2] = 0;
            v236 = 0;
            if (v207)
            {
              if ((v207 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              goto LABEL_401;
            }

            v69 = 0;
            __p = &unk_28829FFE8;
            memset(v240, 0, sizeof(v240));
            LOBYTE(v241) = 1;
            if (!v233)
            {
              goto LABEL_72;
            }
          }

LABEL_71:
          v234[0] = v233;
          operator delete(v233);
          goto LABEL_72;
        }

        v68 += 3;
      }

      while (v68 != v234[0]);
LABEL_70:
      v69 = 1;
      if (v233)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (!v69)
      {
        if ((v241 & 1) == 0)
        {
          goto LABEL_243;
        }

        if ((v247 & 1) == 0)
        {
          goto LABEL_400;
        }

        *v229 = v154;
        v155 = *(this + 54);
        if (*(v155 + 156) == 1)
        {
          (*(**(v155 + 136) + 24))(*(v155 + 136));
          *(v155 + 160) = 0;
          *(v155 + 156) = 0;
        }

        if ((v241 & 1) == 0)
        {
          goto LABEL_400;
        }

        v156 = v240[0];
        if (v240[1] == v240[0])
        {
          v156 = 0;
        }

        if ((v240[1] - v240[0]) < 9)
        {
          goto LABEL_242;
        }

        if (!v156)
        {
          goto LABEL_400;
        }

        if (*v156 == 0x3030505443536364)
        {
          v157 = 1;
        }

        else
        {
          if (*v156 != 0x4453422D454D414BLL)
          {
LABEL_242:
            v157 = 3;
            goto LABEL_366;
          }

          v157 = 2;
        }

LABEL_366:
        *(this + 29) = v157;
        dcsctp::RRSendQueue::Reset((this + 496));
        if (v247)
        {
          (*(*(this + 40) + 64))(this + 320, 0, 0xFFFFFFFFLL);
          (*(*(this + 40) + 64))(this + 320, 1, 0xFFFFFFFFLL);
          dcsctp::DcSctpSocket::CreateTransmissionControlBlock(this, v229);
        }

        goto LABEL_400;
      }

      LOBYTE(__p) = 0;
      LOBYTE(v241) = 0;
LABEL_243:
      LODWORD(v235.__r_.__value_.__l.__data_) = *(this + 171);
      v158 = *(this + 33);
      WORD2(v235.__r_.__value_.__r.__words[0]) = *(this + 32);
      HIWORD(v235.__r_.__value_.__r.__words[0]) = v158;
      v235.__r_.__value_.__l.__size_ = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
      v235.__r_.__value_.__r.__words[2] = 0;
      v236 = 0;
      v237 = 0;
      v231[0] = 0;
      v231[1] = 0;
      v232 = 0;
      *v229 = &unk_288299ED8;
      v230 = 18;
      if (&v229[8] <= "INIT-ACK malformed" && &v229[26] > "INIT-ACK malformed")
      {
        goto LABEL_400;
      }

      strcpy(&v229[8], "INIT-ACK malformed");
      off_288299EE8(v229, v231, v62, v63, v64, v65, v66, v67);
      v159 = v232;
      v160 = *v231;
      v231[1] = 0;
      v232 = 0;
      v231[0] = 0;
      v233 = &unk_28828CAC0;
      LOBYTE(v234[0]) = 0;
      *&v234[1] = v160;
      v234[3] = v159;
      v167 = dcsctp::SctpPacket::Builder::Add(&v235, &v233, v161, v162, v163, v164, v165, v166);
      dcsctp::PacketSender::Send(this + 57, v167, 1);
      v233 = &unk_28828CAC0;
      if (v234[1])
      {
        v234[2] = v234[1];
        operator delete(v234[1]);
      }

      *v229 = &unk_288299ED8;
      if (v230 < 0)
      {
        operator delete(*&v229[8]);
      }

      if (v231[0])
      {
        v231[1] = v231[0];
        operator delete(v231[0]);
      }

      if (v235.__r_.__value_.__r.__words[2])
      {
        v236 = v235.__r_.__value_.__r.__words[2];
        operator delete(v235.__r_.__value_.__r.__words[2]);
      }

      if (*(this + 172))
      {
        v168 = *(this + 54);
        if (*(v168 + 156) == 1)
        {
          (*(**(v168 + 136) + 24))(*(v168 + 136));
          *(v168 + 160) = 0;
          *(v168 + 156) = 0;
          v169 = *(this + 55);
          if (*(v169 + 156) != 1)
          {
            goto LABEL_256;
          }

LABEL_261:
          (*(**(v169 + 136) + 24))(*(v169 + 136));
          *(v169 + 160) = 0;
          *(v169 + 156) = 0;
          v170 = *(this + 56);
          if (*(v170 + 156) != 1)
          {
            goto LABEL_262;
          }

LABEL_257:
          (*(**(v170 + 136) + 24))(*(v170 + 136));
          *(v170 + 160) = 0;
          *(v170 + 156) = 0;
          v171 = *(this + 87);
          *(this + 87) = 0;
          if (!v171)
          {
            goto LABEL_264;
          }

LABEL_263:
          (*(*v171 + 8))(v171);
          goto LABEL_264;
        }

        v169 = *(this + 55);
        if (*(v169 + 156) == 1)
        {
          goto LABEL_261;
        }

LABEL_256:
        v170 = *(this + 56);
        if (*(v170 + 156) == 1)
        {
          goto LABEL_257;
        }

LABEL_262:
        v171 = *(this + 87);
        *(this + 87) = 0;
        if (v171)
        {
          goto LABEL_263;
        }

LABEL_264:
        dcsctp::CallbackDeferrer::OnAborted(this + 40, 6, "InitAck chunk doesn't contain a cookie", 0x26uLL);
        if (*(this + 172))
        {
          *(this + 172) = 0;
        }
      }

      if (v241 == 1)
      {
        __p = &unk_28829FFE8;
        if (v240[0])
        {
          v240[1] = v240[0];
          operator delete(v240[0]);
        }
      }

LABEL_371:
      if (v247 == 1)
      {
        v242 = &unk_288294B48;
        size = v244;
        if (v244)
        {
LABEL_373:
          v245 = size;
LABEL_374:
          operator delete(size);
        }
      }

      return 1;
    case 3u:
      dcsctp::SackChunk::Parse(*(a3 + 1), *(a3 + 2), a5, a6, a7, a8, &v242);
      if ((v248 & 1) == 0)
      {
        operator new();
      }

      if (*(this + 87))
      {
        v70 = (*(**(this + 41) + 56))(*(this + 41));
        if ((v248 & 1) == 0)
        {
          goto LABEL_400;
        }

        v71 = v70;
        dcsctp::ChunkValidators::Clean(&v242, &v235);
        v72.var0 = v71;
        if (dcsctp::RetransmissionQueue::HandleSack((*(this + 87) + 712), v72, &v235))
        {
          dcsctp::DcSctpSocket::MaybeSendShutdownOrAck(this);
          dcsctp::TransmissionControlBlock::MaybeSendFastRetransmit(*(this + 87));
          v73 = *(this + 87);
          LODWORD(__p) = *(v73 + 264);
          v74 = *(v73 + 28);
          WORD2(__p) = *(v73 + 24);
          HIWORD(__p) = v74;
          v240[0] = (*(v73 + 40) & 0xFFFFFFFFFFFFFFFCLL);
          v240[1] = 0;
          v240[2] = 0;
          v241 = 0;
          v75.var0 = v71;
          dcsctp::TransmissionControlBlock::SendBufferedPackets(v73, &__p, v75, v76, v77, v78, v79, v80);
          if (v240[1])
          {
            v240[2] = v240[1];
            operator delete(v240[1]);
          }
        }

        v235.__r_.__value_.__r.__words[0] = &unk_28829E470;
        std::__tree<sigslot::_signal_base_interface *>::destroy(v238, v238[1]);
        if (v235.__r_.__value_.__r.__words[2])
        {
          v236 = v235.__r_.__value_.__r.__words[2];
          operator delete(v235.__r_.__value_.__r.__words[2]);
        }
      }

      else
      {
        dcsctp::CallbackDeferrer::OnError(this + 40, 2, "Received unexpected commands on socket that is not connected", 0x3CuLL);
      }

      if (v248 != 1)
      {
        return 1;
      }

      v242 = &unk_28829E470;
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v246, v247);
      size = *(&v243 + 1);
      if (!*(&v243 + 1))
      {
        return 1;
      }

      goto LABEL_190;
    case 4u:
      dcsctp::HeartbeatRequestChunk::Parse(*(a3 + 1), *(a3 + 2), &v235);
      if ((v237 & 1) == 0)
      {
        operator new();
      }

      v81 = *(this + 87);
      if (v81)
      {
        v233 = &unk_2882942B8;
        *v234 = *&v235.__r_.__value_.__r.__words[1];
        v234[2] = v236;
        *&v235.__r_.__value_.__r.__words[1] = 0uLL;
        v236 = 0;
        v82 = *(v81 + 1456);
        (*(*v82 + 88))(&v242, v82);
        v83 = v234[2];
        v84 = *v234;
        memset(v234, 0, 24);
        *v240 = v84;
        __p = &unk_288294210;
        v240[2] = v83;
        v91 = dcsctp::SctpPacket::Builder::Add(&v242, &__p, v85, v86, v87, v88, v89, v90);
        (*(*v82 + 96))(v82, v91);
        __p = &unk_288294210;
        if (v240[0])
        {
          v240[1] = v240[0];
          operator delete(v240[0]);
        }

        if (*(&v243 + 1))
        {
          v244 = *(&v243 + 1);
          operator delete(*(&v243 + 1));
        }

        v233 = &unk_2882942B8;
      }

      else
      {
        dcsctp::CallbackDeferrer::OnError(this + 40, 2, "Received unexpected commands on socket that is not connected", 0x3CuLL);
      }

      if (v237 == 1)
      {
        v235.__r_.__value_.__r.__words[0] = &unk_2882942B8;
        size = v235.__r_.__value_.__l.__size_;
        if (v235.__r_.__value_.__l.__size_)
        {
          goto LABEL_194;
        }
      }

      return 1;
    case 5u:
      dcsctp::HeartbeatAckChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v245 & 1) == 0)
      {
        operator new();
      }

      v102 = *(this + 87);
      if (v102)
      {
        *&v235.__r_.__value_.__r.__words[1] = v243;
        v235.__r_.__value_.__r.__words[0] = &unk_288294210;
        v236 = v244;
        v243 = 0uLL;
        v244 = 0;
        dcsctp::HeartbeatHandler::HandleHeartbeatAck(v102 + 1440, &v235, v96, v97, v98, v99, v100, v101);
        v235.__r_.__value_.__r.__words[0] = &unk_288294210;
        if (v235.__r_.__value_.__l.__size_)
        {
          v235.__r_.__value_.__r.__words[2] = v235.__r_.__value_.__l.__size_;
          operator delete(v235.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        dcsctp::CallbackDeferrer::OnError(this + 40, 2, "Received unexpected commands on socket that is not connected", 0x3CuLL);
      }

      if (v245 == 1)
      {
        v242 = &unk_288294210;
        size = v243;
        if (v243)
        {
          goto LABEL_198;
        }
      }

      return 1;
    case 6u:
      dcsctp::AbortChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v246 & 1) == 0)
      {
        operator new();
      }

      v52 = &v235;
      dcsctp::ErrorCausesToString((&v243 + 8), v48, v49, v50, v51, &v235);
      if (!*(this + 87))
      {
        if ((*(&v235.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_137:
          if (v246 != 1)
          {
            return 1;
          }

          v242 = &unk_28828CAC0;
          size = *(&v243 + 1);
          if (!*(&v243 + 1))
          {
            return 1;
          }

LABEL_190:
          v244 = size;
          goto LABEL_374;
        }

LABEL_136:
        operator delete(v235.__r_.__value_.__l.__data_);
        goto LABEL_137;
      }

      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v235.__r_.__value_.__l.__size_;
        v52 = v235.__r_.__value_.__r.__words[0];
      }

      if (!*(this + 172))
      {
        goto LABEL_135;
      }

      v54 = *(this + 54);
      if (*(v54 + 156) == 1)
      {
        (*(**(v54 + 136) + 24))(*(v54 + 136));
        *(v54 + 160) = 0;
        *(v54 + 156) = 0;
        v55 = *(this + 55);
        if (*(v55 + 156) != 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v55 = *(this + 55);
        if (*(v55 + 156) != 1)
        {
LABEL_61:
          v56 = *(this + 56);
          if (*(v56 + 156) == 1)
          {
            goto LABEL_62;
          }

          goto LABEL_177;
        }
      }

      (*(**(v55 + 136) + 24))(*(v55 + 136));
      *(v55 + 160) = 0;
      *(v55 + 156) = 0;
      v56 = *(this + 56);
      if (*(v56 + 156) == 1)
      {
LABEL_62:
        (*(**(v56 + 136) + 24))(*(v56 + 136));
        *(v56 + 160) = 0;
        *(v56 + 156) = 0;
        v57 = *(this + 87);
        *(this + 87) = 0;
        if (!v57)
        {
LABEL_179:
          dcsctp::CallbackDeferrer::OnAborted(this + 40, 5, &v52->__r_.__value_.__l.__data_, v53);
          if (*(this + 172))
          {
            *(this + 172) = 0;
          }

LABEL_135:
          if ((SHIBYTE(v235.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

LABEL_178:
        (*(*v57 + 8))(v57);
        goto LABEL_179;
      }

LABEL_177:
      v57 = *(this + 87);
      *(this + 87) = 0;
      if (!v57)
      {
        goto LABEL_179;
      }

      goto LABEL_178;
    case 7u:
      v92 = *(a3 + 2);
      if (v92 < 8 || (v93 = *(a3 + 1), *v93 != 7) || ((v94 = __rev16(*(v93 + 2)), v92 == 8) ? (v95 = v94 == 8) : (v95 = 0), !v95))
      {
        operator new();
      }

      v141 = *(this + 172);
      if (v141 > 7)
      {
        goto LABEL_354;
      }

      result = 1;
      if (((1 << v141) & 0xC7) != 0)
      {
        return result;
      }

      if (v141 == 5)
      {
        dcsctp::DcSctpSocket::SendShutdownAck(this);
        if (*(this + 172) != 7)
        {
          *(this + 172) = 7;
        }
      }

      else
      {
LABEL_354:
        *(this + 172) = 6;
        dcsctp::DcSctpSocket::MaybeSendShutdownOrAck(this);
      }

      return 1;
    case 8u:
      v20 = *(a3 + 2);
      if (v20 < 4 || (v21 = *(a3 + 1), *v21 != 8) || ((v22 = __rev16(*(v21 + 2)), v20 == 4) ? (v23 = v22 == 4) : (v23 = 0), !v23))
      {
        operator new();
      }

      if ((*(this + 172) | 2) != 7)
      {
        LODWORD(v242) = *(a2 + 4);
        v190 = *(this + 33);
        WORD2(v242) = *(this + 32);
        HIWORD(v242) = v190;
        *&v243 = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
        *(&v243 + 1) = 0;
        v244 = 0;
        v245 = 0;
        v235.__r_.__value_.__r.__words[0] = &unk_28829FAF8;
        v235.__r_.__value_.__s.__data_[8] = 1;
        dcsctp::SctpPacket::Builder::Add(&v242, &v235, a3, a4, a5, a6, a7, a8);
        dcsctp::PacketSender::Send(this + 57, &v242, 1);
        size = *(&v243 + 1);
        if (*(&v243 + 1))
        {
          goto LABEL_190;
        }

        return 1;
      }

      (*(**(this + 87) + 88))(&v242);
      v235.__r_.__value_.__r.__words[0] = &unk_28829FAF8;
      v235.__r_.__value_.__s.__data_[8] = 0;
      dcsctp::SctpPacket::Builder::Add(&v242, &v235, v131, v132, v133, v134, v135, v136);
      dcsctp::PacketSender::Send(this + 57, &v242, 1);
      if (!*(this + 172))
      {
        goto LABEL_295;
      }

      v137 = *(this + 54);
      if (*(v137 + 156) == 1)
      {
        (*(**(v137 + 136) + 24))(*(v137 + 136));
        *(v137 + 160) = 0;
        *(v137 + 156) = 0;
        v138 = *(this + 55);
        if (*(v138 + 156) != 1)
        {
          goto LABEL_209;
        }
      }

      else
      {
        v138 = *(this + 55);
        if (*(v138 + 156) != 1)
        {
LABEL_209:
          v139 = *(this + 56);
          if (*(v139 + 156) == 1)
          {
            goto LABEL_210;
          }

          goto LABEL_291;
        }
      }

      (*(**(v138 + 136) + 24))(*(v138 + 136));
      *(v138 + 160) = 0;
      *(v138 + 156) = 0;
      v139 = *(this + 56);
      if (*(v139 + 156) == 1)
      {
LABEL_210:
        (*(**(v139 + 136) + 24))(*(v139 + 136));
        *(v139 + 160) = 0;
        *(v139 + 156) = 0;
        v140 = *(this + 87);
        *(this + 87) = 0;
        if (!v140)
        {
LABEL_293:
          dcsctp::CallbackDeferrer::OnClosed(this + 40);
          if (*(this + 172))
          {
            *(this + 172) = 0;
          }

LABEL_295:
          size = *(&v243 + 1);
          if (*(&v243 + 1))
          {
            goto LABEL_190;
          }

          return 1;
        }

LABEL_292:
        (*(*v140 + 8))(v140);
        goto LABEL_293;
      }

LABEL_291:
      v140 = *(this + 87);
      *(this + 87) = 0;
      if (!v140)
      {
        goto LABEL_293;
      }

      goto LABEL_292;
    case 9u:
      dcsctp::ErrorChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v245 & 1) == 0)
      {
        operator new();
      }

      dcsctp::ErrorCausesToString(&v243, v10, v11, v12, v13, &v235);
      if (*(this + 87))
      {
        std::operator+<char>();
        v14 = SHIBYTE(v240[1]) >= 0 ? &__p : __p;
        v15 = SHIBYTE(v240[1]) >= 0 ? HIBYTE(v240[1]) : v240[0];
        dcsctp::CallbackDeferrer::OnError(this + 40, 5, v14, v15);
        if (SHIBYTE(v240[1]) < 0)
        {
          operator delete(__p);
        }
      }

      if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v235.__r_.__value_.__l.__data_);
      }

      if (v245 != 1)
      {
        return 1;
      }

      v242 = &unk_2882935C8;
      size = v243;
      if (!v243)
      {
        return 1;
      }

LABEL_198:
      *(&v243 + 1) = size;
      goto LABEL_374;
    case 0xAu:
      v103 = *(a3 + 2);
      if (v103 < 4 || (v104 = *(a3 + 1), *v104 != 10) || ((v105 = __rev16(*(v104 + 2)), v105 >= 4) ? (v106 = v103 >= v105) : (v106 = 0), v106 ? (v107 = v103 - v105 > 3) : (v107 = 1), v107))
      {
        LOBYTE(__p) = 0;
        LOBYTE(v241) = 0;
        operator new();
      }

      v242 = &unk_2882916E0;
      *&v243 = 0;
      if (v105 <= 4)
      {
        v143 = 0;
      }

      else
      {
        v143 = v105 - 4;
      }

      *(&v243 + 1) = 0;
      v244 = 0;
      if (v143)
      {
        if ((v143 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_401:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      __p = &unk_2882916E0;
      memset(v240, 0, sizeof(v240));
      LOBYTE(v241) = 1;
      dcsctp::StateCookie::Deserialize(0, 0, &v242);
      if ((v246 & 1) == 0)
      {
        dcsctp::CallbackDeferrer::OnError(this + 40, 3, "Failed to parse state cookie", 0x1CuLL);
        goto LABEL_112;
      }

      v188 = *(this + 87);
      if (v188)
      {
        v189 = *(v188 + 264);
        if (*(v188 + 256) == *(a2 + 4))
        {
          if (v189 != v242)
          {
            *(this + 87) = 0;
            (*(*v188 + 8))(v188);
          }

          goto LABEL_380;
        }

        if (v189 != v242 && *(v188 + 272) == v244)
        {
          if (*(this + 172) == 7)
          {
            LODWORD(v235.__r_.__value_.__l.__data_) = v242;
            v198 = *(this + 33);
            WORD2(v235.__r_.__value_.__r.__words[0]) = *(this + 32);
            HIWORD(v235.__r_.__value_.__r.__words[0]) = v198;
            v235.__r_.__value_.__l.__size_ = *(this + 18) & 0xFFFFFFFFFFFFFFFCLL;
            v235.__r_.__value_.__r.__words[2] = 0;
            v236 = 0;
            v237 = 0;
            v233 = &unk_28829FA98;
            dcsctp::SctpPacket::Builder::Add(&v235, &v233, v182, v183, v184, v185, v186, v187);
            memset(v229, 0, 24);
            v231[0] = &unk_288291710;
            off_288291720(v231, v229);
            v199 = *&v229[16];
            v200 = *v229;
            memset(v229, 0, 24);
            v233 = &unk_2882935C8;
            *v234 = v200;
            v234[2] = v199;
            dcsctp::SctpPacket::Builder::Add(&v235, &v233, v201, v202, v203, v204, v205, v206);
            v233 = &unk_2882935C8;
            if (v234[0])
            {
              v234[1] = v234[0];
              operator delete(v234[0]);
            }

            if (*v229)
            {
              *&v229[8] = *v229;
              operator delete(*v229);
            }

            dcsctp::PacketSender::Send(this + 57, &v235, 1);
            dcsctp::CallbackDeferrer::OnError(this + 40, 4, "Received COOKIE-ECHO while shutting down", 0x28uLL);
            goto LABEL_398;
          }

          *(this + 87) = 0;
          (*(*v188 + 8))(v188);
          dcsctp::CallbackDeferrer::OnConnectionRestarted(this + 40);
LABEL_380:
          v208 = *(this + 54);
          if (*(v208 + 156) == 1)
          {
            (*(**(v208 + 136) + 24))(*(v208 + 136));
            *(v208 + 160) = 0;
            *(v208 + 156) = 0;
            v209 = *(this + 55);
            if (*(v209 + 156) != 1)
            {
              goto LABEL_382;
            }
          }

          else
          {
            v209 = *(this + 55);
            if (*(v209 + 156) != 1)
            {
LABEL_382:
              v210 = *(this + 87);
              if (*(this + 172) == 3)
              {
                goto LABEL_383;
              }

              goto LABEL_387;
            }
          }

          (*(**(v209 + 136) + 24))(*(v209 + 136));
          *(v209 + 160) = 0;
          *(v209 + 156) = 0;
          v210 = *(this + 87);
          if (*(this + 172) == 3)
          {
LABEL_383:
            if (!v210)
            {
LABEL_395:
              dcsctp::RRSendQueue::Reset((this + 496));
              if (v246)
              {
                (*(*(this + 40) + 64))(this + 320, 0, 0xFFFFFFFFLL);
                (*(*(this + 40) + 64))(this + 320, 1, 0xFFFFFFFFLL);
                dcsctp::DcSctpSocket::CreateTransmissionControlBlock(this, &v245);
              }

              goto LABEL_400;
            }

            goto LABEL_397;
          }

LABEL_387:
          if (v210 && *(v210 + 1536) == 1)
          {
            *(v210 + 1504) = &unk_2882916E0;
            v211 = *(v210 + 1512);
            if (v211)
            {
              *(v210 + 1520) = v211;
              v212 = v210;
              operator delete(v211);
              v213 = *(this + 172);
              *(v212 + 1536) = 0;
              if (v213 == 3)
              {
LABEL_394:
                dcsctp::CallbackDeferrer::OnConnected(this + 40);
                v210 = *(this + 87);
                if (!v210)
                {
                  goto LABEL_395;
                }

LABEL_397:
                (*(*v210 + 88))(&v235);
                v233 = &unk_2882916B0;
                dcsctp::SctpPacket::Builder::Add(&v235, &v233, v214, v215, v216, v217, v218, v219);
                v220 = *(this + 87);
                v221.var0 = (*(**(this + 41) + 56))(*(this + 41));
                dcsctp::TransmissionControlBlock::SendBufferedPackets(v220, &v235, v221, v222, v223, v224, v225, v226);
LABEL_398:
                v197 = v235.__r_.__value_.__r.__words[2];
                if (!v235.__r_.__value_.__r.__words[2])
                {
                  goto LABEL_112;
                }

                v236 = v235.__r_.__value_.__r.__words[2];
                goto LABEL_111;
              }
            }

            else
            {
              *(v210 + 1536) = 0;
            }
          }

          *(this + 172) = 3;
          goto LABEL_394;
        }

        if (v189 != v242 || v244)
        {
          goto LABEL_380;
        }
      }

      else
      {
        if (*(a2 + 4) == HIDWORD(v242))
        {
          goto LABEL_380;
        }

        webrtc::StringFormat("Received CookieEcho with invalid verification tag: %08x, expected %08x", &v235, *(a2 + 4), HIDWORD(v242));
        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v195 = &v235;
        }

        else
        {
          v195 = v235.__r_.__value_.__r.__words[0];
        }

        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v196 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v196 = v235.__r_.__value_.__l.__size_;
        }

        dcsctp::CallbackDeferrer::OnError(this + 40, 3, &v195->__r_.__value_.__l.__data_, v196);
        if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
        {
          v197 = v235.__r_.__value_.__r.__words[0];
LABEL_111:
          operator delete(v197);
        }
      }

LABEL_112:
      if (v241 == 1)
      {
        __p = &unk_2882916E0;
        size = v240[0];
        if (v240[0])
        {
          v240[1] = v240[0];
          goto LABEL_374;
        }
      }

      return 1;
    case 0xBu:
      v109 = *(a3 + 2);
      if (v109 < 4 || (v110 = *(a3 + 1), *v110 != 11) || ((v111 = __rev16(*(v110 + 2)), v109 == 4) ? (v112 = v111 == 4) : (v112 = 0), !v112))
      {
        operator new();
      }

      v235.__r_.__value_.__r.__words[0] = &unk_2882916B0;
      v235.__r_.__value_.__s.__data_[8] = 1;
      if (*(this + 172) != 2)
      {
        return 1;
      }

      v144 = *(this + 55);
      if (*(v144 + 156) == 1)
      {
        (*(**(v144 + 136) + 24))(*(v144 + 136));
        *(v144 + 160) = 0;
        *(v144 + 156) = 0;
        v145 = *(this + 87);
        if (*(v145 + 1536) != 1)
        {
          goto LABEL_226;
        }
      }

      else
      {
        v145 = *(this + 87);
        if (*(v145 + 1536) != 1)
        {
LABEL_226:
          if (*(this + 172) == 3)
          {
            goto LABEL_228;
          }

          goto LABEL_227;
        }
      }

      *(v145 + 1504) = &unk_2882916E0;
      v177 = *(v145 + 1512);
      if (v177)
      {
        *(v145 + 1520) = v177;
        operator delete(v177);
      }

      *(v145 + 1536) = 0;
      if (*(this + 172) == 3)
      {
LABEL_228:
        v146 = *(this + 87);
        v147.var0 = (*(**(this + 41) + 56))(*(this + 41));
        LODWORD(v242) = *(v146 + 264);
        v148 = *(v146 + 28);
        WORD2(v242) = *(v146 + 24);
        HIWORD(v242) = v148;
        *&v243 = *(v146 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        *(&v243 + 1) = 0;
        v244 = 0;
        v245 = 0;
        dcsctp::TransmissionControlBlock::SendBufferedPackets(v146, &v242, v147, v149, v150, v151, v152, v153);
        if (*(&v243 + 1))
        {
          v244 = *(&v243 + 1);
          operator delete(*(&v243 + 1));
        }

        dcsctp::CallbackDeferrer::OnConnected(this + 40);
        return 1;
      }

LABEL_227:
      *(this + 172) = 3;
      goto LABEL_228;
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x61u:
    case 0x62u:
    case 0x63u:
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x67u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Du:
    case 0x6Eu:
    case 0x6Fu:
    case 0x70u:
    case 0x71u:
    case 0x72u:
    case 0x73u:
    case 0x74u:
    case 0x75u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x79u:
    case 0x7Au:
    case 0x7Bu:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x80u:
    case 0x81u:
      goto LABEL_9;
    case 0xEu:
      v16 = *(a3 + 2);
      if (v16 < 4 || (v17 = *(a3 + 1), *v17 != 14) || ((v18 = __rev16(*(v17 + 2)), v16 == 4) ? (v19 = v18 == 4) : (v19 = 0), !v19))
      {
        operator new();
      }

      if (*(this + 172) != 7)
      {
        return 1;
      }

      v127 = *(this + 54);
      if (*(v127 + 156) == 1)
      {
        (*(**(v127 + 136) + 24))(*(v127 + 136));
        *(v127 + 160) = 0;
        *(v127 + 156) = 0;
        v128 = *(this + 55);
        if (*(v128 + 156) != 1)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v128 = *(this + 55);
        if (*(v128 + 156) != 1)
        {
LABEL_202:
          v129 = *(this + 56);
          if (*(v129 + 156) == 1)
          {
            goto LABEL_203;
          }

          goto LABEL_280;
        }
      }

      (*(**(v128 + 136) + 24))(*(v128 + 136));
      *(v128 + 160) = 0;
      *(v128 + 156) = 0;
      v129 = *(this + 56);
      if (*(v129 + 156) == 1)
      {
LABEL_203:
        (*(**(v129 + 136) + 24))(*(v129 + 136));
        *(v129 + 160) = 0;
        *(v129 + 156) = 0;
        v130 = *(this + 87);
        *(this + 87) = 0;
        if (!v130)
        {
          goto LABEL_282;
        }

        goto LABEL_281;
      }

LABEL_280:
      v130 = *(this + 87);
      *(this + 87) = 0;
      if (!v130)
      {
        goto LABEL_282;
      }

LABEL_281:
      (*(*v130 + 8))(v130);
LABEL_282:
      dcsctp::CallbackDeferrer::OnClosed(this + 40);
      if (*(this + 172))
      {
        *(this + 172) = 0;
      }

      return 1;
    case 0x40u:
      dcsctp::IDataChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
      if ((v249 & 1) == 0)
      {
        operator new();
      }

LABEL_51:
      if (*(this + 87))
      {
        dcsctp::DcSctpSocket::HandleDataCommon(this, &v242);
      }

      else
      {
        dcsctp::CallbackDeferrer::OnError(this + 40, 2, "Received unexpected commands on socket that is not connected", 0x3CuLL);
      }

      if (v249 != 1)
      {
        return 1;
      }

      v242 = &unk_288291328;
      size = v245;
      if (!v245)
      {
        return 1;
      }

      v246 = v245;
      goto LABEL_374;
    case 0x82u:
      v32 = (*(**(this + 41) + 56))(*(this + 41));
      dcsctp::ReConfigChunk::Parse(*(a3 + 1), *(a3 + 2), &v235);
      if ((v237 & 1) == 0)
      {
        operator new();
      }

      v39 = *(this + 87);
      if (v39)
      {
        *v240 = *&v235.__r_.__value_.__r.__words[1];
        __p = &unk_28829A3E0;
        v240[2] = v236;
        *&v235.__r_.__value_.__r.__words[1] = 0uLL;
        v236 = 0;
        dcsctp::StreamResetHandler::HandleReConfig(v39 + 1296, &__p, v33, v34, v35, v36, v37, v38);
        __p = &unk_28829A3E0;
        if (v240[0])
        {
          v240[1] = v240[0];
          operator delete(v240[0]);
        }

        dcsctp::DcSctpSocket::MaybeSendResetStreamsRequest(this);
        v40 = *(this + 87);
        LODWORD(v242) = *(v40 + 264);
        v41 = *(v40 + 28);
        WORD2(v242) = *(v40 + 24);
        HIWORD(v242) = v41;
        *&v243 = *(v40 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        *(&v243 + 1) = 0;
        v244 = 0;
        v245 = 0;
        v42.var0 = v32;
        dcsctp::TransmissionControlBlock::SendBufferedPackets(v40, &v242, v42, v43, v44, v45, v46, v47);
        if (*(&v243 + 1))
        {
          v244 = *(&v243 + 1);
          operator delete(*(&v243 + 1));
        }

        dcsctp::DcSctpSocket::MaybeDeliverMessages(this);
      }

      else
      {
        dcsctp::CallbackDeferrer::OnError(this + 40, 2, "Received unexpected commands on socket that is not connected", 0x3CuLL);
      }

      if (v237 != 1)
      {
        return 1;
      }

      v235.__r_.__value_.__r.__words[0] = &unk_28829A3E0;
      size = v235.__r_.__value_.__l.__size_;
      if (!v235.__r_.__value_.__l.__size_)
      {
        return 1;
      }

LABEL_194:
      v235.__r_.__value_.__r.__words[2] = size;
      goto LABEL_374;
    default:
      if (v9 == 192)
      {
        dcsctp::ForwardTsnChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
        if ((v246 & 1) == 0)
        {
          operator new();
        }

        if (!*(this + 87))
        {
LABEL_8:
          dcsctp::CallbackDeferrer::OnError(this + 40, 2, "Received unexpected commands on socket that is not connected", 0x3CuLL);
          goto LABEL_146;
        }
      }

      else
      {
        if (v9 != 194)
        {
LABEL_9:
          if ((v9 & 0x40) != 0)
          {
            operator new();
          }

          return (v9 & 0x80u) != 0;
        }

        dcsctp::IForwardTsnChunk::Parse(*(a3 + 1), *(a3 + 2), &v242);
        if ((v246 & 1) == 0)
        {
          operator new();
        }

        if (!*(this + 87))
        {
          goto LABEL_8;
        }
      }

      dcsctp::DcSctpSocket::HandleForwardTsnCommon(this, &v242);
LABEL_146:
      if (v246 == 1)
      {
        v242 = &unk_288291358;
        size = *(&v243 + 1);
        if (*(&v243 + 1))
        {
          goto LABEL_190;
        }
      }

      return 1;
  }
}

void dcsctp::DcSctpSocket::HandleDataCommon(dcsctp::DcSctpSocket *this, dcsctp::AnyDataChunk *a2)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 64);
  v60 = *(a2 + 1);
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v58 = *(a2 + 28);
  v59 = *(a2 + 58);
  if (v5 == v6)
  {
    (*(**(this + 87) + 88))(v55);
    v53[0] = 0;
    v53[1] = 0;
    v54 = 0;
    v51 = &unk_288296C90;
    v52 = v3;
    off_288296CA0(&v51, v53);
    v20 = v54;
    v21 = *v53;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    v48 = &unk_2882935C8;
    *v49 = v21;
    *&v49[16] = v20;
    v28 = dcsctp::SctpPacket::Builder::Add(v55, &v48, v22, v23, v24, v25, v26, v27);
    dcsctp::PacketSender::Send(this + 57, v28, 1);
    v48 = &unk_2882935C8;
    if (*v49)
    {
      *&v49[8] = *v49;
      operator delete(*v49);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    dcsctp::CallbackDeferrer::OnError(this + 40, 6, "Received DATA chunk with no user data", 0x25uLL);
    goto LABEL_54;
  }

  v7 = *(this + 87);
  v8 = *(v7 + 696);
  if (v8 >= *(v7 + 552))
  {
    if (*(v7 + 624))
    {
      goto LABEL_54;
    }

    (*(*v7 + 88))(v55);
    v53[0] = 0;
    v53[1] = 0;
    v54 = 0;
    v51 = &unk_288297378;
    off_288297388(&v51, v53);
    v29 = v54;
    v30 = *v53;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    v48 = &unk_28828CAC0;
    v49[0] = 1;
    *&v49[8] = v30;
    v50 = v29;
    v37 = dcsctp::SctpPacket::Builder::Add(v55, &v48, v31, v32, v33, v34, v35, v36);
    dcsctp::PacketSender::Send(this + 57, v37, 1);
    v48 = &unk_28828CAC0;
    if (*&v49[8])
    {
      *&v49[16] = *&v49[8];
      operator delete(*&v49[8]);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    if (!*(this + 172))
    {
      goto LABEL_54;
    }

    v38 = *(this + 54);
    if (*(v38 + 156) == 1)
    {
      (*(**(v38 + 136) + 24))(*(v38 + 136));
      *(v38 + 160) = 0;
      *(v38 + 156) = 0;
      v39 = *(this + 55);
      if (*(v39 + 156) != 1)
      {
LABEL_48:
        v40 = *(this + 56);
        if (*(v40 + 156) != 1)
        {
          goto LABEL_49;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v39 = *(this + 55);
      if (*(v39 + 156) != 1)
      {
        goto LABEL_48;
      }
    }

    (*(**(v39 + 136) + 24))(*(v39 + 136));
    *(v39 + 160) = 0;
    *(v39 + 156) = 0;
    v40 = *(this + 56);
    if (*(v40 + 156) != 1)
    {
LABEL_49:
      v41 = *(this + 87);
      *(this + 87) = 0;
      if (!v41)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_58:
    (*(**(v40 + 136) + 24))(*(v40 + 136));
    *(v40 + 160) = 0;
    *(v40 + 156) = 0;
    v41 = *(this + 87);
    *(this + 87) = 0;
    if (!v41)
    {
LABEL_51:
      dcsctp::CallbackDeferrer::OnAborted(this + 40, 7, "Reassembly Queue is exhausted", 0x1DuLL);
      if (*(this + 172))
      {
        *(this + 172) = 0;
      }

      goto LABEL_54;
    }

LABEL_50:
    (*(*v41 + 8))(v41);
    goto LABEL_51;
  }

  if (v8 < *(v7 + 560))
  {
    goto LABEL_14;
  }

  v9 = v3;
  if (*(v7 + 476))
  {
    v10 = *(v7 + 472);
    v11 = v3 >= v10;
    v12 = v3 - v10;
    v13 = v12 != 0 && v11;
    if (v12 != 0x80000000)
    {
      v13 = v12 >= 0;
    }

    if (!v13)
    {
      v12 |= 0xFFFFFFFF00000000;
    }

    v9 = v12 + *(v7 + 464);
  }

  if (v9 == *(v7 + 480) + 1)
  {
LABEL_14:
    v14 = v3;
    if (*(v7 + 476))
    {
      v15 = *(v7 + 472);
      v11 = v3 >= v15;
      v16 = v3 - v15;
      v17 = v16 != 0 && v11;
      if (v16 != 0x80000000)
      {
        v17 = v16 >= 0;
      }

      if (!v17)
      {
        v16 |= 0xFFFFFFFF00000000;
      }

      v14 = v16 + *(v7 + 464);
    }

    v18 = v14 - *(v7 + 480);
    if (v18 < 0)
    {
      v18 = *(v7 + 480) - v14;
    }

    if (v18 <= 0x186A0)
    {
      v42 = v6;
      if (dcsctp::DataTracker::Observe(v7 + 424, v3, v4))
      {
        v19 = *(this + 87);
        v43 = v60;
        __p = v5;
        v45 = v42;
        v46 = v58;
        v47 = v59;
        dcsctp::ReassemblyQueue::Add(v19 + 536, v3, &v43);
        if (__p)
        {
          *&v45 = __p;
          operator delete(__p);
        }

        dcsctp::DcSctpSocket::MaybeDeliverMessages(this);
        return;
      }
    }
  }

  else
  {
    *(v7 + 456) = 3;
  }

LABEL_54:
  if (v5)
  {
    operator delete(v5);
  }
}

void dcsctp::DcSctpSocket::MaybeDeliverMessages(dcsctp::DcSctpSocket *this)
{
  if (*(this + 176))
  {
    if (*(*(this + 87) + 624))
    {
      v2 = (this + 320);

      dcsctp::CallbackDeferrer::OnMessageReady(v2);
    }
  }

  else
  {
    dcsctp::ReassemblyQueue::GetNextMessage((*(this + 87) + 536), &v6);
    if (v9 == 1)
    {
      do
      {
        ++*(this + 13);
        v3 = v6;
        *__p = v7;
        v5 = v8;
        dcsctp::CallbackDeferrer::OnMessageReceived(this + 40, &v3);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        dcsctp::ReassemblyQueue::GetNextMessage((*(this + 87) + 536), &v6);
      }

      while ((v9 & 1) != 0);
    }
  }
}

uint64_t dcsctp::DcSctpSocket::SendShutdownAck(dcsctp::DcSctpSocket *this)
{
  (*(**(this + 87) + 88))(v14);
  v13 = &unk_28829FA98;
  v8 = dcsctp::SctpPacket::Builder::Add(v14, &v13, v2, v3, v4, v5, v6, v7);
  dcsctp::PacketSender::Send(this + 57, v8, 1);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v9 = *(this + 56);
  v10 = (*(**(this + 87) + 56))(*(this + 87));
  v11 = 86400000000;
  if (v10 < 86400000000)
  {
    v11 = v10;
  }

  *(v9 + 144) = v11;
  return dcsctp::Timer::Start(*(this + 56));
}

void dcsctp::anonymous namespace::ComputeCapabilities(uint64_t a1, int a2, int a3, dcsctp::Parameters *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dcsctp::Parameters::descriptors(this, a5, a6, a7, a8, &v53);
  if (v53 == v54)
  {
LABEL_5:
    v15 = 1;
    if (!v53)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = v53;
  while (*v14 != 32776)
  {
    v14 += 12;
    if (v14 == v54)
    {
      goto LABEL_5;
    }
  }

  v29 = *(v14 + 2);
  if (v29 < 4 || (v30 = *(v14 + 1), bswap32(*v30) >> 16 != 32776) || ((v31 = __rev16(v30[1]), v31 >= 4) ? (v32 = v29 >= v31) : (v32 = 0), v32 ? (v33 = v29 - v31 >= 4) : (v33 = 1), v33))
  {
    v15 = 0;
    v52 = 0;
    if (!v53)
    {
      goto LABEL_7;
    }

LABEL_6:
    v54 = v53;
    operator delete(v53);
    goto LABEL_7;
  }

  if (v31 >= 5)
  {
    operator new();
  }

  v15 = 0;
  __p = 0;
  v51 = 0;
  v52 = 1;
  if (v53)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v15)
  {
    v52 = 0;
  }

  if ((*(a1 + 180) & 1) == 0)
  {
    v17 = v52;
    if (*(a1 + 181))
    {
      goto LABEL_19;
    }

LABEL_24:
    if (v17)
    {
      v18 = __p;
      v19 = v51 - __p;
      goto LABEL_26;
    }

LABEL_28:
    if (!*(a1 + 184))
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  dcsctp::Parameters::descriptors(this, v10, v11, v12, v13, &v53);
  if (v53 == v54)
  {
LABEL_14:
    if (!v53)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = v53;
  while (*v16 != -16384)
  {
    v16 += 12;
    if (v16 == v54)
    {
      goto LABEL_14;
    }
  }

  v39 = *(v16 + 2);
  if (v39 < 4 || (v40 = *(v16 + 1), __rev16(*v40) != 49152) || ((v41 = __rev16(v40[1]), v39 == 4) ? (v42 = v41 == 4) : (v42 = 0), !v42))
  {
    if (!v53)
    {
      goto LABEL_16;
    }

LABEL_15:
    v54 = v53;
    operator delete(v53);
    goto LABEL_16;
  }

  if (v53)
  {
    goto LABEL_15;
  }

LABEL_16:
  v17 = v52;
  if (v52 == 1)
  {
    memchr(__p, -64, v51 - __p);
    v17 = 1;
  }

  if ((*(a1 + 181) & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if ((v17 & 1) == 0)
  {
    goto LABEL_28;
  }

  v18 = __p;
  v19 = v51 - __p;
  v20 = memchr(__p, 64, v51 - __p);
  if (v20 && v20 != v51)
  {
    memchr(__p, -62, v19);
  }

LABEL_26:
  memchr(v18, -126, v19);
  if (!*(a1 + 184))
  {
    goto LABEL_47;
  }

LABEL_29:
  dcsctp::Parameters::descriptors(this, v10, v11, v12, v13, &v53);
  if (v53 != v54)
  {
    v25 = v53;
    while (*v25 != 32769)
    {
      v25 += 12;
      if (v25 == v54)
      {
        goto LABEL_33;
      }
    }

    v34 = *(v25 + 2);
    if (v34 < 8 || (v35 = *(v25 + 1), bswap32(*v35) >> 16 != 32769) || ((v36 = __rev16(v35[1]), v34 == 8) ? (v37 = v36 == 8) : (v37 = 0), !v37))
    {
      LOBYTE(v38) = 0;
      goto LABEL_70;
    }

    v38 = bswap32(*(v35 + 1));
    if (!v38)
    {
LABEL_70:
      v26 = 0;
      v49 = v38;
      if (!v53)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v26 = 0;
    v49 = 1;
    if (!v53)
    {
      goto LABEL_35;
    }

LABEL_34:
    v54 = v53;
    operator delete(v53);
    goto LABEL_35;
  }

LABEL_33:
  v26 = 1;
  if (v53)
  {
    goto LABEL_34;
  }

LABEL_35:
  if ((v26 & 1) != 0 || (v49 & 1) == 0)
  {
LABEL_47:
    if (v52 != 1)
    {
      return;
    }

    goto LABEL_48;
  }

  dcsctp::Parameters::descriptors(this, v21, v22, v23, v24, &v53);
  if (v53 != v54)
  {
    v27 = v53;
    while (*v27 != 32769)
    {
      v27 += 12;
      if (v27 == v54)
      {
        goto LABEL_41;
      }
    }

    v43 = *(v27 + 2);
    if (v43 < 8 || (v44 = *(v27 + 1), bswap32(*v44) >> 16 != 32769) || ((v45 = __rev16(v44[1]), v43 == 8) ? (v46 = v45 == 8) : (v46 = 0), !v46))
    {
      LOBYTE(v47) = 0;
      goto LABEL_87;
    }

    v47 = bswap32(*(v44 + 1));
    if (!v47)
    {
LABEL_87:
      v28 = 0;
      v48 = v47;
      if (!v53)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v28 = 0;
    v48 = 1;
    if (!v53)
    {
      goto LABEL_43;
    }

LABEL_42:
    v54 = v53;
    operator delete(v53);
    goto LABEL_43;
  }

LABEL_41:
  v28 = 1;
  if (v53)
  {
    goto LABEL_42;
  }

LABEL_43:
  if ((v28 & 1) != 0 || (v48 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (v52 == 1)
  {
LABEL_48:
    if (__p)
    {
      operator delete(__p);
    }
  }
}

uint64_t dcsctp::DcSctpSocket::MessagesReady(dcsctp::DcSctpSocket *this)
{
  v1 = *(this + 87);
  if (v1)
  {
    return *(v1 + 624);
  }

  else
  {
    return 0;
  }
}

void dcsctp::DcSctpSocket::GetNextMessage(dcsctp::DcSctpSocket *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 87);
  if (v2)
  {
    dcsctp::ReassemblyQueue::GetNextMessage((v2 + 536), a2);
    if (a2[32] == 1)
    {
      ++*(this + 13);
    }
  }

  else
  {
    *a2 = 0;
    a2[32] = 0;
  }
}

void dcsctp::DcSctpSocket::HandleForwardTsnCommon(dcsctp::DcSctpSocket *this, const dcsctp::AnyForwardTsnChunk *a2)
{
  v3 = *(this + 87);
  if ((*(v3 + 224) & 1) == 0)
  {
    (*(*v3 + 88))(&v7);
    operator new();
  }

  if (dcsctp::DataTracker::HandleForwardTsn((v3 + 424), *(a2 + 2)))
  {
    v5 = *(a2 + 3) - *(a2 + 2);
    if (v5)
    {
      v6 = *(a2 + 2);
    }

    else
    {
      v6 = 0;
    }

    dcsctp::ReassemblyQueue::HandleForwardTsn(*(this + 87) + 536, *(a2 + 2), v6, 0xAAAAAAAAAAAAAAABLL * (v5 >> 2));
  }

  dcsctp::DcSctpSocket::MaybeDeliverMessages(this);
}

uint64_t dcsctp::DcSctpSocket::GetHandoverReadiness(dcsctp::DcSctpSocket *this)
{
  v2 = *(this + 172);
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = v4 | (2 * ((*(*(this + 62) + 88))() != 0));
  v6 = *(this + 87);
  if (v6)
  {
    v7 = *(v6 + 488);
    v8 = *(v6 + 496);
    v9 = (*(**(*(v6 + 1336) + 384) + 40))(*(*(v6 + 1336) + 384));
    v10 = *(v6 + 1416);
    v11 = (*(**(v6 + 704) + 40))(*(v6 + 704));
    if (*(v6 + 1088))
    {
      v12 = ((*(v6 + 1192) != 0) << 9) | 0x400;
    }

    else
    {
      v12 = (*(v6 + 1192) != 0) << 9;
    }

    if (*(v6 + 1264) || *(v6 + 1240))
    {
      v12 |= 0x800u;
    }

    if (v9)
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      v13 |= 4u;
    }

    if (*(v6 + 688))
    {
      v14 = v11 | 0x40;
    }

    else
    {
      v14 = v11;
    }

    return v13 | (8 * (v7 != v8)) | v14 | v12 | v5;
  }

  return v5;
}

uint64_t dcsctp::DcSctpSocket::GetHandoverStateAndClose@<X0>(dcsctp::DcSctpSocket *this@<X0>, uint64_t a2@<X8>)
{
  *(this + 336) = 1;
  if (!(*(*this + 176))(this))
  {
    *&v23[4] = 0uLL;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v21 = 0uLL;
    *v22 = 0;
    memset(&v22[8], 0, 64);
    v23[0] = 0;
    if (*(this + 172) != 3)
    {
      goto LABEL_13;
    }

    LODWORD(v21) = 1;
    v4 = *(this + 87);
    v5 = *(v4 + 228);
    *&v22[16] = *(v4 + 224);
    *&v22[20] = v5;
    v6 = *(v4 + 264);
    DWORD1(v21) = *(v4 + 256);
    HIDWORD(v21) = v6;
    DWORD2(v21) = (*(*v4 + 24))(v4);
    *v22 = (*(*v4 + 32))(v4);
    *&v22[8] = *(v4 + 272);
    v7 = *(v4 + 480);
    v23[0] = *(v4 + 440);
    v8 = *(v4 + 1424);
    *&v23[4] = v7;
    *&v23[16] = v8;
    *&v22[28] = *(v4 + 1368);
    (*(**(v4 + 704) + 48))(*(v4 + 704), &v21);
    *&v22[24] = *(v4 + 1192) + *(v4 + 1112) + 1;
    *&v22[32] = vuzp1q_s32(*(v4 + 1032), *(v4 + 1048));
    v9 = *(this + 82);
    if (v9 != (this + 664))
    {
      do
      {
        v17 = *(v9 + 38);
        LODWORD(v26) = *(v9 + 16);
        DWORD1(v26) = v17;
        *(&v26 + 1) = *(v9 + 68);
        v27 = *(*(v9 + 7) + 18);
        std::vector<dcsctp::DcSctpSocketHandoverState::OutgoingStream>::push_back[abi:sn200100](&v22[48], &v26);
        v18 = *(v9 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v9 + 2);
            v20 = *v19 == v9;
            v9 = v19;
          }

          while (!v20);
        }

        v9 = v19;
      }

      while (v19 != (this + 664));
    }

    if (!*(this + 172))
    {
      goto LABEL_13;
    }

    v10 = *(this + 54);
    if (*(v10 + 156) == 1)
    {
      (*(**(v10 + 136) + 24))(*(v10 + 136));
      *(v10 + 160) = 0;
      *(v10 + 156) = 0;
      v11 = *(this + 55);
      if (*(v11 + 156) != 1)
      {
LABEL_8:
        v12 = *(this + 56);
        if (*(v12 + 156) != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v11 = *(this + 55);
      if (*(v11 + 156) != 1)
      {
        goto LABEL_8;
      }
    }

    (*(**(v11 + 136) + 24))(*(v11 + 136));
    *(v11 + 160) = 0;
    *(v11 + 156) = 0;
    v12 = *(this + 56);
    if (*(v12 + 156) != 1)
    {
LABEL_9:
      v13 = *(this + 87);
      *(this + 87) = 0;
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_24:
    (*(**(v12 + 136) + 24))(*(v12 + 136));
    *(v12 + 160) = 0;
    *(v12 + 156) = 0;
    v13 = *(this + 87);
    *(this + 87) = 0;
    if (!v13)
    {
LABEL_11:
      dcsctp::CallbackDeferrer::OnClosed(this + 40);
      if (*(this + 172))
      {
        *(this + 172) = 0;
      }

LABEL_13:
      *(a2 + 32) = *&v22[16];
      *(a2 + 56) = *&v22[40];
      *(a2 + 80) = *&v22[64];
      *(a2 + 104) = *&v23[16];
      v14 = *(&v25[1] + 1);
      *(a2 + 128) = *&v25[0];
      v15 = *v22;
      *a2 = v21;
      *(a2 + 16) = v15;
      *(a2 + 40) = *&v22[24];
      *(a2 + 64) = *&v22[48];
      memset(&v22[48], 0, 24);
      *(a2 + 88) = *v23;
      *(a2 + 112) = v24;
      *&v25[0] = 0;
      v24 = 0uLL;
      *(a2 + 136) = *(v25 + 8);
      *(a2 + 152) = v14;
      *(a2 + 160) = 1;
      return dcsctp::CallbackDeferrer::TriggerDeferred(this + 320);
    }

LABEL_10:
    (*(*v13 + 8))(v13);
    goto LABEL_11;
  }

  *a2 = 0;
  *(a2 + 160) = 0;
  return dcsctp::CallbackDeferrer::TriggerDeferred(this + 320);
}

void dcsctp::DcSctpSocket::~DcSctpSocket(dcsctp::DcSctpSocket *this)
{
  dcsctp::DcSctpSocket::~DcSctpSocket(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_2882921D0;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 62) = &unk_28829A9D0;
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>>>::destroy(this + 656, *(this + 83));
  v3 = *(this + 79);
  if (v3 == (this + 608))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 73);
    if (v4)
    {
LABEL_7:
      *(this + 74) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 73);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  v5 = *(this + 61);
  if (v5 == (this + 464))
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 56);
  *(this + 56) = 0;
  if (v6)
  {
    dcsctp::Timer::~Timer(v6);
    MEMORY[0x2743DA540]();
  }

  v7 = *(this + 55);
  *(this + 55) = 0;
  if (v7)
  {
    dcsctp::Timer::~Timer(v7);
    MEMORY[0x2743DA540]();
  }

  v8 = *(this + 54);
  *(this + 54) = 0;
  if (v8)
  {
    dcsctp::Timer::~Timer(v8);
    MEMORY[0x2743DA540]();
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 51));
  v9 = *(this + 49);
  if (v9 == (this + 368))
  {
    (*(*v9 + 32))(v9);
    *(this + 40) = &unk_288290710;
    v10 = *(this + 43);
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(this + 40) = &unk_288290710;
    v10 = *(this + 43);
    if (!v10)
    {
LABEL_24:
      v11 = *(this + 4);
      *(this + 4) = 0;
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v12 = *(this + 44);
  v13 = v10;
  if (v12 != v10)
  {
    do
    {
      v14 = *(v12 - 2);
      if (v14 != -1)
      {
        (off_2882922E0[v14])(&v15, v12 - 14);
      }

      *(v12 - 2) = -1;
      v12 -= 16;
    }

    while (v12 != v10);
    v13 = *(this + 43);
  }

  *(this + 44) = v10;
  operator delete(v13);
  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
LABEL_25:
    (*(*v11 + 8))(v11);
  }

LABEL_26:
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::__function::__func<dcsctp::DcSctpSocket::CreateTransmissionControlBlock(dcsctp::Capabilities const&,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,webrtc::StrongAlias<dcsctp::TieTagTag,unsigned long long>)::$_0,std::allocator<dcsctp::DcSctpSocket::CreateTransmissionControlBlock(dcsctp::Capabilities const&,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,webrtc::StrongAlias<dcsctp::TieTagTag,unsigned long long>)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882922A8;
  a2[1] = v2;
  return result;
}

void std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::RRSendQueue::OutgoingStream>>>::destroy(a1, a2[1]);
    dcsctp::RRSendQueue::OutgoingStream::~OutgoingStream((a2 + 5));

    operator delete(a2);
  }
}

void dcsctp::RRSendQueue::OutgoingStream::~OutgoingStream(dcsctp::RRSendQueue::OutgoingStream *this)
{
  *this = &unk_28829AA58;
  v2 = this + 88;
  v3 = *(this + 14);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 6);
    v5 = *(this + 7);
    if (v5 != v4)
    {
      goto LABEL_5;
    }

LABEL_20:
    v5 = v4;
    *(this + 10) = 0;
    v13 = 0;
    goto LABEL_16;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v5 == v4)
  {
    goto LABEL_20;
  }

LABEL_5:
  v6 = *(this + 9);
  v7 = &v4[v6 / 0x2A];
  v8 = *v7;
  v9 = *v7 + 96 * (v6 % 0x2A);
  v10 = v4[(*(this + 10) + v6) / 0x2A] + 96 * ((*(this + 10) + v6) % 0x2A);
  if (v9 == v10)
  {
LABEL_14:
    *(this + 10) = 0;
    v13 = v5 - v4;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v4);
        v5 = *(this + 7);
        v4 = (*(this + 6) + 8);
        *(this + 6) = v4;
        v13 = v5 - v4;
      }

      while (v13 > 2);
    }

LABEL_16:
    if (v13 == 1)
    {
      v14 = 21;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_23;
      }

      v14 = 42;
    }

    *(this + 9) = v14;
LABEL_23:
    if (v4 != v5)
    {
      do
      {
        v15 = *v4++;
        operator delete(v15);
      }

      while (v4 != v5);
      v17 = *(this + 6);
      v16 = *(this + 7);
      if (v16 != v17)
      {
        *(this + 7) = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v18 = *(this + 5);
    if (v18)
    {
      operator delete(v18);
    }

    v19 = *(this + 2);
    *(this + 2) = 0;
    if (v19)
    {
      MEMORY[0x2743DA540](v19, 0x1020C401CCFFAA1);
    }

    return;
  }

  while (v9)
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      *(v9 + 24) = v11;
      operator delete(v11);
      v8 = *v7;
    }

    v9 += 96;
    if (v9 - v8 == 4032)
    {
      v12 = v7[1];
      ++v7;
      v8 = v12;
      v9 = v12;
    }

    if (v9 == v10)
    {
      v4 = *(this + 6);
      v5 = *(this + 7);
      goto LABEL_14;
    }
  }

  __break(1u);
}

{
  dcsctp::RRSendQueue::OutgoingStream::~OutgoingStream(this);

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<dcsctp::DcSctpSocket::DcSctpSocket(std::string_view,dcsctp::DcSctpSocketCallbacks &,std::unique_ptr<dcsctp::PacketObserver>,dcsctp::DcSctpOptions const&)::$_0,std::allocator<dcsctp::DcSctpSocket::DcSctpSocket(std::string_view,dcsctp::DcSctpSocketCallbacks &,std::unique_ptr<dcsctp::PacketObserver>,dcsctp::DcSctpOptions const&)::$_0>,std::unique_ptr<dcsctp::Timeout> ()(webrtc::TaskQueueBase::DelayPrecision)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288292318;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::DcSctpSocket::*)(void),dcsctp::DcSctpSocket*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::DcSctpSocket::*)(void),dcsctp::DcSctpSocket*>>,webrtc::TimeDelta ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288292360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::DcSctpSocket::*)(void),dcsctp::DcSctpSocket*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::DcSctpSocket::*)(void),dcsctp::DcSctpSocket*>>,webrtc::TimeDelta ()(void)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind_front_t<void (dcsctp::DcSctpSocket::*)(webrtc::ArrayView<unsigned char const,-4711l>,dcsctp::SendPacketStatus),dcsctp::DcSctpSocket*>,std::allocator<std::__bind_front_t<void (dcsctp::DcSctpSocket::*)(webrtc::ArrayView<unsigned char const,-4711l>,dcsctp::SendPacketStatus),dcsctp::DcSctpSocket*>>,void ()(webrtc::ArrayView<unsigned char const,-4711l>,dcsctp::SendPacketStatus)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882923A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<void (dcsctp::DcSctpSocket::*)(webrtc::ArrayView<unsigned char const,-4711l>,dcsctp::SendPacketStatus),dcsctp::DcSctpSocket*>,std::allocator<std::__bind_front_t<void (dcsctp::DcSctpSocket::*)(webrtc::ArrayView<unsigned char const,-4711l>,dcsctp::SendPacketStatus),dcsctp::DcSctpSocket*>>,void ()(webrtc::ArrayView<unsigned char const,-4711l>,dcsctp::SendPacketStatus)>::operator()(void *a1, void *a2, unsigned int *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, *a2, a2[1], *a3);
  }
}

uint64_t webrtc::DcSctpTransport::DcSctpTransport(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 32) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 56) = 0;
  *(a1 + 40) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_288292418;
  *(a1 + 8) = &unk_288292530;
  *(a1 + 16) = &unk_288292610;
  *(a1 + 80) = a4;
  v8 = *a2;
  *(a1 + 88) = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  *(a1 + 96) = *(a2 + 1);
  *(a1 + 112) = v9;
  *(a1 + 128) = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v11 = *a5;
  *a5 = 0;
  *(a1 + 136) = v11;
  *(a1 + 144) = a3;
  v31[0] = &unk_288292630;
  v31[1] = a1;
  v31[3] = v31;
  v30[0] = &unk_288292678;
  v30[1] = a1;
  v30[3] = v30;
  *(a1 + 176) = a1 + 152;
  *(a1 + 152) = &unk_288292630;
  *(a1 + 160) = a1;
  *(a1 + 208) = a1 + 184;
  *(a1 + 216) = 0;
  *(a1 + 184) = &unk_288292678;
  *(a1 + 192) = a1;
  v12 = (a1 + 224);
  *(a1 + 247) = 15;
  if (a1 + 224 <= "DcSctpTransport" && a1 + 239 > "DcSctpTransport")
  {
    goto LABEL_47;
  }

  strcpy((a1 + 224), "DcSctpTransport");
  *(a1 + 248) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  if (&v29 <= v12 && &v29.__r_.__value_.__r.__words[1] + 7 > v12)
  {
    goto LABEL_47;
  }

  strcpy(&v29, "DcSctpTransport");
  *(&v29.__r_.__value_.__s + 23) = 15;
  add = atomic_fetch_add(&webrtc::DcSctpTransport::DcSctpTransport(webrtc::Environment const&,webrtc::Thread *,webrtc::DtlsTransportInternal *,std::unique_ptr<dcsctp::DcSctpSocketFactory>)::instance_count, 1u);
  v33 = 0x1600000000000000;
  v32 = 0uLL;
  v14 = absl::numbers_internal::FastIntToBuffer(add, &v32, v10);
  v15 = v14 - &v32;
  if ((SHIBYTE(v33) & 0x8000000000000000) != 0)
  {
    if (*(&v32 + 1) < v15)
    {
      goto LABEL_48;
    }

    v16 = v32;
    *(&v32 + 1) = v14 - &v32;
  }

  else
  {
    if (v15 > SHIBYTE(v33))
    {
      goto LABEL_48;
    }

    HIBYTE(v33) = v14 - &v32;
    v16 = &v32;
  }

  *(v16 + v15) = 0;
  v17 = v33 >= 0 ? &v32 : v32;
  v18 = v33 >= 0 ? HIBYTE(v33) : *(&v32 + 1);
  if (!v17 && v18)
  {
    goto LABEL_47;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = 22;
  }

  else
  {
    v19 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  if (v19 - size < v18)
  {
    std::string::__grow_by_and_replace(&v29, v19, size + v18 - v19, size, size, 0, v18, v17);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!v18)
  {
LABEL_38:
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v21 = (v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v29 : v29.__r_.__value_.__r.__words[0];
  if ((v18 & 0x8000000000000000) != 0 || (v22 = v21 + size, v21 + size <= v17) && &v22[v18] > v17)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v23 = v18;
  memmove(v22, v17, v18);
  v24 = size + v23;
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v29.__r_.__value_.__s + 23) = v24 & 0x7F;
    v21->__r_.__value_.__s.__data_[v24] = 0;
    goto LABEL_38;
  }

  v29.__r_.__value_.__l.__size_ = size + v23;
  v21->__r_.__value_.__s.__data_[v24] = 0;
  if (SHIBYTE(v33) < 0)
  {
LABEL_39:
    operator delete(v32);
  }

LABEL_40:
  *&v32 = v29.__r_.__value_.__l.__size_;
  v25 = v29.__r_.__value_.__r.__words[0];
  *(&v32 + 7) = *(&v29.__r_.__value_.__r.__words[1] + 7);
  v26 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  memset(&v29, 0, sizeof(v29));
  if (*(a1 + 247) < 0)
  {
    operator delete(*v12);
  }

  v27 = v32;
  *(a1 + 224) = v25;
  *(a1 + 232) = v27;
  *(a1 + 239) = *(&v32 + 7);
  *(a1 + 247) = v26;
  webrtc::DcSctpTransport::ConnectTransportSignals(a1);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t webrtc::DcSctpTransport::ConnectTransportSignals(uint64_t this)
{
  if (*(this + 80))
  {
    operator new();
  }

  return this;
}

void webrtc::DcSctpTransport::~DcSctpTransport(webrtc::DcSctpTransport *this)
{
  *this = &unk_288292418;
  *(this + 1) = &unk_288292530;
  v2 = this + 16;
  *(this + 2) = &unk_288292610;
  v3 = *(this + 27);
  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  v4 = *(this + 41);
  if (v4 == (this + 304))
  {
    (*(*v4 + 32))(v4);
    v5 = *(this + 34);
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
LABEL_7:
    *(this + 35) = v5;
    operator delete(v5);
  }

LABEL_8:
  v6 = *(this + 31);
  if (v6 && atomic_fetch_add((v6 + 24), 0xFFFFFFFF) == 1)
  {
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;
    if (v7)
    {
      MEMORY[0x2743DA520](v7, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v6, 0x1010C40EE34DA14);
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  v8 = *(this + 27);
  *(this + 27) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 26);
  if (v9 == (this + 184))
  {
    (*(*v9 + 32))(v9);
    v10 = *(this + 22);
    if (v10 != (this + 152))
    {
      goto LABEL_21;
    }

LABEL_32:
    (*(*v10 + 32))(v10);
    v11 = *(this + 17);
    *(this + 17) = 0;
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  v10 = *(this + 22);
  if (v10 == (this + 152))
  {
    goto LABEL_32;
  }

LABEL_21:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v11 = *(this + 17);
  *(this + 17) = 0;
  if (v11)
  {
LABEL_24:
    (*(*v11 + 8))(v11);
  }

LABEL_25:
  v12 = *(this + 11);
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 2) = &unk_28828CEE0;
  (*(this + 5))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 48, *(this + 7));
}

{
  webrtc::DcSctpTransport::~DcSctpTransport(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::DcSctpTransport::~DcSctpTransport(webrtc::DcSctpTransport *this)
{
  webrtc::DcSctpTransport::~DcSctpTransport((this - 8));
}

{
  webrtc::DcSctpTransport::~DcSctpTransport((this - 16));
}

{
  webrtc::DcSctpTransport::~DcSctpTransport((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::DcSctpTransport::~DcSctpTransport((this - 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::DcSctpTransport::SetOnConnectedCallback(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 304;
  result = *(a1 + 328);
  *(a1 + 328) = 0;
  if (result != v4)
  {
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    *(a1 + 328) = 0;
    return result;
  }

  result = (*(*result + 32))(result);
  v6 = *(a2 + 24);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v6 == a2)
  {
    *(a1 + 328) = v4;
    v7 = *(**(a2 + 24) + 24);

    return v7();
  }

  else
  {
    *(a1 + 328) = v6;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::SetDataChannelSink(uint64_t result, uint64_t a2)
{
  *(result + 336) = a2;
  if (a2)
  {
    if (*(result + 296) == 1)
    {
      return (*(*a2 + 40))(a2);
    }
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::SetDtlsTransport(webrtc::DcSctpTransport *this, webrtc::DtlsTransportInternal *a2)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = v4[10];
    if (v5 != v4 + 9)
    {
      while (v5[3] != (this + 16))
      {
        v5 = v5[1];
        if (v5 == v4 + 9)
        {
          goto LABEL_9;
        }
      }

      v6 = *v5;
      v7 = v5[1];
      *(v6 + 8) = v7;
      *v7 = v6;
      v8 = v4[12];
      --v4[11];
      operator delete(v5);
      if (v8 == v5)
      {
        v4[12] = v7;
      }

      (*(this + 4))(this + 16, v4 + 7);
      v4 = *(this + 10);
    }

LABEL_9:
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(v4 + 43, this);
    v9 = *(this + 10);
    v14 = absl::internal_any_invocable::EmptyManager;
    v15 = 0;
    v10 = webrtc::PacketTransportInternal::SetOnCloseCallback(v9, v13);
    (v14)(1, v13, v13, v10);
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(this + 10) + 440), this);
  }

  *(this + 10) = a2;
  webrtc::DcSctpTransport::ConnectTransportSignals(this);
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 24))(result);
    if (result)
    {
      result = *(this + 27);
      if (result)
      {
        result = (*(*result + 80))(result);
        if (!result)
        {
          v12 = *(**(this + 27) + 48);

          return v12();
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::Start(uint64_t a1, int *a2)
{
  v4 = *(a1 + 216);
  if (!v4)
  {
    (*(**(a1 + 96) + 16))(v23);
    v15 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v15 = v23[1];
    }

    if (v15 >= 7)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_12:
        {
LABEL_17:
          (*(**(a1 + 136) + 16))(v23);
          v16 = v23[0];
          v23[0] = 0;
          v17 = *(a1 + 216);
          *(a1 + 216) = v16;
          if (v17)
          {
            (*(*v17 + 8))(v17);
            v18 = v23[0];
            v23[0] = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          goto LABEL_20;
        }

LABEL_16:
        operator new();
      }
    }

    else if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(v23[0]);
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v5 = *a2;
  if (v5 == *(*(*v4 + 88))(v4))
  {
    v6 = a2[1];
    if (v6 == *((*(**(a1 + 216) + 88))(*(a1 + 216)) + 4))
    {
      (*(**(a1 + 216) + 96))(*(a1 + 216), a2[2]);
LABEL_20:
      v19 = *(a1 + 80);
      if (v19)
      {
        if ((*(*v19 + 24))(v19))
        {
          v20 = *(a1 + 216);
          if (v20)
          {
            if (!(*(*v20 + 80))(v20))
            {
              (*(**(a1 + 216) + 48))(*(a1 + 216));
            }
          }
        }
      }

      v21 = *(a1 + 272);
      for (i = *(a1 + 280); v21 != i; v21 += 4)
      {
        (*(**(a1 + 216) + 104))(*(a1 + 216), *v21, v21[3]);
      }

      return 1;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
  }

  return 0;
}

uint64_t webrtc::DcSctpTransport::OpenStream(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v7 = a1[34];
  v6 = a1[35];
  v8 = v6 - v7;
  if (v6 == v7)
  {
    v10 = a1[35];
  }

  else
  {
    v9 = v8 >> 3;
    v10 = a1[34];
    do
    {
      v11 = v9 >> 1;
      v12 = &v10[4 * (v9 >> 1)];
      v14 = *v12;
      v13 = v12 + 4;
      v9 += ~(v9 >> 1);
      if (v14 < a2)
      {
        v10 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    while (v9);
    if (v6 != v10 && *v10 <= a2)
    {
LABEL_19:
      v10[1] = 0;
      *(v10 + 4) = 0;
      v10[3] = a3;
      goto LABEL_42;
    }
  }

  v15 = a1[36];
  if (v6 < v15)
  {
    if (v10 != v6)
    {
      v16 = a1[35];
      if (v6 >= 8)
      {
        *v6 = *(v6 - 8);
        v16 = v6 + 8;
      }

      a1[35] = v16;
      if (v6 != v10 + 4)
      {
        v17 = 0;
        do
        {
          v18 = v17 + v6;
          *(v18 - 4) = *(v17 + v6 - 16);
          v19 = *(v17 + v6 - 14);
          *(v18 - 1) = *(v17 + v6 - 10);
          *(v18 - 6) = v19;
          v17 -= 4;
        }

        while ((v10 - v6 + 8) != v17);
      }

      *v10 = a2;
      goto LABEL_19;
    }

    if (v7)
    {
      *v6 = a2;
      *(v6 + 4) = 0;
      *(v6 + 6) = a3;
      a1[35] = v6 + 8;
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v20 = (v8 >> 3) + 1;
  if (v20 >> 61)
  {
    goto LABEL_46;
  }

  v21 = v15 - v7;
  v22 = (v15 - v7) >> 2;
  if (v22 > v20)
  {
    v20 = v22;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    v23 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v20;
  }

  if (v23)
  {
    if (!(v23 >> 61))
    {
      operator new();
    }

    goto LABEL_47;
  }

  v24 = v10 - v7;
  v25 = (v10 - v7) >> 3;
  v26 = 8 * v25;
  if (!v25)
  {
    if (v24 < 1)
    {
      v27 = v24 >> 2;
      if (v10 == v7)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      if (!(v28 >> 61))
      {
        operator new();
      }

LABEL_47:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v26 -= ((v24 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v26)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v26 = a2;
  *(v26 + 4) = 0;
  *(v26 + 6) = a3;
  v29 = a1[35] - v10;
  memcpy((v26 + 8), v10, v29);
  a1[35] = v10;
  v30 = a1[34];
  v31 = v10 - v30;
  v32 = (v26 - (v10 - v30));
  memcpy(v32, v30, v31);
  v33 = a1[34];
  a1[34] = v32;
  a1[35] = v26 + 8 + v29;
  a1[36] = 0;
  if (v33)
  {
    operator delete(v33);
  }

LABEL_42:
  v34 = a1[27];
  if (v34)
  {
    (*(*v34 + 104))(v34, a2, a3);
  }

  return 1;
}

uint64_t webrtc::DcSctpTransport::ResetStream(webrtc::DcSctpTransport *this, unsigned __int16 a2)
{
  v3 = *(this + 27);
  if (!v3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_23:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
    return 0;
  }

  v20 = a2;
  v5 = *(this + 34);
  v4 = *(this + 35);
  if (v4 == v5)
  {
    v5 = *(this + 35);
    v11 = v5;
  }

  else
  {
    v6 = (v4 - v5) >> 3;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[4 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 4;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = v5;
    if (v4 != v5)
    {
      v11 = v5 + 4;
      if (*v5 > a2)
      {
        v11 = v5;
      }
    }
  }

  if (v5 == v11)
  {
    v5 = *(this + 35);
  }

  if (v4 == v5)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v5[1])
  {
    return 0;
  }

  if (*(v5 + 3))
  {
    return 0;
  }

  if (v5[2])
  {
    return 0;
  }

  *(v5 + 2) = 1;
  (*(*v3 + 136))(v3, &v20, 1);
  return 1;
}

void webrtc::DcSctpTransport::SendData(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[27];
  if (!v7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\n\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
    }

    goto LABEL_24;
  }

  v10 = a1[34];
  v9 = a1[35];
  if (v9 == v10)
  {
    v10 = a1[35];
    v16 = v10;
  }

  else
  {
    v11 = (v9 - v10) >> 3;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[4 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 4;
      v11 += ~(v11 >> 1);
      if (v15 < a2)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    v16 = v10;
    if (v9 != v10)
    {
      v16 = v10 + 4;
      if (*v10 > a2)
      {
        v16 = v10;
      }
    }
  }

  if (v10 == v16)
  {
    v10 = a1[35];
  }

  if (v9 == v10)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
LABEL_23:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
    }

LABEL_24:
    v31 = 6;
LABEL_25:
    *a5 = v31;
LABEL_26:
    *(a5 + 38) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    *(a5 + 29) = 0;
    return;
  }

  if ((v10[1] & 1) != 0 || (*(v10 + 3) & 1) != 0 || *(v10 + 4) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v33 = a1;
  v35 = *((*(*v7 + 88))(v7) + 24);
  if (v35 && *(a4 + 16) > v35)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
    }

    v31 = 4;
    goto LABEL_25;
  }

  v43 = *(a4 + 16);
  v73 = 0;
  v72 = 0uLL;
  if (v43)
  {
    if ((v43 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v66[0] = 0;
  std::vector<unsigned char>::emplace_back<unsigned char>(&v72, v66);
  v44 = *(a4 + 16);
  if (*a3 == 1)
  {
    v45 = v44 == 0;
    v46 = 0x3500000000;
    v47 = 0x3900000000;
  }

  else
  {
    if (*a3)
    {
      v47 = 0x3200000000;
      goto LABEL_43;
    }

    v45 = v44 == 0;
    v46 = 0x3300000000;
    v47 = 0x3800000000;
  }

  if (!v45)
  {
    v47 = v46;
  }

LABEL_43:
  LOBYTE(v67) = 0;
  v68 = 0;
  LOBYTE(v69) = 0;
  v70 = 0;
  v71 = 0;
  v66[0] = *(a3 + 4) ^ 1;
  if (*(a3 + 20) == 1)
  {
    v48 = *(a3 + 16);
    v68 = 1;
    v67 = v48;
  }

  v49 = v47 | a2;
  if (*(a3 + 12) == 1)
  {
    v50 = *(a3 + 8);
    v70 = 1;
    v69 = v50;
  }

  v51 = v33[27];
  v63 = v49;
  *__p = v72;
  v65 = v73;
  v52 = (*(*v51 + 120))(v51, &v63, v66);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v52 == 3)
  {
    *(v33 + 296) = 0;
    v31 = 9;
    goto LABEL_25;
  }

  if (!v52)
  {
    *a5 = 0;
    goto LABEL_26;
  }

  v53 = v52 - 1;
  if ((v52 - 1) > 3)
  {
    v55 = "SUCCESS";
    v54 = 7;
  }

  else
  {
    v54 = qword_273B91E08[v53];
    v55 = off_279E93C58[v53];
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
  }

  webrtc::RTCError::RTCError(a5, 8, v55, v54);
}

uint64_t webrtc::DcSctpTransport::max_message_size(webrtc::DcSctpTransport *this)
{
  v1 = *(this + 27);
  if (v1)
  {
    return *((*(*v1 + 88))(v1) + 24);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\n\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
  }

  return 0;
}

uint64_t webrtc::DcSctpTransport::max_outbound_streams(webrtc::DcSctpTransport *this)
{
  result = *(this + 27);
  if (result)
  {
    return *((*(*result + 88))(result) + 10) | 0x100000000;
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::max_inbound_streams(webrtc::DcSctpTransport *this)
{
  result = *(this + 27);
  if (result)
  {
    return *((*(*result + 88))(result) + 8) | 0x100000000;
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::buffered_amount(webrtc::DcSctpTransport *this, unsigned __int16 a2)
{
  result = *(this + 27);
  if (result)
  {
    return (*(*result + 144))(result, a2);
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::buffered_amount_low_threshold(webrtc::DcSctpTransport *this, unsigned __int16 a2)
{
  result = *(this + 27);
  if (result)
  {
    return (*(*result + 152))(result, a2);
  }

  return result;
}

uint64_t webrtc::DcSctpTransport::SetBufferedAmountLowThreshold(webrtc::DcSctpTransport *this, unsigned __int16 a2)
{
  result = *(this + 27);
  if (result)
  {
    return (*(*result + 160))(result, a2);
  }

  return result;
}

std::string *webrtc::DcSctpTransport::set_debug_name_for_testing(std::string *this, const char *a2)
{
  if (a2)
  {
    return std::string::__assign_external((this + 224), a2);
  }

  __break(1u);
  return this;
}

uint64_t webrtc::DcSctpTransport::SendPacketWithStatus(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > *((*(**(a1 + 216) + 88))(*(a1 + 216)) + 16))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc";
      v25 = 3507;
      v26 = &v41;
      (*(**(a1 + 216) + 88))(*(a1 + 216));
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
    }

    return 2;
  }

  v13 = *(a1 + 80);
  if (!v13 || !(*(*v13 + 24))(v13))
  {
    return 2;
  }

  v14 = *(a1 + 80);
  LODWORD(v24) = -1;
  BYTE4(v24) = 0;
  v25 = -1;
  LODWORD(v26) = -1;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v30 = -1;
  v31 = -1;
  v32 = 0;
  v33 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 0;
  v15 = (*(*v14 + 40))(v14, a2, a3, &v24, 0);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if ((v15 & 0x80000000) == 0)
  {
    return 0;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    v24 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc";
    v25 = 3666;
    v26 = &v41;
    (*(**(a1 + 80) + 64))(*(a1 + 80));
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if ((*(**(a1 + 80) + 64))(*(a1 + 80)) - 35 < 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t webrtc::DcSctpTransport::TimeMillis(webrtc::DcSctpTransport *this)
{
  v1 = (*(**(this + 13) + 16))(*(this + 13));
  v2 = v1 / 0x3E8uLL;
  if (v1 % 0x3E8uLL > 0x1F3)
  {
    ++v2;
  }

  if (-v1 % 0x3E8uLL <= 0x1F4)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v1 < 0)
  {
    return v3 - -v1 / 0x3E8uLL;
  }

  else
  {
    return v2;
  }
}

unint64_t non-virtual thunk towebrtc::DcSctpTransport::TimeMillis(webrtc::DcSctpTransport *this)
{
  v1 = (*(**(this + 12) + 16))(*(this + 12));
  v2 = v1 / 0x3E8uLL;
  if (v1 % 0x3E8uLL > 0x1F3)
  {
    ++v2;
  }

  if (-v1 % 0x3E8uLL <= 0x1F4)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v1 < 0)
  {
    return v3 - -v1 / 0x3E8uLL;
  }

  else
  {
    return v2;
  }
}

uint64_t webrtc::DcSctpTransport::GetRandomInt(webrtc::DcSctpTransport *this, int a2, int a3)
{
  v3 = *(this + 16) ^ (*(this + 16) >> 12);
  v4 = v3 ^ (v3 << 25) ^ ((v3 ^ (v3 << 25)) >> 27);
  *(this + 16) = v4;
  return ((((1332534557 * v4) + (1332534557 * v4) * (a3 - a2)) >> 32) + a2);
}

uint64_t non-virtual thunk towebrtc::DcSctpTransport::GetRandomInt(webrtc::DcSctpTransport *this, int a2, int a3)
{
  v3 = *(this + 15) ^ (*(this + 15) >> 12);
  v4 = v3 ^ (v3 << 25) ^ ((v3 ^ (v3 << 25)) >> 27);
  *(this + 15) = v4;
  return ((((1332534557 * v4) + (1332534557 * v4) * (a3 - a2)) >> 32) + a2);
}

uint64_t webrtc::DcSctpTransport::OnTotalBufferedAmountLow(uint64_t this)
{
  if ((*(this + 296) & 1) == 0)
  {
    *(this + 296) = 1;
    this = *(this + 336);
    if (this)
    {
      return (*(*this + 40))();
    }
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::DcSctpTransport::OnTotalBufferedAmountLow(uint64_t this)
{
  if ((*(this + 288) & 1) == 0)
  {
    *(this + 288) = 1;
    this = *(this + 328);
    if (this)
    {
      return (*(*this + 40))();
    }
  }

  return this;
}

uint64_t webrtc::DcSctpTransport::OnBufferedAmountLow(uint64_t a1, unsigned __int16 a2)
{
  result = *(a1 + 336);
  if (result)
  {
    return (*(*result + 56))(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::DcSctpTransport::OnBufferedAmountLow(uint64_t a1, unsigned __int16 a2)
{
  result = *(a1 + 328);
  if (result)
  {
    return (*(*result + 56))(result, a2);
  }

  return result;
}

void webrtc::DcSctpTransport::OnMessageReceived(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4) - 50;
  if (v4 < 8 && ((0xDFu >> v4) & 1) != 0)
  {
    webrtc::CopyOnWriteBuffer::Clear((a1 + 248));
    if ((*(a2 + 4) & 0xFFFFFFFE) != 0x38)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      if (v6 == v5)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(a2 + 8);
      }

      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>((a1 + 248), v7, v6 - v5);
    }

    v8 = *(a1 + 336);
    if (v8)
    {
      v9 = *(*v8 + 16);

      v9();
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
  }
}

void *webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(webrtc::CopyOnWriteBuffer *this, const void *a2, size_t a3)
{
  if (!*this)
  {
    operator new();
  }

  v6 = *(this + 2);
  if (*(*this + 8) - *(this + 1) <= v6 + a3)
  {
    v7 = v6 + a3;
  }

  else
  {
    v7 = *(*this + 8) - *(this + 1);
  }

  result = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this, v7);
  v9 = *(this + 2) + *(this + 1);
  v10 = *this;
  if (*(*this + 8) < v9)
  {
    operator new[]();
  }

  **this = v9;
  if (a3)
  {
    v11 = *v10 + a3;
    if (v10[1] < v11)
    {
      operator new[]();
    }

    result = memcpy((v10[2] + *v10), a2, a3);
    *v10 = v11;
  }

  *(this + 2) += a3;
  return result;
}

void webrtc::DcSctpTransport::OnError(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
    {
      return;
    }
  }

  else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    return;
  }

  webrtc::webrtc_logging_impl::Log("\r\n\t\v\t\v\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
}

void webrtc::DcSctpTransport::OnAborted(uint64_t a1, int a2, void ***a3, size_t a4)
{
  v4 = a4;
  v5 = a3;
  v32 = a3;
  v33 = a4;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v15 = a2 - 1;
    if ((a2 - 1) > 7)
    {
      v17 = "NO_ERROR";
      v16 = 8;
    }

    else
    {
      v16 = qword_273B91E88[v15];
      v17 = off_279E93CB8[v15];
    }

    *&__len[1] = v17;
    v30.__r_.__value_.__r.__words[0] = v16;
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t\v\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
    v5 = v32;
    v4 = v33;
  }

  *(a1 + 296) = 0;
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_40:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  __len[0] = v4;
  v18 = (&__src + v4);
  if (&__src <= v5 && v18 > v5)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v4)
  {
    memmove(&__src, v5, v4);
  }

  *v18 = 0;
  v19 = __len[0];
  if ((__len[0] & 0x8000000000000000) == 0)
  {
    *&__len[1] = 11;
    p_src = &__src;
    if (__len[0] <= 0x16)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator new();
  }

  p_src = __src;
  v19 = v28;
  *&__len[1] = 11;
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_40;
  }

  if (v28 > 0x16)
  {
    goto LABEL_20;
  }

LABEL_16:
  *(&v30.__r_.__value_.__s + 23) = v19;
  v21 = (&v30.__r_.__value_.__l.__data_ + v19);
  if (&v30 <= p_src && v21 > p_src)
  {
    goto LABEL_39;
  }

  if (v19)
  {
    memmove(&v30, p_src, v19);
  }

  *v21 = 0;
  *v31 = 0;
  v31[4] = 0;
  v31[6] = 0;
  if ((__len[0] & 0x80000000) == 0)
  {
    *v31 = 4;
    v22 = a2 - 3;
    if ((a2 - 3) > 4)
    {
      goto LABEL_26;
    }

LABEL_29:
    *&v31[4] = word_273B91EC8[v22];
    v31[6] = 1;
    v23 = *(a1 + 336);
    if (!v23)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  operator delete(__src);
  *v31 = 4;
  v22 = a2 - 3;
  if ((a2 - 3) <= 4)
  {
    goto LABEL_29;
  }

LABEL_26:
  v23 = *(a1 + 336);
  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_30:
  v24 = *&__len[1];
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v30;
  }

  v26[0] = *v31;
  *(v26 + 3) = *&v31[3];
  (*(*v23 + 48))(v23, &v24);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_35:
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

uint64_t webrtc::DcSctpTransport::OnConnected(webrtc::DcSctpTransport *this)
{
  *(this + 296) = 1;
  v2 = *(this + 42);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  result = *(this + 41);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::DcSctpTransport::OnConnected(webrtc::DcSctpTransport *this)
{
  *(this + 288) = 1;
  v2 = *(this + 41);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  result = *(this + 40);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void webrtc::DcSctpTransport::OnStreamsResetFailed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x125A;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
      }

      a2 += 2;
      v5 -= 2;
    }

    while (v5);
  }
}

void non-virtual thunk towebrtc::DcSctpTransport::OnStreamsResetFailed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x125A;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
      }

      a2 += 2;
      v5 -= 2;
    }

    while (v5);
  }
}

void webrtc::DcSctpTransport::OnStreamsResetPerformed(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = &a2[a3];
    do
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x12B1;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
      }

      v14 = a1[34];
      v15 = a1[35];
      if (v15 == v14)
      {
        v17 = a1[35];
        v22 = v17;
      }

      else
      {
        v16 = (v15 - v14) >> 3;
        v17 = a1[34];
        do
        {
          v18 = v16 >> 1;
          v19 = &v17[4 * (v16 >> 1)];
          v21 = *v19;
          v20 = v19 + 4;
          v16 += ~(v16 >> 1);
          if (v21 < *v4)
          {
            v17 = v20;
          }

          else
          {
            v16 = v18;
          }
        }

        while (v16);
        v22 = v17;
        if (v15 != v17)
        {
          if (*v4 >= *v17)
          {
            v22 = v17 + 4;
          }

          else
          {
            v22 = v17;
          }
        }
      }

      if (v17 == v22)
      {
        v17 = a1[35];
      }

      if (v15 == v17)
      {
        break;
      }

      *(v17 + 4) = 1;
      if (*(v17 + 3) == 1)
      {
        v23 = a1[42];
        if (v23)
        {
          (*(*v23 + 32))(v23, *v4);
          v14 = a1[34];
          v15 = a1[35];
        }

        v24 = v15;
        if (v15 != v14)
        {
          v25 = (v15 - v14) >> 3;
          v15 = v14;
          do
          {
            v26 = v25 >> 1;
            v27 = &v15[4 * (v25 >> 1)];
            v29 = *v27;
            v28 = v27 + 4;
            v25 += ~(v25 >> 1);
            if (v29 < *v4)
            {
              v15 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v30 = v15;
        if (v24 != v15)
        {
          v30 = v15 + 4;
          if (*v4 < *v15)
          {
            v30 = v15;
          }
        }

        if (v30 < v15)
        {
          __break(1u);
          return;
        }

        if (v30 != v15)
        {
          if (v30 != v24)
          {
            v31 = v15 + v14;
            v32 = v30 + v14;
            do
            {
              v33 = v31 - v14;
              *v33 = *(v32 - v14);
              v34 = *(v32 - v14 + 2);
              *(v33 + 6) = *(v32 - v14 + 6);
              *(v33 + 2) = v34;
              v31 += 8;
              v32 += 8;
            }

            while ((v32 - v14) != v24);
            v15 = (v31 - v14);
          }

          a1[35] = v15;
        }
      }

      ++v4;
    }

    while (v4 != v6);
  }
}

void webrtc::DcSctpTransport::OnIncomingStreamsReset(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = &a2[a3];
    do
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x1391;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/sctp/dcsctp_transport.cc");
      }

      v15 = *(a1 + 272);
      v14 = *(a1 + 280);
      if (v14 == v15)
      {
        v15 = *(a1 + 280);
        v21 = v15;
      }

      else
      {
        v16 = (v14 - v15) >> 3;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[4 * (v16 >> 1)];
          v20 = *v18;
          v19 = v18 + 4;
          v16 += ~(v16 >> 1);
          if (v20 < *v4)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        v21 = v15;
        if (v14 != v15)
        {
          if (*v4 >= *v15)
          {
            v21 = v15 + 4;
          }

          else
          {
            v21 = v15;
          }
        }
      }

      v22 = v15 == v21 ? *(a1 + 280) : v15;
      if (v14 == v22)
      {
        break;
      }

      *(v22 + 3) = 1;
      if ((v22[1] & 1) == 0)
      {
        v38 = *v4;
        (*(**(a1 + 216) + 136))(*(a1 + 216), &v38, 1);
        v23 = *(a1 + 336);
        if (v23)
        {
          (*(*v23 + 24))(v23, *v4);
        }
      }

      if (*(v22 + 4) == 1)
      {
        v24 = *(a1 + 336);
        if (v24)
        {
          (*(*v24 + 32))(v24, *v4);
        }

        v25 = *(a1 + 272);
        v26 = *(a1 + 280);
        if (v26 == v25)
        {
          v28 = *(a1 + 280);
          v33 = v28;
        }

        else
        {
          v27 = (v26 - v25) >> 3;
          v28 = *(a1 + 272);
          do
          {
            v29 = v27 >> 1;
            v30 = &v28[4 * (v27 >> 1)];
            v32 = *v30;
            v31 = v30 + 4;
            v27 += ~(v27 >> 1);
            if (v32 < *v4)
            {
              v28 = v31;
            }

            else
            {
              v27 = v29;
            }
          }

          while (v27);
          v33 = v28;
          if (v26 != v28)
          {
            v33 = v28 + 4;
            if (*v4 < *v28)
            {
              v33 = v28;
            }
          }
        }

        if (v33 < v28)
        {
          __break(1u);
          return;
        }

        if (v33 != v28)
        {
          if (v33 != v26)
          {
            v34 = v28 + v25;
            v35 = v33 + v25;
            do
            {
              v36 = (v34 - v25);
              *v36 = *(v35 - v25);
              v37 = *(v35 - v25 + 2);
              *(v36 + 3) = *(v35 - v25 + 6);
              *(v36 + 2) = v37;
              v34 += 8;
              v35 += 8;
            }

            while ((v35 - v25) != v26);
            v28 = (v34 - v25);
          }

          *(a1 + 280) = v28;
        }
      }

      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t webrtc::DcSctpTransport::OnTransportWritableState(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    result = (*(*result + 24))(result);
    if (result)
    {
      result = *(a1 + 216);
      if (result)
      {
        result = (*(*result + 80))(result);
        if (!result)
        {
          v3 = *(**(a1 + 216) + 48);

          return v3();
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::SctpTransportInternal::Start(webrtc::SctpTransportInternal *this, int a2, int a3, int a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  return (*(*this + 40))(this, v5);
}

void *std::vector<unsigned char>::emplace_back<unsigned char>(void *result, _BYTE *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = &v3[-*result + 1];
    if (v4 < 0)
    {
      goto LABEL_13;
    }

    v5 = v2 - *result;
    if (2 * v5 > v4)
    {
      v4 = 2 * v5;
    }

    if (v5 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v4;
    }

    if (v6)
    {
      operator new();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

uint64_t std::__function::__func<webrtc::DcSctpTransport::DcSctpTransport(webrtc::Environment const&,webrtc::Thread *,webrtc::DtlsTransportInternal *,std::unique_ptr<dcsctp::DcSctpSocketFactory>)::$_0,std::allocator<webrtc::DcSctpTransport::DcSctpTransport(webrtc::Environment const&,webrtc::Thread *,webrtc::DtlsTransportInternal *,std::unique_ptr<dcsctp::DcSctpSocketFactory>)::$_0>,dcsctp::TimeMs ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288292630;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::DcSctpTransport::DcSctpTransport(webrtc::Environment const&,webrtc::Thread *,webrtc::DtlsTransportInternal *,std::unique_ptr<dcsctp::DcSctpSocketFactory>)::$_1,std::allocator<webrtc::DcSctpTransport::DcSctpTransport(webrtc::Environment const&,webrtc::Thread *,webrtc::DtlsTransportInternal *,std::unique_ptr<dcsctp::DcSctpSocketFactory>)::$_1>,void ()(webrtc::StrongAlias<dcsctp::TimeoutTag,unsigned long long>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288292678;
  a2[1] = v2;
  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::DcSctpTransport,webrtc::PacketTransportInternal *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DcSctpTransport::ConnectTransportSignals(void)::$_0 &,webrtc::PacketTransportInternal *,webrtc::ReceivedIpPacket const&>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 44) == 1)
  {
    result = *(*result + 216);
    if (result)
    {
      return (*(*result + 16))(result, *a3, *(a3 + 8));
    }
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DcSctpTransport::ConnectTransportSignals(void)::$_1 &&>(uint64_t a1)
{
  v1 = *(*a1 + 336);
  if (v1)
  {
    v2 = 0;
    v5[14] = 0;
    v4 = 0;
    memset(v5, 0, 13);
    __p = 0;
    (*(*v1 + 48))(v1, &v2);
    if ((v5[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

uint64_t webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::DcSctpTransport::ConnectTransportSignals(void)::$_3>(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v14 = v6;
    v15 = v5;
    v16 = v3;
    v17 = v4;
    v7 = *result;
    result = *(*result + 216);
    if (result)
    {
      v8 = (*(*result + 88))(result);
      v9 = *v8;
      v10 = v8[3];
      v11 = v7[27];
      v7[27] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v12 = v9;
      v13 = v10;
      return (*(*v7 + 40))(v7, &v12);
    }
  }

  return result;
}

void webrtc::DebugDumpWriterImpl::~DebugDumpWriterImpl(FILE **this)
{
  if (this[1])
  {
    fclose(this[1]);
    this[1] = 0;
  }
}

{
  if (this[1])
  {
    fclose(this[1]);
    this[1] = 0;
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

float **webrtc::Decimator::Decimate(uint64_t *a1, float *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (!a3)
  {
    a2 = 0;
  }

  result = webrtc::CascadedBiQuadFilter::Process(a1 + 1, a2, a3, v28, 64);
  v9 = a1[4];
  for (i = a1[5]; v9 != i; v9 += 9)
  {
    v11 = 0;
    v12 = *v9;
    v13 = v9[1];
    v15 = v9[7];
    v14 = v9[8];
    v17 = v9[5];
    v16 = v9[6];
    v18 = v9[2];
    v19 = -v9[3];
    v20 = -v9[4];
    do
    {
      v21 = v16;
      v22 = v14;
      v16 = v17;
      v14 = v15;
      v17 = v28[v11];
      v15 = ((((v13 * v16) + (v12 * v17)) + (v18 * v21)) + (v19 * v15)) + (v20 * v22);
      v28[v11++] = v15;
    }

    while (v11 != 64);
    v9[5] = v17;
    v9[6] = v16;
    v9[7] = v15;
    v9[8] = v14;
  }

  if (a5)
  {
    v23 = *a1;
    v24 = 4 * *a1;
    v25 = -*a1;
    v26 = v28;
    while (1)
    {
      v25 += v23;
      if (v25 >= 0x40)
      {
        break;
      }

      v27 = *v26;
      v26 = (v26 + v24);
      *a4++ = v27;
      if (!--a5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void webrtc::DecisionLogic::~DecisionLogic(webrtc::DecisionLogic *this)
{
  *this = &unk_2882926F0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      MEMORY[0x2743DA540](v3, 0x1060C40C2E02434);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40EDED9539);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{
  *this = &unk_2882926F0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      MEMORY[0x2743DA540](v3, 0x1060C40C2E02434);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40EDED9539);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::DecisionLogic::SoftReset(webrtc::DecisionLogic *this)
{
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  operator new();
}

uint64_t webrtc::DecisionLogic::SetSampleRate(uint64_t this, int a2, uint64_t a3)
{
  *(this + 64) = a2 / 1000;
  *(this + 72) = a3;
  *(*(this + 48) + 20) = a2 / 1000;
  return this;
}

uint64_t webrtc::DecisionLogic::GetDecision(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 100) == 1)
  {
    v4 = *(a2 + 7);
    v5 = v4 > 7;
    v6 = (1 << v4) & 0xD8;
    if (!v5 && v6 != 0)
    {
      *(a1 + 100) = 1;
      operator new();
    }
  }

  *(a1 + 100) = 0;
  v8 = *(a2 + 7);
  if ((v8 - 9) < 2 || v8 == 1 || v8 == 11)
  {
    goto LABEL_15;
  }

  v25 = *(a2 + 8);
  v26 = *(a1 + 40);
  v27 = (*(*a1 + 104))(a1);
  (*(*v26 + 40))(v26, v27);
  v28 = *(a1 + 112);
  if (*(a1 + 100) == 1)
  {
    v28 = (*(a1 + 96) + v28);
  }

  v29 = *(a1 + 40);
  if (*(a1 + 116) != 1)
  {
    (*(*v29 + 24))(v29, v25, v28);
    *(a1 + 100) = 0;
    *(a1 + 112) = 0;
    v8 = *(a2 + 7);
    if (v8 == 13)
    {
      goto LABEL_32;
    }

LABEL_15:
    if (*(a2 + 24) != 1)
    {
      goto LABEL_39;
    }

    if (*(a2 + 21) == 1)
    {
      v11 = a2[3];
      v39 = a2[2];
      v40 = v11;
      v12 = a2[5];
      v41 = a2[4];
      v42 = v12;
      v13 = a2[1];
      v37 = *a2;
      v38 = v13;
      return (*(*a1 + 192))(a1, &v37);
    }

    v15 = *(a2 + 2);
    v16 = *(a2 + 48);
    v17 = *(a2 + 9);
    result = (*(*a1 + 104))(a1);
    v18 = *(a1 + 64);
    if (v17 < v18 * result / 2 && (v16 & 1) == 0 && ((v8 - 9) < 2 || (v8 == 11 || v8 == 1) && v15 < 0x2000))
    {
LABEL_39:
      v30 = a2[3];
      v39 = a2[2];
      v40 = v30;
      v31 = a2[5];
      v41 = a2[4];
      v42 = v31;
      v32 = a2[1];
      v37 = *a2;
      v38 = v32;
      return (*(*a1 + 200))(a1, &v37);
    }

    if ((*(a2 + 24) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v19 = *a2;
    v20 = *(a2 + 4);
    v21 = *a2 - v20;
    if (*a2 == v20)
    {
      v22 = a2[3];
      v39 = a2[2];
      v40 = v22;
      v23 = a2[5];
      v41 = a2[4];
      v42 = v23;
      v24 = a2[1];
      v37 = *a2;
      v38 = v24;
      return (*(*a1 + 208))(a1, &v37);
    }

    if (v21 == 0x80000000)
    {
      if (v19 <= v20)
      {
        goto LABEL_48;
      }
    }

    else if ((v21 & 0x80000000) != 0)
    {
LABEL_48:
      v34 = a2[3];
      v39 = a2[2];
      v40 = v34;
      v35 = a2[5];
      v41 = a2[4];
      v42 = v35;
      v36 = a2[1];
      v37 = *a2;
      v38 = v36;
      return (*(*a1 + 216))(a1, &v37);
    }

    if (v18)
    {
      v33 = v19 - 5000 * v18;
      if (v20 - v33 == 0x80000000)
      {
        if (v20 <= v33)
        {
          goto LABEL_48;
        }
      }

      else if (v20 == v33 || ((v20 - v33) & 0x80000000) != 0)
      {
        goto LABEL_48;
      }
    }

    return 10;
  }

  (*(*v29 + 32))(v29, v25, v28);
  *(a1 + 116) = 0;
  *(a1 + 100) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 7);
  if (v8 != 13)
  {
    goto LABEL_15;
  }

LABEL_32:
  if (*(a2 + 24))
  {
    return 10;
  }

  else
  {
    return 2;
  }
}

uint64_t webrtc::DecisionLogic::TargetLevelMs(webrtc::DecisionLogic *this)
{
  v2 = (*(*this + 112))(this);
  if (*(this + 6) <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 6);
  }

  v5 = *(this + 8);
  v4 = *(this + 9);
  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(this + 8);
  }

  if (v5 <= 0)
  {
    result = v3;
  }

  else
  {
    result = v6;
  }

  if (v4 >= 1)
  {
    v8 = 3 * v4 * *(this + 4) / 4;
    if (v8 >= result)
    {
      return result;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t webrtc::DecisionLogic::PacketArrived(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *(a1 + 116) = (*(a1 + 116) | *(a4 + 16)) & 1;
  if (!a3 || (*(a4 + 14) & 1) != 0)
  {
    return 0;
  }

  v5 = *a4;
  if (a2 >= 1 && v5 && v5 != *(a1 + 88))
  {
    *(a1 + 88) = v5;
    v6 = 1000 * v5 / a2;
    if (v6 <= 0)
    {
      v7 = a1;
      v8 = a4;
      v9 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
      a4 = v8;
      v16 = v9;
      a1 = v7;
      if ((v16 & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v10, v11, v8, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/delay_constraints.cc");
        a4 = v8;
        a1 = v7;
      }
    }

    else
    {
      *(a1 + 36) = v6;
    }

    v5 = *a4;
  }

  v17 = a1;
  v18 = a4;
  webrtc::PacketArrivalHistory::Insert(*(a1 + 48), *(a4 + 8), v5);
  if (v19 && (v20 = *(v17 + 48), v20[7] >= 2uLL))
  {
    v24 = (*(*v20 + 16))(v20, *(v18 + 8));
    v25 = *(v17 + 48);
    if (*(v25 + 56))
    {
      v26 = *(v18 + 8);
      if (*(v25 + 36))
      {
        v27 = *(v25 + 32);
        v28 = v26 >= v27;
        v29 = v26 - v27;
        v30 = v29 != 0 && v28;
        if (v29 != 0x80000000)
        {
          v30 = v29 >= 0;
        }

        if (!v30)
        {
          v29 |= 0xFFFFFFFF00000000;
        }

        v26 = v29 + *(v25 + 24);
      }

      v33 = *(v25 + 48);
      v31 = (v25 + 48);
      v32 = v33;
      if (v33)
      {
        do
        {
          v34 = v32;
          v32 = v32[1];
        }

        while (v32);
      }

      else
      {
        do
        {
          v34 = v31[2];
          v35 = *v34 == v31;
          v31 = v34;
        }

        while (v35);
      }

      v36 = v26 != v34[5];
    }

    else
    {
      v36 = 0;
    }

    (*(**(v17 + 8) + 16))(*(v17 + 8), v24, v36);
    v23 = v24 & 0xFFFFFF00;
    v21 = v24;
    v22 = 0x100000000;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  return v22 | v23 | v21;
}

uint64_t webrtc::DecisionLogic::CngOperation(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v3 = result;
    v4 = *a2 + *(a2 + 40) - *(a2 + 16);
    v5 = *(result + 64) * (*(*result + 104))(result);
    v6 = v4 + v5;
    if (-v6 > v5 / 2)
    {
      *(v3 + 80) -= v6;
      if (v5 == 0x80000000)
      {
LABEL_8:
        *(v3 + 80) = 0;
        return 6;
      }

      v4 = -v5;
    }

    if (v4 < 0 && *(a2 + 28) == 9)
    {
      return 7;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::DecisionLogic::NoPacket(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  if (v2 == 9)
  {
    return 7;
  }

  if (v2 == 10)
  {
    if (*(a2 + 40) <= (1000 * *(a1 + 64)))
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  else if (*(a2 + 32))
  {
    return 9;
  }

  else
  {
    return 2;
  }
}

uint64_t webrtc::DecisionLogic::ExpectedPacketAvailable(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 101) & 1) != 0 || *(a2 + 28) == 1 || (*(a2 + 32))
  {
    return 0;
  }

  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), (*a2 - *(a2 + 88)));
  v5 = (*(*a1 + 104))(a1);
  v6 = v5 + (*(**(a1 + 48) + 24))(*(a1 + 48)) + 20;
  if (v4 >= 4 * v6)
  {
    return 4;
  }

  v7 = *(a1 + 104);
  if (v7 && ***v7 - *(*v7 + 8) < v7[1])
  {
    return 0;
  }

  if (v6 > v4)
  {
    if (v4 < v5)
    {
      return 5;
    }

    return 0;
  }

  return 3;
}

uint64_t webrtc::DecisionLogic::FuturePacketAvailable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = *(a1 + 64);
  result = (*(*a1 + 104))(a1);
  if (*(a2 + 24))
  {
    v7 = *(a2 + 40);
    v8 = (*(a2 + 16) - *a2);
    if (v7 < v8 && v4 / v5 <= result + 50)
    {
      v9 = *(a2 + 48);
      v12[2] = *(a2 + 32);
      v12[3] = v9;
      v10 = *(a2 + 80);
      v12[4] = *(a2 + 64);
      v12[5] = v10;
      v11 = *(a2 + 16);
      v12[0] = *a2;
      v12[1] = v11;
      return (*(*a1 + 200))(a1, v12);
    }

    else
    {
      if (v7 != v8)
      {
        (*(**(a1 + 40) + 32))(*(a1 + 40), v4);
      }

      result = *(a2 + 28);
      if ((result - 9) >= 3)
      {
        if (result != 1)
        {
          if (*(a2 + 32))
          {
            return 9;
          }

          else
          {
            return 2;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t webrtc::DecisionLogic::SetMaximumDelay(webrtc::DecisionLogic *this, int a2)
{
  v2 = *(this + 7);
  if (a2)
  {
    v3 = v2 <= a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  if (v4 == 1)
  {
    *(this + 8) = a2;
    v5 = *(this + 5);
    v6 = *(this + 9) * *(this + 4);
    v7 = 3 * v6 / 4;
    if (v6 <= 1)
    {
      v7 = 10000;
    }

    if (a2 <= 0)
    {
      v8 = 10000;
    }

    else
    {
      v8 = a2;
    }

    if (v7 < v8)
    {
      v8 = v7;
    }

    if (v5 < v8)
    {
      v8 = *(this + 5);
    }

    if (v5 <= 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v2 <= v9)
    {
      v2 = v9;
    }

    *(this + 6) = v2;
  }

  return v4;
}

uint64_t webrtc::DecisionLogic::SetMinimumDelay(webrtc::DecisionLogic *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 9) * *(this + 4);
  v3 = 3 * v2 / 4;
  if (v2 <= 1)
  {
    v3 = 10000;
  }

  if (*(this + 8) <= 0)
  {
    v4 = 10000;
  }

  else
  {
    v4 = *(this + 8);
  }

  if (v3 < v4)
  {
    v4 = v3;
  }

  if (v4 < a2)
  {
    return 0;
  }

  v6 = *(this + 5);
  if (v6 < v4)
  {
    v4 = *(this + 5);
  }

  if (v6 <= 0)
  {
    v4 = 0;
  }

  if (a2 > v4)
  {
    v4 = a2;
  }

  *(this + 6) = v4;
  *(this + 7) = a2;
  return 1;
}

BOOL webrtc::DecisionLogic::SetBaseMinimumDelay(webrtc::DecisionLogic *this, unsigned int a2)
{
  if (a2 <= 0x2710)
  {
    v2 = *(this + 9) * *(this + 4);
    if (v2 <= 1)
    {
      v3 = 10000;
    }

    else
    {
      v3 = 3 * v2 / 4;
    }

    if (*(this + 8) <= 0)
    {
      v4 = 10000;
    }

    else
    {
      v4 = *(this + 8);
    }

    if (v3 < v4)
    {
      v4 = v3;
    }

    if (a2 < v4)
    {
      v4 = a2;
    }

    if (!a2)
    {
      v4 = 0;
    }

    if (*(this + 7) > v4)
    {
      v4 = *(this + 7);
    }

    *(this + 5) = a2;
    *(this + 6) = v4;
  }

  return a2 < 0x2711;
}

void webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler::~SynchronizedFrameDecodeScheduler(void (**this)(uint64_t, char *, char *))
{
  *this = &unk_2882927E0;
  if (*(this + 72) == 1)
  {
    this[7](1, this + 40, this + 40);
  }
}

{
  *this = &unk_2882927E0;
  if (*(this + 72) == 1)
  {
    this[7](1, this + 40, this + 40);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler::ScheduledRtpTimestamp(webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler *this)
{
  if (*(this + 72) == 1)
  {
    return *(this + 4) | 0x100000000 | *(this + 4) & 0xFFFFFF00;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler::ScheduleFrame(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(0, a5, v24);
  v25 = *(a5 + 16);
  v10 = v25;
  *(a5 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a5 + 24) = 0;
  LODWORD(v30) = a2;
  *(&v30 + 1) = a3;
  v31 = a4;
  v10(0, v24, v32);
  v11 = v25;
  v33 = v25;
  v25 = absl::internal_any_invocable::EmptyManager;
  v12 = *(a1 + 72);
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  if (v12 == 1)
  {
    (*(a1 + 56))(1, a1 + 40, a1 + 40);
    *(a1 + 56) = absl::internal_any_invocable::EmptyManager;
    *(a1 + 64) = 0;
    (v33)(0, v32, a1 + 40);
    *(a1 + 56) = v33;
  }

  else
  {
    v11(0, v32, a1 + 40);
    *(a1 + 56) = v33;
    *(a1 + 72) = 1;
  }

  *&v33 = absl::internal_any_invocable::EmptyManager;
  *(&v33 + 1) = 0;
  (v25)(1, v24, v24);
  v13 = *(a1 + 8);
  result = (*(**v13 + 16))();
  v15 = result;
  v16 = *(v13 + 24);
  if (v16 - 0x7FFFFFFFFFFFFFFFLL <= 1)
  {
    result = (*(**(v13 + 16) + 24))(*(v13 + 16));
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || result == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(a1 + 72) == 1)
      {
        v18 = *(a1 + 24);
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }

LABEL_30:
      __break(1u);
      return result;
    }

    v19 = result == 0x8000000000000000 || v15 == 0x8000000000000000;
    v16 = result + v15;
    if (v19)
    {
      v16 = 0x8000000000000000;
    }
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    goto LABEL_30;
  }

  v18 = *(a1 + 24);
  v20 = v16 - 5000;
  if (v16 == 0x8000000000000000)
  {
    v20 = 0x8000000000000000;
  }

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v20;
  }

  if (v18 >= v21)
  {
LABEL_25:
    if (v18 >= v15)
    {
      return result;
    }
  }

LABEL_26:
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  (*(a1 + 56))(0, a1 + 40, v28);
  v22 = *(a1 + 56);
  v29 = v22;
  *(a1 + 56) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 64) = 0;
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  v30 = v26;
  v31 = v27;
  (v22)(0, v28, v32);
  v23 = *(&v29 + 1);
  v33 = v29;
  *&v29 = absl::internal_any_invocable::EmptyManager;
  *(&v29 + 1) = 0;
  v34 = v31;
  v23(v32, v30, &v34);
  (v33)(1, v32, v32);
  return (v29)(1, v28, v28);
}

uint64_t webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler::CancelOutstanding(uint64_t this)
{
  if (*(this + 72) == 1)
  {
    v1 = this;
    this = (*(this + 56))(1, this + 40, this + 40);
    *(v1 + 72) = 0;
  }

  return this;
}

void webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler::Stop(webrtc::DecodeSynchronizer::SynchronizedFrameDecodeScheduler *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    (*(*this + 32))(this);
    *(this + 80) = 1;
    v2 = *(this + 1);
    v3 = v2[5];
    if (v3)
    {
      v4 = v2 + 5;
      v5 = v2[5];
      do
      {
        v6 = *(v5 + 32);
        v7 = v6 >= this;
        v8 = v6 < this;
        if (v7)
        {
          v4 = v5;
        }

        v5 = *(v5 + 8 * v8);
      }

      while (v5);
      if (v4 != v2 + 5 && v4[4] <= this)
      {
        v9 = v4[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          v11 = v4;
          do
          {
            v10 = v11[2];
            v12 = *v10 == v11;
            v11 = v10;
          }

          while (!v12);
        }

        if (v2[4] == v4)
        {
          v2[4] = v10;
        }

        --v2[6];
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v4);
        operator delete(v4);
        if (!v2[6])
        {
          v2[3] = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DecodeSynchronizer::ScheduleNextTick(void)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 56) = 0;
  v2 = (*(**v1 + 16))();
  result = (*(**(v1 + 16) + 24))(*(v1 + 16));
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = v2 == 0x7FFFFFFFFFFFFFFFLL || result == 0x7FFFFFFFFFFFFFFFLL;
  if (!v5)
  {
    v4 = 0x8000000000000000;
    if (result != 0x8000000000000000 && v2 != 0x8000000000000000)
    {
      v4 = result + v2;
    }
  }

  *(v1 + 24) = v4;
  v7 = *(v1 + 32);
  if (v7 != (v1 + 40))
  {
    do
    {
      v8 = v7[4];
      result = (*(*v8 + 16))(v8);
      if ((result & 0x100000000) != 0)
      {
        if ((*(v8 + 72) & 1) == 0)
        {
          __break(1u);
          return result;
        }

        if (*(v8 + 24) < *(v1 + 24))
        {
          v14 = *(v8 + 16);
          v15 = *(v8 + 32);
          (*(v8 + 56))(0, v8 + 40, v16);
          v9 = *(v8 + 56);
          v17 = v9;
          *(v8 + 56) = absl::internal_any_invocable::EmptyManager;
          *(v8 + 64) = 0;
          if (*(v8 + 72) == 1)
          {
            *(v8 + 72) = 0;
          }

          v18 = v14;
          v19 = v15;
          (v9)(0, v16, v20);
          v10 = *(&v17 + 1);
          v21 = v17;
          *&v17 = absl::internal_any_invocable::EmptyManager;
          *(&v17 + 1) = 0;
          v22 = v19;
          v10(v20, v18, &v22);
          (v21)(1, v20, v20);
          result = (v17)(1, v16, v16);
        }
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v5 = *v12 == v7;
          v7 = v12;
        }

        while (!v5);
      }

      v7 = v12;
    }

    while (v12 != (v1 + 40));
  }

  if (*(v1 + 48) && (*(v1 + 56) & 1) == 0)
  {
    *(v1 + 56) = 1;
    v13 = *(v1 + 64);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed);
    }

    operator new();
  }

  return result;
}

int *webrtc::DecodeTimePercentileFilter::AddTiming(int *this)
{
  if (*this > 4)
  {
    webrtc::PercentileFilter<long long>::Insert();
  }

  ++*this;
  return this;
}

uint64_t webrtc::PercentileFilter<long long>::Erase(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 2;
  v5 = a1[2];
  do
  {
    if (v5[4] >= v3)
    {
      v4 = v5;
    }

    v5 = v5[v5[4] < v3];
  }

  while (v5);
  if (v4 == a1 + 2 || v4[4] != v3)
  {
    return 0;
  }

  v6 = v4[1];
  if (v4 == a1[4])
  {
    if (v6)
    {
      do
      {
        v9 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v16 = v4;
      do
      {
        v9 = v16[2];
        v11 = *v9 == v16;
        v16 = v9;
      }

      while (!v11);
    }

    if (a1[1] == v4)
    {
      a1[1] = v9;
    }

    --a1[3];
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v2, v4);
    operator delete(v4);
    v14 = a1;
    a1[4] = v9;
  }

  else
  {
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
      v10 = v4;
      do
      {
        v7 = v10[2];
        v11 = *v7 == v10;
        v10 = v7;
      }

      while (!v11);
    }

    if (a1[1] == v4)
    {
      a1[1] = v7;
    }

    --a1[3];
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v2, v4);
    operator delete(v4);
    v14 = a1;
    v15 = *a2;
    v9 = a1[4];
    if (v15 <= v9[4])
    {
      --a1[5];
    }
  }

  v18 = *(v14 + 3);
  if (v18)
  {
    v19 = *v14 * (v18 - 1);
    v20 = v19 - *(v14 + 5);
    if (v20 < 0)
    {
      do
      {
        v25 = *v9;
        if (*v9)
        {
          do
          {
            v23 = v25;
            v25 = v25[1];
          }

          while (v25);
        }

        else
        {
          do
          {
            v23 = v9[2];
            v11 = *v23 == v9;
            v9 = v23;
          }

          while (v11);
        }

        v9 = v23;
      }

      while (!__CFADD__(v20++, 1));
    }

    else
    {
      if (!v20)
      {
        goto LABEL_48;
      }

      do
      {
        v22 = v9[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v9[2];
            v11 = *v23 == v9;
            v9 = v23;
          }

          while (!v11);
        }

        v9 = v23;
      }

      while (v20-- > 1);
    }

    *(v14 + 4) = v23;
LABEL_48:
    *(v14 + 5) = v19;
  }

  return 1;
}

void **std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v4 = result + 5;
  }

  else
  {
    v4 = result + 5;
    v5 = result[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    while (v8 != *(v2 + (((result[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 40) + v5))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 16;
      if (v8 - v7 == 4096)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = v1[2];
      v2 = (v1[1] + 8);
      v1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 128;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 256;
  }

  v1[4] = v11;
LABEL_15:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = v1[1];
    v13 = v1[2];
    if (v13 != v14)
    {
      v1[2] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  if (*v1)
  {
    operator delete(*v1);
  }

  return v1;
}

uint64_t webrtc::video_coding::DecodedFramesHistory::InsertDecoded(uint64_t this, unint64_t a2, int a3)
{
  *(this + 40) = a2;
  *(this + 48) = 1;
  *(this + 56) = a3;
  *(this + 60) = 1;
  v3 = *(this + 8);
  if (((a2 % v3) & 0x80000000) != 0)
  {
    v4 = a2 % v3 + v3;
  }

  else
  {
    v4 = (a2 % v3) & 0x7FFFFFFF;
  }

  if (*(this + 32) != 1)
  {
    goto LABEL_53;
  }

  v5 = *(this + 24);
  v6 = a2 - v5;
  v7 = v5 % v3;
  if ((v7 & 0x80000000) != 0)
  {
    v8 = v7 + v3;
  }

  else
  {
    v8 = v7 & 0x7FFFFFFF;
  }

  if (v6 >= v3)
  {
    if (v3 < 1)
    {
      goto LABEL_53;
    }

    v9 = *this;
    v21 = v3 >> 6;
    if (v3 >= 0x40)
    {
      v22 = this;
      v23 = a2;
      bzero(*this, 8 * v21);
      a2 = v23;
      this = v22;
    }

    v19 = v3 & 0x3F;
    if ((v3 & 0x3F) == 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v20 = &v9[8 * v21];
    goto LABEL_52;
  }

  v9 = *this;
  if (v4 <= v8)
  {
    if (v8 < 0)
    {
      v24 = -((63 - v8) >> 6);
    }

    else
    {
      v24 = v8 >> 6;
    }

    v25 = &v9[8 * v24 + ((((v8 & 0x3Fu) + 1) >> 3) & 8)];
    v26 = (v8 + 1) & 0x3F;
    v27 = (*(this + 8) & 0x3FLL) - v26 + 8 * (&v9[8 * (*(this + 8) >> 6)] - v25);
    if (v27 >= 1)
    {
      if (v26)
      {
        if ((64 - v26) >= v27)
        {
          v28 = (*(this + 8) & 0x3FLL) - v26 + 8 * (&v9[8 * (*(this + 8) >> 6)] - v25);
        }

        else
        {
          v28 = (64 - v26);
        }

        *v25++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v26 - v28)) & (-1 << v26));
        v27 -= v28;
      }

      v29 = v27 >> 6;
      if (v27 >= 0x40)
      {
        v30 = this;
        v31 = a2;
        bzero(v25, 8 * v29);
        a2 = v31;
        this = v30;
      }

      if ((v27 & 0x3F) != 0)
      {
        v25[v29] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v27 & 0x3F));
      }
    }

    if (v4 < 0)
    {
      v32 = -((63 - v4) >> 6);
    }

    else
    {
      v32 = v4 >> 6;
    }

    if ((v4 & 0x3F | (v32 << 6)) < 1)
    {
      goto LABEL_53;
    }

    v19 = v4 & 0x3F;
    v21 = v32 & 0x3FFFFFFFFFFFFFFLL;
    if (v32)
    {
      v33 = this;
      v34 = a2;
      bzero(v9, 8 * v21);
      a2 = v34;
      this = v33;
    }

    if ((v4 & 0x3F) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v8 < 0)
  {
    v10 = -((63 - v8) >> 6);
  }

  else
  {
    v10 = v8 >> 6;
  }

  v11 = &v9[8 * v10 + ((((v8 & 0x3Fu) + 1) >> 3) & 8)];
  v12 = (v8 + 1) & 0x3F;
  if (v4 < 0)
  {
    v13 = -((63 - v4) >> 6);
  }

  else
  {
    v13 = v4 >> 6;
  }

  v14 = (v4 & 0x3F) - v12 + 8 * (&v9[8 * v13] - v11);
  if (v14 >= 1)
  {
    if (v12)
    {
      if ((64 - v12) >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = (64 - v12);
      }

      *v11++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v12 - v15)) & (-1 << v12));
      v14 -= v15;
    }

    v16 = v14 >> 6;
    if (v14 >= 0x40)
    {
      v17 = this;
      v18 = a2;
      bzero(v11, 8 * v16);
      a2 = v18;
      this = v17;
    }

    v19 = v14 & 0x3F;
    if ((v14 & 0x3F) != 0)
    {
      v20 = &v11[v16];
LABEL_52:
      *v20 &= ~(0xFFFFFFFFFFFFFFFFLL >> -v19);
    }
  }

LABEL_53:
  if (*(this + 8) <= v4)
  {
    __break(1u);
  }

  else
  {
    *(*this + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
    *(this + 24) = a2;
    *(this + 32) = 1;
  }

  return this;
}

uint64_t webrtc::video_coding::DecodedFramesHistory::Clear(uint64_t this)
{
  if (*(this + 60) == 1)
  {
    *(this + 60) = 0;
  }

  if (*(this + 48) == 1)
  {
    *(this + 48) = 0;
  }

  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = *this;
    v3 = v1 >> 6;
    if (v1 >= 0x40)
    {
      v4 = this;
      bzero(*this, 8 * v3);
      this = v4;
    }

    if ((v1 & 0x3F) != 0)
    {
      v2[v3] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v1 & 0x3F));
    }
  }

  if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
  }

  return this;
}

void webrtc::VCMDecoderDatabase::DeregisterExternalDecoder(webrtc::VCMDecoderDatabase *this, unsigned int a2)
{
  v2 = *(this + 13);
  if (v2)
  {
    v3 = this + 104;
    do
    {
      v4 = v2[32];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[8 * v6];
    }

    while (v2);
    if (v3 != this + 104 && v3[32] <= a2)
    {
      if (*(this + 64) == 1)
      {
        v7 = *(this + 2);
        if (v7 == *(v3 + 5))
        {
          v8 = this;
          (*(*v7 + 48))(*(this + 2));
          this = v8;
          if (*(v8 + 55) < 0)
          {
            operator delete(*(v8 + 4));
            this = v8;
          }

          *(this + 64) = 0;
        }
      }

      v9 = *(v3 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        v11 = v3;
        do
        {
          v10 = *(v11 + 2);
          v12 = *v10 == v11;
          v11 = v10;
        }

        while (!v12);
      }

      if (*(this + 12) == v3)
      {
        *(this + 12) = v10;
      }

      v13 = *(this + 13);
      --*(this + 14);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v13, v3);
      v14 = *(v3 + 5);
      *(v3 + 5) = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      operator delete(v3);
    }
  }
}

void webrtc::VCMDecoderDatabase::RegisterExternalDecoder(webrtc::VCMDecoderDatabase *a1, unsigned int a2, uint64_t *a3)
{
  webrtc::VCMDecoderDatabase::DeregisterExternalDecoder(a1, a2);
  v6 = *a3;
  if (*a3)
  {
    *a3 = 0;
    v7 = *(a1 + 13);
    if (!v7)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v8 = v7;
        v9 = *(v7 + 32);
        if (v9 <= a2)
        {
          break;
        }

        v7 = *v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v7 = v8[1];
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v10 = *(*v6 + 8);

    v10(v6);
  }
}

char *webrtc::VCMDecoderDatabase::GetDecoder(webrtc::VCMDecoderDatabase *this, const webrtc::EncodedFrame *a2, webrtc::VCMDecodedFrameCallback *a3)
{
  v3 = *(a2 + 416);
  if (v3 == *(this + 1))
  {
    v4 = *(this + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = this + 8;
  if ((v4 & 1) != 0 || !*(a2 + 416))
  {
    if (!*(this + 64))
    {
      return 0;
    }

    return v5;
  }

  if (*(this + 64))
  {
    v8 = a2;
    (*(**(this + 2) + 48))(*(this + 2));
    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    *(this + 64) = 0;
    a2 = v8;
    if (*(this + 2) == 1)
    {
      *(this + 2) = 0;
    }
  }

  webrtc::VCMDecoderDatabase::CreateAndInitDecoder(this, a2);
  if (*(this + 64) != 1)
  {
    return 0;
  }

  result = (*(**(a3 + 3) + 16))(*(a3 + 3), v3);
  if ((*(this + 64) & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  *(this + 1) = a3;
  result = (*(**(this + 2) + 40))(*(this + 2), a3);
  v10 = result;
  v11 = *(this + 55);
  if (v11 < 0)
  {
    v11 = *(this + 5);
  }

  if (v11)
  {
    result = (*(**(a3 + 3) + 24))(*(a3 + 3), this + 32);
  }

  if ((v10 & 0x80000000) == 0)
  {
    *(this + 1) = v3 | 0x100;
    if (*(this + 64))
    {
      return v5;
    }

    goto LABEL_28;
  }

  if (*(this + 64) != 1)
  {
    return 0;
  }

  (*(**(this + 2) + 48))(*(this + 2));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  *(this + 64) = 0;
  return 0;
}

void webrtc::VCMDecoderDatabase::CreateAndInitDecoder(webrtc::VCMDecoderDatabase *this, const webrtc::EncodedFrame *a2)
{
  v2 = *(a2 + 416);
  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 80;
  do
  {
    v5 = v3[28];
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == this + 80 || v2 < v4[28])
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/decoder_database.cc");
    }

    return;
  }

  v15 = *(this + 13);
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = this + 104;
  do
  {
    v17 = v15[32];
    v6 = v17 >= v2;
    v18 = v17 < v2;
    if (v6)
    {
      v16 = v15;
    }

    v15 = *&v15[8 * v18];
  }

  while (v15);
  if (v16 == this + 104 || v2 < v16[32])
  {
LABEL_20:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return;
    }

LABEL_21:
    webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/decoder_database.cc");
    return;
  }

  v26 = *(v16 + 5);
  if (*(this + 64) == 1)
  {
    v27 = this;
    v28 = a2;
    webrtc::VCMGenericDecoder::~VCMGenericDecoder((this + 8));
    a2 = v28;
    this = v27;
  }

  *(this + 1) = 0;
  *(this + 2) = v26;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  *(this + 64) = 1;
  v29 = *(a2 + 2);
  if (v29 >= 1)
  {
    v30 = *(a2 + 3);
    if (v30 >= 1)
    {
      *(v4 + 5) = v29 | (v30 << 32);
      if ((*(this + 64) & 1) == 0)
      {
        __break(1u);
        return;
      }
    }
  }

  v31 = this;
  if ((webrtc::VCMGenericDecoder::Configure((this + 8), (v4 + 32)) & 1) == 0)
  {
    if (*(v31 + 64) == 1)
    {
      webrtc::VCMGenericDecoder::~VCMGenericDecoder((v31 + 8));
      *(v31 + 64) = 0;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_21;
    }
  }
}