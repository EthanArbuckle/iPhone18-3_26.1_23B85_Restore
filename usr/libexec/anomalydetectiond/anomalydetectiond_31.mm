BOOL CMMsl::WorkoutRecorderAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderBodyMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BodyMetrics::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderElevation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::ElevationChange::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderHeartRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::OnsetHeartRateData::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderRotationRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::RotationRate::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderOdometer::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::OdometerWithAltitude::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderWorkoutEvent::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::WorkoutEvent::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::VO2MaxInput::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a2 + 88);
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

  if ((*(a1 + 88) & 0x200) != 0)
  {
    if ((*(a2 + 88) & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x200) != 0)
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

  if ((*(a1 + 88) & 0x100) != 0)
  {
    if ((*(a2 + 88) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x100) != 0)
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

  if ((*(a1 + 88) & 0x800) != 0)
  {
    if ((*(a2 + 88) & 0x800) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x1000) != 0)
  {
    if ((*(a2 + 88) & 0x1000) == 0 || *(a1 + 85) != *(a2 + 85))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x400) != 0)
  {
    if ((*(a2 + 88) & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x2000) != 0)
  {
    if ((*(a2 + 88) & 0x2000) == 0 || *(a1 + 86) != *(a2 + 86))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x2000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

BOOL CMMsl::WorkoutRecorderHealthKitInfo::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

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

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PearlAttitude::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  v3 = *(a2 + 124);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 108) != *(a2 + 108))
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
    if ((v3 & 0x20) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 124) & 0x200) != 0)
  {
    if ((*(a2 + 124) & 0x200) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 124) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

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

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 124) & 0x100) != 0)
  {
    if ((*(a2 + 124) & 0x100) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((*(a2 + 124) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v7 - v8 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 56);
  if (v10 - v11 != *(a2 + 64) - v12)
  {
    return 0;
  }

  if (v11 == v10)
  {
    return 1;
  }

  v13 = v11 + 4;
  do
  {
    v14 = *v12++;
    result = *(v13 - 4) == v14;
    v16 = *(v13 - 4) != v14 || v13 == v10;
    v13 += 4;
  }

  while (!v16);
  return result;
}

BOOL CMMsl::RotationRate::operator==(uint64_t a1, uint64_t a2)
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

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::WorkoutRecorderWatchOrientationSettings::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::WatchOrientationSettings::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderWifiScanResults::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return *(a2 + 8) == 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0;
  }

  if (sub_10029022C((v3 + 8), v4 + 8))
  {
    return 1;
  }

  return !*(a1 + 8) && *(a2 + 8) == 0;
}

BOOL CMMsl::WorkoutRecorderPressure::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Pressure::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::VisionCompassBias::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 76);
  v3 = *(a2 + 76);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
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
    if ((v3 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
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
    if ((v3 & 4) == 0 || *(a1 + 48) != *(a2 + 48))
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
    if ((v3 & 0x10) == 0 || *(a1 + 56) != *(a2 + 56))
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
    if ((v3 & 8) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x80) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 76) & 0x100) != 0)
  {
    if ((*(a2 + 76) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 76) & 0x100) != 0)
  {
    return 0;
  }

  v7 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 60) == *(a2 + 60);
  }

  return v7;
}

BOOL CMMsl::VIOEstimation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 340) & 0x40) != 0)
  {
    if ((*(a2 + 340) & 0x40) == 0 || *(a1 + 336) != *(a2 + 336))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 340) & 4) != 0)
  {
    if ((*(a2 + 340) & 4) == 0 || *(a1 + 312) != *(a2 + 312))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 340))
  {
    if ((*(a2 + 340) & 1) == 0 || *(a1 + 296) != *(a2 + 296))
    {
      return 0;
    }
  }

  else if (*(a2 + 340))
  {
    return 0;
  }

  if ((*(a1 + 340) & 8) != 0)
  {
    if ((*(a2 + 340) & 8) == 0 || *(a1 + 320) != *(a2 + 320))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 340) & 2) != 0)
  {
    if ((*(a2 + 340) & 2) == 0 || *(a1 + 304) != *(a2 + 304))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 176);
  v2 = *(a1 + 184);
  v4 = *(a2 + 176);
  if (v2 - v3 != *(a2 + 184) - v4)
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

  v6 = *(a1 + 104);
  v5 = *(a1 + 112);
  v7 = *(a2 + 104);
  if (v5 - v6 != *(a2 + 112) - v7)
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

  v9 = *(a1 + 272);
  v8 = *(a1 + 280);
  v10 = *(a2 + 272);
  if (v8 - v9 != *(a2 + 280) - v10)
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

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a2 + 8);
  if (v11 - v12 != *(a2 + 16) - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
  }

  v15 = *(a1 + 224);
  v14 = *(a1 + 232);
  v16 = *(a2 + 224);
  if (v14 - v15 != *(a2 + 232) - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
  }

  v18 = *(a1 + 152);
  v17 = *(a1 + 160);
  v19 = *(a2 + 152);
  if (v17 - v18 != *(a2 + 160) - v19)
  {
    return 0;
  }

  while (v18 != v17)
  {
    if (*v18 != *v19)
    {
      return 0;
    }

    ++v18;
    ++v19;
  }

  v21 = *(a1 + 128);
  v20 = *(a1 + 136);
  v22 = *(a2 + 128);
  if (v20 - v21 != *(a2 + 136) - v22)
  {
    return 0;
  }

  while (v21 != v20)
  {
    if (*v21 != *v22)
    {
      return 0;
    }

    ++v21;
    ++v22;
  }

  v24 = *(a1 + 248);
  v23 = *(a1 + 256);
  v25 = *(a2 + 248);
  if (v23 - v24 != *(a2 + 256) - v25)
  {
    return 0;
  }

  while (v24 != v23)
  {
    if (*v24 != *v25)
    {
      return 0;
    }

    ++v24;
    ++v25;
  }

  v27 = *(a1 + 32);
  v26 = *(a1 + 40);
  v28 = *(a2 + 32);
  if (v26 - v27 != *(a2 + 40) - v28)
  {
    return 0;
  }

  while (v27 != v26)
  {
    if (*v27 != *v28)
    {
      return 0;
    }

    ++v27;
    ++v28;
  }

  v30 = *(a1 + 200);
  v29 = *(a1 + 208);
  v31 = *(a2 + 200);
  if (v29 - v30 != *(a2 + 208) - v31)
  {
    return 0;
  }

  while (v30 != v29)
  {
    if (*v30 != *v31)
    {
      return 0;
    }

    ++v30;
    ++v31;
  }

  v33 = *(a1 + 80);
  v32 = *(a1 + 88);
  v34 = *(a2 + 80);
  if (v32 - v33 != *(a2 + 88) - v34)
  {
    return 0;
  }

  while (v33 != v32)
  {
    if (*v33 != *v34)
    {
      return 0;
    }

    ++v33;
    ++v34;
  }

  v36 = *(a1 + 56);
  v35 = *(a1 + 64);
  v37 = *(a2 + 56);
  if (v35 - v36 != *(a2 + 64) - v37)
  {
    return 0;
  }

  while (v36 != v35)
  {
    if (*v36 != *v37)
    {
      return 0;
    }

    ++v36;
    ++v37;
  }

  if ((*(a1 + 340) & 0x20) != 0)
  {
    if ((*(a2 + 340) & 0x20) == 0 || *(a1 + 332) != *(a2 + 332))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 0x20) != 0)
  {
    return 0;
  }

  v38 = (*(a2 + 340) & 0x10) == 0;
  if ((*(a1 + 340) & 0x10) != 0)
  {
    return (*(a2 + 340) & 0x10) != 0 && *(a1 + 328) == *(a2 + 328);
  }

  return v38;
}

BOOL CMMsl::LSLHeadingEstimation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  v3 = *(a2 + 192);
  if ((v2 & 0x4000) != 0)
  {
    if ((*(a2 + 192) & 0x4000) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x4000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 192) & 0x1000) != 0)
  {
    if ((*(a2 + 192) & 0x1000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 32);
  if (v4 - v5 != *(a2 + 40) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 56);
  if (v10 - v11 != *(a2 + 64) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 192) & 0x2000) != 0)
  {
    if ((*(a2 + 192) & 0x2000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 96) != *(a2 + 96))
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
    if ((v3 & 0x10) == 0 || *(a1 + 112) != *(a2 + 112))
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
    if ((v3 & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 104) != *(a2 + 104))
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
    if ((v3 & 0x20) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 192) & 0x800) != 0)
  {
    if ((*(a2 + 192) & 0x800) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 192) & 0x100) != 0)
  {
    if ((*(a2 + 192) & 0x100) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 192) & 0x200) != 0)
  {
    if ((*(a2 + 192) & 0x200) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((*(a2 + 192) & 0x200) != 0)
  {
    return 0;
  }

  v13 = (v3 & 0x400) == 0;
  if ((*(a1 + 192) & 0x400) != 0)
  {
    return (*(a2 + 192) & 0x400) != 0 && *(a1 + 160) == *(a2 + 160);
  }

  return v13;
}

BOOL CMMsl::MovementStats::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL CMMsl::StepCountEntry::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 88) != *(a2 + 88))
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
    if ((v3 & 0x40) == 0 || *(a1 + 80) != *(a2 + 80))
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
    if ((v3 & 0x10) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 40) != *(a2 + 40))
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
    if ((v3 & 0x20) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
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

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 32) != *(a2 + 32))
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
    if ((v3 & 2) == 0 || *(a1 + 24) != *(a2 + 24))
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
    if ((v3 & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v6 = *(a2 + 72);
  if (v5)
  {
    if (!v6 || !sub_10005FEB4(v5, v6) && *(a1 + 72) | *(a2 + 72))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 152);
  v8 = *(a2 + 152);
  if ((v7 & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v7 & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || *(a1 + 149) != *(a2 + 149))
    {
      return 0;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10 || !CMMsl::AccelerometerPace::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if ((v7 & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v7 & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v7 & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v7 & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    return 0;
  }

  if ((v7 & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    return 0;
  }

  if ((v7 & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v7 & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    return 0;
  }

  if ((v7 & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    return 0;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *(v12 + 12);
    if (*(v11 + 12))
    {
      if ((*(v12 + 12) & 1) == 0 || *(v11 + 8) != *(v12 + 8))
      {
        return 0;
      }
    }

    else if (*(v12 + 12))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  result = (v8 & 0x10000) == 0;
  if ((v7 & 0x10000) == 0)
  {
    return result;
  }

  return (v8 & 0x10000) != 0 && *(a1 + 128) == *(a2 + 128);
}

BOOL CMMsl::MobilityBoutMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  v3 = *(a2 + 184);
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

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000000) != 0)
  {
    if ((v3 & 0x100000000000) == 0 || *(a1 + 181) != *(a2 + 181))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000000) != 0)
  {
    if ((v3 & 0x10000000000) == 0 || *(a1 + 177) != *(a2 + 177))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000000) != 0)
  {
    if ((v3 & 0x80000000000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
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

  if ((v2 & 0x8000000000) != 0)
  {
    if ((v3 & 0x8000000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000000) != 0)
  {
    if ((v3 & 0x4000000000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 100) != *(a2 + 100))
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
    if ((v3 & 0x20000) == 0 || *(a1 + 88) != *(a2 + 88))
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
    if ((v3 & 0x10000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
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

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000000) != 0)
  {
    if ((v3 & 0x2000000000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
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

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000000) != 0)
  {
    if ((v3 & 0x20000000000) == 0 || *(a1 + 178) != *(a2 + 178))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000000) != 0)
  {
    if ((v3 & 0x40000000000) == 0 || *(a1 + 179) != *(a2 + 179))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000000) != 0)
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

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
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

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = (v3 & &_mh_execute_header) == 0;
  if ((v2 & 0x100000000) != 0)
  {
    return (v3 & 0x100000000) != 0 && *(a1 + 148) == *(a2 + 148);
  }

  return v4;
}

BOOL CMMsl::VIOPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 112) & 0x200) != 0)
  {
    if ((*(a2 + 112) & 0x200) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((*(a2 + 112) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 56) != *(a2 + 56))
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
    if ((v3 & 0x10) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x20) == 0 || *(a1 + 72) != *(a2 + 72))
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
    if ((v3 & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 112) & 0x100) != 0)
  {
    if ((*(a2 + 112) & 0x100) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((*(a2 + 112) & 0x100) != 0)
  {
    return 0;
  }

  v7 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 80) == *(a2 + 80);
  }

  return v7;
}

BOOL CMMsl::SignalEnvironment::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL CMMsl::VIOReplayPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 64))
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

  v9 = v7 + 8;
  do
  {
    v10 = *v8++;
    result = *(v9 - 8) == v10;
    v12 = *(v9 - 8) != v10 || v9 == v6;
    v9 += 8;
  }

  while (!v12);
  return result;
}

BOOL CMMsl::VisualStateMeasurement::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (*(a2 + 96))
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

  if ((*(a1 + 96) & 4) != 0)
  {
    if ((*(a2 + 96) & 4) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((*(a2 + 96) & 4) != 0)
  {
    return 0;
  }

  v11 = (*(a2 + 96) & 2) == 0;
  if ((*(a1 + 96) & 2) != 0)
  {
    return (*(a2 + 96) & 2) != 0 && *(a1 + 88) == *(a2 + 88);
  }

  return v11;
}

BOOL CMMsl::KappaTriggerDebug::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  v3 = *(a2 + 120);
  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 120) & 0x200) != 0)
  {
    if ((*(a2 + 120) & 0x200) == 0 || *(a1 + 118) != *(a2 + 118))
    {
      return 0;
    }
  }

  else if ((*(a2 + 120) & 0x200) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a2 + 56);
  if (v7 - v8 != *(a2 + 64) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a2 + 32);
  if (v10 - v11 != *(a2 + 40) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 120) & 0x100) != 0)
  {
    if ((*(a2 + 120) & 0x100) == 0 || *(a1 + 117) != *(a2 + 117))
    {
      return 0;
    }
  }

  else if ((*(a2 + 120) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 96) != *(a2 + 96))
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
    if ((v3 & 8) == 0 || *(a1 + 100) != *(a2 + 100))
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
    if ((v3 & 0x40) == 0 || *(a1 + 112) != *(a2 + 112))
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
    if ((v3 & 0x20) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v13 = (v3 & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 104) == *(a2 + 104);
  }

  return v13;
}

BOOL CMMsl::KappaDirectionOfTravel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = *(a2 + 144);
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

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 92) != *(a2 + 92))
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
    if ((v3 & 0x40) == 0 || *(a1 + 96) != *(a2 + 96))
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
    if ((v3 & 0x80) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
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

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 112) != *(a2 + 112))
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
    if ((v3 & 0x800) == 0 || *(a1 + 116) != *(a2 + 116))
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
    if ((v3 & 0x1000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 108) != *(a2 + 108))
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
    if ((v3 & 0x100) == 0 || *(a1 + 104) != *(a2 + 104))
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
    if ((v3 & 0x4000) == 0 || *(a1 + 128) != *(a2 + 128))
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
    if ((v3 & 0x8000) == 0 || *(a1 + 132) != *(a2 + 132))
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
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 124) != *(a2 + 124))
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
    if ((v3 & 0x20000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
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

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
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
    if ((v3 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 32);
  if (v4 - v5 != *(a2 + 40) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  if (v8 == v7)
  {
    return 1;
  }

  v10 = v8 + 4;
  do
  {
    v11 = *v9++;
    result = *(v10 - 4) == v11;
    v13 = *(v10 - 4) != v11 || v10 == v7;
    v10 += 4;
  }

  while (!v13);
  return result;
}

BOOL CMMsl::KappaSteps::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

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

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::SignificantUserInteraction::operator==(uint64_t a1, uint64_t a2)
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

BOOL CMMsl::KappaRoads::operator==(uint64_t a1, uint64_t a2)
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

  v2 = (*(a2 + 32) & 8) == 0;
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*(a2 + 32) & 8) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v2;
}

BOOL CMMsl::UserStudyEvent::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

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

  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  v8 = *(v4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v4 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? v3 : *v3;
  v11 = v9 >= 0 ? *(a2 + 8) : *v4;
  return !memcmp(v10, v11, v7);
}

BOOL CMMsl::TempestPoCAuxiliaryDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4)
  {
    if (!v5 || !CMMsl::AuxiliaryDeviceMotion::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 == *(a2 + 16) - v8)
  {
    while (v7 != v6)
    {
      if (*v7 != *v8)
      {
        return 0;
      }

      ++v7;
      ++v8;
    }

    v9 = *(a1 + 104);
    v10 = *(a2 + 104);
    if ((v9 & 0x80) != 0)
    {
      if ((v10 & 0x80) == 0 || *(a1 + 92) != *(a2 + 92))
      {
        return 0;
      }
    }

    else if ((v10 & 0x80) != 0)
    {
      return 0;
    }

    if ((v9 & 0x40) != 0)
    {
      if ((v10 & 0x40) == 0 || *(a1 + 88) != *(a2 + 88))
      {
        return 0;
      }
    }

    else if ((v10 & 0x40) != 0)
    {
      return 0;
    }

    if ((*(a1 + 104) & 0x100) != 0)
    {
      if ((*(a2 + 104) & 0x100) == 0 || *(a1 + 96) != *(a2 + 96))
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
      if ((*(a2 + 104) & 0x200) == 0 || *(a1 + 100) != *(a2 + 100))
      {
        return 0;
      }
    }

    else if ((*(a2 + 104) & 0x200) != 0)
    {
      return 0;
    }

    if ((v9 & 2) != 0)
    {
      if ((v10 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
      {
        return 0;
      }
    }

    else if ((v10 & 2) != 0)
    {
      return 0;
    }

    if ((v9 & 4) != 0)
    {
      if ((v10 & 4) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }
    }

    else if ((v10 & 4) != 0)
    {
      return 0;
    }

    if ((v9 & 0x10) != 0)
    {
      if ((v10 & 0x10) == 0 || *(a1 + 64) != *(a2 + 64))
      {
        return 0;
      }
    }

    else if ((v10 & 0x10) != 0)
    {
      return 0;
    }

    if ((v9 & 0x20) != 0)
    {
      if ((v10 & 0x20) == 0 || *(a1 + 72) != *(a2 + 72))
      {
        return 0;
      }
    }

    else if ((v10 & 0x20) != 0)
    {
      return 0;
    }

    if (v9)
    {
      if ((v10 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    result = (v10 & 8) == 0;
    if ((v9 & 8) == 0)
    {
      return result;
    }

    if ((v10 & 8) != 0 && *(a1 + 56) == *(a2 + 56))
    {
      return 1;
    }
  }

  return 0;
}

BOOL CMMsl::TempestPoCListenerOrientation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v3 = *(a2 + 128);
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

  if ((*(a1 + 128) & 0x400) != 0)
  {
    if ((*(a2 + 128) & 0x400) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 128) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 128) & 0x100) != 0)
  {
    if ((*(a2 + 128) & 0x100) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((*(a2 + 128) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 128) & 0x200) != 0)
  {
    if ((*(a2 + 128) & 0x200) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((*(a2 + 128) & 0x200) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 32);
  if (v4 - v5 != *(a2 + 40) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((*(a1 + 128) & 0x800) != 0)
  {
    if ((*(a2 + 128) & 0x800) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((*(a2 + 128) & 0x800) != 0)
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

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
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

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (v3)
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

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v10 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 72) == *(a2 + 72);
  }

  return v10;
}

BOOL CMMsl::WorkoutRecorderAccel800::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderALSData::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (v3)
    {
      v5 = *(v3 + 12);
      if (*(v2 + 12))
      {
        if ((*(v3 + 12) & 1) == 0 || *(v2 + 8) != *(v3 + 8))
        {
          return 0;
        }
      }

      else if (*(v3 + 12))
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

BOOL CMMsl::VisualLocalization::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 100) & 0x10) != 0)
  {
    if ((*(a2 + 100) & 0x10) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 100) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 100) & 4) != 0)
  {
    if ((*(a2 + 100) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 100) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 100) & 8) != 0)
  {
    if ((*(a2 + 100) & 8) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 100) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 100))
  {
    if ((*(a2 + 100) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 100))
  {
    return 0;
  }

  if ((*(a1 + 100) & 2) != 0)
  {
    if ((*(a2 + 100) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 100) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
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

  v8 = (*(a2 + 100) & 0x20) == 0;
  if ((*(a1 + 100) & 0x20) != 0)
  {
    return (*(a2 + 100) & 0x20) != 0 && *(a1 + 96) == *(a2 + 96);
  }

  return v8;
}

BOOL CMMsl::SoundPressureLevel::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::MotionLocation::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 220);
  v4 = *(a2 + 220);
  if ((v3 & 0x40000) != 0)
  {
    if ((v4 & 0x40000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100) != 0)
  {
    if ((v4 & 0x100) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200) != 0)
  {
    if ((v4 & 0x200) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10000) != 0)
  {
    if ((v4 & 0x10000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000) != 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    if ((v4 & 0x80) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    if ((v4 & 2) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v4 & 2) != 0)
  {
    return 0;
  }

  if ((v3 & 4) != 0)
  {
    if ((v4 & 4) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v4 & 4) != 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if ((v3 & 0x100000) != 0)
  {
    if ((v4 & 0x100000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10000000) != 0)
  {
    if ((v4 & 0x10000000) == 0)
    {
      return 0;
    }

    v5 = *(a1 + 204);
    v6 = *(a2 + 204);
    v2 = __OFSUB__(v5, v6);
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80000) != 0)
  {
    if ((v4 & 0x80000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000000) != 0)
  {
    if ((v4 & 0x20000000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40000000) != 0)
  {
    if ((v4 & 0x40000000) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 212);
    v8 = *(a2 + 212);
    v2 = __OFSUB__(v7, v8);
    if (v7 != v8)
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200000) != 0)
  {
    if ((v4 & 0x200000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800000) != 0)
  {
    if ((v4 & 0x800000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400000) != 0)
  {
    if ((v4 & 0x400000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800) != 0)
  {
    if ((v4 & 0x800) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800) != 0)
  {
    return 0;
  }

  if ((v3 & 8) != 0)
  {
    if ((v4 & 8) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v4 & 8) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10) != 0)
  {
    if ((v4 & 0x10) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000000) != 0)
  {
    if ((v4 & 0x2000000) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 192);
    v10 = *(a2 + 192);
    v2 = __OFSUB__(v9, v10);
    if (v9 != v10)
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000000) != 0)
  {
    if ((v4 & 0x8000000) == 0)
    {
      return 0;
    }

    v11 = *(a1 + 200);
    v12 = *(a2 + 200);
    v2 = __OFSUB__(v11, v12);
    if (v11 != v12)
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000000) != 0)
  {
    if ((v4 & 0x1000000) == 0)
    {
      return 0;
    }

    v13 = *(a1 + 188);
    v14 = *(a2 + 188);
    v2 = __OFSUB__(v13, v14);
    if (v13 != v14)
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((v4 & 0x20) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40) != 0)
  {
    if ((v4 & 0x40) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000) != 0)
  {
    if ((v4 & 0x8000) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400) != 0)
  {
    if ((v4 & 0x400) == 0)
    {
      return 0;
    }

    v2 = 0;
    if (*(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400) != 0)
  {
    return 0;
  }

  if ((v3 & v4) < 0 != v2)
  {
    if (*(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((v3 | v4) < 0)
  {
    return 0;
  }

  if ((v3 & 0x1000) != 0)
  {
    if ((v4 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000) != 0)
  {
    if ((v4 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000) != 0)
  {
    if ((v4 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000) != 0)
  {
    return 0;
  }

  v15 = (v4 & 0x4000000) == 0;
  if ((v3 & 0x4000000) != 0)
  {
    return (v4 & 0x4000000) != 0 && *(a1 + 196) == *(a2 + 196);
  }

  return v15;
}

BOOL CMMsl::MotionActivity::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 116);
  v3 = *(a2 + 116);
  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
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

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
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

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 109) != *(a2 + 109))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
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

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 76) != *(a2 + 76))
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
    if ((v3 & 0x800) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 113) != *(a2 + 113))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 110) != *(a2 + 110))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 114) != *(a2 + 114))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 111) != *(a2 + 111))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
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
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 84) != *(a2 + 84))
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
    if ((v3 & 0x80000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
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

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 116) & 0x2000) == 0;
  if ((v2 & 0x2000) != 0)
  {
    return (v3 & 0x2000) != 0 && *(a1 + 80) == *(a2 + 80);
  }

  return v4;
}

BOOL CMMsl::KappaTrigger::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 212);
  v4 = *(a2 + 212);
  if ((v3 & 4) != 0)
  {
    if ((v4 & 4) == 0)
    {
      return 0;
    }

    v5 = *(a1 + 96);
    v6 = *(a2 + 96);
    v2 = __OFSUB__(v5, v6);
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if ((v4 & 4) != 0)
  {
    return 0;
  }

  if ((v3 & v4) < 0 != v2)
  {
    if (*(a1 + 211) != *(a2 + 211))
    {
      return 0;
    }
  }

  else if ((v3 | v4) < 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v4 & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 56);
  if (v10 - v11 != *(a2 + 64) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
  }

  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(a2 + 32);
  if (v13 - v14 != *(a2 + 40) - v15)
  {
    return 0;
  }

  while (v14 != v13)
  {
    if (*v14 != *v15)
    {
      return 0;
    }

    ++v14;
    ++v15;
  }

  if ((v3 & 0x10000000) != 0)
  {
    if ((v4 & 0x10000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000000) != 0)
  {
    if ((v4 & 0x20000000) == 0 || *(a1 + 209) != *(a2 + 209))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400000) != 0)
  {
    if ((v4 & 0x400000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10) != 0)
  {
    if ((v4 & 0x10) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80000) != 0)
  {
    if ((v4 & 0x80000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40000) != 0)
  {
    if ((v4 & 0x40000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20000) != 0)
  {
    if ((v4 & 0x20000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10000) != 0)
  {
    if ((v4 & 0x10000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v4 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000) != 0)
  {
    if ((v4 & 0x8000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000) != 0)
  {
    if ((v4 & 0x4000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000) != 0)
  {
    if ((v4 & 0x2000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100000) != 0)
  {
    if ((v4 & 0x100000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x100) != 0)
  {
    if ((v4 & 0x100) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000000) != 0)
  {
    if ((v4 & 0x1000000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((v4 & 0x20) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v4 & 0x20) != 0)
  {
    return 0;
  }

  if ((v3 & 8) != 0)
  {
    if ((v4 & 8) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v4 & 8) != 0)
  {
    return 0;
  }

  if ((v3 & 0x2000000) != 0)
  {
    if ((v4 & 0x2000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v4 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000000) != 0)
  {
    if ((v4 & 0x4000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v4 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x8000000) != 0)
  {
    if ((v4 & 0x8000000) == 0 || *(a1 + 204) != *(a2 + 204))
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x800) != 0)
  {
    if ((v4 & 0x800) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v4 & 0x800) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    if ((v4 & 0x80) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  if ((v3 & 2) != 0)
  {
    if ((v4 & 2) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v4 & 2) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40000000) != 0)
  {
    if ((v4 & 0x40000000) == 0 || *(a1 + 210) != *(a2 + 210))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x1000) != 0)
  {
    if ((v4 & 0x1000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v4 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200) != 0)
  {
    if ((v4 & 0x200) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200) != 0)
  {
    return 0;
  }

  if ((v3 & 0x40) != 0)
  {
    if ((v4 & 0x40) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    return 0;
  }

  if ((v3 & 0x200000) != 0)
  {
    if ((v4 & 0x200000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v4 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x400) != 0)
  {
    if ((v4 & 0x400) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v4 & 0x400) != 0)
  {
    return 0;
  }

  v16 = (v4 & 0x800000) == 0;
  if ((v3 & 0x800000) != 0)
  {
    return (v4 & 0x800000) != 0 && *(a1 + 188) == *(a2 + 188);
  }

  return v16;
}

BOOL CMMsl::RelDMInSystemConfig::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  result = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

BOOL CMMsl::JointLinkModelPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionPose::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::ModelBasedBioMotionClassification::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionClassification::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::MLBasedBioMotionClassification::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionClassification::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::JointLinkModelPredictedPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionPredictedPose::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::PressureCompensated::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Pressure::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::VO2MaxOutput::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 72);
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

  if ((*(a1 + 72) & 0x100) != 0)
  {
    if ((*(a2 + 72) & 0x100) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 0x100) != 0)
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

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 64) == *(a2 + 64);
  }

  return v4;
}

BOOL CMMsl::MagneticAccessoryType1::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

LABEL_25:
  result = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

BOOL CMMsl::MagneticAccessoryType2::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL CMMsl::PressureCalibration::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 0x20) != 0)
  {
    if ((*(a2 + 32) & 0x20) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

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

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 4) == 0;
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*(a2 + 32) & 4) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::WorkoutRecorderMagnetometer::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Magnetometer::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderCompassCalibration::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::CompassCalibration::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::RawAudio::operator==(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 8;
  v5 = *(a2 + 8);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

BOOL CMMsl::ODTPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
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

  if (v4 == v3)
  {
    return 1;
  }

  v6 = v4 + 8;
  do
  {
    v7 = *v5++;
    result = *(v6 - 8) == v7;
    v9 = *(v6 - 8) != v7 || v6 == v3;
    v6 += 8;
  }

  while (!v9);
  return result;
}

BOOL CMMsl::PencilTipForce::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PencilTouch::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a2 + 88);
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

  if ((*(a1 + 88) & 0x100) != 0)
  {
    if ((*(a2 + 88) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x100) != 0)
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

  if ((*(a1 + 88) & 0x400) != 0)
  {
    if ((*(a2 + 88) & 0x400) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x200) != 0)
  {
    if ((*(a2 + 88) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x200) != 0)
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

  v4 = (v3 & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

BOOL CMMsl::Timestamp::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::WalkingSteadinessClassification::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 244);
  v3 = *(a2 + 244);
  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 80) != *(a2 + 80))
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
    if ((v3 & 0x80) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 220) != *(a2 + 220))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 228) != *(a2 + 228))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 241) != *(a2 + 241))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 232) != *(a2 + 232))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 242) != *(a2 + 242))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 238) != *(a2 + 238))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
  if (v4)
  {
    if (!v5 || !CMMsl::SteadinessEvent::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 239) != *(a2 + 239))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 237) != *(a2 + 237))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 120);
  v7 = *(a2 + 120);
  if (v6)
  {
    if (!v7 || !CMMsl::SteadinessModelResult::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 112);
  v9 = *(a2 + 112);
  if (v8)
  {
    if (!v9 || !CMMsl::SteadinessModelGaitBaselineFeatures::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  if (v10)
  {
    if (!v11 || !CMMsl::SteadinessModelResult::operator==(v10, v11))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 96);
  v13 = *(a2 + 96);
  if (v12)
  {
    if (!v13 || !CMMsl::SteadinessModelContinuousWalkingFeatures::operator==(v12, v13))
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = *(a1 + 152);
  v15 = *(a2 + 152);
  if (v14)
  {
    if (!v15 || !CMMsl::SteadinessModelResult::operator==(v14, v15))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(a1 + 144);
  v17 = *(a2 + 144);
  if (v16)
  {
    if (!v17 || !CMMsl::SteadinessModelTemporalDispersionFeatures::operator==(v16, v17))
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(a1 + 168);
  v19 = *(a2 + 168);
  if (v18)
  {
    if (!v19 || !CMMsl::SteadinessModelResult::operator==(v18, v19))
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(a1 + 160);
  v21 = *(a2 + 160);
  if (v20)
  {
    if (!v21 || !CMMsl::SteadinessModelTemporalEntropyFeatures::operator==(v20, v21))
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 236) != *(a2 + 236))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  v22 = *(a1 + 88);
  v23 = *(a2 + 88);
  if (v22)
  {
    if (!v23 || !CMMsl::SteadinessModelBalanceFeatures::operator==(v22, v23))
    {
      return 0;
    }
  }

  else if (v23)
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

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 224) != *(a2 + 224))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 240) != *(a2 + 240))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
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

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 212) != *(a2 + 212))
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
    if ((v3 & 0x2000) == 0 || *(a1 + 208) != *(a2 + 208))
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

  v24 = *(a1 + 136);
  v25 = *(a2 + 136);
  if (v24)
  {
    if (!v25 || !CMMsl::SteadinessModelResult::operator==(v24, v25))
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = *(a2 + 128);
  result = v26 == 0;
  if (!*(a1 + 128))
  {
    return result;
  }

  return v26 && CMMsl::SteadinessModelHarmonicFeatures::operator==(*(a1 + 128), v26);
}

BOOL CMMsl::SteadinessModelResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  v3 = *(a2 + 52);
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

  if ((v2 & v3 & 0x80) != 0)
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x80) != 0)
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
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

BOOL CMMsl::SteadinessEvent::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 60) & 0x200) != 0)
  {
    if ((*(a2 + 60) & 0x200) == 0 || *(a1 + 55) != *(a2 + 55))
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
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
    if ((v3 & 0x80) == 0 || *(a1 + 53) != *(a2 + 53))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 54) != *(a2 + 54))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
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

  v4 = (v3 & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

BOOL CMMsl::SteadinessModelGaitBaselineFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a2 + 88);
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

  if ((*(a1 + 88) & 0x200) != 0)
  {
    if ((*(a2 + 88) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x100) != 0)
  {
    if ((*(a2 + 88) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x100) != 0)
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

  v4 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v4;
}

BOOL CMMsl::SteadinessModelContinuousWalkingFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v3 = *(a2 + 176);
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

  v4 = (*(a2 + 176) & 0x1000) == 0;
  if ((v2 & 0x1000) != 0)
  {
    return (v3 & 0x1000) != 0 && *(a1 + 104) == *(a2 + 104);
  }

  return v4;
}

BOOL CMMsl::SteadinessModelTemporalDispersionFeatures::operator==(uint64_t a1, uint64_t a2)
{
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

  v2 = (*(a2 + 40) & 1) == 0;
  if (*(a1 + 40))
  {
    return (*(a2 + 40) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::SteadinessModelTemporalEntropyFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  v3 = *(a2 + 216);
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

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
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

  v4 = (*(a2 + 216) & 0x1000) == 0;
  if ((v2 & 0x1000) != 0)
  {
    return (v3 & 0x1000) != 0 && *(a1 + 104) == *(a2 + 104);
  }

  return v4;
}

BOOL CMMsl::SteadinessModelBalanceFeatures::operator==(uint64_t a1, uint64_t a2)
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

  v2 = (*(a2 + 40) & 8) == 0;
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*(a2 + 40) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

BOOL CMMsl::MagnetometerReset::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
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

  if ((*(a1 + 44) & 0x40) != 0)
  {
    if ((*(a2 + 44) & 0x40) == 0 || *(a1 + 42) != *(a2 + 42))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x40) != 0)
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

  v2 = (*(a2 + 44) & 0x20) == 0;
  if ((*(a1 + 44) & 0x20) != 0)
  {
    return (*(a2 + 44) & 0x20) != 0 && *(a1 + 41) == *(a2 + 41);
  }

  return v2;
}

BOOL CMMsl::WorkoutRecorderWatchOnWristStatus::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::WatchOnWristState::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::LiftToWakeOnHeadStatus::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::StepCountEntryAddition::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 72);
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

  if ((*(a1 + 72) & 0x200) != 0)
  {
    if ((*(a2 + 72) & 0x200) == 0 || *(a1 + 69) != *(a2 + 69))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 0x200) != 0)
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

  if ((*(a1 + 72) & 0x400) != 0)
  {
    if ((*(a2 + 72) & 0x400) == 0 || *(a1 + 70) != *(a2 + 70))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 0x400) != 0)
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

  v4 = (v3 & 0x100) == 0;
  if ((*(a1 + 72) & 0x100) != 0)
  {
    return (*(a2 + 72) & 0x100) != 0 && *(a1 + 68) == *(a2 + 68);
  }

  return v4;
}

BOOL CMMsl::StepDistanceFusionResult::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !CMMsl::StepCountEntry::operator==(v4, v5) && *(a1 + 16) | *(a2 + 16))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7 || !CMMsl::StepCountEntryAddition::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 100);
  v9 = *(a2 + 100);
  if (v8)
  {
    if ((v9 & 1) == 0 || *(a1 + 24) != *(a2 + 24))
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
    if ((v9 & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v9 & 2) != 0)
  {
    return 0;
  }

  if ((v8 & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    return 0;
  }

  if ((v8 & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    return 0;
  }

  if ((v8 & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    return 0;
  }

  if ((v8 & 4) != 0)
  {
    if ((v9 & 4) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v9 & 4) != 0)
  {
    return 0;
  }

  if ((v8 & 8) != 0)
  {
    if ((v9 & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v9 & 8) != 0)
  {
    return 0;
  }

  if ((v8 & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 100) & 0x400) != 0)
  {
    if ((*(a2 + 100) & 0x400) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((*(a2 + 100) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 100) & 0x200) != 0)
  {
    if ((*(a2 + 100) & 0x200) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((*(a2 + 100) & 0x200) != 0)
  {
    return 0;
  }

  result = (v9 & 0x100) == 0;
  if ((*(a1 + 100) & 0x100) == 0)
  {
    return result;
  }

  return (*(a2 + 100) & 0x100) != 0 && *(a1 + 88) == *(a2 + 88);
}

BOOL CMMsl::LockScreenStatus::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL CMMsl::PowerManagementUserActivity::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(a2 + 16) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL CMMsl::LiftToWakeState::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::ViewObstructedState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84);
  v3 = *(a2 + 84);
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

  v4 = (v3 & 0x40000) == 0;
  if ((v2 & 0x40000) != 0)
  {
    return (v3 & 0x40000) != 0 && *(a1 + 81) == *(a2 + 81);
  }

  return v4;
}

BOOL CMMsl::RunningFormMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(a2 + 224);
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

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 220) != *(a2 + 220))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
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

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 217) != *(a2 + 217))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
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

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 221) != *(a2 + 221))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
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

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 218) != *(a2 + 218))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
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

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 204) != *(a2 + 204))
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
    if ((v3 & 0x10000000) == 0 || *(a1 + 212) != *(a2 + 212))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
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

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
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

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 219) != *(a2 + 219))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
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

  v4 = (*(a2 + 224) & 0x400) == 0;
  if ((v2 & 0x400) != 0)
  {
    return (v3 & 0x400) != 0 && *(a1 + 88) == *(a2 + 88);
  }

  return v4;
}

BOOL CMMsl::WorkoutRecorderWorkoutSessionPriors::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return *(a2 + 8) == 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0;
  }

  if (sub_10029DC24((v3 + 8), v4 + 8))
  {
    return 1;
  }

  return !*(a1 + 8) && *(a2 + 8) == 0;
}

BOOL CMMsl::PDRImpulse::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::PocketDetectionPacket::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84);
  v3 = *(a2 + 84);
  if ((v2 & 0x200) != 0)
  {
    if ((*(a2 + 84) & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 84) & 0x200) != 0)
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

  if ((*(a1 + 84) & 0x400) != 0)
  {
    if ((*(a2 + 84) & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 84) & 0x400) != 0)
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

  if ((*(a1 + 84) & 0x100) != 0)
  {
    if ((*(a2 + 84) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 84) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

BOOL CMMsl::LiftToWakeFeaturesNeo::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 0x10) == 0;
  if ((*(a1 + 40) & 0x10) != 0)
  {
    return (*(a2 + 40) & 0x10) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v2;
}

BOOL CMMsl::LiftToWakeStatusNeo::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
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

  if ((*(a1 + 64) & 0x800) != 0)
  {
    if ((*(a2 + 64) & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
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
    if ((*(a2 + 64) & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x400) != 0)
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

  if ((*(a1 + 64) & 0x1000) != 0)
  {
    if ((*(a2 + 64) & 0x1000) == 0 || *(a1 + 61) != *(a2 + 61))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x1000) != 0)
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

  if ((*(a1 + 64) & 0x100) != 0)
  {
    if ((*(a2 + 64) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x100) != 0)
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

  v4 = (v3 & 0x200) == 0;
  if ((*(a1 + 64) & 0x200) != 0)
  {
    return (*(a2 + 64) & 0x200) != 0 && *(a1 + 52) == *(a2 + 52);
  }

  return v4;
}

BOOL CMMsl::RunningPower::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v3 = *(a2 + 128);
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

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
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

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 123) != *(a2 + 123))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
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

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 125) != *(a2 + 125))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 121) != *(a2 + 121))
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
    if ((v3 & 0x8000) == 0 || *(a1 + 116) != *(a2 + 116))
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
    if ((v3 & 0x10000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 122) != *(a2 + 122))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 128) & 0x4000) == 0;
  if ((v2 & 0x4000) != 0)
  {
    return (v3 & 0x4000) != 0 && *(a1 + 112) == *(a2 + 112);
  }

  return v4;
}

BOOL CMMsl::MotionContextActivity::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v4 == 0;
  if (v3)
  {
    return v4 && CMMsl::PDRImpulse::operator==(v3, v4);
  }

  return result;
}