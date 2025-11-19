BOOL CMMsl::RunningVerticalOscillation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 2) == 0;
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*(a2 + 40) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::KappaSpinResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 204);
  v3 = *(a2 + 204);
  if ((v2 & 0x1000) != 0)
  {
    if ((*(a2 + 204) & 0x1000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x800) != 0)
  {
    if ((*(a2 + 204) & 0x800) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x4000) != 0)
  {
    if ((*(a2 + 204) & 0x4000) == 0 || *(a1 + 201) != *(a2 + 201))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x4000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x400) != 0)
  {
    if ((*(a2 + 204) & 0x400) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x2000) != 0)
  {
    if ((*(a2 + 204) & 0x2000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x100) != 0)
  {
    if ((*(a2 + 204) & 0x100) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x200) != 0)
  {
    if ((*(a2 + 204) & 0x200) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  result = sub_1000775B0(a1 + 80, a2 + 80);
  if (result)
  {
    result = sub_1000775B0(a1 + 104, a2 + 104);
    if (result)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 16);
      v7 = *(a2 + 8);
      if (v5 - v6 != *(a2 + 16) - v7)
      {
        return 0;
      }

      while (v6 != v5)
      {
        if (*v6 != *v7)
        {
          return 0;
        }

        ++v6;
        ++v7;
      }

      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = *(a2 + 56);
      if (v8 - v9 != *(a2 + 64) - v10)
      {
        return 0;
      }

      while (v9 != v8)
      {
        if (*v9 != *v10)
        {
          return 0;
        }

        ++v9;
        ++v10;
      }

      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = *(a2 + 32);
      if (v11 - v12 != *(a2 + 40) - v13)
      {
        return 0;
      }

      if (v12 == v11)
      {
        return 1;
      }

      else
      {
        v14 = v12 + 4;
        do
        {
          v15 = *v13++;
          result = *(v14 - 4) == v15;
          v16 = *(v14 - 4) != v15 || v14 == v11;
          v14 += 4;
        }

        while (!v16);
      }
    }
  }

  return result;
}

BOOL CMMsl::KappaPulseDeltaV::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 112) & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::RunningStrideLength::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 136) & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::KappaHighSpeedCrashResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 57) != *(a2 + 57))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 58) != *(a2 + 58))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 65) != *(a2 + 65))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 63) != *(a2 + 63))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 59) != *(a2 + 59))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 61) != *(a2 + 61))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 62) != *(a2 + 62))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 68) & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

BOOL CMMsl::KappaPulseInertialHgAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(a2 + 104);
  if ((v2 & 0x800) != 0)
  {
    if ((*(a2 + 104) & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x100) != 0)
  {
    if ((*(a2 + 104) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x200) != 0)
  {
    if ((*(a2 + 104) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x400) != 0)
  {
    if ((*(a2 + 104) & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::PedometerPathStraightness::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x20) != 0)
  {
    if ((*(a2 + 56) & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 1) == 0;
  if (*(a1 + 56))
  {
    return (*(a2 + 56) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::VO2MaxModelInput::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 8) == 0;
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*(a2 + 40) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

BOOL CMMsl::ProxCalibration::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if ((*(a1 + 72) & 2) != 0)
  {
    if ((*(a2 + 72) & 2) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 72))
  {
    return 0;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    if ((*(a2 + 72) & 4) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 72) & 8) != 0)
  {
    if ((*(a2 + 72) & 8) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 8) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a2 + 8);
  if (v3 - v4 != *(a2 + 16) - v5)
  {
    return 0;
  }

  while (v4 != v3)
  {
    if (*v4 != *v5)
    {
      return 0;
    }

    ++v4;
    ++v5;
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 32);
  if (v6 - v7 != *(a2 + 40) - v8)
  {
    return 0;
  }

  if (v7 == v6)
  {
    return 1;
  }

  v9 = v7 + 4;
  do
  {
    v10 = *v8++;
    result = *(v9 - 4) == v10;
    v12 = *(v9 - 4) != v10 || v9 == v6;
    v9 += 4;
  }

  while (!v12);
  return result;
}

BOOL CMMsl::KappaStepsResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::WakeGestureSample::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84);
  v3 = *(a2 + 84);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 81) != *(a2 + 81))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 79) != *(a2 + 79))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 78) != *(a2 + 78))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 82) != *(a2 + 82))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 77) != *(a2 + 77))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 84) & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

BOOL CMMsl::KappaGravityAutocorrelationResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x800) != 0)
  {
    if ((*(a2 + 64) & 0x800) == 0 || *(a1 + 61) != *(a2 + 61))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x400) != 0)
  {
    if ((*(a2 + 64) & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x400) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x200) != 0)
  {
    if ((*(a2 + 64) & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x100) != 0)
  {
    if ((*(a2 + 64) & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v4;
}

BOOL CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  v3 = *(a2 + 212);
  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x2000000) == 0;
  if ((v2 & 0x2000000) != 0)
  {
    return (v3 & 0x2000000) != 0 && *(a1 + 208) == *(a2 + 208);
  }

  return v4;
}

BOOL CMMsl::SubStats::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x200) != 0)
  {
    if ((*(a2 + 56) & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x400) != 0)
  {
    if ((*(a2 + 56) & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x100) != 0)
  {
    if ((*(a2 + 56) & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v4;
}

BOOL CMMsl::PedOdomFusionExtendedModeSegment::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x40) != 0)
  {
    if ((*(a2 + 56) & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x40) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 0x20) == 0;
  if ((*(a1 + 56) & 0x20) != 0)
  {
    return (*(a2 + 56) & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v2;
}

BOOL CMMsl::MagicMountState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRPedestrianClassifierState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) & 4) == 0;
  if ((*(a1 + 56) & 4) != 0)
  {
    return (*(a2 + 56) & 4) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v5;
}

BOOL CMMsl::PDRPlacementClassifierState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v5 = (*(a2 + 52) & 2) == 0;
  if ((*(a1 + 52) & 2) != 0)
  {
    return (*(a2 + 52) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

BOOL CMMsl::PDRSpeedEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRVelocityEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    if (*(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::KMVelocityEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  v3 = *(a2 + 52);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x100) != 0)
  {
    if ((*(a2 + 52) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x200) != 0)
  {
    if ((*(a2 + 52) & 0x200) == 0 || *(a1 + 49) != *(a2 + 49))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x400) != 0)
  {
    if ((*(a2 + 52) & 0x400) == 0 || *(a1 + 50) != *(a2 + 50))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x400) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::VelocityEstimatorFusionState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x200) != 0)
  {
    if ((*(a2 + 60) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x400) != 0)
  {
    if ((*(a2 + 60) & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::PDRFenceReference::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRFenceState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x200) != 0)
  {
    if ((*(a2 + 68) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x400) != 0)
  {
    if ((*(a2 + 68) & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x800) != 0)
  {
    if ((*(a2 + 68) & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x100) != 0)
  {
    if ((*(a2 + 68) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x1000) != 0)
  {
    if ((*(a2 + 68) & 0x1000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::UWBRange::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 0x20) == 0;
  if ((*(a1 + 56) & 0x20) != 0)
  {
    return (*(a2 + 56) & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v2;
}

BOOL CMMsl::KappaTriggerClustersResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a2 + 96);
  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x8000) != 0)
  {
    if (*(a1 + 94) != *(a2 + 94))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 93) != *(a2 + 93))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::SimActivityEvent::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

LABEL_6:
    v3 = *(a1 + 8);
    v4 = *(a2 + 8);
    result = v4 == 0;
    if (!v3)
    {
      return result;
    }

    if (!v4)
    {
      return 0;
    }

    v6 = *(v4 + 12);
    if (*(v3 + 12))
    {
      if ((*(v4 + 12) & 1) == 0 || *(v3 + 8) != *(v4 + 8))
      {
        return 0;
      }
    }

    else if (*(v4 + 12))
    {
      return 0;
    }

    return 1;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL CMMsl::PDRFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 108);
  v3 = *(a2 + 108);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 108) & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::PDRDOTEstimatorStateBody::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateArmSwing::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateHeading::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRSpeedEstimatorStateDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingDOTEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x100) != 0)
  {
    if ((*(a2 + 92) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x800) != 0)
  {
    if ((*(a2 + 92) & 0x800) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x400) != 0)
  {
    if ((*(a2 + 92) & 0x400) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x200) != 0)
  {
    if ((*(a2 + 92) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x1000) != 0)
  {
    if ((*(a2 + 92) & 0x1000) == 0 || *(a1 + 89) != *(a2 + 89))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x1000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v4;
}

BOOL CMMsl::KappaRoadsResult::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 2) == 0;
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*(a2 + 40) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingVelocityEstimate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = *(a2 + 44);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 8) == 0;
  if ((v2 & 8) != 0)
  {
    return (v3 & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::PrecisionFindingRangeFilter::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 0x40) == 0;
  if ((*(a1 + 40) & 0x40) != 0)
  {
    return (*(a2 + 40) & 0x40) != 0 && *(a1 + 37) == *(a2 + 37);
  }

  return v2;
}

BOOL CMMsl::PDRDOTMeasurementSelectorState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v5 = (*(a2 + 52) & 2) == 0;
  if ((*(a1 + 52) & 2) != 0)
  {
    return (*(a2 + 52) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

BOOL CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if ((*(a2 + 40) & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 8) == 0;
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*(a2 + 40) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::PeerState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::MagnetometerCalibratorFilterParameters::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (*(a2 + 136))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a2 + 32);
  if (v3 - v4 != *(a2 + 40) - v5)
  {
    return 0;
  }

  while (v4 != v3)
  {
    if (*v4 != *v5)
    {
      return 0;
    }

    ++v4;
    ++v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  v10 = *(a1 + 104);
  v9 = *(a1 + 112);
  v11 = *(a2 + 104);
  if (v9 - v10 != *(a2 + 112) - v11)
  {
    return 0;
  }

  while (v10 != v9)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
  }

  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v14 = *(a2 + 56);
  if (v12 - v13 != *(a2 + 64) - v14)
  {
    return 0;
  }

  while (v13 != v12)
  {
    if (*v13 != *v14)
    {
      return 0;
    }

    ++v13;
    ++v14;
  }

  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  v17 = *(a2 + 80);
  if (v15 - v16 != *(a2 + 88) - v17)
  {
    return 0;
  }

  if (v16 == v15)
  {
    return 1;
  }

  v18 = v16 + 4;
  do
  {
    v19 = *v17++;
    result = *(v18 - 4) == v19;
    v21 = *(v18 - 4) != v19 || v18 == v15;
    v18 += 4;
  }

  while (!v21);
  return result;
}

BOOL CMMsl::KappaActivityPhone::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 140);
  if (*(a1 + 140))
  {
    if ((*(a2 + 140) & 1) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if (*(a2 + 140))
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  if ((*(a1 + 140) & 4) != 0)
  {
    if ((*(a2 + 140) & 4) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 140) & 4) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *(a2 + 80);
  if (v8 - v9 != *(a2 + 88) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  if ((*(a1 + 140) & 2) != 0)
  {
    if ((*(a2 + 140) & 2) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((*(a2 + 140) & 2) != 0)
  {
    return 0;
  }

  result = sub_1000775B0(a1 + 32, a2 + 32);
  if (result)
  {
    result = sub_1000775B0(a1 + 56, a2 + 56);
    if (result)
    {
      if ((*(a1 + 140) & 0x20) != 0)
      {
        if ((*(a2 + 140) & 0x20) == 0 || *(a1 + 132) != *(a2 + 132))
        {
          return 0;
        }
      }

      else if ((*(a2 + 140) & 0x20) != 0)
      {
        return 0;
      }

      if ((*(a1 + 140) & 8) != 0)
      {
        if ((*(a2 + 140) & 8) == 0 || *(a1 + 124) != *(a2 + 124))
        {
          return 0;
        }
      }

      else if ((*(a2 + 140) & 8) != 0)
      {
        return 0;
      }

      if ((*(a1 + 140) & 0x10) != 0)
      {
        if ((*(a2 + 140) & 0x10) == 0 || *(a1 + 128) != *(a2 + 128))
        {
          return 0;
        }
      }

      else if ((*(a2 + 140) & 0x10) != 0)
      {
        return 0;
      }

      result = (*(a2 + 140) & 0x40) == 0;
      if ((*(a1 + 140) & 0x40) == 0)
      {
        return result;
      }

      return (*(a2 + 140) & 0x40) != 0 && *(a1 + 136) == *(a2 + 136);
    }
  }

  return result;
}

BOOL CMMsl::KappaActivityWatch::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(a2 + 104);
  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40) - v6;
  v8 = *(a2 + 32);
  if (v7 != *(a2 + 40) - v8 || memcmp(v6, v8, v7))
  {
    return 0;
  }

  if ((v4 & 0x100) != 0)
  {
    if ((v5 & 0x100) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v5 & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  result = sub_1000775B0(a1 + 8, a2 + 8);
  if (!result)
  {
    return result;
  }

  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  if ((v10 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }

    goto LABEL_46;
  }

  if ((v11 & 0x10) != 0)
  {
    return 0;
  }

LABEL_46:
  result = (v11 & 8) == 0;
  if ((v10 & 8) != 0)
  {
    return (v11 & 8) != 0 && *(a1 + 80) == *(a2 + 80);
  }

  return result;
}

BOOL CMMsl::PrecisionFindingSessionStartStop::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateBodyDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if ((*(a2 + 40) & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 2) == 0;
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*(a2 + 40) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::KappaPeakDetectorMapResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  result = sub_1000775B0(a1 + 8, a2 + 8);
  if (!result)
  {
    return result;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v8 = *(a1 + 152);
  v9 = *(a2 + 152);
  if (v8)
  {
    if ((v9 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v8 & 2) != 0)
  {
    if ((v9 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v9 & 2) != 0)
  {
    return 0;
  }

  result = (v9 & 0x20000) == 0;
  if ((v8 & 0x20000) == 0)
  {
    return result;
  }

  return (v9 & 0x20000) != 0 && *(a1 + 149) == *(a2 + 149);
}

BOOL CMMsl::KappaPeakDetectorMapMagTimestamps::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if ((*(a2 + 44) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 4) == 0;
  if ((*(a1 + 44) & 4) != 0)
  {
    return (*(a2 + 44) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingVerticalState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 58) != *(a2 + 58))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 57) == *(a2 + 57);
  }

  return v4;
}

BOOL CMMsl::PencilFusionDMYawAlignmentUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) != 0)
  {
    return *(a1 + 60) == *(a2 + 60);
  }

  else
  {
    return ((v2 | v3) & 0x80u) == 0;
  }
}

BOOL CMMsl::PencilFusionRingSensorTrustModelUpdate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 1) == 0;
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::SafetyHertzSample::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::SafetyCompanionStatus::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PTSConsumedGNSS::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !CMMsl::LocationOscarEmu::operator==(v4, v5))
    {
      return 0;
    }

LABEL_6:
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    result = v7 == 0;
    if (!v6)
    {
      return result;
    }

    if (!v7)
    {
      return 0;
    }

    v9 = *(v7 + 12);
    if (*(v6 + 12))
    {
      if ((*(v7 + 12) & 1) == 0 || *(v6 + 8) != *(v7 + 8))
      {
        return 0;
      }
    }

    else if (*(v7 + 12))
    {
      return 0;
    }

    return 1;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL CMMsl::PTSForwardPropagation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if ((*(a1 + 64) & 0x20) != 0)
  {
    if ((*(a2 + 64) & 0x20) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

LABEL_6:
    if ((*(a1 + 64) & 8) != 0)
    {
      if ((*(a2 + 64) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 8) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 0x10) != 0)
    {
      if ((*(a2 + 64) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 0x10) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 4) != 0)
    {
      if ((*(a2 + 64) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 4) != 0)
    {
      return 0;
    }

    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
      {
        return 0;
      }
    }

    else if (*(a2 + 64))
    {
      return 0;
    }

    if ((*(a1 + 64) & 2) != 0)
    {
      if ((*(a2 + 64) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 2) != 0)
    {
      return 0;
    }

    v3 = *(a1 + 48);
    v4 = *(a2 + 48);
    result = v4 == 0;
    if (!v3)
    {
      return result;
    }

    if (!v4)
    {
      return 0;
    }

    v6 = *(v4 + 12);
    if (*(v3 + 12))
    {
      if ((*(v4 + 12) & 1) == 0 || *(v3 + 8) != *(v4 + 8))
      {
        return 0;
      }
    }

    else if (*(v4 + 12))
    {
      return 0;
    }

    return 1;
  }

  if ((*(a2 + 64) & 0x20) == 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL CMMsl::PTSReconstructedRoute::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PTSForwardPropagation::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::PTSMapMatchedRoute::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PTSForwardPropagation::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::SafetyRemoteSample::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 52) & 0x20) != 0)
  {
    if ((*(a2 + 52) & 0x20) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x40) != 0)
  {
    if ((*(a2 + 52) & 0x40) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x10) != 0)
  {
    if ((*(a2 + 52) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 8) != 0)
  {
    if ((*(a2 + 52) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 52) & 2) == 0;
  if ((*(a1 + 52) & 2) != 0)
  {
    return (*(a2 + 52) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::SafetyTrustedAudioResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  v3 = *(a2 + 212);
  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000000) != 0)
  {
    if ((v3 & 0x2000000000) == 0 || *(a1 + 204) != *(a2 + 204))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000000) != 0)
  {
    if ((v3 & 0x4000000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000000) != 0)
  {
    if ((v3 & 0x8000000000) == 0 || *(a1 + 209) != *(a2 + 209))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 212) & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v4;
}

BOOL CMMsl::TNB::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40000) == 0;
  if ((v2 & 0x40000) != 0)
  {
    return (v3 & 0x40000) != 0 && *(a1 + 84) == *(a2 + 84);
  }

  return v4;
}

BOOL CMMsl::PDRDOTEstimatorStateTNBDebug::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x4000) != 0)
  {
    if ((*(a2 + 80) & 0x4000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x4000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x2000) != 0)
  {
    if ((*(a2 + 80) & 0x2000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x2000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x1000) != 0)
  {
    if ((*(a2 + 80) & 0x1000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x100) != 0)
  {
    if ((*(a2 + 80) & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x200) != 0)
  {
    if ((*(a2 + 80) & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x400) != 0)
  {
    if ((*(a2 + 80) & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x800) != 0)
  {
    if ((*(a2 + 80) & 0x800) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  result = v5 == 0;
  if (v4)
  {
    return v5 && CMMsl::TNB::operator==(v4, v5);
  }

  return result;
}

BOOL CMMsl::PDRDOTEstimatorStateSwingDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 0x40) == 0;
  if ((*(a1 + 40) & 0x40) != 0)
  {
    return (*(a2 + 40) & 0x40) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v2;
}

BOOL CMMsl::PTSSmoothedRoute::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PTSForwardPropagation::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::SPUPlaybackExampleDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::DeviceMotion::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::SPUPlaybackExampleMotionStateUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::MotionStateUpdate::operator==(v2, v3);
  }

  return result;
}

unint64_t CMMsl::Item::hash_value(CMMsl::Item *this)
{
  if (*(this + 3928))
  {
    v2 = *(this + 87);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    v1283 = v2;
  }

  else
  {
    v1283 = 0.0;
  }

  v3 = *(this + 170);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v4 = CMMsl::DeviceMotionCorrection::hash_value(v4);
    }

    if (*(v3 + 20))
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = 0;
    }

    v1282 = v5 ^ v4;
  }

  else
  {
    v1282 = 0;
  }

  v6 = *(this + 169);
  if (v6)
  {
    v1281 = CMMsl::GyroBiasConstraints::hash_value(v6);
  }

  else
  {
    v1281 = 0;
  }

  v7 = *(this + 166);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v8 = CMMsl::DeviceMotionCorrection::hash_value(v8);
    }

    v1280 = v8 ^ ((*(v7 + 20) << 31 >> 31) & *(v7 + 16));
  }

  else
  {
    v1280 = 0;
  }

  v9 = *(this + 165);
  if (v9)
  {
    v1279 = CMMsl::GravityConstraints::hash_value(v9);
  }

  else
  {
    v1279 = 0;
  }

  v10 = *(this + 96);
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v1278 = CMMsl::DeviceMotionCorrection::hash_value(v11);
  }

  else
  {
    v1278 = 0;
  }

  v12 = *(this + 95);
  if (v12)
  {
    v1277 = CMMsl::CompassConstraints::hash_value(v12);
  }

  else
  {
    v1277 = 0;
  }

  v13 = *(this + 102);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v1276 = CMMsl::DeviceMotionCorrection::hash_value(v14);
  }

  else
  {
    v1276 = 0;
  }

  v15 = *(this + 101);
  if (v15)
  {
    v16 = *(v15 + 20);
    v17 = *(v15 + 8) == 0.0 || (v16 & 1) == 0;
    v18 = *(v15 + 8);
    if (v17)
    {
      v18 = 0;
    }

    v19 = v16 & 2;
    v20 = *(v15 + 16);
    v21 = v20 == 0.0 || v19 == 0;
    v22 = LODWORD(v20);
    if (v21)
    {
      v22 = 0;
    }

    v1275 = v22 ^ v18;
  }

  else
  {
    v1275 = 0;
  }

  v23 = *(this + 209);
  if (v23)
  {
    v1274 = CMMsl::IntersiloNSCodingData::hash_value(v23);
  }

  else
  {
    v1274 = 0;
  }

  v24 = *(this + 107);
  if (v24)
  {
    v1273 = CMMsl::DeviceMotionCovariance::hash_value(v24);
  }

  else
  {
    v1273 = 0;
  }

  v25 = *(this + 14);
  if (v25)
  {
    v1272 = CMMsl::AccessoryAccel::hash_value(v25);
  }

  else
  {
    v1272 = 0;
  }

  v26 = *(this + 22);
  if (v26)
  {
    v1271 = CMMsl::AccessoryGyro::hash_value(v26);
  }

  else
  {
    v1271 = 0;
  }

  v27 = *(this + 32);
  if (v27)
  {
    v1270 = CMMsl::AccessoryProx::hash_value(v27);
  }

  else
  {
    v1270 = 0;
  }

  v28 = *(this + 465);
  if (v28 && (v29 = *(v28 + 8)) != 0)
  {
    v1269 = CMMsl::Accel::hash_value(v29);
  }

  else
  {
    v1269 = 0;
  }

  v30 = *(this + 470);
  if (v30 && (v31 = *(v30 + 8)) != 0)
  {
    v1268 = CMMsl::BodyMetrics::hash_value(v31);
  }

  else
  {
    v1268 = 0;
  }

  v32 = *(this + 472);
  if (v32 && (v33 = *(v32 + 8)) != 0)
  {
    v1267 = CMMsl::ElevationChange::hash_value(v33);
  }

  else
  {
    v1267 = 0;
  }

  v34 = *(this + 476);
  if (v34 && (v35 = *(v34 + 8)) != 0)
  {
    v1266 = CMMsl::OnsetHeartRateData::hash_value(v35);
  }

  else
  {
    v1266 = 0;
  }

  v36 = *(this + 483);
  if (v36 && (v37 = *(v36 + 8)) != 0)
  {
    v1265 = CMMsl::RotationRate::hash_value(v37);
  }

  else
  {
    v1265 = 0;
  }

  v38 = *(this + 481);
  if (v38 && (v39 = *(v38 + 8)) != 0)
  {
    v1264 = CMMsl::OdometerWithAltitude::hash_value(v39);
  }

  else
  {
    v1264 = 0;
  }

  v40 = *(this + 487);
  if (v40 && (v41 = *(v40 + 8)) != 0)
  {
    v1263 = CMMsl::WorkoutEvent::hash_value(v41);
  }

  else
  {
    v1263 = 0;
  }

  v42 = *(this + 449);
  if (v42)
  {
    v1262 = CMMsl::VO2MaxInput::hash_value(v42);
  }

  else
  {
    v1262 = 0;
  }

  v43 = *(this + 75);
  if (!v43 || (v44 = *(v43 + 8), v45 = *(v43 + 16), v44 == v45))
  {
    v46 = 0;
  }

  else
  {
    v46 = 0;
    do
    {
      v47 = *v44++;
      v46 ^= CMMsl::DeviceMotion::hash_value(v47);
    }

    while (v44 != v45);
  }

  v48 = *(this + 76);
  if (v48)
  {
    v1261 = CMMsl::BraveHeartNatalieData::hash_value(v48);
  }

  else
  {
    v1261 = 0;
  }

  v49 = *(this + 77);
  if (!v49 || (v50 = *(v49 + 8), v51 = *(v49 + 16), v50 == v51))
  {
    v52 = 0;
  }

  else
  {
    v52 = 0;
    do
    {
      v53 = *v50++;
      v52 ^= CMMsl::VO2MaxInput::hash_value(v53);
    }

    while (v50 != v51);
  }

  v54 = *(this + 74);
  if (!v54 || (v55 = *(v54 + 8), v56 = *(v54 + 16), v55 == v56))
  {
    v57 = 0;
  }

  else
  {
    v57 = 0;
    do
    {
      v58 = *v55++;
      v57 ^= CMMsl::Accel::hash_value(v58);
    }

    while (v55 != v56);
  }

  v59 = *(this + 78);
  if (v59)
  {
    v1260 = CMMsl::BraveHeartWorkoutEvent::hash_value(v59);
  }

  else
  {
    v1260 = 0;
  }

  v60 = *(this + 475);
  if (v60)
  {
    v1259 = CMMsl::WorkoutRecorderHealthKitInfo::hash_value(v60);
  }

  else
  {
    v1259 = 0;
  }

  v61 = *(this + 318);
  if (v61)
  {
    v1258 = CMMsl::PearlAttitude::hash_value(v61);
  }

  else
  {
    v1258 = 0;
  }

  v62 = *(this + 371);
  if (v62)
  {
    v1257 = CMMsl::RotationRate::hash_value(v62);
  }

  else
  {
    v1257 = 0;
  }

  v63 = *(this + 485);
  if (v63 && (v64 = *(v63 + 8)) != 0)
  {
    v65 = vbic_s8(v64[1], vceqz_s32(vand_s8(vdup_n_s32(v64[2].u8[0]), 0x200000001)));
    v1256 = (v65.i32[0] ^ v65.i32[1]);
  }

  else
  {
    v1256 = 0;
  }

  v66 = *(this + 459);
  if (v66)
  {
    v1255 = CMMsl::WatchOnWristState::hash_value(v66);
  }

  else
  {
    v1255 = 0;
  }

  v67 = *(this + 86);
  if (v67)
  {
    v1254 = CMMsl::CatherineHealthKitData::hash_value(v67);
  }

  else
  {
    v1254 = 0;
  }

  v1253 = sub_100180708(&v1285, this + 461);
  v68 = *(this + 205);
  if (v68)
  {
    v1252 = CMMsl::InEarTransitionEntry::hash_value(v68);
  }

  else
  {
    v1252 = 0;
  }

  v69 = *(this + 203);
  if (v69)
  {
    v1251 = CMMsl::InEarSession::hash_value(v69);
  }

  else
  {
    v1251 = 0;
  }

  v70 = *(this + 198);
  if (v70)
  {
    v1250 = CMMsl::InEarBaseline::hash_value(v70);
  }

  else
  {
    v1250 = 0;
  }

  v71 = *(this + 33);
  if (v71)
  {
    v1249 = CMMsl::AccessoryProxSensorDrop::hash_value(v71);
  }

  else
  {
    v1249 = 0;
  }

  v72 = *(this + 34);
  if (v72)
  {
    v1248 = CMMsl::AccessoryProxTempComp::hash_value(v72);
  }

  else
  {
    v1248 = 0;
  }

  v73 = *(this + 39);
  if (v73)
  {
    v1247 = CMMsl::AccessoryWake::hash_value(v73);
  }

  else
  {
    v1247 = 0;
  }

  v74 = *(this + 128);
  if (v74)
  {
    v1246 = CMMsl::FacePose::hash_value(v74);
  }

  else
  {
    v1246 = 0;
  }

  v75 = *(this + 486);
  if (v75)
  {
    v1245 = sub_100180708(&v1286, (v75 + 8));
  }

  else
  {
    v1245 = 0;
  }

  v76 = *(this + 482);
  if (v76 && (v77 = *(v76 + 8)) != 0)
  {
    v1244 = CMMsl::Pressure::hash_value(v77);
  }

  else
  {
    v1244 = 0;
  }

  v78 = *(this + 197);
  if (v78)
  {
    v79 = sub_10007A320(v1291, (v78 + 8));
    if (*(v78 + 36))
    {
      v80 = *(v78 + 32);
    }

    else
    {
      v80 = 0;
    }

    v1243 = v80 ^ v79;
  }

  else
  {
    v1243 = 0;
  }

  v81 = *(this + 20);
  if (v81)
  {
    v1242 = CMMsl::AccessoryDeviceMotion::hash_value(v81);
  }

  else
  {
    v1242 = 0;
  }

  v82 = *(this + 444);
  if (v82)
  {
    v1241 = CMMsl::VisionCompassBias::hash_value(v82);
  }

  else
  {
    v1241 = 0;
  }

  v83 = *(this + 49);
  if (v83)
  {
    v84 = *(v83 + 12);
    v85 = *(v83 + 8);
    if ((v84 & 1) == 0)
    {
      v85 = 0;
    }

    v1240 = v85;
  }

  else
  {
    v1240 = 0;
  }

  v86 = *(this + 441);
  if (v86)
  {
    v1239 = CMMsl::VIOEstimation::hash_value(v86);
  }

  else
  {
    v1239 = 0;
  }

  v87 = *(this + 261);
  if (v87)
  {
    v1238 = CMMsl::LSLHeadingEstimation::hash_value(v87);
  }

  else
  {
    v1238 = 0;
  }

  v88 = *(this + 139);
  if (v88)
  {
    v1237 = CMMsl::FallSnippet::hash_value(v88);
  }

  else
  {
    v1237 = 0;
  }

  v89 = *(this + 13);
  if (v89)
  {
    v1236 = CMMsl::AccelerometerPace::hash_value(v89);
  }

  else
  {
    v1236 = 0;
  }

  v90 = *(this + 286);
  if (v90)
  {
    v91 = *(v90 + 8);
    v92 = v91 == 0.0 || (*(v90 + 12) & 1) == 0;
    v93 = LODWORD(v91);
    if (v92)
    {
      v93 = 0;
    }

    v1235 = v93;
  }

  else
  {
    v1235 = 0;
  }

  v94 = *(this + 410);
  if (v94)
  {
    v1234 = CMMsl::StepCountEntry::hash_value(v94);
  }

  else
  {
    v1234 = 0;
  }

  v95 = *(this + 271);
  if (v95)
  {
    v1233 = CMMsl::MobilityBoutMetrics::hash_value(v95);
  }

  else
  {
    v1233 = 0;
  }

  v96 = *(this + 100);
  if (v96)
  {
    v1232 = CMMsl::CoprocessorReplyGaitMetrics::hash_value(v96);
  }

  else
  {
    v1232 = 0;
  }

  v97 = *(this + 442);
  if (v97)
  {
    v1231 = CMMsl::VIOPose::hash_value(v97);
  }

  else
  {
    v1231 = 0;
  }

  v98 = *(this + 387);
  if (v98)
  {
    v99 = *(v98 + 12);
    v100 = *(v98 + 8);
    if ((v99 & 1) == 0)
    {
      v100 = 0;
    }

    v1230 = v100;
  }

  else
  {
    v1230 = 0;
  }

  v101 = *(this + 443);
  if (v101)
  {
    v1229 = CMMsl::VIOReplayPose::hash_value(v101);
  }

  else
  {
    v1229 = 0;
  }

  v102 = *(this + 448);
  if (v102)
  {
    v1228 = CMMsl::VisualStateMeasurement::hash_value(v102);
  }

  else
  {
    v1228 = 0;
  }

  v103 = *(this + 245);
  if (v103)
  {
    v1227 = CMMsl::KappaTriggerDebug::hash_value(v103);
  }

  else
  {
    v1227 = 0;
  }

  v104 = *(this + 220);
  if (v104)
  {
    v1226 = CMMsl::KappaDirectionOfTravel::hash_value(v104);
  }

  else
  {
    v1226 = 0;
  }

  v105 = *(this + 194);
  if (v105 && (v106 = *(v105 + 8)) != 0)
  {
    v1225 = CMMsl::Accel::hash_value(v106);
  }

  else
  {
    v1225 = 0;
  }

  v107 = *(this + 241);
  if (v107)
  {
    v1224 = CMMsl::KappaSteps::hash_value(v107);
  }

  else
  {
    v1224 = 0;
  }

  v108 = *(this + 431);
  if (v108)
  {
    v109 = *(v108 + 20);
    v110 = *(v108 + 8);
    if ((v109 & 1) == 0)
    {
      v110 = 0;
    }

    v111 = *(v108 + 16);
    if ((v109 & 2) == 0)
    {
      v111 = 0;
    }

    v1223 = v111 ^ v110;
  }

  else
  {
    v1223 = 0;
  }

  v112 = *(this + 236);
  if (v112)
  {
    v1222 = CMMsl::KappaRoads::hash_value(v112);
  }

  else
  {
    v1222 = 0;
  }

  v113 = *(this + 432);
  if (v113)
  {
    v1221 = CMMsl::UserStudyEvent::hash_value(v113);
  }

  else
  {
    v1221 = 0;
  }

  v114 = *(this + 53);
  if (v114)
  {
    v1220 = CMMsl::AuxiliaryDeviceMotion::hash_value(v114);
  }

  else
  {
    v1220 = 0;
  }

  v115 = *(this + 424);
  if (v115)
  {
    v1219 = CMMsl::TempestPoCAuxiliaryDeviceMotion::hash_value(v115);
  }

  else
  {
    v1219 = 0;
  }

  v116 = *(this + 52);
  if (v116)
  {
    v1218 = CMMsl::AudioAccessoryDeviceMotion::hash_value(v116);
  }

  else
  {
    v1218 = 0;
  }

  v117 = *(this + 425);
  if (v117)
  {
    v1217 = CMMsl::TempestPoCListenerOrientation::hash_value(v117);
  }

  else
  {
    v1217 = 0;
  }

  v118 = *(this + 466);
  if (v118 && (v119 = *(v118 + 8)) != 0)
  {
    v1216 = CMMsl::Accel::hash_value(v119);
  }

  else
  {
    v1216 = 0;
  }

  v120 = *(this + 42);
  if (v120)
  {
    v121 = *(v120 + 8);
    v122 = v121 == 0.0 || (*(v120 + 12) & 1) == 0;
    v123 = LODWORD(v121);
    if (v122)
    {
      v123 = 0;
    }

    v1215 = v123;
  }

  else
  {
    v1215 = 0;
  }

  v124 = *(this + 464);
  if (v124 && (v125 = *(v124 + 8)) != 0)
  {
    v126 = *(v125 + 8);
    v127 = v126 == 0.0 || (*(v125 + 12) & 1) == 0;
    v128 = LODWORD(v126);
    if (v127)
    {
      v128 = 0;
    }

    v1214 = v128;
  }

  else
  {
    v1214 = 0;
  }

  v129 = *(this + 445);
  if (v129)
  {
    v1213 = CMMsl::VisualLocalization::hash_value(v129);
  }

  else
  {
    v1213 = 0;
  }

  v130 = *(this + 181);
  if (v130)
  {
    v1212 = CMMsl::GyroFactoryCalibrationData::hash_value(v130);
  }

  else
  {
    v1212 = 0;
  }

  v131 = *(this + 398);
  if (v131)
  {
    v132 = *(v131 + 20);
    v133 = *(v131 + 16);
    v134 = v133 == 0.0 || (v132 & 2) == 0;
    v135 = LODWORD(v133);
    if (v134)
    {
      v135 = 0;
    }

    v136 = *(v131 + 8);
    if ((v132 & 1) == 0)
    {
      v136 = 0;
    }

    v1211 = v135 ^ v136;
  }

  else
  {
    v1211 = 0;
  }

  v137 = *(this + 152);
  if (v137)
  {
    v1210 = CMMsl::FrequencyResponse::hash_value(v137);
  }

  else
  {
    v1210 = 0;
  }

  v138 = *(this + 123);
  if (v138)
  {
    v139 = *(v138 + 12);
    v140 = *(v138 + 8);
    if ((v139 & 1) == 0)
    {
      v140 = 0;
    }

    v1209 = v140;
  }

  else
  {
    v1209 = 0;
  }

  v141 = *(this + 6);
  if (v141 && (v142 = *(v141 + 8)) != 0)
  {
    v1208 = CMMsl::Accel::hash_value(v142);
  }

  else
  {
    v1208 = 0;
  }

  v143 = *(this + 280);
  if (v143)
  {
    v1207 = CMMsl::MotionLocation::hash_value(v143);
  }

  else
  {
    v1207 = 0;
  }

  v144 = *(this + 275);
  if (v144)
  {
    v1206 = CMMsl::MotionActivity::hash_value(v144);
  }

  else
  {
    v1206 = 0;
  }

  v145 = *(this + 69);
  if (v145)
  {
    v1205 = CMMsl::BioMotionPose::hash_value(v145);
  }

  else
  {
    v1205 = 0;
  }

  v146 = *(this + 243);
  if (v146)
  {
    v1204 = CMMsl::KappaTrigger::hash_value(v146);
  }

  else
  {
    v1204 = 0;
  }

  v147 = *(this + 364);
  if (v147)
  {
    v1203 = CMMsl::RelDMInSystemConfig::hash_value(v147);
  }

  else
  {
    v1203 = 0;
  }

  v148 = *(this + 212);
  if (v148 && (v149 = *(v148 + 8)) != 0)
  {
    v1202 = CMMsl::BioMotionPose::hash_value(v149);
  }

  else
  {
    v1202 = 0;
  }

  v150 = *(this + 99);
  if (v150 && (v151 = *(v150 + 8)) != 0)
  {
    v1201 = CMMsl::BioMotionPose::hash_value(v151);
  }

  else
  {
    v1201 = 0;
  }

  v152 = *(this + 176);
  if (v152)
  {
    v1200 = CMMsl::GyroCalibrationSample::hash_value(v152);
  }

  else
  {
    v1200 = 0;
  }

  v153 = *(this + 177);
  if (v153)
  {
    v1199 = CMMsl::GyroCalibrationSampleNonlinear::hash_value(v153);
  }

  else
  {
    v1199 = 0;
  }

  v154 = *(this + 175);
  if (!v154 || (v155 = *(v154 + 8), v156 = *(v154 + 16), v155 == v156))
  {
    v157 = 0;
  }

  else
  {
    v157 = 0;
    do
    {
      v158 = *v155++;
      v157 ^= CMMsl::GyroCalibrationSampleNonlinear::hash_value(v158);
    }

    while (v155 != v156);
  }

  v159 = *(this + 174);
  if (!v159 || (v160 = *(v159 + 8), v161 = *(v159 + 16), v160 == v161))
  {
    v162 = 0;
  }

  else
  {
    v162 = 0;
    do
    {
      v163 = *v160++;
      v162 ^= CMMsl::GyroCalibrationSample::hash_value(v163);
    }

    while (v160 != v161);
  }

  v164 = *(this + 66);
  if (v164)
  {
    v1198 = CMMsl::BioMotionClassification::hash_value(v164);
  }

  else
  {
    v1198 = 0;
  }

  v165 = *(this + 153);
  if (v165 && (v166 = *(v165 + 8)) != 0)
  {
    v1197 = CMMsl::BioMotionClassification::hash_value(v166);
  }

  else
  {
    v1197 = 0;
  }

  v167 = *(this + 274);
  if (v167 && (v168 = *(v167 + 8)) != 0)
  {
    v1196 = CMMsl::BioMotionClassification::hash_value(v168);
  }

  else
  {
    v1196 = 0;
  }

  v169 = *(this + 262);
  if (v169 && (v170 = *(v169 + 8)) != 0)
  {
    v1195 = CMMsl::BioMotionClassification::hash_value(v170);
  }

  else
  {
    v1195 = 0;
  }

  v171 = *(this + 334);
  if (v171)
  {
    v1194 = CMMsl::Pose::hash_value(v171);
  }

  else
  {
    v1194 = 0;
  }

  v172 = *(this + 335);
  if (v172)
  {
    v1193 = CMMsl::PoseState::hash_value(v172);
  }

  else
  {
    v1193 = 0;
  }

  v173 = *(this + 70);
  if (v173)
  {
    v1192 = CMMsl::BioMotionPredictedPose::hash_value(v173);
  }

  else
  {
    v1192 = 0;
  }

  v174 = *(this + 213);
  if (v174 && (v175 = *(v174 + 8)) != 0)
  {
    v1191 = CMMsl::BioMotionPredictedPose::hash_value(v175);
  }

  else
  {
    v1191 = 0;
  }

  v176 = *(this + 98);
  if (v176 && (v177 = *(v176 + 8)) != 0)
  {
    v1190 = CMMsl::BioMotionPredictedPose::hash_value(v177);
  }

  else
  {
    v1190 = 0;
  }

  v178 = *(this + 348);
  if (v178 && (v179 = *(v178 + 8)) != 0)
  {
    v1189 = CMMsl::Pressure::hash_value(v179);
  }

  else
  {
    v1189 = 0;
  }

  v180 = *(this + 450);
  if (v180)
  {
    v1188 = CMMsl::VO2MaxOutput::hash_value(v180);
  }

  else
  {
    v1188 = 0;
  }

  v181 = *(this + 264);
  if (v181)
  {
    v1187 = CMMsl::MagneticAccessoryType1::hash_value(v181);
  }

  else
  {
    v1187 = 0;
  }

  v182 = *(this + 265);
  if (v182)
  {
    v1186 = ((*(v182 + 12) << 31 >> 31) & *(v182 + 8));
  }

  else
  {
    v1186 = 0;
  }

  v183 = *(this + 347);
  if (v183)
  {
    v1185 = CMMsl::PressureCalibration::hash_value(v183);
  }

  else
  {
    v1185 = 0;
  }

  v184 = *(this + 480);
  if (v184 && (v185 = *(v184 + 8)) != 0)
  {
    v1184 = CMMsl::Magnetometer::hash_value(v185);
  }

  else
  {
    v1184 = 0;
  }

  v186 = *(this + 471);
  if (v186 && (v187 = *(v186 + 8)) != 0)
  {
    v1183 = CMMsl::CompassCalibration::hash_value(v187);
  }

  else
  {
    v1183 = 0;
  }

  v188 = *(this + 363);
  if (v188)
  {
    v189 = *(v188 + 8);
    v190 = *(v188 + 16);
    v1182 = PBHashBytes();
  }

  else
  {
    v1182 = 0;
  }

  v191 = *(this + 82);
  if (v191)
  {
    v1181 = CMMsl::CV3DPredictedPose::hash_value(v191);
  }

  else
  {
    v1181 = 0;
  }

  v192 = *(this + 67);
  if (v192)
  {
    v1180 = CMMsl::BioMotionLinkLengthFitParameters::hash_value(v192);
  }

  else
  {
    v1180 = 0;
  }

  v193 = *(this + 68);
  if (v193)
  {
    v1179 = CMMsl::BioMotionOnlineLinkLengthUpdate::hash_value(v193);
  }

  else
  {
    v1179 = 0;
  }

  v194 = *(this + 294);
  if (v194)
  {
    v1178 = CMMsl::ODTPose::hash_value(v194);
  }

  else
  {
    v1178 = 0;
  }

  v195 = *(this + 329);
  if (v195)
  {
    v196 = *(v195 + 24);
    v197 = *(v195 + 16);
    v198 = *(v195 + 8) == 0.0 || (v196 & 1) == 0;
    v199 = *(v195 + 8);
    if (v198)
    {
      v199 = 0;
    }

    v200 = v196 & 2;
    v201 = v197 == 0.0 || v200 == 0;
    v202 = v197;
    if (v201)
    {
      v202 = 0.0;
    }

    v1177 = *&v202 ^ v199;
  }

  else
  {
    v1177 = 0;
  }

  v203 = *(this + 330);
  if (v203)
  {
    v1176 = CMMsl::PencilTouch::hash_value(v203);
  }

  else
  {
    v1176 = 0;
  }

  v204 = *(this + 54);
  if (v204)
  {
    v205 = *(v204 + 20);
    v206 = *(v204 + 8) == 0.0 || (v205 & 1) == 0;
    v207 = *(v204 + 8);
    if (v206)
    {
      v207 = 0;
    }

    v208 = v205 & 2;
    v209 = *(v204 + 16);
    v210 = v209 == 0.0 || v208 == 0;
    v211 = LODWORD(v209);
    if (v210)
    {
      v211 = 0;
    }

    v1175 = v211 ^ v207;
  }

  else
  {
    v1175 = 0;
  }

  v212 = *(this + 426);
  if (v212)
  {
    v213 = *(v212 + 20);
    v214 = *(v212 + 16);
    if ((v213 & 2) == 0)
    {
      v214 = 0;
    }

    v215 = *(v212 + 8);
    if ((v213 & 1) == 0)
    {
      v215 = 0;
    }

    v1174 = v215 ^ v214;
  }

  else
  {
    v1174 = 0;
  }

  v216 = *(this + 48);
  if (v216 && (v217 = *(v216 + 8)) != 0)
  {
    v1173 = CMMsl::CV3DSLAMState::hash_value(v217);
  }

  else
  {
    v1173 = 0;
  }

  v218 = *(this + 65);
  if (v218 && (v219 = *(v218 + 8)) != 0)
  {
    v1172 = CMMsl::BioMotionAnchor::hash_value(v219);
  }

  else
  {
    v1172 = 0;
  }

  v220 = *(this + 71);
  if (v220 && (v221 = *(v220 + 8)) != 0)
  {
    v1171 = CMMsl::PropagatedAnchor::hash_value(v221);
  }

  else
  {
    v1171 = 0;
  }

  v222 = *(this + 454);
  if (v222)
  {
    v1170 = CMMsl::WalkingSteadinessClassification::hash_value(v222);
  }

  else
  {
    v1170 = 0;
  }

  v223 = *(this + 406);
  if (v223)
  {
    v1169 = CMMsl::SteadinessModelResult::hash_value(v223);
  }

  else
  {
    v1169 = 0;
  }

  v224 = *(this + 401);
  if (v224)
  {
    v1168 = CMMsl::SteadinessEvent::hash_value(v224);
  }

  else
  {
    v1168 = 0;
  }

  v225 = *(this + 404);
  if (v225)
  {
    v1167 = CMMsl::SteadinessModelGaitBaselineFeatures::hash_value(v225);
  }

  else
  {
    v1167 = 0;
  }

  v226 = *(this + 403);
  if (v226)
  {
    v1166 = CMMsl::SteadinessModelContinuousWalkingFeatures::hash_value(v226);
  }

  else
  {
    v1166 = 0;
  }

  v227 = *(this + 407);
  if (v227)
  {
    v1165 = CMMsl::SteadinessModelTemporalDispersionFeatures::hash_value(v227);
  }

  else
  {
    v1165 = 0;
  }

  v228 = *(this + 408);
  if (v228)
  {
    v1164 = CMMsl::SteadinessModelTemporalEntropyFeatures::hash_value(v228);
  }

  else
  {
    v1164 = 0;
  }

  v229 = *(this + 402);
  if (v229)
  {
    v1163 = CMMsl::SteadinessModelBalanceFeatures::hash_value(v229);
  }

  else
  {
    v1163 = 0;
  }

  v230 = *(this + 268);
  if (v230)
  {
    v1162 = CMMsl::MagnetometerReset::hash_value(v230);
  }

  else
  {
    v1162 = 0;
  }

  v231 = *(this + 484);
  if (v231 && (v232 = *(v231 + 8)) != 0)
  {
    v1161 = CMMsl::WatchOnWristState::hash_value(v232);
  }

  else
  {
    v1161 = 0;
  }

  v233 = *(this + 256);
  if (v233)
  {
    v1160 = CMMsl::LiftToWakeOnHeadStatus::hash_value(v233);
  }

  else
  {
    v1160 = 0;
  }

  v234 = *(this + 29);
  if (v234)
  {
    v1159 = CMMsl::AccessoryMagnetometer::hash_value(v234);
  }

  else
  {
    v1159 = 0;
  }

  v235 = *(this + 411);
  if (v235)
  {
    v1158 = CMMsl::StepCountEntryAddition::hash_value(v235);
  }

  else
  {
    v1158 = 0;
  }

  v236 = *(this + 412);
  if (v236)
  {
    v1157 = CMMsl::StepDistanceFusionResult::hash_value(v236);
  }

  else
  {
    v1157 = 0;
  }

  v237 = *(this + 394);
  if (!v237 || (v238 = *(v237 + 8), v239 = *(v237 + 16), v238 == v239))
  {
    v240 = 0;
  }

  else
  {
    v240 = 0;
    do
    {
      v241 = *v238++;
      v240 ^= CMMsl::SkeletonJoint::hash_value(v241);
    }

    while (v238 != v239);
  }

  v242 = *(this + 104);
  if (v242)
  {
    v1156 = CMMsl::CVWatchCalories::hash_value(v242);
  }

  else
  {
    v1156 = 0;
  }

  v243 = *(this + 125);
  if (v243)
  {
    v1155 = CMMsl::FaceBlendShapeCoefficientsSample::hash_value(v243);
  }

  else
  {
    v1155 = 0;
  }

  v244 = *(this + 64);
  if (v244)
  {
    v1154 = CMMsl::BatteryStatus::hash_value(v244);
  }

  else
  {
    v1154 = 0;
  }

  v245 = *(this + 260);
  if (v245)
  {
    v1153 = ((*(v245 + 12) << 31 >> 31) & *(v245 + 8));
  }

  else
  {
    v1153 = 0;
  }

  v246 = *(this + 63);
  if (v246)
  {
    v1152 = ((*(v246 + 12) << 31 >> 31) & *(v246 + 8));
  }

  else
  {
    v1152 = 0;
  }

  v247 = *(this + 338);
  if (v247)
  {
    v248 = *(v247 + 16);
    v249 = *(v247 + 8);
    if ((v248 & 1) == 0)
    {
      v249 = 0;
    }

    v1151 = v249;
  }

  else
  {
    v1151 = 0;
  }

  v250 = *(this + 151);
  if (v250)
  {
    v1150 = CMMsl::FocusModes::hash_value(v250);
  }

  else
  {
    v1150 = 0;
  }

  v251 = *(this + 111);
  if (v251)
  {
    v1149 = ((*(v251 + 12) << 31 >> 31) & *(v251 + 8));
  }

  else
  {
    v1149 = 0;
  }

  v252 = *(this + 4);
  if (v252 && (v253 = *(v252 + 8)) != 0)
  {
    v1148 = sub_100011074(&v1287, v253);
  }

  else
  {
    v1148 = 0;
  }

  v254 = *(this + 45);
  if (v254)
  {
    v1147 = CMMsl::AltimeterKF::hash_value(v254);
  }

  else
  {
    v1147 = 0;
  }

  v255 = *(this + 257);
  if (v255)
  {
    v1146 = CMMsl::LiftToWakeState::hash_value(v255);
  }

  else
  {
    v1146 = 0;
  }

  v256 = *(this + 440);
  if (v256)
  {
    v1145 = CMMsl::ViewObstructedState::hash_value(v256);
  }

  else
  {
    v1145 = 0;
  }

  v257 = *(this + 374);
  if (v257)
  {
    v1144 = CMMsl::RunningFormMetrics::hash_value(v257);
  }

  else
  {
    v1144 = 0;
  }

  v1143 = sub_100180764(&v1284, this + 489);
  v258 = *(this + 488);
  if (v258)
  {
    v1142 = sub_100180764(&v1288, (v258 + 8));
  }

  else
  {
    v1142 = 0;
  }

  v259 = *(this + 50);
  if (v259)
  {
    v1141 = CMMsl::ARKitWorldPose::hash_value(v259);
  }

  else
  {
    v1141 = 0;
  }

  v260 = *(this + 311);
  if (v260)
  {
    v261 = *(v260 + 16);
    if ((*(v260 + 20) & 2) == 0)
    {
      v261 = 0;
    }

    v262 = *(v260 + 8) == 0.0 || (*(v260 + 20) & 1) == 0;
    v263 = *(v260 + 8);
    if (v262)
    {
      v263 = 0;
    }

    v1140 = v263 ^ v261;
  }

  else
  {
    v1140 = 0;
  }

  v264 = *(this + 333);
  if (v264)
  {
    v1139 = CMMsl::PocketDetectionPacket::hash_value(v264);
  }

  else
  {
    v1139 = 0;
  }

  v265 = *(this + 255);
  if (v265)
  {
    v1138 = CMMsl::LiftToWakeFeaturesNeo::hash_value(v265);
  }

  else
  {
    v1138 = 0;
  }

  v266 = *(this + 258);
  if (v266)
  {
    v1137 = CMMsl::LiftToWakeStatusNeo::hash_value(v266);
  }

  else
  {
    v1137 = 0;
  }

  v267 = *(this + 375);
  if (v267)
  {
    v1136 = CMMsl::RunningPower::hash_value(v267);
  }

  else
  {
    v1136 = 0;
  }

  v268 = *(this + 57);
  if (v268)
  {
    v1135 = CMMsl::BasebandCompassCoex::hash_value(v268);
  }

  else
  {
    v1135 = 0;
  }

  v269 = *(this + 58);
  if (v269)
  {
    v1134 = CMMsl::BasebandCompassCoexConstraints::hash_value(v269);
  }

  else
  {
    v1134 = 0;
  }

  v270 = *(this + 277);
  if (v270)
  {
    v1133 = CMMsl::MotionContextActivity::hash_value(v270);
  }

  else
  {
    v1133 = 0;
  }

  v271 = *(this + 297);
  if (v271)
  {
    v272 = *(v271 + 12);
    v273 = *(v271 + 8);
    if ((v272 & 1) == 0)
    {
      v273 = 0;
    }

    v1132 = v273;
  }

  else
  {
    v1132 = 0;
  }

  v274 = *(this + 12);
  if (v274)
  {
    v1131 = CMMsl::AccelTNBFrame::hash_value(v274);
  }

  else
  {
    v1131 = 0;
  }

  v275 = *(this + 117);
  if (v275)
  {
    v1130 = CMMsl::DoTEstimatorWithTNB::hash_value(v275);
  }

  else
  {
    v1130 = 0;
  }

  v276 = *(this + 312);
  if (v276)
  {
    v1129 = CMMsl::PdrMLModelOutput::hash_value(v276);
  }

  else
  {
    v1129 = 0;
  }

  v277 = *(this + 158);
  if (v277)
  {
    v1128 = CMMsl::GaitEventsModelOutput::hash_value(v277);
  }

  else
  {
    v1128 = 0;
  }

  v278 = *(this + 159);
  if (v278)
  {
    v1127 = CMMsl::GaitEventsStrideAggregation::hash_value(v278);
  }

  else
  {
    v1127 = 0;
  }

  v279 = *(this + 157);
  if (v279)
  {
    v1126 = CMMsl::GaitEventsHKResult::hash_value(v279);
  }

  else
  {
    v1126 = 0;
  }

  v280 = *(this + 126);
  if (v280)
  {
    v281 = *(v280 + 20);
    v282 = *(v280 + 8) == 0.0 || (v281 & 1) == 0;
    v283 = *(v280 + 8);
    if (v282)
    {
      v283 = 0;
    }

    v1125 = v283 ^ (*(v280 + 16) & (v281 << 30 >> 31));
  }

  else
  {
    v1125 = 0;
  }

  v284 = *(this + 469);
  if (v284)
  {
    v1124 = CMMsl::WorkoutRecorderAveragedALSData::hash_value(v284);
  }

  else
  {
    v1124 = 0;
  }

  v285 = *(this + 419);
  if (v285)
  {
    v1123 = CMMsl::StrideCalEntry::hash_value(v285);
  }

  else
  {
    v1123 = 0;
  }

  v286 = *(this + 377);
  if (v286)
  {
    v1122 = CMMsl::RunningSpeedKFResult::hash_value(v286);
  }

  else
  {
    v1122 = 0;
  }

  v287 = *(this + 357);
  if (v287)
  {
    v1121 = CMMsl::ProxPDP::hash_value(v287);
  }

  else
  {
    v1121 = 0;
  }

  v288 = *(this + 250);
  if (v288)
  {
    v1120 = CMMsl::KeyboardMotionFeatures::hash_value(v288);
  }

  else
  {
    v1120 = 0;
  }

  v289 = *(this + 251);
  if (v289)
  {
    v290 = *(v289 + 20);
    v291 = *(v289 + 8) == 0.0 || (v290 & 1) == 0;
    v292 = *(v289 + 8);
    if (v291)
    {
      v292 = 0;
    }

    v293 = *(v289 + 16);
    if ((v290 & 2) == 0)
    {
      v293 = 0;
    }

    v1119 = v293 ^ v292;
  }

  else
  {
    v1119 = 0;
  }

  v294 = *(this + 43);
  if (v294)
  {
    v295 = *(v294 + 8);
    if ((*(v294 + 20) & 1) == 0)
    {
      v295 = 0;
    }

    v296 = *(v294 + 16);
    v297 = v296 == 0.0 || (*(v294 + 20) & 2) == 0;
    v298 = LODWORD(v296);
    if (v297)
    {
      v298 = 0;
    }

    v1118 = v298 ^ v295;
  }

  else
  {
    v1118 = 0;
  }

  v299 = *(this + 249);
  if (v299)
  {
    v300 = *(v299 + 20);
    v301 = *(v299 + 8) == 0.0 || (v300 & 1) == 0;
    v302 = *(v299 + 8);
    if (v301)
    {
      v302 = 0;
    }

    v1117 = v302 ^ (*(v299 + 16) & (v300 << 30 >> 31));
  }

  else
  {
    v1117 = 0;
  }

  v303 = *(this + 451);
  if (v303)
  {
    v1116 = CMMsl::WakeGestureNotification::hash_value(v303);
  }

  else
  {
    v1116 = 0;
  }

  v304 = *(this + 355);
  if (v304)
  {
    v1115 = CMMsl::ProxBaselineEstimatorState::hash_value(v304);
  }

  else
  {
    v1115 = 0;
  }

  v305 = *(this + 60);
  if (v305)
  {
    v1114 = CMMsl::BaselineResetCheck::hash_value(v305);
  }

  else
  {
    v1114 = 0;
  }

  v306 = *(this + 370);
  if (v306)
  {
    v1113 = CMMsl::RhythmicGnssOperatorStatus::hash_value(v306);
  }

  else
  {
    v1113 = 0;
  }

  v307 = *(this + 252);
  if (v307)
  {
    v308 = *(v307 + 20);
    v309 = *(v307 + 8) == 0.0 || (v308 & 1) == 0;
    v310 = *(v307 + 8);
    if (v309)
    {
      v310 = 0;
    }

    v1112 = v310 ^ (*(v307 + 16) & (v308 << 30 >> 31));
  }

  else
  {
    v1112 = 0;
  }

  v311 = *(this + 248);
  if (v311)
  {
    v312 = *(v311 + 20);
    v313 = *(v311 + 8) == 0.0 || (v312 & 1) == 0;
    v314 = *(v311 + 8);
    if (v313)
    {
      v314 = 0;
    }

    v1111 = v314 ^ (*(v311 + 16) & (v312 << 30 >> 31));
  }

  else
  {
    v1111 = 0;
  }

  v315 = *(this + 56);
  if (v315)
  {
    v1110 = CMMsl::BacklightState::hash_value(v315);
  }

  else
  {
    v1110 = 0;
  }

  v316 = *(this + 61);
  if (v316)
  {
    v317 = *(v316 + 8);
    if (v317)
    {
      v317 = CMMsl::MotionGPSLocation::hash_value(v317);
    }

    if (*(v316 + 20))
    {
      v318 = *(v316 + 16);
    }

    else
    {
      v318 = 0;
    }

    v1109 = v318 ^ v317;
  }

  else
  {
    v1109 = 0;
  }

  v319 = *(this + 192);
  if (v319)
  {
    v1108 = CMMsl::HeartRateReference::hash_value(v319);
  }

  else
  {
    v1108 = 0;
  }

  v320 = *(this + 393);
  if (v320)
  {
    v1107 = CMMsl::Skeleton2D::hash_value(v320);
  }

  else
  {
    v1107 = 0;
  }

  v321 = *(this + 396);
  if (v321)
  {
    v1106 = CMMsl::Skeleton3DRetargeted::hash_value(v321);
  }

  else
  {
    v1106 = 0;
  }

  v322 = *(this + 395);
  if (v322)
  {
    v1105 = CMMsl::Skeleton3DLifted::hash_value(v322);
  }

  else
  {
    v1105 = 0;
  }

  v323 = *(this + 143);
  if (v323)
  {
    v1104 = CMMsl::FitnessMachineSample::hash_value(v323);
  }

  else
  {
    v1104 = 0;
  }

  v324 = *(this + 458);
  if (v324)
  {
    v1103 = CMMsl::WatchHeartRateData::hash_value(v324);
  }

  else
  {
    v1103 = 0;
  }

  v325 = *(this + 129);
  if (v325)
  {
    v1102 = CMMsl::FacePoseSynchronized::hash_value(v325);
  }

  else
  {
    v1102 = 0;
  }

  v326 = *(this + 455);
  if (v326)
  {
    v1101 = CMMsl::WatchActiveCalories::hash_value(v326);
  }

  else
  {
    v1101 = 0;
  }

  v327 = *(this + 456);
  if (v327)
  {
    v1100 = CMMsl::WatchBasalCalories::hash_value(v327);
  }

  else
  {
    v1100 = 0;
  }

  v328 = *(this + 429);
  if (v328)
  {
    v1099 = CMMsl::TrackRunData::hash_value(v328);
  }

  else
  {
    v1099 = 0;
  }

  v329 = *(this + 163);
  if (v329)
  {
    v1098 = CMMsl::GnssAvailabilityPredictorData::hash_value(v329);
  }

  else
  {
    v1098 = 0;
  }

  v330 = *(this + 164);
  if (v330)
  {
    v1097 = CMMsl::GnssLeechLocationData::hash_value(v330);
  }

  else
  {
    v1097 = 0;
  }

  v331 = *(this + 269);
  if (v331)
  {
    v1096 = CMMsl::MapsRouteHintData::hash_value(v331);
  }

  else
  {
    v1096 = 0;
  }

  v332 = *(this + 142);
  if (v332)
  {
    v1095 = CMMsl::FitnessMachineData::hash_value(v332);
  }

  else
  {
    v1095 = 0;
  }

  v333 = *(this + 474);
  if (v333 && (v334 = *(v333 + 8)) != 0)
  {
    v1094 = CMMsl::FitnessMachineData::hash_value(v334);
  }

  else
  {
    v1094 = 0;
  }

  v335 = *(this + 17);
  if (v335)
  {
    v1093 = CMMsl::AccessoryActivityStateUpdate::hash_value(v335);
  }

  else
  {
    v1093 = 0;
  }

  v336 = *(this + 321);
  if (v336)
  {
    v1092 = CMMsl::PedestrianFenceExit::hash_value(v336);
  }

  else
  {
    v1092 = 0;
  }

  v337 = *(this + 206);
  if (v337)
  {
    v1091 = CMMsl::InertialOdometry::hash_value(v337);
  }

  else
  {
    v1091 = 0;
  }

  v338 = *(this + 331);
  if (v338)
  {
    v1090 = CMMsl::PhysicalEffortInput::hash_value(v338);
  }

  else
  {
    v1090 = 0;
  }

  v339 = *(this + 332);
  if (v339)
  {
    v1089 = CMMsl::PhysicalEffortSample::hash_value(v339);
  }

  else
  {
    v1089 = 0;
  }

  v340 = *(this + 320);
  if (v340)
  {
    v1088 = CMMsl::PedestrianCalorieModelDebugging::hash_value(v340);
  }

  else
  {
    v1088 = 0;
  }

  v341 = *(this + 122);
  if (v341)
  {
    v1087 = CMMsl::ElevationThreshold::hash_value(v341);
  }

  else
  {
    v1087 = 0;
  }

  v342 = *(this + 207);
  if (v342)
  {
    v1086 = CMMsl::InitialHistoricalMeanSeaLevelPressure::hash_value(v342);
  }

  else
  {
    v1086 = 0;
  }

  v343 = *(this + 462);
  if (v343)
  {
    v344 = vbic_s8(v343[1], vceqz_s32(vand_s8(vdup_n_s32(v343[2].u8[0]), 0x200000001)));
    v1085 = (v344.i32[0] ^ v344.i32[1]);
  }

  else
  {
    v1085 = 0;
  }

  v345 = *(this + 324);
  if (v345)
  {
    v1084 = CMMsl::PencilDeviceMotion::hash_value(v345);
  }

  else
  {
    v1084 = 0;
  }

  v346 = *(this + 327);
  if (v346)
  {
    v1083 = CMMsl::PencilFusionResult::hash_value(v346);
  }

  else
  {
    v1083 = 0;
  }

  v347 = *(this + 186);
  if (v347)
  {
    v348 = *(v347 + 20);
    v349 = *(v347 + 8) == 0.0 || (v348 & 1) == 0;
    v350 = *(v347 + 8);
    if (v349)
    {
      v350 = 0;
    }

    v1082 = v350 ^ (*(v347 + 16) & (v348 << 30 >> 31));
  }

  else
  {
    v1082 = 0;
  }

  v351 = *(this + 405);
  if (v351)
  {
    v1081 = CMMsl::SteadinessModelHarmonicFeatures::hash_value(v351);
  }

  else
  {
    v1081 = 0;
  }

  v352 = *(this + 326);
  if (v352)
  {
    v1080 = CMMsl::PencilFusionReplayResult::hash_value(v352);
  }

  else
  {
    v1080 = 0;
  }

  v353 = *(this + 273);
  if (v353)
  {
    v1079 = CMMsl::MobilitySmoothedGaitMetrics::hash_value(v353);
  }

  else
  {
    v1079 = 0;
  }

  v354 = *(this + 457);
  if (v354)
  {
    v355 = *(v354 + 24);
    v356 = *(v354 + 16) == 0.0 || (v355 & 2) == 0;
    v357 = *(v354 + 16);
    if (v356)
    {
      v357 = 0;
    }

    v358 = *(v354 + 8);
    if ((v355 & 1) == 0)
    {
      v358 = 0;
    }

    v1078 = v357 ^ v358;
  }

  else
  {
    v1078 = 0;
  }

  v359 = *(this + 26);
  if (v359)
  {
    v1077 = CMMsl::AccessoryHeartRate::hash_value(v359);
  }

  else
  {
    v1077 = 0;
  }

  v360 = *(this + 31);
  if (v360)
  {
    v1076 = CMMsl::AccessoryPPG::hash_value(v360);
  }

  else
  {
    v1076 = 0;
  }

  v361 = *(this + 281);
  if (v361)
  {
    v1075 = CMMsl::MotionLoiAltitudeData::hash_value(v361);
  }

  else
  {
    v1075 = 0;
  }

  v362 = *(this + 109);
  if (v362)
  {
    v363 = *(v362 + 20);
    v364 = *(v362 + 8) == 0.0 || (v363 & 1) == 0;
    v365 = *(v362 + 8);
    if (v364)
    {
      v365 = 0;
    }

    v366 = *(v362 + 16);
    if ((v363 & 2) == 0)
    {
      v366 = 0;
    }

    v1074 = v366 ^ v365;
  }

  else
  {
    v1074 = 0;
  }

  v367 = *(this + 336);
  if (v367)
  {
    v1073 = CMMsl::PostureJoint::hash_value(v367);
  }

  else
  {
    v1073 = 0;
  }

  v368 = *(this + 337);
  if (!v368 || (v370 = *(v368 + 8), v369 = *(v368 + 16), v370 == v369))
  {
    v371 = 0;
  }

  else
  {
    v371 = 0;
    do
    {
      v372 = *v370++;
      v371 ^= CMMsl::PostureJoint::hash_value(v372);
    }

    while (v370 != v369);
  }

  v373 = *(this + 195);
  if (v373)
  {
    v374 = *(v373 + 20);
    v375 = *(v373 + 8) == 0.0 || (v374 & 1) == 0;
    v376 = *(v373 + 8);
    if (v375)
    {
      v376 = 0;
    }

    v1072 = v376 ^ (*(v373 + 16) & (v374 << 30 >> 31));
  }

  else
  {
    v1072 = 0;
  }

  v377 = *(this + 473);
  if (v377 && (v378 = *(v377 + 8)) != 0)
  {
    v379 = *(v378 + 20);
    v380 = *(v378 + 8) == 0.0 || (v379 & 1) == 0;
    v381 = *(v378 + 8);
    if (v380)
    {
      v381 = 0;
    }

    v1071 = v381 ^ (*(v378 + 16) & (v379 << 30 >> 31));
  }

  else
  {
    v1071 = 0;
  }

  v382 = *(this + 416);
  if (v382 && (v383 = *(v382 + 8)) != 0)
  {
    v1070 = CMMsl::OnsetHeartRateData::hash_value(v383);
  }

  else
  {
    v1070 = 0;
  }

  v384 = *(this + 291);
  if (v384)
  {
    v1069 = CMMsl::NormalGammaCalibrationBin::hash_value(v384);
  }

  else
  {
    v1069 = 0;
  }

  v385 = *(this + 272);
  if (v385)
  {
    v386 = *(v385 + 24);
    v387 = *(v385 + 8);
    v388 = *(v385 + 16) == 0.0 || (v386 & 2) == 0;
    v389 = *(v385 + 16);
    if (v388)
    {
      v389 = 0;
    }

    v390 = v386 & 1;
    v391 = v387 == 0.0 || v390 == 0;
    v392 = v387;
    if (v391)
    {
      v392 = 0.0;
    }

    v1068 = *&v392 ^ v389;
  }

  else
  {
    v1068 = 0;
  }

  v393 = *(this + 119);
  if (v393)
  {
    v1067 = CMMsl::ElevationBatchProcessingTimestamps::hash_value(v393);
  }

  else
  {
    v1067 = 0;
  }

  v394 = *(this + 90);
  if (v394)
  {
    v1066 = CMMsl::CompanionStepCountElevation::hash_value(v394);
  }

  else
  {
    v1066 = 0;
  }

  v395 = *(this + 154);
  if (v395)
  {
    v1065 = CMMsl::GPSCalibrationBin::hash_value(v395);
  }

  else
  {
    v1065 = 0;
  }

  v396 = *(this + 27);
  if (v396)
  {
    v1064 = CMMsl::AccessoryInEarDetection::hash_value(v396);
  }

  else
  {
    v1064 = 0;
  }

  v397 = *(this + 18);
  if (v397)
  {
    v1063 = CMMsl::AccessoryBatchedPPG::hash_value(v397);
  }

  else
  {
    v1063 = 0;
  }

  v398 = *(this + 62);
  if (v398)
  {
    v1062 = CMMsl::BatchedPPGData::hash_value(v398);
  }

  else
  {
    v1062 = 0;
  }

  v399 = *(this + 468);
  if (v399 && (v400 = *(v399 + 8)) != 0)
  {
    v1061 = CMMsl::AudioAccessoryDeviceMotion::hash_value(v400);
  }

  else
  {
    v1061 = 0;
  }

  v401 = *(this + 467);
  if (v401 && (v402 = *(v401 + 8)) != 0)
  {
    v1060 = CMMsl::AccessoryDeviceMotionConfig::hash_value(v402);
  }

  else
  {
    v1060 = 0;
  }

  v403 = *(this + 193);
  if (v403)
  {
    v1059 = CMMsl::HeartRateSourceDevice::hash_value(v403);
  }

  else
  {
    v1059 = 0;
  }

  v404 = *(this + 2);
  if (v404 && (v405 = *(v404 + 8)) != 0)
  {
    v1058 = CMMsl::AccessoryHeartRate::hash_value(v405);
  }

  else
  {
    v1058 = 0;
  }

  v406 = *(this + 415);
  if (v406 && (v407 = *(v406 + 8)) != 0)
  {
    v1057 = CMMsl::OnsetHeartRateData::hash_value(v407);
  }

  else
  {
    v1057 = 0;
  }

  v408 = *(this + 417);
  if (v408 && (v409 = *(v408 + 8)) != 0)
  {
    v1056 = CMMsl::OnsetHeartRateData::hash_value(v409);
  }

  else
  {
    v1056 = 0;
  }

  v410 = *(this + 51);
  if (v410 && (v411 = *(v410 + 8)) != 0)
  {
    v1055 = CMMsl::AudioAccessoryDeviceMotion::hash_value(v411);
  }

  else
  {
    v1055 = 0;
  }

  v412 = *(this + 1);
  if (v412 && (v413 = *(v412 + 8)) != 0)
  {
    v1054 = CMMsl::AccessoryDeviceMotionConfig::hash_value(v413);
  }

  else
  {
    v1054 = 0;
  }

  v414 = *(this + 478);
  if (v414 && (v415 = *(v414 + 8)) != 0)
  {
    v1053 = CMMsl::HeartRateSourceDevice::hash_value(v415);
  }

  else
  {
    v1053 = 0;
  }

  v416 = *(this + 479);
  if (v416 && (v417 = *(v416 + 8)) != 0)
  {
    v1052 = CMMsl::OnsetHeartRateData::hash_value(v417);
  }

  else
  {
    v1052 = 0;
  }

  v418 = *(this + 477);
  if (v418 && (v419 = *(v418 + 8)) != 0)
  {
    v1051 = CMMsl::AccessoryHeartRate::hash_value(v419);
  }

  else
  {
    v1051 = 0;
  }

  v420 = *(this + 430);
  if (v420)
  {
    v421 = *(v420 + 16);
    if (v421)
    {
      v421 = CMMsl::Accel::hash_value(v421);
    }

    if (*(v420 + 24))
    {
      v422 = *(v420 + 8);
    }

    else
    {
      v422 = 0;
    }

    v1050 = v422 ^ v421;
  }

  else
  {
    v1050 = 0;
  }

  v423 = *(this + 5);
  if (v423)
  {
    v1049 = CMMsl::Accel::hash_value(v423);
  }

  else
  {
    v1049 = 0;
  }

  v424 = *(this + 7);
  if (v424)
  {
    v1048 = CMMsl::AccelBatch::hash_value(v424);
  }

  else
  {
    v1048 = 0;
  }

  v425 = *(this + 11);
  if (v425 && (v426 = *(v425 + 8)) != 0)
  {
    v1047 = CMMsl::Accel::hash_value(v426);
  }

  else
  {
    v1047 = 0;
  }

  v427 = *(this + 9);
  if (v427 && (v428 = *(v427 + 8)) != 0)
  {
    v1046 = CMMsl::Accel::hash_value(v428);
  }

  else
  {
    v1046 = 0;
  }

  v429 = *(this + 167);
  if (v429)
  {
    v1045 = CMMsl::Gyro::hash_value(v429);
  }

  else
  {
    v1045 = 0;
  }

  v430 = *(this + 183);
  if (v430)
  {
    v1044 = CMMsl::GyroOscarEmu::hash_value(v430);
  }

  else
  {
    v1044 = 0;
  }

  v431 = *(this + 185);
  if (v431)
  {
    v432 = *(v431 + 16);
    v433 = *(v431 + 12);
    v434 = v433 == 0.0 || (v432 & 2) == 0;
    v435 = LODWORD(v433);
    if (v434)
    {
      v435 = 0;
    }

    v436 = *(v431 + 8);
    if ((v432 & 1) == 0)
    {
      v436 = 0;
    }

    v1043 = v436 ^ v435;
  }

  else
  {
    v1043 = 0;
  }

  v437 = *(this + 168);
  if (v437)
  {
    v1042 = CMMsl::GyroBiasAndVariance::hash_value(v437);
  }

  else
  {
    v1042 = 0;
  }

  v438 = *(this + 173);
  if (v438)
  {
    v1041 = CMMsl::GyroBiasFit::hash_value(v438);
  }

  else
  {
    v1041 = 0;
  }

  v439 = *(this + 180);
  if (v439)
  {
    v440 = *(v439 + 8);
    v441 = v440 == 0.0 || (*(v439 + 12) & 1) == 0;
    v442 = LODWORD(v440);
    if (v441)
    {
      v442 = 0;
    }

    v1040 = v442;
  }

  else
  {
    v1040 = 0;
  }

  v443 = *(this + 266);
  if (v443)
  {
    v1039 = CMMsl::Magnetometer::hash_value(v443);
  }

  else
  {
    v1039 = 0;
  }

  v444 = *(this + 91);
  if (v444)
  {
    v1038 = CMMsl::Compass::hash_value(v444);
  }

  else
  {
    v1038 = 0;
  }

  v445 = *(this + 92);
  if (v445)
  {
    v446 = *(v445 + 20);
    v447 = *(v445 + 8) == 0.0 || (v446 & 1) == 0;
    v448 = *(v445 + 8);
    if (v447)
    {
      v448 = 0;
    }

    v449 = *(v445 + 16);
    if ((v446 & 2) == 0)
    {
      v449 = 0;
    }

    v1037 = v449 ^ v448;
  }

  else
  {
    v1037 = 0;
  }

  v450 = *(this + 178);
  if (v450)
  {
    v1036 = CMMsl::GyroCompass::hash_value(v450);
  }

  else
  {
    v1036 = 0;
  }

  v451 = *(this + 93);
  if (v451)
  {
    v1035 = CMMsl::CompassCalibration::hash_value(v451);
  }

  else
  {
    v1035 = 0;
  }

  v452 = *(this + 346);
  if (v452)
  {
    v1034 = CMMsl::Pressure::hash_value(v452);
  }

  else
  {
    v1034 = 0;
  }

  v453 = *(this + 353);
  if (v453 && (v454 = *(v453 + 8)) != 0)
  {
    v1033 = CMMsl::Pressure::hash_value(v454);
  }

  else
  {
    v1033 = 0;
  }

  v455 = *(this + 349);
  if (v455 && (v456 = *(v455 + 8)) != 0)
  {
    v1032 = CMMsl::Pressure::hash_value(v456);
  }

  else
  {
    v1032 = 0;
  }

  v457 = *(this + 354);
  if (v457)
  {
    v458 = *(v457 + 20);
    v459 = *(v457 + 8) == 0.0 || (v458 & 1) == 0;
    v460 = *(v457 + 8);
    if (v459)
    {
      v460 = 0;
    }

    v461 = *(v457 + 16);
    if ((v458 & 2) == 0)
    {
      v461 = 0;
    }

    v1031 = v461 ^ v460;
  }

  else
  {
    v1031 = 0;
  }

  v462 = *(this + 428);
  if (v462)
  {
    v463 = *(v462 + 20);
    v464 = *(v462 + 8) == 0.0 || (v463 & 1) == 0;
    v465 = *(v462 + 8);
    if (v464)
    {
      v465 = 0;
    }

    v1030 = v465 ^ (*(v462 + 16) & (v463 << 30 >> 31));
  }

  else
  {
    v1030 = 0;
  }

  v466 = *(this + 105);
  if (v466)
  {
    v1029 = CMMsl::DeviceMotion::hash_value(v466);
  }

  else
  {
    v1029 = 0;
  }

  v467 = *(this + 283);
  if (v467)
  {
    v1028 = CMMsl::MotionStateUpdate::hash_value(v467);
  }

  else
  {
    v1028 = 0;
  }

  v468 = *(this + 10);
  if (v468)
  {
    v1027 = CMMsl::AccelGps::hash_value(v468);
  }

  else
  {
    v1027 = 0;
  }

  v469 = *(this + 182);
  if (v469)
  {
    v1026 = CMMsl::GyroGps::hash_value(v469);
  }

  else
  {
    v1026 = 0;
  }

  v470 = *(this + 352);
  if (v470 && (v471 = *(v470 + 8)) != 0)
  {
    v1025 = CMMsl::Pressure::hash_value(v471);
  }

  else
  {
    v1025 = 0;
  }

  v472 = *(this + 55);
  if (v472)
  {
    v1024 = CMMsl::BTConnection::hash_value(v472);
  }

  else
  {
    v1024 = 0;
  }

  v473 = *(this + 386);
  if (v473)
  {
    v474 = *(v473 + 20);
    v475 = *(v473 + 8) == 0.0 || (v474 & 1) == 0;
    v476 = *(v473 + 8);
    if (v475)
    {
      v476 = 0;
    }

    v477 = *(v473 + 16);
    if ((v474 & 2) == 0)
    {
      v477 = 0;
    }

    v1023 = v477 ^ v476;
  }

  else
  {
    v1023 = 0;
  }

  v478 = *(this + 259);
  if (v478)
  {
    v1022 = CMMsl::LocationOscarEmu::hash_value(v478);
  }

  else
  {
    v1022 = 0;
  }

  v479 = *(this + 279);
  if (v479)
  {
    v1021 = CMMsl::MotionHint::hash_value(v479);
  }

  else
  {
    v1021 = 0;
  }

  v480 = *(this + 124);
  if (v480)
  {
    v1020 = CMMsl::EnhancedDeviceMotion::hash_value(v480);
  }

  else
  {
    v1020 = 0;
  }

  v481 = *(this + 290);
  if (v481)
  {
    v1019 = CMMsl::NonlinearBiasFit::hash_value(v481);
  }

  else
  {
    v1019 = 0;
  }

  v482 = *(this + 289);
  if (v482)
  {
    v1018 = CMMsl::NatalieData::hash_value(v482);
  }

  else
  {
    v1018 = 0;
  }

  v483 = *(this + 73);
  if (v483)
  {
    v1017 = CMMsl::BodyMetrics::hash_value(v483);
  }

  else
  {
    v1017 = 0;
  }

  v484 = *(this + 463);
  if (v484)
  {
    v1016 = CMMsl::WorkoutEvent::hash_value(v484);
  }

  else
  {
    v1016 = 0;
  }

  v485 = *(this + 295);
  if (v485)
  {
    v1015 = CMMsl::OnsetHeartRateData::hash_value(v485);
  }

  else
  {
    v1015 = 0;
  }

  v486 = *(this + 414);
  if (v486 && (v487 = *(v486 + 8)) != 0)
  {
    v1014 = CMMsl::OnsetHeartRateData::hash_value(v487);
  }

  else
  {
    v1014 = 0;
  }

  v488 = *(this + 120);
  if (v488)
  {
    v1013 = CMMsl::ElevationChange::hash_value(v488);
  }

  else
  {
    v1013 = 0;
  }

  v489 = *(this + 89);
  if (v489)
  {
    v490 = *(v489 + 20);
    v491 = *(v489 + 8) == 0.0 || (v490 & 1) == 0;
    v492 = *(v489 + 8);
    if (v491)
    {
      v492 = 0;
    }

    v493 = *(v489 + 16);
    if ((v490 & 2) == 0)
    {
      v493 = 0;
    }

    v1012 = v493 ^ v492;
  }

  else
  {
    v1012 = 0;
  }

  v494 = *(this + 278);
  if (v494)
  {
    v1011 = CMMsl::MotionGPSLocation::hash_value(v494);
  }

  else
  {
    v1011 = 0;
  }

  v495 = *(this + 285);
  if (v495 && (v496 = *(v495 + 8)) != 0)
  {
    v1010 = CMMsl::MotionGPSLocation::hash_value(v496);
  }

  else
  {
    v1010 = 0;
  }

  v497 = *(this + 418);
  if (v497)
  {
    v1009 = CMMsl::StrideCalBin::hash_value(v497);
  }

  else
  {
    v1009 = 0;
  }

  v498 = *(this + 85);
  if (v498)
  {
    v1008 = ((*(v498 + 12) << 31 >> 31) & *(v498 + 8));
  }

  else
  {
    v1008 = 0;
  }

  v499 = *(this + 292);
  if (v499)
  {
    v1007 = CMMsl::Odometer::hash_value(v499);
  }

  else
  {
    v1007 = 0;
  }

  v500 = *(this + 270);
  if (v500)
  {
    v1006 = CMMsl::MetsInfo::hash_value(v500);
  }

  else
  {
    v1006 = 0;
  }

  v501 = *(this + 140);
  if (v501)
  {
    v1005 = CMMsl::FallStats::hash_value(v501);
  }

  else
  {
    v1005 = 0;
  }

  v502 = *(this + 59);
  if (v502)
  {
    v1004 = CMMsl::BasebandSpeed::hash_value(v502);
  }

  else
  {
    v1004 = 0;
  }

  v503 = *(this + 436);
  if (v503)
  {
    v1003 = ((*(v503 + 12) << 31 >> 31) & *(v503 + 8));
  }

  else
  {
    v1003 = 0;
  }

  v504 = *(this + 409);
  if (v504)
  {
    v1002 = CMMsl::StepCadenceToStrideLengthBin::hash_value(v504);
  }

  else
  {
    v1002 = 0;
  }

  v505 = *(this + 460);
  if (v505)
  {
    v506 = vbic_s8(v505[1], vceqz_s32(vand_s8(vdup_n_s32(v505[2].u8[0]), 0x200000001)));
    v1001 = (v506.i32[0] ^ v506.i32[1]);
  }

  else
  {
    v1001 = 0;
  }

  v507 = *(this + 284);
  if (v507)
  {
    v1000 = ((*(v507 + 12) << 31 >> 31) & *(v507 + 8));
  }

  else
  {
    v1000 = 0;
  }

  v508 = *(this + 282);
  if (v508)
  {
    v999 = CMMsl::MotionLoiData::hash_value(v508);
  }

  else
  {
    v999 = 0;
  }

  v509 = *(this + 293);
  if (v509)
  {
    v998 = CMMsl::OdometerWithAltitude::hash_value(v509);
  }

  else
  {
    v998 = 0;
  }

  v510 = *(this + 351);
  if (v510)
  {
    v511 = *(v510 + 8);
    if ((*(v510 + 20) & 1) == 0)
    {
      v511 = 0;
    }

    v512 = *(v510 + 16);
    v513 = v512 == 0.0 || (*(v510 + 20) & 2) == 0;
    v514 = LODWORD(v512);
    if (v513)
    {
      v514 = 0;
    }

    v997 = v514 ^ v511;
  }

  else
  {
    v997 = 0;
  }

  v515 = *(this + 204);
  if (v515)
  {
    v996 = CMMsl::InEarTransition::hash_value(v515);
  }

  else
  {
    v996 = 0;
  }

  v516 = *(this + 88);
  if (v516)
  {
    v995 = CMMsl::ClefCalibration::hash_value(v516);
  }

  else
  {
    v995 = 0;
  }

  v517 = *(this + 41);
  if (v517)
  {
    v994 = CMMsl::AirpodEvent::hash_value(v517);
  }

  else
  {
    v994 = 0;
  }

  v518 = *(this + 202);
  if (v518)
  {
    v993 = CMMsl::InEarOptical::hash_value(v518);
  }

  else
  {
    v993 = 0;
  }

  v519 = *(this + 200);
  if (v519)
  {
    v992 = CMMsl::InEarConstraints::hash_value(v519);
  }

  else
  {
    v992 = 0;
  }

  v520 = *(this + 201);
  if (v520)
  {
    v991 = CMMsl::InEarOpenLid::hash_value(v520);
  }

  else
  {
    v991 = 0;
  }

  v521 = *(this + 199);
  if (v521)
  {
    v990 = CMMsl::InEarBaselining::hash_value(v521);
  }

  else
  {
    v990 = 0;
  }

  v522 = *(this + 19);
  if (v522)
  {
    v989 = CMMsl::AccessoryConfig::hash_value(v522);
  }

  else
  {
    v989 = 0;
  }

  v523 = *(this + 15);
  if (v523)
  {
    v988 = CMMsl::AccessoryAccelConfig::hash_value(v523);
  }

  else
  {
    v988 = 0;
  }

  v524 = *(this + 35);
  if (v524)
  {
    v987 = CMMsl::AccessoryProximityConfig::hash_value(v524);
  }

  else
  {
    v987 = 0;
  }

  v525 = *(this + 423);
  if (v525)
  {
    v986 = CMMsl::TapDetect::hash_value(v525);
  }

  else
  {
    v986 = 0;
  }

  v526 = *(this + 422);
  if (v526)
  {
    v985 = CMMsl::TapAccept::hash_value(v526);
  }

  else
  {
    v985 = 0;
  }

  v527 = *(this + 118);
  if (v527)
  {
    v984 = CMMsl::DoubleTap::hash_value(v527);
  }

  else
  {
    v984 = 0;
  }

  v528 = *(this + 40);
  if (v528)
  {
    v983 = CMMsl::AccessoryWakeDebug::hash_value(v528);
  }

  else
  {
    v983 = 0;
  }

  v529 = *(this + 160);
  if (v529)
  {
    v982 = CMMsl::GeomagneticData::hash_value(v529);
  }

  else
  {
    v982 = 0;
  }

  v530 = *(this + 367);
  if (v530)
  {
    v981 = CMMsl::RelativeDeviceMotionInternal::hash_value(v530);
  }

  else
  {
    v981 = 0;
  }

  v531 = *(this + 369);
  if (v531)
  {
    v532 = *(v531 + 8);
    if (v532)
    {
      v532 = CMMsl::DeviceMotionCorrection::hash_value(v532);
    }

    v980 = v532 ^ ((*(v531 + 20) << 31 >> 31) & *(v531 + 16));
  }

  else
  {
    v980 = 0;
  }

  v533 = *(this + 368);
  if (v533)
  {
    v979 = CMMsl::RelativeGravityConstraints::hash_value(v533);
  }

  else
  {
    v979 = 0;
  }

  v534 = *(this + 490);
  if (v534 && (v535 = *(v534 + 8)) != 0)
  {
    v978 = CMMsl::DeviceMotionCorrection::hash_value(v535);
  }

  else
  {
    v978 = 0;
  }

  v536 = *(this + 46);
  if (v536)
  {
    v977 = CMMsl::AnchorCorrection::hash_value(v536);
  }

  else
  {
    v977 = 0;
  }

  v537 = *(this + 345);
  if (v537)
  {
    v976 = CMMsl::PredictedRelativeDeviceMotion::hash_value(v537);
  }

  else
  {
    v976 = 0;
  }

  v538 = *(this + 288);
  if (v538)
  {
    v975 = CMMsl::MovementStatsSignal::hash_value(v538);
  }

  else
  {
    v975 = 0;
  }

  v539 = *(this + 287);
  if (v539)
  {
    v974 = CMMsl::MovementStatsGravityProjection::hash_value(v539);
  }

  else
  {
    v974 = 0;
  }

  v540 = *(this + 72);
  if (v540)
  {
    v541 = *(v540 + 8);
    if (v541)
    {
      v541 = CMMsl::DeviceMotionCorrection::hash_value(v541);
    }

    v973 = v541 ^ ((*(v540 + 20) << 31 >> 31) & *(v540 + 16));
  }

  else
  {
    v973 = 0;
  }

  v542 = *(this + 24);
  if (v542 && (v543 = *(v542 + 8)) != 0)
  {
    v972 = CMMsl::AccessoryConfig::hash_value(v543);
  }

  else
  {
    v972 = 0;
  }

  v544 = *(this + 25);
  if (v544 && (v545 = *(v544 + 8)) != 0)
  {
    v971 = sub_100011074(&v1289, v545);
  }

  else
  {
    v971 = 0;
  }

  v546 = *(this + 23);
  if (v546 && (v547 = *(v546 + 8)) != 0)
  {
    v970 = sub_100011074(&v1290, v547);
  }

  else
  {
    v970 = 0;
  }

  v548 = *(this + 155);
  if (v548)
  {
    v969 = CMMsl::GaitCycleSegment::hash_value(v548);
  }

  else
  {
    v969 = 0;
  }

  v549 = *(this + 156);
  if (v549)
  {
    v968 = CMMsl::GaitCycleSegmentationState::hash_value(v549);
  }

  else
  {
    v968 = 0;
  }

  v550 = *(this + 94);
  if (v550)
  {
    v967 = CMMsl::CompassCalibrationAttempt::hash_value(v550);
  }

  else
  {
    v967 = 0;
  }

  v551 = *(this + 447);
  if (v551 && (v552 = *(v551 + 8)) != 0)
  {
    v966 = CMMsl::DeviceMotionCorrection::hash_value(v552);
  }

  else
  {
    v966 = 0;
  }

  v553 = *(this + 446);
  if (v553)
  {
    v965 = CMMsl::VisualLocalizationAttitudeConstraints::hash_value(v553);
  }

  else
  {
    v965 = 0;
  }

  v554 = *(this + 30);
  if (v554 && (v555 = *(v554 + 8)) != 0)
  {
    v964 = CMMsl::AccessoryConfig::hash_value(v555);
  }

  else
  {
    v964 = 0;
  }

  v556 = *(this + 133);
  if (v556)
  {
    v963 = CMMsl::FallDetectionReferee::hash_value(v556);
  }

  else
  {
    v963 = 0;
  }

  v557 = *(this + 134);
  if (v557)
  {
    v962 = CMMsl::FallDetectionReplay::hash_value(v557);
  }

  else
  {
    v962 = 0;
  }

  v558 = *(this + 135);
  if (v558)
  {
    v961 = CMMsl::FallDetectionStateMachine::hash_value(v558);
  }

  else
  {
    v961 = 0;
  }

  v559 = *(this + 131);
  if (v559)
  {
    v960 = CMMsl::FallDetectionDetector::hash_value(v559);
  }

  else
  {
    v960 = 0;
  }

  v560 = *(this + 138);
  if (v560)
  {
    v959 = CMMsl::FallFalsePositiveSuppressionFeatures::hash_value(v560);
  }

  else
  {
    v959 = 0;
  }

  v561 = *(this + 21);
  if (v561)
  {
    v958 = CMMsl::AccessoryDeviceMotionConfig::hash_value(v561);
  }

  else
  {
    v958 = 0;
  }

  v562 = *(this + 366);
  if (v562)
  {
    v957 = CMMsl::RelativeDeviceMotionCorrelatedMotion::hash_value(v562);
  }

  else
  {
    v957 = 0;
  }

  v563 = *(this + 365);
  if (v563)
  {
    v956 = CMMsl::RelativeDeviceMotionComplexTransition::hash_value(v563);
  }

  else
  {
    v956 = 0;
  }

  v564 = *(this + 106);
  if (v564)
  {
    v955 = CMMsl::DeviceMotionAlwaysOn::hash_value(v564);
  }

  else
  {
    v955 = 0;
  }

  v565 = *(this + 132);
  if (v565)
  {
    v566 = *(v565 + 20);
    v567 = *(v565 + 8);
    if ((v566 & 1) == 0)
    {
      v567 = 0;
    }

    v954 = v567 ^ (*(v565 + 16) & (v566 << 30 >> 31));
  }

  else
  {
    v954 = 0;
  }

  v568 = *(this + 453);
  if (v568)
  {
    v953 = CMMsl::WalkingDetectionResult::hash_value(v568);
  }

  else
  {
    v953 = 0;
  }

  v569 = *(this + 28);
  if (v569)
  {
    v570 = *(v569 + 8);
    if ((*(v569 + 16) & 1) == 0)
    {
      v570 = 0;
    }

    v571 = *(v569 + 12);
    v572 = v571 == 0.0 || (*(v569 + 16) & 2) == 0;
    v573 = LODWORD(v571);
    if (v572)
    {
      v573 = 0;
    }

    v952 = v573 ^ v570;
  }

  else
  {
    v952 = 0;
  }

  v574 = *(this + 136);
  if (v574)
  {
    v951 = CMMsl::FallDetectionWristStateReplay::hash_value(v574);
  }

  else
  {
    v951 = 0;
  }

  v575 = *(this + 172);
  if (v575)
  {
    v950 = CMMsl::GyroBiasEstimateError::hash_value(v575);
  }

  else
  {
    v950 = 0;
  }

  v576 = *(this + 413);
  if (v576)
  {
    v949 = CMMsl::StepLikelihoodFeatures::hash_value(v576);
  }

  else
  {
    v949 = 0;
  }

  v577 = *(this + 141);
  if (v577)
  {
    v948 = CMMsl::FirstStepFeatures::hash_value(v577);
  }

  else
  {
    v948 = 0;
  }

  v578 = *(this + 38);
  if (v578)
  {
    v947 = CMMsl::AccessoryStepDetectorDebug::hash_value(v578);
  }

  else
  {
    v947 = 0;
  }

  v579 = *(this + 389);
  if (v579)
  {
    v946 = CMMsl::SitStandDetectorFeatures::hash_value(v579);
  }

  else
  {
    v946 = 0;
  }

  v580 = *(this + 392);
  if (v580)
  {
    v581 = *(v580 + 20);
    v582 = *(v580 + 8) == 0.0 || (v581 & 1) == 0;
    v583 = *(v580 + 8);
    if (v582)
    {
      v583 = 0;
    }

    v584 = *(v580 + 16);
    if ((v581 & 2) == 0)
    {
      v584 = 0;
    }

    v945 = v584 ^ v583;
  }

  else
  {
    v945 = 0;
  }

  v585 = *(this + 390);
  if (v585)
  {
    v944 = CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::hash_value(v585);
  }

  else
  {
    v944 = 0;
  }

  v586 = *(this + 391);
  if (v586)
  {
    v943 = CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::hash_value(v586);
  }

  else
  {
    v943 = 0;
  }

  v587 = *(this + 397);
  if (v587)
  {
    v588 = *(v587 + 16);
    if ((*(v587 + 20) & 2) == 0)
    {
      v588 = 0;
    }

    v589 = *(v587 + 8) == 0.0 || (*(v587 + 20) & 1) == 0;
    v590 = *(v587 + 8);
    if (v589)
    {
      v590 = 0;
    }

    v942 = v590 ^ v588;
  }

  else
  {
    v942 = 0;
  }

  v591 = *(this + 137);
  if (v591)
  {
    v941 = CMMsl::FallDistanceReplay::hash_value(v591);
  }

  else
  {
    v941 = 0;
  }

  v592 = *(this + 211);
  if (v592)
  {
    v940 = CMMsl::JitterBufferLevel::hash_value(v592);
  }

  else
  {
    v940 = 0;
  }

  v593 = *(this + 350);
  if (v593)
  {
    v939 = CMMsl::PressureFiltered1HzLowPass::hash_value(v593);
  }

  else
  {
    v939 = 0;
  }

  v594 = *(this + 276);
  if (v594)
  {
    v938 = CMMsl::MotionActivityReplay::hash_value(v594);
  }

  else
  {
    v938 = 0;
  }

  v595 = *(this + 130);
  if (v595)
  {
    v937 = CMMsl::FallDetectionActivityClassifierReplay::hash_value(v595);
  }

  else
  {
    v937 = 0;
  }

  v596 = *(this + 254);
  if (v596)
  {
    v936 = CMMsl::LegacyALS5CHInput::hash_value(v596);
  }

  else
  {
    v936 = 0;
  }

  v597 = *(this + 115);
  if (v597)
  {
    v598 = *(v597 + 20);
    v599 = *(v597 + 8) == 0.0 || (v598 & 1) == 0;
    v600 = *(v597 + 8);
    if (v599)
    {
      v600 = 0;
    }

    v601 = *(v597 + 16);
    if ((v598 & 2) == 0)
    {
      v601 = 0;
    }

    v935 = v601 ^ v600;
  }

  else
  {
    v935 = 0;
  }

  v602 = *(this + 113);
  if (v602)
  {
    v934 = CMMsl::DopplerProximityEvent::hash_value(v602);
  }

  else
  {
    v934 = 0;
  }

  v603 = *(this + 114);
  if (v603)
  {
    v933 = CMMsl::DopplerRawDataInput::hash_value(v603);
  }

  else
  {
    v933 = 0;
  }

  v604 = *(this + 112);
  if (v604)
  {
    v932 = CMMsl::DopplerDebugRecord::hash_value(v604);
  }

  else
  {
    v932 = 0;
  }

  v605 = *(this + 296);
  if (v605)
  {
    v606 = *(v605 + 20);
    v607 = *(v605 + 8) == 0.0 || (v606 & 1) == 0;
    v608 = *(v605 + 8);
    if (v607)
    {
      v608 = 0;
    }

    v609 = *(v605 + 16);
    if ((v606 & 2) == 0)
    {
      v609 = 0;
    }

    v931 = v609 ^ v608;
  }

  else
  {
    v931 = 0;
  }

  v610 = *(this + 217);
  if (v610)
  {
    v930 = CMMsl::KappaAudioResult::hash_value(v610);
  }

  else
  {
    v930 = 0;
  }

  v611 = *(this + 218);
  if (v611)
  {
    v929 = CMMsl::KappaBaroResult::hash_value(v611);
  }

  else
  {
    v929 = 0;
  }

  v612 = *(this + 221);
  if (v612)
  {
    v928 = CMMsl::KappaGpsResult::hash_value(v612);
  }

  else
  {
    v928 = 0;
  }

  v613 = *(this + 232);
  if (v613)
  {
    v927 = CMMsl::KappaPulseResult::hash_value(v613);
  }

  else
  {
    v927 = 0;
  }

  v614 = *(this + 247);
  if (v614)
  {
    v926 = CMMsl::KappaZgResult::hash_value(v614);
  }

  else
  {
    v926 = 0;
  }

  v615 = *(this + 246);
  if (v615)
  {
    v616 = *(v615 + 16);
    v617 = *(v615 + 8);
    if ((v616 & 1) == 0)
    {
      v617 = 0;
    }

    v925 = v617;
  }

  else
  {
    v925 = 0;
  }

  v618 = *(this + 230);
  if (v618)
  {
    v924 = CMMsl::KappaPulseInertialAccel::hash_value(v618);
  }

  else
  {
    v924 = 0;
  }

  v619 = *(this + 191);
  if (v619)
  {
    v620 = *(v619 + 12);
    v621 = *(v619 + 8);
    if ((v620 & 1) == 0)
    {
      v621 = 0;
    }

    v923 = v621;
  }

  else
  {
    v923 = 0;
  }

  v622 = *(this + 190);
  if (v622)
  {
    v623 = *(v622 + 12);
    v624 = *(v622 + 8);
    if ((v623 & 1) == 0)
    {
      v624 = 0;
    }

    v922 = v624;
  }

  else
  {
    v922 = 0;
  }

  v625 = *(this + 216);
  if (v625)
  {
    v921 = CMMsl::KappaAirbagResult::hash_value(v625);
  }

  else
  {
    v921 = 0;
  }

  v626 = *(this + 219);
  if (v626)
  {
    v920 = CMMsl::KappaCrashResult::hash_value(v626);
  }

  else
  {
    v920 = 0;
  }

  v627 = *(this + 233);
  if (v627)
  {
    v919 = CMMsl::KappaQuiescenceResult::hash_value(v627);
  }

  else
  {
    v919 = 0;
  }

  v628 = *(this + 234);
  if (v628)
  {
    v918 = CMMsl::KappaRecoveryResult::hash_value(v628);
  }

  else
  {
    v918 = 0;
  }

  v629 = *(this + 238);
  if (v629)
  {
    v917 = CMMsl::KappaRolloverCrashResult::hash_value(v629);
  }

  else
  {
    v917 = 0;
  }

  v630 = *(this + 226);
  if (v630)
  {
    v916 = CMMsl::KappaMildImpactResult::hash_value(v630);
  }

  else
  {
    v916 = 0;
  }

  v631 = *(this + 224);
  if (v631)
  {
    v915 = CMMsl::KappaLackOfMotionResult::hash_value(v631);
  }

  else
  {
    v915 = 0;
  }

  v632 = *(this + 239);
  if (v632)
  {
    v914 = CMMsl::KappaSevereCrashResult::hash_value(v632);
  }

  else
  {
    v914 = 0;
  }

  v633 = *(this + 225);
  if (v633)
  {
    v913 = CMMsl::KappaLocalAudioResult::hash_value(v633);
  }

  else
  {
    v913 = 0;
  }

  v634 = *(this + 235);
  if (v634)
  {
    v912 = CMMsl::KappaRemoteAudioResult::hash_value(v634);
  }

  else
  {
    v912 = 0;
  }

  v635 = *(this + 108);
  if (v635)
  {
    v911 = CMMsl::DirectionOfTravelMetrics::hash_value(v635);
  }

  else
  {
    v911 = 0;
  }

  v636 = *(this + 437);
  if (v636)
  {
    v637 = *(v636 + 20);
    v638 = *(v636 + 8);
    if ((v637 & 1) == 0)
    {
      v638 = 0;
    }

    v910 = v638 ^ (*(v636 + 16) & (v637 << 30 >> 31));
  }

  else
  {
    v910 = 0;
  }

  v639 = *(this + 189);
  if (v639)
  {
    v909 = CMMsl::HeadToHeadsetTransformationEstimate::hash_value(v639);
  }

  else
  {
    v909 = 0;
  }

  v640 = *(this + 438);
  if (v640)
  {
    v908 = CMMsl::ViewObstructedMachineLearningFeatures::hash_value(v640);
  }

  else
  {
    v908 = 0;
  }

  v641 = *(this + 439);
  if (v641)
  {
    v907 = CMMsl::ViewObstructedMachineLearningProbabilities::hash_value(v641);
  }

  else
  {
    v907 = 0;
  }

  v642 = *(this + 372);
  if (v642)
  {
    v906 = CMMsl::RunningArmSwingSignals::hash_value(v642);
  }

  else
  {
    v906 = 0;
  }

  v643 = *(this + 373);
  if (v643)
  {
    v905 = CMMsl::RunningCentripetalAccelSignals::hash_value(v643);
  }

  else
  {
    v905 = 0;
  }

  v644 = *(this + 376);
  if (v644)
  {
    v904 = CMMsl::RunningRotationAxis::hash_value(v644);
  }

  else
  {
    v904 = 0;
  }

  v645 = *(this + 381);
  if (v645)
  {
    v903 = CMMsl::RunningVerticalOscillationSignals::hash_value(v645);
  }

  else
  {
    v903 = 0;
  }

  v646 = *(this + 379);
  if (v646)
  {
    v902 = CMMsl::RunningVerticalOscillation::hash_value(v646);
  }

  else
  {
    v902 = 0;
  }

  v647 = *(this + 240);
  if (v647)
  {
    v901 = CMMsl::KappaSpinResult::hash_value(v647);
  }

  else
  {
    v901 = 0;
  }

  v648 = *(this + 229);
  if (v648)
  {
    v900 = CMMsl::KappaPulseDeltaV::hash_value(v648);
  }

  else
  {
    v900 = 0;
  }

  v649 = *(this + 378);
  if (v649)
  {
    v899 = CMMsl::RunningStrideLength::hash_value(v649);
  }

  else
  {
    v899 = 0;
  }

  v650 = *(this + 210);
  if (v650)
  {
    v898 = CMMsl::ISPPacket::hash_value(v650);
  }

  else
  {
    v898 = 0;
  }

  v651 = *(this + 223);
  if (v651)
  {
    v897 = CMMsl::KappaHighSpeedCrashResult::hash_value(v651);
  }

  else
  {
    v897 = 0;
  }

  v652 = *(this + 231);
  if (v652)
  {
    v896 = CMMsl::KappaPulseInertialHgAccel::hash_value(v652);
  }

  else
  {
    v896 = 0;
  }

  v653 = *(this + 187);
  if (v653)
  {
    v895 = CMMsl::HarmonicMetrics::hash_value(v653);
  }

  else
  {
    v895 = 0;
  }

  v654 = *(this + 84);
  if (v654)
  {
    v894 = CMMsl::CalorieControllerMETsConsumed::hash_value(v654);
  }

  else
  {
    v894 = 0;
  }

  v655 = *(this + 322);
  if (v655)
  {
    v893 = CMMsl::PedometerPathStraightness::hash_value(v655);
  }

  else
  {
    v893 = 0;
  }

  v656 = *(this + 97);
  if (v656)
  {
    v892 = CMMsl::ComplexHandMotion::hash_value(v656);
  }

  else
  {
    v892 = 0;
  }

  v657 = *(this + 121);
  if (v657)
  {
    v891 = CMMsl::ElevationGradeEstimator::hash_value(v657);
  }

  else
  {
    v891 = 0;
  }

  v658 = *(this + 434);
  if (v658)
  {
    v890 = CMMsl::VO2MaxModelInput::hash_value(v658);
  }

  else
  {
    v890 = 0;
  }

  v659 = *(this + 356);
  if (v659)
  {
    v889 = CMMsl::ProxCalibration::hash_value(v659);
  }

  else
  {
    v889 = 0;
  }

  v660 = *(this + 242);
  if (v660)
  {
    v888 = CMMsl::KappaStepsResult::hash_value(v660);
  }

  else
  {
    v888 = 0;
  }

  v661 = *(this + 452);
  if (v661)
  {
    v887 = CMMsl::WakeGestureSample::hash_value(v661);
  }

  else
  {
    v887 = 0;
  }

  v662 = *(this + 222);
  if (v662)
  {
    v886 = CMMsl::KappaGravityAutocorrelationResult::hash_value(v662);
  }

  else
  {
    v886 = 0;
  }

  v663 = *(this + 380);
  if (v663)
  {
    v885 = CMMsl::RunningVerticalOscillationGradientBoostedSignals::hash_value(v663);
  }

  else
  {
    v885 = 0;
  }

  v664 = *(this + 420);
  if (v664)
  {
    v884 = CMMsl::SubStats::hash_value(v664);
  }

  else
  {
    v884 = 0;
  }

  v665 = *(this + 319);
  if (v665)
  {
    v883 = CMMsl::PedOdomFusionExtendedModeSegment::hash_value(v665);
  }

  else
  {
    v883 = 0;
  }

  v666 = *(this + 263);
  if (v666)
  {
    v667 = *(v666 + 20);
    v668 = *(v666 + 8);
    if ((v667 & 1) == 0)
    {
      v668 = 0;
    }

    v669 = *(v666 + 16);
    if ((v667 & 2) == 0)
    {
      v669 = 0;
    }

    v882 = v669 ^ v668;
  }

  else
  {
    v882 = 0;
  }

  v670 = *(this + 313);
  if (v670)
  {
    v881 = CMMsl::PDRPedestrianClassifierState::hash_value(v670);
  }

  else
  {
    v881 = 0;
  }

  v671 = *(this + 314);
  if (v671)
  {
    v880 = CMMsl::PDRPlacementClassifierState::hash_value(v671);
  }

  else
  {
    v880 = 0;
  }

  v672 = *(this + 315);
  if (v672)
  {
    v879 = CMMsl::PDRSpeedEstimatorState::hash_value(v672);
  }

  else
  {
    v879 = 0;
  }

  v673 = *(this + 298);
  if (v673)
  {
    v878 = CMMsl::PDRDOTEstimatorState::hash_value(v673);
  }

  else
  {
    v878 = 0;
  }

  v674 = *(this + 317);
  if (v674)
  {
    v877 = CMMsl::PDRVelocityEstimatorState::hash_value(v674);
  }

  else
  {
    v877 = 0;
  }

  v675 = *(this + 253);
  if (v675)
  {
    v876 = CMMsl::KMVelocityEstimatorState::hash_value(v675);
  }

  else
  {
    v876 = 0;
  }

  v676 = *(this + 435);
  if (v676)
  {
    v875 = CMMsl::VelocityEstimatorFusionState::hash_value(v676);
  }

  else
  {
    v875 = 0;
  }

  v677 = *(this + 309);
  if (v677)
  {
    v678 = *(v677 + 20);
    v679 = *(v677 + 8) == 0.0 || (v678 & 1) == 0;
    v680 = *(v677 + 8);
    if (v679)
    {
      v680 = 0;
    }

    v681 = v678 & 2;
    v682 = *(v677 + 16);
    v683 = v682 == 0.0 || v681 == 0;
    v684 = LODWORD(v682);
    if (v683)
    {
      v684 = 0;
    }

    v874 = v684 ^ v680;
  }

  else
  {
    v874 = 0;
  }

  v685 = *(this + 310);
  if (v685)
  {
    v873 = CMMsl::PDRFenceState::hash_value(v685);
  }

  else
  {
    v873 = 0;
  }

  v686 = *(this + 433);
  if (v686)
  {
    v872 = CMMsl::UWBRange::hash_value(v686);
  }

  else
  {
    v872 = 0;
  }

  v687 = *(this + 421);
  if (v687)
  {
    v871 = CMMsl::SwingDoTCandidate::hash_value(v687);
  }

  else
  {
    v871 = 0;
  }

  v688 = *(this + 116);
  if (v688)
  {
    v870 = CMMsl::DoTEstimatorHandSwing::hash_value(v688);
  }

  else
  {
    v870 = 0;
  }

  v689 = *(this + 244);
  if (v689)
  {
    v869 = CMMsl::KappaTriggerClustersResult::hash_value(v689);
  }

  else
  {
    v869 = 0;
  }

  v690 = *(this + 388);
  if (v690)
  {
    v691 = *(v690 + 24);
    v694 = v690 + 8;
    v693 = *(v690 + 8);
    v692 = *(v694 + 8);
    if (v693)
    {
      v695 = *(v693 + 12);
      v693 = *(v693 + 8);
      if ((v695 & 1) == 0)
      {
        v693 = 0;
      }
    }

    if ((v691 & 1) == 0)
    {
      v692 = 0;
    }

    v868 = v693 ^ v692;
  }

  else
  {
    v868 = 0;
  }

  v696 = *(this + 308);
  if (v696)
  {
    v867 = CMMsl::PDRFeatures::hash_value(v696);
  }

  else
  {
    v867 = 0;
  }

  v697 = *(this + 300);
  if (v697)
  {
    v866 = CMMsl::PDRDOTEstimatorStateBody::hash_value(v697);
  }

  else
  {
    v866 = 0;
  }

  v698 = *(this + 299);
  if (v698)
  {
    v865 = CMMsl::PDRDOTEstimatorStateArmSwing::hash_value(v698);
  }

  else
  {
    v865 = 0;
  }

  v699 = *(this + 303);
  if (v699)
  {
    v864 = CMMsl::PDRDOTEstimatorStateHeading::hash_value(v699);
  }

  else
  {
    v864 = 0;
  }

  v700 = *(this + 16);
  if (v700)
  {
    v863 = CMMsl::AccessoryActivityAlseepConfidenceEpoch::hash_value(v700);
  }

  else
  {
    v863 = 0;
  }

  v701 = *(this + 316);
  if (v701)
  {
    v862 = CMMsl::PDRSpeedEstimatorStateDebug::hash_value(v701);
  }

  else
  {
    v862 = 0;
  }

  v702 = *(this + 339);
  if (v702)
  {
    v703 = *(v702 + 24);
    v704 = *(v702 + 8);
    v705 = *(v702 + 16) == 0.0 || (v703 & 2) == 0;
    v706 = *(v702 + 16);
    if (v705)
    {
      v706 = 0;
    }

    v707 = v703 & 1;
    v708 = v704 == 0.0 || v707 == 0;
    v709 = v704;
    if (v708)
    {
      v709 = 0.0;
    }

    v861 = *&v709 ^ v706;
  }

  else
  {
    v861 = 0;
  }

  v710 = *(this + 342);
  if (v710)
  {
    v860 = CMMsl::PrecisionFindingState::hash_value(v710);
  }

  else
  {
    v860 = 0;
  }

  v711 = *(this + 237);
  if (v711)
  {
    v859 = CMMsl::KappaRoadsResult::hash_value(v711);
  }

  else
  {
    v859 = 0;
  }

  v712 = *(this + 343);
  if (v712)
  {
    v858 = CMMsl::PrecisionFindingVelocityEstimate::hash_value(v712);
  }

  else
  {
    v858 = 0;
  }

  v713 = *(this + 340);
  if (v713)
  {
    v857 = CMMsl::PrecisionFindingRangeFilter::hash_value(v713);
  }

  else
  {
    v857 = 0;
  }

  v714 = *(this + 307);
  if (v714)
  {
    v856 = CMMsl::PDRDOTMeasurementSelectorState::hash_value(v714);
  }

  else
  {
    v856 = 0;
  }

  v715 = *(this + 79);
  if (v715)
  {
    v716 = *(v715 + 20);
    v717 = *(v715 + 8);
    if ((v716 & 1) == 0)
    {
      v717 = 0;
    }

    v718 = *(v715 + 16);
    if ((v716 & 2) == 0)
    {
      v718 = 0;
    }

    v855 = v718 ^ v717;
  }

  else
  {
    v855 = 0;
  }

  v719 = *(this + 306);
  if (v719)
  {
    v854 = CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::hash_value(v719);
  }

  else
  {
    v854 = 0;
  }

  v720 = *(this + 323);
  if (v720)
  {
    v721 = *(v720 + 20);
    v722 = *(v720 + 8) == 0.0 || (v721 & 1) == 0;
    v723 = *(v720 + 8);
    if (v722)
    {
      v723 = 0;
    }

    v724 = *(v720 + 16);
    if ((v721 & 2) == 0)
    {
      v724 = 0;
    }

    v853 = v724 ^ v723;
  }

  else
  {
    v853 = 0;
  }

  v725 = *(this + 267);
  if (v725)
  {
    v852 = CMMsl::MagnetometerCalibratorFilterParameters::hash_value(v725);
  }

  else
  {
    v852 = 0;
  }

  v726 = *(this + 214);
  if (v726)
  {
    v851 = CMMsl::KappaActivityPhone::hash_value(v726);
  }

  else
  {
    v851 = 0;
  }

  v727 = *(this + 215);
  if (v727)
  {
    v850 = CMMsl::KappaActivityWatch::hash_value(v727);
  }

  else
  {
    v850 = 0;
  }

  v728 = *(this + 341);
  if (v728)
  {
    v729 = *(v728 + 20);
    v730 = *(v728 + 8) == 0.0 || (v729 & 1) == 0;
    v731 = *(v728 + 8);
    if (v730)
    {
      v731 = 0;
    }

    v849 = v731 ^ (*(v728 + 16) & (v729 << 30 >> 31));
  }

  else
  {
    v849 = 0;
  }

  v732 = *(this + 302);
  if (v732)
  {
    v848 = CMMsl::PDRDOTEstimatorStateDebug::hash_value(v732);
  }

  else
  {
    v848 = 0;
  }

  v733 = *(this + 301);
  if (v733)
  {
    v847 = CMMsl::PDRDOTEstimatorStateBodyDebug::hash_value(v733);
  }

  else
  {
    v847 = 0;
  }

  v734 = *(this + 228);
  if (v734)
  {
    v846 = CMMsl::KappaPeakDetectorMapResult::hash_value(v734);
  }

  else
  {
    v846 = 0;
  }

  v735 = *(this + 227);
  if (v735)
  {
    v845 = CMMsl::KappaPeakDetectorMapMagTimestamps::hash_value(v735);
  }

  else
  {
    v845 = 0;
  }

  v736 = *(this + 344);
  if (v736)
  {
    v844 = CMMsl::PrecisionFindingVerticalState::hash_value(v736);
  }

  else
  {
    v844 = 0;
  }

  v737 = *(this + 44);
  if (v737)
  {
    v843 = CMMsl::Altimeter::hash_value(v737);
  }

  else
  {
    v843 = 0;
  }

  v738 = *(this + 127);
  if (v738)
  {
    v842 = CMMsl::FaceDownDetection::hash_value(v738);
  }

  else
  {
    v842 = 0;
  }

  v739 = *(this + 325);
  if (v739)
  {
    v841 = CMMsl::PencilFusionDMYawAlignmentUpdate::hash_value(v739);
  }

  else
  {
    v841 = 0;
  }

  v740 = *(this + 328);
  if (v740)
  {
    v840 = CMMsl::PencilFusionRingSensorTrustModelUpdate::hash_value(v740);
  }

  else
  {
    v840 = 0;
  }

  v741 = *(this + 37);
  if (v741)
  {
    v839 = CMMsl::AccessorySleepStateUpdate::hash_value(v741);
  }

  else
  {
    v839 = 0;
  }

  v742 = *(this + 36);
  if (v742)
  {
    v838 = CMMsl::AccessorySleepStateConfidenceEpoch::hash_value(v742);
  }

  else
  {
    v838 = 0;
  }

  v743 = *(this + 383);
  if (v743)
  {
    v837 = CMMsl::SafetyHertzSample::hash_value(v743);
  }

  else
  {
    v837 = 0;
  }

  v744 = *(this + 382);
  if (v744)
  {
    v745 = *(v744 + 20);
    v746 = *(v744 + 8);
    if ((v745 & 1) == 0)
    {
      v746 = 0;
    }

    v747 = *(v744 + 16);
    if ((v745 & 2) == 0)
    {
      v747 = 0;
    }

    v836 = v747 ^ v746;
  }

  else
  {
    v836 = 0;
  }

  v748 = *(this + 358);
  if (v748)
  {
    v835 = CMMsl::PTSConsumedGNSS::hash_value(v748);
  }

  else
  {
    v835 = 0;
  }

  v749 = *(this + 359);
  if (v749)
  {
    v834 = CMMsl::PTSForwardPropagation::hash_value(v749);
  }

  else
  {
    v834 = 0;
  }

  v750 = *(this + 361);
  if (v750 && (v751 = *(v750 + 8)) != 0)
  {
    v833 = CMMsl::PTSForwardPropagation::hash_value(v751);
  }

  else
  {
    v833 = 0;
  }

  v752 = *(this + 188);
  if (v752)
  {
    v832 = CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::hash_value(v752);
  }

  else
  {
    v832 = 0;
  }

  v753 = *(this + 360);
  if (v753 && (v754 = *(v753 + 8)) != 0)
  {
    v831 = CMMsl::PTSForwardPropagation::hash_value(v754);
  }

  else
  {
    v831 = 0;
  }

  v755 = *(this + 47);
  if (v755)
  {
    v830 = CMMsl::AnchorMotionCorrespondence::hash_value(v755);
  }

  else
  {
    v830 = 0;
  }

  v756 = *(this + 147);
  if (v756)
  {
    v757 = *(v756 + 20);
    v758 = *(v756 + 8);
    if ((v757 & 1) == 0)
    {
      v758 = 0;
    }

    v759 = *(v756 + 16);
    if ((v757 & 2) == 0)
    {
      v759 = 0;
    }

    v829 = v759 ^ v758;
  }

  else
  {
    v829 = 0;
  }

  v760 = *(this + 146);
  if (v760)
  {
    v828 = CMMsl::FlickFeatures::hash_value(v760);
  }

  else
  {
    v828 = 0;
  }

  v761 = *(this + 144);
  if (v761)
  {
    v827 = CMMsl::FlickControlParameters::hash_value(v761);
  }

  else
  {
    v827 = 0;
  }

  v762 = *(this + 384);
  if (v762)
  {
    v826 = CMMsl::SafetyRemoteSample::hash_value(v762);
  }

  else
  {
    v826 = 0;
  }

  v763 = *(this + 385);
  if (v763)
  {
    v825 = CMMsl::SafetyTrustedAudioResult::hash_value(v763);
  }

  else
  {
    v825 = 0;
  }

  v764 = *(this + 110);
  if (v764)
  {
    v824 = CMMsl::DisplayPoseState::hash_value(v764);
  }

  else
  {
    v824 = 0;
  }

  v765 = *(this + 427);
  if (v765)
  {
    v823 = CMMsl::TNB::hash_value(v765);
  }

  else
  {
    v823 = 0;
  }

  v766 = *(this + 305);
  if (v766)
  {
    v822 = CMMsl::PDRDOTEstimatorStateTNBDebug::hash_value(v766);
  }

  else
  {
    v822 = 0;
  }

  v767 = *(this + 83);
  if (v767)
  {
    v821 = CMMsl::CVIMUMeasurement::hash_value(v767);
  }

  else
  {
    v821 = 0;
  }

  v768 = *(this + 304);
  if (v768)
  {
    v820 = CMMsl::PDRDOTEstimatorStateSwingDebug::hash_value(v768);
  }

  else
  {
    v820 = 0;
  }

  v769 = *(this + 196);
  if (v769)
  {
    v819 = CMMsl::IMUComboPacket::hash_value(v769);
  }

  else
  {
    v819 = 0;
  }

  v770 = *(this + 184);
  if (v770)
  {
    v818 = CMMsl::GyroScaleEstimate::hash_value(v770);
  }

  else
  {
    v818 = 0;
  }

  v771 = *(this + 171);
  if (v771)
  {
    v817 = CMMsl::GyroBiasEstimate::hash_value(v771);
  }

  else
  {
    v817 = 0;
  }

  v772 = *(this + 8);
  if (v772)
  {
    v816 = CMMsl::AccelBiasEstimate::hash_value(v772);
  }

  else
  {
    v816 = 0;
  }

  v773 = *(this + 179);
  if (v773)
  {
    v774 = *(v773 + 20);
    v775 = *(v773 + 8) == 0.0 || (v774 & 1) == 0;
    v776 = *(v773 + 8);
    if (v775)
    {
      v776 = 0;
    }

    v815 = v776 ^ (*(v773 + 16) & (v774 << 30 >> 31));
  }

  else
  {
    v815 = 0;
  }

  v777 = *(this + 362);
  if (v777 && (v778 = *(v777 + 8)) != 0)
  {
    v814 = CMMsl::PTSForwardPropagation::hash_value(v778);
  }

  else
  {
    v814 = 0;
  }

  v779 = *(this + 150);
  if (v779)
  {
    v813 = CMMsl::FlickMaxima::hash_value(v779);
  }

  else
  {
    v813 = 0;
  }

  v780 = *(this + 148);
  if (v780)
  {
    v781 = *(v780 + 8);
    if (v781)
    {
      v781 = CMMsl::FlickMaxima::hash_value(v781);
    }

    if (*(v780 + 20))
    {
      v782 = *(v780 + 16);
    }

    else
    {
      v782 = 0;
    }

    v812 = v782 ^ v781;
  }

  else
  {
    v812 = 0;
  }

  v783 = *(this + 145);
  if (v783)
  {
    v811 = CMMsl::FlickFPDetectorFeatures::hash_value(v783);
  }

  else
  {
    v811 = 0;
  }

  v784 = *(this + 149);
  if (v784)
  {
    v810 = CMMsl::FlickLPFDM6Data::hash_value(v784);
  }

  else
  {
    v810 = 0;
  }

  v785 = *(this + 103);
  if (v785)
  {
    v809 = CMMsl::CourseFusion::hash_value(v785);
  }

  else
  {
    v809 = 0;
  }

  v786 = *(this + 81);
  if (v786)
  {
    v808 = CMMsl::CMPedometerStep::hash_value(v786);
  }

  else
  {
    v808 = 0;
  }

  v787 = *(this + 80);
  if (v787)
  {
    v807 = CMMsl::CMPedEntry::hash_value(v787);
  }

  else
  {
    v807 = 0;
  }

  v788 = *(this + 162);
  if (v788)
  {
    v806 = CMMsl::GestureQuaternion::hash_value(v788);
  }

  else
  {
    v806 = 0;
  }

  v789 = *(this + 161);
  if (v789)
  {
    v790 = *(v789 + 12);
    v791 = *(v789 + 8);
    if ((v790 & 1) == 0)
    {
      v791 = 0;
    }

    v805 = v791;
  }

  else
  {
    v805 = 0;
  }

  v792 = *(this + 399);
  if (v792 && (v793 = *(v792 + 8)) != 0)
  {
    v794 = CMMsl::DeviceMotion::hash_value(v793);
  }

  else
  {
    v794 = 0;
  }

  v795 = *(this + 400);
  if (v795 && (v796 = *(v795 + 8)) != 0)
  {
    v797 = CMMsl::MotionStateUpdate::hash_value(v796);
  }

  else
  {
    v797 = 0;
  }

  v798 = *(this + 208);
  if (v798)
  {
    v799 = *(v798 + 8);
    if (v799)
    {
      v799 = CMMsl::AccessoryAccel::hash_value(v799);
    }
  }

  else
  {
    v799 = 0;
  }

  v800 = v1282 ^ *&v1283 ^ v1281 ^ v1280 ^ v1279 ^ v1278 ^ v1277 ^ v1276 ^ v1275 ^ v1274 ^ v1273 ^ v1272 ^ v1271 ^ v1270 ^ v1269 ^ v1268 ^ v1267 ^ v1266 ^ v1265 ^ v1264 ^ v1263 ^ v1262 ^ v46 ^ v1261 ^ v52 ^ v57 ^ v1260 ^ v1259 ^ v1258 ^ v1257 ^ v1256 ^ v1255 ^ v1254 ^ v1253 ^ v1252 ^ v1251 ^ v1250 ^ v1249 ^ v1248 ^ v1247 ^ v1246 ^ v1245 ^ v1244 ^ v1243 ^ v1242 ^ v1241 ^ v1240 ^ v1239 ^ v1238 ^ v1237 ^ v1236 ^ v1235 ^ v1234 ^ v1233 ^ v1232 ^ v1231 ^ v1230 ^ v1229 ^ v1228 ^ v1227 ^ v1226 ^ v1225 ^ v1224 ^ v1223 ^ v1222 ^ v1221 ^ v1220 ^ v1219 ^ v1218 ^ v1217 ^ v1216 ^ v1215 ^ v1214 ^ v1213 ^ v1212 ^ v1211 ^ v1210 ^ v1209 ^ v1208;
  v801 = v800 ^ v1207 ^ v1206 ^ v1205 ^ v1204 ^ v1203 ^ v1202 ^ v1201 ^ v1200 ^ v1199 ^ v157 ^ v162 ^ v1198 ^ v1197 ^ v1196 ^ v1195 ^ v1194 ^ v1193 ^ v1192 ^ v1191 ^ v1190 ^ v1189 ^ v1188 ^ v1187 ^ v1186 ^ v1185 ^ v1184 ^ v1183 ^ v1182 ^ v1181 ^ v1180 ^ v1179 ^ v1178 ^ v1177 ^ v1176 ^ v1175 ^ v1174 ^ v1173 ^ v1172 ^ v1171 ^ v1170 ^ v1169 ^ v1168 ^ v1167 ^ v1166 ^ v1165 ^ v1164 ^ v1163 ^ v1162 ^ v1161 ^ v1160 ^ v1159 ^ v1158 ^ v1157 ^ v240 ^ v1156 ^ v1155 ^ v1154 ^ v1153 ^ v1152 ^ v1151 ^ v1150 ^ v1149 ^ v1148 ^ v1147 ^ v1146 ^ v1145 ^ v1144 ^ v1143 ^ v1142 ^ v1141 ^ v1140 ^ v1139 ^ v1138 ^ v1137 ^ v1136 ^ v1135 ^ v1134 ^ v1133 ^ v1132 ^ v1131 ^ v1130 ^ v1129 ^ v1128 ^ v1127 ^ v1126 ^ v1125 ^ v1124 ^ v1123 ^ v1122 ^ v1121 ^ v1120 ^ v1119 ^ v1118 ^ v1117 ^ v1116 ^ v1115 ^ v1114 ^ v1113 ^ v1112 ^ v1111 ^ v1110 ^ v1109 ^ v1108 ^ v1107 ^ v1106 ^ v1105 ^ v1104 ^ v1103 ^ v1102 ^ v1101 ^ v1100 ^ v1099;
  v802 = v801 ^ v1098 ^ v1097 ^ v1096 ^ v1095 ^ v1094 ^ v1093 ^ v1092 ^ v1091 ^ v1090 ^ v1089 ^ v1088 ^ v1087 ^ v1086 ^ v1085 ^ v1084 ^ v1083 ^ v1082 ^ v1081 ^ v1080 ^ v1079 ^ v1078 ^ v1077 ^ v1076 ^ v1075 ^ v1074 ^ v1073 ^ v371 ^ v1072 ^ v1071 ^ v1070 ^ v1069 ^ v1068 ^ v1067 ^ v1066 ^ v1065 ^ v1064 ^ v1063 ^ v1062 ^ v1061 ^ v1060 ^ v1059 ^ v1058 ^ v1057 ^ v1056 ^ v1055 ^ v1054 ^ v1053 ^ v1052 ^ v1051 ^ v1050 ^ v1049 ^ v1048 ^ v1047 ^ v1046 ^ v1045 ^ v1044 ^ v1043 ^ v1042 ^ v1041 ^ v1040 ^ v1039 ^ v1038 ^ v1037 ^ v1036 ^ v1035 ^ v1034 ^ v1033 ^ v1032 ^ v1031 ^ v1030 ^ v1029 ^ v1028 ^ v1027 ^ v1026 ^ v1025 ^ v1024 ^ v1023 ^ v1022 ^ v1021 ^ v1020 ^ v1019 ^ v1018 ^ v1017 ^ v1016 ^ v1015 ^ v1014 ^ v1013 ^ v1012 ^ v1011 ^ v1010 ^ v1009 ^ v1008 ^ v1007 ^ v1006 ^ v1005 ^ v1004 ^ v1003 ^ v1002 ^ v1001 ^ v1000 ^ v999 ^ v998 ^ v997 ^ v996 ^ v995 ^ v994 ^ v993 ^ v992 ^ v991;
  v803 = v802 ^ v990 ^ v989 ^ v988 ^ v987 ^ v986 ^ v985 ^ v984 ^ v983 ^ v982 ^ v981 ^ v980 ^ v979 ^ v978 ^ v977 ^ v976 ^ v975 ^ v974 ^ v973 ^ v972 ^ v971 ^ v970 ^ v969 ^ v968 ^ v967 ^ v966 ^ v965 ^ v964 ^ v963 ^ v962 ^ v961 ^ v960 ^ v959 ^ v958 ^ v957 ^ v956 ^ v955 ^ v954 ^ v953 ^ v952 ^ v951 ^ v950 ^ v949 ^ v948 ^ v947 ^ v946 ^ v945 ^ v944 ^ v943 ^ v942 ^ v941 ^ v940 ^ v939 ^ v938 ^ v937 ^ v936 ^ v935 ^ v934 ^ v933 ^ v932 ^ v931 ^ v930 ^ v929 ^ v928 ^ v927 ^ v926 ^ v925 ^ v924 ^ v923 ^ v922 ^ v921 ^ v920 ^ v919 ^ v918 ^ v917 ^ v916 ^ v915 ^ v914 ^ v913 ^ v912 ^ v911 ^ v910 ^ v909 ^ v908 ^ v907 ^ v906 ^ v905 ^ v904 ^ v903 ^ v902 ^ v901 ^ v900 ^ v899 ^ v898 ^ v897 ^ v896 ^ v895 ^ v894 ^ v893 ^ v892 ^ v891 ^ v890 ^ v889 ^ v888 ^ v887 ^ v886 ^ v885;
  return v803 ^ v884 ^ v883 ^ v882 ^ v881 ^ v880 ^ v879 ^ v878 ^ v877 ^ v876 ^ v875 ^ v874 ^ v873 ^ v872 ^ v871 ^ v870 ^ v869 ^ v868 ^ v867 ^ v866 ^ v865 ^ v864 ^ v863 ^ v862 ^ v861 ^ v860 ^ v859 ^ v858 ^ v857 ^ v856 ^ v855 ^ v854 ^ v853 ^ v852 ^ v851 ^ v850 ^ v849 ^ v848 ^ v847 ^ v846 ^ v845 ^ v844 ^ v843 ^ v842 ^ v841 ^ v840 ^ v839 ^ v838 ^ v837 ^ v836 ^ v835 ^ v834 ^ v833 ^ v832 ^ v831 ^ v830 ^ v829 ^ v828 ^ v827 ^ v826 ^ v825 ^ v824 ^ v823 ^ v822 ^ v821 ^ v820 ^ v819 ^ v818 ^ v817 ^ v816 ^ v815 ^ v814 ^ v813 ^ v812 ^ v811 ^ v810 ^ v809 ^ v808 ^ v807 ^ v806 ^ v805 ^ v794 ^ v797 ^ v799;
}