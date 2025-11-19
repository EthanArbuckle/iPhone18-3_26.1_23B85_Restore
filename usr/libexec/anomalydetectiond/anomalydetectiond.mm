void sub_100002250(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_100456978 != -1)
    {
      sub_1003575D8();
    }

    v4 = qword_100456980;
    if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      v5 = "[fba] Failed to add Feedback Assistant notification request,error,%@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v10, 0xCu);
    }
  }

  else
  {
    if (qword_100456978 != -1)
    {
      sub_1003575D8();
    }

    v8 = qword_100456980;
    if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      v5 = "[fba] Successfully added Feedback Assistant notification request for %@";
      v6 = v8;
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }
}

void sub_10000237C(id a1)
{
  qword_100456980 = os_log_create("com.apple.anomalydetectiond", "FeedbackAssistant");

  _objc_release_x1();
}

uint64_t sub_1000038BC(uint64_t result)
{
  *result = &off_1004111D8;
  *(result + 52) = 0;
  return result;
}

void sub_1000038E8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_100003920(uint64_t result, uint64_t a2)
{
  *result = &off_1004111D8;
  *(result + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 44);
    v3 = 32;
    *(result + 52) = 32;
    *(result + 44) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 48);
    v3 |= 0x40u;
    *(result + 52) = v3;
    *(result + 48) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 40);
    v3 |= 0x10u;
    *(result + 52) = v3;
    *(result + 40) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 52) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 52) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_16:
    v10 = *(a2 + 16);
    *(result + 52) = v3 | 2;
    *(result + 16) = v10;
    return result;
  }

LABEL_15:
  v9 = *(a2 + 24);
  v3 |= 4u;
  *(result + 52) = v3;
  *(result + 24) = v9;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100003A10(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100003920(v8, a2);
    v3 = v10;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v5;
    v11 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t sub_100003A7C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 52);
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  v3 = *(result + 44);
  *(result + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v4 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  v5 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  v7 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  v9 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_100003B00(uint64_t result, uint64_t a2)
{
  *result = &off_1004111D8;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t sub_100003B64(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &off_1004111D8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a2 + 52) = 0;
    v6 = *(a1 + 40);
    v11 = *(a1 + 24);
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sub_100003BF0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "createdAtTimestamp", *(a1 + 8));
    v5 = *(a1 + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "epochNumber", *(a1 + 40));
  v5 = *(a1 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "epochTimestamp", *(a1 + 16));
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "lastRealTriggerTimestamp", *(a1 + 24));
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "mode", *(a1 + 44));
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "receivedAtTimestamp", *(a1 + 32));
  if ((*(a1 + 52) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "sessionNumber", *(a1 + 48));
  }

LABEL_9:

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100003D14(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_185;
          }

          v22 = *v20;
          *(this + 1) = v21;
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

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
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
          *(this + 1) = v12;
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

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        switch(v23)
        {
          case 2:
            *(a1 + 52) |= 0x20u;
            v48 = *(this + 1);
            v2 = *(this + 2);
            v49 = *this;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v80 = 0;
              v81 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v82 = v3 - v48;
              v83 = (v49 + v48);
              v84 = v48 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v52) = 0;
                  *(this + 24) = 1;
                  goto LABEL_156;
                }

                v85 = v84;
                v86 = *v83;
                *(this + 1) = v85;
                v52 |= (v86 & 0x7F) << v80;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                --v82;
                ++v83;
                v84 = v85 + 1;
                v14 = v81++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  goto LABEL_155;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_155:
              v3 = v85;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(this + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_156:
            *(a1 + 44) = v52;
            goto LABEL_181;
          case 3:
            *(a1 + 52) |= 0x40u;
            v72 = *(this + 1);
            v2 = *(this + 2);
            v73 = *this;
            if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
            {
              v122 = 0;
              v123 = 0;
              v76 = 0;
              if (v2 <= v72)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v124 = v3 - v72;
              v125 = (v73 + v72);
              v126 = v72 + 1;
              while (1)
              {
                if (!v124)
                {
                  LODWORD(v76) = 0;
                  *(this + 24) = 1;
                  goto LABEL_180;
                }

                v127 = v126;
                v128 = *v125;
                *(this + 1) = v127;
                v76 |= (v128 & 0x7F) << v122;
                if ((v128 & 0x80) == 0)
                {
                  break;
                }

                v122 += 7;
                --v124;
                ++v125;
                v126 = v127 + 1;
                v14 = v123++ > 8;
                if (v14)
                {
                  LODWORD(v76) = 0;
                  goto LABEL_179;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v76) = 0;
              }

LABEL_179:
              v3 = v127;
            }

            else
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v73 + v72);
              v78 = v72 + 1;
              while (1)
              {
                v3 = v78;
                *(this + 1) = v78;
                v79 = *v77++;
                v76 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                ++v78;
                v14 = v75++ > 8;
                if (v14)
                {
                  LODWORD(v76) = 0;
                  break;
                }
              }
            }

LABEL_180:
            *(a1 + 48) = v76;
            goto LABEL_181;
          case 4:
            *(a1 + 52) |= 0x10u;
            v32 = *(this + 1);
            v2 = *(this + 2);
            v33 = *this;
            if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
            {
              v115 = 0;
              v116 = 0;
              v36 = 0;
              if (v2 <= v32)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v117 = v3 - v32;
              v118 = (v33 + v32);
              v119 = v32 + 1;
              while (1)
              {
                if (!v117)
                {
                  LODWORD(v36) = 0;
                  *(this + 24) = 1;
                  goto LABEL_176;
                }

                v120 = v119;
                v121 = *v118;
                *(this + 1) = v120;
                v36 |= (v121 & 0x7F) << v115;
                if ((v121 & 0x80) == 0)
                {
                  break;
                }

                v115 += 7;
                --v117;
                ++v118;
                v119 = v120 + 1;
                v14 = v116++ > 8;
                if (v14)
                {
                  LODWORD(v36) = 0;
                  goto LABEL_175;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v36) = 0;
              }

LABEL_175:
              v3 = v120;
            }

            else
            {
              v34 = 0;
              v35 = 0;
              v36 = 0;
              v37 = (v33 + v32);
              v38 = v32 + 1;
              while (1)
              {
                v3 = v38;
                *(this + 1) = v38;
                v39 = *v37++;
                v36 |= (v39 & 0x7F) << v34;
                if ((v39 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                ++v38;
                v14 = v35++ > 8;
                if (v14)
                {
                  LODWORD(v36) = 0;
                  break;
                }
              }
            }

LABEL_176:
            *(a1 + 40) = v36;
            goto LABEL_181;
        }
      }

      else if (v23 > 99)
      {
        if (v23 == 100)
        {
          *(a1 + 52) |= 4u;
          v64 = *(this + 1);
          v2 = *(this + 2);
          v65 = *this;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v96 = v3 - v64;
            v97 = (v65 + v64);
            v98 = v64 + 1;
            while (1)
            {
              if (!v96)
              {
                v68 = 0;
                *(this + 24) = 1;
                goto LABEL_164;
              }

              v99 = v98;
              v100 = *v97;
              *(this + 1) = v99;
              v68 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              --v96;
              ++v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                v68 = 0;
                goto LABEL_163;
              }
            }

            if (*(this + 24))
            {
              v68 = 0;
            }

LABEL_163:
            v3 = v99;
          }

          else
          {
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = (v65 + v64);
            v70 = v64 + 1;
            while (1)
            {
              v3 = v70;
              *(this + 1) = v70;
              v71 = *v69++;
              v68 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v70;
              v14 = v67++ > 8;
              if (v14)
              {
                v68 = 0;
                break;
              }
            }
          }

LABEL_164:
          *(a1 + 24) = v68;
          goto LABEL_181;
        }

        if (v23 == 101)
        {
          *(a1 + 52) |= 2u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v110 = v3 - v40;
            v111 = (v41 + v40);
            v112 = v40 + 1;
            while (1)
            {
              if (!v110)
              {
                v44 = 0;
                *(this + 24) = 1;
                goto LABEL_172;
              }

              v113 = v112;
              v114 = *v111;
              *(this + 1) = v113;
              v44 |= (v114 & 0x7F) << v108;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              --v110;
              ++v111;
              v112 = v113 + 1;
              v14 = v109++ > 8;
              if (v14)
              {
                v44 = 0;
                goto LABEL_171;
              }
            }

            if (*(this + 24))
            {
              v44 = 0;
            }

LABEL_171:
            v3 = v113;
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            while (1)
            {
              v3 = v46;
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
              if (v14)
              {
                v44 = 0;
                break;
              }
            }
          }

LABEL_172:
          *(a1 + 16) = v44;
          goto LABEL_181;
        }
      }

      else
      {
        if (v23 == 5)
        {
          *(a1 + 52) |= 8u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v89 = v3 - v56;
            v90 = (v57 + v56);
            v91 = v56 + 1;
            while (1)
            {
              if (!v89)
              {
                v60 = 0;
                *(this + 24) = 1;
                goto LABEL_160;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v60 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                v60 = 0;
                goto LABEL_159;
              }
            }

            if (*(this + 24))
            {
              v60 = 0;
            }

LABEL_159:
            v3 = v92;
          }

          else
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            while (1)
            {
              v3 = v62;
              *(this + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
                v60 = 0;
                break;
              }
            }
          }

LABEL_160:
          *(a1 + 32) = v60;
          goto LABEL_181;
        }

        if (v23 == 6)
        {
          *(a1 + 52) |= 1u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v103 = v3 - v24;
            v104 = (v25 + v24);
            v105 = v24 + 1;
            while (1)
            {
              if (!v103)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_168;
              }

              v106 = v105;
              v107 = *v104;
              *(this + 1) = v106;
              v28 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                v28 = 0;
                goto LABEL_167;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }

LABEL_167:
            v3 = v106;
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
              v3 = v30;
              *(this + 1) = v30;
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
                v28 = 0;
                break;
              }
            }
          }

LABEL_168:
          *(a1 + 8) = v28;
          goto LABEL_181;
        }
      }

      if (!PB::Reader::skip(this, v23, v10 & 7, 0))
      {
        v129 = 0;
        return v129 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_181:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_185:
  v129 = v4 ^ 1;
  return v129 & 1;
}

uint64_t sub_1000045E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(result + 44), 2u);
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 52) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this, *(v3 + 48), 3u);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::writeVarInt(this, *(v3 + 40), 4u);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::writeVarInt(this, *(v3 + 32), 5u);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::writeVarInt(this, *(v3 + 24), 0x64u);
    if ((*(v3 + 52) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::writeVarInt(this, *(v3 + 8), 6u);
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(this, v5, 0x65u);
}

BOOL sub_1000046DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000047D8(uint64_t a1)
{
  if ((*(a1 + 52) & 0x20) != 0)
  {
    v1 = *(a1 + 44);
    if ((*(a1 + 52) & 0x40) != 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if ((*(a1 + 52) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if ((*(a1 + 52) & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(a1 + 40);
    if ((*(a1 + 52) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if ((*(a1 + 52) & 8) != 0)
  {
LABEL_5:
    v4 = *(a1 + 32);
    if (*(a1 + 52))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if (*(a1 + 52))
  {
LABEL_6:
    v5 = *(a1 + 8);
    if ((*(a1 + 52) & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v6 = 0;
    if ((*(a1 + 52) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_13:
  v5 = 0;
  if ((*(a1 + 52) & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(a1 + 24);
  if ((*(a1 + 52) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(a1 + 16);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
}

uint64_t sub_100004868(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = 0;
  *(result + 44) = 0;
  *result = &off_100411228;
  *(result + 160) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 84) = 0;
  *(result + 100) = 0;
  *(result + 92) = 0;
  *(result + 108) = 0;
  *(result + 71) = 6;
  strcpy((result + 48), "de-TLS");
  return result;
}

__n128 sub_1000048F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  if (*(a1 + 160) == 1)
  {
    *(a1 + 156) = *(a2 + 48);
    *(a1 + 140) = v4;
    *(a1 + 124) = v3;
    *(a1 + 108) = result;
  }

  else
  {
    *(a1 + 156) = *(a2 + 48);
    *(a1 + 140) = v4;
    *(a1 + 124) = v3;
    *(a1 + 108) = result;
    *(a1 + 160) = 1;
  }

  return result;
}

void sub_100004948(uint64_t a1)
{
  v33 = [CSPersistentConfiguration configBaseKey:"DeescalatorTLSConfig" forFeatureMode:*(a1 + 36)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v32 = [v2 BOOLThreshold:&unk_10037D1E8 forKey:v33];
  v31 = [v2 BOOLThreshold:&unk_10037D1F8 forKey:v33];
  v30 = [v2 BOOLThreshold:&unk_10037D208 forKey:v33];
  v29 = [v2 BOOLThreshold:&unk_10037D218 forKey:v33];
  v3 = [v2 BOOLThreshold:&unk_10037D228 forKey:v33];
  [v2 floatThreshold:&unk_10037D238 forKey:v33];
  v5 = v4;
  [v2 floatThreshold:&unk_10037D248 forKey:v33];
  v7 = v6;
  [v2 floatThreshold:&unk_10037D258 forKey:v33];
  v9 = v8;
  [v2 floatThreshold:&unk_10037D268 forKey:v33];
  v11 = v10;
  [v2 floatThreshold:&unk_10037D278 forKey:v33];
  v13 = v12;
  [v2 floatThreshold:&unk_10037D288 forKey:v33];
  v15 = v14;
  [v2 floatThreshold:&unk_10037D298 forKey:v33];
  v17 = v16;
  v18 = [v2 BOOLThreshold:&unk_10037D2A8 forKey:v33];
  v19 = [v2 BOOLThreshold:&unk_10037D2B8 forKey:v33];
  v20 = [v2 BOOLThreshold:&unk_10037D2C8 forKey:v33];
  v21 = [v2 BOOLThreshold:&unk_10037D2D8 forKey:v33];
  v22 = [v2 BOOLThreshold:&unk_10037D2E8 forKey:v33];
  v23 = [v2 BOOLThreshold:&unk_10037D2F8 forKey:v33];
  v24 = [v2 BOOLThreshold:&unk_10037D308 forKey:v33];
  [v2 floatThreshold:&unk_10037D318 forKey:v33];
  v26 = v25;
  v27 = [v2 BOOLThreshold:&unk_10037D328 forKey:v33];
  v28 = *(a1 + 160);
  *(a1 + 108) = v32;
  *(a1 + 109) = v31;
  *(a1 + 110) = v30;
  *(a1 + 111) = v29;
  *(a1 + 112) = v3;
  *(a1 + 116) = v5;
  *(a1 + 120) = v7;
  *(a1 + 124) = v9;
  *(a1 + 128) = v11;
  *(a1 + 132) = v13;
  *(a1 + 136) = v15;
  *(a1 + 140) = v17;
  *(a1 + 144) = v18;
  *(a1 + 145) = v19;
  *(a1 + 146) = v20;
  *(a1 + 147) = v21;
  if ((v28 & 1) == 0)
  {
    *(a1 + 160) = 1;
  }

  *(a1 + 148) = v22;
  *(a1 + 149) = v23;
  *(a1 + 150) = v24;
  *(a1 + 152) = v26;
  *(a1 + 156) = v27;
  *(a1 + 80) = CLKappaDeescalator::shouldForce(a1, "TurnOffTwoLevelSense");
  *(a1 + 44) = CLKappaDeescalator::shouldForceNoop(a1, "ForceTwoLevel");
  *(a1 + 40) = CLKappaDeescalator::shouldForceDeescalate(a1, "ForceTwoLevel");
}

void sub_100004CAC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (qword_1004567F8 != -1)
  {
    sub_100357AF8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 36);
    v7 = *(a1 + 108);
    v8 = *(a1 + 109);
    v9 = *(a1 + 110);
    v10 = *(a1 + 111);
    v11 = *(a1 + 112);
    v12 = *(a1 + 116);
    v13 = *(a1 + 120);
    v14 = *(a1 + 124);
    v15 = *(a1 + 128);
    v16 = *(a1 + 132);
    v17 = *(a1 + 136);
    v18 = *(a1 + 140);
    v19 = *(a1 + 144);
    v20 = *(a1 + 145);
    v21 = *(a1 + 146);
    v22 = *(a1 + 147);
    v23 = *(a1 + 148);
    v24 = *(a1 + 149);
    v25 = *(a1 + 150);
    v26 = *(a1 + 152);
    v27 = *(a1 + 156);
    v28 = 134354944;
    v29 = a2;
    v30 = 1026;
    v31 = v5;
    v32 = 1026;
    v33 = v6;
    v34 = 1026;
    v35 = v7;
    v36 = 1026;
    v37 = v8;
    v38 = 1026;
    v39 = v9;
    v40 = 1026;
    v41 = v10;
    v42 = 1026;
    v43 = v11;
    v44 = 2050;
    v45 = v12;
    v46 = 2050;
    v47 = v13;
    v48 = 2050;
    v49 = v14;
    v50 = 2050;
    v51 = v15;
    v52 = 2050;
    v53 = v16;
    v54 = 1026;
    v55 = v17;
    v56 = 2050;
    v57 = v18;
    v58 = 1026;
    v59 = v19;
    v60 = 1026;
    v61 = v20;
    v62 = 1026;
    v63 = v21;
    v64 = 1026;
    v65 = v22;
    v66 = 1026;
    v67 = v23;
    v68 = 1026;
    v69 = v24;
    v70 = 1026;
    v71 = v25;
    v72 = 2050;
    v73 = v26;
    v74 = 1026;
    v75 = v27;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[de-TLS] summary,A,%{public}llu,B,%{public}u,mode,%{public}u,config-1,%{public}d,config-2,%{public}d,config-3,%{public}d,config-4,%{public}d,config-5,%{public}d,config-6,%{public}f,config-7,%{public}f,config-8,%{public}f,config-9,%{public}f,config-10,%{public}f,config-11,%{public}d,config-12,%{public}f,config-13,%{public}d,config-14,%{public}d,config-15,%{public}d,config-16,%{public}d,config-17,%{public}d,config-18,%{public}d,config-19,%{public}d,config-20,%{public}f,config-21,%{public}d", &v28, 0xB2u);
  }
}

uint64_t sub_100004ECC(_BYTE *a1)
{
  if ((a1[160] & 1) == 0)
  {
    sub_100005BF0();
  }

  v1 = a1[111] == 1 && (a1[74] & 1) != 0;
  if (a1[108] == 1 && a1[75])
  {
    v1 |= 2uLL;
  }

  if (a1[110] == 1 && a1[77] == 1)
  {
    v1 |= 4uLL;
  }

  if (a1[76])
  {
    v1 |= 0x80uLL;
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v2 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[de-TLS] force high sensitivity", v4, 2u);
    }
  }

  return v1;
}

BOOL sub_100004FBC(_BYTE *a1)
{
  if (qword_1004567F8 != -1)
  {
    sub_100357AF8();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67240192;
    v4[1] = sub_100004ECC(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[de-TLS] proxyForCar bitmap %{public}d", v4, 8u);
  }

  return sub_100004ECC(a1) != 0;
}

uint64_t sub_1000050AC(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 7;
  }

  if (*(a1 + 79) == 1 && (*(a1 + 74) & 1) == 0)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[de-TLS] De-escalating due to road distance", &v12, 2u);
    }

    *(a1 + 104) = 2;
    return 4;
  }

  else if (*(a1 + 73) == 1 && (sub_100004FBC(a1) || (*(a1 + 73) & 1) != 0 && *(a1 + 72) == 1))
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 73);
      v5 = sub_100004FBC(a1);
      v6 = *(a1 + 72);
      v12 = 67240704;
      v13 = v4;
      v14 = 1026;
      v15 = v5;
      v16 = 1026;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[de-TLS] two-level escalation min/max cand %{public}d proxy %{public}d ls %{public}d", &v12, 0x14u);
    }

    return 6;
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v8 = qword_100456800;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 73);
      v10 = sub_100004FBC(a1);
      v11 = *(a1 + 72);
      v12 = 67240704;
      v13 = v9;
      v14 = 1026;
      v15 = v10;
      v16 = 1026;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[de-TLS] two-level no info min/max cand %{public}d proxy %{public}d ls %{public}d", &v12, 0x14u);
    }

    return 0;
  }
}

unint64_t sub_100005308(uint64_t a1)
{
  v2 = [CSPersistentConfiguration configBaseKey:"ForceTwoLevelReason" forFeatureMode:*(a1 + 36)];
  v3 = +[CSPersistentConfiguration sharedConfiguration];
  v4 = [v3 getIntegerDefault:v2];

  if ((v4 & 0x100000000) != 0 && v4)
  {
    if (v4 >= 3)
    {
      if (qword_1004567F8 != -1)
      {
        sub_100357AF8();
      }

      v5 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[de-TLS] rejecting invalid reason %d", v7, 8u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = *(a1 + 104);
  }

  return v4;
}

uint64_t sub_100005450(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 7;
  }

  if (*(a1 + 73) == 1 && (sub_100004FBC(a1) || (*(a1 + 73) & 1) != 0 && *(a1 + 72) == 1))
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v3 = qword_100456800;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 73);
      v5 = sub_100004FBC(a1);
      v6 = *(a1 + 72);
      v11 = 67240704;
      v12 = v4;
      v13 = 1026;
      v14 = v5;
      v15 = 1026;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[de-TLS] two-level escalation at boundary cand %{public}d proxy %{public}d ls %{public}d", &v11, 0x14u);
    }

    return 6;
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 73);
      v9 = sub_100004FBC(a1);
      v10 = *(a1 + 72);
      v11 = 67240704;
      v12 = v8;
      v13 = 1026;
      v14 = v9;
      v15 = 1026;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[de-TLS] two-level de-escalation at boundary cand %{public}d proxy %{public}d ls %{public}d", &v11, 0x14u);
    }

    *(a1 + 104) = 1;
    return 4;
  }
}

float sub_100005638(uint64_t a1, float16x4_t *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (a2[3].i8[4] == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357AF8();
    }

    v4 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[de-TLS] got bt hint, probably in car", &v23, 2u);
    }

    *(a1 + 74) = 1;
  }

  *(a1 + 84) = vcvtq_f32_f16(a2[5]).u64[0];
  _H0 = a2[5].i16[2];
  __asm { FCVT            S0, H0 }

  *(a1 + 92) = _S0;
  *(a1 + 96) = ((*&a2[1] - *&a2[4]) / 1000000.0);
  if (qword_1004567F8 != -1)
  {
    sub_100357B0C();
  }

  v11 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 84);
    v13 = *(a1 + 116);
    v14 = *(a1 + 88);
    v15 = *(a1 + 120);
    v16 = *(a1 + 92);
    v17 = *(a1 + 124);
    v18 = *(a1 + 96);
    v19 = *(a1 + 128);
    v23 = 134350848;
    v24 = v12;
    v25 = 2050;
    v26 = v13;
    v27 = 2050;
    v28 = v14;
    v29 = 2050;
    v30 = v15;
    v31 = 2050;
    v32 = v16;
    v33 = 2050;
    v34 = v17;
    v35 = 2050;
    v36 = v18;
    v37 = 2050;
    v38 = v19;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[de-TLS] imu confidence (%{public}f, %{public}f) (%{public}f, %{public}f) (%{public}f, %{public}f) (%{public}llu, %{public}f)", &v23, 0x52u);
  }

  if (*(a1 + 96) <= *(a1 + 128))
  {
    if (*(a1 + 84) > *(a1 + 116) || *(a1 + 88) > *(a1 + 120) || (result = *(a1 + 92), result > *(a1 + 124)))
    {
      if (qword_1004567F8 != -1)
      {
        sub_100357B0C();
      }

      v22 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[de-TLS] imu cond passed", &v23, 2u);
      }

      *(a1 + 75) = 1;
    }
  }

  else
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357B0C();
    }

    v20 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[de-TLS] imu coef too old", &v23, 2u);
    }
  }

  return result;
}

void sub_100005910(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    sub_100005BF0();
  }

  if (qword_1004567F8 != -1)
  {
    sub_100357AF8();
  }

  v4 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 156);
    v6 = *(a2 + 16);
    v7 = *(a2 + 8);
    v8 = *(a1 + 140);
    v12[0] = 67241216;
    v12[1] = v5;
    v13 = 1026;
    v14 = v6;
    v15 = 2050;
    v16 = v7;
    v17 = 2050;
    v18 = v8;
    v19 = 1026;
    v20 = v7 < v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[de-TLS] ignoreUnknownRoads %{public}d roadClass %{public}d distance to road %{public}f under %{public}f passed %{public}d", v12, 0x28u);
  }

  if (*(a1 + 156) == 1 && *(a2 + 16) == 9)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357B0C();
    }

    v9 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[de-TLS] roadClass UNKNOWN_ROAD. Ignoring per configuration.", v12, 2u);
    }
  }

  else
  {
    v10 = *(a2 + 8);
    if (v10 < *(a1 + 140))
    {
      *(a1 + 77) = 1;
    }

    if (*(a1 + 149) == 1)
    {
      if (*(a1 + 150) == 1)
      {
        if (!sub_100005B40())
        {
          return;
        }

        v10 = *(a2 + 8);
      }

      if (v10 > *(a1 + 152))
      {
        if (qword_1004567F8 != -1)
        {
          sub_100357B0C();
        }

        v11 = qword_100456800;
        if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[de-TLS] Road Distance de-escalation condition met", v12, 2u);
        }

        *(a1 + 79) = 1;
      }
    }
  }
}

id sub_100005B40()
{
  v0 = +[CSMapDataQuality sharedInstance];
  v1 = [v0 turnByTurnDirectionsEnabled];

  return v1;
}

void sub_100005B94(void **a1)
{
  CLKappaDeescalator::~CLKappaDeescalator(a1);

  operator delete();
}

void sub_100005BF0()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_100005C3C(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_100005C80(uint64_t result)
{
  *result = &off_1004112D8;
  *(result + 12) = 0;
  return result;
}

void sub_100005CA8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_100005CE0(uint64_t result, uint64_t a2)
{
  *result = &off_1004112D8;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_100005D1C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &off_1004112D8;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sub_100005D90(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v2;
  v3 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100005DB4(uint64_t result, uint64_t a2)
{
  *result = &off_1004112D8;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_100005DE8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &off_1004112D8;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sub_100005E58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "nop", *(a1 + 8));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100005EB8(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
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
          *(this + 1) = v12;
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
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
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

          if (*(this + 24))
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
            *(this + 1) = v29;
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
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_10000612C(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::writeVarInt(this, *(result + 8), 1u);
  }

  return result;
}

BOOL sub_10000614C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sub_100006188(uint64_t a1)
{
  if (*(a1 + 12))
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_100006284(id a1)
{
  qword_100458778 = [[CLDispatchSilo alloc] initWithIdentifier:@"CSInjectionServiceSilo"];

  _objc_release_x1();
}

id sub_1000067CC()
{
  if (qword_100456888 != -1)
  {
    sub_100357B48();
  }

  v1 = qword_100456890;

  return v1;
}

void sub_100006854(id a1)
{
  qword_100456890 = os_log_create("com.apple.anomalydetectiond", "InjectionService");

  _objc_release_x1();
}

void sub_100006898(uint64_t a1)
{
  if (qword_1004567F8 != -1)
  {
    sub_100357B7C();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = *(a1 + 34);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v10 = *(a1 + 52);
    v11 = *(a1 + 56);
    v12 = *(a1 + 38);
    v13 = *(a1 + 36);
    v14 = *(a1 + 12);
    v16 = *(a1 + 60);
    v15 = *(a1 + 64);
    v17 = *(a1 + 16);
    v18 = *(a1 + 20);
    v20 = 67244032;
    v21 = v3;
    v22 = 2050;
    v23 = v4;
    v24 = 1026;
    v25 = v5;
    v26 = 1026;
    v27 = v6;
    v28 = 2050;
    v29 = v7;
    v30 = 2050;
    v31 = v8;
    v32 = 2050;
    v33 = v9;
    v34 = 2050;
    v35 = v10;
    v36 = 2050;
    v37 = v11;
    v38 = 1026;
    v39 = v12;
    v40 = 1026;
    v41 = v13;
    v42 = 1026;
    v43 = v14;
    v44 = 1026;
    v45 = v15;
    v46 = 1026;
    v47 = v16;
    v48 = 2050;
    v49 = v17;
    v50 = 2050;
    v51 = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Zg] summary,%{public}d,A,%{public}llu,B,%{public}hu,C,%{public}hu,D,%{public}f,E,%{public}f,F,%{public}f,G,%{public}f,H,%{public}f,I,%{public}hd,J,%{public}hu,K,%{public}d,L,%{public}d,M,%{public}d,config-1,%{public}f,config-2,%{public}f\n", &v20, 0x82u);
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357B90();
    }

    v19 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67240192;
      v21 = dword_100458788;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Zg] epoch %{public}d YES\n", &v20, 8u);
    }
  }

  ++dword_100458788;
}

id sub_100006AA0()
{
  if (qword_1004567F8 != -1)
  {
    sub_100357B7C();
  }

  v1 = qword_100456800;

  return v1;
}

void sub_100006AE4(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [NSNumber numberWithUnsignedShort:*(a1 + 32)];
  [v24 setObject:v3 forKeyedSubscript:@"zg-A"];

  v4 = [NSNumber numberWithUnsignedShort:*(a1 + 34)];
  [v24 setObject:v4 forKeyedSubscript:@"zg-B"];

  v5 = [NSNumber numberWithDouble:*(a1 + 48)];
  v6 = [v5 stringValue];
  [v24 setObject:v6 forKeyedSubscript:@"zg-C"];

  v7 = [NSNumber numberWithDouble:*(a1 + 40)];
  v8 = [v7 stringValue];
  [v24 setObject:v8 forKeyedSubscript:@"zg-D"];

  v9 = [NSNumber numberWithDouble:*(a1 + 44)];
  v10 = [v9 stringValue];
  [v24 setObject:v10 forKeyedSubscript:@"zg-E"];

  v11 = [NSNumber numberWithDouble:*(a1 + 52)];
  v12 = [v11 stringValue];
  [v24 setObject:v12 forKeyedSubscript:@"zg-F"];

  v13 = [NSNumber numberWithDouble:*(a1 + 56)];
  v14 = [v13 stringValue];
  [v24 setObject:v14 forKeyedSubscript:@"zg-G"];

  v15 = [NSNumber numberWithShort:*(a1 + 38)];
  [v24 setObject:v15 forKeyedSubscript:@"zg-H"];

  v16 = [NSNumber numberWithUnsignedShort:*(a1 + 36)];
  [v24 setObject:v16 forKeyedSubscript:@"zg-I"];

  v17 = [NSNumber numberWithInt:*(a1 + 12)];
  [v24 setObject:v17 forKeyedSubscript:@"zg-J"];

  v18 = [NSNumber numberWithInt:*(a1 + 64)];
  [v24 setObject:v18 forKeyedSubscript:@"zg-K"];

  v19 = [NSNumber numberWithInt:*(a1 + 60)];
  [v24 setObject:v19 forKeyedSubscript:@"zg-L"];

  v20 = [NSNumber numberWithDouble:*(a1 + 16)];
  v21 = [v20 stringValue];
  [v24 setObject:v21 forKeyedSubscript:@"zg-config-1"];

  v22 = [NSNumber numberWithDouble:*(a1 + 20)];
  v23 = [v22 stringValue];
  [v24 setObject:v23 forKeyedSubscript:@"zg-config-2"];
}

void sub_100006EA4(uint64_t a1, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(a1, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(a1 + *(v4 - 152)) = a2[6];
  *(a1 + *(*a1 - 160)) = a2[7];
  *(a1 + *(*a1 - 168)) = a2[8];
  *(a1 + *(*a1 - 176)) = a2[9];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0x410000003DCCCCCDLL;
  *(a1 + 80) = -1;
  v6 = vneg_f32(0x80000000800000);
  *(a1 + 88) = v6;
  *(a1 + 96) = 2139095039;
  *(a1 + 104) = xmmword_10037D410;
  *(a1 + 120) = xmmword_10037D420;
  *(a1 + 136) = -1;
  *(a1 + 144) = v6;
  *(a1 + 152) = 2139095039;
  sub_100008D30(a1 + 232, 0);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0xBF80000000000000;
  *(a1 + 376) = 0;
  *(a1 + 382) = 0;
  *(a1 + 390) = 0xFFFFLL;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0x4B200000000;
  *(a1 + 29296) = 0x4B200000000;
  *(a1 + 30512) = 0x12D00000000;
  *(a1 + 37744) = 0x12C00000000;
  operator new();
}

void sub_100007294(_Unwind_Exception *a1)
{
  sub_100009548(v1 + 296);
  sub_100009548(v1 + 256);
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

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_1000072EC@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

uint64_t sub_10000737C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000072EC(&v8, &v10);
  v5 = v10;
  v10 = 0uLL;
  v6 = *(a1 + 40);
  *(a1 + 32) = v5;
  if (v6)
  {
    sub_100009A48(v6);
    if (*(&v10 + 1))
    {
      sub_100009A48(*(&v10 + 1));
    }
  }

  if (v9)
  {
    sub_100009A48(v9);
  }

  *(*(a1 + 32) + 104) = a2;
  CLZgDetection::setHardware(a1 + 104, a2);
  result = CLZgDetection::getHardwareProperties((a1 + 104));
  *(*(a1 + 32) + 112) = result;
  return result;
}

void sub_100007428(uint64_t a1)
{
  v2 = (a1 + 44952);
  *a1 = off_100411FE8;
  *(a1 + 44952) = off_100412090;
  *(a1 + 44960) = off_100412158;
  *(a1 + 44968) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(a1, off_100411960);
  *v3 = off_100411410;
  *v2 = off_1004116D0;
  v2[1] = off_100411818;
  v2[2] = off_100411908;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 1;
  *(v3 + 68) = 0x410000003DCCCCCDLL;
  *(v3 + 80) = -1;
  v4 = vneg_f32(0x80000000800000);
  *(v3 + 88) = v4;
  *(v3 + 96) = 2139095039;
  *(v3 + 104) = xmmword_10037D410;
  *(v3 + 120) = xmmword_10037D420;
  *(v3 + 136) = -1;
  *(v3 + 144) = v4;
  *(v3 + 152) = 2139095039;
  sub_100008D30(v3 + 232, 0);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0xBF80000000000000;
  *(a1 + 376) = 0;
  *(a1 + 382) = 0;
  *(a1 + 390) = 0xFFFFLL;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0x4B200000000;
  *(a1 + 29296) = 0x4B200000000;
  *(a1 + 30512) = 0x12D00000000;
  *(a1 + 37744) = 0x12C00000000;
  operator new();
}

void sub_100007798(_Unwind_Exception *a1)
{
  sub_100009548(v1 + 296);
  sub_100009548(v1 + 256);
  v3 = *(v1 + 7);
  if (v3)
  {
    sub_100009A48(v3);
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    sub_100009A48(v4);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100411960);
  _Unwind_Resume(a1);
}

void sub_1000077F4(uint64_t a1)
{
  v12 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgZgConfig" forFeatureMode:*(a1 + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 983815946;
  LODWORD(v4) = 1036831949;
  LODWORD(v5) = 1.5;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v12 withMinValue:v3 maxValue:v5 defaultValue:v4];
  v13[0] = v6;

  v7 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 14.0;
  LODWORD(v10) = 8.0;
  [v7 algorithmThresholdNumber:1 inArrayForKey:v12 withMinValue:v8 maxValue:v9 defaultValue:v10];
  v13[1] = v11;

  sub_1000078F0(a1, v13);
}

double sub_1000078F0(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 68) = *a2;
  *(a1 + 72) = v4;
  v5 = *(a1 + 32);
  *(v5 + 16) = v3;
  *(v5 + 20) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_100357B7C();
  }

  v6 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 68);
    v9 = *(a1 + 72);
    v10 = 134218240;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[Zg] config %f, %f", &v10, 0x16u);
  }

  return result;
}

void sub_1000079D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *(v3 + 24) = a2;
  *(v3 + 44) = 0;
  v4 = *(*(a1 + 48) + 24);
  if ([v4 count])
  {
    *(*(a1 + 32) + 44) = CLRobustMaxAccelNorm::robustMaxAccelNorm(v4);
  }
}

void sub_100007A78(uint64_t a1)
{
  v2 = (a1 + 29296);
  (*(**(a1 + 32) + 24))(*(a1 + 32));
  v3 = *(a1 + 32);
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  v4 = *(a1 + 32);
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(a1 + 440) = 0;
  *v2 = 0;
  v2[304] = 0;
  *(a1 + 37744) = 0;
  *(a1 + 388) = -65536;
  *(a1 + 368) = xmmword_10037D430;
  *(a1 + 80) = -1;
  *(a1 + 88) = vneg_f32(0x80000000800000);
  *(a1 + 96) = 2139095039;
  CLZgDetection::reset((a1 + 104));
  *(a1 + 392) = 0;
  *(a1 + 396) = 0;
  *(a1 + 432) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
}

void sub_100007B68(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = *a2;
  if (!*(v5 + 88))
  {
    *(v5 + 88) = v6;
  }

  *(v5 + 96) = v6;
  v7 = *(a1 + 442);
  if (*(a1 + 442))
  {
    a3 = v6;
    v8 = a1 + 448;
    v9 = v7 + *(a1 + 440) - 1;
    v10 = *(a1 + 444);
    if (v9 >= v10)
    {
      v11 = *(a1 + 444);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v8 + 24 * (v9 - v11));
    if (v12 + 2499.99994 < a3)
    {
      ++*(v5 + 80);
      *&a3 = (v6 - v12) / 1000000.0;
      if (*(v5 + 72) >= *&a3)
      {
        LODWORD(a3) = *(v5 + 72);
      }

      *(v5 + 72) = LODWORD(a3);
    }

    if (v6 <= v12)
    {
      if (qword_1004567F8 != -1)
      {
        sub_100357B7C();
      }

      v13 = qword_100456800;
      if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
      {
        v14 = *a2;
        v15 = *(a1 + 440) + *(a1 + 442) - 1;
        v16 = *(a1 + 444);
        if (v15 < v16)
        {
          v16 = 0;
        }

        v17 = *(v8 + 24 * (v15 - v16));
        *v22 = 134218240;
        *&v22[4] = v14;
        *&v22[12] = 2048;
        *&v22[14] = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[Zg] acc went backward %llu <- %llu", v22, 0x16u);
      }

      return;
    }
  }

  else
  {
    LODWORD(v10) = *(a1 + 444);
  }

  if (v10 == v7)
  {
    v18 = *(a1 + 29298);
    if (v18)
    {
      v19 = *(a1 + 29296);
      LOBYTE(a3) = *(a1 + v19 + 29304);
      *(a1 + 352) = *(a1 + 352) + (LODWORD(a3) * -0.00125);
      v20 = v19 + 1;
      v21 = *(a1 + 29300);
      if (v20 < v21)
      {
        LOWORD(v21) = 0;
      }

      *(a1 + 29296) = v20 - v21;
      *(a1 + 29298) = v18 - 1;
    }
  }

  *v22 = v6;
  *&v22[8] = *(a2 + 8);
  *&v22[16] = *(a2 + 16);
  sub_100007D90((a1 + 440), v22);
}

unsigned __int16 *sub_100007D90(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[12 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 3) = *(a2 + 2);
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

void sub_100007E18(float32x2_t *a1, uint64_t a2)
{
  v4 = a1 + 3584;
  v5 = a1[4];
  v6 = *(a2 + 42);
  if (!*(*&v5 + 88))
  {
    *(*&v5 + 88) = v6;
  }

  *(*&v5 + 96) = v6;
  if (!a1[3814].i16[1])
  {
    goto LABEL_11;
  }

  v7 = a1 + 3815;
  v8 = a1[3814].u16[1] + a1[3814].u16[0] - 1;
  v9 = a1[3814].u32[1];
  if (v8 < v9)
  {
    v9 = 0;
  }

  v10 = v7[3 * (v8 - v9)];
  if (v10 + 9999.99978 < v6)
  {
    ++*(*&v5 + 82);
    v11 = (v6 - v10) / 1000000.0;
    if (*(*&v5 + 76) >= v11)
    {
      v11 = *(*&v5 + 76);
    }

    *(*&v5 + 76) = v11;
  }

  if (v6 <= v10)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357B7C();
    }

    v17 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a2 + 42);
      v19 = v4[230].u16[0] + v4[230].u16[1] - 1;
      v20 = v4[230].u32[1];
      if (v19 < v20)
      {
        v20 = 0;
      }

      v21 = v7[3 * (v19 - v20)];
      *v22 = 134218240;
      *&v22[4] = v18;
      *&v22[12] = 2048;
      *&v22[14] = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[Zg] DM went backward %llu <- %llu", v22, 0x16u);
    }
  }

  else
  {
LABEL_11:
    *v22 = v6;
    *&v22[8] = *(a2 + 16);
    *&v22[16] = *(a2 + 24);
    sub_100007D90(&a1[3814], v22);
    v13 = a1[10];
    v14 = *(a2 + 42);
    if (*&v13 != -1 && *&v14 > *&v13)
    {
      *v12.i32 = (*&v14 - *&v13) / 1000000.0;
      v15 = (*(a2 + 24) - a1[12].f32[0]) / *v12.i32;
      *v22 = (*&v14 + *&v13) >> 1;
      *&v22[8] = vdiv_f32(vsub_f32(*(a2 + 16), a1[11]), vdup_lane_s32(v12, 0));
      *&v22[16] = v15;
      sub_100007D90(&a1[4718], v22);
      v14 = *(a2 + 42);
    }

    v16 = *(a2 + 24);
    a1[10] = v14;
    a1[11] = *(a2 + 16);
    a1[12].i32[0] = v16;
    sub_100008078(a1);
  }
}

void sub_100008078(float32x2_t *a1)
{
  v1 = &a1[4718] + 1;
  if (a1[4718].u16[1] >= 2u)
  {
    v3 = a1 + 3662;
    v4 = a1[3662].u16[1];
    if (v4 < a1[55].u16[1])
    {
      v5 = a1 + 3663;
      v6 = vdup_n_s32(0x3AA3D70Au);
      v30 = &a1[4718] + 1;
      do
      {
        v32 = *v1;
        v31 = v3[152].u16[1];
        v7 = sub_1000083CC(a1, v4, &v32, &v31);
        if (v7)
        {
          if (v7 == 2)
          {
            break;
          }

          v8 = sub_100009B50(&a1[55], v4);
          v9 = v31;
          v10 = sub_100009B50(&a1[3814], v31);
          v11 = sub_100009B50(&a1[3814], v9 - 1);
          v12 = v32;
          v13 = sub_100009B50(&a1[4718], v32);
          v14 = sub_100009B50(&a1[4718], v12 - 1);
          CLZgDetection::queryZgState(&a1[13], v8, v10, v11, v13, v14);
          v16 = v3->u16[1];
          v17 = v3->u32[1];
          v18 = v3->u16[0];
          if (v18 + v16 >= v17)
          {
            v19 = v3->u32[1];
          }

          else
          {
            v19 = 0;
          }

          v5->i8[v18 + v16 - v19] = v15;
          if (v17 <= v16)
          {
            if (v18 + 1 < v17)
            {
              LOWORD(v17) = 0;
            }

            v3->i16[0] = v18 + 1 - v17;
          }

          else
          {
            v3->i16[1] = v16 + 1;
          }

          v1 = v30;
          if (v15)
          {
            if (*sub_100009B50(&a1[55], v4) - *&a1[52] <= 0xEA3uLL)
            {
              v24 = a1[45].f32[0] + 0.00125;
            }

            else
            {
              ++a1[49].i16[2];
              v24 = 0.0025;
            }

            a1[45].f32[0] = v24;
            if (a1[45].f32[1] >= v24)
            {
              v24 = a1[45].f32[1];
            }

            a1[45].f32[1] = v24;
            v25 = a1[50];
            if (!*&v25)
            {
              v25 = *sub_100009B50(&a1[55], v4);
            }

            a1[50] = v25;
            v26 = sub_100009B50(&a1[55], v4);
            v27 = a1[51];
            if (*v26 > *&v27)
            {
              v27 = *sub_100009B50(&a1[55], v4);
            }

            a1[51] = v27;
            a1[44] = vadd_f32(a1[44], v6);
            a1[52] = *sub_100009B50(&a1[55], v4);
          }
        }

        else
        {
          v20 = v3->u16[1];
          v21 = v3->u32[1];
          v22 = v3->u16[0];
          if (v22 + v20 >= v21)
          {
            v23 = v3->u32[1];
          }

          else
          {
            v23 = 0;
          }

          v5->i8[v22 + v20 - v23] = 0;
          if (v21 <= v20)
          {
            if (v22 + 1 < v21)
            {
              LOWORD(v21) = 0;
            }

            v3->i16[0] = v22 + 1 - v21;
          }

          else
          {
            v3->i16[1] = v20 + 1;
          }
        }

        ++v4;
      }

      while (v4 < a1[55].u16[1]);
    }

    LODWORD(v32) = -1082130432;
    v28 = -1;
    LOWORD(v31) = -1;
    v29 = -1.0;
    if (a1[44].f32[0] >= a1[8].f32[1])
    {
      if (*(v1 + 1) == *v1 && a1[55].i32[1] == a1[55].u16[1])
      {
        sub_1000084CC(a1, &v32, &v31);
        ++a1[49].i16[0];
        v29 = *&v32;
        v28 = v31;
      }

      else
      {
        v28 = -1;
      }
    }

    sub_1000086B0(a1, v28, v29);
  }
}

uint64_t sub_1000083CC(unsigned __int16 *a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1[18873])
  {
    *a3 = a1[18873];
    while (1)
    {
      v8 = *sub_100009B50(a1 + 220, a2);
      v9 = sub_100009B50(a1 + 18872, *a3 - 1);
      v10 = *a3;
      if (v8 > *v9)
      {
        break;
      }

      v11 = v10 - 1;
      *a3 = v11;
      if (!v11)
      {
        return 0;
      }
    }

    if (v10 == a1[18873])
    {
      return 2;
    }

    else
    {
      for (i = a1[15257]; ; i = *a4 - 1)
      {
        *a4 = i;
        v14 = *sub_100009B50(a1 + 220, a2);
        if (v14 > *sub_100009B50(a1 + 15256, *a4 - 1))
        {
          break;
        }
      }

      return 1;
    }
  }

  else
  {
    v15 = sub_100357BB8();
    return sub_1000084CC(v15);
  }
}

uint64_t sub_1000084CC(uint64_t result, float *a2, __int16 *a3)
{
  *a2 = 0.0;
  *a3 = 0;
  v3 = *(result + 442);
  if (v3 >= 0x14)
  {
    v4 = result;
    if (v3 >= *(result + 29298))
    {
      v7 = 0;
      v8 = 0.0;
      do
      {
        v9 = *(sub_100009B50((v4 + 440), v7) + 8);
        v10 = *(sub_100009B50((v4 + 440), v7) + 12);
        result = sub_100009B50((v4 + 440), v7);
        v8 = v8 + sqrtf(((v10 * v10) + (v9 * v9)) + (*(result + 16) * *(result + 16)));
        ++v7;
      }

      while (v7 != 20);
      *a2 = v8 / 20.0;
      v11 = *a3;
      if ((v8 / 20.0) >= *(v4 + 72))
      {
        ++v11;
      }

      *a3 = v11;
      if (*(v4 + 29298) != 20)
      {
        v12 = 0;
        do
        {
          v13 = *(sub_100009B50((v4 + 440), v12) + 8);
          v14 = *(sub_100009B50((v4 + 440), v12) + 12);
          v15 = sub_100009B50((v4 + 440), v12);
          v16 = v8 - sqrtf(((v14 * v14) + (v13 * v13)) + (*(v15 + 16) * *(v15 + 16)));
          v17 = *(sub_100009B50((v4 + 440), v12 + 20) + 8);
          v18 = *(sub_100009B50((v4 + 440), v12 + 20) + 12);
          result = sub_100009B50((v4 + 440), v12 + 20);
          v8 = v16 + sqrtf(((v18 * v18) + (v17 * v17)) + (*(result + 16) * *(result + 16)));
          if ((v8 / 20.0) >= *(v4 + 72))
          {
            v19 = *(v4 + 432);
            if (!v19)
            {
              result = sub_100009B50((v4 + 440), v12 + 1);
              v19 = *result;
            }

            *(v4 + 432) = v19;
            ++*a3;
          }

          v20 = *a2;
          if (*a2 < (v8 / 20.0))
          {
            v20 = v8 / 20.0;
          }

          *a2 = v20;
          v21 = v12 + 2;
          ++v12;
        }

        while (v21 <= *(v4 + 29298) - 20);
      }
    }
  }

  return result;
}

float sub_1000086B0(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 352);
  if (v3 >= *(a1 + 68) && *(a1 + 72) <= a3)
  {
    ++*(a1 + 394);
    if (v3 < *(a1 + 376))
    {
      v3 = *(a1 + 376);
    }

    *(a1 + 376) = v3;
    if (*(a1 + 368) > a3)
    {
      a3 = *(a1 + 368);
    }

    *(a1 + 368) = a3;
    v10 = *(a1 + 388);
    if (v10 <= a2)
    {
      LOWORD(v10) = a2;
    }

    *(a1 + 388) = v10;
    v6 = *(a1 + 32);
    *(v6 + 8) = 1;
    *(v6 + 68) = 1;
  }

  else
  {
    if (*(a1 + 372) > a3)
    {
      a3 = *(a1 + 372);
    }

    *(a1 + 372) = a3;
    v4 = *(a1 + 390);
    if (v4 <= a2)
    {
      LOWORD(v4) = a2;
    }

    *(a1 + 390) = v4;
    v5 = 352;
    if (v3 < *(a1 + 380))
    {
      v5 = 380;
    }

    *(a1 + 380) = *(a1 + v5);
    v6 = *(a1 + 32);
    if ((*(v6 + 8) & 1) == 0)
    {
      v7 = 390;
      v8 = 372;
      v9 = 380;
      goto LABEL_19;
    }
  }

  v7 = 388;
  v8 = 368;
  v9 = 376;
LABEL_19:
  v11 = *(a1 + v7);
  v12 = *(a1 + v8);
  *(v6 + 48) = *(a1 + v9);
  *(v6 + 40) = v12;
  *(v6 + 38) = v11;
  v13 = *(a1 + 424);
  if (v13)
  {
    v14 = *(a1 + 432);
    v15 = v14 - v13;
    if (!v14)
    {
      v15 = 0x7FFFFFFF;
    }

    *(v6 + 12) = v15;
    v16 = *(a1 + 400);
    v17 = v16 - v13;
    if (!v16)
    {
      v17 = 0x7FFFFFFF;
    }

    *(v6 + 64) = v17;
  }

  v18 = *(a1 + 408);
  if (v18)
  {
    v19 = v18 - *(a1 + 400);
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  *(v6 + 60) = v19;
  *(v6 + 32) = *(a1 + 392);
  *(v6 + 34) = *(a1 + 394);
  result = *(a1 + 356);
  v21 = *(a1 + 364);
  *(v6 + 52) = result;
  *(v6 + 56) = v21;
  return result;
}

uint64_t sub_100008860@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1000088C0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1000088F0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_100008974@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result + *(*result - 40);
  v4 = *(v2 + 1);
  v3 = *(v2 + 2);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100008A5C(CLKappaAlgBlock *a1)
{
  sub_10000987C(a1, &off_100411958);

  operator delete();
}

uint64_t sub_100008A9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 == 2)
  {
    if ((*(a2 + 46) & 0x10) != 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (v2 != 1 || (*(a2 + 1) & 0x10) == 0)
  {
LABEL_4:
    *(result + 424) = *(a2 + 8);
  }

  return result;
}

void sub_100008AD4(uint64_t a1, uint64_t *a2)
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

void sub_100008B2C(void *a1)
{
  sub_10000987C((a1 + *(*a1 - 24)), &off_100411958);

  operator delete();
}

void sub_100008B94(void *a1, uint64_t *a2)
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

void sub_100008BF8(void *a1)
{
  sub_10000987C((a1 + *(*a1 - 24)), &off_100411958);

  operator delete();
}

void sub_100008C84(void *a1)
{
  sub_10000987C((a1 + *(*a1 - 24)), &off_100411958);

  operator delete();
}

void sub_100008CEC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

uint64_t sub_100008D30(uint64_t a1, unint64_t a2)
{
  memcpy(__dst, &unk_10037D488, sizeof(__dst));
  sub_100009010(a1 + 24, __dst, 38);
  memcpy(__dst, &unk_10037D818, sizeof(__dst));
  sub_100009010(a1 + 64, __dst, 38);
  sub_100008E14(a1, a2);
  return a1;
}

void sub_100008DE8(_Unwind_Exception *a1)
{
  sub_100009548(v1 + 64);
  sub_100009548(v1 + 24);
  _Unwind_Resume(a1);
}

double sub_100008E14(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  *(a1 + 104) = a2;
  if (sub_100009594((a1 + 24), &v15))
  {
    *buf = &v15;
    v3 = sub_100009648((a1 + 64), &v15);
    v4 = v3[3];
    *(a1 + 20) = *(v3 + 8);
    *(a1 + 12) = v4;
    *buf = &v15;
    v5 = sub_100009648((a1 + 24), &v15);
    v6 = v5[3];
    *(a1 + 8) = *(v5 + 8);
    *a1 = v6;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (qword_1004567F8 != -1)
  {
    sub_100357B90();
  }

  v7 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 12);
    v10 = *(a1 + 16);
    v11 = *(a1 + 20);
    v12 = *a1;
    v13 = *(a1 + 4);
    v14 = *(a1 + 8);
    *buf = 136317954;
    *&buf[4] = "Lx";
    v17 = 2048;
    v18 = v9;
    v19 = 2080;
    v20 = "Ly";
    v21 = 2048;
    v22 = v10;
    v23 = 2080;
    v24 = "Lz";
    v25 = 2048;
    v26 = v11;
    v27 = 2080;
    v28 = "Ix";
    v29 = 2048;
    v30 = v12;
    v31 = 2080;
    v32 = "Iy";
    v33 = 2048;
    v34 = v13;
    v35 = 2080;
    v36 = "Iz";
    v37 = 2048;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "device parameters,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x7Au);
  }

  return result;
}

uint64_t sub_100009010(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_10000908C(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void *sub_10000908C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000092C0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1000092F4(uint64_t a1, size_t __n)
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

      sub_1000093E4(a1, prime);
    }
  }
}

void sub_1000093E4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000092C0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_100009548(uint64_t a1)
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

void *sub_100009594(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
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

void *sub_100009648(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10000987C(CLKappaAlgBlock *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 152)) = a2[6];
  *(a1 + *(*a1 - 160)) = a2[7];
  *(a1 + *(*a1 - 168)) = a2[8];
  *(a1 + *(*a1 - 176)) = a2[9];
  sub_100009548(a1 + 296);
  sub_100009548(a1 + 256);
  v5 = *(a1 + 7);
  if (v5)
  {
    sub_100009A48(v5);
  }

  v6 = *(a1 + 5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(a1, a2 + 1);
}

void sub_100009A48(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100009AD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100412280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100009B50(unsigned __int16 *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1);
      v9 = 134218754;
      v10 = Current;
      v11 = 2080;
      v12 = "const T &CMQueue<CSSPUTriad_Struct>::operator[](const size_t) const [T = CSSPUTriad_Struct]";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR,Die,Time,%.3f,Function,%s,i,%zu,capacity,%u\n", &v9, 0x26u);
    }

    __assert_rtn("operator[]", "CMQueue.h", 244, "false");
  }

  v5 = *a1 + a2;
  if (v5 < v4)
  {
    v4 = 0;
  }

  return &a1[12 * (v5 - v4) + 4];
}

uint64_t sub_100009CA8(uint64_t result)
{
  *result = &off_1004122D0;
  *(result + 12) = 0;
  return result;
}

void sub_100009CD0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_100009D08(uint64_t result, uint64_t a2)
{
  *result = &off_1004122D0;
  *(result + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_100009D44(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &off_1004122D0;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sub_100009DB8(uint64_t result, uint64_t a2)
{
  *result = &off_1004122D0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_100009DEC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &off_1004122D0;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sub_100009E5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "nop", *(a1 + 8));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100009EBC(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
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
          *(this + 1) = v12;
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
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
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

          if (*(this + 24))
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
            *(this + 1) = v29;
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
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_10000A130(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::writeVarInt(this, *(result + 8), 1u);
  }

  return result;
}

void sub_10000A150(uint64_t a1)
{
  if (qword_1004567F8 != -1)
  {
    sub_100357D28();
  }

  v2 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 100);
    v4 = *(a1 + 100) != 0;
    v5 = *(a1 + 80);
    v6 = *(a1 + 84);
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 92);
    v12 = *(a1 + 12);
    v13 = *(a1 + 76);
    v14 = *(a1 + 104);
    v15 = *(a1 + 108);
    v16 = v14;
    v17 = v15;
    v18 = (v14 - v15);
    v19 = *(a1 + 112);
    v21 = *(a1 + 120);
    v20 = *(a1 + 128);
    v22 = *(a1 + 140);
    v23 = *(a1 + 144);
    v24 = *(a1 + 136);
    v25 = *(a1 + 16);
    v26 = *(a1 + 20);
    v27 = *(a1 + 24);
    v28 = *(a1 + 28);
    v29 = *(a1 + 32);
    v30 = *(a1 + 36);
    v31 = *(a1 + 40);
    v32[0] = 67246848;
    v32[1] = v4;
    v33 = 2050;
    v34 = v5;
    v35 = 2050;
    v36 = v9;
    v37 = 2050;
    v38 = v6;
    v39 = 2050;
    v40 = v7;
    v41 = 1026;
    v42 = v8;
    v43 = 1026;
    v44 = v3;
    v45 = 2050;
    v46 = v10;
    v47 = 2050;
    v48 = v11;
    v49 = 1026;
    v50 = v12;
    v51 = 1026;
    v52 = v13;
    v53 = 2050;
    v54 = v16;
    v55 = 2050;
    v56 = v17;
    v57 = 2050;
    v58 = v18;
    v59 = 2050;
    v60 = v19;
    v61 = 2050;
    v62 = v21;
    v63 = 2050;
    v64 = v20;
    v65 = 1026;
    v66 = v22;
    v67 = 2050;
    v68 = v23;
    v69 = 2050;
    v70 = v24;
    v71 = 2050;
    v72 = v25;
    v73 = 2050;
    v74 = v26;
    v75 = 2050;
    v76 = v27;
    v77 = 2050;
    v78 = v28;
    v79 = 2050;
    v80 = v29;
    v81 = 2050;
    v82 = v30;
    v83 = 2050;
    v84 = v31;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BA] summary,%{public}d,A,%{public}f,B,%{public}llu,C,%{public}f,D,%{public}f,E,%{public}d,F,%{public}d,G,%{public}llu,H,%{public}f,I,%{public}d,J,%{public}d,K,%{public}f,L,%{public}f,M,%{public}f,N,%{public}f,O,%{public}llu,P,%{public}llu,Q,%{public}d,R,%{public}llu,S,%{public}f,config-1,%{public}f,config-2,%{public}f,config-3,%{public}f,config-4,%{public}f,config-5,%{public}f,config-6,%{public}f,config-7,%{public}f\n", v32, 0xF8u);
  }
}

void sub_10000A37C(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = [NSNumber numberWithDouble:*(a1 + 80)];
  v4 = [v3 stringValue];
  [v37 setObject:v4 forKeyedSubscript:@"ba-A"];

  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  [v37 setObject:v5 forKeyedSubscript:@"ba-B"];

  v6 = [NSNumber numberWithDouble:*(a1 + 84)];
  v7 = [v6 stringValue];
  [v37 setObject:v7 forKeyedSubscript:@"ba-C"];

  v8 = [NSNumber numberWithDouble:*(a1 + 88)];
  v9 = [v8 stringValue];
  [v37 setObject:v9 forKeyedSubscript:@"ba-D"];

  v10 = [NSNumber numberWithInt:*(a1 + 96)];
  [v37 setObject:v10 forKeyedSubscript:@"ba-E"];

  v11 = [NSNumber numberWithUnsignedChar:*(a1 + 100)];
  [v37 setObject:v11 forKeyedSubscript:@"ba-F"];

  v12 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  [v37 setObject:v12 forKeyedSubscript:@"ba-G"];

  v13 = [NSNumber numberWithDouble:*(a1 + 92)];
  v14 = [v13 stringValue];
  [v37 setObject:v14 forKeyedSubscript:@"ba-H"];

  v15 = [NSNumber numberWithInt:*(a1 + 12)];
  [v37 setObject:v15 forKeyedSubscript:@"ba-I"];

  v16 = [NSNumber numberWithInt:*(a1 + 76)];
  [v37 setObject:v16 forKeyedSubscript:@"ba-J"];

  v17 = [NSNumber numberWithDouble:*(a1 + 104)];
  v18 = [v17 stringValue];
  [v37 setObject:v18 forKeyedSubscript:@"ba-K"];

  v19 = [NSNumber numberWithDouble:*(a1 + 108)];
  v20 = [v19 stringValue];
  [v37 setObject:v20 forKeyedSubscript:@"ba-L"];

  v21 = [NSNumber numberWithDouble:(*(a1 + 104) - *(a1 + 108))];
  v22 = [v21 stringValue];
  [v37 setObject:v22 forKeyedSubscript:@"ba-M"];

  v23 = [NSNumber numberWithDouble:*(a1 + 16)];
  v24 = [v23 stringValue];
  [v37 setObject:v24 forKeyedSubscript:@"ba-config-1"];

  v25 = [NSNumber numberWithDouble:*(a1 + 20)];
  v26 = [v25 stringValue];
  [v37 setObject:v26 forKeyedSubscript:@"ba-config-2"];

  v27 = [NSNumber numberWithDouble:*(a1 + 24)];
  v28 = [v27 stringValue];
  [v37 setObject:v28 forKeyedSubscript:@"ba-config-3"];

  v29 = [NSNumber numberWithDouble:*(a1 + 28)];
  v30 = [v29 stringValue];
  [v37 setObject:v30 forKeyedSubscript:@"ba-config-4"];

  v31 = [NSNumber numberWithDouble:*(a1 + 32)];
  v32 = [v31 stringValue];
  [v37 setObject:v32 forKeyedSubscript:@"ba-config-5"];

  v33 = [NSNumber numberWithDouble:*(a1 + 36)];
  v34 = [v33 stringValue];
  [v37 setObject:v34 forKeyedSubscript:@"ba-config-6"];

  v35 = [NSNumber numberWithDouble:*(a1 + 40)];
  v36 = [v35 stringValue];
  [v37 setObject:v36 forKeyedSubscript:@"ba-config-7"];
}

void sub_10000A908(uint64_t a1, uint64_t *a2)
{
  CLKappaAlgBlock::CLKappaAlgBlock(a1, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(a1 + *(v4 - 152)) = a2[6];
  *(a1 + *(*a1 - 160)) = a2[7];
  *(a1 + *(*a1 - 168)) = a2[8];
  *(a1 + *(*a1 - 176)) = a2[9];
  *(a1 + 152) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 88) = 0x42B40000432A0000;
  *(a1 + 96) = 1145569280;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 432) = 1;
  *(a1 + 436) = 0;
  *(a1 + 440) = 1;
  *(a1 + 448) = -1082130432;
  *(a1 + 456) = 0;
  sub_10000EF50();
}

void sub_10000ABEC(_Unwind_Exception *a1)
{
  sub_10000EEA4(v3 + 27);
  sub_10000EDA8(v3 + 21);
  sub_10000EEA4(v3 + 15);
  sub_10000EDA8(v3 + 9);
  v6 = *(v1 + 25);
  if (v6)
  {
    *(v1 + 26) = v6;
    operator delete(v6);
  }

  sub_10000EEA4(v3);
  sub_10000EDA8(v4);
  v7 = *(v1 + 5);
  if (v7)
  {
    sub_100009A48(v7);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

char **sub_10000AC54@<X0>(uint64_t a1@<X0>, char ***a2@<X8>)
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

void sub_10000ACE4(CLKappaAlgBlock *a1)
{
  *a1 = off_100411FE8;
  *(a1 + 58) = off_100412090;
  *(a1 + 59) = off_100412158;
  *(a1 + 60) = off_100412210;
  CLKappaAlgBlock::CLKappaAlgBlock(a1, off_100412910);
  *v1 = off_1004123C0;
  *(v1 + 464) = off_100412680;
  *(v1 + 472) = off_1004127C8;
  *(v1 + 480) = off_1004128B8;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0x42B40000432A0000;
  *(v1 + 104) = 0u;
  *(v1 + 96) = 1145569280;
  *(v1 + 152) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 424) = 0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 432) = 1;
  *(v1 + 436) = 0;
  *(v1 + 440) = 1;
  *(v1 + 448) = -1082130432;
  *(v1 + 456) = 0;
  sub_10000EF50();
}

void sub_10000AF50(_Unwind_Exception *a1)
{
  sub_10000EEA4(v1 + 46);
  sub_10000EDA8(v1 + 40);
  sub_10000EEA4(v1 + 34);
  sub_10000EDA8(v1 + 28);
  v5 = *(v1 + 25);
  if (v5)
  {
    *(v1 + 26) = v5;
    operator delete(v5);
  }

  sub_10000EEA4(v3);
  sub_10000EDA8(v2);
  v6 = *(v1 + 5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(v1, off_100412910);
  _Unwind_Resume(a1);
}

double sub_10000AFBC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(v3 + 28) = *(a2 + 12);
  *(v3 + 16) = v4;
  if (qword_1004567F8 != -1)
  {
    sub_100357D28();
  }

  v5 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v7[4];
    v9 = v7[5];
    v10 = v7[6];
    v11 = v7[7];
    v12 = v7[8];
    v13 = v7[9];
    v14 = v7[10];
    v15 = 134219520;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[BA] config %f, %f, %f, %f, %f, %f, %f", &v15, 0x48u);
  }

  return result;
}

uint64_t sub_10000B0EC(uint64x2_t *a1, uint64_t a2)
{
  v2 = a1[12].i64[1];
  v3 = a1[13].i64[0];
  v4 = (v3 - v2) >> 3;
  if (v4 > 9)
  {
    return 1;
  }

  v7 = a1[4].i64[1];
  if (v7)
  {
    v8 = a2 - v7;
    v9 = a1[13].u64[1];
    if (v3 >= v9)
    {
      v10 = v9 - v2;
      if (v10 >> 2 <= v4 + 1)
      {
        v11 = v4 + 1;
      }

      else
      {
        v11 = v10 >> 2;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      sub_10000CDCC(&a1[12].i64[1], v12);
    }

    *v3++ = v8;
    a1[13].i64[0] = v3;
  }

  if ((v3 - v2) != 80)
  {
    return 0;
  }

  v13 = 1.0 / (sub_10000B348(&a1[12].i64[1]) * 0.000001);
  a1[27].i32[1] = v13;
  if ((v13 - 271) > 0xFFFFFF04)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357D28();
    }

    v16 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[27].i32[1];
      v18 = 67240192;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BA] calculatedRate, %{public}d", &v18, 8u);
    }

    a1[3] = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(0x3F4000003E4CCCCDLL, a1[27].i32[1])));
    return 1;
  }

  if (qword_1004567F8 != -1)
  {
    sub_100357D28();
  }

  v14 = qword_100456800;
  if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
  {
    v15 = a1[27].i32[1];
    v18 = 67109120;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[BA] error, rate outside possible range, %d", &v18, 8u);
  }

  result = 0;
  a1[13].i64[0] = a1[12].i64[1];
  a1[27].i32[1] = 0;
  return result;
}

uint64_t sub_10000B348(uint64_t *a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_10000F110(&v6, *a1, a1[1], (a1[1] - *a1) >> 3);
  v1 = v6;
  v2 = v7 - v6;
  v3 = &v6[8 * ((v7 - v6) >> 4)];
  if (v3 != v7)
  {
    sub_10000F1C8(v6, v3, v7);
    v1 = v6;
    v2 = v7 - v6;
  }

  v4 = *(v1 + ((v2 >> 1) & 0xFFFFFFFFFFFFFFF8));
  v7 = v1;
  operator delete(v1);
  return v4;
}

void sub_10000B3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10000B3E4(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *(a1 + 144) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 120);
      v2 = (*(a1 + 112) + 8);
      *(a1 + 112) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 1024;
  }

  *(a1 + 136) = v6;
LABEL_8:
  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  *(a1 + 192) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 168);
      v7 = (*(a1 + 160) + 8);
      *(a1 + 160) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  *(a1 + 184) = v11;
LABEL_15:
  *(a1 + 208) = *(a1 + 200);
  v12 = *(a1 + 232);
  v13 = *(a1 + 240);
  *(a1 + 264) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 240);
      v12 = (*(a1 + 232) + 8);
      *(a1 + 232) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 512;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = 1024;
  }

  *(a1 + 256) = v16;
LABEL_22:
  v17 = *(a1 + 280);
  v18 = *(a1 + 288);
  *(a1 + 312) = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = *(a1 + 288);
      v17 = (*(a1 + 280) + 8);
      *(a1 + 280) = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 256;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v21 = 512;
  }

  *(a1 + 304) = v21;
LABEL_29:
  *(a1 + 448) = -1082130432;
  v22 = *(a1 + 328);
  v23 = *(a1 + 336);
  *(a1 + 360) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v25 = *(a1 + 336);
      v22 = (*(a1 + 328) + 8);
      *(a1 + 328) = v22;
      v24 = (v25 - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 512;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_36;
    }

    v26 = 1024;
  }

  *(a1 + 352) = v26;
LABEL_36:
  v27 = *(a1 + 376);
  v28 = *(a1 + 384);
  *(a1 + 408) = 0;
  v29 = (v28 - v27) >> 3;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v27);
      v30 = *(a1 + 384);
      v27 = (*(a1 + 376) + 8);
      *(a1 + 376) = v27;
      v29 = (v30 - v27) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v31 = 256;
    goto LABEL_42;
  }

  if (v29 == 2)
  {
    v31 = 512;
LABEL_42:
    *(a1 + 400) = v31;
  }

  *(a1 + 436) = 0;
  *(a1 + 440) = 1;
  (*(**(a1 + 32) + 24))(*(a1 + 32));
  v32 = *(a1 + 32);
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *&result = 0x8000000080000000;
  *(v32 + 72) = 0x8000000080000000;
  *(v32 + 80) = xmmword_10037DC80;
  *(v32 + 96) = 0;
  *(v32 + 100) = 0;
  __asm { FMOV            V2.2S, #-1.0 }

  *(v32 + 104) = _D2;
  *(v32 + 112) = -1082130432;
  *(v32 + 120) = 0;
  *(v32 + 128) = 0;
  *(v32 + 136) = -1082130432;
  *(v32 + 140) = 0;
  *(v32 + 144) = 0;
  v39 = *(a1 + 32);
  *(v39 + 152) = 0;
  *(v39 + 160) = 0;
  *(v39 + 168) = 0x8000000080000000;
  *(v39 + 176) = xmmword_10037DC80;
  *(v39 + 192) = 0;
  *(v39 + 196) = 0;
  *(v39 + 200) = _D2;
  *(v39 + 208) = -1082130432;
  *(v39 + 216) = 0;
  *(v39 + 224) = 0;
  *(v39 + 232) = -1082130432;
  *(v39 + 236) = 0;
  *(v39 + 240) = 0;
  return result;
}

void sub_10000B6F0(uint64_t a1)
{
  v33 = [CSPersistentConfiguration configBaseKey:"FeaturesAlgBaroConfig" forFeatureMode:*(a1 + 24)];
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v3) = 1140457472;
  LODWORD(v4) = 1129447424;
  [v2 algorithmThresholdNumber:0 inArrayForKey:v33 withMinValue:0.0 maxValue:v3 defaultValue:v4];
  *(*(a1 + 32) + 16) = v5;

  v6 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v7) = 1132068864;
  LODWORD(v8) = 1119092736;
  [v6 algorithmThresholdNumber:1 inArrayForKey:v33 withMinValue:0.0 maxValue:v7 defaultValue:v8];
  *(*(a1 + 32) + 20) = v9;

  v10 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v11) = 1128792064;
  LODWORD(v12) = 1176256512;
  LODWORD(v13) = 1145569280;
  [v10 algorithmThresholdNumber:2 inArrayForKey:v33 withMinValue:v11 maxValue:v12 defaultValue:v13];
  *(*(a1 + 32) + 24) = v14;

  v15 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v16) = 1120403456;
  LODWORD(v17) = 20.0;
  LODWORD(v18) = 30.0;
  [v15 algorithmThresholdNumber:3 inArrayForKey:v33 withMinValue:v17 maxValue:v16 defaultValue:v18];
  *(*(a1 + 32) + 28) = v19;

  v20 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v21) = 1148846080;
  LODWORD(v22) = 5.0;
  [v20 algorithmThresholdNumber:4 inArrayForKey:v33 withMinValue:0.0 maxValue:v21 defaultValue:v22];
  *(*(a1 + 32) + 32) = v23;

  v24 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v25) = 1148846080;
  LODWORD(v26) = 8.0;
  [v24 algorithmThresholdNumber:5 inArrayForKey:v33 withMinValue:0.0 maxValue:v25 defaultValue:v26];
  *(*(a1 + 32) + 36) = v27;

  v28 = +[CSPersistentConfiguration sharedConfiguration];
  LODWORD(v29) = -5.0;
  LODWORD(v30) = 5.0;
  LODWORD(v31) = 2.0;
  [v28 algorithmThresholdNumber:6 inArrayForKey:v33 withMinValue:v29 maxValue:v30 defaultValue:v31];
  *(*(a1 + 32) + 40) = v32;
}

void sub_10000B920(uint64x2_t *a1, uint64_t a2)
{
  v4 = a1[4].i64[1];
  v5 = *a2;
  if (v4 && (v5 - v4) >> 4 >= 0xC35)
  {
    if (qword_1004567F8 != -1)
    {
      sub_100357D28();
    }

    v6 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[BA] clearing", v20, 2u);
    }

    v7 = a1[7].i64[0];
    v8 = a1[7].i64[1];
    a1[9].i64[0] = 0;
    v9 = (v8 - v7) >> 3;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v7);
        v10 = a1[7].i64[1];
        v7 = (a1[7].i64[0] + 8);
        a1[7].i64[0] = v7;
        v9 = (v10 - v7) >> 3;
      }

      while (v9 > 2);
    }

    if (v9 == 1)
    {
      v11 = 512;
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_14;
      }

      v11 = 1024;
    }

    a1[8].i64[1] = v11;
LABEL_14:
    v12 = a1[10].i64[0];
    v13 = a1[10].i64[1];
    a1[12].i64[0] = 0;
    v14 = (v13 - v12) >> 3;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v12);
        v15 = a1[10].i64[1];
        v12 = (a1[10].i64[0] + 8);
        a1[10].i64[0] = v12;
        v14 = (v15 - v12) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 256;
    }

    else
    {
      if (v14 != 2)
      {
LABEL_21:
        a1[27].i64[1] = 1;
        v5 = *a2;
        goto LABEL_22;
      }

      v16 = 512;
    }

    a1[11].i64[1] = v16;
    goto LABEL_21;
  }

LABEL_22:
  v17 = sub_10000B0EC(a1, v5);
  v18 = *a2;
  a1[4].i64[1] = *a2;
  if (v17)
  {
    if (a1[27].i8[0] == 1)
    {
      a1[26].i64[0] = v18;
      a1[27].i8[0] = 0;
    }

    sub_10000BB04(&a1[6].i64[1], (a2 + 8));
    sub_10000BB8C(&a1[9].i64[1], a2);
    sub_10000BC14(a1);
    if (a1[9].i64[0] == a1[3].i64[1])
    {
      v19 = a1[27].i64[1] - 1;
      a1[27].i64[1] = v19;
      if (!v19)
      {
        sub_10000BC90(a1);
        a1[27].i64[1] = a1[3].i64[0];
      }
    }
  }
}

float sub_10000BB04(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_10000F500(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void *sub_10000BB8C(void *result, void *a2)
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
    result = sub_10000FB44(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10000BC14(void *result)
{
  v2 = result[18];
  if (v2 > result[7])
  {
    v3 = result;
    ++result[17];
    result[18] = v2 - 1;
    sub_1000106C0((result + 13), 1);
    *(v3 + 23) = vaddq_s64(*(v3 + 23), xmmword_10037DC90);

    return sub_100010720((v3 + 19), 1);
  }

  return result;
}

void sub_10000BC90(uint64_t a1)
{
  v2 = sub_10000C0FC(a1, (a1 + 104));
  v3 = *(a1 + 112);
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  v6 = (v3 + 8 * (v5 >> 10));
  v7 = *v6;
  v8 = (*v6 + 4 * (v5 & 0x3FF));
  v9 = *(v3 + (((v4 + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v4 + v5) & 0x3FF);
  if (v8 == v9)
  {
    v16 = 0;
    v15 = *v8;
  }

  else
  {
    v10 = (v3 + 8 * (v5 >> 10));
    v11 = (*v6 + 4 * (*(a1 + 136) & 0x3FFLL));
    v12 = v11;
    v13 = v10;
    while (1)
    {
      if (++v12 - v7 == 4096)
      {
        v14 = *(v13 + 1);
        v13 += 8;
        v7 = v14;
        v12 = v14;
      }

      v15 = *v11;
      if (v12 == v9)
      {
        break;
      }

      if (v15 < *v12)
      {
        v10 = v13;
        v11 = v12;
      }
    }

    if (v11 == v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = ((v11 - *v10) >> 2) + ((v10 - v6) << 7) - (v5 & 0x3FF);
    }
  }

  v17 = 0;
  v18 = v15 - v2;
  v19 = *(a1 + 184);
  v20 = *(a1 + 160);
  v21 = *(v20 + (((v19 + v16) >> 6) & 0x3FFFFFFFFFFFFF8));
  v22 = (v19 + v16) & 0x1FF;
  v23 = *(v21 + 8 * v22);
  v24 = (v15 - v2) * 0.2;
  v25 = v16 - 1;
  while (v25 + 1 >= 1)
  {
    v26 = *(*(v3 + (((v5 + v25) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + v25) & 0x3FF)) - v2;
    --v25;
    if (v26 < v24)
    {
      ++v17;
    }

    else
    {
      v17 = 0;
    }

    if (v26 < v24 && v17 >= 3)
    {
      v28 = v25 + v17;
      goto LABEL_25;
    }
  }

  v28 = -1;
LABEL_25:
  v29 = 0;
  v30 = 0;
  v31 = ~v19;
  v32 = v5 + 1;
  do
  {
    if (v16 + v29 + 1 >= v4)
    {
      *(a1 + 64) = v23;
      v40 = -1.0;
      v39 = -1.0;
      v36 = -1.0;
      goto LABEL_46;
    }

    v33 = *(*(v3 + (((v16 + v32) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v16 + v32) & 0x3FF)) - v2;
    --v31;
    if (v33 < v24)
    {
      ++v30;
    }

    else
    {
      v30 = 0;
    }

    ++v29;
    ++v32;
  }

  while (v33 >= v24 || v30 < 3);
  v35 = v29 - v30;
  *(a1 + 64) = v23;
  v36 = -1.0;
  if (v35 + v16 < -1 || v28 < 0 || v28 == v16 || (v35 != -1 ? (v37 = (v35 + v16 + 1) >= *(a1 + 56)) : (v37 = 1), v37))
  {
    v40 = -1.0;
    v39 = -1.0;
  }

  else
  {
    v38 = *(*(v20 + (((v28 + v19) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v28 + v19) & 0x1FF));
    v39 = (*(*(v20 + (((v16 - v30 - v31) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v16 - v30 - v31) & 0x1FF)) - v38) * 0.001;
    v40 = (*(v21 + 8 * v22) - v38) * 0.001;
    v41 = sub_10000C218(a1, v38, v2, v18);
    if (v41)
    {
      v36 = (v41 - v38) * 0.001;
    }
  }

LABEL_46:
  v42 = sub_10000C29C(a1);
  v43 = 0;
  v44 = *(a1 + 32);
  if (v18 > *(v44 + 24) && v39 > 0.0)
  {
    v43 = v39 <= *(v44 + 16) && v39 >= *(v44 + 28) && v40 <= *(v44 + 20) && v42 > *(v44 + 32);
  }

  v45 = *(a1 + 184);
  v46 = *(a1 + 160);
  v47 = *(*(v46 + (((v45 + v16) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v45 + v16) & 0x1FF));
  if (v39 <= 0.0)
  {
    v48 = 0;
  }

  else
  {
    v48 = *(*(v46 + (((v45 + v28) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v45 + v28) & 0x1FF));
  }

  v49 = *(v44 + 140);
  if (!v49 && (v18 > *(v44 + 176) || v47 == *(v44 + 160) && v39 > 0.0))
  {
    *(v44 + 152) = v48;
    *(v44 + 160) = v47;
    *(v44 + 176) = v18;
    *(v44 + 180) = v39;
    *(v44 + 184) = v40;
    *(v44 + 188) = v36;
    *(v44 + 208) = v42;
    *(v44 + 192) = *(a1 + 436);
  }

  if (v43)
  {
    *(v44 + 140) = v49 + 1;
    if (v18 > *(v44 + 80))
    {
      *(v44 + 80) = v18;
      *(v44 + 84) = v39;
      *(v44 + 56) = v48;
      *(v44 + 64) = v47;
      *(v44 + 88) = v40;
      *(v44 + 92) = v36;
      *(v44 + 112) = v42;
      *(v44 + 96) = *(a1 + 436);
    }
  }

  *(v44 + 248) = v2;
}

uint64_t sub_10000C07C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 == 2)
  {
    if ((*(a2 + 46) & 0x10) != 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (v2 != 1 || (*(a2 + 1) & 0x10) == 0)
  {
LABEL_4:
    *(result + 80) = *(a2 + 8);
  }

  return result;
}

void *sub_10000C0B0(void *result, uint64_t a2)
{
  v2 = result + *(*result - 88);
  v3 = v2[24];
  if (v3 == 2)
  {
    if ((*(a2 + 46) & 0x10) != 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (v3 != 1 || (*(a2 + 1) & 0x10) == 0)
  {
LABEL_4:
    *(v2 + 10) = *(a2 + 8);
  }

  return result;
}

float sub_10000C0FC(uint64_t a1, void *a2)
{
  sub_100010188(&v9, a2);
  v2 = (v10 + 8 * (v12 >> 10));
  if (v11 == v10)
  {
    v3 = 0;
    v5 = 0;
    v4 = (v10 + 8 * ((v13 + v12) >> 10));
  }

  else
  {
    v3 = &(*v2)[v12 & 0x3FF];
    v4 = (v10 + 8 * ((v13 + v12) >> 10));
    v5 = &(*v4)[(v13 + v12) & 0x3FF];
  }

  sub_10000CE14(v2, v3, v4, v5, &v14);
  v6 = v12 + (v13 >> 1);
  if (v13)
  {
    v7 = *(*(v10 + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v6 & 0x3FF));
  }

  else
  {
    v7 = (*(*(v10 + (((v6 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v6 - 1) & 0x3FF)) + *(*(v10 + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v6 & 0x3FF))) * 0.5;
  }

  sub_10000EDA8(&v9);
  return v7;
}

void sub_10000C204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000EDA8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10000C218(void *a1, unint64_t a2, float a3, float a4)
{
  v4 = a1[18];
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a4 * 0.8;
  while (1)
  {
    if ((*(*(a1[14] + (((a1[17] + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((a1[17] + v5) & 0x3FF)) - a3) >= v6)
    {
      v7 = *(*(a1[20] + (((v5 + a1[23]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + a1[23]) & 0x1FF));
      if (v7 > a2)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v7;
}

float sub_10000C29C(void *a1)
{
  v16 = -1.0;
  v15 = 0;
  v2 = a1[39];
  if (v2)
  {
    v3 = 0;
    v4 = a1[38];
    v5 = a1[20];
    v6 = a1[23];
    v7 = *(v5 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8));
    v8 = a1[35];
    v9 = v6 - 1;
    v10 = *(v7 + 8 * (a1[23] & 0x1FFLL));
    v11 = -1.0;
    do
    {
      v12 = *(*(v8 + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      if (v12 >= v10 && v12 <= *(*(v5 + (((v9 + a1[24]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9 + a1[24]) & 0x1FF)))
      {
        v13 = *(*(a1[29] + (((v3 + a1[32]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + a1[32]) & 0x3FF));
        if (v13 > v11)
        {
          v15 = *(*(v8 + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
          v16 = v13;
          v11 = v13;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  sub_10000BB04((a1 + 40), &v16);
  sub_10000BB8C(a1 + 46, &v15);
  return v16;
}

uint64_t sub_10000C3A8(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 32);
  if (v1)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 72) = v3 - v1;
    }

    v4 = *(v2 + 152);
    if (v4)
    {
      *(v2 + 168) = v4 - v1;
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      *(v2 + 76) = v5 - v1;
    }

    v6 = *(v2 + 160);
    if (v6)
    {
      *(v2 + 172) = v6 - v1;
    }
  }

  if (!*(v2 + 140))
  {
    *(v2 + 56) = *(v2 + 152);
    *(v2 + 72) = *(v2 + 168);
    *(v2 + 136) = *(v2 + 232);
    *(v2 + 120) = *(v2 + 216);
    *(v2 + 104) = *(v2 + 200);
    *(v2 + 88) = *(v2 + 184);
    v2 = *(result + 32);
  }

  *(v2 + 12) = *(v2 + 72);
  return result;
}

double sub_10000C458(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *(a1 + 144) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 120);
      v2 = (*(a1 + 112) + 8);
      *(a1 + 112) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 1024;
  }

  *(a1 + 136) = v6;
LABEL_8:
  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  *(a1 + 192) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 168);
      v7 = (*(a1 + 160) + 8);
      *(a1 + 160) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  *(a1 + 184) = v11;
LABEL_15:
  v12 = *(a1 + 232);
  v13 = *(a1 + 240);
  *(a1 + 264) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 240);
      v12 = (*(a1 + 232) + 8);
      *(a1 + 232) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 512;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = 1024;
  }

  *(a1 + 256) = v16;
LABEL_22:
  v17 = *(a1 + 280);
  v18 = *(a1 + 288);
  *(a1 + 312) = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = *(a1 + 288);
      v17 = (*(a1 + 280) + 8);
      *(a1 + 280) = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 256;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v21 = 512;
  }

  *(a1 + 304) = v21;
LABEL_29:
  *(a1 + 448) = -1082130432;
  v22 = *(a1 + 328);
  v23 = *(a1 + 336);
  *(a1 + 360) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v25 = *(a1 + 336);
      v22 = (*(a1 + 328) + 8);
      *(a1 + 328) = v22;
      v24 = (v25 - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 512;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_36;
    }

    v26 = 1024;
  }

  *(a1 + 352) = v26;
LABEL_36:
  v27 = *(a1 + 376);
  v28 = *(a1 + 384);
  *(a1 + 408) = 0;
  v29 = (v28 - v27) >> 3;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v27);
      v30 = *(a1 + 384);
      v27 = (*(a1 + 376) + 8);
      *(a1 + 376) = v27;
      v29 = (v30 - v27) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v31 = 256;
    goto LABEL_42;
  }

  if (v29 == 2)
  {
    v31 = 512;
LABEL_42:
    *(a1 + 400) = v31;
  }

  *(a1 + 440) = 1;
  (*(**(a1 + 32) + 24))(*(a1 + 32));
  v32 = *(a1 + 32);
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *&result = 0x8000000080000000;
  *(v32 + 72) = 0x8000000080000000;
  *(v32 + 80) = xmmword_10037DC80;
  *(v32 + 96) = 0;
  *(v32 + 100) = 0;
  __asm { FMOV            V2.2S, #-1.0 }

  *(v32 + 104) = _D2;
  *(v32 + 112) = -1082130432;
  *(v32 + 120) = 0;
  *(v32 + 128) = 0;
  *(v32 + 136) = -1082130432;
  *(v32 + 140) = 0;
  *(v32 + 144) = 0;
  v39 = *(a1 + 32);
  *(v39 + 152) = 0;
  *(v39 + 160) = 0;
  *(v39 + 168) = 0x8000000080000000;
  *(v39 + 176) = xmmword_10037DC80;
  *(v39 + 192) = 0;
  *(v39 + 196) = 0;
  *(v39 + 200) = _D2;
  *(v39 + 208) = -1082130432;
  *(v39 + 216) = 0;
  *(v39 + 224) = 0;
  *(v39 + 232) = -1082130432;
  *(v39 + 236) = 0;
  *(v39 + 240) = 0;
  return result;
}

float sub_10000C76C(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 128))(a1);
  v5 = *(a1 + 32);
  *(v5 + 48) = a2;
  *(a1 + 432) = 1;
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = *(*(*(a1 + 160) + (((v6 + *(a1 + 184) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v6 + *(a1 + 184) - 1) & 0x1FF));
    *(a1 + 424) = v7;
    *(v5 + 120) = *(a1 + 416);
    *(v5 + 128) = v7;
    v8 = *(a1 + 360);
    if (v8)
    {
      *(a1 + 448) = -1082130432;
      if (!*(v5 + 140))
      {
        goto LABEL_17;
      }

      v9 = *(a1 + 408);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = 0;
      v11 = 0;
      result = *(v5 + 40) * 1000000.0;
      v12 = *(a1 + 400);
      v13 = *(a1 + 376);
      v14 = *(v5 + 64);
      v15 = v14 + result;
      do
      {
        while (1)
        {
          v16 = *(*(v13 + (((v12 + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v12 + v11) & 0x1FF));
          if (v16 + 750000 < v14 || v16 > v15)
          {
            break;
          }

          result = *(*(*(a1 + 328) + (((v11 + *(a1 + 352)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v11 + *(a1 + 352)) & 0x3FF));
          if (result <= *(v5 + 36))
          {
            break;
          }

          *(v5 + 136) = result;
          *(v5 + 144) = v16;
          *(a1 + 448) = result;
          *(a1 + 456) = v16;
          ++*(v5 + 100);
          v10 = 1;
          if (v9 - 1 == v11++)
          {
            return result;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      if ((v10 & 1) == 0)
      {
LABEL_17:
        v19 = *(a1 + 352);
        v20 = *(a1 + 328);
        if (*(a1 + 336) == v20)
        {
          goto LABEL_28;
        }

        v21 = (v20 + 8 * (v19 >> 10));
        v22 = *v21;
        v23 = *v21 + 4 * (*(a1 + 352) & 0x3FFLL);
        v24 = *(v20 + (((v19 + v8) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v19 + v8) & 0x3FF);
        if (v23 == v24)
        {
          goto LABEL_28;
        }

        v25 = (v20 + 8 * (v19 >> 10));
        v26 = (*v21 + 4 * (*(a1 + 352) & 0x3FFLL));
        v27 = v26;
        v28 = v25;
        while (1)
        {
          if (++v27 - v22 == 4096)
          {
            v29 = *(v28 + 1);
            v28 += 8;
            v22 = v29;
            v27 = v29;
          }

          if (v27 == v24)
          {
            break;
          }

          if (*v26 < *v27)
          {
            v25 = v28;
            v26 = v27;
          }
        }

        if (v26 == v23)
        {
LABEL_28:
          v30 = 0;
        }

        else
        {
          v30 = ((v26 - *v25) >> 2) + ((v25 - v21) << 7) - (*(a1 + 352) & 0x3FFLL);
        }

        result = *(*(v20 + (((v30 + v19) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v30 + v19) & 0x3FF));
        *(a1 + 448) = result;
        v31 = *(*(*(a1 + 376) + (((*(a1 + 400) + v30) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 400) + v30) & 0x1FF));
        *(a1 + 456) = v31;
        *(v5 + 136) = result;
        *(v5 + 144) = v31;
      }
    }
  }

  return result;
}

int64x2_t *sub_10000CA08(int64x2_t *result, uint64_t a2)
{
  v2 = result;
  if (result[27].i32[1] >= 1)
  {
    v5 = sqrtf(((*(a2 + 12) * *(a2 + 12)) + (*(a2 + 8) * *(a2 + 8))) + (*(a2 + 16) * *(a2 + 16)));
    sub_10000BB04(result[14].i64, &v5);
    result = sub_10000BB8C(v2[17].i64, a2);
  }

  v4 = v2[16].u64[1];
  if (v4 >= 0x321)
  {
    ++v2[16].i64[0];
    v2[16].i64[1] = v4 - 1;
    sub_1000106C0(v2[14].i64, 1);
    v2[19] = vaddq_s64(v2[19], xmmword_10037DC90);
    return sub_100010720(v2[17].i64, 1);
  }

  return result;
}

void sub_10000CAE4(CLKappaAlgBlock *a1)
{
  sub_10000EBB8(a1, &off_100412908);

  operator delete();
}

void sub_10000CB4C(void *a1)
{
  sub_10000EBB8((a1 + *(*a1 - 24)), &off_100412908);

  operator delete();
}

void sub_10000CBD8(void *a1)
{
  sub_10000EBB8((a1 + *(*a1 - 24)), &off_100412908);

  operator delete();
}

void sub_10000CC64(void *a1)
{
  sub_10000EBB8((a1 + *(*a1 - 24)), &off_100412908);

  operator delete();
}

void sub_10000CCCC(id a1)
{
  qword_100456800 = os_log_create("com.apple.anomalydetectiond", "Alg");

  _objc_release_x1();
}

void sub_10000CD3C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000CD98(exception, a1);
}

std::logic_error *sub_10000CD98(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10000CDCC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000092C0();
}

float **sub_10000CE14(float **a1, float *a2, float **a3, float *a4, uint64_t a5)
{
  if (a4 == a2 || (v5 = a4 - *a3 + ((a3 - a1) << 7), v6 = a2 - *a1, v5 == v6 >> 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = 63 - __clz(v5 - (v6 >> 2));
  }

  return sub_10000CE64(a1, a2, a3, a4, a5, 2 * v7, 1);
}

float **sub_10000CE64(float **result, float *a2, float **a3, float *a4, uint64_t a5, uint64_t a6, char a7)
{
  v120 = result;
  v121 = a2;
  if (a4 == a2)
  {
    return result;
  }

  v9 = a4;
  v11 = a2;
  for (i = a6 - 1; ; --i)
  {
    result = v120;
    v13 = *a3;
    v14 = *v120;
    v15 = v9 - *a3 + ((a3 - v120) << 7) - (v11 - *v120);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (v9 == v13)
      {
        v9 = *(a3 - 1) + 1024;
      }

      v89 = *(v9 - 1);
      if (v89 < *v11)
      {
        v90 = *v11;
        *v11 = v89;
        *(v9 - 1) = v90;
      }

      return result;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a7)
      {
        return sub_10000DA08(v120, v11, a3, v9);
      }

      else
      {
        return sub_10000DAB0(v120, v11, a3, v9);
      }
    }

    if (i == -1)
    {
      if (v11 != v9)
      {
        return sub_10000E59C(v120, v11, a3, v9, a3, v9, a5);
      }

      return result;
    }

    v16 = v15 >> 1;
    sub_10000D9A4(&v120, v15 >> 1);
    v18 = v17;
    if (v15 < 0x81)
    {
      v21 = v9 - *a3;
      if (v21 < 2)
      {
        v22 = &a3[-((1024 - v21) >> 10)][~(1024 - v21) & 0x3FF];
      }

      else
      {
        v22 = &(*(a3 + (((v21 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v21 - 1) & 0x3FF];
      }

      v26 = v121;
      v27 = *v121;
      v28 = *v18;
      v29 = *v22;
      if (*v121 >= *v18)
      {
        if (v29 < v27)
        {
          *v121 = v29;
          *v22 = v27;
          v31 = *v18;
          if (*v26 < *v18)
          {
            *v18 = *v26;
            *v26 = v31;
            if (a7)
            {
              goto LABEL_52;
            }

            goto LABEL_81;
          }
        }
      }

      else
      {
        if (v29 < v27)
        {
          *v18 = v29;
          goto LABEL_50;
        }

        *v18 = v27;
        *v26 = v28;
        if (*v22 < v28)
        {
          *v26 = *v22;
LABEL_50:
          *v22 = v28;
        }
      }

      if (a7)
      {
        goto LABEL_52;
      }

      goto LABEL_81;
    }

    v19 = v9 - *a3;
    if (v19 < 2)
    {
      v20 = &a3[-((1024 - v19) >> 10)][~(1024 - v19) & 0x3FF];
    }

    else
    {
      v20 = &(*(a3 + (((v19 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v19 - 1) & 0x3FF];
    }

    v23 = *v17;
    v24 = *v11;
    v25 = *v20;
    if (*v17 >= *v11)
    {
      if (v25 < v23)
      {
        *v17 = v25;
        *v20 = v23;
        v30 = *v11;
        if (*v17 < *v11)
        {
          *v11 = *v17;
          *v17 = v30;
        }
      }
    }

    else
    {
      if (v25 >= v23)
      {
        *v11 = v23;
        *v17 = v24;
        if (*v20 >= v24)
        {
          goto LABEL_36;
        }

        *v17 = *v20;
      }

      else
      {
        *v11 = v25;
      }

      *v20 = v24;
    }

LABEL_36:
    v32 = v121 - *v120;
    if (v32 < 0)
    {
      v36 = 1022 - v32;
      v34 = v120[-(v36 >> 10)];
      v35 = ~v36 & 0x3FFLL;
    }

    else
    {
      v33 = v32 + 1;
      v34 = *(v120 + ((v33 >> 7) & 0x1FFFFFFFFFFFFF8));
      v35 = v33 & 0x3FF;
    }

    v37 = (v34 + 4 * v35);
    sub_10000D9A4(&v120, v16 - 1);
    v39 = v9 - *a3;
    if (v39 < 3)
    {
      v40 = &a3[-((1025 - v39) >> 10)][~(1025 - v39) & 0x3FF];
    }

    else
    {
      v40 = &(*(a3 + (((v39 - 2) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v39 - 2) & 0x3FF];
    }

    v41 = *v38;
    v42 = *v37;
    v43 = *v40;
    if (*v38 >= *v37)
    {
      if (v43 < v41)
      {
        *v38 = v43;
        *v40 = v41;
        v44 = *v37;
        if (*v38 < *v37)
        {
          *v37 = *v38;
          *v38 = v44;
        }
      }
    }

    else
    {
      if (v43 >= v41)
      {
        *v37 = v41;
        *v38 = v42;
        if (*v40 >= v42)
        {
          goto LABEL_56;
        }

        *v38 = *v40;
      }

      else
      {
        *v37 = v43;
      }

      *v40 = v42;
    }

LABEL_56:
    v46 = v121 - *v120;
    if (v46 < -1)
    {
      v50 = 1021 - v46;
      v48 = v120[-(v50 >> 10)];
      v49 = ~v50 & 0x3FFLL;
    }

    else
    {
      v47 = v46 + 2;
      v48 = *(v120 + ((v47 >> 7) & 0x1FFFFFFFFFFFFF8));
      v49 = v47 & 0x3FF;
    }

    v51 = (v48 + 4 * v49);
    sub_10000D9A4(&v120, v16 + 1);
    v53 = v9 - *a3;
    if (v53 < 4)
    {
      v54 = &a3[-((1026 - v53) >> 10)][~(1026 - v53) & 0x3FF];
    }

    else
    {
      v54 = &(*(a3 + (((v53 - 3) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v53 - 3) & 0x3FF];
    }

    v55 = *v52;
    v56 = *v51;
    v57 = *v54;
    if (*v52 >= *v51)
    {
      if (v57 < v55)
      {
        *v52 = v57;
        *v54 = v55;
        v58 = *v51;
        if (*v52 < *v51)
        {
          *v51 = *v52;
          *v52 = v58;
        }
      }
    }

    else
    {
      if (v57 >= v55)
      {
        *v51 = v55;
        *v52 = v56;
        if (*v54 >= v56)
        {
          goto LABEL_71;
        }

        *v52 = *v54;
      }

      else
      {
        *v51 = v57;
      }

      *v54 = v56;
    }

LABEL_71:
    sub_10000D9A4(&v120, v16 - 1);
    v60 = v59;
    sub_10000D9A4(&v120, v16);
    v62 = v61;
    sub_10000D9A4(&v120, v16 + 1);
    v64 = *v62;
    v65 = *v60;
    v66 = *v63;
    if (*v62 >= *v60)
    {
      if (v66 < v64)
      {
        *v62 = v66;
        *v63 = v64;
        v67 = *v60;
        if (*v62 < *v60)
        {
          *v60 = *v62;
          *v62 = v67;
        }
      }
    }

    else
    {
      if (v66 >= v64)
      {
        *v60 = v64;
        *v62 = v65;
        if (*v63 >= v65)
        {
          goto LABEL_80;
        }

        *v62 = *v63;
      }

      else
      {
        *v60 = v66;
      }

      *v63 = v65;
    }

LABEL_80:
    sub_10000D9A4(&v120, v16);
    v69 = v68;
    v26 = v121;
    v70 = *v121;
    *v121 = *v69;
    *v69 = v70;
    if (a7)
    {
LABEL_52:
      v45 = v120;
      goto LABEL_85;
    }

LABEL_81:
    v45 = v120;
    v71 = v26 - *v120;
    if (v71 < 2)
    {
      v72 = &v120[-((1024 - v71) >> 10)][~(1024 - v71) & 0x3FF];
    }

    else
    {
      v72 = &(*(v120 + (((v71 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v71 - 1) & 0x3FF];
    }

    if (*v72 >= *v26)
    {
      result = sub_10000DBAC(v120, v26, a3, v9);
      a7 = 0;
      v120 = result;
      v121 = v80;
      goto LABEL_98;
    }

LABEL_85:
    sub_10000DD74(v45, v26, a3, v9, &v117);
    v73 = v117;
    v74 = v118;
    if ((v119 & 1) == 0)
    {
      goto LABEL_94;
    }

    v75 = sub_10000DF2C(v120, v121, v117, v118);
    v76 = (v74 - *v73) >> 2;
    if (v76 < 0)
    {
      v81 = 1022 - v76;
      v78 = &v73[-(v81 >> 10)];
      v79 = (*v78 + 4 * (~v81 & 0x3FF));
    }

    else
    {
      v77 = v76 + 1;
      v78 = &v73[v77 >> 10];
      v79 = (*v78 + 4 * (v77 & 0x3FF));
    }

    result = sub_10000DF2C(v78, v79, a3, v9);
    if (result)
    {
      a3 = v73;
      v9 = v74;
      if (v75)
      {
        return result;
      }

      goto LABEL_98;
    }

    if (!v75)
    {
LABEL_94:
      result = sub_10000CE64(v120, v121, v73, v74, a5, i, a7 & 1);
      a7 = 0;
    }

    v82 = (v74 + 4);
    if (v74 + 4 - *v73 == 4096)
    {
      v83 = v73[1];
      ++v73;
      v82 = v83;
    }

    v120 = v73;
    v121 = v82;
LABEL_98:
    v11 = v121;
    if (v9 == v121)
    {
      return result;
    }
  }

  if (v15 == 3)
  {
    v84 = v11 - v14;
    if (v84 < 0)
    {
      v85 = &v120[-((1022 - v84) >> 10)][~(1022 - v84) & 0x3FF];
    }

    else
    {
      v85 = &(*(v120 + (((v84 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v84 + 1) & 0x3FF];
    }

    if (v9 == v13)
    {
      v9 = *(a3 - 1) + 1024;
    }

    v94 = *v85;
    v95 = *v11;
    v96 = *(v9 - 1);
    if (*v85 < *v11)
    {
      if (v96 >= v94)
      {
        *v11 = v94;
        *v85 = v95;
        v108 = *(v9 - 1);
        if (v108 >= v95)
        {
          return result;
        }

        *v85 = v108;
      }

      else
      {
        *v11 = v96;
      }

      *(v9 - 1) = v95;
      return result;
    }

    if (v96 >= v94)
    {
      return result;
    }

    *v85 = v96;
    *(v9 - 1) = v94;
LABEL_168:
    v116 = *v11;
    if (*v85 < *v11)
    {
      *v11 = *v85;
      *v85 = v116;
    }

    return result;
  }

  if (v15 == 4)
  {
    v91 = v11 - v14;
    v92 = v11 - v14;
    if (v92 < 0)
    {
      v85 = &v120[-((1022 - v92) >> 10)][~(1022 - v92) & 0x3FF];
      if (v91 != -4)
      {
        v97 = &v120[-((1021 - v92) >> 10)][~(1021 - v92) & 0x3FF];
LABEL_138:
        if (v9 == v13)
        {
          v9 = *(a3 - 1) + 1024;
        }

        v104 = *v85;
        v105 = *v11;
        v106 = *v97;
        if (*v85 >= *v11)
        {
          if (v106 >= v104)
          {
            v104 = *v97;
          }

          else
          {
            *v85 = v106;
            *v97 = v104;
            v107 = *v11;
            if (*v85 < *v11)
            {
              *v11 = *v85;
              *v85 = v107;
              v104 = *v97;
            }
          }
        }

        else
        {
          if (v106 >= v104)
          {
            *v11 = v104;
            *v85 = v105;
            v104 = *v97;
            if (*v97 >= v105)
            {
              goto LABEL_164;
            }

            *v85 = v104;
          }

          else
          {
            *v11 = v106;
          }

          *v97 = v105;
          v104 = v105;
        }

LABEL_164:
        v114 = *(v9 - 1);
        if (v114 >= v104)
        {
          return result;
        }

        *v97 = v114;
        *(v9 - 1) = v104;
LABEL_166:
        v115 = *v85;
        if (*v97 >= *v85)
        {
          return result;
        }

        *v85 = *v97;
        *v97 = v115;
        goto LABEL_168;
      }

      v93 = 1;
    }

    else
    {
      v85 = &(*(v120 + (((v92 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v92 + 1) & 0x3FF];
      v93 = v92 + 2;
    }

    v97 = &(*(v120 + ((v93 >> 7) & 0x1FFFFFFFFFFFFF8)))[v93 & 0x3FF];
    goto LABEL_138;
  }

  if (v15 != 5)
  {
    goto LABEL_11;
  }

  v86 = v11 - v14;
  v87 = v11 - v14;
  if ((v87 & 0x8000000000000000) == 0)
  {
    v85 = &(*(v120 + (((v87 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v87 + 1) & 0x3FF];
    v88 = v87 + 2;
    goto LABEL_125;
  }

  v85 = &v120[-((1022 - v87) >> 10)][~(1022 - v87) & 0x3FF];
  if (v86 == -4)
  {
    v88 = 1;
LABEL_125:
    v97 = &(*(v120 + ((v88 >> 7) & 0x1FFFFFFFFFFFFF8)))[v88 & 0x3FF];
    v98 = v87 + 3;
LABEL_126:
    v99 = &(*(v120 + ((v98 >> 7) & 0x1FFFFFFFFFFFFF8)))[v98 & 0x3FF];
  }

  else
  {
    v97 = &v120[-((1021 - v87) >> 10)][~(1021 - v87) & 0x3FF];
    if (v87 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v98 = 1;
      goto LABEL_126;
    }

    v99 = &v120[-((1020 - v87) >> 10)][~(1020 - v87) & 0x3FF];
  }

  if (v9 == v13)
  {
    v9 = *(a3 - 1) + 1024;
  }

  v100 = *v85;
  v101 = *v11;
  v102 = *v97;
  if (*v85 >= *v11)
  {
    if (v102 >= v100)
    {
      v100 = *v97;
    }

    else
    {
      *v85 = v102;
      *v97 = v100;
      v103 = *v11;
      if (*v85 < *v11)
      {
        *v11 = *v85;
        *v85 = v103;
        v100 = *v97;
      }
    }
  }

  else
  {
    if (v102 < v100)
    {
      *v11 = v102;
      goto LABEL_151;
    }

    *v11 = v100;
    *v85 = v101;
    v100 = *v97;
    if (*v97 < v101)
    {
      *v85 = v100;
LABEL_151:
      *v97 = v101;
      v100 = v101;
    }
  }

  if (*v99 < v100)
  {
    *v97 = *v99;
    *v99 = v100;
    v109 = *v85;
    if (*v97 < *v85)
    {
      *v85 = *v97;
      *v97 = v109;
      v110 = *v11;
      if (*v85 < *v11)
      {
        *v11 = *v85;
        *v85 = v110;
      }
    }
  }

  v111 = *(v9 - 1);
  v112 = *v99;
  if (v111 < *v99)
  {
    *v99 = v111;
    *(v9 - 1) = v112;
    v113 = *v97;
    if (*v99 < *v97)
    {
      *v97 = *v99;
      *v99 = v113;
      goto LABEL_166;
    }
  }

  return result;
}

uint64_t *sub_10000D9A4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
      v6 = *result;
    }

    else
    {
      result += v4 >> 10;
      v5 = *result;
    }
  }

  return result;
}

float **sub_10000DA08(float **result, float *a2, uint64_t a3, float *a4)
{
  if (a2 != a4)
  {
    v4 = a2 + 1;
    v5 = *result;
    while (1)
    {
      if (v4 - v5 == 4096)
      {
        v6 = result[1];
        ++result;
        v5 = v6;
        v4 = v6;
      }

      if (v4 == a4)
      {
        break;
      }

      v7 = result;
      v8 = v4;
      if (v4 == v5)
      {
        v7 = result - 1;
        v8 = (*(result - 1) + 1024);
      }

      v10 = *(v8 - 4);
      v9 = (v8 - 4);
      v11 = v10;
      v12 = *v4;
      if (*v4 < v10)
      {
        v13 = v4;
        do
        {
          v14 = v9;
          *v13 = v11;
          if (v9 == a2)
          {
            break;
          }

          if (v9 == *v7)
          {
            v15 = *--v7;
            v9 = (v15 + 4096);
          }

          v16 = *--v9;
          v11 = v16;
          v13 = v14;
        }

        while (v12 < v16);
        *v14 = v12;
      }

      ++v4;
    }
  }

  return result;
}

void *sub_10000DAB0(void *result, float *a2, uint64_t a3, float *a4)
{
  if (a2 != a4)
  {
    v4 = (a2 - *result) >> 2;
    if (v4 < 0)
    {
      v7 = 1022 - v4;
      v5 = ~v7;
      v6 = &result[-(v7 >> 10)];
    }

    else
    {
      v5 = v4 + 1;
      v6 = &result[(v4 + 1) >> 10];
    }

    v8 = *v6;
    v9 = &(*v6)[v5 & 0x3FF];
    while (v9 != a4)
    {
      v10 = v9 - v8;
      if (v10 < 2)
      {
        v13 = 1024 - v10;
        v11 = ~v13;
        v12 = &v6[-(v13 >> 10)];
      }

      else
      {
        v11 = v10 - 1;
        v12 = &v6[(v10 - 1) >> 10];
      }

      v14 = *v12;
      v15 = &(*v12)[v11 & 0x3FF];
      v16 = *v9;
      v17 = *v15;
      if (*v9 < *v15)
      {
        v18 = v9;
        do
        {
          v19 = v15;
          *v18 = v17;
          if (v15 == v14)
          {
            v20 = *--v12;
            v14 = v20;
            v15 = v20 + 1024;
          }

          v21 = *--v15;
          v17 = v21;
          v18 = v19;
        }

        while (v16 < v21);
        *v19 = v16;
      }

      if (++v9 - v8 == 4096)
      {
        v22 = v6[1];
        ++v6;
        v8 = v22;
        v9 = v22;
      }
    }
  }

  return result;
}

float **sub_10000DBAC(float **result, float *a2, float **a3, float *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a4 - *a3;
  if (v6 < 2)
  {
    v7 = &a3[-((1024 - v6) >> 10)][~(1024 - v6) & 0x3FF];
  }

  else
  {
    v7 = &(*(a3 + (((v6 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v6 - 1) & 0x3FF];
  }

  v8 = *v7;
  v9 = *result;
  v10 = a2;
  if (v4 >= v8)
  {
    do
    {
      if (++v10 - v9 == 4096)
      {
        v12 = result[1];
        ++result;
        v9 = v12;
        v10 = v12;
      }
    }

    while ((result < a3 || result == a3 && v10 < a4) && v4 >= *v10);
  }

  else
  {
    do
    {
      if (++v10 - v9 == 4096)
      {
        v11 = result[1];
        ++result;
        v9 = v11;
        v10 = v11;
      }
    }

    while (v4 >= *v10);
  }

  if (result < a3 || result == a3 && v10 < a4)
  {
    do
    {
      if (a4 == v5)
      {
        v13 = *--a3;
        v5 = v13;
        a4 = v13 + 1024;
      }

      v14 = *--a4;
    }

    while (v4 < v14);
  }

  while (result < a3 || result == a3 && v10 < a4)
  {
    v15 = *v10;
    *v10 = *a4;
    *a4 = v15;
    do
    {
      if (++v10 - v9 == 4096)
      {
        v16 = result[1];
        ++result;
        v9 = v16;
        v10 = v16;
      }
    }

    while (v4 >= *v10);
    do
    {
      if (a4 == v5)
      {
        v17 = *--a3;
        v5 = v17;
        a4 = v17 + 1024;
      }

      v18 = *--a4;
    }

    while (v4 < v18);
  }

  v19 = v10 - v9;
  if (v19 < 2)
  {
    v20 = &result[-((1024 - v19) >> 10)][~(1024 - v19) & 0x3FF];
  }

  else
  {
    v20 = &(*(result + (((v19 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v19 - 1) & 0x3FF];
  }

  if (v20 != a2)
  {
    *a2 = *v20;
  }

  *v20 = v4;
  return result;
}

float **sub_10000DD74@<X0>(float **result@<X0>, float *a2@<X1>, float **a3@<X2>, float *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *result;
  v7 = a2;
  do
  {
    if (++v7 - v6 == 4096)
    {
      v8 = result[1];
      ++result;
      v6 = v8;
      v7 = v8;
    }

    v9 = *v7;
  }

  while (*v7 < v5);
  v10 = v7 - v6;
  if (v10 < 2)
  {
    v11 = &result[-((1024 - v10) >> 10)][~(1024 - v10) & 0x3FF];
  }

  else
  {
    v11 = &(*(result + (((v10 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v10 - 1) & 0x3FF];
  }

  if (v11 == a2)
  {
    do
    {
      if (result >= a3 && (result != a3 || v7 >= a4))
      {
        break;
      }

      if (a4 == *a3)
      {
        v15 = *--a3;
        a4 = (v15 + 4096);
      }

      v16 = *--a4;
    }

    while (v16 >= v5);
  }

  else
  {
    v12 = *a3;
    do
    {
      if (a4 == v12)
      {
        v13 = *--a3;
        v12 = v13;
        a4 = v13 + 1024;
      }

      v14 = *--a4;
    }

    while (v14 >= v5);
  }

  v18 = result != a3 || v7 >= a4;
  if (result < a3)
  {
    v18 = 0;
  }

  while (result < a3 || result == a3 && v7 < a4)
  {
    *v7 = *a4;
    *a4 = v9;
    do
    {
      if (++v7 - v6 == 4096)
      {
        v19 = result[1];
        ++result;
        v6 = v19;
        v7 = v19;
      }

      v9 = *v7;
    }

    while (*v7 < v5);
    v20 = *a3;
    do
    {
      if (a4 == v20)
      {
        v21 = *--a3;
        v20 = v21;
        a4 = v21 + 1024;
      }

      v22 = *--a4;
    }

    while (v22 >= v5);
  }

  v23 = v7 - v6;
  if (v23 < 2)
  {
    v26 = 1024 - v23;
    v24 = ~v26;
    v25 = &result[-(v26 >> 10)];
  }

  else
  {
    v24 = v23 - 1;
    v25 = &result[(v23 - 1) >> 10];
  }

  v27 = &(*v25)[v24 & 0x3FF];
  if (v27 != a2)
  {
    *a2 = *v27;
  }

  *v27 = v5;
  *a5 = v25;
  *(a5 + 8) = v27;
  *(a5 + 16) = v18;
  return result;
}

BOOL sub_10000DF2C(char *a1, float *a2, char *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = *a3;
  v5 = a2 - *a1;
  v6 = v5 >> 2;
  v7 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v5 >> 2);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
      }

      if (v4 == a4)
      {
        a4 = *(a3 - 1) + 4096;
      }

      v20 = *v9;
      v21 = *a2;
      v22 = *(a4 - 4);
      if (*v9 < *a2)
      {
        if (v22 >= v20)
        {
          *a2 = v20;
          *v9 = v21;
          v34 = *(a4 - 4);
          if (v34 >= v21)
          {
            return 1;
          }

          *v9 = v34;
        }

        else
        {
          *a2 = v22;
        }

        *(a4 - 4) = v21;
        return 1;
      }

      if (v22 >= v20)
      {
        return 1;
      }

      *v9 = v22;
      *(a4 - 4) = v20;
LABEL_103:
      v64 = *a2;
      if (*v9 < *a2)
      {
        *a2 = *v9;
        *v9 = v64;
      }

      return 1;
    }

    if (v7 != 4)
    {
      if (v7 != 5)
      {
        goto LABEL_17;
      }

      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
        if (v5 != -4)
        {
          v23 = (*&a1[-8 * ((1021 - v6) >> 10)] + 4 * (~(1021 - v6) & 0x3FF));
          if (v6 < 0xFFFFFFFFFFFFFFFELL)
          {
            v25 = (*&a1[-8 * ((1020 - v6) >> 10)] + 4 * (~(1020 - v6) & 0x3FF));
LABEL_37:
            if (v4 == a4)
            {
              a4 = *(a3 - 1) + 4096;
            }

            v26 = *v9;
            v27 = *a2;
            v28 = *v23;
            if (*v9 >= *a2)
            {
              if (v28 >= v26)
              {
                v26 = *v23;
              }

              else
              {
                *v9 = v28;
                *v23 = v26;
                v29 = *a2;
                if (*v9 < *a2)
                {
                  *a2 = *v9;
                  *v9 = v29;
                  v26 = *v23;
                }
              }

              goto LABEL_88;
            }

            if (v28 >= v26)
            {
              *a2 = v26;
              *v9 = v27;
              v26 = *v23;
              if (*v23 >= v27)
              {
                goto LABEL_88;
              }

              *v9 = v26;
            }

            else
            {
              *a2 = v28;
            }

            *v23 = v27;
            v26 = v27;
LABEL_88:
            if (*v25 < v26)
            {
              *v23 = *v25;
              *v25 = v26;
              v57 = *v9;
              if (*v23 < *v9)
              {
                *v9 = *v23;
                *v23 = v57;
                v58 = *a2;
                if (*v9 < *a2)
                {
                  *a2 = *v9;
                  *v9 = v58;
                }
              }
            }

            v59 = *(a4 - 4);
            v60 = *v25;
            if (v59 >= *v25)
            {
              return 1;
            }

            *v25 = v59;
            *(a4 - 4) = v60;
            v61 = *v23;
            if (*v25 >= *v23)
            {
              return 1;
            }

            *v23 = *v25;
            *v25 = v61;
LABEL_101:
            v63 = *v9;
            if (*v23 >= *v9)
            {
              return 1;
            }

            *v9 = *v23;
            *v23 = v63;
            goto LABEL_103;
          }

          v24 = 1;
LABEL_36:
          v25 = (*&a1[(v24 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v24 & 0x3FF));
          goto LABEL_37;
        }

        v10 = 1;
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
        v10 = v6 + 2;
      }

      v23 = (*&a1[(v10 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v10 & 0x3FF));
      v24 = v6 + 3;
      goto LABEL_36;
    }

    if (v6 < 0)
    {
      v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
      if (v5 != -4)
      {
        v23 = (*&a1[-8 * ((1021 - v6) >> 10)] + 4 * (~(1021 - v6) & 0x3FF));
LABEL_48:
        if (v4 == a4)
        {
          a4 = *(a3 - 1) + 4096;
        }

        v30 = *v9;
        v31 = *a2;
        v32 = *v23;
        if (*v9 >= *a2)
        {
          if (v32 >= v30)
          {
            v30 = *v23;
          }

          else
          {
            *v9 = v32;
            *v23 = v30;
            v33 = *a2;
            if (*v9 < *a2)
            {
              *a2 = *v9;
              *v9 = v33;
              v30 = *v23;
            }
          }

          goto LABEL_99;
        }

        if (v32 >= v30)
        {
          *a2 = v30;
          *v9 = v31;
          v30 = *v23;
          if (*v23 >= v31)
          {
LABEL_99:
            v62 = *(a4 - 4);
            if (v62 >= v30)
            {
              return 1;
            }

            *v23 = v62;
            *(a4 - 4) = v30;
            goto LABEL_101;
          }

          *v9 = v30;
        }

        else
        {
          *a2 = v32;
        }

        *v23 = v31;
        v30 = v31;
        goto LABEL_99;
      }

      v19 = 1;
    }

    else
    {
      v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
      v19 = v6 + 2;
    }

    v23 = (*&a1[(v19 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v19 & 0x3FF));
    goto LABEL_48;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    if (v4 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v11 = *(a4 - 4);
    v12 = *a2;
    if (v11 < *a2)
    {
      *a2 = v11;
      *(a4 - 4) = v12;
    }

    return 1;
  }

LABEL_17:
  if (v6 <= -2)
  {
    v13 = &a1[-8 * ((1021 - v6) >> 10)];
    v14 = *v13;
    v15 = &(*v13)[~(1021 - v6) & 0x3FF];
    v18 = 1022 - v6;
  }

  else
  {
    v13 = &a1[8 * ((v6 + 2) >> 10)];
    v14 = *v13;
    v15 = &(*v13)[(v6 + 2) & 0x3FF];
    v16 = __CFADD__(v6, 1);
    v17 = v6 + 1;
    if (!v16)
    {
      v35 = (*&a1[(v17 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v17 & 0x3FF));
      goto LABEL_59;
    }

    v18 = 1023;
  }

  v35 = (*&a1[-8 * (v18 >> 10)] + 4 * (~v18 & 0x3FF));
LABEL_59:
  v36 = *v35;
  v37 = *a2;
  v38 = *v15;
  if (*v35 >= *a2)
  {
    if (v38 < v36)
    {
      *v35 = v38;
      *v15 = v36;
      v39 = *a2;
      if (*v35 < *a2)
      {
        *a2 = *v35;
        *v35 = v39;
      }
    }
  }

  else
  {
    if (v38 >= v36)
    {
      *a2 = v36;
      *v35 = v37;
      if (*v15 >= v37)
      {
        goto LABEL_68;
      }

      *v35 = *v15;
    }

    else
    {
      *a2 = v38;
    }

    *v15 = v37;
  }

LABEL_68:
  v40 = v15 - v14;
  if (v40 < 0)
  {
    v45 = 1022 - v40;
    v42 = &v13[-(v45 >> 10)];
    v43 = *v42;
    v44 = ~v45 & 0x3FFLL;
  }

  else
  {
    v41 = v40 + 1;
    v42 = &v13[v41 >> 10];
    v43 = *v42;
    v44 = v41 & 0x3FF;
  }

  v46 = &v43[v44];
  if (v46 == a4)
  {
    return 1;
  }

  v47 = 0;
  result = 1;
  while (1)
  {
    v48 = v46;
    v49 = v42;
    v50 = v43;
    v51 = *v46;
    v52 = *v15;
    if (*v46 < *v15)
    {
      v53 = v46;
      do
      {
        v54 = v15;
        *v53 = v52;
        if (v15 == a2)
        {
          break;
        }

        if (v15 == v14)
        {
          v55 = *--v13;
          v14 = v55;
          v15 = v55 + 1024;
        }

        v56 = *--v15;
        v52 = v56;
        v53 = v54;
      }

      while (v51 < v56);
      *v54 = v51;
      if (++v47 == 8)
      {
        break;
      }
    }

    ++v46;
    v43 = v50;
    v42 = v49;
    if ((v48 + 1) - v50 == 4096)
    {
      v42 = v49 + 1;
      v43 = v49[1];
      v46 = v43;
    }

    v14 = v50;
    v13 = v49;
    v15 = v48;
    if (v46 == a4)
    {
      return result;
    }
  }

  v65 = v46 + 1;
  if ((v46 + 1) - v50 == 4096)
  {
    v65 = v49[1];
  }

  return v65 == a4;
}

float **sub_10000E59C(uint64_t *a1, float *a2, float **a3, float *a4, float **a5, float *a6, uint64_t a7)
{
  if (a2 != a4)
  {
    v10 = a4;
    v11 = a3;
    v39 = a1;
    v40 = a2;
    v14 = (a3 - a1) << 7;
    v15 = *a3;
    v16 = a4 - *a3 + v14 - ((a2 - *a1) >> 2);
    if (v16 >= 2)
    {
      v38 = (a3 - a1) << 7;
      v17 = (v16 - 2) >> 1;
      do
      {
        v18 = v39;
        v19 = v40;
        v20 = sub_10000D9A4(&v39, v17);
        sub_10000E80C(v18, v19, a7, v16, v20, v21);
        --v17;
      }

      while (v17 != -1);
      v15 = *v11;
      v14 = v38;
      v16 = v38 + v10 - *v11 - ((a2 - *a1) >> 2);
    }

    if (v10 == a6)
    {
      a5 = v11;
    }

    else
    {
      v22 = v10;
      a5 = v11;
      do
      {
        v23 = *v22;
        if (*v22 < *a2)
        {
          *v22 = *a2;
          *a2 = v23;
          sub_10000E80C(a1, a2, a7, v16, a1, a2);
          v15 = *a5;
        }

        if (++v22 - v15 == 4096)
        {
          v24 = a5[1];
          ++a5;
          v15 = v24;
          v22 = v24;
        }
      }

      while (v22 != a6);
      v16 = v14 + v10 - *v11 - ((a2 - *a1) >> 2);
    }

    if (v16 >= 2)
    {
      do
      {
        v25 = *a2;
        sub_10000E9F8(a1, a2, a7, v16);
        v28 = v26;
        v29 = *v11;
        v30 = v10;
        if (*v11 == v10)
        {
          v30 = (*(v11 - 1) + 1024);
        }

        v31 = (v30 - 4);
        if (v31 == v27)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = *v31;
          v32 = (v27 + 1);
          v33 = *v26;
          if ((v27 - *v26 + 4) == 4096)
          {
            v28 = v26 + 8;
            v32 = *(v26 + 1);
            v33 = v32;
          }

          *v31 = v25;
          if (v32 == a2)
          {
            v34 = 0;
          }

          else
          {
            v34 = ((v28 - a1) << 7) + ((v32 - v33) >> 2) - ((a2 - *a1) >> 2);
          }

          sub_10000EB0C(a1, a2, v28, v32, a7, v34);
          v29 = *v11;
        }

        if (v10 == v29)
        {
          v35 = *--v11;
          v10 = (v35 + 4096);
        }

        --v10;
      }

      while (v16-- > 2);
    }
  }

  return a5;
}

uint64_t *sub_10000E80C(uint64_t *result, float *a2, uint64_t a3, uint64_t a4, char *a5, float *a6)
{
  v6 = a6;
  v21[0] = result;
  v21[1] = a2;
  if (a6 == a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((a6 - *a5) >> 2) + ((a5 - result) << 7) - ((a2 - *result) >> 2);
  }

  v9 = a4 - 2;
  if (a4 >= 2)
  {
    v10 = v9 >> 1;
    if ((v9 >> 1) >= v8)
    {
      v11 = 2 * v8;
      v12 = (2 * v8) | 1;
      result = sub_10000D9A4(v21, v12);
      if (v11 + 2 < a4)
      {
        v14 = (v13 - *result) >> 2;
        v15 = (v14 < 0 ? result[-((1022 - v14) >> 10)] + 4 * (~(1022 - v14) & 0x3FF) : *(result + (((v14 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v14 + 1) & 0x3FF));
        if (*v13 < *v15)
        {
          if ((++v13 - *result) == 4096)
          {
            v13 = result[1];
          }

          v12 = v11 + 2;
        }
      }

      v16 = *v13;
      v17 = *v6;
      if (*v13 >= *v6)
      {
        do
        {
          *v6 = v16;
          v6 = v13;
          if (v10 < v12)
          {
            break;
          }

          v18 = 2 * v12;
          v12 = (2 * v12) | 1;
          result = sub_10000D9A4(v21, v12);
          if (v18 + 2 < a4)
          {
            v19 = (v13 - *result) >> 2;
            v20 = (v19 < 0 ? result[-((1022 - v19) >> 10)] + 4 * (~(1022 - v19) & 0x3FF) : *(result + (((v19 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v19 + 1) & 0x3FF));
            if (*v13 < *v20)
            {
              if ((++v13 - *result) == 4096)
              {
                v13 = result[1];
              }

              v12 = v18 + 2;
            }
          }

          v16 = *v13;
        }

        while (*v13 >= v17);
        *v6 = v17;
      }
    }
  }

  return result;
}

float sub_10000E9F8(void *a1, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2;
    if (v4 != -1)
    {
      v6 = v4 + 1 + ((a2 - *a1) >> 2);
      if (v6 < 1)
      {
        v7 = 1023 - v6;
        a1 -= v7 >> 10;
        a2 = (*a1 + 4 * (~v7 & 0x3FF));
      }

      else
      {
        a1 += v6 >> 10;
        a2 = (*a1 + 4 * (v6 & 0x3FF));
      }
    }

    v8 = (2 * v4) | 1;
    v4 = 2 * v4 + 2;
    if (v4 >= a4 || ((v9 = (a2 - *a1) >> 2, v9 < 0) ? (v10 = (a1[-((1022 - v9) >> 10)] + 4 * (~(1022 - v9) & 0x3FF))) : (v10 = (*(a1 + (((v9 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v9 + 1) & 0x3FF))), *a2 >= *v10))
    {
      v4 = v8;
    }

    else if ((++a2 - *a1) == 4096)
    {
      v11 = a1[1];
      ++a1;
      a2 = v11;
    }

    result = *a2;
    *v5 = *a2;
  }

  while (v4 <= (a4 - 2) / 2);
  return result;
}

uint64_t *sub_10000EB0C(uint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = result;
  v15[1] = a2;
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v9 = v6 >> 1;
    result = sub_10000D9A4(v15, v6 >> 1);
    if (*a3 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v12 = *(a4 - 4);
    v11 = (a4 - 4);
    v13 = v12;
    v14 = *v10;
    if (*v10 < v12)
    {
      do
      {
        *v11 = v14;
        v11 = v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        result = sub_10000D9A4(v15, v9);
        v14 = *v10;
      }

      while (*v10 < v13);
      *v11 = v13;
    }
  }

  return result;
}

void sub_10000EBB8(CLKappaAlgBlock *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 152)) = a2[6];
  *(a1 + *(*a1 - 160)) = a2[7];
  *(a1 + *(*a1 - 168)) = a2[8];
  *(a1 + *(*a1 - 176)) = a2[9];
  sub_10000EEA4(a1 + 46);
  sub_10000EDA8(a1 + 40);
  sub_10000EEA4(a1 + 34);
  sub_10000EDA8(a1 + 28);
  v5 = *(a1 + 25);
  if (v5)
  {
    *(a1 + 26) = v5;
    operator delete(v5);
  }

  sub_10000EEA4(a1 + 19);
  sub_10000EDA8(a1 + 13);
  v6 = *(a1 + 5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  CLKappaAlgBlock::~CLKappaAlgBlock(a1, a2 + 1);
}

uint64_t sub_10000EDA8(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
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

uint64_t sub_10000EE54(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10000EEA4(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
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

void sub_10000F094(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100412F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10000F110(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000F18C(result, a4);
  }

  return result;
}

void sub_10000F170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000F18C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10000CDCC(a1, a2);
  }

  sub_10000CD24();
}

unint64_t *sub_10000F1C8(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v43 = result[1];
      v44 = *(a3 - 1);
      if (v43 >= v44)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = result[1];
      }

      if (v43 <= v44)
      {
        v43 = *(a3 - 1);
      }

      *(a3 - 1) = v43;
      result[1] = v45;
      v46 = *(a3 - 1);
      if (v46 >= *result)
      {
        v47 = *result;
      }

      else
      {
        v47 = *(a3 - 1);
      }

      if (v46 <= *result)
      {
        v46 = *result;
      }

      *(a3 - 1) = v46;
      v48 = result[1];
      if (v47 >= v48)
      {
        *result = v48;
        v48 = v47;
      }

      result[1] = v48;
      return result;
    }

    if (v3 == 2)
    {
      v49 = *(a3 - 1);
      v50 = *result;
      if (v49 < *result)
      {
        *result = v49;
        *(a3 - 1) = v50;
      }

      return result;
    }

    if (v3 <= 7)
    {
      return sub_10000F48C(result, a3);
    }

    v4 = &result[(a3 - result) >> 4];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 >= v6)
    {
      v8 = *(a3 - 1);
    }

    else
    {
      v8 = *v4;
    }

    if (*v4 <= v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 >= *result)
    {
      v12 = *result;
    }

    else
    {
      v12 = *v5;
    }

    if (*v5 <= *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    if (v12 < *v4)
    {
      v15 = *v4;
    }

    else
    {
      *result = v14;
      v15 = v12;
    }

    *v4 = v15;
    v18 = v7 >= v6 || v10 >= v11 || v12 >= v14;
    v19 = *result;
    if (*result >= v15)
    {
      v20 = a3 - 1;
      while (--v20 != result)
      {
        if (*v20 < v15)
        {
          *result = *v20;
          *v20 = v19;
          if (v18)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          goto LABEL_39;
        }
      }

      v32 = result + 1;
      if (v19 >= *v5)
      {
        while (v32 != v5)
        {
          v33 = *v32;
          if (v19 < *v32)
          {
            *v32++ = *v5;
            *v5 = v33;
            goto LABEL_71;
          }

          ++v32;
        }

        return result;
      }

LABEL_71:
      if (v32 == v5)
      {
        return result;
      }

      while (1)
      {
        v37 = *result;
        do
        {
          v39 = *v32++;
          v38 = v39;
        }

        while (v37 >= v39);
        v40 = v32 - 1;
        do
        {
          v42 = *--v5;
          v41 = v42;
        }

        while (v37 < v42);
        if (v40 >= v5)
        {
          break;
        }

        *v40 = v41;
        *v5 = v38;
      }

      result = v32 - 1;
      if (v40 > a2)
      {
        return result;
      }
    }

    else
    {
      v20 = a3 - 1;
LABEL_39:
      v21 = result + 1;
      if (result + 1 >= v20)
      {
        v26 = result + 1;
      }

      else
      {
        v22 = result + 1;
        while (1)
        {
          v23 = *v4;
          do
          {
            v25 = *v22++;
            v24 = v25;
          }

          while (v25 < v23);
          v26 = v22 - 1;
          do
          {
            v28 = *--v20;
            v27 = v28;
          }

          while (v28 >= v23);
          if (v26 >= v20)
          {
            break;
          }

          *v26 = v27;
          *v20 = v24;
          ++v18;
          if (v26 == v4)
          {
            v4 = v20;
          }
        }
      }

      if (v26 != v4)
      {
        v29 = *v26;
        if (*v4 < *v26)
        {
          *v26 = *v4;
          *v4 = v29;
          ++v18;
        }
      }

      if (v26 == a2)
      {
        return result;
      }

      if (!v18)
      {
        if (v26 <= a2)
        {
          v34 = v26 + 1;
          while (v34 != a3)
          {
            v36 = *(v34 - 1);
            v35 = *v34++;
            if (v35 < v36)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          while (v21 != v26)
          {
            v31 = *(v21 - 1);
            v30 = *v21++;
            if (v30 < v31)
            {
              goto LABEL_55;
            }
          }
        }

        return result;
      }

LABEL_55:
      if (v26 <= a2)
      {
        result = v26 + 1;
      }

      else
      {
        a3 = v26;
      }
    }
  }

  return result;
}

unint64_t *sub_10000F48C(unint64_t *result, unint64_t *a2)
{
  while (result != a2 - 1)
  {
    v2 = result++;
    if (v2 != a2 && result != a2)
    {
      v3 = *v2;
      v4 = result;
      v5 = v2;
      v6 = result;
      do
      {
        v8 = *v6++;
        v7 = v8;
        if (v8 < v3)
        {
          v3 = v7;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v2)
      {
        v9 = *v2;
        *v2 = *v5;
        *v5 = v9;
      }
    }
  }

  return result;
}

void *sub_10000F500(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    sub_10000FAFC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10000F6D4(a1, &v10);
}

void sub_10000F688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10000F6D4(void *result, void *a2)
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

      sub_10000FAFC(result, v11);
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

const void **sub_10000F7DC(const void **result, void *a2)
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

      sub_10000FAFC(result, v9);
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

void *sub_10000F8E8(void *result, void *a2)
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

      sub_10000FAFC(result[4], v11);
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

const void **sub_10000F9F0(const void **result, void *a2)
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

      sub_10000FAFC(result[4], v9);
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

void sub_10000FAFC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000092C0();
}

void *sub_10000FB44(void *a1)
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
    sub_100010140(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10000FD18(a1, &v10);
}

void sub_10000FCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10000FD18(void *result, void *a2)
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

      sub_100010140(result, v11);
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

const void **sub_10000FE20(const void **result, void *a2)
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

      sub_100010140(result, v9);
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

void *sub_10000FF2C(void *result, void *a2)
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

      sub_100010140(result[4], v11);
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

const void **sub_100010034(const void **result, void *a2)
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

      sub_100010140(result[4], v9);
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

void sub_100010140(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000092C0();
}

uint64_t sub_100010188(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 10));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 10));
  }

  else
  {
    v8 = &(*v7)[4 * (v4 & 0x3FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 10));
    v11 = (*v10 + 4 * (v9 & 0x3FF));
  }

  sub_100010234(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t *sub_100010234(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 2) + ((a4 - a2) << 7) - ((a3 - *a2) >> 2);
  }

  return sub_100010268(a1, a2, a3, v5);
}

uint64_t *sub_100010268(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 7) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1000103A8(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 10));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 4 * (v11 & 0x3FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = sub_10000D9A4(v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 4;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 2;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void *sub_1000103A8(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10000F6D4(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10000FAFC(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10000F6D4(v2, v16);
    }
  }

  return result;
}

void sub_10001064C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000106C0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
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
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t sub_100010720(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
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
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t sub_100010780(uint64_t result)
{
  *result = &off_100412FE8;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_1000107A4(PB::Base *this)
{
  *this = &off_100412FE8;
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

void sub_100010808(PB::Base *a1)
{
  sub_1000107A4(a1);

  operator delete();
}

uint64_t sub_100010840(uint64_t result, uint64_t a2)
{
  *result = &off_100412FE8;
  *(result + 8) = 0;
  *(result + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(result + 20) |= 1u;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_100010920(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100010840(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    sub_1000107A4(v6);
  }

  return a1;
}

uint64_t sub_100010984(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  v3 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  LODWORD(v3) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1000109B8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100412FE8;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_100011018(v4, v6);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_100010A30(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000109B8(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    sub_1000107A4(v6);
  }

  return a1;
}

uint64_t sub_100010A94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "uploadReason", *(a1 + 16));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100010B0C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_50;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
        *(a1 + 20) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v28) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
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
            *(this + 1) = v30;
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
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}