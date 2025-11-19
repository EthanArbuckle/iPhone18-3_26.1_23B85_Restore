uint64_t ClientLayoutRepresentation.headline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline + 8);

  return v1;
}

uint64_t ClientLayoutRepresentation.accessibilityHeadline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline + 8);

  return v1;
}

uint64_t ClientLayoutRepresentation.adCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy + 8);

  return v1;
}

uint64_t ClientLayoutRepresentation.accessibilityAdCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy + 8);

  return v1;
}

uint64_t ClientLayoutRepresentation.sponsoredBy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy + 8);

  return v1;
}

uint64_t ClientLayoutRepresentation.button.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button);
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8);
  v4 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16);
  v5 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24);
  v6 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1C1B08A14(v2, v3, v4);
}

uint64_t ClientLayoutRepresentation.targetingDimensions.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions);
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C1B08B68(v2);
}

uint64_t ClientLayoutRepresentation.style.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style);
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C1B08B68(v2);
}

uint64_t ClientLayoutRepresentation.journeyRelayCampaignID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);

  return v1;
}

unint64_t sub_1C1B41084(char a1)
{
  result = 0x656E696C64616568;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x79706F436461;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x65726F736E6F7073;
      break;
    case 5:
      result = 0x73746E656D656C65;
      break;
    case 6:
      result = 0x74616D726F466461;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0x6E6F74747562;
      break;
    case 11:
      result = 0x52556E6F69746361;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x656C797473;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1B4125C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1B41084(*a1);
  v5 = v4;
  if (v3 == sub_1C1B41084(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B412E4()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B41084(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B41348()
{
  sub_1C1B41084(*v0);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B4139C()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B41084(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B413FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B432F4();
  *a2 = result;
  return result;
}

unint64_t sub_1C1B4142C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1B41084(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1B41474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B432F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B414A8(uint64_t a1)
{
  v2 = sub_1C1B422E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B414E4(uint64_t a1)
{
  v2 = sub_1C1B422E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutRepresentation.init(from:)(uint64_t *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v77 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v77 - v13;
  v80 = sub_1C1AC1F08(&qword_1EBF09338, &qword_1C1BA10E8);
  v15 = *(v80 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v18 = &v77 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v81 = a1;
  sub_1C1AAABE0(a1, v19);
  sub_1C1B422E0();
  v79 = v18;
  v21 = v82;
  sub_1C1B95A08();
  if (!v21)
  {
    *(&v78 + 1) = v15;
    LOBYTE(v84[0]) = 0;
    v22 = v79;
    v23 = v80;
    v24 = sub_1C1B95638();
    v29 = v83;
    v30 = (v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
    *v30 = v24;
    v30[1] = v31;
    LOBYTE(v84[0]) = 1;
    v32 = sub_1C1B95638();
    v33 = *(&v78 + 1);
    v34 = (v29 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline);
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v84[0]) = 2;
    v77 = 0;
    v36 = sub_1C1B95638();
    v37 = (v29 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy);
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v84[0]) = 3;
    v39 = sub_1C1B95638();
    v40 = (v29 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy);
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v84[0]) = 4;
    v42 = sub_1C1B95638();
    v82 = 0;
    v44 = (v29 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy);
    *v44 = v42;
    v44[1] = v43;
    sub_1C1AC1F08(&qword_1EBF09340, &qword_1C1BA10F0);
    v87 = 5;
    sub_1C1B42AFC(&qword_1EDE6A6A8, &qword_1EDE6AE78);
    v45 = v82;
    sub_1C1B95678();
    if (v45)
    {
      v82 = v45;
      (*(v33 + 8))(v22, v23);
      v6 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *&v78 = 0;
      v86 = 0;
      DWORD2(v78) = 0;
      LODWORD(v79) = 0;
      LODWORD(v80) = 0;
    }

    else
    {
      *(v29 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements) = *&v84[0];
      LOBYTE(v84[0]) = 6;
      v49 = sub_1C1B956D8();
      v82 = 0;
      *(v29 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adFormatType) = v49;
      sub_1C1B944A8();
      LOBYTE(v84[0]) = 7;
      sub_1C1B42B98(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0]);
      v50 = v82;
      sub_1C1B95678();
      v82 = v50;
      if (v50)
      {
        (*(v33 + 8))(v22, v23);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *&v78 = 0;
        v86 = 0;
        DWORD2(v78) = 0;
        LODWORD(v79) = 0;
        LODWORD(v80) = 0;
        v6 = 1;
      }

      else
      {
        sub_1C1AEF258(v14, v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL);
        LOBYTE(v84[0]) = 8;
        v65 = v82;
        sub_1C1B95678();
        v82 = v65;
        if (v65)
        {
          (*(v33 + 8))(v22, v23);
          v47 = 0;
          v48 = 0;
          *&v78 = 0;
          v86 = 0;
          DWORD2(v78) = 0;
          LODWORD(v79) = 0;
          LODWORD(v80) = 0;
          v6 = 1;
          v46 = 1;
        }

        else
        {
          sub_1C1AEF258(v12, v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL);
          LOBYTE(v84[0]) = 9;
          v66 = v82;
          sub_1C1B95678();
          v82 = v66;
          if (v66)
          {
            (*(*(&v78 + 1) + 8))(v79, v80);
            v48 = 0;
            *&v78 = 0;
            v86 = 0;
            DWORD2(v78) = 0;
            LODWORD(v79) = 0;
            LODWORD(v80) = 0;
            v6 = 1;
            v46 = 1;
            v47 = 1;
          }

          else
          {
            sub_1C1AEF258(v9, v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL);
            v87 = 10;
            sub_1C1B0989C();
            v67 = v82;
            sub_1C1B95678();
            v82 = v67;
            if (v67)
            {
              (*(*(&v78 + 1) + 8))(v79, v80);
              *&v78 = 0;
              v86 = 0;
              DWORD2(v78) = 0;
              LODWORD(v79) = 0;
              LODWORD(v80) = 0;
              v6 = 1;
              v46 = 1;
              v47 = 1;
              v48 = 1;
            }

            else
            {
              v68 = v85;
              v69 = v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button;
              v70 = v84[1];
              *v69 = v84[0];
              *(v69 + 1) = v70;
              *(v69 + 4) = v68;
              LOBYTE(v84[0]) = 11;
              sub_1C1B95678();
              v82 = 0;
              sub_1C1AEF258(v6, v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL);
              v87 = 13;
              sub_1C1B42380();
              v71 = v82;
              sub_1C1B95678();
              v82 = v71;
              if (v71)
              {
                (*(*(&v78 + 1) + 8))(v79, v80);
                v86 = 0;
                LODWORD(v79) = 0;
                LODWORD(v80) = 0;
                v6 = 1;
                v46 = 1;
                v47 = 1;
                v48 = 1;
                LODWORD(v78) = 1;
                *(&v78 + 4) = 1;
              }

              else
              {
                *(v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines) = *&v84[0];
                v87 = 14;
                sub_1C1B423D4();
                v72 = v82;
                sub_1C1B95678();
                v82 = v72;
                if (v72)
                {
                  (*(*(&v78 + 1) + 8))(v79, v80);
                  LODWORD(v79) = 0;
                  LODWORD(v80) = 0;
                  v6 = 1;
                  v46 = 1;
                  v47 = 1;
                  v48 = 1;
                  LODWORD(v78) = 1;
                  *(&v78 + 4) = 1;
                  v86 = 1;
                }

                else
                {
                  *(v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions) = v84[0];
                  v87 = 15;
                  sub_1C1B09938();
                  v73 = v82;
                  sub_1C1B95678();
                  v82 = v73;
                  if (!v73)
                  {
                    *(v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style) = v84[0];
                    LOBYTE(v84[0]) = 16;
                    v74 = sub_1C1B95638();
                    v82 = 0;
                    v75 = (v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
                    *v75 = v74;
                    v75[1] = v76;
                    sub_1C1B95628();
                    v82 = 0;
                    v6 = ContentRepresentation.init(from:)(v84);
                    (*(*(&v78 + 1) + 8))(v79, v80);
                    sub_1C1AA86F8(v81);
                    v82 = 0;
                    return v6;
                  }

                  (*(*(&v78 + 1) + 8))(v79, v80);
                  LODWORD(v79) = 0;
                  LODWORD(v80) = 0;
                  v6 = 1;
                  v46 = 1;
                  v47 = 1;
                  v48 = 1;
                  *&v78 = 0x100000001;
                  v86 = 1;
                  DWORD2(v78) = 1;
                }
              }
            }
          }
        }
      }
    }

    v51 = v77;
    sub_1C1AA86F8(v81);
    v52 = v83;
    v53 = *(v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline + 8);

    if (!v51)
    {
      v57 = *(v52 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline + 8);
    }

    v25 = v83;
    v54 = *(v83 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy + 8);

    v58 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy + 8);

    v55 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy + 8);

    if (v6)
    {
      v59 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements);

      if (v46)
      {
LABEL_14:
        sub_1C1AC54A0(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL);
        if ((v47 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }

    else if (v46)
    {
      goto LABEL_14;
    }

    if (!v47)
    {
LABEL_15:
      if (v48)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_1C1AC54A0(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL);
    if (v48)
    {
LABEL_16:
      sub_1C1AC54A0(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }

LABEL_26:
    if (!v78)
    {
LABEL_17:
      if (DWORD1(v78))
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

LABEL_27:
    v60 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24);
    v61 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32);
    sub_1C1B091A0(*(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button), *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8), *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16));
    if (BYTE4(v78))
    {
LABEL_18:
      sub_1C1AC54A0(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL);
      if ((v86 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!v86)
    {
LABEL_19:
      if (DWORD2(v78))
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }

LABEL_29:
    v62 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines);

    if (BYTE8(v78))
    {
LABEL_20:
      v56 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
      sub_1C1B0923C(*(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions));
      if ((v79 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

LABEL_30:
    if (!v79)
    {
LABEL_21:
      if (!v80)
      {
        goto LABEL_4;
      }

LABEL_32:
      v64 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);

      goto LABEL_4;
    }

LABEL_31:
    v63 = *(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8);
    sub_1C1B0923C(*(v25 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style));
    if ((v80 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v82 = v21;
  v25 = v83;
  sub_1C1AA86F8(v81);
LABEL_4:
  type metadata accessor for ClientLayoutRepresentation();
  v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x30);
  v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

unint64_t sub_1C1B422E0()
{
  result = qword_1EDE6A910;
  if (!qword_1EDE6A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A910);
  }

  return result;
}

uint64_t type metadata accessor for ClientLayoutRepresentation()
{
  result = qword_1EDE6BE78;
  if (!qword_1EDE6BE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B42380()
{
  result = qword_1EDE6B018;
  if (!qword_1EDE6B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B018);
  }

  return result;
}

unint64_t sub_1C1B423D4()
{
  result = qword_1EDE6ADA8;
  if (!qword_1EDE6ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADA8);
  }

  return result;
}

uint64_t sub_1C1B42428(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09348, &unk_1C1BA10F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B422E0();
  sub_1C1B95A18();
  v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
  v25 = 0;
  sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
  sub_1C1AC344C();
  sub_1C1B95808();
  if (!v2)
  {
    v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline);
    v25 = 1;
    sub_1C1B95808();
    v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy);
    v25 = 2;
    sub_1C1B95808();
    v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy);
    v25 = 3;
    sub_1C1B95808();
    v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy);
    v25 = 4;
    sub_1C1B95808();
    *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements);
    v25 = 5;
    sub_1C1AC1F08(&qword_1EBF09350, &qword_1C1BA1108);
    sub_1C1B42A40();
    sub_1C1B95808();
    v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adFormatType);
    LOBYTE(v21) = 6;
    sub_1C1B957E8();
    LOBYTE(v21) = 7;
    sub_1C1B944A8();
    sub_1C1B42B98(&unk_1EDE6C3B0, MEMORY[0x1E6968FB0]);
    sub_1C1B95788();
    LOBYTE(v21) = 9;
    sub_1C1B95788();
    LOBYTE(v21) = 8;
    sub_1C1B95788();
    v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8);
    v13 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16);
    v14 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24);
    v15 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32);
    *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button);
    *(&v21 + 1) = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = 10;
    sub_1C1B08A14(v21, v12, v13);
    sub_1C1B0914C();
    sub_1C1B95788();
    sub_1C1B091A0(v21, *(&v21 + 1), v22);
    LOBYTE(v21) = 11;
    sub_1C1B95788();
    *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines);
    v25 = 13;
    sub_1C1B42BE0();

    sub_1C1B95788();

    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
    *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions);
    *(&v21 + 1) = v16;
    v25 = 14;
    sub_1C1B08B68(v21);
    sub_1C1B42C34();
    sub_1C1B95788();
    sub_1C1B0923C(v21);
    v17 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8);
    *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style);
    *(&v21 + 1) = v17;
    v25 = 15;
    sub_1C1B08B68(v21);
    sub_1C1B091E8();
    sub_1C1B95788();
    sub_1C1B0923C(v21);
    v18 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
    v19 = *(v3 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);
    LOBYTE(v21) = 16;
    sub_1C1B95748();
    sub_1C1B95738();
    sub_1C1B4FA4C(&v21);
    sub_1C1AA86F8(&v21);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B42A40()
{
  result = qword_1EDE6A6A0;
  if (!qword_1EDE6A6A0)
  {
    sub_1C1AC3404(&qword_1EBF09350, &qword_1C1BA1108);
    sub_1C1B42AFC(&unk_1EDE6A6B0, qword_1EDE6AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A6A0);
  }

  return result;
}

uint64_t sub_1C1B42AFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09340, &qword_1C1BA10F0);
    sub_1C1B42B98(a2, type metadata accessor for ClientLayoutElement);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B42B98(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B42BE0()
{
  result = qword_1EDE6B020;
  if (!qword_1EDE6B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B020);
  }

  return result;
}

unint64_t sub_1C1B42C34()
{
  result = qword_1EDE6ADB0;
  if (!qword_1EDE6ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADB0);
  }

  return result;
}

uint64_t sub_1C1B42CE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline + 8);

  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline + 8);

  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy + 8);

  v4 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy + 8);

  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy + 8);

  v6 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements);

  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL);
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL);
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL);
  v7 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 24);
  v8 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 32);
  sub_1C1B091A0(*(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 8), *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button + 16));
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL);
  v9 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines);

  v10 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
  sub_1C1B0923C(*(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions));
  v11 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style + 8);
  sub_1C1B0923C(*(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style));
  v12 = *(v0 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);
}

id ClientLayoutRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLayoutRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1B42FAC()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ClientLayoutRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientLayoutRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B431F0()
{
  result = qword_1EBF09358;
  if (!qword_1EBF09358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09358);
  }

  return result;
}

unint64_t sub_1C1B43248()
{
  result = qword_1EDE6A900;
  if (!qword_1EDE6A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A900);
  }

  return result;
}

unint64_t sub_1C1B432A0()
{
  result = qword_1EDE6A908;
  if (!qword_1EDE6A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A908);
  }

  return result;
}

uint64_t sub_1C1B432F4()
{
  v0 = sub_1C1B958A8();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

void *ContentPipelineBuilder.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void *ContentPipelineBuilder.init()()
{
  result = v0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  return result;
}

uint64_t sub_1C1B433B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v3[3] = a3;
  v3[4] = sub_1C1B4456C;
  v3[5] = v7;

  sub_1C1B43454(v8);
}

uint64_t sub_1C1B43454(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1B43464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  swift_beginAccess();
  v10 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1C1ACE4E8(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1C1ACE4E8((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = sub_1C1B4454C;
  *(v14 + 7) = v9;
  *(v4 + 16) = v10;
  swift_endAccess();
}

uint64_t sub_1C1B435A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  if (v4)
  {
    v5 = v3;
    v6 = v2[5];
    v30 = v2[4];

    v30(v34);
    swift_beginAccess();
    v7 = v2[2];
    v8 = *(v7 + 16);

    if (v8)
    {
      v9 = v7 + 32 * v8 + 16;
      v10 = v4;
      while (v8 <= *(v7 + 16))
      {
        v11 = *(v9 - 16);
        v12 = *(v9 - 8);
        v13 = *v9;
        v14 = *(v9 + 8);

        sub_1C1B43AA4(v34, v10, v11, v13, &v32);
        sub_1C1AA86F8(v34);
        if (v5)
        {

          sub_1C1B43454(v4);
        }

        --v8;
        sub_1C1AC0580(&v32, v34);

        v9 -= 32;
        v10 = v12;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      sub_1C1AAD2FC(v34, &v32);
      sub_1C1AC1F08(&qword_1EBF09360, &unk_1C1BA12F8);
      v34[17] = a1;
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        sub_1C1AA86F8(v34);
        sub_1C1B43454(v4);
        return sub_1C1AC0580(&v31, a2);
      }
    }

    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 16) = xmmword_1C1B98E60;
    *(inited + 40) = 0xE700000000000000;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1C1B95468();
    v31 = v32;
    MEMORY[0x1C6906DF0](0xD000000000000032, 0x80000001C1BAB040);
    v22 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v22);

    MEMORY[0x1C6906DF0](0x6F6720747562202CLL, 0xEA00000000002074);
    sub_1C1AAD2FC(v34, &v32);
    sub_1C1AAABE0(&v32, v33);
    swift_getDynamicType();
    sub_1C1AA86F8(&v32);
    v23 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v23);

    v24 = v31;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v24;
    sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &qword_1EBF08340, &qword_1C1B9AF70);
    v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v26 = sub_1C1B94D78();
    v27 = sub_1C1B94CA8();

    [v25 initWithDomain:v26 code:2 userInfo:v27];

    swift_willThrow();
    sub_1C1B43454(v4);
    return sub_1C1AA86F8(v34);
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1C1B98E60;
    *(v16 + 32) = 0x6567617373656DLL;
    v17 = v16 + 32;
    *(v16 + 72) = MEMORY[0x1E69E6158];
    *(v16 + 40) = 0xE700000000000000;
    *(v16 + 48) = 0xD000000000000038;
    *(v16 + 56) = 0x80000001C1BAB000;
    sub_1C1AA7D00(v16);
    swift_setDeallocating();
    sub_1C1AA7C8C(v17, &qword_1EBF08340, &qword_1C1B9AF70);
    v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v19 = sub_1C1B94D78();
    v20 = sub_1C1B94CA8();

    [v18 initWithDomain:v19 code:1 userInfo:v20];

    return swift_willThrow();
  }
}

uint64_t sub_1C1B43AA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, __int128 *)@<X4>, uint64_t a5@<X8>)
{
  if (a3 != a2)
  {
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 16) = xmmword_1C1B98E60;
    *(inited + 40) = 0xE700000000000000;
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1C1B95468();
    MEMORY[0x1C6906DF0](0xD00000000000003DLL, 0x80000001C1BAB0F0);
    v7 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v7);

    MEMORY[0x1C6906DF0](0x20746F67202CLL, 0xE600000000000000);
    v8 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v8);

    MEMORY[0x1C6906DF0](46, 0xE100000000000000);
    v9 = v25;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v9;
    sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &qword_1EBF08340, &qword_1C1B9AF70);
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v11 = sub_1C1B94D78();
    v12 = sub_1C1B94CA8();

    [v10 initWithDomain:v11 code:2 userInfo:v12];

    return swift_willThrow();
  }

  v16 = a1[3];
  v17 = sub_1C1AAABE0(a1, v16);
  *(&v26 + 1) = v16;
  v18 = sub_1C1AB0D60(&v25);
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  a4(v28, &v25);
  result = sub_1C1AA86F8(&v25);
  if (!v5)
  {
    sub_1C1AC1F08(&qword_1EBF09360, &unk_1C1BA12F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_1C1AA7C8C(&v25, &qword_1EBF09368, &qword_1C1BA1398);
      sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
      v19 = swift_initStackObject();
      *(v19 + 32) = 0x6567617373656DLL;
      *(v19 + 16) = xmmword_1C1B98E60;
      *(v19 + 40) = 0xE700000000000000;
      *&v25 = 0;
      *(&v25 + 1) = 0xE000000000000000;
      sub_1C1B95468();
      MEMORY[0x1C6906DF0](0xD00000000000004ALL, 0x80000001C1BAB130);
      v20 = sub_1C1B95A48();
      MEMORY[0x1C6906DF0](v20);

      MEMORY[0x1C6906DF0](11838, 0xE200000000000000);
      v21 = v25;
      *(v19 + 72) = MEMORY[0x1E69E6158];
      *(v19 + 48) = v21;
      sub_1C1AA7D00(v19);
      swift_setDeallocating();
      sub_1C1AA7C8C(v19 + 32, &qword_1EBF08340, &qword_1C1B9AF70);
      v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v23 = sub_1C1B94D78();
      v24 = sub_1C1B94CA8();

      [v22 initWithDomain:v23 code:4 userInfo:v24];

      return swift_willThrow();
    }

    return sub_1C1AC0580(&v25, a5);
  }

  return result;
}

void *ContentPipelineBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  sub_1C1B43454(v0[3]);
  return v0;
}

uint64_t ContentPipelineBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  sub_1C1B43454(v0[3]);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C1B43F90@<X0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  sub_1C1AAA7B8(a1, v22);
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_1C1AC0580(&v20, &v23);
    a2(&v20, &v23);
    if (v3)
    {
      v7 = &v23;
    }

    else
    {
      v17 = v21;
      v18 = sub_1C1AAABE0(&v20, v21);
      a3[3] = v17;
      v19 = sub_1C1AB0D60(a3);
      (*(*(v17 - 8) + 16))(v19, v18, v17);
      sub_1C1AA86F8(&v23);
      v7 = &v20;
    }

    return sub_1C1AA86F8(v7);
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 16) = xmmword_1C1B98E60;
    *(inited + 40) = 0xE700000000000000;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C1B95468();
    MEMORY[0x1C6906DF0](0xD000000000000045, 0x80000001C1BAB180);
    v9 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v9);

    MEMORY[0x1C6906DF0](0x20746F67202C3ELL, 0xE700000000000000);
    sub_1C1AAABE0(a1, a1[3]);
    swift_getDynamicType();
    v10 = sub_1C1B95A48();
    MEMORY[0x1C6906DF0](v10);

    v11 = v23;
    v12 = v24;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &qword_1EBF08340, &qword_1C1B9AF70);
    v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v14 = sub_1C1B94D78();
    v15 = sub_1C1B94CA8();

    [v13 initWithDomain:v14 code:1 userInfo:v15];

    return swift_willThrow();
  }
}

uint64_t sub_1C1B44280@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = sub_1C1AAABE0(v8, v9);
  *(a2 + 24) = v7;
  v5 = sub_1C1AB0D60(a2);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  return sub_1C1AA86F8(v8);
}

__n128 initializeBufferWithCopyOfBuffer for ContentProviderPluginSettings(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C1B4441C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1B44464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1B444B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1B444FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1B4454C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1C1B43F90(a1, *(v2 + 32), a2);
}

uint64_t sub_1C1B4456C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1C1B44280(*(v1 + 24), a1);
}

uint64_t LegacyCapInstance.frequencyCapIdentifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1C6906DF0](124, 0xE100000000000000);
  MEMORY[0x1C6906DF0](v1, v2);
  return v4;
}

uint64_t LegacyCapInstance.adamId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LegacyCapInstance.metadata.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C1B44658()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1C6906DF0](124, 0xE100000000000000);
  MEMORY[0x1C6906DF0](v1, v2);
  return v4;
}

__n128 sub_1C1B446EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1B44700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1B44748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1C1B447A0(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 maxSize];
  v8 = v7;
  v10 = v9;
  type metadata accessor for NewsSupplementalContext();
  v11 = a1;
  v12 = NewsSupplementalContext.__allocating_init(_:)(v11);
  v13 = [v11 identifier];
  sub_1C1B945D8();

  v14 = [v11 requestedAdIdentifier];
  v15 = sub_1C1B94D88();
  v17 = v16;

  v18 = objc_allocWithZone(type metadata accessor for Context());
  v19 = Context.init(maxSize:requestedAd:current:next:)(v15, v17, 0, MEMORY[0x1E69E7CC0], v8, v10);

  v20 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v21 = *(v3 + 40);
  v22 = v19;
  v21(&v19[v20], v6, v2);
  swift_endAccess();

  v23 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v24 = *&v22[v23];
  *&v22[v23] = v12;

  return v22;
}

uint64_t sub_1C1B449D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001C1BAB1D0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BAB1F0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C1B44ABC(uint64_t a1)
{
  v2 = sub_1C1B44CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B44AF8(uint64_t a1)
{
  v2 = sub_1C1B44CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TargetingDimensions.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF09370, &qword_1C1BA1420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B44CF4();

  sub_1C1B95A18();
  v14 = v9;
  v13 = 0;
  sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  sub_1C1AE4A54();
  sub_1C1B95808();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1C1B95808();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C1B44CF4()
{
  result = qword_1EDE6ADC8[0];
  if (!qword_1EDE6ADC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6ADC8);
  }

  return result;
}

uint64_t TargetingDimensions.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF09378, &qword_1C1BA1428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B44CF4();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v15 = a2;
  sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  v16 = 0;
  sub_1C1AE47EC();
  sub_1C1B956F8();
  v11 = v17;
  v16 = 1;
  sub_1C1B956F8();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  sub_1C1AA86F8(a1);
}

unint64_t sub_1C1B44FBC()
{
  result = qword_1EBF09380;
  if (!qword_1EBF09380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09380);
  }

  return result;
}

unint64_t sub_1C1B45014()
{
  result = qword_1EDE6ADB8;
  if (!qword_1EDE6ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADB8);
  }

  return result;
}

unint64_t sub_1C1B4506C()
{
  result = qword_1EDE6ADC0;
  if (!qword_1EDE6ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADC0);
  }

  return result;
}

void *AdRequestManager.__allocating_init()()
{
  v1 = [objc_opt_self() sharedCoordinator];
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  v4 = swift_allocObject();
  v4[3] = MEMORY[0x1E69E7CD0];
  v4[4] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1B945E8();
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
  v4[2] = v1;
  v5 = v1;
  v6 = sub_1C1B945B8();
  [v5 beginSessionForID_];

  return v4;
}

void sub_1C1B451A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t AdRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B452C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = a2(a1, v2, ObjectType);
  swift_unknownObjectRelease();
  return v6;
}

void AdRequestManager.deinit()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + 32) lock];
  swift_beginAccess();
  v32 = *(v0 + 24);
  if ((v32 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C1B95368();
    type metadata accessor for AdResponseBlock(0);
    sub_1C1B478A0();
    sub_1C1B95088();
    v6 = v38;
    v5 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
  }

  else
  {
    v10 = -1 << *(v32 + 32);
    v5 = v32 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v32 + 56);
    v6 = v32;
    swift_bridgeObjectRetain_n();
    v8 = 0;
  }

  v31[1] = v7;
  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_1C1B478F8();

      v22 = *(v1 + 16);
      v23 = OBJC_IVAR____TtC15PromotedContent16AdRequestManager_requesterID;
      v25 = v33;
      v24 = v34;
      v26 = v35;
      (*(v34 + 16))(v33, v1 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_requesterID, v35);
      swift_unknownObjectRetain();
      v27 = sub_1C1B945B8();
      v28 = *(v24 + 8);
      v28(v25, v26);
      [v22 finishedWithRequestsForID_];
      swift_unknownObjectRelease();

      [*(v1 + 32) unlock];
      v29 = *(v1 + 16);
      swift_unknownObjectRelease();
      v30 = *(v1 + 24);

      v28((v1 + v23), v26);
      return;
    }

    while (1)
    {
      v20 = *(v1 + 16);
      v21 = sub_1C1B945B8();
      [v20 finishedWithRequestsForID_];

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_1C1B953D8();
      if (v19)
      {
        v36 = v19;
        type metadata accessor for AdResponseBlock(0);
        swift_dynamicCast();
        v18 = v37;
        v16 = v8;
        v17 = v9;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t AdRequestManager.__deallocating_deinit()
{
  AdRequestManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AdRequestManager.fetchAds(with:placementTypes:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B45784;

  return sub_1C1B45AF8(a1, a2, 0);
}

uint64_t sub_1C1B45784(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B458B8, 0, 0);
  }
}

uint64_t sub_1C1B458B8()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1C1B95518();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v0 + 40);
    v6 = *(v0 + 56) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6907490](v4, *(v0 + 56));
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = *(v0 + 40);
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v5);
      sub_1C1B954F8();
      v10 = *(v21 + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v2 != v4);
    v11 = *(v0 + 56);

    v12 = v21;
    if (v21 >> 62)
    {
      while (1)
      {
        v13 = sub_1C1B953A8();
        if (!v13)
        {
          break;
        }

LABEL_11:
        v14 = 0;
        v1 = v12 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v15 = MEMORY[0x1C6907490](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
          swift_beginAccess();
          [*&v16[v18] delivered];

          ++v14;
          if (v17 == v13)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = sub_1C1B953A8();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_22:
        v19 = *(v0 + 56);

        v12 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    v20 = *(v0 + 8);

    return v20(v12);
  }

  return result;
}

uint64_t sub_1C1B45AF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 80) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B45B20, 0, 0);
}

uint64_t sub_1C1B45B20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v9 = *(v0 + 24);
  swift_weakInit();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_1C1AC1F08(&qword_1EBF09470, qword_1C1B98EF8);
  *v6 = v0;
  v6[1] = sub_1C1B45C70;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000003ALL, 0x80000001C1BAB340, sub_1C1B47E00, v4, v7);
}

uint64_t sub_1C1B45C70()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1C1B45DB0;
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);

    v4 = sub_1C1B45D94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1B45DB0()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t AdRequestManager.fetchAdBatch(of:with:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B45E40, 0, 0);
}

uint64_t sub_1C1B45E40()
{
  v1 = v0[10];
  sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = xmmword_1C1B98E60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1C1B45F14;
  v4 = v0[11];
  v5 = v0[12];

  return sub_1C1B45AF8(v4, inited, 1);
}

uint64_t sub_1C1B45F14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_1C1B46270;
  }

  else
  {
    v6 = v3[13];
    swift_setDeallocating();
    v5 = sub_1C1B46030;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1B46030()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1C1B95518();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 120) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6907490](v4, *(v0 + 120));
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = *(v0 + 88);
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v5);
      sub_1C1B954F8();
      v10 = *(v21 + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v2 != v4);
    v11 = *(v0 + 120);

    v12 = v21;
    if (v21 >> 62)
    {
      while (1)
      {
        v13 = sub_1C1B953A8();
        if (!v13)
        {
          break;
        }

LABEL_11:
        v14 = 0;
        v1 = v12 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v15 = MEMORY[0x1C6907490](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
          swift_beginAccess();
          [*&v16[v18] delivered];

          ++v14;
          if (v17 == v13)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = sub_1C1B953A8();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_22:
        v19 = *(v0 + 120);

        v12 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    v20 = *(v0 + 8);

    return v20(v12);
  }

  return result;
}

uint64_t sub_1C1B46270()
{
  v1 = v0[13];
  swift_setDeallocating();
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t AdRequestManager.fetchRawAdBatch(with:placementType:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B462F8, 0, 0);
}

uint64_t sub_1C1B462F8()
{
  v1 = v0[8];
  sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_1C1B98E60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C1B463D0;
  v4 = v0[9];
  v5 = v0[7];

  return sub_1C1B45AF8(v5, inited, 1);
}

uint64_t sub_1C1B463D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B46528, 0, 0);
  }

  else
  {
    v7 = *(v4 + 80);
    swift_setDeallocating();
    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1C1B46528()
{
  v1 = v0[10];
  swift_setDeallocating();
  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1C1B4658C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B47F28;

  return AdRequestManager.fetchAds(with:placementTypes:)(a1, a2);
}

uint64_t sub_1C1B46634(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return AdRequestManager.fetchAdBatch(of:with:)(a1, a2);
}

uint64_t sub_1C1B466DC(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1C1B46704, 0, 0);
}

uint64_t sub_1C1B46704()
{
  v1 = v0[8];
  sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_1C1B98E60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C1B467DC;
  v4 = v0[9];
  v5 = v0[7];

  return sub_1C1B45AF8(v5, inited, 1);
}

uint64_t sub_1C1B467DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B47F24, 0, 0);
  }

  else
  {
    v7 = *(v4 + 80);
    swift_setDeallocating();
    v8 = *(v6 + 8);

    return v8(a1);
  }
}

void sub_1C1B46934(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v55 = a3;
  v56 = a4;
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53[-v15];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v54 = a5;
    (*(v13 + 16))(v16, a1, v12);
    v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v19, v16, v12);
    *(v21 + v20) = v18;

    sub_1C1B945E8();
    v22 = type metadata accessor for AdResponseBlock(0);
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion];
    *v24 = 0;
    v24[1] = 0;
    *&v23[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completedResponses] = MEMORY[0x1E69E7CC0];
    v25 = OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock;
    *&v23[v25] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    (*(v8 + 16))(&v23[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_requestIdentifier], v11, v7);
    v27 = *v24;
    v26 = v24[1];
    *v24 = sub_1C1B47E10;
    v24[1] = v21;

    sub_1C1AC0530(v27);
    v28 = v55;
    *&v23[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_context] = v55;
    v59.receiver = v23;
    v59.super_class = v22;
    v29 = v28;
    v30 = objc_msgSendSuper2(&v59, sel_init);

    (*(v8 + 8))(v11, v7);
    [*(v18 + 32) lock];
    swift_beginAccess();
    v31 = v30;
    sub_1C1ABA33C(&v58, v31);
    swift_endAccess();

    if ((*(v18 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) & 1) == 0)
    {
      *(v18 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
      v32 = *(v18 + 16);
      swift_unknownObjectRetain();
      v33 = sub_1C1B945B8();
      [v32 beginSessionForID_];
      swift_unknownObjectRelease();
    }

    [*(v18 + 32) unlock];
    v34 = v56;
    v35 = *(v56 + 16);
    if (v35)
    {
      v55 = v29;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1C1B95518();
      v36 = (v34 + 32);
      while (1)
      {
        v38 = *v36++;
        v37 = v38;
        if (v38 >= 9)
        {
          break;
        }

        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C1B954F8();
        v39 = *(aBlock[0] + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        if (!--v35)
        {
          v29 = v55;
          goto LABEL_9;
        }
      }

      v58 = v37;
      sub_1C1B958C8();
      __break(1u);
    }

    else
    {
LABEL_9:
      sub_1C1AA576C(0, &qword_1EDE6C4C0, 0x1E698A038);
      v40 = v29;
      v41 = APContext.init(_:)(v40);
      v42 = objc_allocWithZone(MEMORY[0x1E698A020]);
      sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      v43 = v41;
      v44 = sub_1C1B94EB8();

      v45 = [v42 initWithContext:v43 contentTypes:v44 deliverEntireBatch:v54 & 1];

      sub_1C1ABB134(v43);
      v46 = *(v18 + 16);
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = swift_allocObject();
      v48[2] = v40;
      v48[3] = v47;
      v48[4] = v31;
      aBlock[4] = sub_1C1B47EB8;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C1B451A4;
      aBlock[3] = &unk_1F4152B78;
      v49 = _Block_copy(aBlock);
      v50 = v31;
      v51 = v40;
      v52 = v50;
      swift_unknownObjectRetain();

      [v46 requestPromotedContentWithContents:v45 forRequester:v52 completionHandler:v49];
      _Block_release(v49);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C1B46F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (a1[1])
  {
    if (!*a1)
    {
      v4 = *(a3 + 32);
      [v4 lock];
      *(a3 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 0;
      [v4 unlock];
    }

    sub_1C1B47ECC();
    swift_allocError();
    *v6 = v3;
    sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
    return sub_1C1B94FD8();
  }

  else
  {
    v8 = *a1;

    sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
    return sub_1C1B94FE8();
  }
}

uint64_t sub_1C1B47058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C1B945F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1B95108();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v12 = sub_1C1B95298();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v27 = a4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136446210;
    v16 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v7 + 16))(v10, a2 + v16, v6);
    v17 = sub_1C1B945A8();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_1C1AC7650(v17, v19, &v28);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1C1AA2000, v12, v11, "[PC] finished retrieving ad content for context identifier %{public}s", v14, 0xCu);
    sub_1C1AA86F8(v15);
    MEMORY[0x1C6908230](v15, -1, -1);
    v21 = v14;
    a4 = v27;
    MEMORY[0x1C6908230](v21, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    [*(result + 32) lock];
    v24 = *(v23 + 16);
    swift_unknownObjectRetain();
    v25 = sub_1C1B945B8();
    [v24 finishedWithRequestsForID_];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v26 = sub_1C1B851DC(a4);
    swift_endAccess();

    sub_1C1B4752C();
    [*(v23 + 32) unlock];
  }

  return result;
}

id sub_1C1B47368(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock);
  [v3 lock];
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_1C1B953A8())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      swift_beginAccess();

      sub_1C1AC7638(v4);
      swift_endAccess();
      return [v3 unlock];
    }
  }

  return [v3 unlock];
}

id sub_1C1B4752C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock);
  [v2 lock];
  v3 = OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completedResponses;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v14 = *(v0 + v3);
    }

    v5 = sub_1C1B953A8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion;
  v7 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  if (v5)
  {
    if (v7)
    {
      v8 = *(v6 + 8);
      v15 = *(v1 + v3);
      v16 = 0;
      sub_1C1AC0598(v7);

      v7(&v15);
      sub_1C1AC0530(v7);
      sub_1C1B47D34(v15, v16);
    }
  }

  else if (v7)
  {
    v9 = *(v6 + 8);
    v15 = 2;
    v16 = 1;

    v7(&v15);
    sub_1C1AC0530(v7);
  }

  v10 = (v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  v11 = *(v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  v12 = *(v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_1C1AC0530(v11);
  return [v2 unlock];
}

id sub_1C1B476B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdResponseBlock(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C1B4779C(void *a1, void *a2)
{
  a2[3] = MEMORY[0x1E69E7CD0];
  a2[4] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1B945E8();
  *(a2 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
  a2[2] = a1;
  swift_unknownObjectRetain();
  v4 = sub_1C1B945B8();
  [a1 beginSessionForID_];

  return a2;
}

void *sub_1C1B4784C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 52);
  v6 = swift_allocObject();

  return sub_1C1B4779C(a1, v6);
}

unint64_t sub_1C1B478A0()
{
  result = qword_1EBF09390;
  if (!qword_1EBF09390)
  {
    type metadata accessor for AdResponseBlock(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09390);
  }

  return result;
}

unint64_t sub_1C1B47904()
{
  result = qword_1EBF09398;
  if (!qword_1EBF09398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09398);
  }

  return result;
}

uint64_t dispatch thunk of AdRequestManaging.fetchAds(with:placementTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C1B47F20;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AdRequestManaging.fetchAdBatch(of:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C1AEE19C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AdRequestManaging.fetchRawAdBatch(with:placementType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C1B47F20;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C1B47D34(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

id sub_1C1B47D40()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock);
  [v1 lock];
  v2 = (v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  if (v3)
  {
    v4 = v2[1];
    v8 = 0;
    v9 = 1;

    v3(&v8);
    sub_1C1AC0530(v3);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1C1AC0530(v5);

  return [v1 unlock];
}

uint64_t sub_1C1B47E10(uint64_t *a1)
{
  v3 = *(sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1B46F6C(a1, v1 + v4, v5);
}

unint64_t sub_1C1B47ECC()
{
  result = qword_1EDE6C298;
  if (!qword_1EDE6C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C298);
  }

  return result;
}

id AppStoreSessionContent.content.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreSessionContent() + 20));

  return v1;
}

uint64_t type metadata accessor for AppStoreSessionContent()
{
  result = qword_1EDE6B7C8;
  if (!qword_1EDE6B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStoreSessionContent.init(representation:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C1AC771C(a1, a3);
  result = type metadata accessor for AppStoreSessionContent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t AppStoreSessionContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for AdContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C1AC1F08(&qword_1EBF09480, &qword_1C1BA1840);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AppStoreSessionContent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B483A0();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v21 = v10;
  v15 = v23;
  v16 = v13;
  LOBYTE(v26) = 0;
  sub_1C1B492C4(&qword_1EDE6B718, type metadata accessor for AdContent);
  v18 = v24;
  v17 = v25;
  sub_1C1B956F8();
  sub_1C1AC771C(v18, v16);
  type metadata accessor for PromotedContent();
  v27 = 1;
  sub_1C1B492C4(&qword_1EDE6BC08, type metadata accessor for PromotedContent);
  sub_1C1B956F8();
  (*(v15 + 8))(v9, v17);
  *(v16 + *(v21 + 20)) = v26;
  v19 = *v16;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1C1B483F4(v16, v22, type metadata accessor for AppStoreSessionContent);
  sub_1C1AA86F8(a1);
  return sub_1C1B4845C(v16, type metadata accessor for AppStoreSessionContent);
}

unint64_t sub_1C1B483A0()
{
  result = qword_1EDE6B7F8;
  if (!qword_1EDE6B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B7F8);
  }

  return result;
}

uint64_t sub_1C1B483F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1B4845C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1B484BC()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x6E65736572706572;
  }

  *v0;
  return result;
}

uint64_t sub_1C1B48504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65736572706572 && a2 == 0xEE006E6F69746174;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C1B485E8(uint64_t a1)
{
  v2 = sub_1C1B483A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B48624(uint64_t a1)
{
  v2 = sub_1C1B483A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreSessionContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09488, &qword_1C1BA1848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B483A0();
  sub_1C1B95A18();
  v14 = 0;
  type metadata accessor for AdContent();
  sub_1C1B492C4(&qword_1EDE6B728, type metadata accessor for AdContent);
  sub_1C1B95808();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for AppStoreSessionContent() + 20));
    v12[15] = 1;
    type metadata accessor for PromotedContent();
    sub_1C1B492C4(&qword_1EDE6BC10, type metadata accessor for PromotedContent);
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AppStoreContentSnapshot.dataIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppStoreContentSnapshot.storeFront.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppStoreContentSnapshot.storeFrontLocale.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall AppStoreContentSnapshot.init(dataIdentifier:storeFront:storeFrontLocale:appRequestMetaFields:sessionContent:)(PromotedContent::AppStoreContentSnapshot *__return_ptr retstr, Swift::String dataIdentifier, Swift::String storeFront, Swift::String storeFrontLocale, Swift::OpaquePointer appRequestMetaFields, Swift::OpaquePointer sessionContent)
{
  retstr->dataIdentifier = dataIdentifier;
  retstr->storeFront = storeFront;
  retstr->storeFrontLocale = storeFrontLocale;
  retstr->appRequestMetaFields = appRequestMetaFields;
  retstr->sessionContent = sessionContent;
}

unint64_t sub_1C1B4894C()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x436E6F6973736573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F724665726F7473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B48A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B498C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B48A30(uint64_t a1)
{
  v2 = sub_1C1B48D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B48A6C(uint64_t a1)
{
  v2 = sub_1C1B48D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreContentSnapshot.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09490, &unk_1C1BA1850);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  v12 = v1[6];
  v19 = v1[7];
  v20 = v12;
  v13 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B48D98();
  v14 = v3;
  sub_1C1B95A18();
  LOBYTE(v27) = 0;
  v15 = v25;
  sub_1C1B957A8();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = v19;
  v17 = v20;
  LOBYTE(v27) = 1;
  sub_1C1B957A8();
  LOBYTE(v27) = 2;
  sub_1C1B957A8();
  v27 = v17;
  v26 = 3;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00);
  sub_1C1B95808();
  v27 = v16;
  v26 = 4;
  sub_1C1AC1F08(&qword_1EBF09498, &qword_1C1BA1860);
  sub_1C1B49228(&qword_1EDE6A718, &qword_1EDE6B7E0);
  sub_1C1B95808();
  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_1C1B48D98()
{
  result = qword_1EDE6B380;
  if (!qword_1EDE6B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B380);
  }

  return result;
}

uint64_t AppStoreContentSnapshot.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF094A0, &qword_1C1BA1868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B48D98();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_1C1B95698();
  v31 = v12;
  LOBYTE(v36[0]) = 1;
  v13 = sub_1C1B95698();
  v30 = v14;
  v28 = v13;
  LOBYTE(v36[0]) = 2;
  v27 = sub_1C1B95698();
  v29 = v15;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  LOBYTE(v32) = 3;
  sub_1C1AD0C9C(&unk_1EDE6BBF0);
  sub_1C1B956F8();
  v26 = v36[0];
  sub_1C1AC1F08(&qword_1EBF09498, &qword_1C1BA1860);
  v37 = 4;
  sub_1C1B49228(&qword_1EDE6A710, &qword_1EDE6B7D8);
  sub_1C1B956F8();
  (*(v6 + 8))(v9, v5);
  v25 = v38;
  v17 = v30;
  v16 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v19 = v28;
  v18 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v27;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  *&v35 = v26;
  *(&v35 + 1) = v38;
  v21 = v33;
  *a2 = v32;
  a2[1] = v21;
  v22 = v35;
  a2[2] = v34;
  a2[3] = v22;
  sub_1C1B4930C(&v32, v36);
  sub_1C1AA86F8(a1);
  v36[0] = v11;
  v36[1] = v16;
  v36[2] = v19;
  v36[3] = v17;
  v36[4] = v20;
  v36[5] = v18;
  v36[6] = v26;
  v36[7] = v25;
  return sub_1C1B49344(v36);
}

uint64_t sub_1C1B49228(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09498, &qword_1C1BA1860);
    sub_1C1B492C4(a2, type metadata accessor for AppStoreSessionContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B492C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B49374(uint64_t a1)
{
  result = sub_1C1B4939C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C1B4939C()
{
  result = qword_1EDE6B358;
  if (!qword_1EDE6B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B358);
  }

  return result;
}

uint64_t sub_1C1B493F0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1C1B49420(uint64_t a1)
{
  *(a1 + 8) = sub_1C1B49450();
  result = sub_1C1B494A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C1B49450()
{
  result = qword_1EDE6B360;
  if (!qword_1EDE6B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B360);
  }

  return result;
}

unint64_t sub_1C1B494A4()
{
  result = qword_1EDE6B368;
  if (!qword_1EDE6B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B368);
  }

  return result;
}

uint64_t sub_1C1B49550()
{
  result = type metadata accessor for AdContent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromotedContent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1C1B495D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1B495E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1B49630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1B496B4()
{
  result = qword_1EBF094A8;
  if (!qword_1EBF094A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094A8);
  }

  return result;
}

unint64_t sub_1C1B4970C()
{
  result = qword_1EBF094B0;
  if (!qword_1EBF094B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094B0);
  }

  return result;
}

unint64_t sub_1C1B49764()
{
  result = qword_1EDE6B370;
  if (!qword_1EDE6B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B370);
  }

  return result;
}

unint64_t sub_1C1B497BC()
{
  result = qword_1EDE6B378;
  if (!qword_1EDE6B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B378);
  }

  return result;
}

unint64_t sub_1C1B49814()
{
  result = qword_1EDE6B7E8;
  if (!qword_1EDE6B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B7E8);
  }

  return result;
}

unint64_t sub_1C1B4986C()
{
  result = qword_1EDE6B7F0;
  if (!qword_1EDE6B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B7F0);
  }

  return result;
}

uint64_t sub_1C1B498C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F724665726F7473 && a2 == 0xEA0000000000746ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA55B0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C1BAB380 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEE00746E65746E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C1B49A94()
{
  v1 = v0[3];
  sub_1C1AC0530(v0[2]);
  v2 = v0[4];

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C1B49AF8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C1B49B58(a1);
  }

  return result;
}

uint64_t sub_1C1B49B58(void *a1)
{
  v2 = v1;
  [*(v1 + 16) lock];
  v4 = [a1 contextIdentifier];
  v5 = sub_1C1B94D88();
  v7 = v6;

  swift_beginAccess();
  v8 = *(v2 + 32);
  if (!*(v8 + 16))
  {

LABEL_6:
    swift_endAccess();
    return [*(v2 + 16) unlock];
  }

  v9 = sub_1C1AA7C14(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v13 = v12[2];
  v55 = v2;
  if (v13)
  {
    v14 = v12[3];

    sub_1C1AC0598(v13);
    v13(a1);
    sub_1C1AC0530(v13);
  }

  else
  {
  }

  swift_beginAccess();
  v15 = v12[4];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = v12[4];

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v57 = v15 + 64;
  v58 = v12;
  v56 = v15;
  if (v19)
  {
    while (1)
    {
LABEL_17:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = (*(v15 + 48) + ((v23 << 10) | (16 * v26)));
      v29 = *v27;
      v28 = v27[1];

      v30 = [a1 contentIdentifier];
      if (!v30)
      {
        goto LABEL_12;
      }

      v31 = v24;
      v32 = a1;
      v33 = v30;
      v34 = sub_1C1B94D88();
      v36 = v35;

      if (v34 == v29 && v36 == v28)
      {

        a1 = v32;
        v24 = v31;
        v15 = v56;
LABEL_25:
        result = swift_isUniquelyReferenced_nonNull_native();
        v59 = v24;
        if ((result & 1) == 0)
        {
          result = sub_1C1AC7E04(0, v24[2] + 1, 1);
          v15 = v56;
          v24 = v59;
        }

        v12 = v58;
        v40 = v24[2];
        v39 = v24[3];
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          result = sub_1C1AC7E04((v39 > 1), v40 + 1, 1);
          v15 = v56;
          v41 = v40 + 1;
          v24 = v59;
        }

        v24[2] = v41;
        v42 = &v24[2 * v40];
        v42[4] = v29;
        v42[5] = v28;
        v16 = v57;
        if (!v19)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v38 = sub_1C1B95888();

        a1 = v32;
        v24 = v31;
        v15 = v56;
        if (v38)
        {
          goto LABEL_25;
        }

LABEL_12:

        v16 = v57;
        v12 = v58;
        if (!v19)
        {
          goto LABEL_13;
        }
      }
    }
  }

  while (1)
  {
LABEL_13:
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v25 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v25);
    ++v23;
    if (v19)
    {
      v23 = v25;
      goto LABEL_17;
    }
  }

  v43 = v24[2];
  if (!v43)
  {
LABEL_39:

    v2 = v55;
    return [*(v2 + 16) unlock];
  }

  v44 = 0;
  v45 = v24 + 5;
  while (v44 < v24[2])
  {
    v47 = *(v45 - 1);
    v46 = *v45;
    swift_beginAccess();
    v48 = v12[4];
    v49 = *(v48 + 16);

    if (v49 && (v50 = sub_1C1AA7C14(v47, v46), (v51 & 1) != 0))
    {
      v52 = *(v48 + 56) + 16 * v50;
      v54 = *v52;
      v53 = *(v52 + 8);
      swift_endAccess();
      v59 = a1;

      v54(&v59);
    }

    else
    {
      swift_endAccess();
    }

    ++v44;
    v45 += 2;
    if (v43 == v44)
    {
      goto LABEL_39;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1C1B49F5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1C1B49FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  [*(v4 + 16) lock];
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (*(v10 + 16) && (v11 = sub_1C1AA7C14(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = v13[2];
    v15 = v13[3];

    v16 = v14;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ContextMetricContainer();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v17 = sub_1C1AD48C8(MEMORY[0x1E69E7CC0]);
    v16 = 0;
    v13[4] = v17;
  }

  v13[2] = a3;
  v13[3] = a4;
  sub_1C1AC0530(v16);
  swift_beginAccess();

  v18 = *(v5 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + 32);
  *(v5 + 32) = 0x8000000000000000;
  sub_1C1AE43C8(v13, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 32) = v21;
  swift_endAccess();

  return [*(v5 + 16) unlock];
}

id sub_1C1B4A148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [*(v2 + 16) lock];
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_1C1AA7C14(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9[2];
    v11 = v9[3];
    v9[2] = 0;
    v9[3] = 0;

    sub_1C1AC0530(v10);
    swift_beginAccess();
    if (*(v9[4] + 16))
    {
      swift_beginAccess();

      v12 = *(v3 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v3 + 32);
      *(v3 + 32) = 0x8000000000000000;
      sub_1C1AE43C8(v9, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v3 + 32) = v15;
    }

    else
    {
      swift_beginAccess();

      sub_1C1AD30AC(0, a1, a2);
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return [*(v3 + 16) unlock];
}

id sub_1C1B4A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  [*(v6 + 16) lock];
  swift_beginAccess();
  v14 = *(v6 + 32);
  if (*(v14 + 16) && (v15 = sub_1C1AA7C14(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ContextMetricContainer();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = sub_1C1AD48C8(MEMORY[0x1E69E7CC0]);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  swift_beginAccess();

  v19 = v17[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v17[4];
  v17[4] = 0x8000000000000000;
  sub_1C1AE458C(sub_1C1B4AABC, v18, a3, a4, isUniquelyReferenced_nonNull_native);

  v17[4] = v24;
  swift_endAccess();
  swift_beginAccess();

  v21 = *(v7 + 32);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v7 + 32);
  *(v7 + 32) = 0x8000000000000000;
  sub_1C1AE43C8(v17, a1, a2, v22);

  *(v7 + 32) = v25;
  swift_endAccess();

  return [*(v7 + 16) unlock];
}

id sub_1C1B4A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  [*(v4 + 16) lock];
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (*(v10 + 16) && (v11 = sub_1C1AA7C14(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    swift_beginAccess();

    sub_1C1AD2FA4(0, 0, a3, a4);
    swift_endAccess();
    if (*(v13 + 16) || *(*(v13 + 32) + 16))
    {
      swift_beginAccess();

      v14 = *(v5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v5 + 32);
      *(v5 + 32) = 0x8000000000000000;
      sub_1C1AE43C8(v13, a3, a4, isUniquelyReferenced_nonNull_native);

      *(v5 + 32) = v17;
    }

    else
    {
      swift_beginAccess();

      sub_1C1AD30AC(0, a1, a2);
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return [*(v5 + 16) unlock];
}

id sub_1C1B4A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  [*(v6 + 16) lock];
  swift_beginAccess();
  v14 = *(v6 + 32);
  if (*(v14 + 16) && (v15 = sub_1C1AA7C14(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    swift_beginAccess();
    v18 = *(v17 + 32);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_1C1AA7C14(a3, a4), (v21 & 1) != 0))
    {
      v22 = v20;
      v23 = *(v18 + 56);
      v24 = swift_allocObject();
      v29 = *(v23 + 16 * v22);
      *(v24 + 16) = v29;
      swift_endAccess();
      v25 = swift_allocObject();
      v26 = sub_1C1B4A908;
      *(v25 + 16) = sub_1C1B4A908;
      *(v25 + 24) = v24;

      v27 = sub_1C1B4A940;
    }

    else
    {
      swift_endAccess();
      v27 = 0;
      v25 = 0;
      v26 = 0;
    }

    swift_beginAccess();

    sub_1C1AD2FA4(v27, v25, a5, a6);
    swift_endAccess();
    sub_1C1AC0530(v26);
  }

  else
  {
    swift_endAccess();
  }

  return [*(v7 + 16) unlock];
}

uint64_t sub_1C1B4A89C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C1B4A908(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1C1B4A940(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void *sub_1C1B4A96C(uint64_t a1, void *a2)
{
  a2[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v4 = sub_1C1AD47B8(MEMORY[0x1E69E7CC0]);
  a2[3] = a1;
  a2[4] = v4;
  v5 = [swift_unknownObjectRetain() notificationRegistrar];
  v6 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1C1B4AAAC;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C1B49F5C;
  v9[3] = &unk_1F4152DC0;
  v7 = _Block_copy(v9);

  [v5 registerHandlerForPurpose:100 closure:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return a2;
}

uint64_t sub_1C1B4AAC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Void __swiftcall JourneyMetricsHelper.notifyListenersPCUsed()()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
    v12 = *v10;
    v11 = *(v10 + 8);

    v12(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall JourneyMetricsHelper.unregisterForPCUsedEvent(listenerID:)(Swift::String listenerID)
{
  object = listenerID._object;
  countAndFlagsBits = listenerID._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {

    sub_1C1AA7C14(countAndFlagsBits, object);
    v6 = v5;

    if (v6)
    {
      swift_beginAccess();
      v7 = sub_1C1AF6614(countAndFlagsBits, object);
      swift_endAccess();
      sub_1C1AC0530(v7);
    }
  }
}

uint64_t LocalizedHeadlines.headline(forLanguageCode:)()
{
  v1 = *v0;
  v2 = sub_1C1B94608();
  if (*(v1 + 16))
  {
    v4 = sub_1C1AA7C14(v2, v3);
    v6 = v5;

    if (v6)
    {
      v7 = (*(v1 + 56) + 16 * v4);
      v9 = *v7;
      v8 = v7[1];

      return v9;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C1B4AE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1B95888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C1B4AEAC(uint64_t a1)
{
  v2 = sub_1C1B4B290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B4AEE8(uint64_t a1)
{
  v2 = sub_1C1B4B290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocalizedHeadlines.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF094B8, &unk_1C1BA1CE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B4B290();

  sub_1C1B95A18();
  v11[1] = v8;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00);
  sub_1C1B95808();

  return (*(v4 + 8))(v7, v3);
}

uint64_t LocalizedHeadlines.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF094C0, &qword_1C1BA1CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B4B290();
  sub_1C1B95A08();
  if (!v2)
  {
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    sub_1C1AD0C9C(&unk_1EDE6BBF0);
    sub_1C1B956F8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_1C1AA86F8(a1);
}

unint64_t sub_1C1B4B290()
{
  result = qword_1EDE6B038;
  if (!qword_1EDE6B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B038);
  }

  return result;
}

unint64_t sub_1C1B4B2F8()
{
  result = qword_1EBF094C8;
  if (!qword_1EBF094C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094C8);
  }

  return result;
}

unint64_t sub_1C1B4B350()
{
  result = qword_1EDE6B028;
  if (!qword_1EDE6B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B028);
  }

  return result;
}

unint64_t sub_1C1B4B3A8()
{
  result = qword_1EDE6B030;
  if (!qword_1EDE6B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B030);
  }

  return result;
}

uint64_t ContentProvider.__allocating_init(requestManager:cacheManager:storageManager:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ContentProvider.init(requestManager:cacheManager:storageManager:)(a1, a2, a3);
  return v9;
}

uint64_t *ContentProvider.init(requestManager:cacheManager:storageManager:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1C1AC0580(a1, (v3 + 2));
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 128), a2);
  (*(*(*(v6 + 88) - 8) + 32))(v3 + *(*v3 + 136), a3);
  return v3;
}

uint64_t sub_1C1B4B540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B4B564, 0, 0);
}

uint64_t sub_1C1B4B564()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1C1B4CB94;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_1C1B4B694(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B4B6B8, 0, 0);
}

uint64_t sub_1C1B4B6B8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1C1B4B7E8;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_1C1B4B7E8(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1C1B4B8E8(uint64_t a1)
{
  v2 = *(*(*v1 + 104) + 32);
  v3 = *(*v1 + 88);
  v4 = v1 + *(*v1 + 136);
  return v2(a1, v3) & 1;
}

uint64_t sub_1C1B4B960(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 104) + 24);
  v4 = *(*v2 + 88);
  v5 = v2 + *(*v2 + 136);
  return v3(a1, a2, v4);
}

uint64_t sub_1C1B4B9D4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 104) + 40);
  v4 = *(*v2 + 88);
  v5 = v2 + *(*v2 + 136);
  return v3(a1, a2, v4) & 1;
}

uint64_t sub_1C1B4BA4C(uint64_t a1)
{
  v11 = *(*v1 + 80);
  v12 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  result = sub_1C1B94F58();
  if (result)
  {
    v4 = *(v12 + 32);
    v5 = *(*v1 + 128);
    v6 = 4;
    do
    {
      v7 = v6 - 4;
      v8 = sub_1C1B94F38();
      sub_1C1B94EF8();
      if (v8)
      {
        v9 = *(a1 + 8 * v6);
        result = swift_unknownObjectRetain();
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_1C1B95488();
        v9 = result;
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      v13 = v9;
      v4(&v13, v11, v12);
      swift_unknownObjectRelease();
      result = sub_1C1B94F58();
      ++v6;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t sub_1C1B4BBB4()
{
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  sub_1C1B4BD20(v0 + *(*v0 + 128), v3, *(*v0 + 88), v4, *(*v0 + 104), *(*v0 + 112));
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  swift_getAssociatedTypeWitness();
  sub_1C1B4C330();
  v1 = sub_1C1B94E18();

  return v1;
}

uint64_t (*sub_1C1B4BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  (*(v11 + 32))(&v15[v14], v13, a2);
  return sub_1C1B4CB18;
}

uint64_t sub_1C1B4BE64(uint64_t result)
{
  v10 = *v1;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = v10[12];
    v5 = *(v4 + 40);
    v6 = v10[16];
    v7 = (result + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v5(v8, v9, v10[10], v4);

      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C1B4BF38(uint64_t a1)
{
  v2 = sub_1C1B4BBB4();
  sub_1C1B4BE64(a1);
  return v2;
}

uint64_t *ContentProvider.deinit()
{
  v1 = *v0;
  sub_1C1AA86F8(v0 + 2);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t ContentProvider.__deallocating_deinit()
{
  ContentProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1B4C0A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B47F28;

  return sub_1C1B4B540(a1, a2);
}

uint64_t sub_1C1B4C148(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return sub_1C1B4B694(a1, a2);
}

uint64_t sub_1C1B4C2F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  result = v5(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1B4C330()
{
  result = qword_1EDE6A688;
  if (!qword_1EDE6A688)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A688);
  }

  return result;
}

uint64_t sub_1C1B4C394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t dispatch thunk of ContentProviding.performNetworkRequest(context:placements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C1B47F20;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContentProviding.performBatchRequest(context:placement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C1B47F20;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C1B4C6A8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ContentProvider.performNetworkRequest(context:placements:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C1B47F20;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ContentProvider.performBatchRequest(context:placement:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C1AEE19C;

  return v10(a1, a2);
}

uint64_t sub_1C1B4CB18()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80));
  (*(v1 + 24))(&v4);
  return v4;
}

uint64_t sub_1C1B4CBB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B4CC9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1B4CC9C(uint64_t result)
{
  if ((result - 2606) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B4CCB4()
{
  result = qword_1EBF094D0;
  if (!qword_1EBF094D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094D0);
  }

  return result;
}

unint64_t sub_1C1B4CD18()
{
  result = qword_1EBF094D8;
  if (!qword_1EBF094D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094D8);
  }

  return result;
}

id sub_1C1B4CD6C()
{
  result = [objc_opt_self() isAppleInternalInstall];
  byte_1EDE6D050 = result;
  return result;
}

void sub_1C1B4CDA0()
{
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  v0 = byte_1EDE6D050;
  if (byte_1EDE6D050 == 1)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1C1B94D78();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      v3 = [objc_opt_self() standardUserDefaults];
    }

    v4 = sub_1C1B94D78();
    v5 = [v3 integerForKey_];
  }

  else
  {
    v5 = 0;
  }

  qword_1EDE6CE50 = v5;
  byte_1EDE6CE58 = v0 ^ 1;
}

void sub_1C1B4CEDC()
{
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  v0 = byte_1EDE6D050;
  if (byte_1EDE6D050 == 1)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1C1B94D78();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      v3 = [objc_opt_self() standardUserDefaults];
    }

    v4 = sub_1C1B94D78();
    v5 = [v3 integerForKey_];
  }

  else
  {
    v5 = 0;
  }

  qword_1EDE6CDD8 = v5;
  byte_1EDE6CDE0 = v0 ^ 1;
}

BOOL sub_1C1B4D00C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1C1B95458();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1C1B4D104()
{
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  if (byte_1EDE6D050 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1C1B94D78();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1C1AF4F4C(v11);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v11[0] = 0;
  v5 = sub_1C1B4D00C(v7, v8);

  if (v5)
  {
    return *&v11[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1B4D2D4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1C1B94D78();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v7;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C1AF4F4C(v10);
  }

  v5 = 0;
LABEL_11:
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  return byte_1EDE6D050 & v5 & 1;
}

_BYTE *sub_1C1B4D46C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t NativeAdTrackingInstance.instanceId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NativeAdTrackingInstance.frequencyCapIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_1C1B4D574()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
    v3 = type metadata accessor for QuickReturnTracker();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v1 = swift_allocObject();
    *(v1 + 40) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    v6 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
    v7 = sub_1C1B94588();
    (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
    *(v1 + 32) = v2;
    v8 = *(v0 + 112);
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1C1B4D654(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t (*sub_1C1B4D664(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1C1B4D574();
  return sub_1C1B4D6AC;
}

uint64_t sub_1C1B4D6AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
}

uint64_t sub_1C1B4D6BC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = sub_1C1B4DCC4();
    v2 = *(v0 + 120);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1C1B4D718(uint64_t a1)
{
  v2 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t (*sub_1C1B4D728(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1C1B4D6BC();
  return sub_1C1B4D770;
}

uint64_t sub_1C1B4D770(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
}

uint64_t sub_1C1B4D7B4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_1C1B4D878(char a1)
{
  result = swift_beginAccess();
  *(v1 + 129) = a1;
  return result;
}

uint64_t sub_1C1B4D93C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 130) = a1;
  return result;
}

uint64_t NativeAdTrackingInstance.__allocating_init(instanceId:metrics:eventProvider:frequencyStorageType:frequencyCapIdentifier:installAttribution:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  LOBYTE(a5) = *a5;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 127) = 0;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1C1AC0580(a3, v16 + 40);
  *(v16 + 32) = a4;
  *(v16 + 80) = a5;
  *(v16 + 88) = a6;
  *(v16 + 96) = a7;
  *(v16 + 104) = a8;
  return v16;
}

uint64_t NativeAdTrackingInstance.init(instanceId:metrics:eventProvider:frequencyStorageType:frequencyCapIdentifier:installAttribution:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a5;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 127) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1C1AC0580(a3, v8 + 40);
  *(v8 + 32) = a4;
  *(v8 + 80) = v13;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  return v8;
}

void *NativeAdTrackingInstance.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C1AA86F8(v0 + 5);
  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];

  return v0;
}

uint64_t NativeAdTrackingInstance.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C1AA86F8(v0 + 5);
  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];

  return MEMORY[0x1EEE6BDC0](v0, 131, 7);
}

uint64_t sub_1C1B4DB90()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);

  return v1;
}

uint64_t sub_1C1B4DBE0(uint64_t a1, uint64_t a2, double a3)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = sub_1C1AD44D8(MEMORY[0x1E69E7CC0]);
  *(a2 + 56) = 0;
  v6 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
  v7 = sub_1C1B94588();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock;
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v9 = swift_allocObject();
  *(a2 + v8) = v9;
  *(a2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) = a1;
  *(v9 + 16) = 0;
  *(a2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration) = a3;
  return a2;
}

uint64_t sub_1C1B4DCC4()
{
  v0 = sub_1C1AC1F08(&qword_1EBF094E0, &unk_1C1BA2170);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - v5;
  sub_1C1B94B78();
  v7 = sub_1C1B94B88();
  v23[3] = v7;
  v23[4] = MEMORY[0x1E6986060];
  v8 = sub_1C1AB0D60(v23);
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6986058], v7);
  v25 = sub_1C1B94B48();
  v26 = MEMORY[0x1E6986050];
  sub_1C1AB0D60(v24);
  sub_1C1B94B38();
  sub_1C1B94B58();
  v9 = sub_1C1B94B08();
  v25 = v9;
  v26 = sub_1C1B4E29C(&unk_1EDE6A780, MEMORY[0x1E6986020]);
  v10 = sub_1C1AB0D60(v24);
  (*(*(v9 - 8) + 104))(v10, *MEMORY[0x1E6986010], v9);
  v11 = sub_1C1B94B28();
  v12 = MEMORY[0x1E6986028];
  sub_1C1B4E29C(&qword_1EDE6A770, MEMORY[0x1E6986028]);
  sub_1C1B4E29C(&qword_1EDE6A778, v12);
  sub_1C1B94B68();
  sub_1C1AA86F8(v24);
  v13 = [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B4E2E4(v6, v4);
  v14 = *(v11 - 8);
  if ((*(v14 + 48))(v4, 1, v11) == 1)
  {
    sub_1C1B4E354(v4);
    v15 = 1.0;
  }

  else
  {
    sub_1C1B94B18();
    v15 = v16;
    (*(v14 + 8))(v4, v11);
  }

  v17 = type metadata accessor for VisibleThresholdTracker();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = sub_1C1B4DBE0(v13, v20, v15);

  sub_1C1B4E354(v6);
  return v21;
}

uint64_t sub_1C1B4E29C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B4E2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF094E0, &unk_1C1BA2170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B4E354(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF094E0, &unk_1C1BA2170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsUnloadTracker.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1C1B4E468()
{
  result = qword_1EDE6C9E0;
  if (!qword_1EDE6C9E0)
  {
    sub_1C1AA576C(255, &qword_1EDE6C9F0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C9E0);
  }

  return result;
}

uint64_t DesiredPosition.init(rawValue:)(uint64_t result)
{
  if ((result - 1101) >= 2 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B4E4EC()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v49 - v9;
  v11 = sub_1C1B944A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VideoRepresentation();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9C9C0;
    *(inited + 32) = 0x65746172746962;
    *(inited + 40) = 0xE700000000000000;
    v19 = MEMORY[0x1E69E63B0];
    *(inited + 48) = *(v17 + OBJC_IVAR___APPCVideoRepresentation_bitrate);
    *(inited + 72) = v19;
    strcpy((inited + 80), "signalStrength");
    *(inited + 95) = -18;
    v20 = MEMORY[0x1E69E6810];
    *(inited + 96) = *(v17 + OBJC_IVAR___APPCVideoRepresentation_signalStrength);
    *(inited + 120) = v20;
    strcpy((inited + 128), "connectionType");
    *(inited + 143) = -18;
    v21 = MEMORY[0x1E69E6530];
    *(inited + 144) = *(v17 + OBJC_IVAR___APPCVideoRepresentation_connectionType);
    *(inited + 168) = v21;
    *(inited + 176) = 0x4C52557465737361;
    *(inited + 184) = 0xE800000000000000;
    *(inited + 216) = v11;
    v22 = sub_1C1AB0D60((inited + 192));
    swift_unknownObjectRetain();
    sub_1C1B0C774(v22);
    *(inited + 224) = 0x6E6F697461727564;
    *(inited + 232) = 0xE800000000000000;
    v23 = *(v17 + OBJC_IVAR___APPCVideoRepresentation_duration);
    *(inited + 264) = v19;
    *(inited + 240) = v23;
    v24 = sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
    swift_arrayDestroy();
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for BannerRepresentation();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = *(v25 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
      if (v26)
      {
        sub_1C1AC5430(&v26[OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL], v10);
        if ((*(v12 + 48))(v10, 1, v11) != 1)
        {
          (*(v12 + 32))(v15, v10, v11);
          sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
          v41 = swift_initStackObject();
          *(v41 + 16) = xmmword_1C1B9C9C0;
          *(v41 + 32) = 0x65746172746962;
          *(v41 + 40) = 0xE700000000000000;
          v42 = MEMORY[0x1E69E63B0];
          *(v41 + 48) = *&v26[OBJC_IVAR___APPCOutstreamVideoInfo_bitrate];
          *(v41 + 72) = v42;
          strcpy((v41 + 80), "signalStrength");
          *(v41 + 95) = -18;
          v43 = MEMORY[0x1E69E6810];
          *(v41 + 96) = *&v26[OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength];
          *(v41 + 120) = v43;
          strcpy((v41 + 128), "connectionType");
          *(v41 + 143) = -18;
          v44 = MEMORY[0x1E69E6530];
          *(v41 + 144) = *&v26[OBJC_IVAR___APPCOutstreamVideoInfo_connectionType];
          *(v41 + 168) = v44;
          *(v41 + 176) = 0x4C52557465737361;
          *(v41 + 184) = 0xE800000000000000;
          *(v41 + 216) = v11;
          v45 = sub_1C1AB0D60((v41 + 192));
          (*(v12 + 16))(v45, v15, v11);
          *(v41 + 224) = 0x6E6F697461727564;
          *(v41 + 232) = 0xE800000000000000;
          v46 = *&v26[OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration];
          swift_unknownObjectRetain();
          v47 = v26;
          [v46 doubleValue];
          *(v41 + 264) = v42;
          *(v41 + 240) = v48;
          v24 = sub_1C1AA7D00(v41);
          swift_setDeallocating();
          sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
          swift_arrayDestroy();
          swift_unknownObjectRelease();

          (*(v12 + 8))(v15, v11);
          return v24;
        }

        sub_1C1AA7C8C(v10, &qword_1EBF07AC8, &qword_1C1B9CED0);
      }
    }

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v27 = sub_1C1B94BE8();
    sub_1C1AB4454(v27, qword_1EDE6D058);
    swift_unknownObjectRetain_n();
    v28 = sub_1C1B94BC8();
    v29 = sub_1C1B95128();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v30 = 136446466;
      v31 = [v1 id];
      sub_1C1B945D8();
      swift_unknownObjectRelease();

      sub_1C1B51D08(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
      v32 = sub_1C1B95858();
      v34 = v33;
      swift_unknownObjectRelease();
      (*(v3 + 8))(v6, v2);
      v35 = sub_1C1AC7650(v32, v34, v51);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v36 = sub_1C1B4FF2C([v1 adType]);
      v38 = sub_1C1AC7650(v36, v37, v51);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1C1AA2000, v28, v29, "[Representation %{public}s]: Corrupted %{public}s representation is detected. Critical video assets are missing.", v30, 0x16u);
      v39 = v50;
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v39, -1, -1);
      MEMORY[0x1C6908230](v30, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    return 0;
  }

  return v24;
}

id ContentRepresentation.init(id:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v19 = sub_1C1B945A8();
  v20 = &v10[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v20 = v19;
  v20[1] = v21;
  v22 = OBJC_IVAR___APPCContentRepresentation_id;
  v23 = sub_1C1B945F8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v10[v22], a1, v23);
  *&v10[OBJC_IVAR___APPCContentRepresentation_adType] = a2;
  *&v10[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = a3;
  *&v10[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = a4;
  *&v10[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = a5;
  v25 = &v10[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v25 = a8;
  v25[1] = a9;
  *&v10[OBJC_IVAR___APPCContentRepresentation_tapAction] = a6;
  *&v10[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = a7;
  v29.receiver = v10;
  v29.super_class = type metadata accessor for ContentRepresentation();
  v26 = objc_msgSendSuper2(&v29, sel_init);
  (*(v24 + 8))(a1, v23);
  return v26;
}

void *ContentRepresentation.init(from:)(uint64_t *a1)
{
  v2 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_1C1B945F8();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1AC1F08(&qword_1EBF094F0, &qword_1C1BA22A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v46 = a1;
  sub_1C1AAABE0(a1, v15);
  sub_1C1B4F854();
  v17 = v45;
  sub_1C1B95A08();
  if (v17)
  {
    goto LABEL_4;
  }

  v42 = v9;
  v43 = v6;
  v45 = v11;
  LOBYTE(v49) = 0;
  v18 = sub_1C1B95698();
  v20 = v19;
  v21 = v5;
  sub_1C1B94598();
  v22 = v44;
  v23 = v5;
  v24 = v43;
  if ((*(v44 + 48))(v23, 1, v43) == 1)
  {
    sub_1C1AA7C8C(v21, &unk_1EBF098E0, &qword_1C1BA22A0);
    sub_1C1B4F8A8();
    swift_allocError();
    *v25 = v18;
    v25[1] = v20;
    swift_willThrow();
    (*(v45 + 8))(v14, v10);
LABEL_4:
    sub_1C1AA86F8(v46);
    v26 = v47;
    type metadata accessor for ContentRepresentation();
    v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x30);
    v28 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
    return v26;
  }

  v30 = v10;
  v31 = v42;
  (*(v22 + 32))(v42, v21, v24);
  v32 = v47;
  (*(v22 + 16))(v47 + OBJC_IVAR___APPCContentRepresentation_id, v31, v24);
  v33 = &v32[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v33 = v18;
  v33[1] = v20;
  v50 = 1;
  sub_1C1AC1FF8();
  sub_1C1B956F8();
  *&v32[OBJC_IVAR___APPCContentRepresentation_adType] = v49;
  v50 = 2;
  sub_1C1B4F8FC();
  sub_1C1B956F8();
  *&v32[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v49;
  v50 = 3;
  sub_1C1B4F950();
  sub_1C1B956F8();
  v34 = v43;
  v35 = v44;
  *&v32[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v49;
  v50 = 4;
  sub_1C1B4F9A4();
  sub_1C1B95678();
  v36 = v49;
  if (BYTE8(v49))
  {
    v36 = 0;
  }

  *&v32[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v36;
  type metadata accessor for CGSize(0);
  v50 = 5;
  sub_1C1B51D08(&unk_1EDE6BB30, type metadata accessor for CGSize);
  sub_1C1B956F8();
  *&v32[OBJC_IVAR___APPCContentRepresentation_adSize] = v49;
  v50 = 6;
  sub_1C1B4F9F8();
  sub_1C1B95678();
  v37 = v49;
  if ((~v49 & 0xF000000000000007) != 0)
  {
    v38 = v49 >> 61;
    if ((v49 >> 61) > 3)
    {
      v37 = v49 & 0x1FFFFFFFFFFFFFFFLL;
      if (v38 > 5)
      {
        if (v38 == 6)
        {
          v39 = type metadata accessor for MobileRichAdInterfaceDefinitionTapAction;
          sub_1C1B51D08(&qword_1EBF09518, type metadata accessor for MobileRichAdInterfaceDefinitionTapAction);
          v40 = &unk_1EBF09520;
        }

        else
        {
          v39 = type metadata accessor for DeepLinkTapAction;
          sub_1C1B51D08(&qword_1EBF09508, type metadata accessor for DeepLinkTapAction);
          v40 = &unk_1EBF09510;
        }
      }

      else if (v38 == 4)
      {
        v39 = type metadata accessor for ExpandTapAction;
        sub_1C1B51D08(&qword_1EBF09538, type metadata accessor for ExpandTapAction);
        v40 = &unk_1EBF09540;
      }

      else
      {
        v39 = type metadata accessor for OutstreamVideoTapAction;
        sub_1C1B51D08(&qword_1EBF09528, type metadata accessor for OutstreamVideoTapAction);
        v40 = &unk_1EBF09530;
      }
    }

    else if (v38 > 1)
    {
      v37 = v49 & 0x1FFFFFFFFFFFFFFFLL;
      if (v38 == 2)
      {
        v39 = type metadata accessor for CalendarTapAction;
        sub_1C1B51D08(&qword_1EBF09558, type metadata accessor for CalendarTapAction);
        v40 = &unk_1EBF09560;
      }

      else
      {
        v39 = type metadata accessor for StoreTapAction;
        sub_1C1B51D08(&qword_1EBF09548, type metadata accessor for StoreTapAction);
        v40 = &unk_1EBF09550;
      }
    }

    else if (v38)
    {
      v37 = v49 & 0x1FFFFFFFFFFFFFFFLL;
      v39 = type metadata accessor for WebTapAction;
      sub_1C1B51D08(&qword_1EDE6B208, type metadata accessor for WebTapAction);
      v40 = &unk_1EDE6B210;
    }

    else
    {
      v39 = type metadata accessor for TapAction;
      sub_1C1B51D08(&qword_1EBF08B80, type metadata accessor for TapAction);
      v40 = &unk_1EBF08B60;
    }

    sub_1C1B51D08(v40, v39);
    v34 = v43;
    v35 = v44;
    v32 = v47;
  }

  else
  {
    v37 = 0;
  }

  *&v32[OBJC_IVAR___APPCContentRepresentation_tapAction] = v37;
  type metadata accessor for AdPolicyData();
  v50 = 7;
  sub_1C1B51D08(&qword_1EDE6C2E8, type metadata accessor for AdPolicyData);
  sub_1C1B95678();
  (*(v35 + 8))(v42, v34);
  (*(v45 + 8))(v14, v30);
  *&v32[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v49;
  v41 = type metadata accessor for ContentRepresentation();
  v48.receiver = v32;
  v48.super_class = v41;
  v26 = objc_msgSendSuper2(&v48, sel_init);
  sub_1C1AA86F8(v46);
  return v26;
}

unint64_t sub_1C1B4F854()
{
  result = qword_1EDE6C308;
  if (!qword_1EDE6C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C308);
  }

  return result;
}

unint64_t sub_1C1B4F8A8()
{
  result = qword_1EBF094F8;
  if (!qword_1EBF094F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094F8);
  }

  return result;
}

unint64_t sub_1C1B4F8FC()
{
  result = qword_1EDE6C230;
  if (!qword_1EDE6C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C230);
  }

  return result;
}

unint64_t sub_1C1B4F950()
{
  result = qword_1EDE6BEF0;
  if (!qword_1EDE6BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEF0);
  }

  return result;
}

unint64_t sub_1C1B4F9A4()
{
  result = qword_1EBF09500;
  if (!qword_1EBF09500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09500);
  }

  return result;
}

unint64_t sub_1C1B4F9F8()
{
  result = qword_1EDE6BEE8;
  if (!qword_1EDE6BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEE8);
  }

  return result;
}

uint64_t sub_1C1B4FA4C(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09568, &qword_1C1BA22B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B4F854();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCContentRepresentation_identifier);
  v12 = *(v3 + OBJC_IVAR___APPCContentRepresentation_identifier + 8);
  LOBYTE(v17) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    *&v17 = *(v3 + OBJC_IVAR___APPCContentRepresentation_adType);
    v18 = 1;
    sub_1C1AC1FA4();
    sub_1C1B95808();
    *&v17 = *(v3 + OBJC_IVAR___APPCContentRepresentation_desiredPosition);
    v18 = 2;
    sub_1C1B4FE30();
    sub_1C1B95808();
    *&v17 = *(v3 + OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition);
    v18 = 3;
    sub_1C1B4FE84();
    sub_1C1B95808();
    *&v17 = *(v3 + OBJC_IVAR___APPCContentRepresentation_privacyMarkerType);
    v18 = 4;
    sub_1C1B4FED8();
    sub_1C1B95808();
    v17 = *(v3 + OBJC_IVAR___APPCContentRepresentation_adSize);
    v18 = 5;
    type metadata accessor for CGSize(0);
    sub_1C1B51D08(&qword_1EDE6BB40, type metadata accessor for CGSize);
    sub_1C1B95808();
    v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_tapAction);
    if (v13)
    {
      v14 = sub_1C1B92408(*(v3 + OBJC_IVAR___APPCContentRepresentation_tapAction));
      *&v17 = v14;
      v18 = 6;
      sub_1C1B51530();
      v15 = v13;
      sub_1C1B95788();
    }

    *&v17 = *(v3 + OBJC_IVAR___APPCContentRepresentation_adPolicyData);
    v18 = 7;
    type metadata accessor for AdPolicyData();
    sub_1C1B51D08(&qword_1EDE6C2F0, type metadata accessor for AdPolicyData);
    sub_1C1B95788();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B4FE30()
{
  result = qword_1EDE6C240;
  if (!qword_1EDE6C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C240);
  }

  return result;
}

unint64_t sub_1C1B4FE84()
{
  result = qword_1EDE6BF00;
  if (!qword_1EDE6BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF00);
  }

  return result;
}

unint64_t sub_1C1B4FED8()
{
  result = qword_1EBF09570;
  if (!qword_1EBF09570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09570);
  }

  return result;
}

uint64_t sub_1C1B4FF2C(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 7368801;
        case 7:
          return 0x73726F736E6F7073;
        case 8:
          return 0x686372616573;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      return 0x65766974616ELL;
    }

    return 0x72656E6E6162;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6974737265746E69;
      }

LABEL_19:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }

    return 0x72656E6E6162;
  }

  if (a1 == 2)
  {
    return 0x6F69647561;
  }

  else
  {
    return 0x6F65646976;
  }
}

unint64_t AdPrivacyMarkerType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C1B50208@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result - 1101) < 2 || v2 == 0)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t ContentRepresentation.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentRepresentation_identifier);
  v2 = *(v0 + OBJC_IVAR___APPCContentRepresentation_identifier + 8);

  return v1;
}

uint64_t ContentRepresentation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCContentRepresentation_id;
  v4 = sub_1C1B945F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ContentRepresentation.adSize.getter()
{
  result = *(v0 + OBJC_IVAR___APPCContentRepresentation_adSize);
  v2 = *(v0 + OBJC_IVAR___APPCContentRepresentation_adSize + 8);
  return result;
}

void *ContentRepresentation.tapAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentRepresentation_tapAction);
  v2 = v1;
  return v1;
}

void *ContentRepresentation.adPolicyData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentRepresentation_adPolicyData);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1B505FC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6F69746341706174;
  if (v1 != 6)
  {
    v3 = 0x7963696C6F506461;
  }

  v4 = 0x657A69536461;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 == 2)
  {
    v5 = 0x5064657269736564;
  }

  if (*v0)
  {
    v2 = 0x657079546461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B50710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B51954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B50738(uint64_t a1)
{
  v2 = sub_1C1B4F854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B50774(uint64_t a1)
{
  v2 = sub_1C1B4F854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ContentRepresentation.__allocating_init(id:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  v19 = sub_1C1B945A8();
  v20 = &v18[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v20 = v19;
  v20[1] = v21;
  v22 = OBJC_IVAR___APPCContentRepresentation_id;
  v23 = sub_1C1B945F8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v18[v22], a1, v23);
  *&v18[OBJC_IVAR___APPCContentRepresentation_adType] = a2;
  *&v18[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = a3;
  *&v18[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = a4;
  *&v18[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = a5;
  v25 = &v18[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v25 = a8;
  v25[1] = a9;
  *&v18[OBJC_IVAR___APPCContentRepresentation_tapAction] = a6;
  *&v18[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = a7;
  v30.receiver = v18;
  v30.super_class = v10;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  (*(v24 + 8))(a1, v23);
  return v26;
}

id ContentRepresentation.__allocating_init(identifier:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v11 = v10;
  v64 = a3;
  v65 = a8;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v62 = a2;
  v16 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v57 - v18;
  v20 = sub_1C1B945F8();
  v21 = *(v20 - 8);
  v66 = v20;
  v67 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v63 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v58 = &v57 - v25;
  v26 = objc_allocWithZone(v10);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C1B94BE8();
  sub_1C1AB4454(v27, qword_1EDE6D058);
  v28 = sub_1C1B94BC8();
  v29 = sub_1C1B95128();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1C1AA2000, v28, v29, "Created a content representation using a deprecated initializer", v30, 2u);
    v31 = v30;
    v11 = v10;
    MEMORY[0x1C6908230](v31, -1, -1);
  }

  v32 = v62;
  sub_1C1B94598();
  v34 = v66;
  v33 = v67;
  if ((*(v67 + 48))(v19, 1, v66) == 1)
  {
    v58 = a1;
    sub_1C1AA7C8C(v19, &unk_1EBF098E0, &qword_1C1BA22A0);

    v35 = v32;
    v36 = sub_1C1B94BC8();
    v37 = sub_1C1B95128();

    v38 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v11;
      v41 = v40;
      v68 = v40;
      *v39 = 136315138;
      v42 = sub_1C1AC7650(v58, v35, &v68);

      *(v39 + 4) = v42;
      v34 = v66;
      _os_log_impl(&dword_1C1AA2000, v38, v37, "Tried to create a content representation with an invalid id: %s", v39, 0xCu);
      sub_1C1AA86F8(v41);
      v43 = v41;
      v11 = v57;
      MEMORY[0x1C6908230](v43, -1, -1);
      v44 = v39;
      v33 = v67;
      MEMORY[0x1C6908230](v44, -1, -1);
    }

    else
    {
    }

    v47 = v63;
    sub_1C1B945E8();
    (*(v33 + 32))(&v26[OBJC_IVAR___APPCContentRepresentation_id], v47, v34);
  }

  else
  {

    v45 = *(v67 + 32);
    v46 = v58;
    v45(v58, v19, v34);
    v45(&v26[OBJC_IVAR___APPCContentRepresentation_id], v46, v34);
    v33 = v67;
    v47 = v63;
  }

  (*(v33 + 16))(v47, &v26[OBJC_IVAR___APPCContentRepresentation_id], v34);
  v48 = sub_1C1B945A8();
  v49 = v33;
  v50 = v48;
  v52 = v51;
  (*(v49 + 8))(v47, v34);
  v53 = &v26[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v53 = v50;
  v53[1] = v52;
  *&v26[OBJC_IVAR___APPCContentRepresentation_adType] = v64;
  *&v26[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = a4;
  v54 = v60;
  *&v26[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v59;
  *&v26[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v54;
  v55 = &v26[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v55 = a9;
  v55[1] = a10;
  *&v26[OBJC_IVAR___APPCContentRepresentation_tapAction] = v61;
  *&v26[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v65;
  v69.receiver = v26;
  v69.super_class = v11;
  return objc_msgSendSuper2(&v69, sel_init);
}

id ContentRepresentation.init(identifier:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, double a9, double a10)
{
  v11 = v10;
  v64 = a6;
  v65 = a7;
  v62 = a4;
  v63 = a5;
  v61 = a3;
  v17 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v58 - v19;
  v21 = sub_1C1B945F8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v60 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v59 = v58 - v26;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C1B94BE8();
  v58[1] = sub_1C1AB4454(v27, qword_1EDE6D058);
  v28 = sub_1C1B94BC8();
  v29 = sub_1C1B95128();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v22;
    v31 = a1;
    v32 = v21;
    v33 = a2;
    v34 = a8;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C1AA2000, v28, v29, "Created a content representation using a deprecated initializer", v35, 2u);
    v36 = v35;
    a8 = v34;
    a2 = v33;
    v21 = v32;
    a1 = v31;
    v22 = v30;
    MEMORY[0x1C6908230](v36, -1, -1);
  }

  sub_1C1B94598();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1C1AA7C8C(v20, &unk_1EBF098E0, &qword_1C1BA22A0);

    v37 = sub_1C1B94BC8();
    v38 = sub_1C1B95128();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v59 = a8;
      v40 = v39;
      v41 = swift_slowAlloc();
      v42 = a1;
      v43 = v41;
      v66 = v41;
      *v40 = 136315138;
      v44 = sub_1C1AC7650(v42, a2, &v66);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1C1AA2000, v37, v38, "Tried to create a content representation with an invalid id: %s", v40, 0xCu);
      sub_1C1AA86F8(v43);
      MEMORY[0x1C6908230](v43, -1, -1);
      v45 = v40;
      a8 = v59;
      MEMORY[0x1C6908230](v45, -1, -1);
    }

    else
    {
    }

    v48 = v60;
    sub_1C1B945E8();
    (*(v22 + 32))(&v11[OBJC_IVAR___APPCContentRepresentation_id], v48, v21);
  }

  else
  {

    v46 = *(v22 + 32);
    v47 = v59;
    v46(v59, v20, v21);
    v46(&v11[OBJC_IVAR___APPCContentRepresentation_id], v47, v21);
    v48 = v60;
  }

  (*(v22 + 16))(v48, &v11[OBJC_IVAR___APPCContentRepresentation_id], v21);
  v49 = sub_1C1B945A8();
  v51 = v50;
  (*(v22 + 8))(v48, v21);
  v52 = &v11[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v52 = v49;
  v52[1] = v51;
  v53 = v62;
  *&v11[OBJC_IVAR___APPCContentRepresentation_adType] = v61;
  *&v11[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v53;
  v54 = v64;
  *&v11[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v63;
  *&v11[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v54;
  v55 = &v11[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v55 = a9;
  v55[1] = a10;
  *&v11[OBJC_IVAR___APPCContentRepresentation_tapAction] = v65;
  *&v11[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = a8;
  v56 = type metadata accessor for ContentRepresentation();
  v67.receiver = v11;
  v67.super_class = v56;
  return objc_msgSendSuper2(&v67, sel_init);
}

id ContentRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContentRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B514A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1B51530()
{
  result = qword_1EDE6AD60;
  if (!qword_1EDE6AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD60);
  }

  return result;
}

unint64_t sub_1C1B51588()
{
  result = qword_1EBF09578;
  if (!qword_1EBF09578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09578);
  }

  return result;
}

unint64_t sub_1C1B515E0()
{
  result = qword_1EBF09580;
  if (!qword_1EBF09580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09580);
  }

  return result;
}

unint64_t sub_1C1B51638()
{
  result = qword_1EBF09588;
  if (!qword_1EBF09588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09588);
  }

  return result;
}

uint64_t sub_1C1B517A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1B517F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1B51850()
{
  result = qword_1EBF09590;
  if (!qword_1EBF09590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09590);
  }

  return result;
}

unint64_t sub_1C1B518A8()
{
  result = qword_1EDE6C2F8;
  if (!qword_1EDE6C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2F8);
  }

  return result;
}

unint64_t sub_1C1B51900()
{
  result = qword_1EDE6C300;
  if (!qword_1EDE6C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C300);
  }

  return result;
}

uint64_t sub_1C1B51954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5064657269736564 && a2 == 0xEF6E6F697469736FLL || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C1BA6B70 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA6B90 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A69536461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7963696C6F506461 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C1B51C0C()
{
  result = qword_1EDE6C238;
  if (!qword_1EDE6C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C238);
  }

  return result;
}

unint64_t sub_1C1B51C60()
{
  result = qword_1EBF09598;
  if (!qword_1EBF09598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09598);
  }

  return result;
}

unint64_t sub_1C1B51CB4()
{
  result = qword_1EDE6BEF8;
  if (!qword_1EDE6BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEF8);
  }

  return result;
}

uint64_t sub_1C1B51D08(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AdContentState.description.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x616974696E696E75;
    }

    else
    {
      return 0x696C616974696E69;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v8 = *v5;

    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    v9 = *(a1 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v9 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v9);
    return 0x746E65746E6F63;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0x6E65746E6F436F6ELL;
  }
}

uint64_t sub_1C1B51F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdContent();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_1C1AC204C(v14, v11);
      sub_1C1AC204C(v15, v8);
      if (*(v11 + 1) == *(v8 + 1) && *(v11 + 2) == *(v8 + 2))
      {
        sub_1C1AC20B0(v8);
        sub_1C1AC20B0(v11);
      }

      else
      {
        v18 = sub_1C1B95888();
        sub_1C1AC20B0(v8);
        sub_1C1AC20B0(v11);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t sub_1C1B520B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v9;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v11)
    {
      goto LABEL_29;
    }

    v13 = v8 & 0xFFFFFFFFFFFFFF8;
    v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v45 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 < 0)
    {
      v13 = v8;
    }

    if (v10)
    {
      v14 = v13;
    }

    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v44 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    if (a2 >> 62)
    {
      v16 = v15;
    }

    if (v14 == v16)
    {
LABEL_29:
      v25 = 1;
      return v25 & 1;
    }

    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v8) & 0xC000000000000001) != 0)
    {
      v51 = a2 & 0xC000000000000001;
      v52 = v8 & 0xC000000000000001;
      v49 = (v4 + 8);
      v50 = (v4 + 16);
      v10 = 4;
      v47 = v8;
      v48 = a2;
      v46 = v11;
      v17 = v54;
      while (1)
      {
        v18 = v10 - 4;
        v19 = v10 - 3;
        if (__OFADD__(v10 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v52)
        {
          v4 = MEMORY[0x1C6907490](v10 - 4);
          if (!v51)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v18 >= *(v45 + 16))
          {
            goto LABEL_42;
          }

          v4 = *(v8 + 8 * v10);

          if (!v51)
          {
LABEL_24:
            if (v18 >= *(v44 + 16))
            {
              goto LABEL_43;
            }

            v20 = *(a2 + 8 * v10);

            goto LABEL_26;
          }
        }

        v20 = MEMORY[0x1C6907490](v10 - 4, a2);
LABEL_26:
        v21 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
        swift_beginAccess();
        v22 = *v50;
        (*v50)(v17, v4 + v21, v3);
        v23 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
        swift_beginAccess();
        v24 = v53;
        v22(v53, v20 + v23, v3);
        v25 = sub_1C1B945C8();

        v26 = *v49;
        (*v49)(v24, v3);
        v26(v17, v3);
        if (v25)
        {
          ++v10;
          v8 = v47;
          a2 = v48;
          if (v19 != v46)
          {
            continue;
          }
        }

        return v25 & 1;
      }
    }

    v27 = (v8 + 32);
    v28 = (a2 + 32);
    v29 = *(v45 + 16);
    v30 = *(v44 + 16);
    v49 = (v4 + 8);
    v50 = (v4 + 16);
    v31 = v11 - 1;
    while (1)
    {
      if (!v29)
      {
        goto LABEL_40;
      }

      if (!v30)
      {
        break;
      }

      v32 = *v27;
      v33 = *v28;
      v51 = (v28 + 1);
      v52 = (v27 + 1);
      v34 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      v35 = *v50;
      v36 = v32 + v34;
      v10 = v53;
      v4 = v54;
      (*v50)(v54, v36, v3);
      v37 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      v35(v10, v33 + v37, v3);
      v25 = sub_1C1B945C8();
      a2 = *v49;
      (*v49)(v10, v3);
      (a2)(v4, v3);
      v39 = v31-- != 0;
      if (v25)
      {
        --v30;
        --v29;
        v28 = v51;
        v27 = v52;
        if (v39)
        {
          continue;
        }
      }

      return v25 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v40 = v8;
    v41 = sub_1C1B953A8();
    v8 = v40;
    v11 = v41;
  }

  v42 = v8;
  result = sub_1C1B953A8();
  v8 = v42;
  if (v11 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v25 = 0;
  return v25 & 1;
}

uint64_t static AdContentState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v58 = *(a3 - 8);
  v4 = *(v58 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v53 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v53 - v9;
  v59 = v10;
  v56 = v11;
  v12 = type metadata accessor for AdContentState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = &v53 - v24;
  v26 = (&v53 + *(v23 + 48) - v24);
  v57 = v13;
  v27 = *(v13 + 16);
  v27(&v53 - v24, a1, v12);
  v27(v26, v60, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_15;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_15:
      v45 = 0;
      v12 = TupleTypeMetadata2;
      goto LABEL_16;
    }

    v45 = 1;
    v21 = v57;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v27(v19, v25, v12);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = v58;
    if (!v29)
    {
      v48 = v53;
      v49 = v59;
      (*(v58 + 32))(v53, v26, v59);
      v50 = *(v56 + 8);
      v45 = sub_1C1B94D68();
      v51 = *(v30 + 8);
      v51(v48, v49);
      v51(v19, v49);
      v21 = v57;
      goto LABEL_16;
    }

    (*(v58 + 8))(v19, v59);
    goto LABEL_15;
  }

  v27(v17, v25, v12);
  v31 = *v17;
  sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
  v32 = v59;
  v33 = *(swift_getTupleTypeMetadata2() + 48);
  v34 = swift_getEnumCaseMultiPayload();
  v35 = v58;
  if (v34 != 1)
  {
    (*(v58 + 8))(v17 + v33, v32);

    goto LABEL_15;
  }

  v36 = v32;
  v37 = *v26;
  v60 = v31;
  v38 = *(v58 + 32);
  v39 = v17 + v33;
  v40 = v55;
  v38(v55, v39, v36);
  v41 = v26 + v33;
  v42 = v54;
  v38(v54, v41, v36);
  v43 = sub_1C1B51F30(v60, v37);

  if (v43)
  {
    v44 = *(v56 + 8);
    v45 = sub_1C1B94D68();
    v46 = *(v35 + 8);
    v46(v42, v36);
    v46(v40, v36);
  }

  else
  {
    v52 = *(v35 + 8);
    v52(v42, v36);
    v52(v40, v36);
    v45 = 0;
  }

  v21 = v57;
LABEL_16:
  (*(v21 + 8))(v25, v12);
  return v45 & 1;
}

uint64_t sub_1C1B52AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1B52B50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_27;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v11 = ((~(-1 << v8) + a2 - v6) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v5);
      if (v6 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v12) + 1;
}

void sub_1C1B52CC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v8 = 253;
  }

  v9 = v6 + 1;
  if (v8 >= a3)
  {
    v10 = 0;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v6] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v10 = 1;
  if (v9 <= 3)
  {
    v11 = ((~(-1 << (8 * v9)) + a3 - v8) >> (8 * v9)) + 1;
    v12 = HIWORD(v11);
    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v11 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v10 = 4;
    }

    else
    {
      v10 = v14;
    }
  }

  if (v8 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v15 = ~v8 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v15;
    v16 = 1;
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v16 = (v15 >> (8 * v9)) + 1;
  if (v6 == -1)
  {
LABEL_37:
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v17 = v15 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_37;
  }

  if (v9 == 2)
  {
    *a1 = v17;
    if (v10 > 1)
    {
LABEL_41:
      if (v10 == 2)
      {
        *&a1[v9] = v16;
      }

      else
      {
        *&a1[v9] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v10 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v10)
  {
    a1[v9] = v16;
  }
}

uint64_t sub_1C1B52ED4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE900000000000079;
    v13 = 0x6574736575716572;
    if (a1 == 2)
    {
      v14 = 0xE900000000000072;
    }

    else
    {
      v13 = 0x746E6F437377656ELL;
      v14 = 0xEB00000000747865;
    }

    v15 = 0x6C6F686563616C70;
    if (a1)
    {
      v12 = 0xEC00000073726564;
    }

    else
    {
      v15 = 0x726F746E65766E69;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x74696D696CLL;
    v6 = 0xE800000000000000;
    v7 = 0x676E696863746566;
    if (a1 != 7)
    {
      v7 = 0x676E6974696177;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x65726F7453707061;
    v9 = 0xEF747865746E6F43;
    if (a1 != 4)
    {
      v8 = 0xD000000000000011;
      v9 = 0x80000001C1BA58E0;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (v10 != 0x6574736575716572)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v2 = 0xEB00000000747865;
        if (v10 != 0x746E6F437377656ELL)
        {
          goto LABEL_53;
        }
      }
    }

    else if (a2)
    {
      v2 = 0xEC00000073726564;
      if (v10 != 0x6C6F686563616C70)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v2 = 0xE900000000000079;
      if (v10 != 0x726F746E65766E69)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xEF747865746E6F43;
      if (v10 != 0x65726F7453707061)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v2 = 0x80000001C1BA58E0;
      if (v10 != 0xD000000000000011)
      {
LABEL_53:
        v16 = sub_1C1B95888();
        goto LABEL_54;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0xE500000000000000;
    if (v10 != 0x74696D696CLL)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 7)
  {
    v2 = 0xE800000000000000;
    if (v10 != 0x676E696863746566)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (v10 != 0x676E6974696177)
    {
      goto LABEL_53;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_53;
  }

  v16 = 1;
LABEL_54:

  return v16 & 1;
}

uint64_t sub_1C1B531CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xEE00726569666974;
  v5 = 0x654D73656E755469;
  if (a1 == 2)
  {
    v5 = 0x6E6564496D616461;
  }

  else
  {
    v4 = 0xEE00617461646174;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x80000001C1BA56E0;
  }

  else
  {
    v6 = 7107189;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E6564496D616461;
    }

    else
    {
      v11 = 0x654D73656E755469;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00726569666974;
    }

    else
    {
      v10 = 0xEE00617461646174;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 7107189;
    }

    if (a2)
    {
      v10 = 0x80000001C1BA56E0;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1C1B95888();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1C1B5333C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6565667265707573;
  v5 = 0xEE003179656B5F64;
  if (a1 != 4)
  {
    v4 = 0x6F72677265707573;
    v5 = 0xEF3179656B5F7075;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = v4;
  }

  if (a1 == 3)
  {
    v5 = 0x80000001C1BA5640;
  }

  v7 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v3 = 0x80000001C1BA5610;
  }

  else
  {
    v7 = 0x656372756F73;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (!v2)
  {
    v3 = 0x80000001C1BA55F0;
  }

  if (v2 <= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x80000001C1BA5640;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_40;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEE003179656B5F64;
      if (v9 != 0x6565667265707573)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v11 = 0xEF3179656B5F7075;
      if (v9 != 0x6F72677265707573)
      {
LABEL_40:
        v12 = sub_1C1B95888();
        goto LABEL_41;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0x80000001C1BA5610;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656372756F73)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0x80000001C1BA55F0;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_40;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_1C1B53540(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E69646ELL;
  v3 = 0x614C686372616573;
  v4 = a1;
  v5 = 0x6F6C537961646F74;
  v6 = 0xEA00000000003374;
  if (a1 == 5)
  {
    v6 = 0xEA00000000003274;
  }

  else
  {
    v5 = 0x6F6C537961646F74;
  }

  v7 = 0x50746375646F7270;
  v8 = 0xEB00000000656761;
  if (a1 != 3)
  {
    v7 = 0x6F6C537961646F74;
    v8 = 0xEA00000000003174;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6552686372616573;
  v10 = 0xED000073746C7573;
  if (a1 != 1)
  {
    v9 = 0x6F44676E69727564;
    v10 = 0xEE0064616F6C6E77;
  }

  if (!a1)
  {
    v9 = 0x614C686372616573;
    v10 = 0xED0000676E69646ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED000073746C7573;
        if (v11 != 0x6552686372616573)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEE0064616F6C6E77;
        if (v11 != 0x6F44676E69727564)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000003274;
        if (v11 != 0x6F6C537961646F74)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEA00000000003374;
        if (v11 != 0x6F6C537961646F74)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEB00000000656761;
      if (v11 != 0x50746375646F7270)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6F6C537961646F74;
    v2 = 0xEA00000000003174;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1C1B95888();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1C1B537B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "promotedContentIdentifier";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "tive";
      v4 = 0xD000000000000010;
    }

    else
    {
      v5 = "primitiveCreator";
      v4 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000019;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "DedupeState";
    }

    else
    {
      v5 = "promotedContentIdentifier";
    }
  }

  if (a2 > 1u)
  {
    v2 = "tive";
    v6 = "primitiveCreator";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  else
  {
    v6 = "DedupeState";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000019;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C1B95888();
  }

  return v10 & 1;
}

uint64_t sub_1C1B538E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7364980;
  v3 = a1;
  v4 = 0xE300000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x706154646961726DLL;
  if (a1 != 6)
  {
    v6 = 0x6B6E694C70656564;
    v5 = 0xEB00000000706154;
  }

  v7 = 0x6154646E61707865;
  v8 = 0xE900000000000070;
  if (a1 != 4)
  {
    v7 = 0x616572747374756FLL;
    v8 = 0xEC0000007061546DLL;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x7261646E656C6163;
  v10 = 0xEB00000000706154;
  if (a1 != 2)
  {
    v9 = 0x70615465726F7473;
    v10 = 0xE800000000000000;
  }

  v11 = 0x706154626577;
  if (a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v11 = 7364980;
  }

  if (a1 > 1u)
  {
    v4 = v10;
  }

  else
  {
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v14 = 0xE600000000000000;
        v2 = 0x706154626577;
      }

      else
      {
        v14 = 0xE300000000000000;
      }

      goto LABEL_37;
    }

    if (a2 != 2)
    {
      v14 = 0xE800000000000000;
      v2 = 0x70615465726F7473;
      goto LABEL_37;
    }

    v2 = 0x7261646E656C6163;
LABEL_36:
    v14 = 0xEB00000000706154;
    goto LABEL_37;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v14 = 0xE800000000000000;
      v2 = 0x706154646961726DLL;
      goto LABEL_37;
    }

    v2 = 0x6B6E694C70656564;
    goto LABEL_36;
  }

  if (a2 == 4)
  {
    v2 = 0x6154646E61707865;
    v14 = 0xE900000000000070;
  }

  else
  {
    v2 = 0x616572747374756FLL;
    v14 = 0xEC0000007061546DLL;
  }

LABEL_37:
  if (v12 == v2 && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C1B95888();
  }

  return v15 & 1;
}

uint64_t sub_1C1B53B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49656C6369747261;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7369747265766461;
    }

    else
    {
      v5 = 0x6E676961706D6163;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00656D614E7265;
    }

    else
    {
      v6 = 0xEC00000061746144;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x54656C6369747261;
    }

    else
    {
      v5 = 0x49656C6369747261;
    }

    if (v4)
    {
      v6 = 0xEC000000656C7469;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x7369747265766461;
  v8 = 0xEE00656D614E7265;
  if (a2 != 2)
  {
    v7 = 0x6E676961706D6163;
    v8 = 0xEC00000061746144;
  }

  if (a2)
  {
    v3 = 0x54656C6369747261;
    v2 = 0xEC000000656C7469;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

uint64_t sub_1C1B53CB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x647261646E617473;
    }

    else
    {
      v3 = 7958113;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x656C62756F64;
  }

  else if (a1 == 3)
  {
    v3 = 0x65526D756964656DLL;
    v4 = 0xEF656C676E617463;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x656772616CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x647261646E617473;
    }

    else
    {
      v9 = 7958113;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x65526D756964656DLL;
    v6 = 0xEF656C676E617463;
    if (a2 != 3)
    {
      v5 = 0x656772616CLL;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x656C62756F64;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1C1B95888();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1C1B53E44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 2)
    {
      v4 = 0x80000001C1BA5750;
    }

    else
    {
      v4 = 0x80000001C1BA5770;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E6564496D616461;
    }

    else
    {
      v3 = 0x6761546461;
    }

    if (v2)
    {
      v4 = 0xEE00726569666974;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v6 = 0x80000001C1BA5750;
    }

    else
    {
      v6 = 0x80000001C1BA5770;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6E6564496D616461;
    }

    else
    {
      v5 = 0x6761546461;
    }

    if (a2)
    {
      v6 = 0xEE00726569666974;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1C1B95888();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1C1B53F94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684632949;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657A69536461;
    }

    else
    {
      v4 = 0x6465746F6D6F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEF746E65746E6F43;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x657079546461;
    }

    else
    {
      v4 = 1684632949;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x657A69536461;
  if (a2 != 2)
  {
    v8 = 0x6465746F6D6F7270;
    v7 = 0xEF746E65746E6F43;
  }

  if (a2)
  {
    v2 = 0x657079546461;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

uint64_t sub_1C1B540D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00004C52557465;
  v3 = 0x7373416F65646976;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7275446F65646976;
    }

    else
    {
      v5 = 0x7373416F65646976;
    }

    if (v4)
    {
      v6 = 0xED00006E6F697461;
    }

    else
    {
      v6 = 0xED00004C52557465;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x65746172746962;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74536C616E676973;
    }

    else
    {
      v5 = 0x697463656E6E6F63;
    }

    if (v4 == 3)
    {
      v6 = 0xEE006874676E6572;
    }

    else
    {
      v6 = 0xEE00657079546E6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x65746172746962;
  v9 = 0x74536C616E676973;
  v10 = 0xEE006874676E6572;
  if (a2 != 3)
  {
    v9 = 0x697463656E6E6F63;
    v10 = 0xEE00657079546E6FLL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x7275446F65646976;
    v2 = 0xED00006E6F697461;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C1B95888();
  }

  return v13 & 1;
}

uint64_t sub_1C1B542AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726564;
  v3 = 0x6C6F686563616C70;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6D6E6F7269766E65;
    v12 = 0xEB00000000746E65;
    if (a1 != 6)
    {
      v11 = 0x6973736572706D69;
      v12 = 0xEC00000064496E6FLL;
    }

    v13 = 0xE800000000000000;
    v14 = 0x7265766965636572;
    if (a1 != 4)
    {
      v14 = 0x68636E617262;
      v13 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x80000001C1BA4CF0;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x6C6F686563616C70;
    }

    if (a1 != 2)
    {
      v5 = 0xEB00000000726564;
    }

    v7 = 0x80000001C1BA4CB0;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v8 = 0xD000000000000011;
      v7 = 0x80000001C1BA4CD0;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEB00000000746E65;
        if (v9 != 0x6D6E6F7269766E65)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0xEC00000064496E6FLL;
        if (v9 != 0x6973736572706D69)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x7265766965636572)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v2 = 0xE600000000000000;
    v3 = 0x68636E617262;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0x80000001C1BA4CB0;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v15 = "contextIdentifier";
LABEL_40:
      v2 = (v15 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v15 = "journeyIdentifier";
      goto LABEL_40;
    }
  }

  if (v9 != v3)
  {
LABEL_47:
    v16 = sub_1C1B95888();
    goto LABEL_48;
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_1C1B54538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x746E6572727563;
  v7 = 0xE400000000000000;
  v8 = 1954047342;
  if (a1 != 4)
  {
    v8 = 0x746E6563616A6461;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x657A695378616DLL;
  if (a1 != 1)
  {
    v10 = 0x6574736575716572;
    v9 = 0xEB00000000644164;
  }

  if (!a1)
  {
    v10 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x746E6572727563)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047342)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x746E6563616A6461)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x657A695378616DLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6574736575716572;
      v2 = 0xEB00000000644164;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1C1B95888();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1C1B54710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F65646976;
    }

    else
    {
      v3 = 0x72656E6E6162;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x65766974616ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0x614C686372616573;
    v4 = 0xED0000676E69646ELL;
  }

  else
  {
    v3 = 0x614C746E65696C63;
    v4 = 0xEC00000074756F79;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F65646976;
    }

    else
    {
      v9 = 0x72656E6E6162;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x614C686372616573;
    v6 = 0xED0000676E69646ELL;
    if (a2 != 3)
    {
      v5 = 0x614C746E65696C63;
      v6 = 0xEC00000074756F79;
    }

    if (a2 == 2)
    {
      v7 = 0x65766974616ELL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1C1B95888();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1C1B54910()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B54A24()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B54B24()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B54C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B55998();
  *a2 = result;
  return result;
}

void sub_1C1B54C64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00004C52557465;
  v4 = 0x7373416F65646976;
  v5 = 0xE700000000000000;
  v6 = 0x65746172746962;
  v7 = 0xEE006874676E6572;
  v8 = 0x74536C616E676973;
  if (v2 != 3)
  {
    v8 = 0x697463656E6E6F63;
    v7 = 0xEE00657079546E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7275446F65646976;
    v3 = 0xED00006E6F697461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C1B54D34()
{
  v1 = *v0;
  v2 = 0x7373416F65646976;
  v3 = 0x65746172746962;
  v4 = 0x74536C616E676973;
  if (v1 != 3)
  {
    v4 = 0x697463656E6E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7275446F65646976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B54E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B55998();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B54E28(uint64_t a1)
{
  v2 = sub_1C1B552C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B54E64(uint64_t a1)
{
  v2 = sub_1C1B552C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *OutstreamVideoInfo.init(from:)(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_1C1AC1F08(&qword_1EBF095A0, &qword_1C1BA28C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B552C8();
  sub_1C1B95A08();
  if (v1)
  {
    v23 = v24;
    sub_1C1AA86F8(a1);
    type metadata accessor for OutstreamVideoInfo();
    v15 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    sub_1C1B944A8();
    v26 = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0);
    v14 = v7;
    sub_1C1B95678();
    v18 = v24;
    sub_1C1AEF258(v6, v24 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL);
    v26 = 1;
    sub_1C1B956B8();
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *&v18[OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration] = v20;
    v26 = 2;
    sub_1C1B956B8();
    *&v18[OBJC_IVAR___APPCOutstreamVideoInfo_bitrate] = v21;
    v26 = 3;
    *&v18[OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength] = sub_1C1B956E8();
    v26 = 4;
    *&v18[OBJC_IVAR___APPCOutstreamVideoInfo_connectionType] = sub_1C1B956D8();
    v22 = type metadata accessor for OutstreamVideoInfo();
    v25.receiver = v18;
    v25.super_class = v22;
    v23 = objc_msgSendSuper2(&v25, sel_init);
    (*(v13 + 8))(v11, v14);
    sub_1C1AA86F8(a1);
  }

  return v23;
}

unint64_t sub_1C1B552C8()
{
  result = qword_1EBF095A8;
  if (!qword_1EBF095A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF095A8);
  }

  return result;
}

uint64_t type metadata accessor for OutstreamVideoInfo()
{
  result = qword_1EDE6C0E0;
  if (!qword_1EDE6C0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B55368(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF095B0, &qword_1C1BA28D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B552C8();
  sub_1C1B95A18();
  v15[15] = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0);
  sub_1C1B95788();
  if (!v2)
  {
    [*(v3 + OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration) doubleValue];
    v15[14] = 1;
    sub_1C1B957C8();
    v11 = *(v3 + OBJC_IVAR___APPCOutstreamVideoInfo_bitrate);
    v15[13] = 2;
    sub_1C1B957C8();
    v12 = *(v3 + OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength);
    v15[12] = 3;
    sub_1C1B957F8();
    v13 = *(v3 + OBJC_IVAR___APPCOutstreamVideoInfo_connectionType);
    v15[11] = 4;
    sub_1C1B957E8();
  }

  return (*(v6 + 8))(v9, v5);
}