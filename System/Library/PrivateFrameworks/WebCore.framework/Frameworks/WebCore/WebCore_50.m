uint64_t webrtc::RtpPacketHistory::GetPacketAndMarkAsPending@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void (*a4)(uint64_t, void)@<X3>, void *a5@<X8>)
{
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 88))
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 144);
  if (!v10 || (v11 = *(*(*(*(a1 + 112) + 8 * (*(a1 + 136) / 0x66uLL)) + 40 * (*(a1 + 136) % 0x66uLL)) + 4), v11 == a2))
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = a2 - v11;
  if (a2 - v11 == 0x8000)
  {
    if (v11 < a2)
    {
      v12 = 0x8000;
      goto LABEL_5;
    }

LABEL_25:
    if (v11 < a2)
    {
LABEL_27:
      *a5 = 0;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((v12 & 0x8000) != 0)
  {
    goto LABEL_25;
  }

  if (v11 > a2)
  {
    v12 += 0x10000;
    goto LABEL_5;
  }

LABEL_26:
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_5:
  if (v10 <= v12)
  {
    goto LABEL_27;
  }

  v13 = *(*(a1 + 112) + 8 * ((*(a1 + 136) + v12) / 0x66)) + 40 * ((*(a1 + 136) + v12) % 0x66);
  if (!*v13 || *(v13 + 8) == 1)
  {
    goto LABEL_27;
  }

  if (*(v13 + 32))
  {
    v14 = (*(**a1 + 16))();
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = *(v13 + 16);
      v16 = 0x8000000000000000;
      if (v15 != 0x8000000000000000)
      {
        if (v15 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x8000000000000000)
        {
          v16 = v14 - v15;
        }

        if (v16 < *(a1 + 96))
        {
          goto LABEL_27;
        }
      }
    }
  }

  a4(a3, *v13);
  if (*a5)
  {
    *(v13 + 8) = 1;
  }

LABEL_28:

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t webrtc::RtpPacketHistory::MarkPacketAsSent(webrtc::RtpPacketHistory *this, unsigned int a2)
{
  pthread_mutex_lock((this + 16));
  if (!*(this + 22))
  {
    goto LABEL_8;
  }

  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(*(*(*(this + 14) + 8 * (*(this + 17) / 0x66uLL)) + 40 * (*(this + 17) % 0x66uLL)) + 4);
    if (v5 != a2)
    {
      v6 = a2 - v5;
      if (a2 - v5 == 0x8000)
      {
        if (v5 < a2)
        {
          v6 = 0x8000;
          goto LABEL_5;
        }
      }

      else if ((v6 & 0x8000) == 0)
      {
        if (v5 > a2)
        {
          v6 += 0x10000;
          goto LABEL_5;
        }

LABEL_18:
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_5;
      }

      if (v5 < a2)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_5:
  if (v4 > v6)
  {
    v7 = *(*(this + 14) + 8 * ((*(this + 17) + v6) / 0x66)) + 40 * ((*(this + 17) + v6) % 0x66);
    if (*v7)
    {
      *(v7 + 16) = (*(**this + 16))();
      *(v7 + 8) = 0;
      ++*(v7 + 32);
    }
  }

LABEL_8:

  return pthread_mutex_unlock((this + 16));
}

uint64_t webrtc::RtpPacketHistory::GetPayloadPaddingPacket@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 88))
  {
LABEL_14:
    *a4 = 0;
    return pthread_mutex_unlock((a1 + 16));
  }

  if (*(a1 + 8) != 1 || *(a1 + 368) != 1)
  {
    v8 = *(a1 + 144);
    if (v8)
    {
      v9 = *(a1 + 112);
      if (*(a1 + 120) != v9)
      {
        v10 = *(a1 + 136);
        v11 = v10 + v8;
        v12 = (v9 + 8 * ((v10 + v8) / 0x66));
        v13 = *v12;
        v14 = *v12 + 40 * (v11 % 0x66);
        v15 = *(v9 + 8 * (v10 / 0x66)) + 40 * (v10 % 0x66);
        while (v15 != v14)
        {
          if (v14 == v13)
          {
            v16 = *--v12;
            v13 = v16;
            v14 = v16 + 4080;
            if (*(v16 + 4040))
            {
              goto LABEL_13;
            }
          }

          else if (*(v14 - 40))
          {
LABEL_13:
            if (*(v14 - 32) == 1)
            {
              goto LABEL_14;
            }

            (a3)(&v19, a2, *(v14 - 40));
            v18 = v19;
            if (v19)
            {
              *(v14 - 24) = (*(**a1 + 16))();
              ++*(v14 - 8);
              v18 = v19;
            }

            *a4 = v18;
            return pthread_mutex_unlock((a1 + 16));
          }

          v14 -= 40;
        }
      }
    }

    goto LABEL_14;
  }

  a3(a2, a1 + 160);
  return pthread_mutex_unlock((a1 + 16));
}

uint64_t webrtc::RtpPacketHistory::CullAcknowledgedPackets(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 16));
  if (a3)
  {
    v6 = &a2[a3];
    while (1)
    {
      v7 = *(a1 + 144);
      if (!v7 || (v8 = *a2, v9 = *(*(*(*(a1 + 112) + 8 * (*(a1 + 136) / 0x66uLL)) + 40 * (*(a1 + 136) % 0x66uLL)) + 4), v9 == v8))
      {
        v10 = 0;
        goto LABEL_8;
      }

      v10 = v8 - v9;
      if (v8 - v9 == 0x8000)
      {
        break;
      }

      if ((v10 & 0x8000) != 0)
      {
        goto LABEL_31;
      }

      if (v9 > v8)
      {
        v10 += 0x10000;
LABEL_8:
        v11 = v10;
        if (v7 > v10)
        {
          v12 = *(a1 + 136);
          v13 = *(a1 + 112);
          v14 = v13[(v12 + v11) / 0x66];
          v15 = 40 * ((v12 + v11) % 0x66);
          v16 = *&v14[v15];
          *&v14[v15] = 0;
          if (!v11)
          {
            do
            {
              if (*(v13[v12 / 0x66] + 5 * (v12 % 0x66)))
              {
                break;
              }

              --v7;
              *(a1 + 136) = ++v12;
              *(a1 + 144) = v7;
              if (v12 >= 0xCC)
              {
                operator delete(*v13);
                v13 = (*(a1 + 112) + 8);
                *(a1 + 112) = v13;
                v7 = *(a1 + 144);
                v12 = *(a1 + 136) - 102;
                *(a1 + 136) = v12;
              }
            }

            while (v7);
          }

          if (v16)
          {
            v17 = v16[22];
            if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 8))(v17);
            }

            v18 = v16[11];
            if (v18 && atomic_fetch_add((v18 + 24), 0xFFFFFFFF) == 1)
            {
              v19 = *(v18 + 16);
              *(v18 + 16) = 0;
              if (v19)
              {
                MEMORY[0x2743DA520](v19, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v18, 0x1010C40EE34DA14);
            }

            v20 = v16[7];
            if (v20)
            {
              v16[8] = v20;
              operator delete(v20);
            }

            MEMORY[0x2743DA540](v16, 0x1020C4060F6C936);
          }
        }

        goto LABEL_4;
      }

LABEL_32:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_4:
      if (++a2 == v6)
      {
        goto LABEL_34;
      }
    }

    if (v9 < v8)
    {
      v10 = 0x8000;
      goto LABEL_8;
    }

LABEL_31:
    if (v9 < v8)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

LABEL_34:

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t webrtc::RtpPacketHistory::Clear(webrtc::RtpPacketHistory *this)
{
  pthread_mutex_lock((this + 16));
  std::deque<webrtc::RtpPacketHistory::StoredPacket>::clear(this + 13);
  if (*(this + 368) == 1)
  {
    v2 = *(this + 42);
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 31);
    if (v3 && atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        MEMORY[0x2743DA520](v4, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
    }

    v5 = *(this + 27);
    if (v5)
    {
      *(this + 28) = v5;
      operator delete(v5);
    }

    *(this + 368) = 0;
  }

  return pthread_mutex_unlock((this + 16));
}

void std::deque<webrtc::RtpPacketHistory::StoredPacket>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v15 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x66];
    v6 = *v5;
    v7 = *v5 + 40 * (v4 % 0x66);
    v8 = v2[(a1[5] + v4) / 0x66] + 40 * ((a1[5] + v4) % 0x66);
    if (v7 != v8)
    {
      while (v7)
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          v10 = v9[22];
          if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 8))(v10);
          }

          v11 = v9[11];
          if (v11 && atomic_fetch_add((v11 + 24), 0xFFFFFFFF) == 1)
          {
            v12 = *(v11 + 16);
            *(v11 + 16) = 0;
            if (v12)
            {
              MEMORY[0x2743DA520](v12, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v11, 0x1010C40EE34DA14);
          }

          v13 = v9[7];
          if (v13)
          {
            v9[8] = v13;
            operator delete(v13);
          }

          MEMORY[0x2743DA540](v9, 0x1020C4060F6C936);
          v6 = *v5;
        }

        v7 += 40;
        if (v7 - v6 == 4080)
        {
          v14 = v5[1];
          ++v5;
          v6 = v14;
          v7 = v14;
        }

        if (v7 == v8)
        {
          v2 = a1[1];
          v3 = a1[2];
          goto LABEL_21;
        }
      }

      __break(1u);
      return;
    }

LABEL_21:
    a1[5] = 0;
    v15 = v3 - v2;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v2);
        v16 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v15 = (v16 - v2) >> 3;
      }

      while (v15 > 2);
    }
  }

  if (v15 == 1)
  {
    v17 = 51;
  }

  else
  {
    if (v15 != 2)
    {
      return;
    }

    v17 = 102;
  }

  a1[4] = v17;
}

uint64_t webrtc::RtpPacketReceived::RtpPacketReceived(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(result + 47) = *(a2 + 47);
  *(result + 16) = v3;
  *(result + 32) = v4;
  *result = v2;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = *(a2 + 11);
  *(result + 80) = *(a2 + 10);
  *(result + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 24), 1u, memory_order_relaxed);
  }

  *(result + 96) = a2[6];
  v8 = a2[7];
  *(result + 128) = *(a2 + 128);
  *(result + 112) = v8;
  v9 = *(a2 + 17);
  *(result + 136) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t webrtc::RtpPacketReceived::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  v8 = (a1 + 56);
  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 10);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  v10 = *(a2 + 11);
  *(a2 + 11) = 0;
  v11 = *(a1 + 88);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  if (v11 && atomic_fetch_add((v11 + 24), 0xFFFFFFFF) == 1)
  {
    v12 = *(v11 + 16);
    *(v11 + 16) = 0;
    if (v12)
    {
      MEMORY[0x2743DA520](v12, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v11, 0x1010C40EE34DA14);
  }

  *(a1 + 96) = a2[6];
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v13 = a2[7];
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v13;
  v14 = *(a2 + 17);
  *(a2 + 17) = 0;
  v15 = *(a1 + 136);
  *(a1 + 136) = v14;
  if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

__n128 webrtc::RtpPacketReceived::GetHeader(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 2) = *(a1 + 4);
  result.n128_u64[0] = *(a1 + 8);
  *(a2 + 4) = result.n128_u64[0];
  v7 = *(a1 + 96);
  v8 = *(*(a1 + 88) + 16);
  if ((*(v8 + v7) & 0xF) != 0)
  {
    operator new();
  }

  *(a2 + 12) = 0;
  *(a2 + 80) = *(a1 + 2);
  *(a2 + 88) = *(a1 + 16);
  if (!*(a1 + 33))
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v9 == v2)
  {
    goto LABEL_13;
  }

  while (*v9 != *(a1 + 33))
  {
    v9 += 4;
    if (v9 == v2)
    {
      goto LABEL_13;
    }
  }

  if (v9[1] == 3)
  {
    v10 = (v8 + v7 + *(v9 + 1));
    v11 = *v10;
    v2 = v11;
    v12 = v10[2] | (v11 << 16) | (v10[1] << 8);
    if ((v2 & 0x80000000) != 0)
    {
      v12 |= 0xFF000000;
    }

    *(a2 + 100) = v12;
    *(a2 + 96) = 1;
    v13 = *(a1 + 37);
    if (!*(a1 + 37))
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_13:
    *(a2 + 96) = 0;
    v13 = *(a1 + 37);
    if (!*(a1 + 37))
    {
      goto LABEL_21;
    }
  }

  v14 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v14 == v2)
  {
    goto LABEL_21;
  }

  while (*v14 != v13)
  {
    v14 += 4;
    if (v14 == v2)
    {
      goto LABEL_21;
    }
  }

  if (v14[1] != 3)
  {
LABEL_21:
    *(a2 + 104) = 0;
    v16 = *(a1 + 38);
    if (!*(a1 + 38))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v15 = (v8 + v7 + *(v14 + 1));
  v2 = v15[1];
  *(a2 + 108) = (*v15 << 16) | (v2 << 8) | v15[2];
  *(a2 + 104) = 1;
  v16 = *(a1 + 38);
  if (!*(a1 + 38))
  {
    goto LABEL_25;
  }

LABEL_22:
  v17 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v17 != v2)
  {
    while (*v17 != v16)
    {
      v17 += 4;
      if (v17 == v2)
      {
        goto LABEL_25;
      }
    }

    v25 = *(a1 + 88);
    if (v25)
    {
      v25 = *(v25 + 16) + *(a1 + 96);
    }

    v2 = v17[1];
    if (v17[1])
    {
      v26 = *(v17 + 1);
      *v102 = 0;
      *&v102[3] = 0;
      if (v2 == 16 || v2 == 8)
      {
        v28 = v25 + v26;
        v19 = (*(v25 + v26) << 48) | (*(v25 + v26 + 1) << 40) | (*(v25 + v26 + 2) << 32) | (*(v25 + v26 + 3) << 24) | (*(v25 + v26 + 4) << 16) | *(v25 + v26 + 6) | (*(v25 + v26 + 5) << 8);
        v18 = *(v28 + 7);
        if (v2 == 8)
        {
          v2 = 0;
          v3 = 0;
        }

        else
        {
          v2 = bswap64(*(v28 + 8));
          v3 = 1;
        }

        v20 = 1;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v2 = 0;
        v3 = 0;
        v20 = 0;
      }

      goto LABEL_26;
    }
  }

LABEL_25:
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_26:
  *(a2 + 112) = v18 | (v19 << 8);
  *(a2 + 120) = v2;
  *(a2 + 128) = v3;
  *(a2 + 129) = *v102;
  *(a2 + 132) = *&v102[3];
  *(a2 + 136) = v20;
  if (!*(a1 + 41))
  {
    goto LABEL_30;
  }

  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  if (v21 == v22)
  {
    goto LABEL_30;
  }

  while (*v21 != *(a1 + 41))
  {
    v21 += 4;
    if (v21 == v22)
    {
      goto LABEL_30;
    }
  }

  v29 = *(a1 + 88);
  if (v29)
  {
    v30 = *(v29 + 16) + *(a1 + 96);
    v31 = v21[1];
    if (!v21[1])
    {
      goto LABEL_30;
    }
  }

  else
  {
    v30 = 0;
    v31 = v21[1];
    if (!v21[1])
    {
      goto LABEL_30;
    }
  }

  if (v31 != 4 && v31 != 2)
  {
LABEL_30:
    if (!*(a1 + 40))
    {
      goto LABEL_52;
    }

    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    if (v23 == v24)
    {
      goto LABEL_52;
    }

    while (*v23 != *(a1 + 40))
    {
      v23 += 4;
      if (v23 == v24)
      {
        goto LABEL_52;
      }
    }

    v32 = *(a1 + 88);
    if (v32)
    {
      v32 = *(v32 + 16) + *(a1 + 96);
    }

    if (v23[1] != 2)
    {
LABEL_52:
      v33 = 0;
      goto LABEL_53;
    }

    *(a2 + 146) = bswap32(*(v32 + *(v23 + 1))) >> 16;
    goto LABEL_161;
  }

  v87 = (v30 + *(v21 + 1));
  *(a2 + 146) = bswap32(*v87) >> 16;
  if (*(a2 + 156) == 1)
  {
    *(a2 + 156) = 0;
  }

  if (v31 != 4)
  {
LABEL_161:
    v33 = 1;
    goto LABEL_53;
  }

  v88 = *(v87 + 2);
  v89 = *(v87 + 3) | ((v88 & 0x7F) << 8);
  v33 = 1;
  if (v89)
  {
    *(a2 + 156) = 1;
    *(a2 + 148) = (v88 >> 7) | (v89 << 32);
  }

LABEL_53:
  *(a2 + 144) = v33;
  LODWORD(v34) = *(a1 + 34);
  if (*(a1 + 34))
  {
    v35 = *(a1 + 56);
    v36 = *(a1 + 64);
    if (v35 == v36)
    {
      goto LABEL_63;
    }

    while (*v35 != v34)
    {
      v35 += 4;
      if (v35 == v36)
      {
        goto LABEL_63;
      }
    }

    v34 = *(a1 + 88);
    if (v34)
    {
      v34 = *(v34 + 16) + *(a1 + 96);
    }

    if (v35[1] != 1)
    {
LABEL_63:
      v37 = 0;
      LOBYTE(v34) = 0;
    }

    else
    {
      v38 = *(v34 + *(v35 + 1));
      v37 = (v38 >> 7) | ((v38 & 0x7F) << 32);
      LOBYTE(v34) = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  *(a2 + 352) = v37;
  *(a2 + 360) = v34;
  if (!*(a1 + 39))
  {
    goto LABEL_74;
  }

  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  if (v39 == v40)
  {
    goto LABEL_74;
  }

  while (*v39 != *(a1 + 39))
  {
    v39 += 4;
    if (v39 == v40)
    {
      goto LABEL_74;
    }
  }

  v41 = *(a1 + 88);
  if (v41)
  {
    v41 = *(v41 + 16) + *(a1 + 96);
  }

  if (v39[1] == 1)
  {
    *(a2 + 164) = 90 * (*(v41 + *(v39 + 1)) & 3);
    *(a2 + 160) = 1;
    v42 = *(a1 + 43);
    if (!*(a1 + 43))
    {
      goto LABEL_86;
    }
  }

  else
  {
LABEL_74:
    *(a2 + 160) = 0;
    v42 = *(a1 + 43);
    if (!*(a1 + 43))
    {
      goto LABEL_86;
    }
  }

  v43 = *(a1 + 56);
  v44 = *(a1 + 64);
  if (v43 == v44)
  {
    goto LABEL_86;
  }

  while (*v43 != v42)
  {
    v43 += 4;
    if (v43 == v44)
    {
      goto LABEL_86;
    }
  }

  v45 = *(a1 + 88);
  if (v45)
  {
    v45 = *(v45 + 16) + *(a1 + 96);
  }

  if (!v43[1] || v43[1] != 1 || (v46 = *(v45 + *(v43 + 1)), v46 > 0x3F))
  {
LABEL_86:
    *(a2 + 168) = 0;
    v47 = *(a1 + 45);
    if (!*(a1 + 45))
    {
      goto LABEL_97;
    }

    goto LABEL_87;
  }

  *(a2 + 169) = v46 & 1;
  *(a2 + 168) = 1;
  v47 = *(a1 + 45);
  if (!*(a1 + 45))
  {
    goto LABEL_97;
  }

LABEL_87:
  v48 = *(a1 + 56);
  v49 = *(a1 + 64);
  if (v48 == v49)
  {
    goto LABEL_97;
  }

  while (*v48 != v47)
  {
    v48 += 4;
    if (v48 == v49)
    {
      goto LABEL_97;
    }
  }

  v50 = *(a1 + 88);
  if (v50)
  {
    v50 = *(v50 + 16) + *(a1 + 96);
  }

  v51 = v48[1];
  if (!v48[1])
  {
    goto LABEL_97;
  }

  v52 = (v50 + *(v48 + 1));
  if (v51 != 12)
  {
    if (v51 == 13)
    {
      v53 = 0;
      v54 = *v52;
      goto LABEL_176;
    }

LABEL_97:
    *(a2 + 170) = 0;
    v55 = *(a1 + 46);
    if (!*(a1 + 46))
    {
      goto LABEL_101;
    }

    goto LABEL_98;
  }

  v54 = 0;
  v53 = -1;
LABEL_176:
  *(a2 + 184) = v54;
  v101 = &v52[v53];
  *(a2 + 172) = bswap32(*(v101 + 1)) >> 16;
  *(a2 + 174) = bswap32(*(v101 + 3)) >> 16;
  *(a2 + 176) = bswap32(*(v101 + 5)) >> 16;
  *(a2 + 178) = bswap32(*(v101 + 7)) >> 16;
  *(a2 + 180) = bswap32(*(v101 + 9)) >> 16;
  *(a2 + 182) = bswap32(*(v101 + 11)) >> 16;
  *(a2 + 170) = 1;
  v55 = *(a1 + 46);
  if (!*(a1 + 46))
  {
    goto LABEL_101;
  }

LABEL_98:
  v56 = *(a1 + 56);
  v57 = *(a1 + 64);
  if (v56 != v57)
  {
    while (*v56 != v55)
    {
      v56 += 4;
      if (v56 == v57)
      {
        goto LABEL_101;
      }
    }

    v64 = *(a1 + 88);
    if (v64)
    {
      v65 = *(v64 + 16) + *(a1 + 96);
      v66 = v56[1];
      if (!v56[1])
      {
        goto LABEL_101;
      }
    }

    else
    {
      v65 = 0;
      v66 = v56[1];
      if (!v56[1])
      {
        goto LABEL_101;
      }
    }

    v90 = *(v56 + 1);
    if (*(v65 + v90))
    {
      v91 = strnlen((v65 + v90), v66);
      std::string::__assign_external((a2 + 208), (v65 + v90), v91);
    }
  }

LABEL_101:
  if (*(a1 + 47))
  {
    v58 = *(a1 + 56);
    v59 = *(a1 + 64);
    if (v58 != v59)
    {
      while (*v58 != *(a1 + 47))
      {
        v58 += 4;
        if (v58 == v59)
        {
          goto LABEL_105;
        }
      }

      v67 = *(a1 + 88);
      if (v67)
      {
        v68 = *(v67 + 16) + *(a1 + 96);
        v69 = v58[1];
        if (!v58[1])
        {
          goto LABEL_105;
        }
      }

      else
      {
        v68 = 0;
        v69 = v58[1];
        if (!v58[1])
        {
          goto LABEL_105;
        }
      }

      v92 = *(v58 + 1);
      if (*(v68 + v92))
      {
        v93 = strnlen((v68 + v92), v69);
        std::string::__assign_external((a2 + 232), (v68 + v92), v93);
      }
    }
  }

LABEL_105:
  if (*(a1 + 48))
  {
    v60 = *(a1 + 56);
    v61 = *(a1 + 64);
    if (v60 != v61)
    {
      while (*v60 != *(a1 + 48))
      {
        v60 += 4;
        if (v60 == v61)
        {
          goto LABEL_109;
        }
      }

      v70 = *(a1 + 88);
      if (v70)
      {
        v71 = *(v70 + 16) + *(a1 + 96);
        v72 = v60[1];
        if (!v60[1])
        {
          goto LABEL_109;
        }
      }

      else
      {
        v71 = 0;
        v72 = v60[1];
        if (!v60[1])
        {
          goto LABEL_109;
        }
      }

      v94 = *(v60 + 1);
      if (*(v71 + v94))
      {
        v95 = strnlen((v71 + v94), v72);
        std::string::__assign_external((a2 + 256), (v71 + v94), v95);
      }
    }
  }

LABEL_109:
  if (*(a1 + 42))
  {
    v62 = *(a1 + 56);
    v63 = *(a1 + 64);
    if (v62 != v63)
    {
      while (*v62 != *(a1 + 42))
      {
        v62 += 4;
        if (v62 == v63)
        {
          goto LABEL_129;
        }
      }

      v73 = *(a1 + 88);
      if (v73)
      {
        v73 = *(v73 + 16) + *(a1 + 96);
      }

      if (v62[1])
      {
        v74 = v62[1] == 3;
      }

      else
      {
        v74 = 0;
      }

      if (v74)
      {
        v96 = (v73 + *(v62 + 1));
        v97 = v96[1];
        v98 = v96[2];
        v99 = ((*v96 << 16) | (v97 << 8)) >> 12;
        v100 = v98 & 0xFFFFF0FF | ((v97 & 0xF) << 8);
        if (v99 <= v100)
        {
          *(a2 + 192) = 10000 * v99;
          *(a2 + 200) = 10000 * v100;
        }
      }
    }
  }

LABEL_129:
  v102[0] = 0;
  v75 = *(a1 + 51);
  if (!*(a1 + 51))
  {
LABEL_142:
    v82 = a2 + 280;
    v83 = *(a2 + 348);
    if (v83 == v75)
    {
      goto LABEL_143;
    }

LABEL_146:
    if (v83)
    {
      *(a2 + 348) = 0;
    }

    else
    {
      v85 = v104;
      *(v82 + 32) = v103;
      *(v82 + 48) = v85;
      *(v82 + 64) = v105;
      result = *&v102[16];
      *v82 = *v102;
      *(v82 + 16) = result;
      *(a2 + 348) = 1;
    }

    return result;
  }

  v76 = *(a1 + 56);
  v77 = *(a1 + 64);
  if (v76 != v77)
  {
    while (*v76 != v75)
    {
      v76 += 4;
      if (v76 == v77)
      {
        goto LABEL_145;
      }
    }

    v78 = *(a1 + 88);
    if (v78)
    {
      v78 = *(v78 + 16) + *(a1 + 96);
    }

    v79 = v76[1];
    if (v76[1])
    {
      v80 = *(v76 + 1);
      *v102 = 514;
      v102[2] = 2;
      v105 = 0;
      *&v102[4] = 0;
      *&v102[9] = 0;
      v106 = 1;
      v81 = webrtc::ColorSpaceExtension::Parse((v78 + v80), v79, v102);
      if (v106)
      {
        v75 = 0;
      }

      else
      {
        v75 = v106;
      }

      if (v81)
      {
        v75 = v106;
      }

      goto LABEL_142;
    }
  }

LABEL_145:
  v82 = a2 + 280;
  v83 = *(a2 + 348);
  if (*(a2 + 348))
  {
    goto LABEL_146;
  }

LABEL_143:
  if (v83)
  {
    v84 = v104;
    *(v82 + 32) = v103;
    *(v82 + 48) = v84;
    *(v82 + 64) = v105;
    result = *&v102[16];
    *v82 = *v102;
    *(v82 + 16) = result;
  }

  return result;
}

uint64_t webrtc::RtpPacketToSend::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  if (a1 == a2)
  {
    v11 = 80;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>((a1 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    v7 = *(a2 + 11);
    *(a1 + 80) = *(a2 + 10);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 24), 1u, memory_order_relaxed);
    }

    v8 = *(a1 + 88);
    if (v8 && atomic_fetch_add((v8 + 24), 0xFFFFFFFF) == 1)
    {
      v9 = *(v8 + 16);
      *(v8 + 16) = 0;
      if (v9)
      {
        MEMORY[0x2743DA520](v9, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v8, 0x1010C40EE34DA14);
    }

    v10 = *(a2 + 12);
    *(a1 + 88) = v7;
    *(a1 + 96) = v10;
    v11 = 104;
  }

  *(a1 + v11) = *(a2 + v11);
  v12 = a2[7];
  v13 = a2[8];
  v14 = a2[9];
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 128) = v13;
  *(a1 + 144) = v14;
  *(a1 + 112) = v12;
  v15 = *(a2 + 22);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
  }

  v16 = *(a1 + 176);
  if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 8))(v16);
  }

  *(a1 + 176) = v15;
  v17 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v17;
  return a1;
}

void webrtc::RtpPacketToSend::~RtpPacketToSend(webrtc::RtpPacketToSend *this)
{
  v2 = *(this + 22);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3 && atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v4)
    {
      MEMORY[0x2743DA520](v4, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }
}

void webrtc::RtpPacketizerAv1::ParseObus(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v9[0] = v4;
  v9[1] = a2;
  v10 = 0;
  v11 = a2;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (a2 != v5)
      {
        v6 = *(v9[0] + v5++);
        v10 = v5;
      }

      if ((v6 & 4) != 0)
      {
        if (a2 == v5)
        {
          goto LABEL_19;
        }

        v10 = v5 + 1;
        if ((v6 & 2) == 0)
        {
LABEL_11:
          v10 = a2;
          v7 = (v6 >> 3) & 0xF;
          goto LABEL_17;
        }
      }

      else if ((v6 & 2) == 0)
      {
        goto LABEL_11;
      }

      v8 = 0;
      if (!webrtc::ByteBufferReader::ReadUVarint(v9, &v8) || v8 > v11 - v10)
      {
LABEL_19:
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        return;
      }

      v10 += v8;
      v7 = (v6 >> 3) & 0xF;
LABEL_17:
      if (((1 << v7) & 0x8104) == 0)
      {
        operator new();
      }

      v5 = v10;
      a2 = v11;
    }

    while (v11 != v10);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void webrtc::RtpPacketizerAv1::Packetize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void **a5@<X8>)
{
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  webrtc::RtpPacketizerAv1::PacketizeInternal(&v57, v9, a2, a3, a4);
  v10 = v57;
  v11 = v58;
  v12 = v58 - v57;
  v13 = 0xCCCCCCCCCCCCCCCDLL * (v58 - v57);
  if (v13 <= 1 || v57 == v58)
  {
    goto LABEL_37;
  }

  v14 = ~HIDWORD(a3) + a3;
  v15 = v57[4];
  v16 = __OFSUB__(v14, v15);
  v17 = v14 - v15;
  if (v17 < 0 != v16)
  {
    v17 = 0;
  }

  v18 = v17;
  if (v57 + 5 != v58)
  {
    if ((v12 - 40) > 0x9F)
    {
      v21 = (v12 - 40) / 0x14uLL + 1;
      v22 = v21 & 7;
      if ((v21 & 7) == 0)
      {
        v22 = 8;
      }

      v23 = v21 - v22;
      v19 = v21 - v22 + 1;
      v20 = &v57[5 * v23 + 5];
      v24 = 0uLL;
      v25 = v17;
      v26 = vdupq_n_s64(v13 - 1);
      v27 = vdupq_n_s32(~a4);
      v28 = vdupq_n_s32(a3);
      v29 = xmmword_273B93FD0;
      v30 = xmmword_273B91FC0;
      v31 = v57 + 24;
      v32 = vdupq_n_s64(4uLL);
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v35 = vuzp1q_s32(vceqq_s64(v30, v26), vceqq_s64(v29, v26));
        v36 = vuzp1q_s32(vceqq_s64(vaddq_s64(v30, v32), v26), vceqq_s64(vaddq_s64(v29, v32), v26));
        v37 = vaddq_s32(vornq_s8(vandq_s8(v27, v35), v35), v28);
        v38 = vaddq_s32(vornq_s8(vandq_s8(v27, v36), v36), v28);
        v35.i32[0] = *(v31 - 15);
        v35.i32[1] = *(v31 - 10);
        v35.i32[2] = *(v31 - 5);
        v35.i32[3] = *v31;
        v39.i32[0] = v31[5];
        v39.i32[1] = v31[10];
        v39.i32[2] = v31[15];
        v39.i32[3] = v31[20];
        v40 = vbicq_s8(vsubq_s32(v37, v35), vcgtq_s32(v35, v37));
        v41 = vbicq_s8(vsubq_s32(v38, v39), vcgtq_s32(v39, v38));
        v24 = vaddw_high_s32(v24, v40);
        v25 = vaddw_s32(v25, *v40.i8);
        v34 = vaddw_high_s32(v34, v41);
        v33 = vaddw_s32(v33, *v41.i8);
        v42 = vdupq_n_s64(8uLL);
        v29 = vaddq_s64(v29, v42);
        v30 = vaddq_s64(v30, v42);
        v31 += 40;
        v23 -= 8;
      }

      while (v23);
      v18 = vaddvq_s64(vaddq_s64(vaddq_s64(v33, v25), vaddq_s64(v34, v24)));
    }

    else
    {
      v19 = 1;
      v20 = (v57 + 5);
    }

    v43 = ~v19 - 0x3333333333333333 * (v58 - v57);
    do
    {
      if (v43)
      {
        v44 = -1;
      }

      else
      {
        v44 = ~a4;
      }

      v45 = v44 + a3;
      v46 = *(v20 + 16);
      v16 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v47 < 0 != v16)
      {
        v47 = 0;
      }

      v18 += v47;
      v20 += 20;
      --v43;
    }

    while (v20 != v58);
  }

  if (v18 <= 2 * (v58 - v57))
  {
    goto LABEL_37;
  }

  if ((a3 - v18 / v13 + 1 - a4) < 3 || (a3 - v18 / v13 + 1 - HIDWORD(a3)) <= 2)
  {
    goto LABEL_37;
  }

  webrtc::RtpPacketizerAv1::PacketizeInternal(a5, v9, a2, (a3 - (v18 / v13) + 1) | a3 & 0xFFFFFFFF00000000, a4);
  v49 = *a5;
  if (a5[1] - *a5 != v12)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_av1.cc");
    }

    if (v49)
    {
      operator delete(v49);
    }

LABEL_37:
    *a5 = v10;
    a5[1] = v11;
    a5[2] = v59;
    return;
  }

  if (v10)
  {

    operator delete(v10);
  }
}

void *webrtc::RtpPacketizerAv1::PacketizeInternal(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 && a4 - a5 >= 3 && a4 - HIDWORD(a4) >= 3)
  {
    operator new();
  }

  return result;
}

void *std::vector<webrtc::RtpPacketizerAv1::Packet>::emplace_back<unsigned long &>(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *result) >> 2) + 1;
    if (v5 > 0xCCCCCCCCCCCCCCCLL)
    {
      goto LABEL_13;
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 2);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v5)
    {
      if (v5 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = v4;
  v2[4] = 0;
  result[1] = v2 + 5;
  return result;
}

unint64_t *webrtc::RtpPacketizerAv1::NextPacket(webrtc::RtpPacketizerAv1 *this, webrtc::RtpPacketToSend *a2)
{
  v2 = *(this + 9);
  v3 = *(this + 5);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v3) >> 2);
  if (v2 >= v4)
  {
    return (v2 < v4);
  }

  v7 = (v3 + 20 * v2);
  v8 = v7[4] + 1;
  *(a2 + 3) = 0;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
  v9 = *(a2 + 11);
  if (v9)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v9 + 8) - *(a2 + 12));
  }

  *(a2 + 3) = v8;
  result = webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v8);
  v11 = *(a2 + 2);
  v12 = *(a2 + 11);
  if (v12)
  {
    result = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v12 + 8) - *(a2 + 12));
    v12 = *(*(a2 + 11) + 16) + *(a2 + 12);
  }

  v13 = *(this + 9);
  v14 = *(this + 5);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v14) >> 2) <= v13)
  {
    goto LABEL_81;
  }

  v15 = (v14 + 20 * v13);
  v16 = v15[1];
  v17 = v16 + *v15 - 1;
  v18 = *(this + 2);
  v19 = *(this + 3);
  if (v17 >= (v19 - v18) >> 5)
  {
    goto LABEL_81;
  }

  v21 = v15[2];
  v20 = v15[3];
  if (v16 == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v21 > 0;
  if (v22 + v20 >= *&v18[32 * v17 + 24])
  {
    v24 = v23 << 7;
  }

  else
  {
    v24 = ((v23 & 1) << 7) | 0x40;
  }

  if (v16 >= 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = 16 * v16;
  }

  v26 = v24 | v25;
  if (!v13 && *(this + 2) == 3)
  {
    if (v18 == v19)
    {
      goto LABEL_81;
    }

    if ((*v18 & 0x78) == 8)
    {
      v26 |= 8u;
    }
  }

  *(v12 + v11) = v26;
  result = (v12 + v11 + 1);
  v28 = v7[1];
  v27 = v7[2];
  if (v28 >= 2)
  {
    v29 = *v7;
    v30 = *(this + 2);
    if (v29 >= (*(this + 3) - v30) >> 5)
    {
      goto LABEL_81;
    }

    v31 = v30 + 32 * v29;
    v32 = *(v31 + 24) - v27;
    if (v32 < 0x80)
    {
      *result = v32;
      v35 = result;
      if (v27)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v33 = 0;
      do
      {
        *(result + v33++) = v32 | 0x80;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
      *(result + v33) = v32;
      v35 = (result + v33);
      if (v27)
      {
LABEL_28:
        v36 = v35 + 1;
        if (v27 >= 2 || (*v31 & 4) == 0)
        {
LABEL_31:
          if ((*v31 & 4) != 0)
          {
            v37 = -2;
          }

          else
          {
            v37 = -1;
          }

          v38 = (v37 + v27) & ~((v37 + v27) >> 31);
          v39 = *(v31 + 16);
          v40 = v39 - v38;
          if (v39 && v39 != v38)
          {
            memcpy(v36, (*(v31 + 8) + v38), v39 - v38);
          }

          result = &v36[v40];
          v28 = v7[1];
          if (v28 >= 3)
          {
            v41 = 1;
            while (1)
            {
              v42 = *v7 + v41;
              v43 = *(this + 2);
              if (v42 >= (*(this + 3) - v43) >> 5)
              {
                goto LABEL_81;
              }

              v44 = v43 + 32 * v42;
              v45 = *(v44 + 24);
              if (v45 < 0x80)
              {
                LODWORD(v46) = 0;
              }

              else
              {
                v46 = 0;
                do
                {
                  *(result + v46++) = v45 | 0x80;
                  v47 = v45 >> 14;
                  v45 >>= 7;
                }

                while (v47);
              }

              *(result + v46) = v45;
              v48 = result + v46;
              v48[1] = *v44 & 0xFD;
              v49 = v48 + 1;
              if ((*v44 & 4) == 0)
              {
                break;
              }

              v50 = v49 + 2;
              v49[1] = *(v44 + 1);
              v51 = *(v44 + 16);
              if (v51)
              {
                goto LABEL_50;
              }

LABEL_39:
              result = &v50[v51];
              ++v41;
              v28 = v7[1];
              if (v41 >= v28 - 1)
              {
                goto LABEL_51;
              }
            }

            v50 = v49 + 1;
            v51 = *(v44 + 16);
            if (!v51)
            {
              goto LABEL_39;
            }

LABEL_50:
            memcpy(v50, *(v44 + 8), v51);
            goto LABEL_39;
          }

LABEL_51:
          v27 = 0;
          goto LABEL_52;
        }

LABEL_30:
        *v36++ = *(v31 + 1);
        goto LABEL_31;
      }
    }

    v36 = v35 + 2;
    *(v35 + 1) = *v31 & 0xFD;
    if ((*v31 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_52:
  v52 = v28 + *v7 - 1;
  v53 = *(this + 2);
  if (v52 < (*(this + 3) - v53) >> 5)
  {
    v54 = v53 + 32 * v52;
    v55 = v7[3];
    if (v28 > 3)
    {
      v56 = v55;
      if (v55 < 0x80)
      {
        LODWORD(v57) = 0;
      }

      else
      {
        v57 = 0;
        do
        {
          *(result + v57++) = v56 | 0x80;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
      }

      *(result + v57) = v56;
      result = (result + v57 + 1);
    }

    if (v27 || (v59 = v55 - 1, v55 < 1))
    {
      v59 = v55;
      if (v27 > 1)
      {
LABEL_70:
        if ((*v54 & 4) != 0)
        {
          v60 = -2;
        }

        else
        {
          v60 = -1;
        }

        memcpy(result, (*(v54 + 8) + ((v60 + v27) & ~((v60 + v27) >> 31))), v59);
        v61 = *(this + 9) + 1;
        *(this + 9) = v61;
        if (v61 == 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - *(this + 5)) >> 2))
        {
          v62 = *(this + 64);
        }

        else
        {
          v62 = 0;
        }

        v63 = *(a2 + 11);
        v64 = *(a2 + 12);
        v66 = *(v63 + 8);
        v65 = *(v63 + 16);
        v67 = v62 & 1;
        *a2 = v67;
        v68 = *(v65 + v64 + 1);
        if (v67)
        {
          v69 = 0x80;
        }

        else
        {
          v69 = 0;
        }

        webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, v66 - v64);
        *(*(*(a2 + 11) + 16) + *(a2 + 12) + 1) = v69 & 0x80 | v68 & 0x7F;
        return (v2 < v4);
      }
    }

    else
    {
      *result = *v54 & 0xFD;
      result = (result + 1);
    }

    if ((*v54 & 4) != 0 && v59 >= 1)
    {
      *result = *(v54 + 1);
      result = (result + 1);
      --v59;
    }

    goto LABEL_70;
  }

LABEL_81:
  __break(1u);
  return result;
}

void webrtc::RtpPacketizerAv1::~RtpPacketizerAv1(webrtc::RtpPacketizerAv1 *this)
{
  *this = &unk_28829C018;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_28829C018;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtpPacketizerH265::RtpPacketizerH265(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_28829C048;
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 104) = a4;
  v11 = (a1 + 104);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 112) = a5;
  *(a1 + 120) = 0;
  if (a3)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v122 = 0;
  v13 = a3 - 3;
  if (a3 < 4)
  {
    goto LABEL_38;
  }

  v14 = a3;
  v8 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v17 = *(v12 + 2 + v8);
        if (v17 <= 1)
        {
          break;
        }

LABEL_7:
        v8 += 3;
        if (v8 >= v13)
        {
          goto LABEL_20;
        }
      }

      if (v17 == 1)
      {
        break;
      }

      if (++v8 >= v13)
      {
        goto LABEL_20;
      }
    }

    if (*(v12 + 1 + v8) || *(v12 + v8))
    {
      goto LABEL_7;
    }

    *&v123 = v8;
    *(&v123 + 1) = v8 + 3;
    v124 = 0;
    if (v8)
    {
      v16 = v8;
      if (!*(v12 + v8 - 1))
      {
        *&v123 = v8 - 1;
        v16 = v8 - 1;
      }
    }

    else
    {
      v16 = 0;
    }

    if (__p[1] != __p[0])
    {
      *(__p[1] - 1) = v16 - *(__p[1] - 2);
    }

    std::vector<webrtc::H264::NaluIndex>::push_back[abi:sn200100](__p, &v123);
    v8 += 3;
  }

  while (v8 < v13);
LABEL_20:
  v18 = __p[1];
  v19 = __p[0];
  if (__p[1] == __p[0])
  {
LABEL_38:
    v14 = 1;
    goto LABEL_39;
  }

  *(__p[1] - 1) = v14 - *(__p[1] - 2);
  while (1)
  {
    v20 = v19[2];
    if (!v20)
    {
      v102 = *(a1 + 16);
      v103 = *(a1 + 24) - v102;
      if (v103)
      {
        v104 = *(a1 + 40);
        v105 = &v102[v104 >> 8];
        v106 = *v105;
        v107 = *v105 + 16 * v104;
        v108 = *(v102 + (((*(a1 + 48) + v104) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 48) + v104);
        while (v107 != v108)
        {
          if (!v107)
          {
            goto LABEL_166;
          }

          v107 += 16;
          if (v107 - v106 == 4096)
          {
            v109 = v105[1];
            ++v105;
            v106 = v109;
            v107 = v109;
          }
        }
      }

      *(a1 + 48) = 0;
      v110 = v103 >> 3;
      if (v110 >= 3)
      {
        do
        {
          operator delete(*v102);
          v111 = *(a1 + 24);
          v102 = (*(a1 + 16) + 8);
          *(a1 + 16) = v102;
          v110 = (v111 - v102) >> 3;
        }

        while (v110 > 2);
      }

      if (v110 == 1)
      {
        v112 = 128;
      }

      else
      {
        if (v110 != 2)
        {
          v14 = 0;
          goto LABEL_39;
        }

        v112 = 256;
      }

      v14 = 0;
      *(a1 + 40) = v112;
LABEL_39:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v14)
      {
        return;
      }

      v29 = *(a1 + 48);
      if (!v29)
      {
        return;
      }

      v30 = 0;
      v114 = v11;
      while (1)
      {
        LODWORD(v31) = *(a1 + 104);
        if (v29 == 1)
        {
          break;
        }

        if (!v30)
        {
          v32 = *(a1 + 108);
          goto LABEL_52;
        }

        v33 = *(a1 + 104);
        if (v30 + 1 == v29)
        {
          v32 = *(a1 + 112);
          goto LABEL_52;
        }

LABEL_53:
        v34 = *(a1 + 40) + v30;
        v35 = *(*(a1 + 16) + ((v34 >> 5) & 0x7FFFFFFFFFFFFF8));
        v36 = (*(a1 + 40) + v30);
        v37 = *(v35 + 16 * v34 + 8);
        v118 = v37;
        if (v33 >= v37)
        {
          if (v37 == 1)
          {
            goto LABEL_145;
          }

          v31 = v31;
          if (v29 == 1)
          {
            v42 = 116;
          }

          else
          {
            if (v30)
            {
              goto LABEL_66;
            }

            v42 = 108;
          }

          v31 = v31 - *(a1 + v42);
LABEL_66:
          if (v29 <= v30)
          {
            goto LABEL_166;
          }

          v43 = v31 - v37;
          if (v31 < v37)
          {
            goto LABEL_170;
          }

          v44 = 16 * v36;
          v45 = *(v35 + v44);
          if (v37)
          {
            v46 = *(v35 + v44);
          }

          else
          {
            v46 = 0;
          }

          ++*(a1 + 120);
          v47 = v37;
          v48 = v29 - 1;
          if (v48)
          {
            v47 = v37;
            if (v48 == v30)
            {
              v47 = v37 + *(a1 + 112);
            }
          }

          if (v31 < v47)
          {
            goto LABEL_169;
          }

          if (!v37)
          {
            goto LABEL_168;
          }

          v14 = *v46;
          v49 = *(a1 + 64);
          v50 = *(a1 + 72);
          v51 = 170 * ((v50 - v49) >> 3) - 1;
          if (v50 == v49)
          {
            v51 = 0;
          }

          if (v51 == *(a1 + 96) + *(a1 + 88))
          {
            std::deque<webrtc::RtpPacketizerH265::PacketUnit>::__add_back_capacity((a1 + 56));
            v37 = v118;
            v49 = *(a1 + 64);
            v50 = *(a1 + 72);
          }

          if (v50 == v49)
          {
            goto LABEL_166;
          }

          v52 = *(a1 + 96) + *(a1 + 88);
          v53 = *(v49 + 8 * (v52 / 0xAA));
          if (!v53)
          {
            goto LABEL_166;
          }

          v54 = bswap32(v14);
          v14 = HIWORD(v54);
          v55 = v53 + 24 * (v52 % 0xAA);
          *v55 = v45;
          *(v55 + 8) = v37;
          *(v55 + 16) = 1;
          *(v55 + 18) = 1;
          *(v55 + 20) = HIWORD(v54);
          v56 = *(a1 + 96) + 1;
          *(a1 + 96) = v56;
          v57 = v30 + 1;
          v29 = *(a1 + 48);
          if (v30 + 1 != v29)
          {
            if (v29 <= v57)
            {
              goto LABEL_166;
            }

            v58 = (*(*(a1 + 16) + (((*(a1 + 40) + v57) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v57));
            v8 = v58[1];
            v59 = v8 + 6;
            v60 = v8 + 6;
            if (v29 - 2 == v30)
            {
              v60 = v59 + *(a1 + 112);
            }

            if (v43 < v60)
            {
              goto LABEL_88;
            }

            if (!v8)
            {
              goto LABEL_168;
            }

            v81 = *v58;
            v82 = *(a1 + 64);
            v83 = *(a1 + 72);
            v84 = 170 * ((v83 - v82) >> 3) - 1;
            if (v83 == v82)
            {
              v84 = 0;
            }

            if (v84 == *(a1 + 88) + v56)
            {
              std::deque<webrtc::RtpPacketizerH265::PacketUnit>::__add_back_capacity((a1 + 56));
              v82 = *(a1 + 64);
              v83 = *(a1 + 72);
            }

            if (v83 == v82)
            {
              goto LABEL_166;
            }

            v85 = *(a1 + 96) + *(a1 + 88);
            v86 = *(v82 + 8 * (v85 / 0xAA));
            if (!v86)
            {
              goto LABEL_166;
            }

            v87 = v86 + 24 * (v85 % 0xAA);
            *v87 = v81;
            *(v87 + 8) = v8;
            *(v87 + 16) = 0;
            *(v87 + 18) = 1;
            *(v87 + 20) = v14;
            v56 = *(a1 + 96) + 1;
            *(a1 + 96) = v56;
            v57 = v30 + 2;
            v29 = *(a1 + 48);
            if (v30 + 2 != v29)
            {
              if (v29 <= v57)
              {
                goto LABEL_166;
              }

              v88 = v43 - v59;
              while (1)
              {
                v89 = (*(*(a1 + 16) + (((v57 + *(a1 + 40)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v57 + *(a1 + 40)));
                v8 = v89[1];
                v90 = v8 + 2;
                v91 = v8 + 2;
                if (v57 == v29 - 1)
                {
                  v91 = v90 + *(a1 + 112);
                }

                if (v88 < v91)
                {
                  goto LABEL_88;
                }

                if (!v8)
                {
                  goto LABEL_168;
                }

                v92 = *v89;
                v93 = *(a1 + 64);
                v94 = *(a1 + 72);
                v95 = 170 * ((v94 - v93) >> 3) - 1;
                if (v94 == v93)
                {
                  v95 = 0;
                }

                if (v95 == *(a1 + 88) + v56)
                {
                  std::deque<webrtc::RtpPacketizerH265::PacketUnit>::__add_back_capacity((a1 + 56));
                  v93 = *(a1 + 64);
                  v94 = *(a1 + 72);
                }

                if (v94 != v93)
                {
                  v96 = *(a1 + 96) + *(a1 + 88);
                  v97 = *(v93 + 8 * (v96 / 0xAA));
                  if (v97)
                  {
                    v98 = v97 + 24 * (v96 % 0xAA);
                    *v98 = v92;
                    *(v98 + 8) = v8;
                    *(v98 + 16) = 0;
                    *(v98 + 18) = 1;
                    *(v98 + 20) = v14;
                    v56 = *(a1 + 96) + 1;
                    *(a1 + 96) = v56;
                    ++v57;
                    v29 = *(a1 + 48);
                    if (v57 == v29)
                    {
                      break;
                    }

                    v88 -= v90;
                    if (v29 > v57)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_166;
              }
            }
          }

          v29 = v57;
LABEL_88:
          if (!v56)
          {
            goto LABEL_166;
          }

          *(*(*(a1 + 64) + 8 * ((v56 + *(a1 + 88) - 1) / 0xAAuLL)) + 24 * ((v56 + *(a1 + 88) - 1) % 0xAAuLL) + 17) = 1;
          v30 = v57;
          if (v57 >= v29)
          {
            return;
          }
        }

        else
        {
          if (v29 <= v30)
          {
            goto LABEL_166;
          }

          v38 = 0;
          v39 = *(v35 + 16 * v36);
          v120 = v39;
          if (!v37)
          {
            v39 = 0;
          }

          v119 = v39;
          *__p = *v11;
          LODWORD(__p[0]) -= 3;
          v40 = v29 - 1;
          if (v40)
          {
            if (v40 == v30)
            {
              v41 = *(a1 + 112);
              goto LABEL_93;
            }

            if (v30)
            {
              v41 = 0;
LABEL_93:
              v61 = 0;
              HIDWORD(__p[1]) = v41;
              v62 = __p + 4;
            }

            else
            {
              v61 = *(a1 + 108);
              v62 = &__p[1] + 4;
            }

            *v62 = v61;
            v38 = v40;
          }

          if (v38 != v30)
          {
            LODWORD(__p[1]) = 0;
          }

          v14 = v37 - 2;
          webrtc::RtpPacketizer::SplitAboutEqually((v37 - 2), __p, &v123);
          v63 = *(&v123 + 1);
          v64 = v123;
          if (v123 != *(&v123 + 1))
          {
            v116 = v123;
            v117 = v30;
            v65 = 0;
            v115 = *(&v123 + 1);
            v66 = (*(&v123 + 1) - v123) >> 2;
            v67 = 2;
            v68 = v123;
            v69 = v118;
            while (1)
            {
              v8 = v68[v65];
              if (v8 <= 0)
              {
                goto LABEL_167;
              }

              v70 = *(a1 + 64);
              v71 = *(a1 + 72);
              v72 = 170 * ((v71 - v70) >> 3) - 1;
              if (v71 == v70)
              {
                v72 = 0;
              }

              if (v69 <= v67)
              {
                v73 = 0;
              }

              else
              {
                v73 = v120 + v67;
              }

              if (v69 - v67 >= v8)
              {
                v74 = v68[v65];
              }

              else
              {
                v74 = v69 - v67;
              }

              v75 = *v119;
              if (v69 <= v67)
              {
                v76 = 0;
              }

              else
              {
                v76 = v74;
              }

              v77 = v65 == v66 - 1;
              if (v72 == *(a1 + 96) + *(a1 + 88))
              {
                std::deque<webrtc::RtpPacketizerH265::PacketUnit>::__add_back_capacity((a1 + 56));
                v69 = v118;
                v70 = *(a1 + 64);
                v71 = *(a1 + 72);
              }

              if (v71 == v70)
              {
                goto LABEL_166;
              }

              v78 = *(a1 + 96) + *(a1 + 88);
              v79 = *(v70 + 8 * (v78 / 0xAA));
              if (!v79)
              {
                goto LABEL_166;
              }

              v80 = v79 + 24 * (v78 % 0xAA);
              *v80 = v73;
              *(v80 + 8) = v76;
              *(v80 + 16) = v65 == 0;
              *(v80 + 17) = v77;
              *(v80 + 18) = 0;
              *(v80 + 20) = bswap32(v75) >> 16;
              ++*(a1 + 96);
              v67 += v8;
              v14 -= v8;
              ++v65;
              v68 = v123;
              v66 = (*(&v123 + 1) - v123) >> 2;
              if (v65 >= v66)
              {
                *(a1 + 120) += v66;
                v11 = v114;
                v63 = v115;
                v64 = v116;
                v30 = v117;
                if (v14)
                {
                  goto LABEL_171;
                }

                if (v68)
                {
                  goto LABEL_120;
                }

                goto LABEL_44;
              }
            }
          }

          v68 = v123;
          if (v123)
          {
LABEL_120:
            *(&v123 + 1) = v68;
            operator delete(v68);
          }

LABEL_44:
          if (v64 == v63)
          {
LABEL_145:
            *(a1 + 120) = 0;
            v99 = *(a1 + 96);
            if (!v99)
            {
              return;
            }

            v100 = *(a1 + 64);
            v101 = *(a1 + 88);
            v14 = 0xC0C0C0C0C0C0C0C1;
            while (*(v100 + ((((v101 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
            {
              --v99;
              *(a1 + 88) = ++v101;
              *(a1 + 96) = v99;
              if (v101 >= 0x154)
              {
                operator delete(*v100);
                v100 = (*(a1 + 64) + 8);
                *(a1 + 64) = v100;
                v99 = *(a1 + 96);
                v101 = *(a1 + 88) - 170;
                *(a1 + 88) = v101;
              }

              if (!v99)
              {
                return;
              }
            }

            goto LABEL_166;
          }

          ++v30;
          v29 = *(a1 + 48);
          if (v30 >= v29)
          {
            return;
          }
        }
      }

      v32 = *(a1 + 116);
LABEL_52:
      v33 = v31 - v32;
      goto LABEL_53;
    }

    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = 32 * (v22 - v21) - 1;
    v24 = v19[1];
    if (v22 == v21)
    {
      v23 = 0;
    }

    if (v14 <= v24)
    {
      v8 = 0;
    }

    else
    {
      v8 = v24 + a2;
    }

    if (v14 - v24 < v20)
    {
      v20 = v14 - v24;
    }

    if (v14 <= v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20;
    }

    if (v23 == *(a1 + 48) + *(a1 + 40))
    {
      std::deque<webrtc::ArrayView<unsigned char const,-4711l>>::__add_back_capacity(v10);
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
    }

    if (v22 == v21)
    {
      break;
    }

    v26 = *(a1 + 48) + *(a1 + 40);
    v27 = *(v21 + ((v26 >> 5) & 0x7FFFFFFFFFFFFF8));
    if (!v27)
    {
      break;
    }

    v28 = (v27 + 16 * v26);
    *v28 = v8;
    v28[1] = v25;
    ++*(a1 + 48);
    v19 += 3;
    if (v19 == v18)
    {
      goto LABEL_38;
    }
  }

LABEL_166:
  __break(1u);
LABEL_167:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 133, "packet_length > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v8);
LABEL_168:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 178, "fragment.size() > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 0);
LABEL_169:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 204, "aggregated_fragments > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 0);
LABEL_170:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 159, "payload_size_left >= fragment.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v31);
LABEL_171:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 144, "payload_left == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v14);
  webrtc::RtpPacketizerH265::~RtpPacketizerH265(v113);
}

void webrtc::RtpPacketizerH265::~RtpPacketizerH265(void **this)
{
  *this = &unk_28829C048;
  v1 = this + 1;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 7);
  std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](v1);
}

{
  *this = &unk_28829C048;
  v1 = this + 1;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 7);
  std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](v1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpPacketizerH265::NextPacket(webrtc::RtpPacketizerH265 *this, webrtc::RtpPacketToSend *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 12))
  {
    return 0;
  }

  v10 = *(*(this + 8) + 8 * (*(this + 11) / 0xAAuLL)) + 24 * (*(this + 11) % 0xAAuLL);
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v10 + 16);
  if (v13 & 1) != 0 && (*(v10 + 17))
  {
    *(a2 + 3) = 0;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
    v14 = *(a2 + 11);
    if (v14)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v14 + 8) - *(a2 + 12));
    }

    *(a2 + 3) = v11;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v11);
    v15 = *(a2 + 2);
    v16 = *(a2 + 11);
    if (v16)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v16 + 8) - *(a2 + 12));
      v16 = *(*(a2 + 11) + 16) + *(a2 + 12);
    }

    memcpy((v16 + v15), v12, v11);
    v21 = *(this + 12);
    if (v21)
    {
      v22 = *(this + 8);
      v23 = *(this + 11);
      if (*(v22 + ((((v23 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
      {
        v24 = v23 + 1;
        *(this + 11) = v24;
        *(this + 12) = v21 - 1;
        if (v24 >= 0x154)
        {
          operator delete(*v22);
          *(this + 8) += 8;
          *(this + 11) -= 170;
        }

        v25 = *(this + 6);
        if (v25)
        {
          v26 = *(this + 2);
          v27 = *(this + 5);
          if (*(v26 + ((v27 >> 5) & 0x7FFFFFFFFFFFFF8)))
          {
            v28 = v27 + 1;
            *(this + 5) = v28;
            *(this + 6) = v25 - 1;
            if (v28 >= 0x200)
            {
              operator delete(*v26);
              *(this + 2) += 8;
              *(this + 5) -= 256;
            }

LABEL_76:
            v73 = *(this + 12) == 0;
            *a2 = v73;
            v74 = *(a2 + 12);
            v75 = *(*(*(a2 + 11) + 16) + v74 + 1);
            webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(*(a2 + 11) + 8) - v74);
            *(*(*(a2 + 11) + 16) + *(a2 + 12) + 1) = v75 & 0x7F | (v73 << 7);
            --*(this + 15);
            return 1;
          }
        }
      }
    }

    goto LABEL_78;
  }

  if ((*(v10 + 18) & 1) == 0)
  {
    v53 = *(v10 + 20);
    v54 = *(v10 + 17);
    v55 = v11 + 3;
    *(a2 + 3) = 0;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2));
    v56 = *(a2 + 11);
    if (v56)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v56 + 8) - *(a2 + 12));
    }

    *(a2 + 3) = v55;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v55);
    v57 = *(a2 + 11);
    if (!v57)
    {
      goto LABEL_79;
    }

    v58 = *(a2 + 2);
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v57 + 8) - *(a2 + 12));
    v59 = *(*(a2 + 11) + 16);
    if (!v59)
    {
      goto LABEL_79;
    }

    v60 = (v59 + *(a2 + 12) + v58);
    if (v11)
    {
      v61 = v12;
    }

    else
    {
      v61 = 0;
    }

    if (v13)
    {
      v62 = 0x80;
    }

    else
    {
      v62 = 0;
    }

    if (v54)
    {
      v63 = 64;
    }

    else
    {
      v63 = 0;
    }

    *v60 = BYTE1(v53) & 0x81 | 0x62;
    v60[1] = v53;
    v60[2] = v62 & 0xC0 | (v53 >> 9) & 0x3F | v63;
    memcpy(v60 + 3, v61, v11);
    if (*(v10 + 17) == 1)
    {
      v64 = *(this + 6);
      if (!v64 || (v65 = *(this + 2), v66 = *(this + 5), !*(v65 + ((v66 >> 5) & 0x7FFFFFFFFFFFFF8))))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 348, "buffer", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v17, v18, v19, v20, v76);
        goto LABEL_80;
      }

      v67 = v66 + 1;
      *(this + 5) = v67;
      *(this + 6) = v64 - 1;
      if (v67 >= 0x200)
      {
        operator delete(*v65);
        *(this + 2) += 8;
        *(this + 5) -= 256;
      }
    }

    v68 = *(this + 12);
    if (v68)
    {
      v69 = *(this + 8);
      v70 = *(this + 11);
      if (*(v69 + ((((v70 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
      {
        v71 = v70 + 1;
        *(this + 11) = v71;
        *(this + 12) = v68 - 1;
        if (v71 >= 0x154)
        {
          operator delete(*v69);
          *(this + 8) += 8;
          *(this + 11) -= 170;
        }

        goto LABEL_76;
      }
    }

    goto LABEL_78;
  }

  v29 = *(a2 + 11);
  if (v29)
  {
    v29 = *(v29 + 8) - *(a2 + 12);
  }

  v30 = *(a2 + 2);
  v12 = (v29 - (v30 + *(a2 + 3) + *(a2 + 2)));
  if (v12 <= 1)
  {
    goto LABEL_81;
  }

  *(a2 + 3) = 0;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, v30);
  v31 = *(a2 + 11);
  if (v31)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v31 + 8) - *(a2 + 12));
  }

  *(a2 + 3) = v12;
  webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, &v12[*(a2 + 2)]);
  v32 = *(a2 + 11);
  if (!v32 || (v12 = *(a2 + 2), webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v32 + 8) - *(a2 + 12)), (v33 = *(*(a2 + 11) + 16)) == 0))
  {
LABEL_80:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 250, "buffer", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v17, v18, v19, v20, v76);
LABEL_81:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 248, "payload_capacity >= kH265PayloadHeaderSizeBytes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v12);
    goto LABEL_82;
  }

  if (!*(this + 12))
  {
    goto LABEL_78;
  }

  v34 = *(*(this + 8) + 8 * (*(this + 11) / 0xAAuLL)) + 24 * (*(this + 11) % 0xAAuLL);
  if ((*(v34 + 16) & 1) == 0)
  {
LABEL_82:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 252, "packet->first_fragment", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v17, v18, v19, v20, v76);
    goto LABEL_83;
  }

  v35 = &v12[*(a2 + 12) + v33];
  v36 = *(v34 + 17);
  if (*(v34 + 18) == 1)
  {
    v37 = 7;
    LOBYTE(v38) = 127;
    v39 = 2;
    while (1)
    {
      v12 = *(v34 + 8);
      if (v12 == 1)
      {
        return 0;
      }

      v40 = *v34;
      if (v12)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41[1];
      if (((v42 >> 3) & 0xFFFFFFDF | (32 * (*v41 & 1))) >= v38)
      {
        v38 = v38;
      }

      else
      {
        v38 = (v42 >> 3) & 0xFFFFFFDF | (32 * (*v41 & 1));
      }

      if ((v42 & 7) < v37)
      {
        v37 = v42 & 7;
      }

      *&v35[v39] = bswap32(v12) >> 16;
      v43 = v39 + 2;
      memcpy(&v35[v39 + 2], v41, v12);
      v44 = *(this + 12);
      if (!v44)
      {
        goto LABEL_78;
      }

      v45 = *(this + 8);
      v46 = *(this + 11);
      if (!*(v45 + ((((v46 * 0xC0C0C0C0C0C0C0C1) >> 64) >> 4) & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_78;
      }

      v47 = v46 + 1;
      *(this + 11) = v47;
      *(this + 12) = v44 - 1;
      if (v47 >= 0x154)
      {
        operator delete(*v45);
        *(this + 8) += 8;
        *(this + 11) -= 170;
      }

      v48 = *(this + 6);
      if (!v48)
      {
        goto LABEL_78;
      }

      v49 = *(this + 2);
      v50 = *(this + 5);
      if (!*(v49 + ((v50 >> 5) & 0x7FFFFFFFFFFFFF8)))
      {
        goto LABEL_78;
      }

      v51 = v50 + 1;
      *(this + 5) = v51;
      *(this + 6) = v48 - 1;
      if (v51 >= 0x200)
      {
        operator delete(*v49);
        *(this + 2) += 8;
        *(this + 5) -= 256;
      }

      v39 = v43 + v12;
      if (v36)
      {
        *v35 = (v38 >> 5) | 0x60;
        v35[1] = v37 | (8 * v38);
        goto LABEL_74;
      }

      if (!*(this + 12))
      {
        goto LABEL_78;
      }

      v34 = *(*(this + 8) + 8 * (*(this + 11) / 0xAAuLL)) + 24 * (*(this + 11) % 0xAAuLL);
      v36 = *(v34 + 17);
      if ((*(v34 + 18) & 1) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  v39 = 2;
  v38 = 127;
  v37 = 7;
LABEL_73:
  *v35 = (v38 >> 5) | 0x60;
  v35[1] = v37 | (8 * v38);
  if (v36)
  {
LABEL_74:
    *(a2 + 3) = v39;
    webrtc::CopyOnWriteBuffer::SetSize(a2 + 11, *(a2 + 2) + v39);
    v72 = *(a2 + 11);
    if (v72)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(a2 + 11, *(v72 + 8) - *(a2 + 12));
    }

    goto LABEL_76;
  }

LABEL_83:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_packetizer_h265.cc", 302, "is_last_fragment", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v17, v18, v19, v20, v76);
  return std::deque<webrtc::RtpPacketizerH265::PacketUnit>::__add_back_capacity();
}

void *std::deque<webrtc::RtpPacketizerH265::PacketUnit>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

uint64_t webrtc::RtcpFeedback::RtcpFeedback(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

webrtc::RtpCodec *webrtc::RtpCodec::RtpCodec(webrtc::RtpCodec *this, const webrtc::RtpCodec *a2)
{
  *this = &unk_28829C078;
  v4 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 2);
  *(this + 48) = *(a2 + 48);
  *(this + 2) = v6;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 12) = 0;
  v9 = *(a2 + 10);
  v10 = a2 + 88;
  if (v9 != v10)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 10, this + 11, v9 + 4);
      v12 = v9[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v9[2];
          v14 = *v13 == v9;
          v9 = v13;
        }

        while (!v14);
      }

      v9 = v13;
    }

    while (v13 != v10);
  }

  return this;
}

void webrtc::RtpCodec::~RtpCodec(webrtc::RtpCodec *this)
{
  *this = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RtpCodec::IsResiliencyCodec(webrtc::RtpCodec *this)
{
  v1 = (this + 8);
  if (*(this + 31) < 0)
  {
    v4 = *(this + 2);
    switch(v4)
    {
      case 3:
        v15 = *v1;
        if (*v15 == *"rtx" && *(v15 + 2) == webrtc::kRtxCodecName[2])
        {
          return 1;
        }

        v17 = *v15;
        v18 = *(v15 + 2);
        if (v17 == webrtc::kRedCodecName && v18 == 100)
        {
          return 1;
        }

        break;
      case 6:
        v11 = *v1;
        v12 = *v11;
        v13 = *(v11 + 2);
        if (v12 == *"ulpfec" && v13 == *"ec")
        {
          return 1;
        }

        break;
      case 10:
        v1 = *v1;
LABEL_10:
        v5 = *v1;
        v6 = v1[4];
        return v5 == *"flexfec-03" && v6 == *"03";
    }

    return 0;
  }

  v2 = *(this + 31);
  if (v2 == 3)
  {
    if (*v1 != *"rtx" || *(this + 10) != webrtc::kRtxCodecName[2])
    {
      return *v1 == webrtc::kRedCodecName && *(this + 10) == 100;
    }

    return 1;
  }

  if (v2 != 6)
  {
    if (v2 != 10)
    {
      return 0;
    }

    goto LABEL_10;
  }

  return *v1 == *"ulpfec" && *(this + 6) == *"ec";
}

uint64_t webrtc::RtpCodecCapability::RtpCodecCapability(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 96) = 0;
  *(this + 88) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 29) = 0;
  *(this + 72) = 0;
  *(this + 80) = this + 88;
  *this = &unk_28829C098;
  *(this + 8) = 0;
  *(this + 104) = 0;
  *(this + 108) = 0;
  *(this + 112) = 0;
  return this;
}

void webrtc::RtpCodecCapability::~RtpCodecCapability(webrtc::RtpCodecCapability *this)
{
  *this = &unk_28829C098;
  if (*(this + 112))
  {
    operator delete(*(this + 15));
  }

  *this = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28829C098;
  if (*(this + 112))
  {
    operator delete(*(this + 15));
  }

  *this = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtpHeaderExtensionCapability::~RtpHeaderExtensionCapability(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *webrtc::RtpExtension::RtpExtension(void *this)
{
  *this = 0;
  this[1] = 0;
  *(this + 21) = 0;
  this[2] = 0;
  return this;
}

void webrtc::RtpExtension::~RtpExtension(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t webrtc::RtpFecParameters::RtpFecParameters(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t webrtc::RtpEncodingParameters::RtpEncodingParameters(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0x3FF0000000000000;
  *(this + 16) = 1;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 124) = 1;
  *(this + 160) = 0;
  *(this + 264) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 144) = 0;
  return this;
}

webrtc::RtpEncodingParameters *webrtc::RtpEncodingParameters::RtpEncodingParameters(webrtc::RtpEncodingParameters *this, const webrtc::RtpEncodingParameters *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(this + 57) = *(a2 + 57);
  *(this + 2) = v5;
  *(this + 3) = v6;
  *(this + 1) = v4;
  *(this + 80) = 0;
  v7 = (this + 80);
  *(this + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(v7, *(a2 + 10), *(a2 + 11));
    }

    else
    {
      v8 = *(a2 + 5);
      v7->__r_.__value_.__r.__words[2] = *(a2 + 12);
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *(this + 104) = 1;
  }

  v9 = *(a2 + 14);
  *(this + 117) = *(a2 + 117);
  *(this + 14) = v9;
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v10 = *(a2 + 8);
    *(this + 18) = *(a2 + 18);
    *(this + 8) = v10;
  }

  v11 = *(a2 + 76);
  *(this + 160) = 0;
  *(this + 76) = v11;
  *(this + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    webrtc::RtpCodec::RtpCodec((this + 160), (a2 + 160));
    *(this + 264) = 1;
  }

  return this;
}

void webrtc::RtpEncodingParameters::~RtpEncodingParameters(webrtc::RtpEncodingParameters *this)
{
  if (*(this + 264) != 1)
  {
    goto LABEL_5;
  }

  *(this + 20) = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 240, *(this + 31));
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  if ((*(this + 191) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(this + 151) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(*(this + 16));
    if (*(this + 104) != 1)
    {
      return;
    }

    goto LABEL_10;
  }

  operator delete(*(this + 21));
  if (*(this + 151) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(this + 104) != 1)
  {
    return;
  }

LABEL_10:
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }
}

uint64_t webrtc::RtpCodecParameters::RtpCodecParameters(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 29) = 0;
  *(this + 72) = 0;
  *(this + 80) = this + 88;
  *this = &unk_28829C0B8;
  *(this + 8) = 0;
  *(this + 104) = 0;
  return this;
}

webrtc::RtpCodec *webrtc::RtpCodecParameters::RtpCodecParameters(webrtc::RtpCodecParameters *this, const webrtc::RtpCodecParameters *a2)
{
  result = webrtc::RtpCodec::RtpCodec(this, a2);
  *result = &unk_28829C0B8;
  *(result + 26) = *(a2 + 26);
  return result;
}

void webrtc::RtpCodecParameters::~RtpCodecParameters(webrtc::RtpCodecParameters *this)
{
  *this = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 80, *(this + 11));
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x2743DA540);
}

double webrtc::RtpCapabilities::RtpCapabilities(webrtc::RtpCapabilities *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void webrtc::RtpCapabilities::~RtpCapabilities(webrtc::RtpCapabilities *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *this;
  if (*this)
  {
    v8 = *(this + 1);
    v9 = *this;
    if (v8 != v7)
    {
      v10 = v8 - 20;
      v11 = v8 - 20;
      v12 = v8 - 20;
      do
      {
        v13 = *v12;
        v12 -= 20;
        (*v13)(v11);
        v10 -= 20;
        v14 = v11 == v7;
        v11 = v12;
      }

      while (!v14);
      v9 = *this;
    }

    *(this + 1) = v7;
    operator delete(v9);
  }
}

double webrtc::RtpParameters::RtpParameters(webrtc::RtpParameters *this)
{
  *(this + 124) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 76) = 256;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 105) = 0u;
  *(this + 160) = 0;
  *(this + 164) = 0;
  return result;
}

std::string *webrtc::RtpParameters::RtpParameters(std::string *this, const webrtc::RtpParameters *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      this[2].__r_.__value_.__r.__words[0] = 0;
      this[2].__r_.__value_.__l.__size_ = 0;
      this[2].__r_.__value_.__r.__words[2] = 0;
      v6 = *(a2 + 6);
      v7 = *(a2 + 7);
      v8 = v7 - v6;
      if (v7 == v6)
      {
        goto LABEL_4;
      }

LABEL_10:
      if ((0x6DB6DB6DB6DB6DB7 * (v8 >> 4)) < 0x24924924924924ALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v14 = *(a2 + 6);
  v15 = *(a2 + 7);
  v8 = v15 - v14;
  if (v15 != v14)
  {
    goto LABEL_10;
  }

LABEL_4:
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  v11 = *(a2 + 12);
  v12 = *(a2 + 13);
  if (v12 != v11)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v12 - v11) >> 4) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v13 = *(a2 + 8);
    this[6].__r_.__value_.__r.__words[0] = *(a2 + 18);
    *&this[5].__r_.__value_.__r.__words[1] = v13;
  }

  LOWORD(this[6].__r_.__value_.__r.__words[1]) = *(a2 + 76);
  this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
  return this;
}

void webrtc::RtpParameters::~RtpParameters(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  v2 = this[12];
  if (v2)
  {
    v3 = this[13];
    v4 = this[12];
    if (v3 != v2)
    {
      do
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v3 - 272));
      }

      while (v3 != v2);
      v4 = this[12];
    }

    this[13] = v2;
    operator delete(v4);
  }

  v5 = this[9];
  if (v5)
  {
    v6 = this[10];
    v7 = this[9];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = this[9];
    }

    this[10] = v5;
    operator delete(v7);
  }

  v9 = this[6];
  if (v9)
  {
    v10 = this[7];
    v11 = this[6];
    if (v10 != v9)
    {
      v12 = v10 - 112;
      v13 = v10 - 112;
      v14 = v10 - 112;
      do
      {
        v15 = *v14;
        v14 -= 112;
        (*v15)(v13);
        v12 -= 112;
        v16 = v13 == v9;
        v13 = v14;
      }

      while (!v16);
      v11 = this[6];
    }

    this[7] = v9;
    operator delete(v11);
  }

  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(*this);
    return;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_27;
  }
}

unint64_t webrtc::RtpExtension::ToString@<X0>(webrtc::RtpExtension *this@<X0>, char *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  __s = v20;
  v17 = 256;
  strcpy(v20, "{uri: ");
  v4 = *(this + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *this;
    v4 = *(this + 1);
  }

  else
  {
    v5 = this;
  }

  if (v4 >= 0xF9)
  {
    v6 = 249;
  }

  else
  {
    v6 = v4;
  }

  memcpy(&v20[6], v5, v6);
  v7 = v6 + 6;
  v20[v6 + 6] = 0;
  if (249 - v6 >= 6)
  {
    v8 = 6;
  }

  else
  {
    v8 = 249 - v6;
  }

  memcpy(&v20[v7], ", id: ", v8);
  v18 = v8 + v7;
  v20[v18] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 6));
  if (*(this + 28) == 1)
  {
    if (v17 + ~v18 >= 9)
    {
      v9 = 9;
    }

    else
    {
      v9 = v17 + ~v18;
    }

    memcpy(&__s[v18], ", encrypt", v9);
    v18 += v9;
    __s[v18] = 0;
  }

  __src = 125;
  v10 = v17;
  v11 = v18 + 1;
  memcpy(&__s[v18], &__src, v17 != v18 + 1);
  v12 = v18;
  if (v10 != v11)
  {
    v12 = v18 + 1;
  }

  v18 = v12;
  __s[v12] = 0;
  v13 = __s;
  if (!__s)
  {
    goto LABEL_27;
  }

  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_28;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v15 = &a2[result];
  if (a2 <= v13 && v15 > v13)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v13, result);
  }

  *v15 = 0;
  return result;
}

BOOL webrtc::RtpExtension::IsSupportedForAudio(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  if (a2 > 57)
  {
    if (a2 > 64)
    {
      if (a2 == 65)
      {
        v40 = "http://www.webrtc.org/experiments/rtp-hdrext/transport-wide-cc-02";
        v41 = 65;
      }

      else
      {
        if (a2 != 73)
        {
          return v2;
        }

        v40 = "http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01";
        v41 = 73;
      }

      return memcmp(a1, v40, v41) == 0;
    }

    if (a2 == 58)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *"http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time";
      v18 = *"ww.webrtc.org/experiments/rtp-hdrext/abs-send-time";
      v19 = a1[2];
      v20 = a1[3];
      v21 = *"c.org/experiments/rtp-hdrext/abs-send-time";
      v22 = *"periments/rtp-hdrext/abs-send-time";
      v24 = a1[4];
      v23 = a1[5];
      v25 = *"s/rtp-hdrext/abs-send-time";
      v26 = *"rext/abs-send-time";
      v27 = a1[6];
      v28 = *"-send-time";
      v13 = *(a1 + 28);
      v14 = *"me";
    }

    else
    {
      if (a2 != 61)
      {
        return v2;
      }

      v15 = *a1;
      v16 = a1[1];
      v17 = *"http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time";
      v18 = *"ww.webrtc.org/experiments/rtp-hdrext/abs-capture-time";
      v19 = a1[2];
      v20 = a1[3];
      v21 = *"c.org/experiments/rtp-hdrext/abs-capture-time";
      v22 = *"periments/rtp-hdrext/abs-capture-time";
      v24 = a1[4];
      v23 = a1[5];
      v25 = *"s/rtp-hdrext/abs-capture-time";
      v26 = *"rext/abs-capture-time";
      v27 = a1[6];
      v28 = *"-capture-time";
      v13 = *(a1 + 53);
      v14 = *"ure-time";
    }

    v39 = v15 == v17 && v16 == v18 && v19 == v21 && v20 == v22 && v24 == v25 && v23 == v26 && v27 == v28;
    return v39 && v13 == v14;
  }

  if (a2 > 44)
  {
    if (a2 != 45)
    {
      if (a2 != 54)
      {
        return v2;
      }

      v29 = *a1;
      v30 = a1[1];
      v31 = a1[2];
      v32 = a1[3];
      v34 = a1[4];
      v33 = a1[5];
      v13 = *(a1 + 46);
      v14 = *"tream-id";
      v39 = v29 == *"urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id" && v30 == *":params:rtp-hdrext:sdes:repaired-rtp-stream-id" && v31 == *"rtp-hdrext:sdes:repaired-rtp-stream-id" && v32 == *"xt:sdes:repaired-rtp-stream-id" && v34 == *"repaired-rtp-stream-id" && v33 == *"-rtp-stream-id";
      return v39 && v13 == v14;
    }

    v3 = *a1;
    v4 = a1[1];
    v5 = *"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id";
    v6 = *":params:rtp-hdrext:sdes:rtp-stream-id";
    v7 = a1[2];
    v8 = a1[3];
    v9 = *"rtp-hdrext:sdes:rtp-stream-id";
    v10 = *"xt:sdes:rtp-stream-id";
    v11 = a1[4];
    v12 = *"rtp-stream-id";
    v13 = *(a1 + 37);
    v14 = *"tream-id";
  }

  else
  {
    if (a2 == 35)
    {
      return *a1 == *"urn:ietf:params:rtp-hdrext:sdes:mid" && a1[1] == *":params:rtp-hdrext:sdes:mid" && a1[2] == *"rtp-hdrext:sdes:mid" && a1[3] == *"xt:sdes:mid" && *(a1 + 27) == *"sdes:mid";
    }

    if (a2 != 43)
    {
      return v2;
    }

    v3 = *a1;
    v4 = a1[1];
    v5 = *"urn:ietf:params:rtp-hdrext:ssrc-audio-level";
    v6 = *":params:rtp-hdrext:ssrc-audio-level";
    v7 = a1[2];
    v8 = a1[3];
    v9 = *"rtp-hdrext:ssrc-audio-level";
    v10 = *"xt:ssrc-audio-level";
    v11 = a1[4];
    v12 = *"audio-level";
    v13 = *(a1 + 35);
    v14 = *"io-level";
  }

  v39 = v3 == v5 && v4 == v6 && v7 == v9 && v8 == v10 && v11 == v12;
  return v39 && v13 == v14;
}

uint64_t webrtc::RtpExtension::IsSupportedForVideo(void *a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 26:
      return *a1 == *"urn:3gpp:video-orientation" && a1[1] == *":video-orientation" && a1[2] == *"rientation" && *(a1 + 12) == *"on";
    case 34:
      v9 = *a1;
      v10 = a1[1];
      v11 = *"urn:ietf:params:rtp-hdrext:toffset";
      v12 = *":params:rtp-hdrext:toffset";
      v13 = a1[2];
      v14 = a1[3];
      v15 = *"rtp-hdrext:toffset";
      v16 = *"xt:toffset";
      v17 = *(a1 + 16);
      v18 = *"et";
      return v9 == v11 && v10 == v12 && v13 == v15 && v14 == v16 && v17 == v18;
    case 35:
      v9 = *a1;
      v10 = a1[1];
      v11 = *"urn:ietf:params:rtp-hdrext:sdes:mid";
      v12 = *":params:rtp-hdrext:sdes:mid";
      v13 = a1[2];
      v14 = a1[3];
      v15 = *"rtp-hdrext:sdes:mid";
      v16 = *"xt:sdes:mid";
      v17 = *(a1 + 27);
      v18 = *"sdes:mid";
      return v9 == v11 && v10 == v12 && v13 == v15 && v14 == v16 && v17 == v18;
    case 45:
      v57 = *a1;
      v58 = a1[1];
      v59 = a1[2];
      v60 = a1[3];
      v61 = a1[4];
      v31 = *(a1 + 37);
      v32 = *"tream-id";
      v65 = v57 == *"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id" && v58 == *":params:rtp-hdrext:sdes:rtp-stream-id" && v59 == *"rtp-hdrext:sdes:rtp-stream-id" && v60 == *"xt:sdes:rtp-stream-id" && v61 == *"rtp-stream-id";
      return v65 && v31 == v32;
    case 54:
      v19 = *a1;
      v20 = a1[1];
      v21 = *"urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id";
      v22 = *":params:rtp-hdrext:sdes:repaired-rtp-stream-id";
      v23 = a1[2];
      v24 = a1[3];
      v25 = *"rtp-hdrext:sdes:repaired-rtp-stream-id";
      v26 = *"xt:sdes:repaired-rtp-stream-id";
      v28 = a1[4];
      v27 = a1[5];
      v29 = *"repaired-rtp-stream-id";
      v30 = *"-rtp-stream-id";
      v31 = *(a1 + 46);
      v32 = *"tream-id";
      goto LABEL_71;
    case 56:
      v19 = *a1;
      v20 = a1[1];
      v21 = *"http://www.webrtc.org/experiments/rtp-hdrext/color-space";
      v22 = *"ww.webrtc.org/experiments/rtp-hdrext/color-space";
      v23 = a1[2];
      v24 = a1[3];
      v25 = *"c.org/experiments/rtp-hdrext/color-space";
      v26 = *"periments/rtp-hdrext/color-space";
      v28 = a1[4];
      v27 = a1[5];
      v29 = *"s/rtp-hdrext/color-space";
      v30 = *"rext/color-space";
      v31 = a1[6];
      v32 = *"or-space";
LABEL_71:
      v65 = v19 == v21 && v20 == v22 && v23 == v25 && v24 == v26 && v28 == v29 && v27 == v30;
      return v65 && v31 == v32;
    case 57:
      v36 = *a1;
      v37 = a1[1];
      v38 = *"http://www.webrtc.org/experiments/rtp-hdrext/video-timing";
      v39 = *"ww.webrtc.org/experiments/rtp-hdrext/video-timing";
      v40 = a1[2];
      v41 = a1[3];
      v42 = *"c.org/experiments/rtp-hdrext/video-timing";
      v43 = *"periments/rtp-hdrext/video-timing";
      v45 = a1[4];
      v44 = a1[5];
      v46 = *"s/rtp-hdrext/video-timing";
      v47 = *"rext/video-timing";
      v48 = a1[6];
      v49 = *"eo-timing";
      v31 = *(a1 + 56);
      v32 = webrtc::RtpExtension::kVideoTimingUri[56];
      goto LABEL_88;
    case 58:
      if (*a1 == *"http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time" && a1[1] == *"ww.webrtc.org/experiments/rtp-hdrext/abs-send-time" && a1[2] == *"c.org/experiments/rtp-hdrext/abs-send-time" && a1[3] == *"periments/rtp-hdrext/abs-send-time" && a1[4] == *"s/rtp-hdrext/abs-send-time" && a1[5] == *"rext/abs-send-time" && a1[6] == *"-send-time" && *(a1 + 28) == *"me")
      {
        return 1;
      }

      v36 = *a1;
      v37 = a1[1];
      v38 = *"http://www.webrtc.org/experiments/rtp-hdrext/playout-delay";
      v39 = *"ww.webrtc.org/experiments/rtp-hdrext/playout-delay";
      v40 = a1[2];
      v41 = a1[3];
      v42 = *"c.org/experiments/rtp-hdrext/playout-delay";
      v43 = *"periments/rtp-hdrext/playout-delay";
      v45 = a1[4];
      v44 = a1[5];
      v46 = *"s/rtp-hdrext/playout-delay";
      v47 = *"rext/playout-delay";
      v48 = a1[6];
      v49 = *"yout-delay";
      v31 = *(a1 + 28);
      v32 = *"ay";
LABEL_88:
      v65 = v36 == v38 && v37 == v39 && v40 == v42 && v41 == v43 && v45 == v46 && v44 == v47 && v48 == v49;
      return v65 && v31 == v32;
    case 61:
      v36 = *a1;
      v37 = a1[1];
      v38 = *"http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time";
      v39 = *"ww.webrtc.org/experiments/rtp-hdrext/abs-capture-time";
      v40 = a1[2];
      v41 = a1[3];
      v42 = *"c.org/experiments/rtp-hdrext/abs-capture-time";
      v43 = *"periments/rtp-hdrext/abs-capture-time";
      v45 = a1[4];
      v44 = a1[5];
      v46 = *"s/rtp-hdrext/abs-capture-time";
      v47 = *"rext/abs-capture-time";
      v48 = a1[6];
      v49 = *"-capture-time";
      v31 = *(a1 + 53);
      v32 = *"ure-time";
      goto LABEL_88;
    case 63:
      v36 = *a1;
      v37 = a1[1];
      v38 = *"http://www.webrtc.org/experiments/rtp-hdrext/video-content-type";
      v39 = *"ww.webrtc.org/experiments/rtp-hdrext/video-content-type";
      v40 = a1[2];
      v41 = a1[3];
      v42 = *"c.org/experiments/rtp-hdrext/video-content-type";
      v43 = *"periments/rtp-hdrext/video-content-type";
      v45 = a1[4];
      v44 = a1[5];
      v46 = *"s/rtp-hdrext/video-content-type";
      v47 = *"rext/video-content-type";
      v48 = a1[6];
      v49 = *"eo-content-type";
      v31 = *(a1 + 55);
      v32 = *"ent-type";
      goto LABEL_88;
    case 65:
      v8 = a1;
      if (!memcmp(a1, "http://www.webrtc.org/experiments/rtp-hdrext/transport-wide-cc-02", 0x41uLL))
      {
        return 1;
      }

      v6 = "http://www.webrtc.org/experiments/rtp-hdrext/corruption-detection";
      a1 = v8;
      v7 = 65;
      return memcmp(a1, v6, v7) == 0;
    case 68:
      v6 = "http://www.webrtc.org/experiments/rtp-hdrext/video-frame-tracking-id";
      v7 = 68;
      return memcmp(a1, v6, v7) == 0;
    case 70:
      v6 = "http://www.webrtc.org/experiments/rtp-hdrext/video-layers-allocation00";
      v7 = 70;
      return memcmp(a1, v6, v7) == 0;
    case 72:
      v6 = "http://www.webrtc.org/experiments/rtp-hdrext/generic-frame-descriptor-00";
      v7 = 72;
      return memcmp(a1, v6, v7) == 0;
    case 73:
      v6 = "http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01";
      v7 = 73;
      return memcmp(a1, v6, v7) == 0;
    case 87:
      v6 = "https://aomediacodec.github.io/av1-rtp-spec/#dependency-descriptor-rtp-header-extension";
      v7 = 87;
      return memcmp(a1, v6, v7) == 0;
    default:
      return v2;
  }
}

void webrtc::RtpExtension::DeduplicateHeaderExtensions(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  if (!a2)
  {
LABEL_30:
    v16 = a1[1];
    while (1)
    {
      if (v5 == v16)
      {
        goto LABEL_23;
      }

      if ((*(v5 + 28) & 1) == 0)
      {
        break;
      }

LABEL_32:
      v5 += 32;
    }

    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      v17 = *v5;
      v18 = *(v5 + 8);
    }

    else
    {
      v17 = v5;
      v18 = *(v5 + 23);
    }

    for (i = *a3; ; i += 4)
    {
      if (!i)
      {
        if (!a3[2])
        {
          std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(a3);
        }

        goto LABEL_48;
      }

      v20 = *(i + 23);
      if (v20 < 0)
      {
        v21 = *i;
        if (v18 != i[1])
        {
          continue;
        }
      }

      else
      {
        v21 = i;
        if (v18 != v20)
        {
          continue;
        }
      }

      if (!memcmp(v17, v21, v18))
      {
        goto LABEL_32;
      }
    }
  }

  v7 = a1[1];
  if (v5 == v7)
  {
LABEL_22:
    if (a2 == 2)
    {
LABEL_23:
      v13 = *a3;
      v14 = 126 - 2 * __clz(-*a3 >> 5);
      if (*a3)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,false>(v13, 0, v15, 1);
      return;
    }

    v5 = *a1;
    goto LABEL_30;
  }

  while (*(v5 + 28) != 1)
  {
LABEL_5:
    v5 += 32;
    if (v5 == v7)
    {
      goto LABEL_22;
    }
  }

  if ((*(v5 + 23) & 0x8000000000000000) != 0)
  {
    v8 = *v5;
    v9 = *(v5 + 8);
  }

  else
  {
    v8 = v5;
    v9 = *(v5 + 23);
  }

  for (j = *a3; j; j += 4)
  {
    v11 = *(j + 23);
    if (v11 < 0)
    {
      v12 = *j;
      if (v9 != j[1])
      {
        continue;
      }
    }

    else
    {
      v12 = j;
      if (v9 != v11)
      {
        continue;
      }
    }

    if (!memcmp(v8, v12, v9))
    {
      goto LABEL_5;
    }
  }

  if (!a3[2])
  {
    std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(a3);
  }

LABEL_48:
  __break(1u);
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  __sz = (a2 - 32);
  v475 = (a2 - 96);
  v476 = (a2 - 64);
  v7 = a1;
  v486 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 5;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(v7, v7 + 32, __sz);
          return;
        case 4:
          std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(v7, v7 + 32, v7 + 64, __sz);
          return;
        case 5:
          std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(v7, v7 + 32, v7 + 64, v7 + 96, __sz);
          return;
      }

      goto LABEL_9;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_9:
    if (v8 <= 23)
    {
      if (a4)
      {
        if (v7 == a2)
        {
          return;
        }

        v198 = (v7 + 32);
        if (v7 + 32 == a2)
        {
          return;
        }

        v199 = 0;
        v200 = v7;
LABEL_663:
        v286 = v200;
        v200 = v198;
        v287 = *(v286 + 55);
        v288 = v286[4];
        v289 = v286[5];
        if (v287 >= 0)
        {
          v290 = v198;
        }

        else
        {
          v290 = v286[4];
        }

        if (v287 >= 0)
        {
          v291 = *(v286 + 55);
        }

        else
        {
          v291 = v286[5];
        }

        v292 = *(v286 + 23);
        if (v292 >= 0)
        {
          v293 = v286;
        }

        else
        {
          v293 = *v286;
        }

        if (v292 >= 0)
        {
          v294 = *(v286 + 23);
        }

        else
        {
          v294 = v286[1];
        }

        if (v294 >= v291)
        {
          v295 = v291;
        }

        else
        {
          v295 = v294;
        }

        v296 = memcmp(v290, v293, v295);
        if (v296)
        {
          v297 = v486;
          if ((v296 & 0x80000000) == 0)
          {
            goto LABEL_662;
          }
        }

        else
        {
          v298 = v291 >= v294;
          if (v291 == v294)
          {
            v299 = *(v286 + 60);
            v300 = *(v286 + 28);
            v301 = v299 == v300;
            if (v299 >= v300)
            {
              v302 = 1;
            }

            else
            {
              v302 = -1;
            }

            if (v301)
            {
              v303 = *(v286 + 14);
              v304 = *(v286 + 6);
              v305 = v303 == v304;
              v302 = v303 >= v304 ? 1 : -1;
              if (v305)
              {
                v302 = 0;
              }
            }

            v297 = v486;
            if ((v302 & 0x80) == 0)
            {
              goto LABEL_662;
            }
          }

          else
          {
            v297 = v486;
            if (v298)
            {
              goto LABEL_662;
            }
          }
        }

        if (v287 < 0)
        {
          std::string::__init_copy_ctor_external(&v493, v288, v289);
        }

        else
        {
          v306 = *v200;
          v493.__r_.__value_.__r.__words[2] = *(v200 + 16);
          *&v493.__r_.__value_.__l.__data_ = v306;
        }

        v494 = *(v286 + 14);
        v495 = *(v286 + 60);
        v307 = v199;
        while (1)
        {
          v308 = v307;
          v309 = a1 + v307;
          v310 = *(a1 + v307 + 55);
          v311 = *(a1 + v307 + 23);
          if (v310 < 0)
          {
            if ((v311 & 0x80u) == 0)
            {
              v313 = v309;
            }

            else
            {
              v313 = *v309;
            }

            if ((v311 & 0x80u) == 0)
            {
              v314 = v311;
            }

            else
            {
              v314 = *(v309 + 8);
            }

            std::string::__assign_no_alias<false>((v309 + 32), v313, v314);
            v312 = a1 + v308;
            *(v312 + 56) = *(a1 + v308 + 24);
            *(v312 + 60) = *(a1 + v308 + 28);
            if (!v308)
            {
LABEL_746:
              v326 = a1;
              v297 = v486;
              if (a1 == &v493)
              {
                goto LABEL_660;
              }

LABEL_747:
              if (*(v326 + 23) < 0)
              {
                if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v283 = &v493;
                }

                else
                {
                  v283 = v493.__r_.__value_.__r.__words[0];
                }

                if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v493.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v493.__r_.__value_.__l.__size_;
                }

                std::string::__assign_no_alias<false>(v326, v283, size);
              }

              else if ((*(&v493.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(v326, v493.__r_.__value_.__l.__data_, v493.__r_.__value_.__l.__size_);
              }

              else
              {
                v327 = *&v493.__r_.__value_.__l.__data_;
                *(v326 + 16) = *(&v493.__r_.__value_.__l + 2);
                *v326 = v327;
              }

LABEL_660:
              v285 = v494;
              *(v312 + 28) = v495;
              *(v312 + 24) = v285;
              if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v493.__r_.__value_.__l.__data_);
              }

LABEL_662:
              v198 = (v200 + 32);
              v199 += 32;
              if (v200 + 32 == v297)
              {
                return;
              }

              goto LABEL_663;
            }
          }

          else if ((v311 & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>((v309 + 32), *(a1 + v308), *(a1 + v308 + 8));
            v312 = a1 + v308;
            *(v312 + 56) = *(a1 + v308 + 24);
            *(v312 + 60) = *(a1 + v308 + 28);
            if (!v308)
            {
              goto LABEL_746;
            }
          }

          else
          {
            *(v309 + 32) = *v309;
            *(v309 + 48) = *(v309 + 16);
            v312 = a1 + v308;
            *(v312 + 56) = *(a1 + v308 + 24);
            *(v312 + 60) = *(a1 + v308 + 28);
            if (!v308)
            {
              goto LABEL_746;
            }
          }

          v315 = (v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v493 : v493.__r_.__value_.__r.__words[0];
          v316 = (v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v493.__r_.__value_.__r.__words[2]) : v493.__r_.__value_.__l.__size_;
          v317 = *(v312 - 9);
          v318 = v317 >= 0 ? (v312 - 32) : *(v312 - 32);
          v319 = v317 >= 0 ? *(v312 - 9) : *(v312 - 24);
          v320 = v319 >= v316 ? v316 : v319;
          v321 = memcmp(v315, v318, v320);
          if (v321)
          {
            break;
          }

          v322 = v316 >= v319;
          if (v316 == v319)
          {
            v323 = *(v312 - 4);
            if (v495 >= v323)
            {
              v324 = 1;
            }

            else
            {
              v324 = -1;
            }

            if (v495 == v323)
            {
              v325 = *(v312 - 8);
              v324 = v494 >= v325 ? 1 : -1;
              if (v494 == v325)
              {
                v324 = 0;
              }
            }

            v297 = v486;
            v307 = v308 - 32;
            if ((v324 & 0x80) == 0)
            {
LABEL_744:
              v326 = a1 + v308;
              if ((a1 + v308) == &v493)
              {
                goto LABEL_660;
              }

              goto LABEL_747;
            }
          }

          else
          {
            v297 = v486;
            if (v322)
            {
              goto LABEL_744;
            }

LABEL_700:
            v307 = v308 - 32;
          }
        }

        v297 = v486;
        if ((v321 & 0x80000000) == 0)
        {
          goto LABEL_744;
        }

        goto LABEL_700;
      }

      if (v7 == a2)
      {
        return;
      }

      v21 = v7 + 32;
      if (v7 + 32 == a2)
      {
        return;
      }

      v427 = 0;
      v428 = 32;
      while (1)
      {
        v430 = v427;
        v427 = v428;
        v431 = a1 + v430;
        v432 = *(a1 + v430 + 55);
        v29 = *v21;
        v30 = *(a1 + v430 + 40);
        if (v432 >= 0)
        {
          v433 = v21;
        }

        else
        {
          v433 = *v21;
        }

        if (v432 >= 0)
        {
          v434 = *(a1 + v430 + 55);
        }

        else
        {
          v434 = *(a1 + v430 + 40);
        }

        v435 = *(v431 + 23);
        if (v435 >= 0)
        {
          v436 = (a1 + v430);
        }

        else
        {
          v436 = *v431;
        }

        if (v435 >= 0)
        {
          v437 = *(v431 + 23);
        }

        else
        {
          v437 = *(v431 + 8);
        }

        if (v437 >= v434)
        {
          v438 = v434;
        }

        else
        {
          v438 = v437;
        }

        v439 = memcmp(v433, v436, v438);
        if (v439)
        {
          a2 = v486;
          if ((v439 & 0x80000000) == 0)
          {
            goto LABEL_950;
          }

          goto LABEL_983;
        }

        v440 = v434 >= v437;
        if (v434 != v437)
        {
          break;
        }

        v441 = *(v431 + 60);
        v442 = *(v431 + 28);
        v443 = v441 == v442;
        if (v441 >= v442)
        {
          v444 = 1;
        }

        else
        {
          v444 = -1;
        }

        if (v443)
        {
          v445 = *(v431 + 56);
          v446 = *(v431 + 24);
          v447 = v445 == v446;
          v444 = v445 >= v446 ? 1 : -1;
          if (v447)
          {
            v444 = 0;
          }
        }

        a2 = v486;
        if (v444 < 0)
        {
          goto LABEL_983;
        }

LABEL_950:
        v428 = v427 + 32;
        v21 = a1 + v427 + 32;
        if (v21 == a2)
        {
          return;
        }
      }

      a2 = v486;
      if (v440)
      {
        goto LABEL_950;
      }

LABEL_983:
      if (v432 < 0)
      {
        std::string::__init_copy_ctor_external(&v493, v29, v30);
      }

      else
      {
        v448 = *v21;
        v493.__r_.__value_.__r.__words[2] = *(v21 + 16);
        *&v493.__r_.__value_.__l.__data_ = v448;
      }

      __szc = v427;
      v449 = *(v431 + 56);
      v495 = *(v431 + 60);
      v494 = v449;
      v450 = *(v431 + 23);
      while (1)
      {
        v452 = v430;
        v453 = a1 + v430;
        if (*(a1 + v430 + 55) < 0)
        {
          if ((v450 & 0x80u) == 0)
          {
            v454 = (a1 + v430);
          }

          else
          {
            v454 = *v453;
          }

          if ((v450 & 0x80u) == 0)
          {
            v455 = v450;
          }

          else
          {
            v455 = *(v453 + 8);
          }

          std::string::__assign_no_alias<false>((v453 + 32), v454, v455);
        }

        else if (v450 < 0)
        {
          std::string::__assign_no_alias<true>((v453 + 32), *(a1 + v430), *(a1 + v430 + 8));
        }

        else
        {
          *(v453 + 32) = *v453;
          *(v453 + 48) = *(v453 + 16);
        }

        v456 = a1 + v430;
        *(v456 + 56) = *(a1 + v452 + 24);
        *(v456 + 60) = *(a1 + v452 + 28);
        if (v452 == -32)
        {
LABEL_1036:
          __break(1u);
          goto LABEL_1037;
        }

        v457 = SHIBYTE(v493.__r_.__value_.__r.__words[2]);
        v30 = v493.__r_.__value_.__l.__size_;
        v29 = v493.__r_.__value_.__r.__words[0];
        if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v493;
        }

        else
        {
          v21 = v493.__r_.__value_.__r.__words[0];
        }

        if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v458 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v458 = v493.__r_.__value_.__l.__size_;
        }

        v450 = *(v456 - 9);
        if ((v450 & 0x80u) == 0)
        {
          v459 = (v456 - 32);
        }

        else
        {
          v459 = *(v456 - 32);
        }

        if ((v450 & 0x80u) == 0)
        {
          v460 = *(v456 - 9);
        }

        else
        {
          v460 = *(v456 - 24);
        }

        if (v460 >= v458)
        {
          v461 = v458;
        }

        else
        {
          v461 = v460;
        }

        v462 = memcmp(v21, v459, v461);
        if (v462)
        {
          a2 = v486;
          if ((v462 & 0x80000000) == 0)
          {
            goto LABEL_1031;
          }
        }

        else
        {
          v463 = v458 >= v460;
          if (v458 == v460)
          {
            v464 = *(v456 - 4);
            if (v495 >= v464)
            {
              v451 = 1;
            }

            else
            {
              v451 = -1;
            }

            a2 = v486;
            if (v495 == v464)
            {
              v465 = *(v456 - 8);
              v451 = v494 >= v465 ? 1 : -1;
              if (v494 == v465)
              {
                v451 = 0;
              }
            }

            goto LABEL_989;
          }

          a2 = v486;
          if (v463)
          {
LABEL_1031:
            v466 = a1 + v452;
            if (v466 != &v493)
            {
              if (*(v466 + 23) < 0)
              {
                std::string::__assign_no_alias<false>(v466, v21, v458);
              }

              else if (v457 < 0)
              {
                std::string::__assign_no_alias<true>(v466, v29, v30);
              }

              else
              {
                v467 = *&v493.__r_.__value_.__l.__data_;
                *(v466 + 16) = *(&v493.__r_.__value_.__l + 2);
                *v466 = v467;
              }
            }

            v429 = v494;
            *(v466 + 28) = v495;
            *(v466 + 24) = v429;
            if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v493.__r_.__value_.__l.__data_);
            }

            v427 = __szc;
            goto LABEL_950;
          }
        }

        v451 = -1;
LABEL_989:
        v430 = v452 - 32;
        if ((v451 & 0x80) == 0)
        {
          goto LABEL_1031;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v201 = (v8 - 2) >> 1;
      v202 = v201;
      v487 = (a2 - v7) >> 5;
      __sza = v201;
      while (1)
      {
        v206 = v202;
        if (v201 < v202)
        {
          goto LABEL_494;
        }

        v207 = (2 * v202) | 1;
        v208 = a1 + 32 * v207;
        v209 = 2 * v202 + 2;
        v480 = v202;
        if (v209 >= v8)
        {
          goto LABEL_515;
        }

        v210 = *(v208 + 23);
        v211 = v210 >= 0 ? (a1 + 32 * v207) : *v208;
        v212 = v210 >= 0 ? *(v208 + 23) : *(v208 + 8);
        v213 = *(v208 + 55);
        v214 = v213 >= 0 ? (v208 + 32) : *(v208 + 32);
        v215 = v213 >= 0 ? *(v208 + 55) : *(v208 + 40);
        v216 = v215 >= v212 ? v212 : v215;
        v217 = memcmp(v211, v214, v216);
        if (!v217)
        {
          break;
        }

        v206 = v480;
        if (v217 < 0)
        {
          goto LABEL_514;
        }

LABEL_515:
        v218 = a1 + 32 * v206;
        v219 = *(v208 + 23);
        if (v219 >= 0)
        {
          v220 = v208;
        }

        else
        {
          v220 = *v208;
        }

        if (v219 >= 0)
        {
          v221 = *(v208 + 23);
        }

        else
        {
          v221 = *(v208 + 8);
        }

        v222 = *(v218 + 23);
        v224 = *v218;
        v223 = *(v218 + 8);
        if (v222 >= 0)
        {
          v225 = v218;
        }

        else
        {
          v225 = *v218;
        }

        if (v222 >= 0)
        {
          v226 = *(v218 + 23);
        }

        else
        {
          v226 = *(v218 + 8);
        }

        if (v226 >= v221)
        {
          v227 = v221;
        }

        else
        {
          v227 = v226;
        }

        v228 = memcmp(v220, v225, v227);
        if (v228)
        {
          v8 = v487;
          v206 = v480;
          v201 = __sza;
          if (v228 < 0)
          {
            goto LABEL_494;
          }

LABEL_532:
          if (v222 < 0)
          {
            std::string::__init_copy_ctor_external(&v493, v224, v223);
          }

          else
          {
            v229 = *v218;
            v493.__r_.__value_.__r.__words[2] = *(v218 + 16);
            *&v493.__r_.__value_.__l.__data_ = v229;
          }

          v238 = *(v218 + 24);
          v495 = *(v218 + 28);
          v494 = v238;
          while (1)
          {
            v247 = v208;
            if (v218 != v208)
            {
              v248 = *(v208 + 23);
              if (*(v218 + 23) < 0)
              {
                if (v248 >= 0)
                {
                  v254 = v208;
                }

                else
                {
                  v254 = *v208;
                }

                if (v248 >= 0)
                {
                  v255 = *(v208 + 23);
                }

                else
                {
                  v255 = *(v208 + 8);
                }

                std::string::__assign_no_alias<false>(v218, v254, v255);
              }

              else if ((*(v208 + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(v218, *v208, *(v208 + 8));
              }

              else
              {
                v249 = *v208;
                *(v218 + 16) = *(v208 + 16);
                *v218 = v249;
              }
            }

            v256 = *(v208 + 24);
            *(v218 + 28) = *(v208 + 28);
            *(v218 + 24) = v256;
            if (v201 < v207)
            {
LABEL_630:
              if (v247 != &v493)
              {
                if (*(v247 + 23) < 0)
                {
                  if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v203 = &v493;
                  }

                  else
                  {
                    v203 = v493.__r_.__value_.__r.__words[0];
                  }

                  if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v204 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v204 = v493.__r_.__value_.__l.__size_;
                  }

                  std::string::__assign_no_alias<false>(v247, v203, v204);
                }

                else if ((*(&v493.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v247, v493.__r_.__value_.__l.__data_, v493.__r_.__value_.__l.__size_);
                }

                else
                {
                  v275 = *&v493.__r_.__value_.__l.__data_;
                  *(v247 + 16) = *(&v493.__r_.__value_.__l + 2);
                  *v247 = v275;
                }
              }

              v205 = v494;
              *(v247 + 28) = v495;
              *(v247 + 24) = v205;
              if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v493.__r_.__value_.__l.__data_);
              }

              v206 = v480;
              goto LABEL_494;
            }

            v257 = 2 * v207;
            v207 = (2 * v207) | 1;
            v208 = a1 + 32 * v207;
            v258 = v257 + 2;
            if (v257 + 2 < v8)
            {
              v259 = *(v208 + 23);
              if (v259 >= 0)
              {
                v260 = (a1 + 32 * v207);
              }

              else
              {
                v260 = *v208;
              }

              if (v259 >= 0)
              {
                v261 = *(v208 + 23);
              }

              else
              {
                v261 = *(v208 + 8);
              }

              v262 = *(v208 + 55);
              if (v262 >= 0)
              {
                v263 = (v208 + 32);
              }

              else
              {
                v263 = *(v208 + 32);
              }

              if (v262 >= 0)
              {
                v264 = *(v208 + 55);
              }

              else
              {
                v264 = *(v208 + 40);
              }

              if (v264 >= v261)
              {
                v265 = v261;
              }

              else
              {
                v265 = v264;
              }

              v266 = memcmp(v260, v263, v265);
              if (v266)
              {
                v8 = v487;
                v201 = __sza;
                if (v266 < 0)
                {
                  goto LABEL_549;
                }
              }

              else
              {
                v267 = v261 >= v264;
                if (v261 == v264)
                {
                  v268 = *(v208 + 28);
                  v269 = *(v208 + 60);
                  v270 = v268 == v269;
                  if (v268 >= v269)
                  {
                    v271 = 1;
                  }

                  else
                  {
                    v271 = -1;
                  }

                  v201 = __sza;
                  if (v270)
                  {
                    v272 = *(v208 + 24);
                    v273 = *(v208 + 56);
                    v274 = v272 == v273;
                    v271 = v272 >= v273 ? 1 : -1;
                    if (v274)
                    {
                      v271 = 0;
                    }
                  }

                  v8 = v487;
                  if (v271 < 0)
                  {
LABEL_549:
                    v208 += 32;
                    v207 = v258;
                  }
                }

                else
                {
                  v8 = v487;
                  v201 = __sza;
                  if (!v267)
                  {
                    goto LABEL_549;
                  }
                }
              }
            }

            v239 = *(v208 + 23);
            if (v239 >= 0)
            {
              v240 = v208;
            }

            else
            {
              v240 = *v208;
            }

            if (v239 >= 0)
            {
              v241 = *(v208 + 23);
            }

            else
            {
              v241 = *(v208 + 8);
            }

            if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v242 = &v493;
            }

            else
            {
              v242 = v493.__r_.__value_.__r.__words[0];
            }

            if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v243 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v243 = v493.__r_.__value_.__l.__size_;
            }

            if (v243 >= v241)
            {
              v244 = v241;
            }

            else
            {
              v244 = v243;
            }

            v245 = memcmp(v240, v242, v244);
            if (v245)
            {
              if (v245 < 0)
              {
                goto LABEL_630;
              }
            }

            else
            {
              if (v241 == v243)
              {
                v250 = *(v208 + 28);
                v251 = v250 == v495;
                if (v250 >= v495)
                {
                  v246 = 1;
                }

                else
                {
                  v246 = -1;
                }

                if (v251)
                {
                  v252 = *(v208 + 24);
                  v253 = v252 == v494;
                  v246 = v252 >= v494 ? 1 : -1;
                  if (v253)
                  {
                    v246 = 0;
                  }
                }

                goto LABEL_568;
              }

              if (v241 < v243)
              {
                goto LABEL_630;
              }
            }

            v246 = 1;
LABEL_568:
            v218 = v247;
            if (v246 < 0)
            {
              goto LABEL_630;
            }
          }
        }

        v230 = v221 >= v226;
        if (v221 != v226)
        {
          v8 = v487;
          v206 = v480;
          v201 = __sza;
          if (!v230)
          {
            goto LABEL_494;
          }

          goto LABEL_532;
        }

        v231 = *(v208 + 28);
        v232 = *(v218 + 28);
        v233 = v231 == v232;
        if (v231 >= v232)
        {
          v234 = 1;
        }

        else
        {
          v234 = -1;
        }

        v8 = v487;
        if (v233)
        {
          v235 = *(v208 + 24);
          v236 = *(v218 + 24);
          v237 = v235 == v236;
          v234 = v235 >= v236 ? 1 : -1;
          if (v237)
          {
            v234 = 0;
          }
        }

        v206 = v480;
        v201 = __sza;
        if ((v234 & 0x80) == 0)
        {
          goto LABEL_532;
        }

LABEL_494:
        v202 = v206 - 1;
        if (!v206)
        {
          v485 = a1;
          while (1)
          {
            if (*(a1 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v490, *a1, *(a1 + 8));
            }

            else
            {
              v328 = *a1;
              v490.__r_.__value_.__r.__words[2] = *(a1 + 16);
              *&v490.__r_.__value_.__l.__data_ = v328;
            }

            v329 = 0;
            v330 = *(a1 + 24);
            v492 = *(a1 + 28);
            v491 = v330;
            v331 = (v8 - 2) >> 1;
            v332 = a1;
            v488 = v331;
            do
            {
              v337 = v332;
              v338 = &v332->__r_.__value_.__l.__data_ + 4 * v329;
              v332 = (v338 + 4);
              v339 = 2 * v329;
              v329 = (2 * v329) | 1;
              v340 = v339 + 2;
              if (v339 + 2 >= v8)
              {
                goto LABEL_784;
              }

              v341 = v8;
              v342 = a2;
              v343 = *(v338 + 55);
              if (v343 >= 0)
              {
                v344 = (v338 + 4);
              }

              else
              {
                v344 = v338[4];
              }

              if (v343 >= 0)
              {
                v345 = *(v338 + 55);
              }

              else
              {
                v345 = v338[5];
              }

              v346 = *(v338 + 87);
              if (v346 >= 0)
              {
                v347 = (v338 + 8);
              }

              else
              {
                v347 = v338[8];
              }

              if (v346 >= 0)
              {
                v348 = *(v338 + 87);
              }

              else
              {
                v348 = v338[9];
              }

              if (v348 >= v345)
              {
                v349 = v345;
              }

              else
              {
                v349 = v348;
              }

              v350 = memcmp(v344, v347, v349);
              if (v350)
              {
                a2 = v342;
                v8 = v341;
                a1 = v485;
                v331 = v488;
                if ((v350 & 0x80000000) == 0)
                {
                  goto LABEL_784;
                }

LABEL_783:
                v332 = (v338 + 8);
                v329 = v340;
                goto LABEL_784;
              }

              v353 = v345 >= v348;
              if (v345 == v348)
              {
                v354 = *(v338 + 60);
                v355 = *(v338 + 92);
                v356 = v354 == v355;
                if (v354 >= v355)
                {
                  v357 = 1;
                }

                else
                {
                  v357 = -1;
                }

                if (v356)
                {
                  v358 = *(v338 + 14);
                  v359 = *(v338 + 22);
                  v360 = v358 == v359;
                  v357 = v358 >= v359 ? 1 : -1;
                  if (v360)
                  {
                    v357 = 0;
                  }
                }

                a2 = v342;
                v8 = v341;
                a1 = v485;
                v331 = v488;
                if (v357 < 0)
                {
                  goto LABEL_783;
                }
              }

              else
              {
                a2 = v342;
                v8 = v341;
                a1 = v485;
                v331 = v488;
                if (!v353)
                {
                  goto LABEL_783;
                }
              }

LABEL_784:
              if (v337 != v332)
              {
                v351 = HIBYTE(v332->__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v337->__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v351 >= 0)
                  {
                    v333 = v332;
                  }

                  else
                  {
                    v333 = v332->__r_.__value_.__r.__words[0];
                  }

                  if (v351 >= 0)
                  {
                    v334 = HIBYTE(v332->__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v334 = v332->__r_.__value_.__l.__size_;
                  }

                  std::string::__assign_no_alias<false>(v337, v333, v334);
                }

                else if ((*(&v332->__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v337, v332->__r_.__value_.__l.__data_, v332->__r_.__value_.__l.__size_);
                }

                else
                {
                  v352 = *&v332->__r_.__value_.__l.__data_;
                  v337->__r_.__value_.__r.__words[2] = v332->__r_.__value_.__r.__words[2];
                  *&v337->__r_.__value_.__l.__data_ = v352;
                }
              }

              v336 = v332 + 1;
              data = v332[1].__r_.__value_.__l.__data_;
              v337[1].__r_.__value_.__s.__data_[4] = v332[1].__r_.__value_.__s.__data_[4];
              LODWORD(v337[1].__r_.__value_.__l.__data_) = data;
            }

            while (v329 <= v331);
            v361 = (a2 - 32);
            if (v332 == (a2 - 32))
            {
              if (v332 != &v490)
              {
                if (SHIBYTE(v332->__r_.__value_.__r.__words[2]) < 0)
                {
                  if ((v490.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v393 = &v490;
                  }

                  else
                  {
                    v393 = v490.__r_.__value_.__r.__words[0];
                  }

                  if ((v490.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v394 = HIBYTE(v490.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v394 = v490.__r_.__value_.__l.__size_;
                  }

                  std::string::__assign_no_alias<false>(v332, v393, v394);
                }

                else if ((*(&v490.__r_.__value_.__s + 23) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v332, v490.__r_.__value_.__l.__data_, v490.__r_.__value_.__l.__size_);
                }

                else
                {
                  v364 = *&v490.__r_.__value_.__l.__data_;
                  v332->__r_.__value_.__r.__words[2] = v490.__r_.__value_.__r.__words[2];
                  *&v332->__r_.__value_.__l.__data_ = v364;
                }
              }

              v396 = v491;
              v332[1].__r_.__value_.__s.__data_[4] = v492;
              LODWORD(v336->__r_.__value_.__l.__data_) = v396;
              goto LABEL_877;
            }

            v362 = *(a2 - 9);
            if (SHIBYTE(v332->__r_.__value_.__r.__words[2]) < 0)
            {
              if (v362 >= 0)
              {
                v365 = (a2 - 32);
              }

              else
              {
                v365 = *(a2 - 32);
              }

              if (v362 >= 0)
              {
                v366 = *(a2 - 9);
              }

              else
              {
                v366 = *(a2 - 24);
              }

              std::string::__assign_no_alias<false>(v332, v365, v366);
            }

            else if ((*(a2 - 9) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v332, *(a2 - 32), *(a2 - 24));
            }

            else
            {
              v363 = *&v361->__r_.__value_.__l.__data_;
              v332->__r_.__value_.__r.__words[2] = *(a2 - 16);
              *&v332->__r_.__value_.__l.__data_ = v363;
            }

            v367 = *(a2 - 8);
            v332[1].__r_.__value_.__s.__data_[4] = *(a2 - 4);
            LODWORD(v336->__r_.__value_.__l.__data_) = v367;
            if (v361 != &v490)
            {
              if (*(a2 - 9) < 0)
              {
                if ((v490.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v369 = &v490;
                }

                else
                {
                  v369 = v490.__r_.__value_.__r.__words[0];
                }

                if ((v490.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v370 = HIBYTE(v490.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v370 = v490.__r_.__value_.__l.__size_;
                }

                std::string::__assign_no_alias<false>((a2 - 32), v369, v370);
              }

              else if ((*(&v490.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>((a2 - 32), v490.__r_.__value_.__l.__data_, v490.__r_.__value_.__l.__size_);
              }

              else
              {
                v368 = *&v490.__r_.__value_.__l.__data_;
                *(a2 - 16) = *(&v490.__r_.__value_.__l + 2);
                *&v361->__r_.__value_.__l.__data_ = v368;
              }
            }

            v371 = v491;
            *(a2 - 4) = v492;
            *(a2 - 8) = v371;
            v372 = (&v332[1].__r_.__value_.__r.__words[1] - a1) >> 5;
            v96 = v372 < 2;
            v373 = v372 - 2;
            if (v96)
            {
              goto LABEL_877;
            }

            v489 = v8;
            v374 = v373 >> 1;
            v375 = (a1 + 32 * (v373 >> 1));
            v376 = SHIBYTE(v375->__r_.__value_.__r.__words[2]);
            if (v376 >= 0)
            {
              v377 = (a1 + 32 * (v373 >> 1));
            }

            else
            {
              v377 = v375->__r_.__value_.__r.__words[0];
            }

            if (v376 >= 0)
            {
              v378 = HIBYTE(v375->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v378 = v375->__r_.__value_.__l.__size_;
            }

            v379 = HIBYTE(v332->__r_.__value_.__r.__words[2]);
            v380 = v379;
            v381 = v332->__r_.__value_.__r.__words[0];
            if (v379 >= 0)
            {
              v382 = v332;
            }

            else
            {
              v382 = v332->__r_.__value_.__r.__words[0];
            }

            __szb = v332->__r_.__value_.__l.__size_;
            if (v379 >= 0)
            {
              v383 = HIBYTE(v332->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v383 = v332->__r_.__value_.__l.__size_;
            }

            if (v383 >= v378)
            {
              v384 = v378;
            }

            else
            {
              v384 = v383;
            }

            v385 = memcmp(v377, v382, v384);
            if (v385)
            {
              v8 = v489;
              if ((v385 & 0x80000000) == 0)
              {
                goto LABEL_877;
              }
            }

            else
            {
              v386 = v378 >= v383;
              if (v378 == v383)
              {
                v387 = v375[1].__r_.__value_.__s.__data_[4];
                v388 = v332[1].__r_.__value_.__s.__data_[4];
                v389 = v387 == v388;
                if (v387 >= v388)
                {
                  v390 = 1;
                }

                else
                {
                  v390 = -1;
                }

                if (v389)
                {
                  v391 = v375[1].__r_.__value_.__l.__data_;
                  v392 = v391 == LODWORD(v336->__r_.__value_.__l.__data_);
                  v390 = v391 >= SLODWORD(v336->__r_.__value_.__l.__data_) ? 1 : -1;
                  if (v392)
                  {
                    v390 = 0;
                  }
                }

                v8 = v489;
                if ((v390 & 0x80) == 0)
                {
                  goto LABEL_877;
                }
              }

              else
              {
                v8 = v489;
                if (v386)
                {
                  goto LABEL_877;
                }
              }
            }

            if (v380 < 0)
            {
              std::string::__init_copy_ctor_external(&v493, v381, __szb);
            }

            else
            {
              v395 = *&v332->__r_.__value_.__l.__data_;
              v493.__r_.__value_.__r.__words[2] = v332->__r_.__value_.__r.__words[2];
              *&v493.__r_.__value_.__l.__data_ = v395;
            }

            v397 = v336->__r_.__value_.__l.__data_;
            v495 = v332[1].__r_.__value_.__s.__data_[4];
            v494 = v397;
            while (2)
            {
              v399 = v375;
              if (v332 == v375)
              {
                goto LABEL_896;
              }

              v400 = HIBYTE(v375->__r_.__value_.__r.__words[2]);
              if (SHIBYTE(v332->__r_.__value_.__r.__words[2]) < 0)
              {
                if (v400 >= 0)
                {
                  v404 = v375;
                }

                else
                {
                  v404 = v375->__r_.__value_.__r.__words[0];
                }

                if (v400 >= 0)
                {
                  v405 = HIBYTE(v375->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v405 = v375->__r_.__value_.__l.__size_;
                }

                std::string::__assign_no_alias<false>(v332, v404, v405);
LABEL_896:
                v403 = v375 + 1;
                v406 = v375[1].__r_.__value_.__l.__data_;
                v332[1].__r_.__value_.__s.__data_[4] = v375[1].__r_.__value_.__s.__data_[4];
                LODWORD(v332[1].__r_.__value_.__l.__data_) = v406;
                if (!v374)
                {
                  goto LABEL_928;
                }

LABEL_897:
                v374 = (v374 - 1) >> 1;
                v375 = (a1 + 32 * v374);
                v407 = SHIBYTE(v375->__r_.__value_.__r.__words[2]);
                if (v407 >= 0)
                {
                  v408 = (a1 + 32 * v374);
                }

                else
                {
                  v408 = v375->__r_.__value_.__r.__words[0];
                }

                if (v407 >= 0)
                {
                  v409 = HIBYTE(v375->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v409 = v375->__r_.__value_.__l.__size_;
                }

                if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v410 = &v493;
                }

                else
                {
                  v410 = v493.__r_.__value_.__r.__words[0];
                }

                if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v411 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v411 = v493.__r_.__value_.__l.__size_;
                }

                if (v411 >= v409)
                {
                  v412 = v409;
                }

                else
                {
                  v412 = v411;
                }

                v413 = memcmp(v408, v410, v412);
                if (v413)
                {
                  if ((v413 & 0x80000000) == 0)
                  {
                    goto LABEL_928;
                  }
                }

                else
                {
                  if (v409 == v411)
                  {
                    v414 = v375[1].__r_.__value_.__s.__data_[4];
                    v415 = v414 == v495;
                    if (v414 >= v495)
                    {
                      v398 = 1;
                    }

                    else
                    {
                      v398 = -1;
                    }

                    if (v415)
                    {
                      v416 = v375[1].__r_.__value_.__l.__data_;
                      v417 = v416 == v494;
                      v398 = v416 >= v494 ? 1 : -1;
                      if (v417)
                      {
                        v398 = 0;
                      }
                    }

LABEL_883:
                    v332 = v399;
                    if ((v398 & 0x80) == 0)
                    {
                      goto LABEL_928;
                    }

                    continue;
                  }

                  if (v409 >= v411)
                  {
                    goto LABEL_928;
                  }
                }

                v398 = -1;
                goto LABEL_883;
              }

              break;
            }

            if ((*(&v375->__r_.__value_.__s + 23) & 0x80) == 0)
            {
              v401 = *&v375->__r_.__value_.__l.__data_;
              v332->__r_.__value_.__r.__words[2] = v375->__r_.__value_.__r.__words[2];
              *&v332->__r_.__value_.__l.__data_ = v401;
              v403 = v375 + 1;
              v402 = v375[1].__r_.__value_.__l.__data_;
              v332[1].__r_.__value_.__s.__data_[4] = v375[1].__r_.__value_.__s.__data_[4];
              LODWORD(v332[1].__r_.__value_.__l.__data_) = v402;
              if (!v374)
              {
                goto LABEL_928;
              }

              goto LABEL_897;
            }

            std::string::__assign_no_alias<true>(v332, v375->__r_.__value_.__l.__data_, v375->__r_.__value_.__l.__size_);
            v403 = v375 + 1;
            v418 = v375[1].__r_.__value_.__l.__data_;
            v332[1].__r_.__value_.__s.__data_[4] = v375[1].__r_.__value_.__s.__data_[4];
            LODWORD(v332[1].__r_.__value_.__l.__data_) = v418;
            if (v374)
            {
              goto LABEL_897;
            }

LABEL_928:
            if (v399 == &v493)
            {
              goto LABEL_939;
            }

            if (SHIBYTE(v399->__r_.__value_.__r.__words[2]) < 0)
            {
              if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v421 = &v493;
              }

              else
              {
                v421 = v493.__r_.__value_.__r.__words[0];
              }

              if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v422 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v422 = v493.__r_.__value_.__l.__size_;
              }

              std::string::__assign_no_alias<false>(v399, v421, v422);
LABEL_939:
              v423 = SHIBYTE(v493.__r_.__value_.__r.__words[2]);
              v424 = v495;
              LODWORD(v403->__r_.__value_.__l.__data_) = v494;
              v403->__r_.__value_.__s.__data_[4] = v424;
              if (v423 < 0)
              {
                goto LABEL_940;
              }

              goto LABEL_877;
            }

            if ((*(&v493.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              v419 = *&v493.__r_.__value_.__l.__data_;
              v399->__r_.__value_.__r.__words[2] = v493.__r_.__value_.__r.__words[2];
              *&v399->__r_.__value_.__l.__data_ = v419;
              v420 = v494;
              v403->__r_.__value_.__s.__data_[4] = v495;
              LODWORD(v403->__r_.__value_.__l.__data_) = v420;
              goto LABEL_877;
            }

            std::string::__assign_no_alias<true>(v399, v493.__r_.__value_.__l.__data_, v493.__r_.__value_.__l.__size_);
            v425 = SHIBYTE(v493.__r_.__value_.__r.__words[2]);
            v426 = v495;
            LODWORD(v403->__r_.__value_.__l.__data_) = v494;
            v403->__r_.__value_.__s.__data_[4] = v426;
            if (v425 < 0)
            {
LABEL_940:
              operator delete(v493.__r_.__value_.__l.__data_);
            }

LABEL_877:
            if (SHIBYTE(v490.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v490.__r_.__value_.__l.__data_);
            }

            a2 = v361;
            v96 = v8-- <= 2;
            if (v96)
            {
              return;
            }
          }
        }
      }

      if (v212 == v215)
      {
        v276 = *(v208 + 28);
        v277 = *(v208 + 60);
        v278 = v276 == v277;
        if (v276 >= v277)
        {
          v279 = 1;
        }

        else
        {
          v279 = -1;
        }

        if (v278)
        {
          v280 = *(v208 + 24);
          v281 = *(v208 + 56);
          v282 = v280 == v281;
          v279 = v280 >= v281 ? 1 : -1;
          if (v282)
          {
            v279 = 0;
          }
        }

        v206 = v480;
        if ((v279 & 0x80) == 0)
        {
          goto LABEL_515;
        }
      }

      else
      {
        v206 = v480;
        if (v212 >= v215)
        {
          goto LABEL_515;
        }
      }

LABEL_514:
      v208 += 32;
      v207 = v209;
      goto LABEL_515;
    }

    v9 = v8 >> 1;
    v10 = (v7 + 32 * (v8 >> 1));
    if (v8 < 0x81)
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1 + 32 * (v8 >> 1), a1, __sz);
      v479 = a3 - 1;
      if (a4)
      {
        goto LABEL_33;
      }

LABEL_13:
      v11 = *(a1 - 9);
      if (v11 >= 0)
      {
        v12 = (a1 - 32);
      }

      else
      {
        v12 = *(a1 - 32);
      }

      if (v11 >= 0)
      {
        v13 = *(a1 - 9);
      }

      else
      {
        v13 = *(a1 - 24);
      }

      v14 = *(a1 + 23);
      v15 = *a1;
      v16 = *(a1 + 8);
      if (v14 >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      if (v14 >= 0)
      {
        v18 = *(a1 + 23);
      }

      else
      {
        v18 = *(a1 + 8);
      }

      if (v18 >= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v18;
      }

      v20 = memcmp(v12, v17, v19);
      if (v20)
      {
        v21 = &v493;
        if (v20 < 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v88 = v13 >= v18;
        if (v13 == v18)
        {
          v89 = *(a1 - 4);
          v90 = *(a1 + 28);
          v88 = v89 >= v90;
          v91 = v89 == v90;
          v92 = -1;
          if (v88)
          {
            v92 = 1;
          }

          if (v91)
          {
            v93 = *(a1 - 8);
            v94 = *(a1 + 24);
            v95 = v93 == v94;
            v96 = v93 < v94;
            v92 = -1;
            if (!v96)
            {
              v92 = 1;
            }

            if (v95)
            {
              v92 = 0;
            }
          }

          v21 = &v493;
          if (v92 < 0)
          {
LABEL_30:
            if ((v14 & 0x80) != 0)
            {
              goto LABEL_34;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v21 = &v493;
          if (!v88)
          {
            goto LABEL_30;
          }
        }
      }

      if (v14 < 0)
      {
        std::string::__init_copy_ctor_external(&v493, v15, v16);
      }

      else
      {
        v110 = *a1;
        v493.__r_.__value_.__r.__words[2] = *(a1 + 16);
        *&v493.__r_.__value_.__l.__data_ = v110;
      }

      v111 = *(a1 + 24);
      v495 = *(a1 + 28);
      v494 = v111;
      if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = &v493;
      }

      else
      {
        v112 = v493.__r_.__value_.__r.__words[0];
      }

      if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v493.__r_.__value_.__l.__size_;
      }

      v113 = *(a2 - 9);
      if (v113 >= 0)
      {
        v114 = __sz;
      }

      else
      {
        v114 = *(a2 - 32);
      }

      if (v113 >= 0)
      {
        v115 = *(a2 - 9);
      }

      else
      {
        v115 = *(a2 - 24);
      }

      if (v115 >= v29)
      {
        v116 = v29;
      }

      else
      {
        v116 = v115;
      }

      v117 = memcmp(v112, v114, v116);
      if (v117)
      {
        if (v117 < 0)
        {
          goto LABEL_301;
        }
      }

      else if (v29 == v115)
      {
        v131 = *(a2 - 4);
        v132 = -1;
        if (v495 >= v131)
        {
          v132 = 1;
        }

        if (v495 == v131)
        {
          v133 = *(a2 - 8);
          v132 = v494 >= v133 ? 1 : -1;
          if (v494 == v133)
          {
            v132 = 0;
          }
        }

        if (v132 < 0)
        {
LABEL_301:
          v30 = v495;
          v118 = v494;
          v134 = (a1 + 32);
          while (1)
          {
            if (v134 == a2)
            {
              goto LABEL_1036;
            }

            v7 = v134;
            v136 = *(v134 + 23);
            if (v136 >= 0)
            {
              v137 = v134;
            }

            else
            {
              v137 = *v134;
            }

            if (v136 >= 0)
            {
              v138 = *(v134 + 23);
            }

            else
            {
              v138 = v134[1];
            }

            if (v138 >= v29)
            {
              v139 = v29;
            }

            else
            {
              v139 = v138;
            }

            v140 = memcmp(v112, v137, v139);
            if (v140)
            {
              if (v140 < 0)
              {
LABEL_331:
                v21 = &v493;
                goto LABEL_332;
              }

              v135 = 1;
              v21 = &v493;
            }

            else
            {
              v141 = v29 >= v138;
              if (v29 == v138)
              {
                v142 = *(v7 + 28);
                v143 = v30 == v142;
                if (v30 >= v142)
                {
                  v135 = 1;
                }

                else
                {
                  v135 = -1;
                }

                v21 = &v493;
                if (v143)
                {
                  v144 = *(v7 + 24);
                  v145 = v118 == v144;
                  v135 = v118 >= v144 ? 1 : -1;
                  if (v145)
                  {
                    v135 = 0;
                  }
                }
              }

              else
              {
                v21 = &v493;
                if (!v141)
                {
                  goto LABEL_332;
                }

                v135 = 1;
              }
            }

            v134 = (v7 + 32);
            if (v135 < 0)
            {
              goto LABEL_332;
            }
          }
        }
      }

      else if (v29 < v115)
      {
        goto LABEL_301;
      }

      v30 = v495;
      v118 = v494;
      v119 = a1 + 32;
      do
      {
        v7 = v119;
        if (v119 >= a2)
        {
          break;
        }

        v121 = *(v119 + 23);
        if (v121 >= 0)
        {
          v122 = v7;
        }

        else
        {
          v122 = *v7;
        }

        if (v121 >= 0)
        {
          v123 = *(v7 + 23);
        }

        else
        {
          v123 = *(v7 + 8);
        }

        if (v123 >= v29)
        {
          v124 = v29;
        }

        else
        {
          v124 = v123;
        }

        v125 = memcmp(v112, v122, v124);
        if (v125)
        {
          if (v125 < 0)
          {
            goto LABEL_331;
          }

          v120 = 1;
          v21 = &v493;
        }

        else
        {
          v126 = v29 >= v123;
          if (v29 == v123)
          {
            v127 = *(v7 + 28);
            v128 = v30 == v127;
            if (v30 >= v127)
            {
              v120 = 1;
            }

            else
            {
              v120 = -1;
            }

            v21 = &v493;
            if (v128)
            {
              v129 = *(v7 + 24);
              v130 = v118 == v129;
              v120 = v118 >= v129 ? 1 : -1;
              if (v130)
              {
                v120 = 0;
              }
            }
          }

          else
          {
            v21 = &v493;
            if (!v126)
            {
              break;
            }

            v120 = 1;
          }
        }

        v119 = v7 + 32;
      }

      while ((v120 & 0x80) == 0);
LABEL_332:
      v146 = a2;
      if (v7 < a2)
      {
        v147 = __sz;
        do
        {
          if (v147 + 4 == a1)
          {
            goto LABEL_1036;
          }

          v146 = v147;
          v149 = *(v147 + 23);
          if (v149 >= 0)
          {
            v150 = v147;
          }

          else
          {
            v150 = *v147;
          }

          if (v149 >= 0)
          {
            v151 = *(v147 + 23);
          }

          else
          {
            v151 = v147[1];
          }

          if (v151 >= v29)
          {
            v152 = v29;
          }

          else
          {
            v152 = v151;
          }

          v153 = memcmp(v112, v150, v152);
          if (v153)
          {
            v21 = &v493;
            if ((v153 & 0x80000000) == 0)
            {
              break;
            }
          }

          else
          {
            v154 = v29 >= v151;
            if (v29 == v151)
            {
              v155 = *(v146 + 28);
              v156 = v30 == v155;
              if (v30 >= v155)
              {
                v148 = 1;
              }

              else
              {
                v148 = -1;
              }

              v21 = &v493;
              if (v156)
              {
                v157 = *(v146 + 24);
                v158 = v118 == v157;
                v148 = v118 >= v157 ? 1 : -1;
                if (v158)
                {
                  v148 = 0;
                }
              }

              goto LABEL_336;
            }

            v21 = &v493;
            if (v154)
            {
              break;
            }
          }

          v148 = -1;
LABEL_336:
          v147 = (v146 - 32);
        }

        while (v148 < 0);
      }

      if (v7 < v146)
      {
LABEL_368:
        std::swap[abi:sn200100]<webrtc::RtpExtension>(v7, v146);
        if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v162 = &v493;
        }

        else
        {
          v162 = v493.__r_.__value_.__r.__words[0];
        }

        if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v493.__r_.__value_.__l.__size_;
        }

        v30 = v495;
        v21 = v494;
        v163 = (v7 + 32);
        while (1)
        {
          if (v163 == a2)
          {
            goto LABEL_1036;
          }

          v7 = v163;
          v165 = *(v163 + 23);
          if (v165 >= 0)
          {
            v166 = v163;
          }

          else
          {
            v166 = *v163;
          }

          if (v165 >= 0)
          {
            v167 = *(v163 + 23);
          }

          else
          {
            v167 = v163[1];
          }

          if (v167 >= v29)
          {
            v168 = v29;
          }

          else
          {
            v168 = v167;
          }

          v169 = memcmp(v162, v166, v168);
          if (v169)
          {
            if (v169 < 0)
            {
              goto LABEL_402;
            }
          }

          else
          {
            if (v29 == v167)
            {
              v170 = *(v7 + 28);
              v171 = v30 == v170;
              if (v30 >= v170)
              {
                v164 = 1;
              }

              else
              {
                v164 = -1;
              }

              if (v171)
              {
                v172 = *(v7 + 24);
                v173 = v21 == v172;
                v164 = v21 >= v172 ? 1 : -1;
                if (v173)
                {
                  v164 = 0;
                }
              }

              goto LABEL_377;
            }

            if (v29 < v167)
            {
LABEL_402:
              v174 = (v146 - 32);
              while (1)
              {
                if (v174 + 4 == a1)
                {
                  goto LABEL_1036;
                }

                v146 = v174;
                v176 = *(v174 + 23);
                if (v176 >= 0)
                {
                  v177 = v174;
                }

                else
                {
                  v177 = *v174;
                }

                if (v176 >= 0)
                {
                  v178 = *(v174 + 23);
                }

                else
                {
                  v178 = v174[1];
                }

                if (v178 >= v29)
                {
                  v179 = v29;
                }

                else
                {
                  v179 = v178;
                }

                v180 = memcmp(v162, v177, v179);
                if (v180)
                {
                  if ((v180 & 0x80000000) == 0)
                  {
                    goto LABEL_367;
                  }
                }

                else
                {
                  if (v29 == v178)
                  {
                    v181 = *(v146 + 28);
                    v182 = v30 == v181;
                    if (v30 >= v181)
                    {
                      v175 = 1;
                    }

                    else
                    {
                      v175 = -1;
                    }

                    if (v182)
                    {
                      v183 = *(v146 + 24);
                      v184 = v21 == v183;
                      v175 = v21 >= v183 ? 1 : -1;
                      if (v184)
                      {
                        v175 = 0;
                      }
                    }

                    goto LABEL_405;
                  }

                  if (v29 >= v178)
                  {
LABEL_367:
                    if (v7 >= v146)
                    {
                      goto LABEL_363;
                    }

                    goto LABEL_368;
                  }
                }

                v175 = -1;
LABEL_405:
                v174 = (v146 - 32);
                if ((v175 & 0x80) == 0)
                {
                  goto LABEL_367;
                }
              }
            }
          }

          v164 = 1;
LABEL_377:
          v163 = (v7 + 32);
          if (v164 < 0)
          {
            goto LABEL_402;
          }
        }
      }

LABEL_363:
      v159 = (v7 - 32);
      a3 = v479;
      if (v7 - 32 != a1)
      {
        v160 = *(v7 - 9);
        if (*(a1 + 23) < 0)
        {
          if (v160 >= 0)
          {
            v185 = (v7 - 32);
          }

          else
          {
            v185 = *(v7 - 32);
          }

          if (v160 >= 0)
          {
            v186 = *(v7 - 9);
          }

          else
          {
            v186 = *(v7 - 24);
          }

          std::string::__assign_no_alias<false>(a1, v185, v186);
        }

        else if ((*(v7 - 9) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(a1, *(v7 - 32), *(v7 - 24));
        }

        else
        {
          v161 = *&v159->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(v7 - 16);
          *a1 = v161;
        }

        v187 = *(v7 - 8);
        *(a1 + 28) = *(v7 - 4);
        *(a1 + 24) = v187;
      }

      if (v159 != &v493)
      {
        if (*(v7 - 9) < 0)
        {
          if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = &v493;
          }

          else
          {
            v189 = v493.__r_.__value_.__r.__words[0];
          }

          if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v190 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v190 = v493.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>((v7 - 32), v189, v190);
        }

        else if ((*(&v493.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>((v7 - 32), v493.__r_.__value_.__l.__data_, v493.__r_.__value_.__l.__size_);
        }

        else
        {
          v188 = *&v493.__r_.__value_.__l.__data_;
          *(v7 - 16) = *(&v493.__r_.__value_.__l + 2);
          *&v159->__r_.__value_.__l.__data_ = v188;
        }
      }

      v191 = v494;
      *(v7 - 4) = v495;
      *(v7 - 8) = v191;
      if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v493.__r_.__value_.__l.__data_);
      }

      a4 = 0;
    }

    else
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a1 + 32 * (v8 >> 1), __sz);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1 + 32, 32 * v9 + a1 - 32, v476);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1 + 64, a1 + 32 + 32 * v9, v475);
      a2 = v486;
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(32 * v9 + a1 - 32, v10, (a1 + 32 + 32 * v9));
      std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, v10);
      v479 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_33:
      if ((*(a1 + 23) & 0x80) != 0)
      {
LABEL_34:
        std::string::__init_copy_ctor_external(&v493, *a1, *(a1 + 8));
        goto LABEL_35;
      }

LABEL_31:
      v22 = *a1;
      v493.__r_.__value_.__r.__words[2] = *(a1 + 16);
      *&v493.__r_.__value_.__l.__data_ = v22;
LABEL_35:
      v23 = 0;
      v24 = *(a1 + 24);
      v495 = *(a1 + 28);
      v494 = v24;
      if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v493;
      }

      else
      {
        v25 = v493.__r_.__value_.__r.__words[0];
      }

      if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v493.__r_.__value_.__l.__size_;
      }

      v27 = v495;
      v21 = v494;
      do
      {
        v29 = v23;
        v30 = a1 + v23;
        v31 = (a1 + v23 + 32);
        if (v31 == a2)
        {
          goto LABEL_1036;
        }

        v32 = *(v30 + 55);
        if (v32 >= 0)
        {
          v33 = v31;
        }

        else
        {
          v33 = *v31;
        }

        if (v32 >= 0)
        {
          v34 = *(v30 + 55);
        }

        else
        {
          v34 = *(v30 + 40);
        }

        if (v26 >= v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = v26;
        }

        v36 = memcmp(v33, v25, v35);
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_43;
        }

        if (v34 == v26)
        {
          v37 = *(v30 + 60);
          if (v37 >= v27)
          {
            v28 = 1;
          }

          else
          {
            v28 = -1;
          }

          if (v37 == v27)
          {
            v38 = *(v30 + 56);
            v39 = v38 == v21;
            if (v38 >= v21)
            {
              v40 = 1;
            }

            else
            {
              v40 = -1;
            }

            if (v39)
            {
              v28 = 0;
            }

            else
            {
              v28 = v40;
            }
          }

          goto LABEL_44;
        }

        if (v34 >= v26)
        {
          break;
        }

LABEL_43:
        v28 = -1;
LABEL_44:
        v23 = v29 + 32;
      }

      while (v28 < 0);
      v41 = a1 + v29 + 32;
      v42 = __sz;
      if (v29)
      {
        while (1)
        {
          if (v42 + 4 == a1)
          {
            goto LABEL_1036;
          }

          v29 = v42;
          v45 = *(v42 + 23);
          if (v45 >= 0)
          {
            v46 = v42;
          }

          else
          {
            v46 = *v42;
          }

          if (v45 >= 0)
          {
            v30 = *(v42 + 23);
          }

          else
          {
            v30 = v42[1];
          }

          if (v26 >= v30)
          {
            v47 = v30;
          }

          else
          {
            v47 = v26;
          }

          v48 = memcmp(v46, v25, v47);
          if (v48)
          {
            if (v48 < 0)
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (v30 == v26)
            {
              v49 = *(v29 + 28);
              v50 = v49 == v27;
              if (v49 >= v27)
              {
                v44 = 1;
              }

              else
              {
                v44 = -1;
              }

              if (v50)
              {
                v51 = *(v29 + 24);
                v52 = v51 == v21;
                v44 = v51 >= v21 ? 1 : -1;
                if (v52)
                {
                  v44 = 0;
                }
              }

              goto LABEL_72;
            }

            if (v30 < v26)
            {
LABEL_125:
              v478 = v41;
              v7 = v41;
              if (v41 >= v29)
              {
                goto LABEL_204;
              }

              v63 = v29;
LABEL_128:
              std::swap[abi:sn200100]<webrtc::RtpExtension>(v7, v63);
              if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v64 = &v493;
              }

              else
              {
                v64 = v493.__r_.__value_.__r.__words[0];
              }

              if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v21 = v493.__r_.__value_.__l.__size_;
              }

              v65 = v494;
              v30 = v495;
              v66 = (v7 + 32);
              while (2)
              {
                if (v66 == a2)
                {
                  goto LABEL_1036;
                }

                v7 = v66;
                v68 = *(v66 + 23);
                if (v68 >= 0)
                {
                  v69 = v66;
                }

                else
                {
                  v69 = *v66;
                }

                if (v68 >= 0)
                {
                  v70 = *(v66 + 23);
                }

                else
                {
                  v70 = v66[1];
                }

                if (v21 >= v70)
                {
                  v71 = v70;
                }

                else
                {
                  v71 = v21;
                }

                v72 = memcmp(v69, v64, v71);
                if (v72)
                {
                  if ((v72 & 0x80000000) == 0)
                  {
                    goto LABEL_162;
                  }
                }

                else
                {
                  if (v70 == v21)
                  {
                    v73 = *(v7 + 28);
                    v74 = v73 == v30;
                    if (v73 >= v30)
                    {
                      v67 = 1;
                    }

                    else
                    {
                      v67 = -1;
                    }

                    if (v74)
                    {
                      v75 = *(v7 + 24);
                      v76 = v75 == v65;
                      v67 = v75 >= v65 ? 1 : -1;
                      if (v76)
                      {
                        v67 = 0;
                      }
                    }

LABEL_137:
                    v66 = (v7 + 32);
                    if ((v67 & 0x80) == 0)
                    {
                      goto LABEL_162;
                    }

                    continue;
                  }

                  if (v70 >= v21)
                  {
LABEL_162:
                    v77 = (v63 - 32);
                    while (1)
                    {
                      if (v77 + 4 == a1)
                      {
                        goto LABEL_1036;
                      }

                      v63 = v77;
                      v79 = *(v77 + 23);
                      if (v79 >= 0)
                      {
                        v80 = v77;
                      }

                      else
                      {
                        v80 = *v77;
                      }

                      if (v79 >= 0)
                      {
                        v81 = *(v77 + 23);
                      }

                      else
                      {
                        v81 = v77[1];
                      }

                      if (v21 >= v81)
                      {
                        v82 = v81;
                      }

                      else
                      {
                        v82 = v21;
                      }

                      v83 = memcmp(v80, v64, v82);
                      if (v83)
                      {
                        if (v83 < 0)
                        {
                          goto LABEL_127;
                        }
                      }

                      else
                      {
                        if (v81 == v21)
                        {
                          v84 = *(v63 + 28);
                          v85 = v84 == v30;
                          if (v84 >= v30)
                          {
                            v78 = 1;
                          }

                          else
                          {
                            v78 = -1;
                          }

                          if (v85)
                          {
                            v86 = *(v63 + 24);
                            v87 = v86 == v65;
                            v78 = v86 >= v65 ? 1 : -1;
                            if (v87)
                            {
                              v78 = 0;
                            }
                          }

                          goto LABEL_165;
                        }

                        if (v81 < v21)
                        {
LABEL_127:
                          if (v7 >= v63)
                          {
                            goto LABEL_204;
                          }

                          goto LABEL_128;
                        }
                      }

                      v78 = 1;
LABEL_165:
                      v77 = (v63 - 32);
                      if (v78 < 0)
                      {
                        goto LABEL_127;
                      }
                    }
                  }
                }

                break;
              }

              v67 = -1;
              goto LABEL_137;
            }
          }

          v44 = 1;
LABEL_72:
          v42 = (v29 - 32);
          if (v44 < 0)
          {
            goto LABEL_125;
          }
        }
      }

      v43 = __sz;
      while (v41 < (v43 + 4))
      {
        v29 = v43;
        v54 = *(v43 + 23);
        if (v54 >= 0)
        {
          v55 = v43;
        }

        else
        {
          v55 = *v43;
        }

        if (v54 >= 0)
        {
          v56 = *(v43 + 23);
        }

        else
        {
          v56 = v43[1];
        }

        if (v26 >= v56)
        {
          v57 = v56;
        }

        else
        {
          v57 = v26;
        }

        v58 = memcmp(v55, v25, v57);
        if (v58)
        {
          if (v58 < 0)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v56 == v26)
          {
            v59 = *(v29 + 28);
            v60 = v59 == v27;
            if (v59 >= v27)
            {
              v53 = 1;
            }

            else
            {
              v53 = -1;
            }

            if (v60)
            {
              v61 = *(v29 + 24);
              v62 = v61 == v21;
              v53 = v61 >= v21 ? 1 : -1;
              if (v62)
              {
                v53 = 0;
              }
            }

            goto LABEL_100;
          }

          if (v56 < v26)
          {
            goto LABEL_125;
          }
        }

        v53 = 1;
LABEL_100:
        v43 = (v29 - 32);
        if (v53 < 0)
        {
          goto LABEL_125;
        }
      }

      v29 = (v43 + 4);
      v478 = v41;
      v7 = v41;
LABEL_204:
      v97 = (v7 - 32);
      a3 = v479;
      if (v7 - 32 != a1)
      {
        v98 = *(v7 - 9);
        if (*(a1 + 23) < 0)
        {
          if (v98 >= 0)
          {
            v100 = (v7 - 32);
          }

          else
          {
            v100 = *(v7 - 32);
          }

          if (v98 >= 0)
          {
            v101 = *(v7 - 9);
          }

          else
          {
            v101 = *(v7 - 24);
          }

          std::string::__assign_no_alias<false>(a1, v100, v101);
        }

        else if ((*(v7 - 9) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(a1, *(v7 - 32), *(v7 - 24));
        }

        else
        {
          v99 = *&v97->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(v7 - 16);
          *a1 = v99;
        }

        v102 = *(v7 - 8);
        *(a1 + 28) = *(v7 - 4);
        *(a1 + 24) = v102;
      }

      if (v97 == &v493)
      {
LABEL_229:
        v107 = v494;
        *(v7 - 4) = v495;
        *(v7 - 8) = v107;
        if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_230;
        }

        goto LABEL_231;
      }

      if (*(v7 - 9) < 0)
      {
        if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = &v493;
        }

        else
        {
          v105 = v493.__r_.__value_.__r.__words[0];
        }

        if ((v493.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = HIBYTE(v493.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v106 = v493.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>((v7 - 32), v105, v106);
        goto LABEL_229;
      }

      if ((*(&v493.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((v7 - 32), v493.__r_.__value_.__l.__data_, v493.__r_.__value_.__l.__size_);
        v109 = v494;
        *(v7 - 4) = v495;
        *(v7 - 8) = v109;
        if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_230:
          operator delete(v493.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v103 = *&v493.__r_.__value_.__l.__data_;
        *(v7 - 16) = *(&v493.__r_.__value_.__l + 2);
        *&v97->__r_.__value_.__l.__data_ = v103;
        v104 = v494;
        *(v7 - 4) = v495;
        *(v7 - 8) = v104;
        if (SHIBYTE(v493.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_230;
        }
      }

LABEL_231:
      if (v478 < v29)
      {
LABEL_234:
        std::__introsort<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,false>(a1, v7 - 32, v479, a4 & 1);
        a4 = 0;
      }

      else
      {
        v108 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*>(a1, v7 - 32);
        if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*>(v7, a2))
        {
          a2 = v7 - 32;
          if (v108)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v108)
        {
          goto LABEL_234;
        }
      }
    }
  }

  v29 = a2 - 32;
  v192 = *(a2 - 9);
  if (v192 >= 0)
  {
    v193 = (a2 - 32);
  }

  else
  {
    v193 = *(a2 - 32);
  }

  if (v192 >= 0)
  {
    v30 = *(a2 - 9);
  }

  else
  {
    v30 = *(a2 - 24);
  }

  v194 = *(v7 + 23);
  if (v194 >= 0)
  {
    v195 = v7;
  }

  else
  {
    v195 = *v7;
  }

  if (v194 >= 0)
  {
    v21 = *(v7 + 23);
  }

  else
  {
    v21 = *(v7 + 8);
  }

  if (v21 >= v30)
  {
    v196 = v30;
  }

  else
  {
    v196 = v21;
  }

  v197 = memcmp(v193, v195, v196);
  if (v197)
  {
    if ((v197 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_1050;
  }

LABEL_1037:
  if (v30 != v21)
  {
    if (v30 >= v21)
    {
      return;
    }

    goto LABEL_1050;
  }

  v468 = *(a2 - 4);
  v469 = *(a1 + 28);
  v470 = v468 == v469;
  if (v468 >= v469)
  {
    v471 = 1;
  }

  else
  {
    v471 = -1;
  }

  if (v470)
  {
    v472 = *(a2 - 8);
    v473 = *(a1 + 24);
    v474 = v472 == v473;
    v96 = v472 < v473;
    v471 = -1;
    if (!v96)
    {
      v471 = 1;
    }

    if (v474)
    {
      v471 = 0;
    }
  }

  if (v471 < 0)
  {
LABEL_1050:
    std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, v29);
  }
}

void std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (!v13)
  {
    if (v8 == v11)
    {
      v19 = *(a2 + 28);
      v20 = *(a1 + 28);
      v21 = v19 == v20;
      if (v19 >= v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      if (v21)
      {
        v23 = *(a2 + 24);
        v24 = *(a1 + 24);
        v25 = v23 == v24;
        v26 = v23 < v24;
        v22 = -1;
        if (!v26)
        {
          v22 = 1;
        }

        if (v25)
        {
          v22 = 0;
        }
      }

      if ((v22 & 0x80) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v8 >= v11)
    {
      goto LABEL_18;
    }

LABEL_55:
    v34 = *(a3 + 23);
    if (v34 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (v34 >= 0)
    {
      v36 = *(a3 + 23);
    }

    else
    {
      v36 = a3[1];
    }

    if (v8 >= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v8;
    }

    v38 = memcmp(v35, v7, v37);
    if (v38)
    {
      if ((v38 & 0x80000000) == 0)
      {
LABEL_66:
        std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, a2);
        v39 = *(a3 + 23);
        if (v39 >= 0)
        {
          v40 = a3;
        }

        else
        {
          v40 = *a3;
        }

        if (v39 >= 0)
        {
          v41 = *(a3 + 23);
        }

        else
        {
          v41 = a3[1];
        }

        v42 = *(a2 + 23);
        if (v42 >= 0)
        {
          v43 = a2;
        }

        else
        {
          v43 = *a2;
        }

        if (v42 >= 0)
        {
          v44 = *(a2 + 23);
        }

        else
        {
          v44 = *(a2 + 8);
        }

        if (v44 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v44;
        }

        v46 = memcmp(v40, v43, v45);
        if (v46)
        {
          if ((v46 & 0x80000000) == 0)
          {
            return;
          }
        }

        else if (v41 == v44)
        {
          v62 = *(a3 + 28);
          v63 = *(a2 + 28);
          v64 = v62 == v63;
          if (v62 >= v63)
          {
            v65 = 1;
          }

          else
          {
            v65 = -1;
          }

          if (v64)
          {
            v66 = *(a3 + 6);
            v67 = *(a2 + 24);
            v68 = v66 == v67;
            v26 = v66 < v67;
            v65 = -1;
            if (!v26)
            {
              v65 = 1;
            }

            if (v68)
            {
              v65 = 0;
            }
          }

          if ((v65 & 0x80) == 0)
          {
            return;
          }
        }

        else if (v41 >= v44)
        {
          return;
        }

        v76 = a2;
LABEL_143:
        v77 = a3;

        goto LABEL_145;
      }
    }

    else if (v36 == v8)
    {
      v47 = *(a3 + 28);
      v48 = *(a2 + 28);
      v49 = v47 == v48;
      if (v47 >= v48)
      {
        v50 = 1;
      }

      else
      {
        v50 = -1;
      }

      if (v49)
      {
        v51 = *(a3 + 6);
        v52 = *(a2 + 24);
        v53 = v51 == v52;
        v26 = v51 < v52;
        v50 = -1;
        if (!v26)
        {
          v50 = 1;
        }

        if (v53)
        {
          v50 = 0;
        }
      }

      if ((v50 & 0x80) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (v36 >= v8)
    {
      goto LABEL_66;
    }

    v76 = a1;
    goto LABEL_143;
  }

  if (v13 < 0)
  {
    goto LABEL_55;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v16 == v8)
  {
    v27 = *(a3 + 28);
    v28 = *(a2 + 28);
    v29 = v27 == v28;
    if (v27 >= v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v29)
    {
      v31 = *(a3 + 6);
      v32 = *(a2 + 24);
      v33 = v31 == v32;
      v26 = v31 < v32;
      v30 = -1;
      if (!v26)
      {
        v30 = 1;
      }

      if (v33)
      {
        v30 = 0;
      }
    }

    if ((v30 & 0x80) == 0)
    {
      return;
    }
  }

  else if (v16 >= v8)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a2, a3);
  v54 = *(a2 + 23);
  if (v54 >= 0)
  {
    v55 = a2;
  }

  else
  {
    v55 = *a2;
  }

  if (v54 >= 0)
  {
    v56 = *(a2 + 23);
  }

  else
  {
    v56 = *(a2 + 8);
  }

  v57 = *(a1 + 23);
  if (v57 >= 0)
  {
    v58 = a1;
  }

  else
  {
    v58 = *a1;
  }

  if (v57 >= 0)
  {
    v59 = *(a1 + 23);
  }

  else
  {
    v59 = *(a1 + 8);
  }

  if (v59 >= v56)
  {
    v60 = v56;
  }

  else
  {
    v60 = v59;
  }

  v61 = memcmp(v55, v58, v60);
  if (v61)
  {
    if ((v61 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_147;
  }

  if (v56 == v59)
  {
    v69 = *(a2 + 28);
    v70 = *(a1 + 28);
    v71 = v69 == v70;
    if (v69 >= v70)
    {
      v72 = 1;
    }

    else
    {
      v72 = -1;
    }

    if (v71)
    {
      v73 = *(a2 + 24);
      v74 = *(a1 + 24);
      v75 = v73 == v74;
      v26 = v73 < v74;
      v72 = -1;
      if (!v26)
      {
        v72 = 1;
      }

      if (v75)
      {
        v72 = 0;
      }
    }

    if (v72 < 0)
    {
      goto LABEL_147;
    }
  }

  else if (v56 < v59)
  {
LABEL_147:
    v76 = a1;
    v77 = a2;

LABEL_145:
    std::swap[abi:sn200100]<webrtc::RtpExtension>(v76, v77);
  }
}

void std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v10 == v13)
  {
    v16 = *(a4 + 28);
    v17 = *(a3 + 28);
    v18 = v16 == v17;
    if (v16 >= v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (v18)
    {
      v20 = *(a4 + 6);
      v21 = *(a3 + 24);
      v22 = v20 == v21;
      v23 = v20 < v21;
      v19 = -1;
      if (!v23)
      {
        v19 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }
    }

    if ((v19 & 0x80) == 0)
    {
      return;
    }
  }

  else if (v10 >= v13)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a3, a4);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = *(a2 + 23);
  if (v27 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = *(a2 + 8);
  }

  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  v31 = memcmp(v25, v28, v30);
  if (v31)
  {
    if ((v31 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v26 == v29)
  {
    v32 = *(a3 + 28);
    v33 = *(a2 + 28);
    v34 = v32 == v33;
    if (v32 >= v33)
    {
      v35 = 1;
    }

    else
    {
      v35 = -1;
    }

    if (v34)
    {
      v36 = *(a3 + 24);
      v37 = *(a2 + 24);
      v38 = v36 == v37;
      v23 = v36 < v37;
      v35 = -1;
      if (!v23)
      {
        v35 = 1;
      }

      if (v38)
      {
        v35 = 0;
      }
    }

    if ((v35 & 0x80) == 0)
    {
      return;
    }
  }

  else if (v26 >= v29)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a2, a3);
  v39 = *(a2 + 23);
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = *(a2 + 23);
  }

  else
  {
    v41 = *(a2 + 8);
  }

  v42 = *(a1 + 23);
  if (v42 >= 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  if (v42 >= 0)
  {
    v44 = *(a1 + 23);
  }

  else
  {
    v44 = *(a1 + 8);
  }

  if (v44 >= v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = memcmp(v40, v43, v45);
  if (v46)
  {
    if ((v46 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_94;
  }

  if (v41 != v44)
  {
    if (v41 >= v44)
    {
      return;
    }

    goto LABEL_94;
  }

  v47 = *(a2 + 28);
  v48 = *(a1 + 28);
  v49 = v47 == v48;
  if (v47 >= v48)
  {
    v50 = 1;
  }

  else
  {
    v50 = -1;
  }

  if (v49)
  {
    v51 = *(a2 + 24);
    v52 = *(a1 + 24);
    v53 = v51 == v52;
    v23 = v51 < v52;
    v50 = -1;
    if (!v23)
    {
      v50 = 1;
    }

    if (v53)
    {
      v50 = 0;
    }
  }

  if (v50 < 0)
  {
LABEL_94:

    std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, a2);
  }
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 8);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v12 == v15)
  {
    v18 = *(a5 + 28);
    v19 = *(a4 + 28);
    v20 = v18 == v19;
    if (v18 >= v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v20)
    {
      v22 = *(a5 + 6);
      v23 = *(a4 + 24);
      v24 = v22 == v23;
      v25 = v22 < v23;
      v21 = -1;
      if (!v25)
      {
        v21 = 1;
      }

      if (v24)
      {
        v21 = 0;
      }
    }

    if ((v21 & 0x80) == 0)
    {
      return;
    }
  }

  else if (v12 >= v15)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a4, a5);
  v26 = *(a4 + 23);
  if (v26 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = *a4;
  }

  if (v26 >= 0)
  {
    v28 = *(a4 + 23);
  }

  else
  {
    v28 = *(a4 + 8);
  }

  v29 = *(a3 + 23);
  if (v29 >= 0)
  {
    v30 = a3;
  }

  else
  {
    v30 = *a3;
  }

  if (v29 >= 0)
  {
    v31 = *(a3 + 23);
  }

  else
  {
    v31 = *(a3 + 8);
  }

  if (v31 >= v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = v31;
  }

  v33 = memcmp(v27, v30, v32);
  if (v33)
  {
    if ((v33 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v28 == v31)
  {
    v34 = *(a4 + 28);
    v35 = *(a3 + 28);
    v36 = v34 == v35;
    if (v34 >= v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = -1;
    }

    if (v36)
    {
      v38 = *(a4 + 24);
      v39 = *(a3 + 24);
      v40 = v38 == v39;
      v25 = v38 < v39;
      v37 = -1;
      if (!v25)
      {
        v37 = 1;
      }

      if (v40)
      {
        v37 = 0;
      }
    }

    if ((v37 & 0x80) == 0)
    {
      return;
    }
  }

  else if (v28 >= v31)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a3, a4);
  v41 = *(a3 + 23);
  if (v41 >= 0)
  {
    v42 = a3;
  }

  else
  {
    v42 = *a3;
  }

  if (v41 >= 0)
  {
    v43 = *(a3 + 23);
  }

  else
  {
    v43 = *(a3 + 8);
  }

  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  if (v46 >= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = v46;
  }

  v48 = memcmp(v42, v45, v47);
  if (v48)
  {
    if ((v48 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v43 == v46)
  {
    v49 = *(a3 + 28);
    v50 = *(a2 + 28);
    v51 = v49 == v50;
    if (v49 >= v50)
    {
      v52 = 1;
    }

    else
    {
      v52 = -1;
    }

    if (v51)
    {
      v53 = *(a3 + 24);
      v54 = *(a2 + 24);
      v55 = v53 == v54;
      v25 = v53 < v54;
      v52 = -1;
      if (!v25)
      {
        v52 = 1;
      }

      if (v55)
      {
        v52 = 0;
      }
    }

    if ((v52 & 0x80) == 0)
    {
      return;
    }
  }

  else if (v43 >= v46)
  {
    return;
  }

  std::swap[abi:sn200100]<webrtc::RtpExtension>(a2, a3);
  v56 = *(a2 + 23);
  if (v56 >= 0)
  {
    v57 = a2;
  }

  else
  {
    v57 = *a2;
  }

  if (v56 >= 0)
  {
    v58 = *(a2 + 23);
  }

  else
  {
    v58 = *(a2 + 8);
  }

  v59 = *(a1 + 23);
  if (v59 >= 0)
  {
    v60 = a1;
  }

  else
  {
    v60 = *a1;
  }

  if (v59 >= 0)
  {
    v61 = *(a1 + 23);
  }

  else
  {
    v61 = *(a1 + 8);
  }

  if (v61 >= v58)
  {
    v62 = v58;
  }

  else
  {
    v62 = v61;
  }

  v63 = memcmp(v57, v60, v62);
  if (v63)
  {
    if ((v63 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_125;
  }

  if (v58 != v61)
  {
    if (v58 >= v61)
    {
      return;
    }

    goto LABEL_125;
  }

  v64 = *(a2 + 28);
  v65 = *(a1 + 28);
  v66 = v64 == v65;
  if (v64 >= v65)
  {
    v67 = 1;
  }

  else
  {
    v67 = -1;
  }

  if (v66)
  {
    v68 = *(a2 + 24);
    v69 = *(a1 + 24);
    v70 = v68 == v69;
    v25 = v68 < v69;
    v67 = -1;
    if (!v25)
    {
      v67 = 1;
    }

    if (v70)
    {
      v67 = 0;
    }
  }

  if (v67 < 0)
  {
LABEL_125:

    std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, a2);
  }
}