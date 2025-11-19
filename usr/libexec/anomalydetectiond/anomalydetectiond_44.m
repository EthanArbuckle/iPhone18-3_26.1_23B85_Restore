CMMsl *CMMsl::KappaTriggerClustersResult::operator=(CMMsl *a1, const CMMsl::KappaTriggerClustersResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaTriggerClustersResult::KappaTriggerClustersResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaTriggerClustersResult *a2, CMMsl::KappaTriggerClustersResult *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  v5 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v5;
  result = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  LOBYTE(v7) = *(this + 94);
  *(this + 94) = *(a2 + 94);
  *(a2 + 94) = v7;
  LOBYTE(v7) = *(this + 93);
  *(this + 93) = *(a2 + 93);
  *(a2 + 93) = v7;
  LOBYTE(v7) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  LODWORD(v13) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v13;
  LODWORD(v13) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  return result;
}

float CMMsl::KappaTriggerClustersResult::KappaTriggerClustersResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FBC8;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

CMMsl *CMMsl::KappaTriggerClustersResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaTriggerClustersResult::KappaTriggerClustersResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaTriggerClustersResult::formatText(CMMsl::KappaTriggerClustersResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "armedDuration", *(this + 1));
    v5 = *(this + 48);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(this + 48) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "armedDurationThreshold", *(this + 18));
  v5 = *(this + 48);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "armedDurationThresholdTimestamp", *(this + 2));
  v5 = *(this + 48);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "btHint", *(this + 3));
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "epochFirstTimestamp", *(this + 4));
  v5 = *(this + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "epochLastTimestamp", *(this + 5));
  v5 = *(this + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "firstTriggerTimestamp", *(this + 6));
  v5 = *(this + 48);
  if ((v5 & 0x2000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "isBTHintDetected", *(this + 92));
  v5 = *(this + 48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "isClusterInBeginningOfDrive", *(this + 93));
  v5 = *(this + 48);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "isTriggerCluster", *(this + 94));
  v5 = *(this + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "lastTriggerTimestamp", *(this + 7));
  v5 = *(this + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "numTriggersInEpoch", *(this + 19));
  v5 = *(this + 48);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "numTriggersInWindow", *(this + 20));
  v5 = *(this + 48);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "numTriggersThreshold", *(this + 21));
  v5 = *(this + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "timestamp", *(this + 8));
  if ((*(this + 48) & 0x1000) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(a2, "windowDuration", *(this + 22));
  }

LABEL_18:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaTriggerClustersResult::readFrom(CMMsl::KappaTriggerClustersResult *this, PB::Reader *a2)
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
            goto LABEL_304;
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
      if ((v10 >> 3) > 300)
      {
        if (v22 > 304)
        {
          if (v22 <= 306)
          {
            if (v22 == 305)
            {
              *(this + 48) |= 1u;
              v99 = *(a2 + 1);
              v2 = *(a2 + 2);
              v100 = *a2;
              if (v99 > 0xFFFFFFFFFFFFFFF5 || v99 + 10 > v2)
              {
                v188 = 0;
                v189 = 0;
                v103 = 0;
                if (v2 <= v99)
                {
                  v2 = *(a2 + 1);
                }

                v190 = v2 - v99;
                v191 = (v100 + v99);
                v192 = v99 + 1;
                while (1)
                {
                  if (!v190)
                  {
                    v103 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_291;
                  }

                  v193 = v192;
                  v194 = *v191;
                  *(a2 + 1) = v193;
                  v103 |= (v194 & 0x7F) << v188;
                  if ((v194 & 0x80) == 0)
                  {
                    break;
                  }

                  v188 += 7;
                  --v190;
                  ++v191;
                  v192 = v193 + 1;
                  v14 = v189++ > 8;
                  if (v14)
                  {
                    v103 = 0;
                    goto LABEL_290;
                  }
                }

                if (*(a2 + 24))
                {
                  v103 = 0;
                }

LABEL_290:
                v2 = v193;
              }

              else
              {
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = (v100 + v99);
                v105 = v99 + 1;
                while (1)
                {
                  v2 = v105;
                  *(a2 + 1) = v105;
                  v106 = *v104++;
                  v103 |= (v106 & 0x7F) << v101;
                  if ((v106 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  ++v105;
                  v14 = v102++ > 8;
                  if (v14)
                  {
                    v103 = 0;
                    break;
                  }
                }
              }

LABEL_291:
              *(this + 1) = v103;
            }

            else
            {
              *(this + 48) |= 0x400u;
              v41 = *(a2 + 1);
              v2 = *(a2 + 2);
              v42 = *a2;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v139 = 0;
                v140 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(a2 + 1);
                }

                v141 = v2 - v41;
                v142 = (v42 + v41);
                v143 = v41 + 1;
                while (1)
                {
                  if (!v141)
                  {
                    LODWORD(v45) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_263;
                  }

                  v144 = v143;
                  v145 = *v142;
                  *(a2 + 1) = v144;
                  v45 |= (v145 & 0x7F) << v139;
                  if ((v145 & 0x80) == 0)
                  {
                    break;
                  }

                  v139 += 7;
                  --v141;
                  ++v142;
                  v143 = v144 + 1;
                  v14 = v140++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_262;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_262:
                v2 = v144;
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  v2 = v47;
                  *(a2 + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    break;
                  }
                }
              }

LABEL_263:
              *(this + 20) = v45;
            }

            goto LABEL_300;
          }

          if (v22 == 307)
          {
            *(this + 48) |= 0x200u;
            v117 = *(a2 + 1);
            v2 = *(a2 + 2);
            v118 = *a2;
            if (v117 > 0xFFFFFFFFFFFFFFF5 || v117 + 10 > v2)
            {
              v202 = 0;
              v203 = 0;
              v121 = 0;
              if (v2 <= v117)
              {
                v2 = *(a2 + 1);
              }

              v204 = v2 - v117;
              v205 = (v118 + v117);
              v206 = v117 + 1;
              while (1)
              {
                if (!v204)
                {
                  LODWORD(v121) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_299;
                }

                v207 = v206;
                v208 = *v205;
                *(a2 + 1) = v207;
                v121 |= (v208 & 0x7F) << v202;
                if ((v208 & 0x80) == 0)
                {
                  break;
                }

                v202 += 7;
                --v204;
                ++v205;
                v206 = v207 + 1;
                v14 = v203++ > 8;
                if (v14)
                {
                  LODWORD(v121) = 0;
                  goto LABEL_298;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v121) = 0;
              }

LABEL_298:
              v2 = v207;
            }

            else
            {
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = (v118 + v117);
              v123 = v117 + 1;
              while (1)
              {
                v2 = v123;
                *(a2 + 1) = v123;
                v124 = *v122++;
                v121 |= (v124 & 0x7F) << v119;
                if ((v124 & 0x80) == 0)
                {
                  break;
                }

                v119 += 7;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
                  LODWORD(v121) = 0;
                  break;
                }
              }
            }

LABEL_299:
            *(this + 19) = v121;
            goto LABEL_300;
          }

          if (v22 == 308)
          {
            *(this + 48) |= 4u;
            v73 = *(a2 + 1);
            v2 = *(a2 + 2);
            v74 = *a2;
            if (v73 > 0xFFFFFFFFFFFFFFF5 || v73 + 10 > v2)
            {
              v167 = 0;
              v168 = 0;
              v77 = 0;
              if (v2 <= v73)
              {
                v2 = *(a2 + 1);
              }

              v169 = v2 - v73;
              v170 = (v74 + v73);
              v171 = v73 + 1;
              while (1)
              {
                if (!v169)
                {
                  v77 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_279;
                }

                v172 = v171;
                v173 = *v170;
                *(a2 + 1) = v172;
                v77 |= (v173 & 0x7F) << v167;
                if ((v173 & 0x80) == 0)
                {
                  break;
                }

                v167 += 7;
                --v169;
                ++v170;
                v171 = v172 + 1;
                v14 = v168++ > 8;
                if (v14)
                {
                  v77 = 0;
                  goto LABEL_278;
                }
              }

              if (*(a2 + 24))
              {
                v77 = 0;
              }

LABEL_278:
              v2 = v172;
            }

            else
            {
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v78 = (v74 + v73);
              v79 = v73 + 1;
              while (1)
              {
                v2 = v79;
                *(a2 + 1) = v79;
                v80 = *v78++;
                v77 |= (v80 & 0x7F) << v75;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                ++v79;
                v14 = v76++ > 8;
                if (v14)
                {
                  v77 = 0;
                  break;
                }
              }
            }

LABEL_279:
            *(this + 3) = v77;
            goto LABEL_300;
          }
        }

        else
        {
          if (v22 > 302)
          {
            if (v22 == 303)
            {
              *(this + 48) |= 0x20u;
              v107 = *(a2 + 1);
              v2 = *(a2 + 2);
              v108 = *a2;
              if (v107 > 0xFFFFFFFFFFFFFFF5 || v107 + 10 > v2)
              {
                v195 = 0;
                v196 = 0;
                v111 = 0;
                if (v2 <= v107)
                {
                  v2 = *(a2 + 1);
                }

                v197 = v2 - v107;
                v198 = (v108 + v107);
                v199 = v107 + 1;
                while (1)
                {
                  if (!v197)
                  {
                    v111 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_295;
                  }

                  v200 = v199;
                  v201 = *v198;
                  *(a2 + 1) = v200;
                  v111 |= (v201 & 0x7F) << v195;
                  if ((v201 & 0x80) == 0)
                  {
                    break;
                  }

                  v195 += 7;
                  --v197;
                  ++v198;
                  v199 = v200 + 1;
                  v14 = v196++ > 8;
                  if (v14)
                  {
                    v111 = 0;
                    goto LABEL_294;
                  }
                }

                if (*(a2 + 24))
                {
                  v111 = 0;
                }

LABEL_294:
                v2 = v200;
              }

              else
              {
                v109 = 0;
                v110 = 0;
                v111 = 0;
                v112 = (v108 + v107);
                v113 = v107 + 1;
                while (1)
                {
                  v2 = v113;
                  *(a2 + 1) = v113;
                  v114 = *v112++;
                  v111 |= (v114 & 0x7F) << v109;
                  if ((v114 & 0x80) == 0)
                  {
                    break;
                  }

                  v109 += 7;
                  ++v113;
                  v14 = v110++ > 8;
                  if (v14)
                  {
                    v111 = 0;
                    break;
                  }
                }
              }

LABEL_295:
              *(this + 6) = v111;
            }

            else
            {
              *(this + 48) |= 0x40u;
              v57 = *(a2 + 1);
              v2 = *(a2 + 2);
              v58 = *a2;
              if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
              {
                v153 = 0;
                v154 = 0;
                v61 = 0;
                if (v2 <= v57)
                {
                  v2 = *(a2 + 1);
                }

                v155 = v2 - v57;
                v156 = (v58 + v57);
                v157 = v57 + 1;
                while (1)
                {
                  if (!v155)
                  {
                    v61 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_271;
                  }

                  v158 = v157;
                  v159 = *v156;
                  *(a2 + 1) = v158;
                  v61 |= (v159 & 0x7F) << v153;
                  if ((v159 & 0x80) == 0)
                  {
                    break;
                  }

                  v153 += 7;
                  --v155;
                  ++v156;
                  v157 = v158 + 1;
                  v14 = v154++ > 8;
                  if (v14)
                  {
                    v61 = 0;
                    goto LABEL_270;
                  }
                }

                if (*(a2 + 24))
                {
                  v61 = 0;
                }

LABEL_270:
                v2 = v158;
              }

              else
              {
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = (v58 + v57);
                v63 = v57 + 1;
                while (1)
                {
                  v2 = v63;
                  *(a2 + 1) = v63;
                  v64 = *v62++;
                  v61 |= (v64 & 0x7F) << v59;
                  if ((v64 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  ++v63;
                  v14 = v60++ > 8;
                  if (v14)
                  {
                    v61 = 0;
                    break;
                  }
                }
              }

LABEL_271:
              *(this + 7) = v61;
            }

            goto LABEL_300;
          }

          if (v22 == 301)
          {
            *(this + 48) |= 8u;
            v89 = *(a2 + 1);
            v2 = *(a2 + 2);
            v90 = *a2;
            if (v89 > 0xFFFFFFFFFFFFFFF5 || v89 + 10 > v2)
            {
              v181 = 0;
              v182 = 0;
              v93 = 0;
              if (v2 <= v89)
              {
                v2 = *(a2 + 1);
              }

              v183 = v2 - v89;
              v184 = (v90 + v89);
              v185 = v89 + 1;
              while (1)
              {
                if (!v183)
                {
                  v93 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_287;
                }

                v186 = v185;
                v187 = *v184;
                *(a2 + 1) = v186;
                v93 |= (v187 & 0x7F) << v181;
                if ((v187 & 0x80) == 0)
                {
                  break;
                }

                v181 += 7;
                --v183;
                ++v184;
                v185 = v186 + 1;
                v14 = v182++ > 8;
                if (v14)
                {
                  v93 = 0;
                  goto LABEL_286;
                }
              }

              if (*(a2 + 24))
              {
                v93 = 0;
              }

LABEL_286:
              v2 = v186;
            }

            else
            {
              v91 = 0;
              v92 = 0;
              v93 = 0;
              v94 = (v90 + v89);
              v95 = v89 + 1;
              while (1)
              {
                v2 = v95;
                *(a2 + 1) = v95;
                v96 = *v94++;
                v93 |= (v96 & 0x7F) << v91;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                ++v95;
                v14 = v92++ > 8;
                if (v14)
                {
                  v93 = 0;
                  break;
                }
              }
            }

LABEL_287:
            *(this + 4) = v93;
            goto LABEL_300;
          }

          if (v22 == 302)
          {
            *(this + 48) |= 0x10u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v132 = 0;
              v133 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v134 = v2 - v31;
              v135 = (v32 + v31);
              v136 = v31 + 1;
              while (1)
              {
                if (!v134)
                {
                  v35 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_259;
                }

                v137 = v136;
                v138 = *v135;
                *(a2 + 1) = v137;
                v35 |= (v138 & 0x7F) << v132;
                if ((v138 & 0x80) == 0)
                {
                  break;
                }

                v132 += 7;
                --v134;
                ++v135;
                v136 = v137 + 1;
                v14 = v133++ > 8;
                if (v14)
                {
                  v35 = 0;
                  goto LABEL_258;
                }
              }

              if (*(a2 + 24))
              {
                v35 = 0;
              }

LABEL_258:
              v2 = v137;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(a2 + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_259:
            *(this + 5) = v35;
            goto LABEL_300;
          }
        }
      }

      else if (v22 > 201)
      {
        if (v22 <= 203)
        {
          if (v22 == 202)
          {
            *(this + 48) |= 0x8000u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v98 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v97 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v98 = v97 != 0;
            }

            *(this + 94) = v98;
          }

          else
          {
            *(this + 48) |= 0x4000u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v40 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v39 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v40 = v39 != 0;
            }

            *(this + 93) = v40;
          }

          goto LABEL_300;
        }

        if (v22 == 204)
        {
          *(this + 48) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v116 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v115 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v116 = v115 != 0;
          }

          *(this + 92) = v116;
          goto LABEL_300;
        }

        if (v22 == 205)
        {
          *(this + 48) |= 2u;
          v65 = *(a2 + 1);
          v2 = *(a2 + 2);
          v66 = *a2;
          if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
          {
            v160 = 0;
            v161 = 0;
            v69 = 0;
            if (v2 <= v65)
            {
              v2 = *(a2 + 1);
            }

            v162 = v2 - v65;
            v163 = (v66 + v65);
            v164 = v65 + 1;
            while (1)
            {
              if (!v162)
              {
                v69 = 0;
                *(a2 + 24) = 1;
                goto LABEL_275;
              }

              v165 = v164;
              v166 = *v163;
              *(a2 + 1) = v165;
              v69 |= (v166 & 0x7F) << v160;
              if ((v166 & 0x80) == 0)
              {
                break;
              }

              v160 += 7;
              --v162;
              ++v163;
              v164 = v165 + 1;
              v14 = v161++ > 8;
              if (v14)
              {
                v69 = 0;
                goto LABEL_274;
              }
            }

            if (*(a2 + 24))
            {
              v69 = 0;
            }

LABEL_274:
            v2 = v165;
          }

          else
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            while (1)
            {
              v2 = v71;
              *(a2 + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
              if (v14)
              {
                v69 = 0;
                break;
              }
            }
          }

LABEL_275:
          *(this + 2) = v69;
          goto LABEL_300;
        }
      }

      else if (v22 > 102)
      {
        if (v22 == 103)
        {
          *(this + 48) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 18) = *(*a2 + v2);
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_300;
        }

        if (v22 == 201)
        {
          *(this + 48) |= 0x80u;
          v49 = *(a2 + 1);
          v2 = *(a2 + 2);
          v50 = *a2;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v146 = 0;
            v147 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(a2 + 1);
            }

            v148 = v2 - v49;
            v149 = (v50 + v49);
            v150 = v49 + 1;
            while (1)
            {
              if (!v148)
              {
                v53 = 0;
                *(a2 + 24) = 1;
                goto LABEL_267;
              }

              v151 = v150;
              v152 = *v149;
              *(a2 + 1) = v151;
              v53 |= (v152 & 0x7F) << v146;
              if ((v152 & 0x80) == 0)
              {
                break;
              }

              v146 += 7;
              --v148;
              ++v149;
              v150 = v151 + 1;
              v14 = v147++ > 8;
              if (v14)
              {
                v53 = 0;
                goto LABEL_266;
              }
            }

            if (*(a2 + 24))
            {
              v53 = 0;
            }

LABEL_266:
            v2 = v151;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(a2 + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                v53 = 0;
                break;
              }
            }
          }

LABEL_267:
          *(this + 8) = v53;
          goto LABEL_300;
        }
      }

      else
      {
        if (v22 == 101)
        {
          *(this + 48) |= 0x1000u;
          v81 = *(a2 + 1);
          v2 = *(a2 + 2);
          v82 = *a2;
          if (v81 > 0xFFFFFFFFFFFFFFF5 || v81 + 10 > v2)
          {
            v174 = 0;
            v175 = 0;
            v85 = 0;
            if (v2 <= v81)
            {
              v2 = *(a2 + 1);
            }

            v176 = v2 - v81;
            v177 = (v82 + v81);
            v178 = v81 + 1;
            while (1)
            {
              if (!v176)
              {
                LODWORD(v85) = 0;
                *(a2 + 24) = 1;
                goto LABEL_283;
              }

              v179 = v178;
              v180 = *v177;
              *(a2 + 1) = v179;
              v85 |= (v180 & 0x7F) << v174;
              if ((v180 & 0x80) == 0)
              {
                break;
              }

              v174 += 7;
              --v176;
              ++v177;
              v178 = v179 + 1;
              v14 = v175++ > 8;
              if (v14)
              {
                LODWORD(v85) = 0;
                goto LABEL_282;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v85) = 0;
            }

LABEL_282:
            v2 = v179;
          }

          else
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = (v82 + v81);
            v87 = v81 + 1;
            while (1)
            {
              v2 = v87;
              *(a2 + 1) = v87;
              v88 = *v86++;
              v85 |= (v88 & 0x7F) << v83;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              ++v87;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v85) = 0;
                break;
              }
            }
          }

LABEL_283:
          *(this + 22) = v85;
          goto LABEL_300;
        }

        if (v22 == 102)
        {
          *(this + 48) |= 0x800u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v125 = 0;
            v126 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v127 = v2 - v23;
            v128 = (v24 + v23);
            v129 = v23 + 1;
            while (1)
            {
              if (!v127)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_255;
              }

              v130 = v129;
              v131 = *v128;
              *(a2 + 1) = v130;
              v27 |= (v131 & 0x7F) << v125;
              if ((v131 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              --v127;
              ++v128;
              v129 = v130 + 1;
              v14 = v126++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_254;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_254:
            v2 = v130;
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

LABEL_255:
          *(this + 21) = v27;
          goto LABEL_300;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v209 = 0;
        return v209 & 1;
      }

      v2 = *(a2 + 1);
LABEL_300:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_304:
  v209 = v4 ^ 1;
  return v209 & 1;
}

uint64_t CMMsl::KappaTriggerClustersResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 96);
  if ((v4 & 0x1000) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 88), 0x65u);
    v4 = *(v3 + 96);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(this + 96) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 84), 0x66u);
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 72), 0x67u);
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::writeVarInt(a2, *(v3 + 64), 0xC9u);
  v4 = *(v3 + 96);
  if ((v4 & 0x8000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 94), 0xCAu);
  v4 = *(v3 + 96);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 93), 0xCBu);
  v4 = *(v3 + 96);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 92), 0xCCu);
  v4 = *(v3 + 96);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0xCDu);
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0x12Du);
  v4 = *(v3 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x12Eu);
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0x12Fu);
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0x130u);
  v4 = *(v3 + 96);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0x131u);
  v4 = *(v3 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0x133u);
    if ((*(v3 + 96) & 4) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 80), 0x132u);
  v4 = *(v3 + 96);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_33:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2, v5, 0x134u);
}

uint64_t CMMsl::KappaTriggerClustersResult::hash_value(CMMsl::KappaTriggerClustersResult *this)
{
  v1 = *(this + 48);
  if ((v1 & 0x1000) != 0)
  {
    v2 = *(this + 22);
    if ((*(this + 48) & 0x800) != 0)
    {
LABEL_3:
      v3 = *(this + 21);
      if ((*(this + 48) & 0x100) != 0)
      {
        goto LABEL_4;
      }

LABEL_22:
      v5 = 0;
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 48) & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 48) & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v4 = *(this + 18);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_7:
    v6 = *(this + 8);
    if ((*(this + 48) & 0x8000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v6 = 0;
  if ((*(this + 48) & 0x8000) != 0)
  {
LABEL_8:
    v7 = *(this + 94);
    if ((*(this + 48) & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = 0;
  if ((*(this + 48) & 0x4000) != 0)
  {
LABEL_9:
    v8 = *(this + 93);
    if ((*(this + 48) & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = 0;
  if ((*(this + 48) & 0x2000) != 0)
  {
LABEL_10:
    v9 = *(this + 92);
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_11:
    v10 = *(this + 2);
    if ((v1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_12:
    v11 = *(this + 4);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_13:
    v12 = *(this + 5);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_14:
    v13 = *(this + 6);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_15:
    v14 = *(this + 7);
    if (v1)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = 0;
  if (v1)
  {
LABEL_16:
    v15 = *(this + 1);
    if ((*(this + 48) & 0x400) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = 0;
  if ((*(this + 48) & 0x400) != 0)
  {
LABEL_17:
    v16 = *(this + 20);
    if ((*(this + 48) & 0x200) != 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    v17 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_35:
    v18 = 0;
    return v3 ^ v2 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_33:
  v16 = 0;
  if ((*(this + 48) & 0x200) == 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  v17 = *(this + 19);
  if ((v1 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  v18 = *(this + 3);
  return v3 ^ v2 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

void CMMsl::KappaTriggerDebug::~KappaTriggerDebug(CMMsl::KappaTriggerDebug *this)
{
  *this = off_10041FC00;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::KappaTriggerDebug::~KappaTriggerDebug(this);

  operator delete();
}

CMMsl::KappaTriggerDebug *CMMsl::KappaTriggerDebug::KappaTriggerDebug(CMMsl::KappaTriggerDebug *this, const CMMsl::KappaTriggerDebug *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *this = off_10041FC00;
  *(this + 30) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  v5 = *(a2 + 60);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 11);
    v6 = 2;
    *(this + 60) = 2;
    *(this + 11) = v7;
    v5 = *(a2 + 60);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 60) & 0x200) != 0)
  {
LABEL_5:
    v8 = *(a2 + 118);
    v6 |= 0x200u;
    *(this + 60) = v6;
    *(this + 118) = v8;
    v5 = *(a2 + 60);
  }

LABEL_6:
  if (v5)
  {
    v9 = *(a2 + 10);
    *(this + 60) = v6 | 1;
    *(this + 10) = v9;
  }

  if (this != a2)
  {
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035D1C(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v10 = *(a2 + 60);
  if ((v10 & 0x80) != 0)
  {
    v13 = *(a2 + 116);
    *(this + 60) |= 0x80u;
    *(this + 116) = v13;
    v10 = *(a2 + 60);
    if ((v10 & 0x100) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 60) & 0x100) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 117);
  *(this + 60) |= 0x100u;
  *(this + 117) = v14;
  v10 = *(a2 + 60);
  if ((v10 & 4) == 0)
  {
LABEL_13:
    if ((v10 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = *(a2 + 24);
  *(this + 60) |= 4u;
  *(this + 24) = v15;
  v10 = *(a2 + 60);
  if ((v10 & 8) == 0)
  {
LABEL_14:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *(a2 + 25);
  *(this + 60) |= 8u;
  *(this + 25) = v16;
  v10 = *(a2 + 60);
  if ((v10 & 0x40) == 0)
  {
LABEL_15:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = *(a2 + 27);
    *(this + 60) |= 0x20u;
    *(this + 27) = v18;
    if ((*(a2 + 60) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_23:
  v17 = *(a2 + 28);
  *(this + 60) |= 0x40u;
  *(this + 28) = v17;
  v10 = *(a2 + 60);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 0x10) != 0)
  {
LABEL_17:
    v11 = *(a2 + 26);
    *(this + 60) |= 0x10u;
    *(this + 26) = v11;
  }

  return this;
}

CMMsl *CMMsl::KappaTriggerDebug::operator=(CMMsl *a1, const CMMsl::KappaTriggerDebug *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaTriggerDebug::KappaTriggerDebug(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaTriggerDebug::~KappaTriggerDebug(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaTriggerDebug *a2, CMMsl::KappaTriggerDebug *a3)
{
  v3 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LOBYTE(v4) = *(this + 118);
  *(this + 118) = *(a2 + 118);
  *(a2 + 118) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v14;
  LOBYTE(v14) = *(this + 116);
  *(this + 116) = *(a2 + 116);
  *(a2 + 116) = v14;
  LOBYTE(v14) = *(this + 117);
  *(this + 117) = *(a2 + 117);
  *(a2 + 117) = v14;
  LODWORD(v5) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  result = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = result;
  LODWORD(v14) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v14;
  LODWORD(v14) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v14;
  LODWORD(v14) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v14;
  return result;
}

uint64_t CMMsl::KappaTriggerDebug::KappaTriggerDebug(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FC00;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 80) = *(a2 + 80);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(v4, (a2 + 56));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

CMMsl *CMMsl::KappaTriggerDebug::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaTriggerDebug::KappaTriggerDebug(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaTriggerDebug::~KappaTriggerDebug(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaTriggerDebug::formatText(CMMsl::KappaTriggerDebug *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 60);
  if (v5)
  {
    PB::TextFormatter::format(a2, "avgHorizontalDecelMax", *(this + 10));
    v5 = *(this + 60);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "avgHorizontalDecelThresholdCoupled", *(this + 24));
  if ((*(this + 60) & 8) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "impactThresholdUncoupled", *(this + 25));
  }

LABEL_5:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "inertialAccel", v8);
  }

  v9 = *(this + 60);
  if ((v9 & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "isMounted", *(this + 116));
    v9 = *(this + 60);
    if ((v9 & 0x100) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else if ((*(this + 60) & 0x100) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "isSimulated", *(this + 117));
  v9 = *(this + 60);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "nAccelGap", *(this + 26));
  if ((*(this + 60) & 0x20) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "numResets", *(this + 27));
  }

LABEL_12:
  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "prevQ", v12);
  }

  v13 = *(this + 7);
  v14 = *(this + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "rawClampedAccel", v15);
  }

  v16 = *(this + 60);
  if ((v16 & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "shouldTrigger", *(this + 118));
    v16 = *(this + 60);
    if ((v16 & 2) == 0)
    {
LABEL_18:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_18;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 11));
  if ((*(this + 60) & 0x40) != 0)
  {
LABEL_19:
    PB::TextFormatter::format(a2, "triggerPathBitmap", *(this + 28));
  }

LABEL_20:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaTriggerDebug::readFrom(CMMsl::KappaTriggerDebug *this, PB::Reader *a2)
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
        break;
      }

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

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_236;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 60) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_210;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_153:
            v28 = 0;
            goto LABEL_210;
          }

          v137 = 0;
          v138 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v139 = v23 - v24;
          if (!v17)
          {
            v139 = 0;
          }

          v140 = (v25 + v24);
          v141 = v24 + 1;
          while (2)
          {
            if (v139)
            {
              v142 = *v140;
              *(a2 + 1) = v141;
              v28 |= (v142 & 0x7F) << v137;
              if (v142 < 0)
              {
                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
                  goto LABEL_153;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_210:
          *(this + 11) = v28;
          goto LABEL_232;
        case 2u:
          *(this + 60) |= 0x200u;
          v88 = *(a2 + 1);
          if (v88 >= *(a2 + 2))
          {
            v91 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v89 = v88 + 1;
            v90 = *(*a2 + v88);
            *(a2 + 1) = v89;
            v91 = v90 != 0;
          }

          *(this + 118) = v91;
          goto LABEL_232;
        case 3u:
          *(this + 60) |= 1u;
          v67 = *(a2 + 1);
          if (v67 > 0xFFFFFFFFFFFFFFF7 || v67 + 8 > *(a2 + 2))
          {
            goto LABEL_228;
          }

          *(this + 10) = *(*a2 + v67);
          goto LABEL_222;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_238;
            }

            v68 = *(a2 + 1);
            v69 = *(a2 + 2);
            while (v68 < v69 && (*(a2 + 24) & 1) == 0)
            {
              v71 = *(this + 2);
              v70 = *(this + 3);
              if (v71 >= v70)
              {
                v73 = *(this + 1);
                v74 = v71 - v73;
                v75 = (v71 - v73) >> 3;
                v76 = v75 + 1;
                if ((v75 + 1) >> 61)
                {
                  goto LABEL_240;
                }

                v77 = v70 - v73;
                if (v77 >> 2 > v76)
                {
                  v76 = v77 >> 2;
                }

                if (v77 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v78 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  sub_10000CDCC(this + 8, v78);
                }

                v79 = (v71 - v73) >> 3;
                v80 = (8 * v75);
                v81 = (8 * v75 - 8 * v79);
                *v80 = 0;
                v72 = v80 + 1;
                memcpy(v81, v73, v74);
                v82 = *(this + 1);
                *(this + 1) = v81;
                *(this + 2) = v72;
                *(this + 3) = 0;
                if (v82)
                {
                  operator delete(v82);
                }
              }

              else
              {
                *v71 = 0;
                v72 = v71 + 8;
              }

              *(this + 2) = v72;
              v83 = *(a2 + 1);
              if (v83 > 0xFFFFFFFFFFFFFFF7 || v83 + 8 > *(a2 + 2))
              {
                goto LABEL_172;
              }

              *(v72 - 1) = *(*a2 + v83);
              v69 = *(a2 + 2);
              v68 = *(a2 + 1) + 8;
              *(a2 + 1) = v68;
            }

            goto LABEL_173;
          }

          v144 = *(this + 2);
          v143 = *(this + 3);
          if (v144 >= v143)
          {
            v160 = *(this + 1);
            v161 = v144 - v160;
            v162 = (v144 - v160) >> 3;
            v163 = v162 + 1;
            if ((v162 + 1) >> 61)
            {
LABEL_240:
              sub_10000CD24();
            }

            v164 = v143 - v160;
            if (v164 >> 2 > v163)
            {
              v163 = v164 >> 2;
            }

            if (v164 >= 0x7FFFFFFFFFFFFFF8)
            {
              v165 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v165 = v163;
            }

            if (v165)
            {
              sub_10000CDCC(this + 8, v165);
            }

            v176 = (v144 - v160) >> 3;
            v177 = (8 * v162);
            v178 = (8 * v162 - 8 * v176);
            *v177 = 0;
            v145 = v177 + 1;
            memcpy(v178, v160, v161);
            v179 = *(this + 1);
            *(this + 1) = v178;
            *(this + 2) = v145;
            *(this + 3) = 0;
            if (v179)
            {
              operator delete(v179);
            }
          }

          else
          {
            *v144 = 0;
            v145 = v144 + 8;
          }

          *(this + 2) = v145;
          v180 = *(a2 + 1);
          if (v180 <= 0xFFFFFFFFFFFFFFF7 && v180 + 8 <= *(a2 + 2))
          {
            *(v145 - 1) = *(*a2 + v180);
LABEL_222:
            v181 = *(a2 + 1) + 8;
            goto LABEL_231;
          }

          goto LABEL_228;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_238;
            }

            v41 = *(a2 + 1);
            v42 = *(a2 + 2);
            while (v41 < v42 && (*(a2 + 24) & 1) == 0)
            {
              v44 = *(this + 8);
              v43 = *(this + 9);
              if (v44 >= v43)
              {
                v46 = *(this + 7);
                v47 = v44 - v46;
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_239;
                }

                v50 = v43 - v46;
                if (v50 >> 1 > v49)
                {
                  v49 = v50 >> 1;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v51 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  sub_10002290C(this + 56, v51);
                }

                v52 = (v44 - v46) >> 2;
                v53 = (4 * v48);
                v54 = (4 * v48 - 4 * v52);
                *v53 = 0;
                v45 = v53 + 1;
                memcpy(v54, v46, v47);
                v55 = *(this + 7);
                *(this + 7) = v54;
                *(this + 8) = v45;
                *(this + 9) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v44 = 0;
                v45 = v44 + 4;
              }

              *(this + 8) = v45;
              v56 = *(a2 + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
              {
                goto LABEL_172;
              }

              *(v45 - 1) = *(*a2 + v56);
              v42 = *(a2 + 2);
              v41 = *(a2 + 1) + 4;
              *(a2 + 1) = v41;
            }

            goto LABEL_173;
          }

          v135 = *(this + 8);
          v134 = *(this + 9);
          if (v135 >= v134)
          {
            v154 = *(this + 7);
            v155 = v135 - v154;
            v156 = (v135 - v154) >> 2;
            v157 = v156 + 1;
            if ((v156 + 1) >> 62)
            {
              goto LABEL_239;
            }

            v158 = v134 - v154;
            if (v158 >> 1 > v157)
            {
              v157 = v158 >> 1;
            }

            if (v158 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v159 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v159 = v157;
            }

            if (v159)
            {
              sub_10002290C(this + 56, v159);
            }

            v172 = (v135 - v154) >> 2;
            v173 = (4 * v156);
            v174 = (4 * v156 - 4 * v172);
            *v173 = 0;
            v136 = v173 + 1;
            memcpy(v174, v154, v155);
            v175 = *(this + 7);
            *(this + 7) = v174;
            *(this + 8) = v136;
            *(this + 9) = 0;
            if (v175)
            {
              operator delete(v175);
            }
          }

          else
          {
            *v135 = 0;
            v136 = v135 + 4;
          }

          *(this + 8) = v136;
          goto LABEL_226;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_238:
              v187 = 0;
              return v187 & 1;
            }

            v92 = *(a2 + 1);
            v93 = *(a2 + 2);
            while (v92 < v93 && (*(a2 + 24) & 1) == 0)
            {
              v95 = *(this + 5);
              v94 = *(this + 6);
              if (v95 >= v94)
              {
                v97 = *(this + 4);
                v98 = v95 - v97;
                v99 = (v95 - v97) >> 2;
                v100 = v99 + 1;
                if ((v99 + 1) >> 62)
                {
                  goto LABEL_239;
                }

                v101 = v94 - v97;
                if (v101 >> 1 > v100)
                {
                  v100 = v101 >> 1;
                }

                if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v102 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v102 = v100;
                }

                if (v102)
                {
                  sub_10002290C(this + 32, v102);
                }

                v103 = (v95 - v97) >> 2;
                v104 = (4 * v99);
                v105 = (4 * v99 - 4 * v103);
                *v104 = 0;
                v96 = v104 + 1;
                memcpy(v105, v97, v98);
                v106 = *(this + 4);
                *(this + 4) = v105;
                *(this + 5) = v96;
                *(this + 6) = 0;
                if (v106)
                {
                  operator delete(v106);
                }
              }

              else
              {
                *v95 = 0;
                v96 = v95 + 4;
              }

              *(this + 5) = v96;
              v107 = *(a2 + 1);
              if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(a2 + 2))
              {
LABEL_172:
                *(a2 + 24) = 1;
                break;
              }

              *(v96 - 1) = *(*a2 + v107);
              v93 = *(a2 + 2);
              v92 = *(a2 + 1) + 4;
              *(a2 + 1) = v92;
            }

LABEL_173:
            PB::Reader::recallMark();
          }

          else
          {
            v147 = *(this + 5);
            v146 = *(this + 6);
            if (v147 >= v146)
            {
              v166 = *(this + 4);
              v167 = v147 - v166;
              v168 = (v147 - v166) >> 2;
              v169 = v168 + 1;
              if ((v168 + 1) >> 62)
              {
LABEL_239:
                sub_10000CD24();
              }

              v170 = v146 - v166;
              if (v170 >> 1 > v169)
              {
                v169 = v170 >> 1;
              }

              if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v171 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v171 = v169;
              }

              if (v171)
              {
                sub_10002290C(this + 32, v171);
              }

              v182 = (v147 - v166) >> 2;
              v183 = (4 * v168);
              v184 = (4 * v168 - 4 * v182);
              *v183 = 0;
              v136 = v183 + 1;
              memcpy(v184, v166, v167);
              v185 = *(this + 4);
              *(this + 4) = v184;
              *(this + 5) = v136;
              *(this + 6) = 0;
              if (v185)
              {
                operator delete(v185);
              }
            }

            else
            {
              *v147 = 0;
              v136 = v147 + 4;
            }

            *(this + 5) = v136;
LABEL_226:
            v186 = *(a2 + 1);
            if (v186 <= 0xFFFFFFFFFFFFFFFBLL && v186 + 4 <= *(a2 + 2))
            {
              *(v136 - 1) = *(*a2 + v186);
LABEL_230:
              v181 = *(a2 + 1) + 4;
LABEL_231:
              *(a2 + 1) = v181;
            }

            else
            {
LABEL_228:
              *(a2 + 24) = 1;
            }
          }

LABEL_232:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_236;
          }

          break;
        case 7u:
          *(this + 60) |= 0x80u;
          v108 = *(a2 + 1);
          if (v108 >= *(a2 + 2))
          {
            v111 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v109 = v108 + 1;
            v110 = *(*a2 + v108);
            *(a2 + 1) = v109;
            v111 = v110 != 0;
          }

          *(this + 116) = v111;
          goto LABEL_232;
        case 8u:
          *(this + 60) |= 0x100u;
          v84 = *(a2 + 1);
          if (v84 >= *(a2 + 2))
          {
            v87 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v85 = v84 + 1;
            v86 = *(*a2 + v84);
            *(a2 + 1) = v85;
            v87 = v86 != 0;
          }

          *(this + 117) = v87;
          goto LABEL_232;
        case 9u:
          *(this + 60) |= 4u;
          v121 = *(a2 + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
          {
            goto LABEL_228;
          }

          *(this + 24) = *(*a2 + v121);
          goto LABEL_230;
        case 0xAu:
          *(this + 60) |= 8u;
          v66 = *(a2 + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(a2 + 2))
          {
            goto LABEL_228;
          }

          *(this + 25) = *(*a2 + v66);
          goto LABEL_230;
        case 0xBu:
          *(this + 60) |= 0x40u;
          v113 = *(a2 + 1);
          v112 = *(a2 + 2);
          v114 = *a2;
          if (v113 <= 0xFFFFFFFFFFFFFFF5 && v113 + 10 <= v112)
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = (v114 + v113);
            v119 = v113 + 1;
            do
            {
              *(a2 + 1) = v119;
              v120 = *v118++;
              v117 |= (v120 & 0x7F) << v115;
              if ((v120 & 0x80) == 0)
              {
                goto LABEL_213;
              }

              v115 += 7;
              ++v119;
              v14 = v116++ > 8;
            }

            while (!v14);
LABEL_169:
            LODWORD(v117) = 0;
            goto LABEL_213;
          }

          v148 = 0;
          v149 = 0;
          v117 = 0;
          v17 = v112 >= v113;
          v150 = v112 - v113;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v114 + v113);
          v152 = v113 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(a2 + 1) = v152;
              v117 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_169;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v117) = 0;
              }
            }

            else
            {
              LODWORD(v117) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_213:
          *(this + 28) = v117;
          goto LABEL_232;
        case 0xCu:
          *(this + 60) |= 0x20u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_204;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_135:
            LODWORD(v37) = 0;
            goto LABEL_204;
          }

          v122 = 0;
          v123 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v124 = v32 - v33;
          if (!v17)
          {
            v124 = 0;
          }

          v125 = (v34 + v33);
          v126 = v33 + 1;
          while (2)
          {
            if (v124)
            {
              v127 = *v125;
              *(a2 + 1) = v126;
              v37 |= (v127 & 0x7F) << v122;
              if (v127 < 0)
              {
                v122 += 7;
                --v124;
                ++v125;
                ++v126;
                v14 = v123++ > 8;
                if (v14)
                {
                  goto LABEL_135;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_204:
          *(this + 27) = v37;
          goto LABEL_232;
        case 0xDu:
          *(this + 60) |= 0x10u;
          v58 = *(a2 + 1);
          v57 = *(a2 + 2);
          v59 = *a2;
          if (v58 <= 0xFFFFFFFFFFFFFFF5 && v58 + 10 <= v57)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            do
            {
              *(a2 + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                goto LABEL_207;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
            }

            while (!v14);
LABEL_143:
            LODWORD(v62) = 0;
            goto LABEL_207;
          }

          v128 = 0;
          v129 = 0;
          v62 = 0;
          v17 = v57 >= v58;
          v130 = v57 - v58;
          if (!v17)
          {
            v130 = 0;
          }

          v131 = (v59 + v58);
          v132 = v58 + 1;
          while (2)
          {
            if (v130)
            {
              v133 = *v131;
              *(a2 + 1) = v132;
              v62 |= (v133 & 0x7F) << v128;
              if (v133 < 0)
              {
                v128 += 7;
                --v130;
                ++v131;
                ++v132;
                v14 = v129++ > 8;
                if (v14)
                {
                  goto LABEL_143;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v62) = 0;
              }
            }

            else
            {
              LODWORD(v62) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_207:
          *(this + 26) = v62;
          goto LABEL_232;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_238;
          }

          goto LABEL_232;
      }
    }

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
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
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

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_236:
  v187 = v4 ^ 1;
  return v187 & 1;
}

uint64_t CMMsl::KappaTriggerDebug::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 120);
  if ((v4 & 2) == 0)
  {
    if ((*(this + 120) & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    this = PB::Writer::write(a2, *(v3 + 118), 2u);
    if ((*(v3 + 120) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = PB::Writer::writeVarInt(a2, *(this + 88), 1u);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v4)
  {
LABEL_4:
    this = PB::Writer::write(a2, *(v3 + 80), 3u);
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 4u);
  }

  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10, 5u);
  }

  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13, 6u);
  }

  v14 = *(v3 + 120);
  if ((v14 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 116), 7u);
    v14 = *(v3 + 120);
    if ((v14 & 0x100) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 120) & 0x100) == 0)
  {
    goto LABEL_16;
  }

  this = PB::Writer::write(a2, *(v3 + 117), 8u);
  v14 = *(v3 + 120);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 96), 9u);
  v14 = *(v3 + 120);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 100), 0xAu);
  v14 = *(v3 + 120);
  if ((v14 & 0x40) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    this = PB::Writer::writeVarInt(a2, *(v3 + 108), 0xCu);
    if ((*(v3 + 120) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 0xBu);
  v14 = *(v3 + 120);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if ((v14 & 0x10) == 0)
  {
    return this;
  }

LABEL_31:
  v15 = *(v3 + 104);

  return PB::Writer::writeVarInt(a2, v15, 0xDu);
}

uint64_t CMMsl::KappaTriggerDebug::hash_value(CMMsl::KappaTriggerDebug *this)
{
  v2 = *(this + 60);
  if ((v2 & 2) != 0)
  {
    v3 = *(this + 11);
    if ((*(this + 60) & 0x200) != 0)
    {
LABEL_3:
      v4 = *(this + 118);
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 60) & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(this + 10) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 10);
  }

LABEL_10:
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  v9 = *(this + 7);
  v10 = *(this + 8);
  v11 = PBHashBytes();
  v12 = *(this + 4);
  v13 = *(this + 5);
  v14 = PBHashBytes();
  v15 = *(this + 60);
  if ((v15 & 0x80) != 0)
  {
    v16 = *(this + 116);
    if ((*(this + 60) & 0x100) != 0)
    {
LABEL_12:
      v17 = *(this + 117);
      if ((v15 & 4) != 0)
      {
        goto LABEL_13;
      }

LABEL_24:
      v19 = 0;
      if ((v15 & 8) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v21 = 0;
      if ((v15 & 0x40) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if ((*(this + 60) & 0x100) != 0)
    {
      goto LABEL_12;
    }
  }

  v17 = 0;
  if ((v15 & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v18 = *(this + 24);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((v15 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v20 = *(this + 25);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((v15 & 0x40) != 0)
  {
LABEL_19:
    v22 = *(this + 28);
    if ((v15 & 0x20) != 0)
    {
      goto LABEL_20;
    }

LABEL_27:
    v23 = 0;
    if ((v15 & 0x10) != 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    v24 = 0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v11 ^ v14 ^ v16 ^ v17 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24;
  }

LABEL_26:
  v22 = 0;
  if ((v15 & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v23 = *(this + 27);
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v24 = *(this + 26);
  return v4 ^ v3 ^ v5 ^ v8 ^ v11 ^ v14 ^ v16 ^ v17 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24;
}

void CMMsl::KappaZgDetected::~KappaZgDetected(CMMsl::KappaZgDetected *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaZgDetected::KappaZgDetected(uint64_t this, const CMMsl::KappaZgDetected *a2)
{
  *this = off_10041FC38;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::KappaZgDetected::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16) & 1;
    v8 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7[0] = off_10041FC38;
    v7[1] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    *(a1 + 16) = v3;
    v9 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8[0] = off_10041FC38;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::KappaZgDetected *a2, CMMsl::KappaZgDetected *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

uint64_t CMMsl::KappaZgDetected::formatText(CMMsl::KappaZgDetected *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaZgDetected::readFrom(CMMsl::KappaZgDetected *this, PB::Reader *a2)
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
        *(this + 16) |= 1u;
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
              v27 = 0;
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
              v27 = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 1) = v27;
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

uint64_t CMMsl::KappaZgDetected::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

uint64_t CMMsl::KappaZgDetected::hash_value(CMMsl::KappaZgDetected *this)
{
  if (*(this + 16))
  {
    return *(this + 1);
  }

  else
  {
    return 0;
  }
}

void CMMsl::KappaZgResult::~KappaZgResult(CMMsl::KappaZgResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaZgResult::KappaZgResult(uint64_t this, const CMMsl::KappaZgResult *a2)
{
  *this = off_10041FC70;
  *(this + 164) = 0;
  v2 = *(a2 + 164);
  if ((v2 & 0x100000000) != 0)
  {
    v4 = *(a2 + 160);
    v3 = &_mh_execute_header;
    *(this + 164) = &_mh_execute_header;
    *(this + 160) = v4;
    v2 = *(a2 + 164);
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 28);
    v3 |= 0x100000uLL;
    *(this + 164) = v3;
    *(this + 112) = v5;
    v2 = *(a2 + 164);
  }

LABEL_6:
  if ((v2 & 0x80000) != 0)
  {
    v6 = *(a2 + 27);
    v3 |= 0x80000uLL;
    *(this + 164) = v3;
    *(this + 108) = v6;
    v2 = *(a2 + 164);
    if ((v2 & 0x1000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x1000000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 32);
  v3 |= 0x1000000uLL;
  *(this + 164) = v3;
  *(this + 128) = v7;
  v2 = *(a2 + 164);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = *(a2 + 37);
  v3 |= 0x20000000uLL;
  *(this + 164) = v3;
  *(this + 148) = v8;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = *(a2 + 34);
  v3 |= 0x4000000uLL;
  *(this + 164) = v3;
  *(this + 136) = v9;
  v2 = *(a2 + 164);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = *(a2 + 39);
  v3 |= 0x80000000uLL;
  *(this + 164) = v3;
  *(this + 156) = v10;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = *(a2 + 36);
  v3 |= 0x10000000uLL;
  *(this + 164) = v3;
  *(this + 144) = v11;
  v2 = *(a2 + 164);
  if ((v2 & 0x200000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = *(a2 + 29);
  v3 |= 0x200000uLL;
  *(this + 164) = v3;
  *(this + 116) = v12;
  v2 = *(a2 + 164);
  if ((v2 & 0x400000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  v13 = *(a2 + 30);
  v3 |= 0x400000uLL;
  *(this + 164) = v3;
  *(this + 120) = v13;
  v2 = *(a2 + 164);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v14 = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 164) = v3;
  *(this + 40) = v14;
  v2 = *(a2 + 164);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v15 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 164) = v3;
  *(this + 32) = v15;
  v2 = *(a2 + 164);
  if ((v2 & 4) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 164) = v3;
  *(this + 24) = v16;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a2 + 23);
  v3 |= 0x8000uLL;
  *(this + 164) = v3;
  *(this + 92) = v17;
  v2 = *(a2 + 164);
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a2 + 25);
  v3 |= 0x20000uLL;
  *(this + 164) = v3;
  *(this + 100) = v18;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000) == 0)
  {
LABEL_20:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = *(a2 + 24);
  v3 |= 0x10000uLL;
  *(this + 164) = v3;
  *(this + 96) = v19;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000) == 0)
  {
LABEL_21:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = *(a2 + 26);
  v3 |= 0x40000uLL;
  *(this + 164) = v3;
  *(this + 104) = v20;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = *(a2 + 22);
  v3 |= 0x4000uLL;
  *(this + 164) = v3;
  *(this + 88) = v21;
  v2 = *(a2 + 164);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  v22 = *(a2 + 14);
  v3 |= 0x40uLL;
  *(this + 164) = v3;
  *(this + 56) = v22;
  v2 = *(a2 + 164);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  v23 = *(a2 + 15);
  v3 |= 0x80uLL;
  *(this + 164) = v3;
  *(this + 60) = v23;
  v2 = *(a2 + 164);
  if ((v2 & 0x800) == 0)
  {
LABEL_25:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  v24 = *(a2 + 19);
  v3 |= 0x800uLL;
  *(this + 164) = v3;
  *(this + 76) = v24;
  v2 = *(a2 + 164);
  if ((v2 & 0x1000) == 0)
  {
LABEL_26:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v25 = *(a2 + 20);
  v3 |= 0x1000uLL;
  *(this + 164) = v3;
  *(this + 80) = v25;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v26 = *(a2 + 21);
  v3 |= 0x2000uLL;
  *(this + 164) = v3;
  *(this + 84) = v26;
  v2 = *(a2 + 164);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v27 = *(a2 + 16);
  v3 |= 0x100uLL;
  *(this + 164) = v3;
  *(this + 64) = v27;
  v2 = *(a2 + 164);
  if ((v2 & 0x200) == 0)
  {
LABEL_29:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v28 = *(a2 + 17);
  v3 |= 0x200uLL;
  *(this + 164) = v3;
  *(this + 68) = v28;
  v2 = *(a2 + 164);
  if ((v2 & 0x400) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v29 = *(a2 + 18);
  v3 |= 0x400uLL;
  *(this + 164) = v3;
  *(this + 72) = v29;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  v30 = *(a2 + 35);
  v3 |= 0x8000000uLL;
  *(this + 164) = v3;
  *(this + 140) = v30;
  v2 = *(a2 + 164);
  if ((v2 & 0x800000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  v31 = *(a2 + 31);
  v3 |= 0x800000uLL;
  *(this + 164) = v3;
  *(this + 124) = v31;
  v2 = *(a2 + 164);
  if ((v2 & 0x20) == 0)
  {
LABEL_33:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  v32 = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 164) = v3;
  *(this + 48) = v32;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  v33 = *(a2 + 33);
  v3 |= 0x2000000uLL;
  *(this + 164) = v3;
  *(this + 132) = v33;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_35:
    if ((v2 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_66:
  v34 = *(a2 + 38);
  v3 |= 0x40000000uLL;
  *(this + 164) = v3;
  *(this + 152) = v34;
  v2 = *(a2 + 164);
  if ((v2 & 1) == 0)
  {
LABEL_36:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_68:
    v36 = *(a2 + 2);
    *(this + 164) = v3 | 2;
    *(this + 16) = v36;
    return this;
  }

LABEL_67:
  v35 = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 164) = v3;
  *(this + 8) = v35;
  if ((*(a2 + 164) & 2) != 0)
  {
    goto LABEL_68;
  }

  return this;
}

CMMsl *CMMsl::KappaZgResult::operator=(CMMsl *a1, const CMMsl::KappaZgResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaZgResult::KappaZgResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaZgResult *a2, CMMsl::KappaZgResult *a3)
{
  v3 = *(this + 164);
  *(this + 164) = *(a2 + 164);
  *(a2 + 164) = v3;
  LOBYTE(v3) = *(this + 160);
  *(this + 160) = *(a2 + 160);
  *(a2 + 160) = v3;
  LODWORD(v3) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  LODWORD(v3) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  v5 = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v5;
  v6 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v6;
  v7 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v7;
  v8 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v8;
  LODWORD(v3) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  LODWORD(v3) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  LODWORD(v11) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v11;
  v12 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v12;
  LODWORD(v11) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v13 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v13;
  v14 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v14;
  v15 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v15;
  LODWORD(v11) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v11;
  v16 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v16;
  v17 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v17;
  v18 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v19;
  v20 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v20;
  v21 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v21;
  v22 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v22;
  LODWORD(v11) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v11;
  v23 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v23;
  v24 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v24;
  result = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = result;
  v26 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v26;
  v27 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v27;
  return result;
}

float CMMsl::KappaZgResult::KappaZgResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FC70;
  *(a1 + 164) = *(a2 + 164);
  *(a2 + 164) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 132) = *(a2 + 132);
  result = *(a2 + 152);
  *(a1 + 152) = result;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

CMMsl *CMMsl::KappaZgResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaZgResult::KappaZgResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaZgResult::formatText(CMMsl::KappaZgResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 164);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "configAccelThresholdNorm", *(this + 14));
    v5 = *(this + 164);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "configHardware", *(this + 15));
  v5 = *(this + 164);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "configIx", *(this + 16));
  v5 = *(this + 164);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "configIy", *(this + 17));
  v5 = *(this + 164);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "configIz", *(this + 18));
  v5 = *(this + 164);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "configLx", *(this + 19));
  v5 = *(this + 164);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "configLy", *(this + 20));
  v5 = *(this + 164);
  if ((v5 & 0x2000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "configLz", *(this + 21));
  v5 = *(this + 164);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "configZgThreshold", *(this + 22));
  v5 = *(this + 164);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "debugCountOfAccelDataDrop", *(this + 23));
  v5 = *(this + 164);
  if ((v5 & 0x10000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "debugCountOfDmDataDrop", *(this + 24));
  v5 = *(this + 164);
  if ((v5 & 0x20000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "debugMaxTimeBetweenAccelSample", *(this + 25));
  v5 = *(this + 164);
  if ((v5 & 0x40000) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "debugMaxTimeBetweenDmSample", *(this + 26));
  v5 = *(this + 164);
  if ((v5 & 1) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "epochFirstTimestamp", *(this + 1));
  v5 = *(this + 164);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "epochLastTimestamp", *(this + 2));
  v5 = *(this + 164);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "freefallTpQualifier", *(this + 160));
  v5 = *(this + 164);
  if ((v5 & 0x80000) == 0)
  {
LABEL_18:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "metaCountOfFreefallImpactPassed", *(this + 27));
  v5 = *(this + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "metaCountOfFreefallTimePassed", *(this + 28));
  v5 = *(this + 164);
  if ((v5 & 0x200000) == 0)
  {
LABEL_20:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "metaCountOfSigImpact", *(this + 29));
  v5 = *(this + 164);
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "metaCountOfZgSegment", *(this + 30));
  v5 = *(this + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_22:
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "metaCrossingCount", *(this + 31));
  v5 = *(this + 164);
  if ((v5 & 4) == 0)
  {
LABEL_23:
    if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "metaDtBwFirstAndLastFreeFall", *(this + 3));
  v5 = *(this + 164);
  if ((v5 & 8) == 0)
  {
LABEL_24:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "metaDtBwFirstFreeFall", *(this + 4));
  v5 = *(this + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "metaDtBwFirstSigImpact", *(this + 5));
  v5 = *(this + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "metaFreefallTime", *(this + 32));
  v5 = *(this + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "metaFreefallTimeForImpact", *(this + 33));
  v5 = *(this + 164);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "metaMaxOfAccel", *(this + 34));
  v5 = *(this + 164);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "metaMaxPower", *(this + 35));
  v5 = *(this + 164);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "metaMaxZgSegmentTime", *(this + 36));
  v5 = *(this + 164);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "metaNormOfAccel", *(this + 37));
  v5 = *(this + 164);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "metaNormOfImpact", *(this + 38));
  v5 = *(this + 164);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "metaTotalZgTime", *(this + 39));
  if ((*(this + 164) & 0x20) != 0)
  {
LABEL_34:
    PB::TextFormatter::format(a2, "timestamp", *(this + 6));
  }

LABEL_35:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaZgResult::readFrom(CMMsl::KappaZgResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_357:
    v256 = v4 ^ 1;
    return v256 & 1;
  }

  v4 = 0;
  while (2)
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
      while (v18)
      {
        v21 = *v19;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          if (v4)
          {
            v10 = 0;
          }

          goto LABEL_21;
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

      v4 = 1;
      *(a2 + 24) = 1;
      goto LABEL_357;
    }

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

LABEL_21:
    if (v4 & 1 | ((v10 & 7) == 4))
    {
      goto LABEL_357;
    }

    v22 = v10 >> 3;
    switch((v10 >> 3))
    {
      case 1u:
        *(this + 164) |= &_mh_execute_header;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*a2 + v23);
          *(a2 + 1) = v24;
          v26 = v25 != 0;
        }

        *(this + 160) = v26;
        goto LABEL_297;
      case 2u:
        *(this + 164) |= 0x100000uLL;
        v98 = *(a2 + 1);
        v97 = *(a2 + 2);
        v99 = *a2;
        if (v98 <= 0xFFFFFFFFFFFFFFF5 && v98 + 10 <= v97)
        {
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = (v99 + v98);
          v104 = v98 + 1;
          do
          {
            *(a2 + 1) = v104;
            v105 = *v103++;
            v102 |= (v105 & 0x7F) << v100;
            if ((v105 & 0x80) == 0)
            {
              goto LABEL_334;
            }

            v100 += 7;
            ++v104;
            v14 = v101++ > 8;
          }

          while (!v14);
LABEL_236:
          LODWORD(v102) = 0;
          goto LABEL_334;
        }

        v207 = 0;
        v208 = 0;
        v102 = 0;
        v17 = v97 >= v98;
        v209 = v97 - v98;
        if (!v17)
        {
          v209 = 0;
        }

        v210 = (v99 + v98);
        v211 = v98 + 1;
        while (2)
        {
          if (v209)
          {
            v212 = *v210;
            *(a2 + 1) = v211;
            v102 |= (v212 & 0x7F) << v207;
            if (v212 < 0)
            {
              v207 += 7;
              --v209;
              ++v210;
              ++v211;
              v14 = v208++ > 8;
              if (v14)
              {
                goto LABEL_236;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v102) = 0;
            }
          }

          else
          {
            LODWORD(v102) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_334:
        *(this + 28) = v102;
        goto LABEL_297;
      case 3u:
        *(this + 164) |= 0x80000uLL;
        v78 = *(a2 + 1);
        v77 = *(a2 + 2);
        v79 = *a2;
        if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            *(a2 + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_328;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
LABEL_220:
          LODWORD(v82) = 0;
          goto LABEL_328;
        }

        v195 = 0;
        v196 = 0;
        v82 = 0;
        v17 = v77 >= v78;
        v197 = v77 - v78;
        if (!v17)
        {
          v197 = 0;
        }

        v198 = (v79 + v78);
        v199 = v78 + 1;
        while (2)
        {
          if (v197)
          {
            v200 = *v198;
            *(a2 + 1) = v199;
            v82 |= (v200 & 0x7F) << v195;
            if (v200 < 0)
            {
              v195 += 7;
              --v197;
              ++v198;
              ++v199;
              v14 = v196++ > 8;
              if (v14)
              {
                goto LABEL_220;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v82) = 0;
            }
          }

          else
          {
            LODWORD(v82) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_328:
        *(this + 27) = v82;
        goto LABEL_297;
      case 4u:
        *(this + 164) |= 0x1000000uLL;
        v95 = *(a2 + 1);
        if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 32) = *(*a2 + v95);
        goto LABEL_296;
      case 5u:
        *(this + 164) |= 0x20000000uLL;
        v56 = *(a2 + 1);
        if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 37) = *(*a2 + v56);
        goto LABEL_296;
      case 6u:
        *(this + 164) |= 0x4000000uLL;
        v117 = *(a2 + 1);
        if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 34) = *(*a2 + v117);
        goto LABEL_296;
      case 7u:
        *(this + 164) |= 0x80000000uLL;
        v128 = *(a2 + 1);
        if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 39) = *(*a2 + v128);
        goto LABEL_296;
      case 8u:
        *(this + 164) |= 0x10000000uLL;
        v96 = *(a2 + 1);
        if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 36) = *(*a2 + v96);
        goto LABEL_296;
      case 9u:
        *(this + 164) |= 0x200000uLL;
        v140 = *(a2 + 1);
        v139 = *(a2 + 2);
        v141 = *a2;
        if (v140 <= 0xFFFFFFFFFFFFFFF5 && v140 + 10 <= v139)
        {
          v142 = 0;
          v143 = 0;
          v144 = 0;
          v145 = (v141 + v140);
          v146 = v140 + 1;
          do
          {
            *(a2 + 1) = v146;
            v147 = *v145++;
            v144 |= (v147 & 0x7F) << v142;
            if ((v147 & 0x80) == 0)
            {
              goto LABEL_349;
            }

            v142 += 7;
            ++v146;
            v14 = v143++ > 8;
          }

          while (!v14);
LABEL_278:
          LODWORD(v144) = 0;
          goto LABEL_349;
        }

        v237 = 0;
        v238 = 0;
        v144 = 0;
        v17 = v139 >= v140;
        v239 = v139 - v140;
        if (!v17)
        {
          v239 = 0;
        }

        v240 = (v141 + v140);
        v241 = v140 + 1;
        while (2)
        {
          if (v239)
          {
            v242 = *v240;
            *(a2 + 1) = v241;
            v144 |= (v242 & 0x7F) << v237;
            if (v242 < 0)
            {
              v237 += 7;
              --v239;
              ++v240;
              ++v241;
              v14 = v238++ > 8;
              if (v14)
              {
                goto LABEL_278;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v144) = 0;
            }
          }

          else
          {
            LODWORD(v144) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_349:
        *(this + 29) = v144;
        goto LABEL_297;
      case 0xAu:
        *(this + 164) |= 0x400000uLL;
        v67 = *(a2 + 1);
        v66 = *(a2 + 2);
        v68 = *a2;
        if (v67 <= 0xFFFFFFFFFFFFFFF5 && v67 + 10 <= v66)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v72 = (v68 + v67);
          v73 = v67 + 1;
          do
          {
            *(a2 + 1) = v73;
            v74 = *v72++;
            v71 |= (v74 & 0x7F) << v69;
            if ((v74 & 0x80) == 0)
            {
              goto LABEL_325;
            }

            v69 += 7;
            ++v73;
            v14 = v70++ > 8;
          }

          while (!v14);
LABEL_212:
          LODWORD(v71) = 0;
          goto LABEL_325;
        }

        v189 = 0;
        v190 = 0;
        v71 = 0;
        v17 = v66 >= v67;
        v191 = v66 - v67;
        if (!v17)
        {
          v191 = 0;
        }

        v192 = (v68 + v67);
        v193 = v67 + 1;
        while (2)
        {
          if (v191)
          {
            v194 = *v192;
            *(a2 + 1) = v193;
            v71 |= (v194 & 0x7F) << v189;
            if (v194 < 0)
            {
              v189 += 7;
              --v191;
              ++v192;
              ++v193;
              v14 = v190++ > 8;
              if (v14)
              {
                goto LABEL_212;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v71) = 0;
            }
          }

          else
          {
            LODWORD(v71) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_325:
        *(this + 30) = v71;
        goto LABEL_297;
      case 0xBu:
        *(this + 164) |= 0x10uLL;
        v131 = *(a2 + 1);
        v130 = *(a2 + 2);
        v132 = *a2;
        if (v131 <= 0xFFFFFFFFFFFFFFF5 && v131 + 10 <= v130)
        {
          v133 = 0;
          v134 = 0;
          v135 = 0;
          v136 = (v132 + v131);
          v137 = v131 + 1;
          do
          {
            *(a2 + 1) = v137;
            v138 = *v136++;
            v135 |= (v138 & 0x7F) << v133;
            if ((v138 & 0x80) == 0)
            {
              goto LABEL_346;
            }

            v133 += 7;
            ++v137;
            v14 = v134++ > 8;
          }

          while (!v14);
LABEL_270:
          v135 = 0;
          goto LABEL_346;
        }

        v231 = 0;
        v232 = 0;
        v135 = 0;
        v17 = v130 >= v131;
        v233 = v130 - v131;
        if (!v17)
        {
          v233 = 0;
        }

        v234 = (v132 + v131);
        v235 = v131 + 1;
        while (2)
        {
          if (v233)
          {
            v236 = *v234;
            *(a2 + 1) = v235;
            v135 |= (v236 & 0x7F) << v231;
            if (v236 < 0)
            {
              v231 += 7;
              --v233;
              ++v234;
              ++v235;
              v14 = v232++ > 8;
              if (v14)
              {
                goto LABEL_270;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v135 = 0;
            }
          }

          else
          {
            v135 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_346:
        *(this + 5) = v135;
        goto LABEL_297;
      case 0xCu:
        *(this + 164) |= 8uLL;
        v48 = *(a2 + 1);
        v47 = *(a2 + 2);
        v49 = *a2;
        if (v48 <= 0xFFFFFFFFFFFFFFF5 && v48 + 10 <= v47)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_319;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
LABEL_196:
          v52 = 0;
          goto LABEL_319;
        }

        v177 = 0;
        v178 = 0;
        v52 = 0;
        v17 = v47 >= v48;
        v179 = v47 - v48;
        if (!v17)
        {
          v179 = 0;
        }

        v180 = (v49 + v48);
        v181 = v48 + 1;
        while (2)
        {
          if (v179)
          {
            v182 = *v180;
            *(a2 + 1) = v181;
            v52 |= (v182 & 0x7F) << v177;
            if (v182 < 0)
            {
              v177 += 7;
              --v179;
              ++v180;
              ++v181;
              v14 = v178++ > 8;
              if (v14)
              {
                goto LABEL_196;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_319:
        *(this + 4) = v52;
        goto LABEL_297;
      case 0xDu:
        *(this + 164) |= 4uLL;
        v58 = *(a2 + 1);
        v57 = *(a2 + 2);
        v59 = *a2;
        if (v58 <= 0xFFFFFFFFFFFFFFF5 && v58 + 10 <= v57)
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = (v59 + v58);
          v64 = v58 + 1;
          do
          {
            *(a2 + 1) = v64;
            v65 = *v63++;
            v62 |= (v65 & 0x7F) << v60;
            if ((v65 & 0x80) == 0)
            {
              goto LABEL_322;
            }

            v60 += 7;
            ++v64;
            v14 = v61++ > 8;
          }

          while (!v14);
LABEL_204:
          v62 = 0;
          goto LABEL_322;
        }

        v183 = 0;
        v184 = 0;
        v62 = 0;
        v17 = v57 >= v58;
        v185 = v57 - v58;
        if (!v17)
        {
          v185 = 0;
        }

        v186 = (v59 + v58);
        v187 = v58 + 1;
        while (2)
        {
          if (v185)
          {
            v188 = *v186;
            *(a2 + 1) = v187;
            v62 |= (v188 & 0x7F) << v183;
            if (v188 < 0)
            {
              v183 += 7;
              --v185;
              ++v186;
              ++v187;
              v14 = v184++ > 8;
              if (v14)
              {
                goto LABEL_204;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v62 = 0;
            }
          }

          else
          {
            v62 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_322:
        *(this + 3) = v62;
        goto LABEL_297;
      case 0xEu:
        *(this + 164) |= 0x8000uLL;
        v120 = *(a2 + 1);
        v119 = *(a2 + 2);
        v121 = *a2;
        if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v125 = (v121 + v120);
          v126 = v120 + 1;
          do
          {
            *(a2 + 1) = v126;
            v127 = *v125++;
            v124 |= (v127 & 0x7F) << v122;
            if ((v127 & 0x80) == 0)
            {
              goto LABEL_343;
            }

            v122 += 7;
            ++v126;
            v14 = v123++ > 8;
          }

          while (!v14);
LABEL_262:
          LODWORD(v124) = 0;
          goto LABEL_343;
        }

        v225 = 0;
        v226 = 0;
        v124 = 0;
        v17 = v119 >= v120;
        v227 = v119 - v120;
        if (!v17)
        {
          v227 = 0;
        }

        v228 = (v121 + v120);
        v229 = v120 + 1;
        while (2)
        {
          if (v227)
          {
            v230 = *v228;
            *(a2 + 1) = v229;
            v124 |= (v230 & 0x7F) << v225;
            if (v230 < 0)
            {
              v225 += 7;
              --v227;
              ++v228;
              ++v229;
              v14 = v226++ > 8;
              if (v14)
              {
                goto LABEL_262;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v124) = 0;
            }
          }

          else
          {
            LODWORD(v124) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_343:
        *(this + 23) = v124;
        goto LABEL_297;
      case 0xFu:
        *(this + 164) |= 0x20000uLL;
        v46 = *(a2 + 1);
        if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 25) = *(*a2 + v46);
        goto LABEL_296;
      case 0x10u:
        *(this + 164) |= 0x10000uLL;
        v87 = *(a2 + 1);
        v86 = *(a2 + 2);
        v88 = *a2;
        if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = (v88 + v87);
          v93 = v87 + 1;
          do
          {
            *(a2 + 1) = v93;
            v94 = *v92++;
            v91 |= (v94 & 0x7F) << v89;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_331;
            }

            v89 += 7;
            ++v93;
            v14 = v90++ > 8;
          }

          while (!v14);
LABEL_228:
          LODWORD(v91) = 0;
          goto LABEL_331;
        }

        v201 = 0;
        v202 = 0;
        v91 = 0;
        v17 = v86 >= v87;
        v203 = v86 - v87;
        if (!v17)
        {
          v203 = 0;
        }

        v204 = (v88 + v87);
        v205 = v87 + 1;
        while (2)
        {
          if (v203)
          {
            v206 = *v204;
            *(a2 + 1) = v205;
            v91 |= (v206 & 0x7F) << v201;
            if (v206 < 0)
            {
              v201 += 7;
              --v203;
              ++v204;
              ++v205;
              v14 = v202++ > 8;
              if (v14)
              {
                goto LABEL_228;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v91) = 0;
            }
          }

          else
          {
            LODWORD(v91) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_331:
        *(this + 24) = v91;
        goto LABEL_297;
      case 0x11u:
        *(this + 164) |= 0x40000uLL;
        v45 = *(a2 + 1);
        if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 26) = *(*a2 + v45);
        goto LABEL_296;
      case 0x12u:
        *(this + 164) |= 0x4000uLL;
        v115 = *(a2 + 1);
        if (v115 > 0xFFFFFFFFFFFFFFFBLL || v115 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 22) = *(*a2 + v115);
        goto LABEL_296;
      case 0x13u:
        *(this + 164) |= 0x40uLL;
        v129 = *(a2 + 1);
        if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 14) = *(*a2 + v129);
        goto LABEL_296;
      case 0x14u:
        *(this + 164) |= 0x80uLL;
        v151 = *(a2 + 1);
        v150 = *(a2 + 2);
        v152 = *a2;
        if (v151 <= 0xFFFFFFFFFFFFFFF5 && v151 + 10 <= v150)
        {
          v153 = 0;
          v154 = 0;
          v155 = 0;
          v156 = (v152 + v151);
          v157 = v151 + 1;
          do
          {
            *(a2 + 1) = v157;
            v158 = *v156++;
            v155 |= (v158 & 0x7F) << v153;
            if ((v158 & 0x80) == 0)
            {
              goto LABEL_352;
            }

            v153 += 7;
            ++v157;
            v14 = v154++ > 8;
          }

          while (!v14);
LABEL_286:
          LODWORD(v155) = 0;
          goto LABEL_352;
        }

        v243 = 0;
        v244 = 0;
        v155 = 0;
        v17 = v150 >= v151;
        v245 = v150 - v151;
        if (!v17)
        {
          v245 = 0;
        }

        v246 = (v152 + v151);
        v247 = v151 + 1;
        while (2)
        {
          if (v245)
          {
            v248 = *v246;
            *(a2 + 1) = v247;
            v155 |= (v248 & 0x7F) << v243;
            if (v248 < 0)
            {
              v243 += 7;
              --v245;
              ++v246;
              ++v247;
              v14 = v244++ > 8;
              if (v14)
              {
                goto LABEL_286;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v155) = 0;
            }
          }

          else
          {
            LODWORD(v155) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_352:
        *(this + 15) = v155;
        goto LABEL_297;
      case 0x15u:
        *(this + 164) |= 0x800uLL;
        v116 = *(a2 + 1);
        if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 19) = *(*a2 + v116);
        goto LABEL_296;
      case 0x16u:
        *(this + 164) |= 0x1000uLL;
        v118 = *(a2 + 1);
        if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 20) = *(*a2 + v118);
        goto LABEL_296;
      case 0x17u:
        *(this + 164) |= 0x2000uLL;
        v149 = *(a2 + 1);
        if (v149 > 0xFFFFFFFFFFFFFFFBLL || v149 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 21) = *(*a2 + v149);
        goto LABEL_296;
      case 0x18u:
        *(this + 164) |= 0x100uLL;
        v159 = *(a2 + 1);
        if (v159 > 0xFFFFFFFFFFFFFFFBLL || v159 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 16) = *(*a2 + v159);
        goto LABEL_296;
      case 0x19u:
        *(this + 164) |= 0x200uLL;
        v76 = *(a2 + 1);
        if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 17) = *(*a2 + v76);
        goto LABEL_296;
      case 0x1Au:
        *(this + 164) |= 0x400uLL;
        v75 = *(a2 + 1);
        if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 18) = *(*a2 + v75);
        goto LABEL_296;
      case 0x1Bu:
        *(this + 164) |= 0x8000000uLL;
        v170 = *(a2 + 1);
        if (v170 > 0xFFFFFFFFFFFFFFFBLL || v170 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 35) = *(*a2 + v170);
        goto LABEL_296;
      case 0x1Cu:
        *(this + 164) |= 0x800000uLL;
        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        v38 = *a2;
        if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = (v38 + v37);
          v43 = v37 + 1;
          do
          {
            *(a2 + 1) = v43;
            v44 = *v42++;
            v41 |= (v44 & 0x7F) << v39;
            if ((v44 & 0x80) == 0)
            {
              goto LABEL_316;
            }

            v39 += 7;
            ++v43;
            v14 = v40++ > 8;
          }

          while (!v14);
LABEL_188:
          LODWORD(v41) = 0;
          goto LABEL_316;
        }

        v171 = 0;
        v172 = 0;
        v41 = 0;
        v17 = v36 >= v37;
        v173 = v36 - v37;
        if (!v17)
        {
          v173 = 0;
        }

        v174 = (v38 + v37);
        v175 = v37 + 1;
        while (2)
        {
          if (v173)
          {
            v176 = *v174;
            *(a2 + 1) = v175;
            v41 |= (v176 & 0x7F) << v171;
            if (v176 < 0)
            {
              v171 += 7;
              --v173;
              ++v174;
              ++v175;
              v14 = v172++ > 8;
              if (v14)
              {
                goto LABEL_188;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            LODWORD(v41) = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_316:
        *(this + 31) = v41;
        goto LABEL_297;
      case 0x1Du:
        *(this + 164) |= 0x20uLL;
        v161 = *(a2 + 1);
        v160 = *(a2 + 2);
        v162 = *a2;
        if (v161 <= 0xFFFFFFFFFFFFFFF5 && v161 + 10 <= v160)
        {
          v163 = 0;
          v164 = 0;
          v165 = 0;
          v166 = (v162 + v161);
          v167 = v161 + 1;
          do
          {
            *(a2 + 1) = v167;
            v168 = *v166++;
            v165 |= (v168 & 0x7F) << v163;
            if ((v168 & 0x80) == 0)
            {
              goto LABEL_355;
            }

            v163 += 7;
            ++v167;
            v14 = v164++ > 8;
          }

          while (!v14);
LABEL_294:
          v165 = 0;
          goto LABEL_355;
        }

        v249 = 0;
        v250 = 0;
        v165 = 0;
        v17 = v160 >= v161;
        v251 = v160 - v161;
        if (!v17)
        {
          v251 = 0;
        }

        v252 = (v162 + v161);
        v253 = v161 + 1;
        while (2)
        {
          if (v251)
          {
            v254 = *v252;
            *(a2 + 1) = v253;
            v165 |= (v254 & 0x7F) << v249;
            if (v254 < 0)
            {
              v249 += 7;
              --v251;
              ++v252;
              ++v253;
              v14 = v250++ > 8;
              if (v14)
              {
                goto LABEL_294;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v165 = 0;
            }
          }

          else
          {
            v165 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_355:
        *(this + 6) = v165;
        goto LABEL_297;
      case 0x1Eu:
        *(this + 164) |= 0x2000000uLL;
        v169 = *(a2 + 1);
        if (v169 > 0xFFFFFFFFFFFFFFFBLL || v169 + 4 > *(a2 + 2))
        {
          goto LABEL_178;
        }

        *(this + 33) = *(*a2 + v169);
        goto LABEL_296;
      case 0x1Fu:
        *(this + 164) |= 0x40000000uLL;
        v148 = *(a2 + 1);
        if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(a2 + 2))
        {
LABEL_178:
          *(a2 + 24) = 1;
        }

        else
        {
          *(this + 38) = *(*a2 + v148);
LABEL_296:
          *(a2 + 1) += 4;
        }

        goto LABEL_297;
      default:
        if (v22 == 201)
        {
          *(this + 164) |= 1uLL;
          v107 = *(a2 + 1);
          v106 = *(a2 + 2);
          v108 = *a2;
          if (v107 > 0xFFFFFFFFFFFFFFF5 || v107 + 10 > v106)
          {
            v213 = 0;
            v214 = 0;
            v111 = 0;
            v17 = v106 >= v107;
            v215 = v106 - v107;
            if (!v17)
            {
              v215 = 0;
            }

            v216 = (v108 + v107);
            v217 = v107 + 1;
            while (1)
            {
              if (!v215)
              {
                v111 = 0;
                *(a2 + 24) = 1;
                goto LABEL_337;
              }

              v218 = *v216;
              *(a2 + 1) = v217;
              v111 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v213 += 7;
              --v215;
              ++v216;
              ++v217;
              v14 = v214++ > 8;
              if (v14)
              {
LABEL_244:
                v111 = 0;
                goto LABEL_337;
              }
            }

            if (*(a2 + 24))
            {
              v111 = 0;
            }
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            while (1)
            {
              *(a2 + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
              if (v14)
              {
                goto LABEL_244;
              }
            }
          }

LABEL_337:
          *(this + 1) = v111;
          goto LABEL_297;
        }

        if (v22 == 202)
        {
          *(this + 164) |= 2uLL;
          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
          v29 = *a2;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v219 = 0;
            v220 = 0;
            v32 = 0;
            v17 = v27 >= v28;
            v221 = v27 - v28;
            if (!v17)
            {
              v221 = 0;
            }

            v222 = (v29 + v28);
            v223 = v28 + 1;
            while (1)
            {
              if (!v221)
              {
                v32 = 0;
                *(a2 + 24) = 1;
                goto LABEL_340;
              }

              v224 = *v222;
              *(a2 + 1) = v223;
              v32 |= (v224 & 0x7F) << v219;
              if ((v224 & 0x80) == 0)
              {
                break;
              }

              v219 += 7;
              --v221;
              ++v222;
              ++v223;
              v14 = v220++ > 8;
              if (v14)
              {
LABEL_254:
                v32 = 0;
                goto LABEL_340;
              }
            }

            if (*(a2 + 24))
            {
              v32 = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            while (1)
            {
              *(a2 + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
              if (v14)
              {
                goto LABEL_254;
              }
            }
          }

LABEL_340:
          *(this + 2) = v32;
          goto LABEL_297;
        }

        if (PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
LABEL_297:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_357;
          }

          continue;
        }

        v256 = 0;
        return v256 & 1;
    }
  }
}

uint64_t CMMsl::KappaZgResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 164);
  if ((v4 & 0x100000000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 160), 1u);
    v4 = *(v3 + 164);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 2u);
  v4 = *(v3 + 164);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::writeVarInt(a2, *(v3 + 108), 3u);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 128), 4u);
  v4 = *(v3 + 164);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 148), 5u);
  v4 = *(v3 + 164);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 136), 6u);
  v4 = *(v3 + 164);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 156), 7u);
  v4 = *(v3 + 164);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 144), 8u);
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::writeVarInt(a2, *(v3 + 116), 9u);
  v4 = *(v3 + 164);
  if ((v4 & 0x400000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 0xAu);
  v4 = *(v3 + 164);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0xBu);
  v4 = *(v3 + 164);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0xCu);
  v4 = *(v3 + 164);
  if ((v4 & 4) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0xDu);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::writeVarInt(a2, *(v3 + 92), 0xEu);
  v4 = *(v3 + 164);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 100), 0xFu);
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0x10u);
  v4 = *(v3 + 164);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 104), 0x11u);
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 88), 0x12u);
  v4 = *(v3 + 164);
  if ((v4 & 0x40) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 56), 0x13u);
  v4 = *(v3 + 164);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 0x14u);
  v4 = *(v3 + 164);
  if ((v4 & 0x800) == 0)
  {
LABEL_22:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 76), 0x15u);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_23:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 80), 0x16u);
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 84), 0x17u);
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 64), 0x18u);
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_26:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 68), 0x19u);
  v4 = *(v3 + 164);
  if ((v4 & 0x400) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 72), 0x1Au);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 140), 0x1Bu);
  v4 = *(v3 + 164);
  if ((v4 & 0x800000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::writeVarInt(a2, *(v3 + 124), 0x1Cu);
  v4 = *(v3 + 164);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0x1Du);
  v4 = *(v3 + 164);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 132), 0x1Eu);
  v4 = *(v3 + 164);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_66:
    this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0xC9u);
    if ((*(v3 + 164) & 2) == 0)
    {
      return this;
    }

    goto LABEL_67;
  }

LABEL_65:
  this = PB::Writer::write(a2, *(v3 + 152), 0x1Fu);
  v4 = *(v3 + 164);
  if (v4)
  {
    goto LABEL_66;
  }

LABEL_33:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_67:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 0xCAu);
}

uint64_t CMMsl::KappaZgResult::hash_value(CMMsl::KappaZgResult *this)
{
  v1 = *(this + 164);
  if ((v1 & 0x100000000) != 0)
  {
    v2 = *(this + 160);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x100000) != 0)
  {
    v57 = *(this + 28);
    if ((v1 & 0x80000) != 0)
    {
LABEL_6:
      v56 = *(this + 27);
      if ((v1 & 0x1000000) != 0)
      {
        goto LABEL_7;
      }

LABEL_87:
      v55 = 0;
      if ((v1 & 0x20000000) != 0)
      {
        goto LABEL_10;
      }

LABEL_88:
      v54 = 0;
      if ((v1 & 0x4000000) != 0)
      {
        goto LABEL_13;
      }

LABEL_89:
      v53 = 0;
      if ((v1 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

LABEL_90:
      v52 = 0;
      if ((v1 & 0x10000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_91:
      v12 = 0;
      if ((v1 & 0x200000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_92;
    }
  }

  else
  {
    v57 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_6;
    }
  }

  v56 = 0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_87;
  }

LABEL_7:
  v3 = *(this + 32);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v55 = v4;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_10:
  v5 = *(this + 37);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v54 = v6;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_13:
  v7 = *(this + 34);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v53 = v8;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_90;
  }

LABEL_16:
  v9 = *(this + 39);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v52 = v10;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_19:
  v11 = *(this + 36);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x200000) != 0)
  {
LABEL_23:
    v13 = *(this + 29);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_92:
  v13 = 0;
  if ((v1 & 0x400000) != 0)
  {
LABEL_24:
    v14 = *(this + 30);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_94;
  }

LABEL_93:
  v14 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_25:
    v15 = *(this + 5);
    if ((v1 & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_95;
  }

LABEL_94:
  v15 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_26:
    v16 = *(this + 4);
    if ((v1 & 4) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

LABEL_95:
  v16 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_27:
    v17 = *(this + 3);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_97;
  }

LABEL_96:
  v17 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_28:
    v18 = *(this + 23);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_29;
    }

LABEL_98:
    v20 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_99;
  }

LABEL_97:
  v18 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_98;
  }

LABEL_29:
  v19 = *(this + 25);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = LODWORD(v19);
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_33:
    v21 = *(this + 24);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_34;
    }

LABEL_100:
    v23 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_38;
    }

LABEL_101:
    v25 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_42;
    }

LABEL_102:
    v27 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_99:
  v21 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_100;
  }

LABEL_34:
  v22 = *(this + 26);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_101;
  }

LABEL_38:
  v24 = *(this + 22);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = LODWORD(v24);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_102;
  }

LABEL_42:
  v26 = *(this + 14);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = LODWORD(v26);
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_46:
    v28 = *(this + 15);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_47;
    }

LABEL_104:
    v30 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_51;
    }

LABEL_105:
    v32 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_55;
    }

LABEL_106:
    v34 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_59;
    }

LABEL_107:
    v36 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_63;
    }

LABEL_108:
    v38 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_67;
    }

LABEL_109:
    v40 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_110:
    v42 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_111;
  }

LABEL_103:
  v28 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_104;
  }

LABEL_47:
  v29 = *(this + 19);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_105;
  }

LABEL_51:
  v31 = *(this + 20);
  if (v31 == 0.0)
  {
    v32 = 0;
  }

  else
  {
    v32 = LODWORD(v31);
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_106;
  }

LABEL_55:
  v33 = *(this + 21);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  else
  {
    v34 = LODWORD(v33);
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_107;
  }

LABEL_59:
  v35 = *(this + 16);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  else
  {
    v36 = LODWORD(v35);
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_108;
  }

LABEL_63:
  v37 = *(this + 17);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  else
  {
    v38 = LODWORD(v37);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_109;
  }

LABEL_67:
  v39 = *(this + 18);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  else
  {
    v40 = LODWORD(v39);
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_110;
  }

LABEL_71:
  v41 = *(this + 35);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  else
  {
    v42 = LODWORD(v41);
  }

  if ((v1 & 0x800000) != 0)
  {
LABEL_75:
    v43 = *(this + 31);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_111:
  v43 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_76:
    v44 = *(this + 6);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_113:
    v46 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_114:
    v48 = 0;
    if (v1)
    {
      goto LABEL_83;
    }

LABEL_115:
    v49 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_84;
    }

LABEL_116:
    v50 = 0;
    return v57 ^ v2 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v30 ^ v32 ^ v34 ^ v36 ^ v38 ^ v40 ^ v42 ^ v43 ^ v44 ^ v46 ^ v48 ^ v49 ^ v50;
  }

LABEL_112:
  v44 = 0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_113;
  }

LABEL_77:
  v45 = *(this + 33);
  v46 = LODWORD(v45);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_80:
  v47 = *(this + 38);
  v48 = LODWORD(v47);
  if (v47 == 0.0)
  {
    v48 = 0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_83:
  v49 = *(this + 1);
  if ((v1 & 2) == 0)
  {
    goto LABEL_116;
  }

LABEL_84:
  v50 = *(this + 2);
  return v57 ^ v2 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v30 ^ v32 ^ v34 ^ v36 ^ v38 ^ v40 ^ v42 ^ v43 ^ v44 ^ v46 ^ v48 ^ v49 ^ v50;
}

void CMMsl::KeyboardAttached::~KeyboardAttached(CMMsl::KeyboardAttached *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KeyboardAttached::KeyboardAttached(uint64_t this, const CMMsl::KeyboardAttached *a2)
{
  *this = off_10041FCA8;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::KeyboardAttached::operator=(uint64_t a1, const CMMsl::KeyboardAttached *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardAttached::KeyboardAttached(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KeyboardAttached *a2, CMMsl::KeyboardAttached *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

double CMMsl::KeyboardAttached::KeyboardAttached(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FCA8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041FCA8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KeyboardAttached::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041FCA8;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::KeyboardAttached::formatText(CMMsl::KeyboardAttached *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "attached", *(this + 16));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KeyboardAttached::readFrom(CMMsl::KeyboardAttached *this, PB::Reader *a2)
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
            goto LABEL_38;
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
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 16) = v24;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_38:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::KeyboardAttached::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::KeyboardAttached::hash_value(CMMsl::KeyboardAttached *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

void CMMsl::KeyboardKeyPress::~KeyboardKeyPress(CMMsl::KeyboardKeyPress *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KeyboardKeyPress::KeyboardKeyPress(uint64_t this, const CMMsl::KeyboardKeyPress *a2)
{
  *this = off_10041FCE0;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::KeyboardKeyPress::operator=(uint64_t a1, const CMMsl::KeyboardKeyPress *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardKeyPress::KeyboardKeyPress(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KeyboardKeyPress *a2, CMMsl::KeyboardKeyPress *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

double CMMsl::KeyboardKeyPress::KeyboardKeyPress(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FCE0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041FCE0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KeyboardKeyPress::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041FCE0;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::KeyboardKeyPress::formatText(CMMsl::KeyboardKeyPress *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "keyPressedDown", *(this + 16));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KeyboardKeyPress::readFrom(CMMsl::KeyboardKeyPress *this, PB::Reader *a2)
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
            goto LABEL_38;
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
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 16) = v24;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_38:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::KeyboardKeyPress::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::KeyboardKeyPress::hash_value(CMMsl::KeyboardKeyPress *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

void CMMsl::KeyboardMotionFeatures::~KeyboardMotionFeatures(CMMsl::KeyboardMotionFeatures *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(CMMsl::KeyboardMotionFeatures *this, const CMMsl::KeyboardMotionFeatures *a2)
{
  *this = off_10041FD18;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 5) = v4;
    if ((*(a2 + 28) & 8) == 0)
    {
      return *&v4;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return *&v4;
  }

  LODWORD(v4) = *(a2 + 6);
  *(this + 28) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::KeyboardMotionFeatures::operator=(uint64_t a1, const CMMsl::KeyboardMotionFeatures *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(&v9, a2);
    v3 = v11;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    v6 = *(a1 + 28);
    *(a1 + 28) = v13;
    v13 = v6;
    v10 = v4;
    v11 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KeyboardMotionFeatures *a2, CMMsl::KeyboardMotionFeatures *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::KeyboardMotionFeatures::KeyboardMotionFeatures(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FD18;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = off_10041FD18;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::KeyboardMotionFeatures::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v7;
    v9[0] = off_10041FD18;
    v11 = *(a1 + 28);
    *(a1 + 28) = v3;
    v9[1] = v5;
    v9[2] = v6;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::KeyboardMotionFeatures::formatText(CMMsl::KeyboardMotionFeatures *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accelFilterX", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelFilterY", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "accelFilterZ", *(this + 6));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KeyboardMotionFeatures::readFrom(CMMsl::KeyboardMotionFeatures *this, PB::Reader *a2)
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
            goto LABEL_48;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 28) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_40:
            *(a2 + 24) = 1;
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_42:
          v2 = *(a2 + 1) + 4;
LABEL_43:
          *(a2 + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_40;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_44:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::KeyboardMotionFeatures::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 20), 3u);
      if ((*(v3 + 28) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 4u);
}

uint64_t CMMsl::KeyboardMotionFeatures::hash_value(CMMsl::KeyboardMotionFeatures *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 4) != 0)
  {
LABEL_6:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7;
}

void CMMsl::KeyboardMotionState::~KeyboardMotionState(CMMsl::KeyboardMotionState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KeyboardMotionState::KeyboardMotionState(uint64_t this, const CMMsl::KeyboardMotionState *a2)
{
  *this = off_10041FD50;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::KeyboardMotionState *CMMsl::KeyboardMotionState::operator=(const CMMsl::KeyboardMotionState *a1, const CMMsl::KeyboardMotionState *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardMotionState::KeyboardMotionState(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KeyboardMotionState *a2, CMMsl::KeyboardMotionState *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::KeyboardMotionState::KeyboardMotionState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FD50;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041FD50;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KeyboardMotionState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_10041FD50;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::KeyboardMotionState::formatText(CMMsl::KeyboardMotionState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "state", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KeyboardMotionState::readFrom(CMMsl::KeyboardMotionState *this, PB::Reader *a2)
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
              LODWORD(v27) = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
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

uint64_t CMMsl::KeyboardMotionState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

uint64_t CMMsl::KeyboardMotionState::hash_value(CMMsl::KeyboardMotionState *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

void CMMsl::KeyboardMotionTrackpad::~KeyboardMotionTrackpad(CMMsl::KeyboardMotionTrackpad *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(uint64_t this, const CMMsl::KeyboardMotionTrackpad *a2)
{
  *this = off_10041FD88;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::KeyboardMotionTrackpad::operator=(uint64_t a1, const CMMsl::KeyboardMotionTrackpad *a2)
{
  if (a1 != a2)
  {
    CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KeyboardMotionTrackpad *a2, CMMsl::KeyboardMotionTrackpad *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

double CMMsl::KeyboardMotionTrackpad::KeyboardMotionTrackpad(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041FD88;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041FD88;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::KeyboardMotionTrackpad::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041FD88;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::KeyboardMotionTrackpad::formatText(CMMsl::KeyboardMotionTrackpad *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "touchActive", *(this + 16));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KeyboardMotionTrackpad::readFrom(CMMsl::KeyboardMotionTrackpad *this, PB::Reader *a2)
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
            goto LABEL_38;
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
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 16) = v24;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_38:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::KeyboardMotionTrackpad::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}