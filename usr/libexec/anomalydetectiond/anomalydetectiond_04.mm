void CLKappaDeescalatorWaterProxy::updateWithRoadInfo(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 96))
  {
    if (*(a1 + 101) == 1)
    {
      if (qword_1004567F8 != -1)
      {
        sub_10005773C();
      }

      v9 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
      {
        return;
      }

      LOWORD(v15) = 0;
      v5 = "[de-WP] road info determined, exiting";
      goto LABEL_11;
    }

    v10 = *(a1 + 96);
    if (*(a2 + 24))
    {
      if (*(a1 + 96))
      {
        if (*(a2 + 8) <= *(a1 + 80))
        {
          if (qword_1004567F8 != -1)
          {
            sub_10005773C();
          }

          v14 = qword_100456800;
          if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[de-WP] roads nearby", &v15, 2u);
          }

          v13 = 257;
          goto LABEL_33;
        }

        if (qword_1004567F8 != -1)
        {
          sub_10005773C();
        }

        v11 = qword_100456800;
        if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
        {
LABEL_27:
          v13 = 256;
LABEL_33:
          *(a1 + 100) = v13;
          return;
        }

        LOWORD(v15) = 0;
        v12 = "[de-WP] no roads nearby";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, &v15, 2u);
        goto LABEL_27;
      }
    }

    else if (*(a1 + 96))
    {
      if ((*(a1 + 85) & 1) == 0)
      {
        if (qword_1004567F8 != -1)
        {
          sub_10005773C();
        }

        v9 = qword_100456800;
        if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
        {
          return;
        }

        LOWORD(v15) = 0;
        v5 = "[de-WP] no road info, ambiguous";
LABEL_11:
        v6 = v9;
        v7 = 2;
        goto LABEL_12;
      }

      if (qword_1004567F8 != -1)
      {
        sub_10005773C();
      }

      v11 = qword_100456800;
      if (!os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      LOWORD(v15) = 0;
      v12 = "[de-WP] empty road list, not near road";
      goto LABEL_26;
    }

    sub_100005BF0();
  }

  if (qword_1004567F8 != -1)
  {
    sub_10005773C();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 96);
    v15 = 134217984;
    v16 = v4;
    v5 = "[de-WP] rejecting road info with error = %ld";
    v6 = v3;
    v7 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, &v15, v7);
  }
}

void CLKappaDeescalatorWaterProxy::updateWithTrigger(CLKappaDeescalatorWaterProxy *this, const TriggerSample *a2)
{
  if (a2->btHint == 1)
  {
    v7 = v2;
    v8 = v3;
    if (qword_1004567F8 != -1)
    {
      sub_10005773C();
    }

    v5 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[de-WP] btHint is set", v6, 2u);
    }

    *(this + 51) = 257;
  }
}

uint64_t CLKappaDeescalatorWaterProxy::onEvaluateFollowingEscalation(CLKappaDeescalatorWaterProxy *this)
{
  if ((*(this + 96) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (*(this + 72))
  {
    if (*(this + 103) == 1 && *(this + 102) == 1)
    {
      if (qword_1004567F8 != -1)
      {
        sub_10005773C();
      }

      v1 = qword_100456800;
      v2 = 1;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
      {
        v20 = 0;
        v3 = "[de-WP] bt hint set, nothing to do";
        v4 = &v20;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, v3, v4, 2u);
        return v2;
      }

      return v2;
    }

    if (*(this + 105) != 1 || (*(this + 104) & 1) == 0)
    {
      if (qword_1004567F8 != -1)
      {
        sub_10005773C();
      }

      v1 = qword_100456800;
      v2 = 1;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v3 = "[de-WP] dem condition not met";
        v4 = buf;
        goto LABEL_23;
      }

      return v2;
    }

    if (*(this + 101))
    {
      v5 = *(this + 100);
      v6 = sub_100056EBC();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v5 == 1)
      {
        if (v7)
        {
          v16 = 0;
          v8 = "[de-WP] roads nearby, done";
          v9 = &v16;
LABEL_28:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, v9, 2u);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if (v7)
      {
        v15 = 0;
        v13 = "[de-WP] no roads nearby, deescalate";
        v14 = &v15;
LABEL_34:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v13, v14, 2u);
      }
    }

    else
    {
      v11 = *(this + 84);
      v6 = sub_100056EBC();
      v12 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v11 == 1)
      {
        if (v12)
        {
          *v18 = 0;
          v8 = "[de-WP] no road information available, confirmation required";
          v9 = v18;
          goto LABEL_28;
        }

LABEL_29:

        return 1;
      }

      if (v12)
      {
        *v17 = 0;
        v13 = "[de-WP] no road information available, de-escalating";
        v14 = v17;
        goto LABEL_34;
      }
    }

    return 4;
  }

  if (qword_1004567F8 != -1)
  {
    sub_10005773C();
  }

  v1 = qword_100456800;
  v2 = 1;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v21 = 0;
    v3 = "[de-WP] water proxy disabled";
    v4 = &v21;
    goto LABEL_23;
  }

  return v2;
}

void sub_1000576C0(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_1000576F8(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_100057A40(id a1)
{
  qword_1004568B0 = os_log_create("com.apple.anomalydetectiond", "CoreAnalytics");

  _objc_release_x1();
}

void KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(KappaCompanionDeviceInfo *this)
{
  *this = off_10041B020;
  *(this + 1) = 0;
  *(this + 12) = 0;
}

{
  *this = off_10041B020;
  *(this + 1) = 0;
  *(this + 12) = 0;
}

void KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(KappaCompanionDeviceInfo *this)
{
  *this = off_10041B020;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  PB::Base::~Base(this);
}

{
  KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(this);

  operator delete();
}

void KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(KappaCompanionDeviceInfo *this, const KappaCompanionDeviceInfo *a2)
{
  *this = off_10041B020;
  *(this + 1) = 0;
  *(this + 12) = 0;
  if (*(a2 + 48))
  {
    v2 = *(a2 + 4);
    *(this + 48) = 1;
    *(this + 4) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 48);
  if ((v3 & 8) != 0)
  {
    v5 = *(a2 + 7);
    *(this + 48) |= 8u;
    *(this + 7) = v5;
    v3 = *(a2 + 48);
    if ((v3 & 0x40) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a2 + 48) & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(a2 + 10);
  *(this + 48) |= 0x40u;
  *(this + 10) = v6;
  v3 = *(a2 + 48);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(a2 + 8);
  *(this + 48) |= 0x10u;
  *(this + 8) = v7;
  v3 = *(a2 + 48);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 11);
  *(this + 48) |= 0x80u;
  *(this + 11) = v8;
  v3 = *(a2 + 48);
  if ((v3 & 4) == 0)
  {
LABEL_10:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 6);
  *(this + 48) |= 4u;
  *(this + 6) = v9;
  v3 = *(a2 + 48);
  if ((v3 & 0x20) == 0)
  {
LABEL_11:
    if ((v3 & 2) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_19:
  v10 = *(a2 + 9);
  *(this + 48) |= 0x20u;
  *(this + 9) = v10;
  if ((*(a2 + 48) & 2) == 0)
  {
    return;
  }

LABEL_12:
  v4 = *(a2 + 5);
  *(this + 48) |= 2u;
  *(this + 5) = v4;
}

uint64_t KappaCompanionDeviceInfo::operator=(uint64_t a1, const KappaCompanionDeviceInfo *a2)
{
  if (a1 != a2)
  {
    KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(v9, a2);
    v3 = v12;
    v5 = *(a1 + 16);
    v4 = *(a1 + 32);
    *(a1 + 16) = v11;
    *(a1 + 32) = v3;
    v6 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v12 = v4;
    v11 = v5;
    KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(v9);
  }

  return a1;
}

uint64_t swap(uint64_t result, KappaCompanionDeviceInfo *a2)
{
  v2 = *(result + 48);
  *(result + 48) = *(a2 + 12);
  *(a2 + 12) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(result + 8);
  *(result + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(result + 28);
  *(result + 28) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(result + 40);
  *(result + 40) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(result + 32);
  *(result + 32) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(result + 44);
  *(result + 44) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(result + 24);
  *(result + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(result + 36);
  *(result + 36) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(result + 20);
  *(result + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  return result;
}

uint64_t KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041B020;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_100011018(v4, v6);
  }

  *(a1 + 28) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t KappaCompanionDeviceInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    KappaCompanionDeviceInfo::KappaCompanionDeviceInfo(v9, a2);
    v3 = v12;
    v5 = *(a1 + 16);
    v4 = *(a1 + 32);
    *(a1 + 16) = v11;
    *(a1 + 32) = v3;
    v6 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v12 = v4;
    v11 = v5;
    KappaCompanionDeviceInfo::~KappaCompanionDeviceInfo(v9);
  }

  return a1;
}

uint64_t KappaCompanionDeviceInfo::formatText(KappaCompanionDeviceInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "deviceHardware", *(this + 4));
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "enableMode", *(this + 5));
    v5 = *(this + 48);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 48) & 4) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "kappaArmedSeconds", *(this + 6));
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "kappaDeviceType", *(this + 7));
  v5 = *(this + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "kappaTokenCount", *(this + 8));
  v5 = *(this + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    PB::TextFormatter::format(a2, "martyDeviceType", *(this + 10));
    if ((*(this + 48) & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "martyArmedSeconds", *(this + 9));
  v5 = *(this + 48);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "martyTokenCount", *(this + 11));
LABEL_12:

  return PB::TextFormatter::endObject(a2);
}

uint64_t KappaCompanionDeviceInfo::readFrom(KappaCompanionDeviceInfo *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_193;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(this + 48) |= 8u;
            v60 = *(a2 + 1);
            v59 = *(a2 + 2);
            v61 = *a2;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v113 = 0;
              v114 = 0;
              v64 = 0;
              v17 = v59 >= v60;
              v115 = v59 - v60;
              if (!v17)
              {
                v115 = 0;
              }

              v116 = (v61 + v60);
              v117 = v60 + 1;
              while (1)
              {
                if (!v115)
                {
                  LODWORD(v64) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_176;
                }

                v118 = *v116;
                *(a2 + 1) = v117;
                v64 |= (v118 & 0x7F) << v113;
                if ((v118 & 0x80) == 0)
                {
                  break;
                }

                v113 += 7;
                --v115;
                ++v116;
                ++v117;
                v14 = v114++ > 8;
                if (v14)
                {
LABEL_124:
                  LODWORD(v64) = 0;
                  goto LABEL_176;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(a2 + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v14 = v63++ > 8;
                if (v14)
                {
                  goto LABEL_124;
                }
              }
            }

LABEL_176:
            *(this + 7) = v64;
            goto LABEL_189;
          }

          if (v22 == 4)
          {
            *(this + 48) |= 0x40u;
            v33 = *(a2 + 1);
            v32 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v95 = 0;
              v96 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v97 = v32 - v33;
              if (!v17)
              {
                v97 = 0;
              }

              v98 = (v34 + v33);
              v99 = v33 + 1;
              while (1)
              {
                if (!v97)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_167;
                }

                v100 = *v98;
                *(a2 + 1) = v99;
                v37 |= (v100 & 0x7F) << v95;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v95 += 7;
                --v97;
                ++v98;
                ++v99;
                v14 = v96++ > 8;
                if (v14)
                {
LABEL_100:
                  LODWORD(v37) = 0;
                  goto LABEL_167;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(a2 + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  goto LABEL_100;
                }
              }
            }

LABEL_167:
            *(this + 10) = v37;
            goto LABEL_189;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(this + 48) |= 1u;
            v51 = *(a2 + 1);
            v50 = *(a2 + 2);
            v52 = *a2;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v107 = 0;
              v108 = 0;
              v55 = 0;
              v17 = v50 >= v51;
              v109 = v50 - v51;
              if (!v17)
              {
                v109 = 0;
              }

              v110 = (v52 + v51);
              v111 = v51 + 1;
              while (1)
              {
                if (!v109)
                {
                  LODWORD(v55) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_173;
                }

                v112 = *v110;
                *(a2 + 1) = v111;
                v55 |= (v112 & 0x7F) << v107;
                if ((v112 & 0x80) == 0)
                {
                  break;
                }

                v107 += 7;
                --v109;
                ++v110;
                ++v111;
                v14 = v108++ > 8;
                if (v14)
                {
LABEL_116:
                  LODWORD(v55) = 0;
                  goto LABEL_173;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v55) = 0;
              }
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = (v52 + v51);
              v57 = v51 + 1;
              while (1)
              {
                *(a2 + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v14 = v54++ > 8;
                if (v14)
                {
                  goto LABEL_116;
                }
              }
            }

LABEL_173:
            *(this + 4) = v55;
            goto LABEL_189;
          }

          if (v22 == 2)
          {
            operator new();
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(this + 48) |= 0x10u;
          v78 = *(a2 + 1);
          v77 = *(a2 + 2);
          v79 = *a2;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v77)
          {
            v125 = 0;
            v126 = 0;
            v82 = 0;
            v17 = v77 >= v78;
            v127 = v77 - v78;
            if (!v17)
            {
              v127 = 0;
            }

            v128 = (v79 + v78);
            v129 = v78 + 1;
            while (1)
            {
              if (!v127)
              {
                LODWORD(v82) = 0;
                *(a2 + 24) = 1;
                goto LABEL_182;
              }

              v130 = *v128;
              *(a2 + 1) = v129;
              v82 |= (v130 & 0x7F) << v125;
              if ((v130 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              --v127;
              ++v128;
              ++v129;
              v14 = v126++ > 8;
              if (v14)
              {
LABEL_140:
                LODWORD(v82) = 0;
                goto LABEL_182;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v82) = 0;
            }
          }

          else
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = (v79 + v78);
            v84 = v78 + 1;
            while (1)
            {
              *(a2 + 1) = v84;
              v85 = *v83++;
              v82 |= (v85 & 0x7F) << v80;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              ++v84;
              v14 = v81++ > 8;
              if (v14)
              {
                goto LABEL_140;
              }
            }
          }

LABEL_182:
          *(this + 8) = v82;
          goto LABEL_189;
        }

        if (v22 == 6)
        {
          *(this + 48) |= 0x80u;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v101 = 0;
            v102 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v103 = v41 - v42;
            if (!v17)
            {
              v103 = 0;
            }

            v104 = (v43 + v42);
            v105 = v42 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_170;
              }

              v106 = *v104;
              *(a2 + 1) = v105;
              v46 |= (v106 & 0x7F) << v101;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              ++v105;
              v14 = v102++ > 8;
              if (v14)
              {
LABEL_108:
                LODWORD(v46) = 0;
                goto LABEL_170;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                goto LABEL_108;
              }
            }
          }

LABEL_170:
          *(this + 11) = v46;
          goto LABEL_189;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 48) |= 4u;
            v69 = *(a2 + 1);
            v68 = *(a2 + 2);
            v70 = *a2;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v68)
            {
              v119 = 0;
              v120 = 0;
              v73 = 0;
              v17 = v68 >= v69;
              v121 = v68 - v69;
              if (!v17)
              {
                v121 = 0;
              }

              v122 = (v70 + v69);
              v123 = v69 + 1;
              while (1)
              {
                if (!v121)
                {
                  LODWORD(v73) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_179;
                }

                v124 = *v122;
                *(a2 + 1) = v123;
                v73 |= (v124 & 0x7F) << v119;
                if ((v124 & 0x80) == 0)
                {
                  break;
                }

                v119 += 7;
                --v121;
                ++v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
LABEL_132:
                  LODWORD(v73) = 0;
                  goto LABEL_179;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                *(a2 + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  goto LABEL_132;
                }
              }
            }

LABEL_179:
            *(this + 6) = v73;
            goto LABEL_189;
          case 8:
            *(this + 48) |= 0x20u;
            v87 = *(a2 + 1);
            v86 = *(a2 + 2);
            v88 = *a2;
            if (v87 > 0xFFFFFFFFFFFFFFF5 || v87 + 10 > v86)
            {
              v137 = 0;
              v138 = 0;
              v91 = 0;
              v17 = v86 >= v87;
              v139 = v86 - v87;
              if (!v17)
              {
                v139 = 0;
              }

              v140 = (v88 + v87);
              v141 = v87 + 1;
              while (1)
              {
                if (!v139)
                {
                  LODWORD(v91) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_188;
                }

                v142 = *v140;
                *(a2 + 1) = v141;
                v91 |= (v142 & 0x7F) << v137;
                if ((v142 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
LABEL_156:
                  LODWORD(v91) = 0;
                  goto LABEL_188;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              v89 = 0;
              v90 = 0;
              v91 = 0;
              v92 = (v88 + v87);
              v93 = v87 + 1;
              while (1)
              {
                *(a2 + 1) = v93;
                v94 = *v92++;
                v91 |= (v94 & 0x7F) << v89;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v89 += 7;
                ++v93;
                v14 = v90++ > 8;
                if (v14)
                {
                  goto LABEL_156;
                }
              }
            }

LABEL_188:
            *(this + 9) = v91;
            goto LABEL_189;
          case 9:
            *(this + 48) |= 2u;
            v24 = *(a2 + 1);
            v23 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v131 = 0;
              v132 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v133 = v23 - v24;
              if (!v17)
              {
                v133 = 0;
              }

              v134 = (v25 + v24);
              v135 = v24 + 1;
              while (1)
              {
                if (!v133)
                {
                  LODWORD(v28) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_185;
                }

                v136 = *v134;
                *(a2 + 1) = v135;
                v28 |= (v136 & 0x7F) << v131;
                if ((v136 & 0x80) == 0)
                {
                  break;
                }

                v131 += 7;
                --v133;
                ++v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
LABEL_148:
                  LODWORD(v28) = 0;
                  goto LABEL_185;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(a2 + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_148;
                }
              }
            }

LABEL_185:
            *(this + 5) = v28;
            goto LABEL_189;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v144 = 0;
        return v144 & 1;
      }

LABEL_189:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_193:
  v144 = v4 ^ 1;
  return v144 & 1;
}

uint64_t KappaCompanionDeviceInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 48))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 16), 1u);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 28), 3u);
    v4 = *(v3 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_7:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v3 + 48) & 0x40) == 0)
  {
    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 4u);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 6u);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    this = PB::Writer::writeVarInt(a2, *(v3 + 36), 8u);
    if ((*(v3 + 48) & 2) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 7u);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_19:
  v5 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2, v5, 9u);
}

BOOL KappaCompanionDeviceInfo::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 16) != *(a2 + 16))
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
    if (!v7)
    {
      return 0;
    }

    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = *(v7 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v7 + 8);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? *(a1 + 8) : *v6;
    v13 = v11 >= 0 ? *(a2 + 8) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  if ((v4 & v5 & 0x80) != 0)
  {
    if (*(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if (((v4 | v5) & 0x80) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    return 0;
  }

  if ((v5 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

LABEL_54:
  result = (v5 & 2) == 0;
  if ((v4 & 2) != 0)
  {
    return (v5 & 2) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

unint64_t KappaCompanionDeviceInfo::hash_value(KappaCompanionDeviceInfo *this)
{
  v2 = *(this + 48);
  if (v2)
  {
    v3 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = sub_100011074(&v14, v4);
    v2 = *(this + 48);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((v2 & 8) == 0)
    {
LABEL_6:
      v6 = 0;
      if ((v2 & 0x40) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  v6 = *(this + 7);
  if ((v2 & 0x40) != 0)
  {
LABEL_7:
    v7 = *(this + 10);
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_8:
    v8 = *(this + 8);
    if (v2 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if (v2 < 0)
  {
LABEL_9:
    v9 = *(this + 11);
    if ((v2 & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_10:
    v10 = *(this + 6);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v11 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v12 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_18:
  v10 = 0;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = *(this + 9);
  if ((v2 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v12 = *(this + 5);
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

void sub_100059410(id a1)
{
  qword_100456810 = os_log_create("com.apple.anomalydetectiond", "AOP");

  _objc_release_x1();
}

void CLKappaAlgBlock::CLKappaAlgBlock(CLKappaAlgBlock *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 152)) = a2[1];
  *(this + *(*this - 160)) = a2[2];
  *(this + *(*this - 168)) = a2[3];
  *(this + *(*this - 176)) = a2[4];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 1;
}

void CLKappaAlgBlock::~CLKappaAlgBlock(CLKappaAlgBlock *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 152)) = a2[1];
  *(this + *(*this - 160)) = a2[2];
  *(this + *(*this - 168)) = a2[3];
  *(this + *(*this - 176)) = a2[4];
  v3 = *(this + 2);
  if (v3)
  {
    sub_100009A48(v3);
  }
}

void CLKappaFeaturesAlgSpinResult::reset(CLKappaFeaturesAlgSpinResult *this)
{
  v3 = (this + 104);
  v2 = *(this + 13);
  *(v3 - 96) = 0;
  *(v3 - 23) = 0;
  *(v3 - 10) = 0;
  *(v3 - 72) = 0;
  *(v3 - 17) = 2143289344;
  *(v3 - 64) = 0;
  *(v3 - 7) = 0;
  *(v3 - 6) = 0;
  *(v3 - 5) = 2143289344;
  *(v3 - 8) = 0;
  *(v3 - 3) = 0;
  *(v3 - 2) = 0;
  *(v3 - 1) = 0x7FC0000000000000;
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v4 = *(this + 16);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 25);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  if (v7)
  {
    *(this + 26) = v7;
    operator delete(v7);
  }

  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
}

double CLKappaFeaturesAlgSpinResult::log(CLKappaFeaturesAlgSpinResult *this)
{
  if (qword_1004567F8 != -1)
  {
    sub_10005D8C8();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 32);
    v5 = *(this + 3);
    v6 = *(this + 9);
    v7 = *(this + 40);
    v8 = *(this + 6);
    v9 = *(this + 7);
    v10 = *(this + 16);
    v11 = *(this + 17);
    v12 = *(this + 18);
    v13 = *(this + 10);
    v14 = *(this + 11);
    v15 = *(this + 24);
    v16 = *(this + 25);
    v17 = *(this + 4);
    v18 = *(this + 5);
    v19[0] = 67243776;
    v19[1] = v4;
    v20 = 2050;
    v21 = v5;
    v22 = 2050;
    v23 = v6;
    v24 = 1026;
    v25 = v7;
    v26 = 2050;
    v27 = v8;
    v28 = 2050;
    v29 = v9;
    v30 = 2050;
    v31 = v10;
    v32 = 2050;
    v33 = v11;
    v34 = 2050;
    v35 = v12;
    v36 = 2050;
    v37 = v13;
    v38 = 2050;
    v39 = v14;
    v40 = 1026;
    v41 = v15;
    v42 = 2050;
    v43 = v16;
    v44 = 2050;
    v45 = v17;
    v46 = 2050;
    v47 = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Spin] summary,%{public}d,A,%{public}llu,B,%{public}f,C,%{public}d,D,%{public}llu,E,%{public}llu,F,%{public}f,G,%{public}f,H,%{public}f,debug-1,%{public}llu,debug-2,%{public}llu,debug-3,%{public}d,debug-4,%{public}f,config-1,%{public}f,config-2,%{public}f\n", v19, 0x8Cu);
  }

  return result;
}

void CLKappaFeaturesAlgSpin::CLKappaFeaturesAlgSpin(CLKappaFeaturesAlgSpin *this, uint64_t *a2)
{
  v4 = this + 4096;
  CLKappaAlgBlock::CLKappaAlgBlock(this, a2 + 1);
  v5 = *a2;
  *v6 = *a2;
  *(this + *(v5 - 152)) = a2[6];
  *(this + *(*this - 160)) = a2[7];
  *(this + *(*this - 168)) = a2[8];
  *(this + *(*this - 176)) = a2[9];
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 18) = 200;
  *(this + 76) = 1;
  *(this + 92) = 0xA00000000;
  *(this + 22) = 1031798784;
  *(this + 140) = 1;
  *(this + 156) = 0xA00000000;
  *(this + 38) = 1031798784;
  *(this + 204) = 1;
  *(this + 220) = 0xA00000000;
  *(this + 54) = 1031798784;
  *(this + 34) = 0;
  *(this + 70) = 200;
  *(this + 284) = 1;
  *(this + 76) = 200;
  *(this + 37) = 1031798784;
  *(this + 1108) = 1;
  *(this + 282) = 200;
  *(this + 140) = 1031798784;
  *(this + 1932) = 1;
  *(this + 488) = 200;
  *(this + 243) = 1031798784;
  *(this + 2760) = 0;
  *(this + 350) = 0;
  *(this + 2764) = 0u;
  *(this + 2780) = 0u;
  *(this + 702) = 200;
  *(this + 2812) = 1;
  *(this + 708) = 20;
  *(this + 353) = 1031798784;
  *(this + 2916) = 1;
  *(this + 734) = 20;
  *(this + 366) = 1031798784;
  *(this + 3020) = 1;
  *(this + 760) = 20;
  *(this + 379) = 1031798784;
  *(this + 391) = 0;
  *(this + 784) = 200;
  *(this + 3140) = 1;
  *(this + 790) = 100;
  *(this + 394) = 1031798784;
  *(this + 3564) = 1;
  *(this + 896) = 100;
  *(this + 447) = 1031798784;
  *(this + 3988) = 1;
  *(this + 1002) = 100;
  *(this + 500) = 1031798784;
  *(this + 552) = off_10041C3E0;
  *(this + 1106) = 99;
  *(this + 279) = 0u;
  *(this + 278) = 0u;
  *(this + 277) = 0u;
  *(this + 4488) = 0u;
  *(this + 560) = this + 4488;
  v4[420] = 0;
  v4[432] = 0;
  v4[436] = 0;
  *(this + 4568) = 0u;
  *(this + 4584) = 0u;
  *(this + 4536) = 0u;
  *(this + 4552) = 0u;
  sub_10005C5D8();
}

void sub_100059E68(_Unwind_Exception *a1)
{
  sub_10005C52C(v1 + 569);
  sub_100059F40(v3);
  v5 = *(v1 + 7);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(v1 + 5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_100059EB0@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
{
  result = *a1;
  {
    v6 = *(a1 + 8);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_100059F40(uint64_t a1)
{
  *a1 = off_10041C3E0;
  sub_10005C4D8(a1 + 64, *(a1 + 72));
  sub_10000EEA4((a1 + 16));
  return a1;
}

void CLKappaFeaturesAlgSpin::CLKappaFeaturesAlgSpin(CLKappaFeaturesAlgSpin *this)
{
  v1 = this + 4096;
  *this = off_100411FE8;
  *(this + 575) = off_100412090;
  *(this + 576) = off_100412158;
  *(this + 577) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(this, off_10041BD58);
  *v2 = off_10041B808;
  *(v2 + 4600) = off_10041BAC8;
  *(v2 + 4608) = off_10041BC10;
  *(v2 + 4616) = off_10041BD00;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = 200;
  *(v2 + 76) = 1;
  *(v2 + 92) = 0xA00000000;
  *(v2 + 88) = 1031798784;
  *(v2 + 140) = 1;
  *(v2 + 156) = 0xA00000000;
  *(v2 + 152) = 1031798784;
  *(v2 + 204) = 1;
  *(v2 + 220) = 0xA00000000;
  *(v2 + 216) = 1031798784;
  *(v2 + 272) = 0;
  *(v2 + 280) = 200;
  *(v2 + 284) = 1;
  *(v2 + 304) = 200;
  *(v2 + 296) = 1031798784;
  *(v2 + 1108) = 1;
  *(v2 + 1128) = 200;
  *(v2 + 1120) = 1031798784;
  *(v2 + 1932) = 1;
  *(v2 + 1952) = 200;
  *(v2 + 1944) = 1031798784;
  *(v2 + 2760) = 0;
  *(v2 + 2800) = 0;
  *(v2 + 2764) = 0u;
  *(v2 + 2780) = 0u;
  *(v2 + 2808) = 200;
  *(v2 + 2812) = 1;
  *(v2 + 2832) = 20;
  *(v2 + 2824) = 1031798784;
  *(v2 + 2916) = 1;
  *(v2 + 2932) = 0x1400000000;
  *(v2 + 2928) = 1031798784;
  *(v2 + 3020) = 1;
  *(v2 + 3040) = 20;
  *(v2 + 3032) = 1031798784;
  *(v2 + 3128) = 0;
  *(v2 + 3136) = 200;
  *(v2 + 3140) = 1;
  *(v2 + 3160) = 100;
  *(v2 + 3152) = 1031798784;
  *(v2 + 3564) = 1;
  *(v2 + 3584) = 100;
  *(v2 + 3576) = 1031798784;
  *(v2 + 3988) = 1;
  *(v2 + 4008) = 100;
  *(v2 + 4000) = 1031798784;
  *(v2 + 4416) = off_10041C3E0;
  *(v2 + 4424) = 99;
  *(v2 + 4432) = 0u;
  *(v2 + 4448) = 0u;
  *(v2 + 4464) = 0u;
  *(v2 + 4488) = 0u;
  *(v2 + 4480) = v2 + 4488;
  v1[420] = 0;
  v1[432] = 0;
  v1[436] = 0;
  *(v2 + 4568) = 0u;
  *(v2 + 4584) = 0u;
  *(v2 + 4536) = 0u;
  *(v2 + 4552) = 0u;
  sub_10005C5D8();
}

void sub_10005A2DC(_Unwind_Exception *a1)
{
  sub_10005C52C(v1 + 569);
  sub_100059F40(v2);
  v4 = *(v1 + 7);
  if (v4)
  {
    sub_100009A48(v4);
  }

  v5 = *(v1 + 5);
  if (v5)
  {
    sub_100009A48(v5);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_10041BD58);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgSpin::resetConfiguration(CLKappaFeaturesAlgSpin *this)
{
  v12 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgSpinConfig" forFeatureMode:*(this + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1138819072;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 10.0;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v12 withMinValue:v4 maxValue:v3 defaultValue:v5];
  *(*(this + 4) + 16) = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1167867904;
  LODWORD(v9) = 1133903872;
  LODWORD(v10) = 25.0;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v12 withMinValue:v10 maxValue:v8 defaultValue:v9];
  *(*(this + 4) + 20) = v11;
}

double CLKappaFeaturesAlgSpin::setConfig(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 16) = *a2;
  if (qword_1004567F8 != -1)
  {
    sub_10005D8C8();
  }

  v3 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v7 = *(v5 + 20);
    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Spin] config, %f, %f", &v8, 0x16u);
  }

  return result;
}

void CLKappaFeaturesAlgSpin::epochFinalize(CLKappaFeaturesAlgSpin *this, unint64_t a2)
{
  v4 = *(this + 4);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 36) = 2143289344;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 2143289344;
  *(v4 + 72) = 0;
  *(*(this + 4) + 24) = a2;
  v5 = *(*(this + 6) + 72);
  v6 = [v5 count];
  if (v6)
  {
    v7 = [v5 objectAtIndex:0];
    v8 = [v5 objectAtIndex:v6 - 1];
    *(*(this + 4) + 80) = [v7 timestamp];
    *(*(this + 4) + 88) = [v8 timestamp];
    v9 = [v5 objectAtIndex:0];
    v10 = *[v9 c_struct];
    v11 = *([v9 c_struct] + 1);
    v12 = *([v9 c_struct] + 2);
    v13.i32[0] = *([v9 c_struct] + 3);
    v48.i64[0] = __PAIR64__(v11, v10);
    v48.i64[1] = __PAIR64__(v13.u32[0], v12);
    CMOQuaternion::normalize(&v48, v13);
    v14 = CMOQuaternion::gravity(&v48);
    v45 = v15;
    v46 = v14;
    v44 = v16;
    [v9 timestamp];
    if (v6 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0.0;
      v20 = 0.0;
    }

    else
    {
      v42 = v7;
      v18 = 0;
      v17 = 0;
      v21 = 0.0;
      v22 = 1;
      v43 = 0.0;
      v24 = v45;
      v23 = v46;
      v25 = v44;
      do
      {
        v26 = v18;
        v18 = v9;

        v9 = [v5 objectAtIndex:v22];

        v27 = *[v9 c_struct];
        v28 = *([v9 c_struct] + 1);
        v29 = *([v9 c_struct] + 2);
        v30.i32[0] = *([v9 c_struct] + 3);
        v47.i64[0] = __PAIR64__(v28, v27);
        v47.i64[1] = __PAIR64__(v30.u32[0], v29);
        CMOQuaternion::normalize(&v47, v30);
        v48 = v47;
        v31 = CMOQuaternion::gravity(&v48);
        v33 = v32;
        v35 = v34;
        v36 = ((v25 * v34) + (v32 * v24)) + (v31 * v23);
        if (v36 < -1.0)
        {
          v36 = -1.0;
        }

        if (v36 > 1.0)
        {
          v36 = 1.0;
        }

        v37 = acosf(v36);
        v38 = ((v44 * v35) + (v33 * v45)) + (v31 * v46);
        if (v38 < -1.0)
        {
          v38 = -1.0;
        }

        if (v38 > 1.0)
        {
          v38 = 1.0;
        }

        v39 = acosf(v38);
        if (v39 * 57.2957795 > *(*(this + 4) + 16))
        {
          [v9 timestamp];
          ++v17;
          v43 = v43 + v39;
          v45 = v33;
          v46 = v31;
          v44 = v35;
        }

        ++v22;
        v21 = v21 + v37;
        v23 = v31;
        v24 = v33;
        v25 = v35;
      }

      while (v6 != v22);
      v20 = v43 * 57.2957795;
      v19 = v21 * 57.2957795;
      v7 = v42;
    }

    v40 = *(this + 4);
    *(v40 + 32) = v20 > *(v40 + 20);
    v41 = v20;
    *(v40 + 36) = v41;
    *(v40 + 96) = v17;
    *(v40 + 100) = v19;
    *(v40 + 68) = *(this + 2788);
    *(this + 2788) = 0;
    CLKappaFeaturesAlgSpin::calculateSlowRoll(this, a2);
  }
}

void CLKappaFeaturesAlgSpin::calculateSlowRoll(CLKappaFeaturesAlgSpin *this, unint64_t a2)
{
  v4 = *(this + 4);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 112) = *(v4 + 104);
  *(v4 + 136) = *(v4 + 128);
  *(v4 + 40) = 0;
  v5 = *(*(this + 6) + 72);
  v6 = [v5 count];
  if (!v6)
  {
    goto LABEL_53;
  }

  v73 = off_10041C3E0;
  v74 = 100;
  memset(v75, 0, sizeof(v75));
  v77[0] = 0;
  v77[1] = 0;
  v76 = v77;
  v7 = [v5 objectAtIndex:0];
  v8 = *[v7 c_struct];
  v9 = *([v7 c_struct] + 1);
  v10 = *([v7 c_struct] + 2);
  v11.i32[0] = *([v7 c_struct] + 3);
  v72.i64[0] = __PAIR64__(v9, v8);
  v72.i64[1] = __PAIR64__(v11.u32[0], v10);
  CMOQuaternion::normalize(&v72, v11);
  CMOQuaternion::gravity(&v72);
  v12 = CMOQuaternion::gravity(&v72);
  v14 = v13;
  v16 = v15;
  CMOQuaternion::gravity(&v72);
  if (*(this + 567) - 1 >= a2 || *(this + 568))
  {
    v68 = 0;
  }

  else
  {
    v71.i64[0] = *(this + 567);
    v71.i64[1] = a2;
    sub_10005BDA0(this + 4552, &v71);
    v68 = 1;
  }

  while (1)
  {
    if (!*(this + 574))
    {
      goto LABEL_34;
    }

    v17 = *(*(*(this + 570) + ((*(this + 573) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 573) + 8);
    if (v17 >= [v7 timestamp])
    {
      break;
    }

    *(this + 4584) = vaddq_s64(*(this + 4584), xmmword_10037DC90);
    sub_10005D7F8(this + 4552, 1);
  }

  v18 = *(this + 574);
  if (!v18)
  {
LABEL_34:
    byte_100457DA0 ^= 1u;
    if (v68)
    {
      *(this + 574) = -1;
      sub_10005D858(this + 569, 1);
    }

    goto LABEL_52;
  }

  v19 = *(this + 570);
  if (*(this + 571) != v19)
  {
    v20 = *(this + 573);
    v21 = (v19 + 8 * (v20 >> 8));
    v22 = (*v21 + 16 * v20);
    v23 = *(v19 + (((v20 + v18) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v20 + v18);
    if (v22 != v23)
    {
      do
      {
        sub_10005BE48((*(this + 4) + 104), v22);
        sub_10005BE48((*(this + 4) + 128), v22 + 1);
        v22 += 2;
        if ((v22 - *v21) == 4096)
        {
          v24 = v21[1];
          ++v21;
          v22 = v24;
        }
      }

      while (v22 != v23);
      v18 = *(this + 574);
      if (!v18)
      {
        goto LABEL_50;
      }
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = *(this + 573);
  LODWORD(v29) = -1;
  do
  {
    v28 = *(this + 570);
    if (*(*(v28 + ((v27 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v27 + 8) - *(*(v28 + ((v27 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v27) <= v26)
    {
      v29 = v29;
    }

    else
    {
      v26 = *(*(v28 + ((v27 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v27 + 8) - *(*(v28 + ((v27 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v27);
      v29 = v25;
    }

    ++v25;
    ++v27;
  }

  while (v18 != v25);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v30 = *(this + 573);
  v31 = *(this + 570);
  v32 = (*(v31 + (((v30 + v29) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + v29));
  v33 = *v32;
  v34 = v32[1];
  if (v34 - *v32 < 0x30D41)
  {
    goto LABEL_50;
  }

  v35 = (v29 + 1);
  if (v18 > v35)
  {
    v36 = v29 + 2;
    do
    {
      v37 = v35 + v30;
      v35 = v36;
      v38 = (*(v31 + ((v37 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v37);
      if (*v38 - v34 >= 0x493E0)
      {
        break;
      }

      v34 = v38[1];
      v36 = v35 + 1;
    }

    while (v18 > v35);
  }

  if (v29)
  {
    v39 = v29 + 1;
    v40 = v30 + v29 - 1;
    do
    {
      v41 = (*(v31 + ((v40 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v40);
      if ((v33 - v41[1]) >= 0x493E0)
      {
        break;
      }

      v33 = *v41;
      --v39;
      --v40;
    }

    while (v39 > 1);
  }

  if (v33 < [v7 timestamp])
  {
    v33 = [v7 timestamp];
  }

  v70[0] = 0;
  if (v6 == 1)
  {
    v66 = NAN;
    goto LABEL_49;
  }

  v42 = 2;
  if (v6 > 2)
  {
    v42 = v6;
  }

  v69 = v42;
  v67 = 0.0;
  v66 = NAN;
  v43 = 1;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v46 = [v5 objectAtIndex:v43];
    if ([v46 timestamp] >= v33)
    {
      break;
    }

    v47 = *[v46 c_struct];
    v48 = *([v46 c_struct] + 1);
    v49 = *([v46 c_struct] + 2);
    v50.i32[0] = *([v46 c_struct] + 3);
    v71.i64[0] = __PAIR64__(v48, v47);
    v71.i64[1] = __PAIR64__(v50.u32[0], v49);
    CMOQuaternion::normalize(&v71, v50);
    v72 = v71;
    v51 = CMOQuaternion::gravity(&v72);
    v53 = v52;
    v55 = v54;
LABEL_46:

    ++v43;
    v16 = v55;
    v14 = v53;
    v12 = v51;
    if (v43 == v69)
    {
      goto LABEL_49;
    }
  }

  if ([v46 timestamp] <= v34)
  {
    v56 = *[v46 c_struct];
    v57 = *([v46 c_struct] + 1);
    v58 = *([v46 c_struct] + 2);
    v59.i32[0] = *([v46 c_struct] + 3);
    v71.i64[0] = __PAIR64__(v57, v56);
    v71.i64[1] = __PAIR64__(v59.u32[0], v58);
    CMOQuaternion::normalize(&v71, v59);
    v72 = v71;
    v51 = CMOQuaternion::gravity(&v72);
    v53 = v60;
    v55 = v61;
    v62 = 0;
    v44 = ((v16 * v51) - (v12 * v61)) + v44;
    v67 = ((v14 * v61) - (v16 * v60)) + v67;
    *v70 = v67;
    *&v70[1] = v44;
    v45 = ((v12 * v60) - (v14 * v51)) + v45;
    *&v70[2] = v45;
    v63 = 0.0;
    do
    {
      v63 = v63 + (*&v70[v62] * *&v70[v62]);
      ++v62;
    }

    while (v62 != 3);
    v64 = sqrtf(v63) * 57.2957795;
    v66 = v64;
    goto LABEL_46;
  }

LABEL_49:
  v65 = *(this + 4);
  *(v65 + 40) = 1;
  *(v65 + 48) = v33;
  *(v65 + 56) = v34;
  *(v65 + 64) = v66;
LABEL_50:
  byte_100457DA0 ^= 1u;
  if (v68)
  {
    --*(this + 574);
    sub_10005D858(this + 569, 1);
  }

LABEL_52:

  v73 = off_10041C3E0;
  sub_10005C4D8(&v76, v77[0]);
  sub_10000EEA4(v75);
LABEL_53:
}

void sub_10005AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_100059F40(va);
  _Unwind_Resume(a1);
}

void CLKappaFeaturesAlgSpin::feedDM(CLKappaFeaturesAlgSpin *this, const DMSample *a2)
{
  v74 = a2;
  v83 = *a2->quaternion;
  CMOQuaternion::normalize(&v83, v83);
  v3 = CMOQuaternion::gravity(&v83);
  v6 = (this + 2764);
  *v82 = v3;
  *&v82[1] = v4;
  *&v82[2] = v5;
  if (*(this + 2760) == 1)
  {
    v7 = *(this + 1127);
    v8 = *(this + 1128);
    v9 = *(this + 1126);
  }

  else
  {
    *(this + 1126) = v3;
    *(this + 1127) = v4;
    *(this + 1128) = v5;
    *(this + 2760) = 1;
    v9 = v3;
    v8 = v5;
    v7 = v4;
  }

  *v81 = (v7 * v5) - (v8 * v4);
  *&v81[4] = (v8 * v3) - (v9 * v5);
  *&v81[8] = (v9 * v4) - (v7 * v3);
  if (*(this + 47) == 10)
  {
    v10.f32[0] = sub_10005B680(this + 32);
    v10.i32[1] = v11;
    *v6 = vsub_f32(*v6, v10);
    *(this + 693) = *(this + 693) - v12;
  }

  if (*(this + 151) == 200)
  {
    v13.f32[0] = sub_10005B708(this + 136);
    v13.i32[1] = v14;
    *(this + 347) = vsub_f32(*(this + 2776), v13);
    *(this + 696) = *(this + 696) - v15;
  }

  sub_10005B790(this + 64, v81);
  sub_10005B89C(this + 272, v81);
  v16 = 0;
  v17 = this + 2776;
  v18 = *&v81[4];
  v19 = vzip1_s32(*v81, *&v81[4]);
  *v20.f32 = v19;
  v20.i64[1] = __PAIR64__(v19.u32[0], vdup_lane_s32(*&v81[4], 1).u32[0]);
  *v6->f32 = vaddq_f32(v20, *v6->f32);
  *(this + 2780) = vadd_f32(v18, *(this + 2780));
  v21 = 0.0;
  do
  {
    v21 = v21 + (v6->f32[v16] * v6->f32[v16]);
    ++v16;
  }

  while (v16 != 3);
  if (sqrtf(v21) * 57.2957795 > *(this + 697))
  {
    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + (v6->f32[v22] * v6->f32[v22]);
      ++v22;
    }

    while (v22 != 3);
    v24 = sqrtf(v23) * 57.2957795;
    *(this + 697) = v24;
  }

  v25 = 0;
  v26 = 0.0;
  do
  {
    v26 = v26 + (*&v17[v25] * *&v17[v25]);
    v25 += 4;
  }

  while (v25 != 12);
  if (sqrtf(v26) * 57.2957795 > *(this + 698))
  {
    v27 = 0;
    v28 = 0.0;
    do
    {
      v28 = v28 + (*&v17[v27] * *&v17[v27]);
      v27 += 4;
    }

    while (v27 != 12);
    v29 = sqrtf(v28) * 57.2957795;
    *(this + 698) = v29;
  }

  sub_10005B9A8(this + 2800, v82);
  v30 = sub_10005BAB4(this + 2800);
  v76 = v31;
  v77 = v30;
  v75 = v32;
  if ((*(this + 4528) & 1) == 0)
  {
    v33 = v76;
    *(this + 1129) = v77;
    *(this + 1130) = v33;
    *(this + 1131) = v75;
    *(this + 4528) = 1;
  }

  v34 = 0;
  v35 = *(this + 1130);
  v36 = *(this + 1131);
  v37 = (v35 * v75) - (v36 * v76);
  v38 = *(this + 1129);
  v39 = (v36 * v77) - (v38 * v75);
  v40 = (v38 * v76) - (v35 * v77);
  v78 = v37;
  v79 = v39;
  v80 = v40;
  v41 = 0.0;
  do
  {
    v41 = v41 + (*(&v78 + v34) * *(&v78 + v34));
    v34 += 4;
  }

  while (v34 != 12);
  v42 = 0;
  if (sqrtf(v41) < 0.0000001)
  {
    v40 = v40 + 0.000001;
    v39 = v39 + 0.000001;
    v37 = v37 + 0.000001;
  }

  v86 = __PAIR64__(LODWORD(v39), LODWORD(v37));
  v87 = v40;
  v43 = 0.0;
  do
  {
    v43 = v43 + (*(&v86 + v42) * *(&v86 + v42));
    v42 += 4;
  }

  while (v42 != 12);
  v44 = sqrtf(v43);
  v78 = v37 / v44;
  v79 = v39 / v44;
  v80 = v40 / v44;
  sub_10005BB28(this + 3128, &v78);
  v45 = sub_10005C7FC(this + 3128);
  v47 = v46;
  v49 = v48;
  v50 = 0;
  *v85 = v45;
  *&v85[1] = v46;
  v51 = 0.0;
  *&v85[2] = v48;
  do
  {
    v51 = v51 + (*&v85[v50] * *&v85[v50]);
    ++v50;
  }

  while (v50 != 3);
  if (sqrtf(v51) >= 0.0000001)
  {
    v89 = 0x6400000000;
    v88 = 1031798784;
    if (*(this + 1579))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      do
      {
        v55 = sub_10005C870(this + 1564, v52);
        sub_10005C870(this + 1564, v52);
        v57 = v56;
        sub_10005C870(this + 1564, v52);
        v59 = v58;
        v60 = 0;
        v61 = 0.0;
        do
        {
          v61 = v61 + (*&v85[v60] * *&v85[v60]);
          ++v60;
        }

        while (v60 != 3);
        v62 = sub_10005C870(this + 1564, v52);
        v63 = 0;
        *v84 = v62;
        v84[1] = v64;
        v65 = 0.0;
        v84[2] = v66;
        do
        {
          v65 = v65 + (*&v84[v63] * *&v84[v63]);
          ++v63;
        }

        while (v63 != 3);
        v67 = acosf((((v47 * v57) + (v45 * v55)) + (v49 * v59)) / (sqrtf(v61) * sqrtf(v65)));
        v68 = v53 + v54;
        if (v68 >= 0x64)
        {
          v69 = -376;
        }

        else
        {
          v69 = 24;
        }

        *(&v86 + 4 * v68 + v69) = v67;
        if (v53 > 0x63)
        {
          if (v54 >= 0x63u)
          {
            v70 = -100;
          }

          else
          {
            v70 = 0;
          }

          v54 += v70 + 1;
        }

        else
        {
          ++v53;
        }

        ++v52;
      }

      while (v52 < *(this + 1579));
      WORD1(v89) = v53;
    }

    else
    {
      v54 = 0;
    }

    LOWORD(v89) = v54;
    LOBYTE(v86) = 1;
    sub_10005C738(&v86);
  }

  v71 = 0;
  v72 = v74->rotation[2];
  v86 = *v74->rotation;
  v87 = v72;
  v73 = 0.0;
  do
  {
    v73 = v73 + (*(&v86 + v71) * *(&v86 + v71));
    v71 += 4;
  }

  while (v71 != 12);
  v85[0] = sqrtf(v73);
  sub_10005BC34();
}

float sub_10005B680(unsigned __int16 *a1)
{
  v2 = 0.0;
  if (a1[15])
  {
    v2 = *sub_1000404B8(a1 + 14, 0);
  }

  if (a1[47])
  {
    v3 = *sub_1000404B8(a1 + 46, 0);
  }

  if (a1[79])
  {
    v4 = *sub_1000404B8(a1 + 78, 0);
  }

  return v2;
}

float sub_10005B708(unsigned __int16 *a1)
{
  v2 = 0.0;
  if (a1[15])
  {
    v2 = *sub_1000404B8(a1 + 14, 0);
  }

  if (a1[427])
  {
    v3 = *sub_1000404B8(a1 + 426, 0);
  }

  if (a1[839])
  {
    v4 = *sub_1000404B8(a1 + 838, 0);
  }

  return v2;
}

uint64_t sub_10005B790(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 30);
  v3 = *(result + 32);
  v4 = *(result + 28);
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 32);
  }

  else
  {
    v5 = 0;
  }

  *(result + 4 * (v4 + v2 - v5) + 36) = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(result + 28) = v4 + 1 - v3;
  }

  else
  {
    *(result + 30) = v2 + 1;
  }

  *(result + 12) = 1;
  v6 = *(result + 94);
  v7 = *(result + 96);
  v8 = *(result + 92);
  if (v8 + v6 >= v7)
  {
    v9 = *(result + 96);
  }

  else
  {
    v9 = 0;
  }

  *(result + 4 * (v8 + v6 - v9) + 100) = a2[1];
  if (v7 <= v6)
  {
    if (v8 + 1 < v7)
    {
      LOWORD(v7) = 0;
    }

    *(result + 92) = v8 + 1 - v7;
  }

  else
  {
    *(result + 94) = v6 + 1;
  }

  *(result + 76) = 1;
  v10 = *(result + 158);
  v11 = *(result + 160);
  v12 = *(result + 156);
  if (v12 + v10 >= v11)
  {
    v13 = *(result + 160);
  }

  else
  {
    v13 = 0;
  }

  *(result + 4 * (v12 + v10 - v13) + 164) = a2[2];
  if (v11 <= v10)
  {
    if (v12 + 1 < v11)
    {
      LOWORD(v11) = 0;
    }

    *(result + 156) = v12 + 1 - v11;
  }

  else
  {
    *(result + 158) = v10 + 1;
  }

  *(result + 140) = 1;
  return result;
}

uint64_t sub_10005B89C(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 30);
  v3 = *(result + 32);
  v4 = *(result + 28);
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 32);
  }

  else
  {
    v5 = 0;
  }

  *(result + 4 * (v4 + v2 - v5) + 36) = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(result + 28) = v4 + 1 - v3;
  }

  else
  {
    *(result + 30) = v2 + 1;
  }

  *(result + 12) = 1;
  v6 = *(result + 854);
  v7 = *(result + 856);
  v8 = *(result + 852);
  if (v8 + v6 >= v7)
  {
    v9 = *(result + 856);
  }

  else
  {
    v9 = 0;
  }

  *(result + 4 * (v8 + v6 - v9) + 860) = a2[1];
  if (v7 <= v6)
  {
    if (v8 + 1 < v7)
    {
      LOWORD(v7) = 0;
    }

    *(result + 852) = v8 + 1 - v7;
  }

  else
  {
    *(result + 854) = v6 + 1;
  }

  *(result + 836) = 1;
  v10 = *(result + 1678);
  v11 = *(result + 1680);
  v12 = *(result + 1676);
  if (v12 + v10 >= v11)
  {
    v13 = *(result + 1680);
  }

  else
  {
    v13 = 0;
  }

  *(result + 4 * (v12 + v10 - v13) + 1684) = a2[2];
  if (v11 <= v10)
  {
    if (v12 + 1 < v11)
    {
      LOWORD(v11) = 0;
    }

    *(result + 1676) = v12 + 1 - v11;
  }

  else
  {
    *(result + 1678) = v10 + 1;
  }

  *(result + 1660) = 1;
  return result;
}

uint64_t sub_10005B9A8(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 30);
  v3 = *(result + 32);
  v4 = *(result + 28);
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 32);
  }

  else
  {
    v5 = 0;
  }

  *(result + 4 * (v4 + v2 - v5) + 36) = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(result + 28) = v4 + 1 - v3;
  }

  else
  {
    *(result + 30) = v2 + 1;
  }

  *(result + 12) = 1;
  v6 = *(result + 134);
  v7 = *(result + 136);
  v8 = *(result + 132);
  if (v8 + v6 >= v7)
  {
    v9 = *(result + 136);
  }

  else
  {
    v9 = 0;
  }

  *(result + 4 * (v8 + v6 - v9) + 140) = a2[1];
  if (v7 <= v6)
  {
    if (v8 + 1 < v7)
    {
      LOWORD(v7) = 0;
    }

    *(result + 132) = v8 + 1 - v7;
  }

  else
  {
    *(result + 134) = v6 + 1;
  }

  *(result + 116) = 1;
  v10 = *(result + 238);
  v11 = *(result + 240);
  v12 = *(result + 236);
  if (v12 + v10 >= v11)
  {
    v13 = *(result + 240);
  }

  else
  {
    v13 = 0;
  }

  *(result + 4 * (v12 + v10 - v13) + 244) = a2[2];
  if (v11 <= v10)
  {
    if (v12 + 1 < v11)
    {
      LOWORD(v11) = 0;
    }

    *(result + 236) = v12 + 1 - v11;
  }

  else
  {
    *(result + 238) = v10 + 1;
  }

  *(result + 220) = 1;
  return result;
}

float sub_10005BAB4(uint64_t a1)
{
  v3 = *(a1 + 12);
  v2 = a1 + 12;
  if (v3 == 1)
  {
    sub_10005C738(v2);
  }

  v4 = *(a1 + 16);
  if (*(a1 + 116) == 1)
  {
    sub_10005C738(a1 + 116);
  }

  v5 = *(a1 + 120);
  if (*(a1 + 220) == 1)
  {
    sub_10005C738(a1 + 220);
  }

  v6 = *(a1 + 224);
  return v4;
}

uint64_t sub_10005BB28(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 30);
  v3 = *(result + 32);
  v4 = *(result + 28);
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 32);
  }

  else
  {
    v5 = 0;
  }

  *(result + 4 * (v4 + v2 - v5) + 36) = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *(result + 28) = v4 + 1 - v3;
  }

  else
  {
    *(result + 30) = v2 + 1;
  }

  *(result + 12) = 1;
  v6 = *(result + 454);
  v7 = *(result + 456);
  v8 = *(result + 452);
  if (v8 + v6 >= v7)
  {
    v9 = *(result + 456);
  }

  else
  {
    v9 = 0;
  }

  *(result + 4 * (v8 + v6 - v9) + 460) = a2[1];
  if (v7 <= v6)
  {
    if (v8 + 1 < v7)
    {
      LOWORD(v7) = 0;
    }

    *(result + 452) = v8 + 1 - v7;
  }

  else
  {
    *(result + 454) = v6 + 1;
  }

  *(result + 436) = 1;
  v10 = *(result + 878);
  v11 = *(result + 880);
  v12 = *(result + 876);
  if (v12 + v10 >= v11)
  {
    v13 = *(result + 880);
  }

  else
  {
    v13 = 0;
  }

  *(result + 4 * (v12 + v10 - v13) + 884) = a2[2];
  if (v11 <= v10)
  {
    if (v12 + 1 < v11)
    {
      LOWORD(v11) = 0;
    }

    *(result + 876) = v12 + 1 - v11;
  }

  else
  {
    *(result + 878) = v10 + 1;
  }

  *(result + 860) = 1;
  return result;
}

uint64_t sub_10005BCD4(void *a1, int a2, _DWORD *a3)
{
  v3 = a1[10];
  if (!v3)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v10 = vcvtd_n_f64_u64(v3, 1uLL);
    v11 = vcvtms_s32_f32(v10);
    v12 = a1[8];
    if (v11 < 1)
    {
      v7 = a1[8];
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v12[1];
        if (v14)
        {
          do
          {
            v7 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v7 = v12[2];
            v8 = *v7 == v12;
            v12 = v7;
          }

          while (!v8);
        }

        v12 = v7;
      }
    }

    goto LABEL_22;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v6 = a1[9];
      v4 = a1 + 9;
      v5 = v6;
      if (v6)
      {
        do
        {
          v7 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (v8);
      }

      goto LABEL_22;
    }

    return 0;
  }

  v7 = a1[8];
LABEL_22:
  *a3 = *(v7 + 7);
  return 1;
}

__n128 sub_10005BDA0(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10005D624(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

void sub_10005BE48(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_10000CD24();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10000CDCC(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void sub_10005BF34(uint64_t a1)
{

  operator delete();
}

void sub_10005BF78(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    sub_100009A48(v4);
  }
}

void sub_10005BFC8(void *a1)
{

  operator delete();
}

void sub_10005C030(void *a1, uint64_t *a2)
{
  v2 = a1 + *(*a1 - 32);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 7);
  *(v2 + 6) = v4;
  *(v2 + 7) = v3;
  if (v5)
  {
    sub_100009A48(v5);
  }
}

void sub_10005C094(void *a1)
{

  operator delete();
}

void sub_10005C120(void *a1)
{

  operator delete();
}

void sub_10005C188(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10005C1CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 152)) = a2[6];
  *(a1 + *(*a1 - 160)) = a2[7];
  *(a1 + *(*a1 - 168)) = a2[8];
  *(a1 + *(*a1 - 176)) = a2[9];
  sub_10005C52C((a1 + 4552));
  *(a1 + 4416) = off_10041C3E0;
  sub_10005C4D8(a1 + 4480, *(a1 + 4488));
  sub_10000EEA4((a1 + 4432));
  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(a1, a2 + 1);
}

void sub_10005C3D4(uint64_t a1)
{
  *a1 = off_10041C3E0;
  sub_10005C4D8(a1 + 64, *(a1 + 72));
  sub_10000EEA4((a1 + 16));

  operator delete();
}

void sub_10005C448(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[6] = v6;
  }

  v8 = a1[9];
  v7 = a1 + 9;
  sub_10005C4D8((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void sub_10005C4D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10005C4D8(a1, *a2);
    sub_10005C4D8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_10005C52C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10000EE54(a1);
}

void sub_10005C6BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10041C420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10005C738(uint64_t result)
{
  v1 = result;
  if (*(result + 18))
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      result = sub_1000404B8((v1 + 16), v2);
      v3 = v3 + *result;
      ++v2;
      v4 = *(v1 + 18);
    }

    while (v2 < v4);
    *(v1 + 4) = v3 / v4;
    v5 = 0.0;
    if (v4 >= 3)
    {
      v6 = 0;
      v7 = 0.0;
      do
      {
        result = sub_1000404B8((v1 + 16), v6);
        v7 = v7 + ((*result - *(v1 + 4)) * (*result - *(v1 + 4)));
        ++v6;
        v8 = *(v1 + 18);
      }

      while (v6 < v8);
      v5 = v7 / v8;
    }
  }

  else
  {
    *(result + 4) = 0;
    v5 = 0.0;
  }

  *(v1 + 8) = v5;
  *v1 = 0;
  return result;
}

float sub_10005C7FC(uint64_t a1)
{
  v3 = *(a1 + 12);
  v2 = a1 + 12;
  if (v3 == 1)
  {
    sub_10005C738(v2);
  }

  v4 = *(a1 + 16);
  if (*(a1 + 436) == 1)
  {
    sub_10005C738(a1 + 436);
  }

  v5 = *(a1 + 440);
  if (*(a1 + 860) == 1)
  {
    sub_10005C738(a1 + 860);
  }

  v6 = *(a1 + 864);
  return v4;
}

float sub_10005C870(unsigned __int16 *a1, unint64_t a2)
{
  v4 = *sub_1000404B8(a1 + 14, a2);
  v5 = *sub_1000404B8(a1 + 226, a2);
  v6 = *sub_1000404B8(a1 + 438, a2);
  return v4;
}

void *sub_10005C8D0(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_10005C958(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10005C958(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10005CF54(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10005CB2C(a1, &v10);
}

void sub_10005CAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10005CB2C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10005CF54(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10005CC34(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10005CF54(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_10005CD40(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10005CF54(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10005CE48(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10005CF54(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_10005CF54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000092C0();
}

uint64_t *sub_10005D03C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10005D094(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10005D094(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_10005D230(uint64_t **a1, uint64_t *a2)
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
  sub_10005D2A4(v6, a2);
  return v3;
}

uint64_t *sub_10005D2A4(uint64_t *result, uint64_t *a2)
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

void *sub_10005D624(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10005CF54(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10005CB2C(a1, &v10);
}

void sub_10005D7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005D7F8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_10005D858(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(void *this)
{
  *this = off_10041C470;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C470;
  this[1] = 0;
  return this;
}

void CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(CMMsl::AFDeviceMotionConfig *this)
{
  v2 = *(this + 1);
  *this = off_10041C470;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(this);

  operator delete();
}

void *CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(void *this, const CMMsl::AFDeviceMotionConfig *a2)
{
  *this = off_10041C470;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AFDeviceMotionConfig *CMMsl::AFDeviceMotionConfig::operator=(const CMMsl::AFDeviceMotionConfig *a1, const CMMsl::AFDeviceMotionConfig *a2)
{
  if (a1 != a2)
  {
    CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AFDeviceMotionConfig *a2, CMMsl::AFDeviceMotionConfig *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AFDeviceMotionConfig::AFDeviceMotionConfig(void *a1, uint64_t a2)
{
  *a1 = off_10041C470;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041C470;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::AFDeviceMotionConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041C470;
    v6[1] = v4;
    CMMsl::AFDeviceMotionConfig::~AFDeviceMotionConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::AFDeviceMotionConfig::formatText(CMMsl::AFDeviceMotionConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AFDeviceMotionConfig::readFrom(CMMsl::AFDeviceMotionConfig *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

double CMMsl::AccessoryDeviceMotionConfig::AccessoryDeviceMotionConfig(CMMsl::AccessoryDeviceMotionConfig *this)
{
  *this = off_10041C9B0;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_10041C9B0;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CMMsl::AFDeviceMotionConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::AFDeviceMotionConfig::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryDeviceMotionConfig::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::AccessoryDeviceMotionConfig::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !CMMsl::AccessoryConfig::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 44);
  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
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

CMMsl::AccessoryDeviceMotionConfig *CMMsl::AFDeviceMotionConfig::hash_value(CMMsl::AFDeviceMotionConfig *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryDeviceMotionConfig::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AFDeviceMotionConfig::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void *CMMsl::AFHeartRate::AFHeartRate(void *this)
{
  *this = off_10041C4A8;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C4A8;
  this[1] = 0;
  return this;
}

void CMMsl::AFHeartRate::~AFHeartRate(CMMsl::AFHeartRate *this)
{
  v2 = *(this + 1);
  *this = off_10041C4A8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AFHeartRate::~AFHeartRate(this);

  operator delete();
}

void *CMMsl::AFHeartRate::AFHeartRate(void *this, const CMMsl::AFHeartRate *a2)
{
  *this = off_10041C4A8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::AFHeartRate *CMMsl::AFHeartRate::operator=(const CMMsl::AFHeartRate *a1, const CMMsl::AFHeartRate *a2)
{
  if (a1 != a2)
  {
    CMMsl::AFHeartRate::AFHeartRate(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::AFHeartRate::~AFHeartRate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::AFHeartRate *a2, CMMsl::AFHeartRate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::AFHeartRate::AFHeartRate(void *a1, uint64_t a2)
{
  *a1 = off_10041C4A8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041C4A8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::AFHeartRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041C4A8;
    v6[1] = v4;
    CMMsl::AFHeartRate::~AFHeartRate(v6);
  }

  return a1;
}

uint64_t CMMsl::AFHeartRate::formatText(CMMsl::AFHeartRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AFHeartRate::readFrom(CMMsl::AFHeartRate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::AccessoryHeartRate::AccessoryHeartRate(uint64_t this)
{
  *this = off_10041CAC8;
  *(this + 56) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = off_10041CAC8;
  *(this + 56) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t CMMsl::AFHeartRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::AFHeartRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::AccessoryHeartRate::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::AccessoryHeartRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
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
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
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

  if ((*(a1 + 68) & 0x100) != 0)
  {
    if ((*(a2 + 68) & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x100) != 0)
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
    if ((*(a2 + 68) & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x200) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

CMMsl::AccessoryHeartRate *CMMsl::AFHeartRate::hash_value(CMMsl::AFHeartRate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryHeartRate::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::AFHeartRate::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::ALSData::ALSData(uint64_t this)
{
  *this = off_10041C4E0;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_10041C4E0;
  *(this + 12) = 0;
  return this;
}

void CMMsl::ALSData::~ALSData(CMMsl::ALSData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::ALSData::ALSData(CMMsl::ALSData *this, const CMMsl::ALSData *a2)
{
  *this = off_10041C4E0;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

{
  *this = off_10041C4E0;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::ALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_10041C4E0;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v8 = off_10041C4E0;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ALSData *a2, CMMsl::ALSData *a3)
{
  v3 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float CMMsl::ALSData::ALSData(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C4E0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_10041C4E0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::ALSData::formatText(CMMsl::ALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "alsTrustedLux", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ALSData::readFrom(CMMsl::ALSData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_33;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::ALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL CMMsl::ALSData::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

float CMMsl::ALSData::hash_value(CMMsl::ALSData *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  return result;
}

uint64_t CMMsl::ALSPhone::ALSPhone(uint64_t this)
{
  *this = off_10041C518;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041C518;
  *(this + 20) = 0;
  return this;
}

void CMMsl::ALSPhone::~ALSPhone(CMMsl::ALSPhone *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::ALSPhone::ALSPhone(CMMsl::ALSPhone *this, const CMMsl::ALSPhone *a2)
{
  *this = off_10041C518;
  *(this + 5) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 1) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = result;
  }

  return result;
}

uint64_t CMMsl::ALSPhone::operator=(uint64_t a1, const CMMsl::ALSPhone *a2)
{
  if (a1 != a2)
  {
    CMMsl::ALSPhone::ALSPhone(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ALSPhone *a2, CMMsl::ALSPhone *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::ALSPhone::ALSPhone(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C518;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_10041C518;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::ALSPhone::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = off_10041C518;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::ALSPhone::formatText(CMMsl::ALSPhone *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "lux", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ALSPhone::readFrom(CMMsl::ALSPhone *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_48:
          v2 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_49:
        *(this + 1) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_54:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::ALSPhone::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::ALSPhone::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::ALSPhone::hash_value(CMMsl::ALSPhone *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 1);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void *CMMsl::APSleep::APSleep(void *this)
{
  *this = off_10041C550;
  return this;
}

{
  *this = off_10041C550;
  return this;
}

void CMMsl::APSleep::~APSleep(CMMsl::APSleep *this)
{
  PB::Base::~Base(this);

  operator delete();
}

void *CMMsl::APSleep::APSleep(void *this, const CMMsl::APSleep *a2)
{
  *this = off_10041C550;
  return this;
}

{
  *this = off_10041C550;
  return this;
}

uint64_t CMMsl::APSleep::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = off_10041C550;
    PB::Base::~Base(&v4);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = off_10041C550;
    PB::Base::~Base(&v4);
  }

  return a1;
}

void *CMMsl::APSleep::APSleep(void *result)
{
  *result = off_10041C550;
  return result;
}

{
  *result = off_10041C550;
  return result;
}

uint64_t CMMsl::APSleep::formatText(CMMsl::APSleep *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::APSleep::readFrom(CMMsl::APSleep *this, PB::Reader *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    v3 = *(a2 + 2);
    v5 = *(a2 + 24);
    v6 = v3 - v4;
    if (v3 <= v4 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_23;
    }

    v7 = *a2;
    v8 = v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v3;
    if (v8)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = (v7 + v4);
    v19 = v4 + 1;
    while (1)
    {
      *(a2 + 1) = v19;
      v20 = *v18++;
      v17 |= (v20 & 0x7F) << v15;
      if ((v20 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      ++v19;
      v8 = v16++ > 8;
      if (v8)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    if ((v17 & 7) == 4)
    {
      v5 = 0;
LABEL_23:
      v21 = v5 ^ 1;
      return v21 & 1;
    }

    if ((PB::Reader::skip(a2, v17 >> 3, v17 & 7, 0) & 1) == 0)
    {
      v21 = 0;
      return v21 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v17 = 0;
  v11 = (v7 + v4);
  v12 = v4 + 1;
  while (v6)
  {
    v13 = *v11;
    *(a2 + 1) = v12;
    v17 |= (v13 & 0x7F) << v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v9 += 7;
    --v6;
    ++v11;
    ++v12;
    if (v10++ >= 9)
    {
LABEL_17:
      v17 = 0;
      goto LABEL_18;
    }
  }

  v21 = 0;
  *(a2 + 24) = 1;
  return v21 & 1;
}

void *CMMsl::APWake::APWake(void *this)
{
  *this = off_10041C588;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C588;
  this[1] = 0;
  return this;
}

void CMMsl::APWake::~APWake(CMMsl::APWake *this)
{
  *this = off_10041C588;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::APWake::~APWake(this);

  operator delete();
}

void *CMMsl::APWake::APWake(void *this, const CMMsl::APWake *a2)
{
  *this = off_10041C588;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::APWake *CMMsl::APWake::operator=(const CMMsl::APWake *a1, const CMMsl::APWake *a2)
{
  if (a1 != a2)
  {
    CMMsl::APWake::APWake(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::APWake::~APWake(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::APWake *a2, CMMsl::APWake *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::APWake::APWake(void *a1, uint64_t a2)
{
  *a1 = off_10041C588;
  a1[1] = 0;
  v3 = a1 + 1;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    sub_100011018(v3, v5);
  }

  return a1;
}

uint64_t CMMsl::APWake::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::APWake::APWake(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::APWake::~APWake(&v5);
  }

  return a1;
}

uint64_t CMMsl::APWake::formatText(CMMsl::APWake *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::APWake::readFrom(CMMsl::APWake *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::APWake::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::APWake::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10005FEB4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

unint64_t CMMsl::APWake::hash_value(CMMsl::APWake *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return sub_100011074(&v3, v1);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::ARKitWorldPose::ARKitWorldPose(uint64_t this)
{
  *this = off_10041C5C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  return this;
}

{
  *this = off_10041C5C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  return this;
}

void CMMsl::ARKitWorldPose::~ARKitWorldPose(CMMsl::ARKitWorldPose *this)
{
  *this = off_10041C5C0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ARKitWorldPose::~ARKitWorldPose(this);

  operator delete();
}

CMMsl::ARKitWorldPose *CMMsl::ARKitWorldPose::ARKitWorldPose(CMMsl::ARKitWorldPose *this, const CMMsl::ARKitWorldPose *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = off_10041C5C0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v7 = *(a2 + 4);
    v6 = 1;
    *(this + 56) = 1;
    *(this + 4) = v7;
    v5 = *(a2 + 56);
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
LABEL_5:
    v8 = *(a2 + 11);
    v6 |= 4u;
    *(this + 56) = v6;
    *(this + 11) = v8;
    v5 = *(a2 + 56);
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = *(a2 + 12);
  v6 |= 8u;
  *(this + 56) = v6;
  *(this + 12) = v12;
  if ((*(a2 + 56) & 0x10) != 0)
  {
LABEL_8:
    v9 = *(a2 + 13);
    *(this + 56) = v6 | 0x10;
    *(this + 13) = v9;
  }

LABEL_9:
  if (this != a2)
  {
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  if ((*(a2 + 56) & 2) != 0)
  {
    v10 = *(a2 + 10);
    *(this + 56) |= 2u;
    *(this + 10) = v10;
  }

  return this;
}

uint64_t CMMsl::ARKitWorldPose::operator=(uint64_t a1, const CMMsl::ARKitWorldPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::ARKitWorldPose::ARKitWorldPose(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v4;
    v5 = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v5;
    LODWORD(v4) = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v7;
    LODWORD(v7) = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    CMMsl::ARKitWorldPose::~ARKitWorldPose(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ARKitWorldPose *a2, CMMsl::ARKitWorldPose *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LODWORD(v8) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  return result;
}

uint64_t CMMsl::ARKitWorldPose::ARKitWorldPose(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C5C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::ARKitWorldPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ARKitWorldPose::ARKitWorldPose(&v9, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v16;
    v16 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v4;
    v5 = *(a1 + 44);
    *(a1 + 44) = v14;
    v14 = v5;
    LODWORD(v4) = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v7;
    LODWORD(v7) = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    CMMsl::ARKitWorldPose::~ARKitWorldPose(&v9);
  }

  return a1;
}

uint64_t CMMsl::ARKitWorldPose::formatText(CMMsl::ARKitWorldPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "attitude", v7);
  }

  v8 = *(this + 56);
  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "status", *(this + 10));
    v8 = *(this + 56);
    if ((v8 & 1) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 56) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  v8 = *(this + 56);
  if ((v8 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "x", *(this + 11));
  v8 = *(this + 56);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "y", *(this + 12));
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "z", *(this + 13));
  }

LABEL_9:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ARKitWorldPose::readFrom(CMMsl::ARKitWorldPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_107;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v23 == 4)
      {
        *(this + 56) |= 0x10u;
        v35 = *(a2 + 1);
        if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
        {
          goto LABEL_99;
        }

        *(this + 13) = *(*a2 + v35);
LABEL_50:
        v37 = *(a2 + 1) + 4;
LABEL_102:
        *(a2 + 1) = v37;
        goto LABEL_103;
      }

      if (v23 != 5)
      {
        if (v23 == 6)
        {
          *(this + 56) |= 2u;
          v26 = *(a2 + 1);
          v25 = *(a2 + 2);
          v27 = *a2;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
          {
            v54 = 0;
            v55 = 0;
            v30 = 0;
            v17 = v25 >= v26;
            v56 = v25 - v26;
            if (!v17)
            {
              v56 = 0;
            }

            v57 = (v27 + v26);
            v58 = v26 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v30) = 0;
                *(a2 + 24) = 1;
                goto LABEL_92;
              }

              v59 = *v57;
              *(a2 + 1) = v58;
              v30 |= (v59 & 0x7F) << v54;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              --v56;
              ++v57;
              ++v58;
              v14 = v55++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v30) = 0;
                goto LABEL_92;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v30) = 0;
            }
          }

          else
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = (v27 + v26);
            v32 = v26 + 1;
            while (1)
            {
              *(a2 + 1) = v32;
              v33 = *v31++;
              v30 |= (v33 & 0x7F) << v28;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              ++v32;
              v14 = v29++ > 8;
              if (v14)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_92:
          *(this + 10) = v30;
          goto LABEL_103;
        }

LABEL_45:
        if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_103;
      }

      if (v22 != 2)
      {
        v61 = *(this + 2);
        v60 = *(this + 3);
        if (v61 >= v60)
        {
          v63 = *(this + 1);
          v64 = v61 - v63;
          v65 = (v61 - v63) >> 3;
          v66 = v65 + 1;
          if ((v65 + 1) >> 61)
          {
LABEL_110:
            sub_10000CD24();
          }

          v67 = v60 - v63;
          if (v67 >> 2 > v66)
          {
            v66 = v67 >> 2;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFF8)
          {
            v68 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_10000CDCC(this + 8, v68);
          }

          v69 = (v61 - v63) >> 3;
          v70 = (8 * v65);
          v71 = (8 * v65 - 8 * v69);
          *v70 = 0;
          v62 = v70 + 1;
          memcpy(v71, v63, v64);
          v72 = *(this + 1);
          *(this + 1) = v71;
          *(this + 2) = v62;
          *(this + 3) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v61 = 0;
          v62 = v61 + 8;
        }

        *(this + 2) = v62;
        v73 = *(a2 + 1);
        if (v73 > 0xFFFFFFFFFFFFFFF7 || v73 + 8 > *(a2 + 2))
        {
LABEL_99:
          *(a2 + 24) = 1;
          goto LABEL_103;
        }

        *(v62 - 1) = *(*a2 + v73);
LABEL_101:
        v37 = *(a2 + 1) + 8;
        goto LABEL_102;
      }

      if (PB::Reader::placeMark())
      {
LABEL_109:
        v74 = 0;
        return v74 & 1;
      }

      v38 = *(a2 + 1);
      v39 = *(a2 + 2);
      while (v38 < v39 && (*(a2 + 24) & 1) == 0)
      {
        v41 = *(this + 2);
        v40 = *(this + 3);
        if (v41 >= v40)
        {
          v43 = *(this + 1);
          v44 = v41 - v43;
          v45 = (v41 - v43) >> 3;
          v46 = v45 + 1;
          if ((v45 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v47 = v40 - v43;
          if (v47 >> 2 > v46)
          {
            v46 = v47 >> 2;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v48 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            sub_10000CDCC(this + 8, v48);
          }

          v49 = (v41 - v43) >> 3;
          v50 = (8 * v45);
          v51 = (8 * v45 - 8 * v49);
          *v50 = 0;
          v42 = v50 + 1;
          memcpy(v51, v43, v44);
          v52 = *(this + 1);
          *(this + 1) = v51;
          *(this + 2) = v42;
          *(this + 3) = 0;
          if (v52)
          {
            operator delete(v52);
          }
        }

        else
        {
          *v41 = 0;
          v42 = v41 + 8;
        }

        *(this + 2) = v42;
        v53 = *(a2 + 1);
        if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v42 - 1) = *(*a2 + v53);
        v39 = *(a2 + 2);
        v38 = *(a2 + 1) + 8;
        *(a2 + 1) = v38;
      }

      PB::Reader::recallMark();
LABEL_103:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    switch(v23)
    {
      case 1:
        *(this + 56) |= 1u;
        v34 = *(a2 + 1);
        if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(a2 + 2))
        {
          goto LABEL_99;
        }

        *(this + 4) = *(*a2 + v34);
        goto LABEL_101;
      case 2:
        *(this + 56) |= 4u;
        v36 = *(a2 + 1);
        if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(a2 + 2))
        {
          goto LABEL_99;
        }

        *(this + 11) = *(*a2 + v36);
        goto LABEL_50;
      case 3:
        *(this + 56) |= 8u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
        {
          goto LABEL_99;
        }

        *(this + 12) = *(*a2 + v24);
        goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_107:
  v74 = v4 ^ 1;
  return v74 & 1;
}

uint64_t CMMsl::ARKitWorldPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      this = PB::Writer::write(a2, *(v3 + 48), 3u);
      if ((*(v3 + 56) & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 44), 2u);
  v4 = *(v3 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0x10) != 0)
  {
LABEL_5:
    this = PB::Writer::write(a2, *(v3 + 52), 4u);
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 5u);
  }

  if ((*(v3 + 56) & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::writeVarInt(a2, v8, 6u);
  }

  return this;
}

BOOL CMMsl::ARKitWorldPose::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 44) != *(a2 + 44))
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
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
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

  v5 = (*(a2 + 56) & 2) == 0;
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*(a2 + 56) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

uint64_t CMMsl::ARKitWorldPose::hash_value(CMMsl::ARKitWorldPose *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v4 = 0;
    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (*(this + 4) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 4);
  }

  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = *(this + 11);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = LODWORD(v3);
  }

  if ((*(this + 56) & 8) != 0)
  {
LABEL_7:
    v5 = *(this + 12);
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = LODWORD(v5);
    }

    if ((*(this + 56) & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((*(this + 56) & 0x10) != 0)
  {
LABEL_11:
    v7 = *(this + 13);
    if (v7 == 0.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = LODWORD(v7);
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
LABEL_21:
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = PBHashBytes();
  if ((*(this + 56) & 2) != 0)
  {
    v12 = *(this + 10);
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v12 ^ v11;
}

void *CMMsl::ARSessionState::ARSessionState(void *this)
{
  *this = off_10041C5F8;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C5F8;
  this[1] = 0;
  return this;
}

void CMMsl::ARSessionState::~ARSessionState(CMMsl::ARSessionState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ARSessionState::ARSessionState(uint64_t this, const CMMsl::ARSessionState *a2)
{
  *this = off_10041C5F8;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = off_10041C5F8;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::ARSessionState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = off_10041C5F8;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = off_10041C5F8;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ARSessionState *a2, CMMsl::ARSessionState *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::ARSessionState::ARSessionState(uint64_t result, uint64_t a2)
{
  *result = off_10041C5F8;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_10041C5F8;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::ARSessionState::formatText(CMMsl::ARSessionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "state", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ARSessionState::readFrom(CMMsl::ARSessionState *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 2) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::ARSessionState::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL CMMsl::ARSessionState::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::ARSessionState::hash_value(CMMsl::ARSessionState *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::Accel::Accel(uint64_t this)
{
  *this = off_10041C630;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041C630;
  *(this + 32) = 0;
  return this;
}

void CMMsl::Accel::~Accel(CMMsl::Accel *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::Accel::Accel(uint64_t this, const CMMsl::Accel *a2)
{
  *this = off_10041C630;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 28) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::Accel::operator=(uint64_t a1, const CMMsl::Accel *a2)
{
  if (a1 != a2)
  {
    CMMsl::Accel::Accel(v8, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v4;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::Accel *a2, CMMsl::Accel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

float CMMsl::Accel::Accel(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C630;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041C630;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::Accel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = off_10041C630;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v16 = *(a1 + 32);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v8 = *(a1 + 20);
    v9 = *(a2 + 20);
    *(a1 + 32) = v3;
    *(a1 + 20) = v9;
    v14 = v8;
    LODWORD(v8) = *(a1 + 28);
    *(a1 + 28) = v5;
    v15 = v8;
    v10 = *(a1 + 16);
    *(a1 + 16) = v6;
    v13 = v10;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::Accel::formatText(CMMsl::Accel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location", *(this + 4));
    v5 = *(this + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "x", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "y", *(this + 6));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "z", *(this + 7));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Accel::readFrom(CMMsl::Accel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_69;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_47:
            *(a2 + 24) = 1;
            goto LABEL_65;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_59;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_47;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_44:
          v2 = *(a2 + 1) + 4;
LABEL_59:
          *(a2 + 1) = v2;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 32) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_47;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_44;
          case 4:
            *(this + 32) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_47;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_44;
          case 5:
            *(this + 32) |= 2u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v31 = 0;
              v32 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v33 = v2 - v23;
              v34 = (v24 + v23);
              v35 = v23 + 1;
              while (1)
              {
                if (!v33)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_64;
                }

                v36 = v35;
                v37 = *v34;
                *(a2 + 1) = v36;
                v27 |= (v37 & 0x7F) << v31;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                --v33;
                ++v34;
                v35 = v36 + 1;
                v14 = v32++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_63;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_63:
              v2 = v36;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_64:
            *(this + 4) = v27;
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_65:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_69:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::Accel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 28), 4u);
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 5u);
}

BOOL CMMsl::Accel::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
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
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
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

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::Accel::hash_value(CMMsl::Accel *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 5);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v4 = *(this + 6);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_9:
    v6 = *(this + 7);
    v7 = LODWORD(v6);
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v8 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
  }

LABEL_18:
  v7 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v8 = *(this + 4);
  return v3 ^ *&v1 ^ v5 ^ v7 ^ v8;
}

void *CMMsl::Accel800::Accel800(void *this)
{
  *this = off_10041C668;
  this[1] = 0;
  return this;
}

{
  *this = off_10041C668;
  this[1] = 0;
  return this;
}

void CMMsl::Accel800::~Accel800(CMMsl::Accel800 *this)
{
  v2 = *(this + 1);
  *this = off_10041C668;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::Accel800::~Accel800(this);

  operator delete();
}

void *CMMsl::Accel800::Accel800(void *this, const CMMsl::Accel800 *a2)
{
  *this = off_10041C668;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::Accel800 *CMMsl::Accel800::operator=(const CMMsl::Accel800 *a1, const CMMsl::Accel800 *a2)
{
  if (a1 != a2)
  {
    CMMsl::Accel800::Accel800(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::Accel800::~Accel800(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::Accel800 *a2, CMMsl::Accel800 *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::Accel800::Accel800(void *a1, uint64_t a2)
{
  *a1 = off_10041C668;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041C668;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::Accel800::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041C668;
    v6[1] = v4;
    CMMsl::Accel800::~Accel800(v6);
  }

  return a1;
}

uint64_t CMMsl::Accel800::formatText(CMMsl::Accel800 *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::Accel800::readFrom(CMMsl::Accel800 *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::Accel800::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::Accel800::operator==(uint64_t a1, uint64_t a2)
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

CMMsl::Accel *CMMsl::Accel800::hash_value(CMMsl::Accel800 *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::Accel800::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::AccelBatch::AccelBatch(uint64_t this)
{
  *this = off_10041C6A0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041C6A0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::AccelBatch::~AccelBatch(CMMsl::AccelBatch *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::AccelBatch::AccelBatch(uint64_t this, const CMMsl::AccelBatch *a2)
{
  *this = off_10041C6A0;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 28) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::AccelBatch::operator=(uint64_t a1, const CMMsl::AccelBatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::AccelBatch::AccelBatch(v8, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 20);
    *(a1 + 20) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 28);
    *(a1 + 28) = v12;
    v12 = v4;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::AccelBatch *a2, CMMsl::AccelBatch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

float CMMsl::AccelBatch::AccelBatch(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041C6A0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041C6A0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::AccelBatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v12[0] = off_10041C6A0;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v16 = *(a1 + 32);
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v12[1] = v7;
    v8 = *(a1 + 20);
    v9 = *(a2 + 20);
    *(a1 + 32) = v3;
    *(a1 + 20) = v9;
    v14 = v8;
    LODWORD(v8) = *(a1 + 28);
    *(a1 + 28) = v5;
    v15 = v8;
    v10 = *(a1 + 16);
    *(a1 + 16) = v6;
    v13 = v10;
    PB::Base::~Base(v12);
  }

  return a1;
}

uint64_t CMMsl::AccelBatch::formatText(CMMsl::AccelBatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "batch", *(this + 4));
    v5 = *(this + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "x", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "y", *(this + 6));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "z", *(this + 7));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AccelBatch::readFrom(CMMsl::AccelBatch *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_69;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_47:
            *(a2 + 24) = 1;
            goto LABEL_65;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_59;
        }

        if (v22 == 2)
        {
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_47;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_44:
          v2 = *(a2 + 1) + 4;
LABEL_59:
          *(a2 + 1) = v2;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 32) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_47;
            }

            *(this + 6) = *(*a2 + v2);
            goto LABEL_44;
          case 4:
            *(this + 32) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_47;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_44;
          case 5:
            *(this + 32) |= 2u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v31 = 0;
              v32 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v33 = v2 - v23;
              v34 = (v24 + v23);
              v35 = v23 + 1;
              while (1)
              {
                if (!v33)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_64;
                }

                v36 = v35;
                v37 = *v34;
                *(a2 + 1) = v36;
                v27 |= (v37 & 0x7F) << v31;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                --v33;
                ++v34;
                v35 = v36 + 1;
                v14 = v32++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_63;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_63:
              v2 = v36;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_64:
            *(this + 4) = v27;
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_65:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_69:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::AccelBatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 28), 4u);
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 5u);
}

BOOL CMMsl::AccelBatch::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
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
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
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

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}