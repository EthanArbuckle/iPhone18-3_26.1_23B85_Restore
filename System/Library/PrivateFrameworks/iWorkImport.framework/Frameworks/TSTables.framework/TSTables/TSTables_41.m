void TST::TableModelArchive::~TableModelArchive(TST::TableModelArchive *this)
{
  sub_2215FC448(this);
  sub_2214DFCF8(this + 1);
  if (*(this + 17) >= 1)
  {
    v2 = *(this + 9);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 13) >= 1)
  {
    v5 = *(this + 7);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 9) >= 1)
  {
    v8 = *(this + 5);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }
}

{
  TST::TableModelArchive::~TableModelArchive(this);

  JUMPOUT(0x223DA1450);
}

TSCE::SpillOwnerArchive *sub_2215FC448(TSCE::SpillOwnerArchive *result)
{
  v1 = result;
  v2 = *(result + 10);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 11);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 12);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x223DA1450](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 13);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x223DA1450](v6, 0x1012C40EC159624);
  }

  if (v1 != &TST::_TableModelArchive_default_instance_)
  {
    v7 = *(v1 + 14);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = *(v1 + 15);
    if (v8)
    {
      TST::DataStore::~DataStore(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = *(v1 + 16);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = *(v1 + 17);
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = *(v1 + 18);
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = *(v1 + 19);
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x223DA1450]();
    }

    v13 = *(v1 + 20);
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x223DA1450]();
    }

    v14 = *(v1 + 21);
    if (v14)
    {
      TST::CellID::~CellID(v14);
      MEMORY[0x223DA1450]();
    }

    v15 = *(v1 + 22);
    if (v15)
    {
      TSP::Reference::~Reference(v15);
      MEMORY[0x223DA1450]();
    }

    v16 = *(v1 + 23);
    if (v16)
    {
      TSP::Reference::~Reference(v16);
      MEMORY[0x223DA1450]();
    }

    v17 = *(v1 + 24);
    if (v17)
    {
      TSP::Reference::~Reference(v17);
      MEMORY[0x223DA1450]();
    }

    v18 = *(v1 + 25);
    if (v18)
    {
      TSP::Reference::~Reference(v18);
      MEMORY[0x223DA1450]();
    }

    v19 = *(v1 + 26);
    if (v19)
    {
      TSP::Reference::~Reference(v19);
      MEMORY[0x223DA1450]();
    }

    v20 = *(v1 + 27);
    if (v20)
    {
      TSP::Reference::~Reference(v20);
      MEMORY[0x223DA1450]();
    }

    v21 = *(v1 + 28);
    if (v21)
    {
      TSP::Reference::~Reference(v21);
      MEMORY[0x223DA1450]();
    }

    v22 = *(v1 + 29);
    if (v22)
    {
      TSP::Reference::~Reference(v22);
      MEMORY[0x223DA1450]();
    }

    v23 = *(v1 + 30);
    if (v23)
    {
      TSP::Reference::~Reference(v23);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 31))
    {
      v24 = MEMORY[0x223D9FBD0]();
      MEMORY[0x223DA1450](v24, 0x1081C401753DA55);
    }

    v25 = *(v1 + 32);
    if (v25)
    {
      TST::TableSortOrderArchive::~TableSortOrderArchive(v25);
      MEMORY[0x223DA1450]();
    }

    v26 = *(v1 + 33);
    if (v26)
    {
      TST::SortRuleReferenceTrackerArchive::~SortRuleReferenceTrackerArchive(v26);
      MEMORY[0x223DA1450]();
    }

    v27 = *(v1 + 34);
    if (v27)
    {
      TSP::Reference::~Reference(v27);
      MEMORY[0x223DA1450]();
    }

    v28 = *(v1 + 35);
    if (v28)
    {
      TST::MergeOwnerArchive::~MergeOwnerArchive(v28);
      MEMORY[0x223DA1450]();
    }

    v29 = *(v1 + 36);
    if (v29)
    {
      TSP::Reference::~Reference(v29);
      MEMORY[0x223DA1450]();
    }

    v30 = *(v1 + 37);
    if (v30)
    {
      TSP::Reference::~Reference(v30);
      MEMORY[0x223DA1450]();
    }

    v31 = *(v1 + 38);
    if (v31)
    {
      TST::StructuredTextImportRecord::~StructuredTextImportRecord(v31);
      MEMORY[0x223DA1450]();
    }

    v32 = *(v1 + 39);
    if (v32)
    {
      TSP::Reference::~Reference(v32);
      MEMORY[0x223DA1450]();
    }

    v33 = *(v1 + 40);
    if (v33)
    {
      TSP::Reference::~Reference(v33);
      MEMORY[0x223DA1450]();
    }

    v34 = *(v1 + 41);
    if (v34)
    {
      TSP::Reference::~Reference(v34);
      MEMORY[0x223DA1450]();
    }

    v35 = *(v1 + 42);
    if (v35)
    {
      TSP::Reference::~Reference(v35);
      MEMORY[0x223DA1450]();
    }

    v36 = *(v1 + 43);
    if (v36)
    {
      TSP::Reference::~Reference(v36);
      MEMORY[0x223DA1450]();
    }

    v37 = *(v1 + 44);
    if (v37)
    {
      TSP::Reference::~Reference(v37);
      MEMORY[0x223DA1450]();
    }

    v38 = *(v1 + 45);
    if (v38)
    {
      TSP::Reference::~Reference(v38);
      MEMORY[0x223DA1450]();
    }

    v39 = *(v1 + 46);
    if (v39)
    {
      TSP::Reference::~Reference(v39);
      MEMORY[0x223DA1450]();
    }

    v40 = *(v1 + 47);
    if (v40)
    {
      TSP::Reference::~Reference(v40);
      MEMORY[0x223DA1450]();
    }

    v41 = *(v1 + 48);
    if (v41)
    {
      TSP::Reference::~Reference(v41);
      MEMORY[0x223DA1450]();
    }

    v42 = *(v1 + 49);
    if (v42)
    {
      TST::HiddenStatesOwnerArchive::~HiddenStatesOwnerArchive(v42);
      MEMORY[0x223DA1450]();
    }

    v43 = *(v1 + 50);
    if (v43)
    {
      TSP::Reference::~Reference(v43);
      MEMORY[0x223DA1450]();
    }

    v44 = *(v1 + 51);
    if (v44)
    {
      TSP::Reference::~Reference(v44);
      MEMORY[0x223DA1450]();
    }

    v45 = *(v1 + 52);
    if (v45)
    {
      TSP::Reference::~Reference(v45);
      MEMORY[0x223DA1450]();
    }

    v46 = *(v1 + 53);
    if (v46)
    {
      TSP::Reference::~Reference(v46);
      MEMORY[0x223DA1450]();
    }

    v47 = *(v1 + 54);
    if (v47)
    {
      TSP::Reference::~Reference(v47);
      MEMORY[0x223DA1450]();
    }

    v48 = *(v1 + 55);
    if (v48)
    {
      TSP::Reference::~Reference(v48);
      MEMORY[0x223DA1450]();
    }

    v49 = *(v1 + 56);
    if (v49)
    {
      TSP::Reference::~Reference(v49);
      MEMORY[0x223DA1450]();
    }

    v50 = *(v1 + 57);
    if (v50)
    {
      TSP::Reference::~Reference(v50);
      MEMORY[0x223DA1450]();
    }

    v51 = *(v1 + 58);
    if (v51)
    {
      TSP::Reference::~Reference(v51);
      MEMORY[0x223DA1450]();
    }

    v52 = *(v1 + 59);
    if (v52)
    {
      TSP::Reference::~Reference(v52);
      MEMORY[0x223DA1450]();
    }

    v53 = *(v1 + 60);
    if (v53)
    {
      TST::CategoryOwnerArchive::~CategoryOwnerArchive(v53);
      MEMORY[0x223DA1450]();
    }

    v54 = *(v1 + 61);
    if (v54)
    {
      TST::PencilAnnotationOwnerArchive::~PencilAnnotationOwnerArchive(v54);
      MEMORY[0x223DA1450]();
    }

    v55 = *(v1 + 62);
    if (v55)
    {
      TSCE::HauntedOwnerArchive::~HauntedOwnerArchive(v55);
      MEMORY[0x223DA1450]();
    }

    v56 = *(v1 + 63);
    if (v56)
    {
      TSP::Reference::~Reference(v56);
      MEMORY[0x223DA1450]();
    }

    v57 = *(v1 + 64);
    if (v57)
    {
      TSP::Reference::~Reference(v57);
      MEMORY[0x223DA1450]();
    }

    v58 = *(v1 + 65);
    if (v58)
    {
      TSP::Reference::~Reference(v58);
      MEMORY[0x223DA1450]();
    }

    v59 = *(v1 + 66);
    if (v59)
    {
      TSP::Reference::~Reference(v59);
      MEMORY[0x223DA1450]();
    }

    v60 = *(v1 + 67);
    if (v60)
    {
      TSP::Reference::~Reference(v60);
      MEMORY[0x223DA1450]();
    }

    result = *(v1 + 68);
    if (result)
    {
      TSCE::SpillOwnerArchive::~SpillOwnerArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::TableModelArchive::default_instance(TST::TableModelArchive *this)
{
  if (atomic_load_explicit(scc_info_TableModelArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableModelArchive_default_instance_;
}

uint64_t *TST::TableModelArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = this + 2;
  v3 = *(this + 4);
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_142:
    v9 = this[11] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_146;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_146;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_150:
    v11 = this[13] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_154;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_154;
      }
    }

LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_155:
    this = TST::DataStore::Clear(*(v1 + 120));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_156;
  }

  v8 = this[10] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_142;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_142;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_146:
  v10 = this[12] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_150;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_150;
    }
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_154:
  this = TSP::Reference::Clear(this[14]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_155;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_156:
  this = TSP::Reference::Clear(*(v1 + 128));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::Reference::Clear(*(v1 + 136));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 144));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_92;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSP::Reference::Clear(*(v1 + 152));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = TSP::Reference::Clear(*(v1 + 160));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = TST::CellID::Clear(*(v1 + 168));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = TSP::Reference::Clear(*(v1 + 176));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = TSP::Reference::Clear(*(v1 + 184));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_96:
  this = TSP::Reference::Clear(*(v1 + 192));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    this = TSP::Reference::Clear(*(v1 + 200));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 208));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_100;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSP::Reference::Clear(*(v1 + 216));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_101;
  }

LABEL_100:
  this = TSP::Reference::Clear(*(v1 + 224));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = TSP::Reference::Clear(*(v1 + 232));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = TSP::Reference::Clear(*(v1 + 240));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = TSP::CFUUIDArchive::Clear(*(v1 + 248));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_104:
  this = TST::TableSortOrderArchive::Clear(*(v1 + 256));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    this = TST::SortRuleReferenceTrackerArchive::Clear(*(v1 + 264));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 272));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_135;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this = TST::MergeOwnerArchive::Clear(*(v1 + 280));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = TSP::Reference::Clear(*(v1 + 288));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = TSP::Reference::Clear(*(v1 + 296));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = TST::StructuredTextImportRecord::Clear(*(v1 + 304));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_139:
    this = TSP::Reference::Clear(*(v1 + 320));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_140;
  }

LABEL_138:
  this = TSP::Reference::Clear(*(v1 + 312));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_139;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_140:
  this = TSP::Reference::Clear(*(v1 + 328));
LABEL_40:
  v4 = *(v1 + 20);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    this = TSP::Reference::Clear(*(v1 + 336));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_108;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  this = TSP::Reference::Clear(*(v1 + 344));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = TSP::Reference::Clear(*(v1 + 352));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = TSP::Reference::Clear(*(v1 + 360));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = TSP::Reference::Clear(*(v1 + 368));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = TSP::Reference::Clear(*(v1 + 376));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_112:
  this = TSP::Reference::Clear(*(v1 + 384));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    this = TST::HiddenStatesOwnerArchive::Clear(*(v1 + 392));
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 400));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_116;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  this = TSP::Reference::Clear(*(v1 + 408));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = TSP::Reference::Clear(*(v1 + 416));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = TSP::Reference::Clear(*(v1 + 424));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = TSP::Reference::Clear(*(v1 + 432));
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = TSP::Reference::Clear(*(v1 + 440));
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_120:
  this = TSP::Reference::Clear(*(v1 + 448));
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    this = TSP::Reference::Clear(*(v1 + 456));
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 464));
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_124;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  this = TSP::Reference::Clear(*(v1 + 472));
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = TST::CategoryOwnerArchive::Clear(*(v1 + 480));
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = TST::PencilAnnotationOwnerArchive::Clear(*(v1 + 488));
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = TSCE::HauntedOwnerArchive::Clear(*(v1 + 496));
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = TSP::Reference::Clear(*(v1 + 504));
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_128:
  this = TSP::Reference::Clear(*(v1 + 512));
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    this = TSP::Reference::Clear(*(v1 + 520));
  }

LABEL_70:
  if ((v4 & 0x7000000) == 0)
  {
    goto LABEL_75;
  }

  if ((v4 & 0x1000000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 528));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  this = TSP::Reference::Clear(*(v1 + 536));
  if ((v4 & 0x4000000) != 0)
  {
LABEL_74:
    this = TSCE::SpillOwnerArchive::Clear(*(v1 + 544));
  }

LABEL_75:
  if (v4 >> 27)
  {
    *(v1 + 568) = 0;
    *(v1 + 552) = 0u;
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *(v1 + 596) = 0;
    *(v1 + 588) = 0;
    *(v1 + 572) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v1 + 616) = 0;
    *(v1 + 600) = 0u;
  }

  if ((v5 & 0x30000) != 0)
  {
    *(v1 + 628) = 0;
    *(v1 + 624) = 0;
  }

  *(v2 + 2) = 0;
  *v2 = 0;
  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

uint64_t *TST::MergeOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::CFUUIDArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TST::FormulaStoreArchive::Clear(*(v1 + 32));
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

uint64_t *TST::HiddenStatesOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::HiddenStatesArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::UUID::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

uint64_t *TST::CategoryOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::GroupByArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::UUID::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

uint64_t *TST::PencilAnnotationOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSP::CFUUIDArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TST::FormulaStoreArchive::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

unsigned __int8 *TST::TableModelArchive::_InternalSerialize(TST::TableModelArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 14);
  *v4 = 26;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 15);
  *v4 = 34;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TST::DataStore::_InternalSerialize(v13, v15, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 16);
    *v4 = 42;
    v20 = *(v19 + 5);
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = v4 + 3;
        do
        {
          *(v21 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++v21;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(v21 - 1) = v23;
      }

      else
      {
        v4[2] = v22;
        v21 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v20;
      v21 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  }

LABEL_37:
  v25 = *(this + 5);
  if ((v25 & 0x8000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v26 = *(this + 138);
    *v4 = 48;
    if (v26 <= 0x7F)
    {
      v4[1] = v26;
      v4 += 2;
      if ((v25 & 0x10000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v4[1] = v26 | 0x80;
    v27 = v26 >> 7;
    if (v26 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v27 | 0x80;
        v30 = v27 >> 7;
        ++v4;
        v31 = v27 >> 14;
        v27 >>= 7;
      }

      while (v31);
      *(v4 - 1) = v30;
      if ((v25 & 0x10000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v4[2] = v27;
    v4 += 3;
  }

  if ((v25 & 0x10000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(this + 139);
  *v4 = 56;
  if (v28 > 0x7F)
  {
    v4[1] = v28 | 0x80;
    v29 = v28 >> 7;
    if (v28 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v29 | 0x80;
        v32 = v29 >> 7;
        ++v4;
        v33 = v29 >> 14;
        v29 >>= 7;
      }

      while (v33);
      *(v4 - 1) = v32;
    }

    else
    {
      v4[2] = v29;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v28;
    v4 += 2;
  }

LABEL_59:
  if ((*(this + 16) & 2) != 0)
  {
    v4 = sub_22150C00C(a3, 8, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v34 = *(this + 5);
  if ((v34 & 0x20000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v36 = *(this + 140);
    *v4 = 72;
    if (v36 > 0x7F)
    {
      v4[1] = v36 | 0x80;
      v37 = v36 >> 7;
      if (v36 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v37 | 0x80;
          v39 = v37 >> 7;
          ++v4;
          v40 = v37 >> 14;
          v37 >>= 7;
        }

        while (v40);
        *(v4 - 1) = v39;
        if ((v34 & 0x40000000) != 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v4[2] = v37;
        v4 += 3;
        if ((v34 & 0x40000000) != 0)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      v4[1] = v36;
      v4 += 2;
      if ((v34 & 0x40000000) != 0)
      {
        goto LABEL_81;
      }
    }

LABEL_63:
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_64;
  }

  if ((v34 & 0x40000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_81:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 141);
  *v4 = 80;
  if (v41 > 0x7F)
  {
    v4[1] = v41 | 0x80;
    v42 = v41 >> 7;
    if (v41 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++v4;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(v4 - 1) = v43;
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v4[2] = v42;
      v4 += 3;
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
    v4[1] = v41;
    v4 += 2;
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 142);
  *v4 = 88;
  if (v35 > 0x7F)
  {
    v4[1] = v35 | 0x80;
    v38 = v35 >> 7;
    if (v35 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v38 | 0x80;
        v45 = v38 >> 7;
        ++v4;
        v46 = v38 >> 14;
        v38 >>= 7;
      }

      while (v46);
      *(v4 - 1) = v45;
    }

    else
    {
      v4[2] = v38;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v35;
    v4 += 2;
  }

LABEL_96:
  v47 = *(this + 6);
  if ((v47 & 0x1000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v48 = *(this + 607);
    *v4 = 96;
    v4[1] = v48;
    v4 += 2;
    if ((v47 & 0x10) == 0)
    {
LABEL_98:
      if ((v47 & 1) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_109;
    }
  }

  else if ((v47 & 0x10) == 0)
  {
    goto LABEL_98;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 596);
  *v4 = 104;
  v4[1] = v49;
  v4 += 2;
  if ((v47 & 1) == 0)
  {
LABEL_99:
    if ((v47 & 8) == 0)
    {
      goto LABEL_100;
    }

LABEL_120:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v54 = *(this + 148);
    *v4 = 120;
    if (v54 > 0x7F)
    {
      v4[1] = v54 | 0x80;
      v55 = v54 >> 7;
      if (v54 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v55 | 0x80;
          v56 = v55 >> 7;
          ++v4;
          v57 = v55 >> 14;
          v55 >>= 7;
        }

        while (v57);
        *(v4 - 1) = v56;
        if ((v47 & 2) != 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v4[2] = v55;
        v4 += 3;
        if ((v47 & 2) != 0)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
      v4[1] = v54;
      v4 += 2;
      if ((v47 & 2) != 0)
      {
        goto LABEL_131;
      }
    }

LABEL_101:
    if ((v47 & 4) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_134;
  }

LABEL_109:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(this + 143);
  *v4 = 112;
  if (v50 > 0x7F)
  {
    v4[1] = v50 | 0x80;
    v51 = v50 >> 7;
    if (v50 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v4;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v4 - 1) = v52;
      if ((v47 & 8) != 0)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v4[2] = v51;
      v4 += 3;
      if ((v47 & 8) != 0)
      {
        goto LABEL_120;
      }
    }
  }

  else
  {
    v4[1] = v50;
    v4 += 2;
    if ((v47 & 8) != 0)
    {
      goto LABEL_120;
    }
  }

LABEL_100:
  if ((v47 & 2) == 0)
  {
    goto LABEL_101;
  }

LABEL_131:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v58 = *(this + 72);
  *v4 = 385;
  *(v4 + 2) = v58;
  v4 += 10;
  if ((v47 & 4) != 0)
  {
LABEL_134:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v59 = *(this + 73);
    *v4 = 393;
    *(v4 + 2) = v59;
    v4 += 10;
  }

LABEL_137:
  v60 = *(this + 4);
  if ((v60 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v61 = *(this + 17);
    *v4 = 402;
    v62 = *(v61 + 5);
    if (v62 > 0x7F)
    {
      v4[2] = v62 | 0x80;
      v64 = v62 >> 7;
      if (v62 >> 14)
      {
        v63 = v4 + 4;
        do
        {
          *(v63 - 1) = v64 | 0x80;
          v65 = v64 >> 7;
          ++v63;
          v66 = v64 >> 14;
          v64 >>= 7;
        }

        while (v66);
        *(v63 - 1) = v65;
      }

      else
      {
        v4[3] = v64;
        v63 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v62;
      v63 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v61, v63, a3);
    if ((v60 & 0x100) == 0)
    {
LABEL_139:
      if ((v60 & 0x200) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_162;
    }
  }

  else if ((v60 & 0x100) == 0)
  {
    goto LABEL_139;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(this + 18);
  *v4 = 410;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    v4[2] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = v4 + 4;
      do
      {
        *(v69 - 1) = v70 | 0x80;
        v71 = v70 >> 7;
        ++v69;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
      *(v69 - 1) = v71;
    }

    else
    {
      v4[3] = v70;
      v69 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v68;
    v69 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v67, v69, a3);
  if ((v60 & 0x200) == 0)
  {
LABEL_140:
    if ((v60 & 0x400) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_172;
  }

LABEL_162:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v73 = *(this + 19);
  *v4 = 418;
  v74 = *(v73 + 5);
  if (v74 > 0x7F)
  {
    v4[2] = v74 | 0x80;
    v76 = v74 >> 7;
    if (v74 >> 14)
    {
      v75 = v4 + 4;
      do
      {
        *(v75 - 1) = v76 | 0x80;
        v77 = v76 >> 7;
        ++v75;
        v78 = v76 >> 14;
        v76 >>= 7;
      }

      while (v78);
      *(v75 - 1) = v77;
    }

    else
    {
      v4[3] = v76;
      v75 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v74;
    v75 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v73, v75, a3);
  if ((v60 & 0x400) != 0)
  {
LABEL_172:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v79 = *(this + 20);
    *v4 = 426;
    v80 = *(v79 + 5);
    if (v80 > 0x7F)
    {
      v4[2] = v80 | 0x80;
      v82 = v80 >> 7;
      if (v80 >> 14)
      {
        v81 = v4 + 4;
        do
        {
          *(v81 - 1) = v82 | 0x80;
          v83 = v82 >> 7;
          ++v81;
          v84 = v82 >> 14;
          v82 >>= 7;
        }

        while (v84);
        *(v81 - 1) = v83;
      }

      else
      {
        v4[3] = v82;
        v81 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v80;
      v81 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v79, v81, a3);
  }

LABEL_182:
  if ((*(this + 25) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(this + 605);
    *v4 = 432;
    v4[2] = v85;
    v4 += 3;
  }

  v86 = *(this + 4);
  if ((v86 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v87 = *(this + 21);
    *v4 = 442;
    v88 = *(v87 + 5);
    if (v88 > 0x7F)
    {
      v4[2] = v88 | 0x80;
      v90 = v88 >> 7;
      if (v88 >> 14)
      {
        v89 = v4 + 4;
        do
        {
          *(v89 - 1) = v90 | 0x80;
          v91 = v90 >> 7;
          ++v89;
          v92 = v90 >> 14;
          v90 >>= 7;
        }

        while (v92);
        *(v89 - 1) = v91;
      }

      else
      {
        v4[3] = v90;
        v89 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v88;
      v89 = v4 + 3;
    }

    v4 = TST::CellID::_InternalSerialize(v87, v89, a3);
    if ((v86 & 0x1000) == 0)
    {
LABEL_188:
      if ((v86 & 0x2000) == 0)
      {
        goto LABEL_189;
      }

      goto LABEL_212;
    }
  }

  else if ((v86 & 0x1000) == 0)
  {
    goto LABEL_188;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v93 = *(this + 22);
  *v4 = 450;
  v94 = *(v93 + 5);
  if (v94 > 0x7F)
  {
    v4[2] = v94 | 0x80;
    v96 = v94 >> 7;
    if (v94 >> 14)
    {
      v95 = v4 + 4;
      do
      {
        *(v95 - 1) = v96 | 0x80;
        v97 = v96 >> 7;
        ++v95;
        v98 = v96 >> 14;
        v96 >>= 7;
      }

      while (v98);
      *(v95 - 1) = v97;
    }

    else
    {
      v4[3] = v96;
      v95 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v94;
    v95 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v93, v95, a3);
  if ((v86 & 0x2000) == 0)
  {
LABEL_189:
    if ((v86 & 0x4000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_222;
  }

LABEL_212:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v99 = *(this + 23);
  *v4 = 458;
  v100 = *(v99 + 5);
  if (v100 > 0x7F)
  {
    v4[2] = v100 | 0x80;
    v102 = v100 >> 7;
    if (v100 >> 14)
    {
      v101 = v4 + 4;
      do
      {
        *(v101 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++v101;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(v101 - 1) = v103;
    }

    else
    {
      v4[3] = v102;
      v101 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v100;
    v101 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v99, v101, a3);
  if ((v86 & 0x4000) == 0)
  {
LABEL_190:
    if ((v86 & 0x8000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_232;
  }

LABEL_222:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v105 = *(this + 24);
  *v4 = 466;
  v106 = *(v105 + 5);
  if (v106 > 0x7F)
  {
    v4[2] = v106 | 0x80;
    v108 = v106 >> 7;
    if (v106 >> 14)
    {
      v107 = v4 + 4;
      do
      {
        *(v107 - 1) = v108 | 0x80;
        v109 = v108 >> 7;
        ++v107;
        v110 = v108 >> 14;
        v108 >>= 7;
      }

      while (v110);
      *(v107 - 1) = v109;
    }

    else
    {
      v4[3] = v108;
      v107 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v106;
    v107 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v105, v107, a3);
  if ((v86 & 0x8000) != 0)
  {
LABEL_232:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v111 = *(this + 25);
    *v4 = 474;
    v112 = *(v111 + 5);
    if (v112 > 0x7F)
    {
      v4[2] = v112 | 0x80;
      v114 = v112 >> 7;
      if (v112 >> 14)
      {
        v113 = v4 + 4;
        do
        {
          *(v113 - 1) = v114 | 0x80;
          v115 = v114 >> 7;
          ++v113;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
        *(v113 - 1) = v115;
      }

      else
      {
        v4[3] = v114;
        v113 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v112;
      v113 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v111, v113, a3);
  }

LABEL_242:
  v117 = *(this + 6);
  if ((v117 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v118 = *(this + 150);
    *v4 = 480;
    if (v118 <= 0x7F)
    {
      v4[2] = v118;
      v4 += 3;
      if ((v117 & 0x20) == 0)
      {
        goto LABEL_254;
      }

      goto LABEL_251;
    }

    v4[2] = v118 | 0x80;
    v119 = v118 >> 7;
    if (v118 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v119 | 0x80;
        v125 = v119 >> 7;
        ++v4;
        v126 = v119 >> 14;
        v119 >>= 7;
      }

      while (v126);
      *(v4 - 1) = v125;
      if ((v117 & 0x20) == 0)
      {
        goto LABEL_254;
      }

      goto LABEL_251;
    }

    v4[3] = v119;
    v4 += 4;
  }

  if ((v117 & 0x20) == 0)
  {
    goto LABEL_254;
  }

LABEL_251:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v120 = *(this + 597);
  *v4 = 488;
  v4[2] = v120;
  v4 += 3;
LABEL_254:
  if (*(this + 18))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v121 = *(this + 26);
    *v4 = 498;
    v122 = *(v121 + 5);
    if (v122 > 0x7F)
    {
      v4[2] = v122 | 0x80;
      v124 = v122 >> 7;
      if (v122 >> 14)
      {
        v123 = v4 + 4;
        do
        {
          *(v123 - 1) = v124 | 0x80;
          v127 = v124 >> 7;
          ++v123;
          v128 = v124 >> 14;
          v124 >>= 7;
        }

        while (v128);
        *(v123 - 1) = v127;
      }

      else
      {
        v4[3] = v124;
        v123 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v122;
      v123 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v121, v123, a3);
  }

  v129 = *(this + 6);
  if ((v129 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v130 = *(this + 598);
    *v4 = 504;
    v4[2] = v130;
    v4 += 3;
    if ((v129 & 0x80) == 0)
    {
LABEL_271:
      if ((v129 & 0x2000) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_279;
    }
  }

  else if ((v129 & 0x80) == 0)
  {
    goto LABEL_271;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v131 = *(this + 599);
  *v4 = 640;
  v4[2] = v131;
  v4 += 3;
  if ((v129 & 0x2000) != 0)
  {
LABEL_279:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v132 = *(this + 76);
    *v4 = 649;
    *(v4 + 2) = v132;
    v4 += 10;
  }

LABEL_282:
  v133 = *(this + 4);
  if ((v133 & 0x20000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v134 = *(this + 27);
    *v4 = 658;
    v135 = *(v134 + 5);
    if (v135 > 0x7F)
    {
      v4[2] = v135 | 0x80;
      v137 = v135 >> 7;
      if (v135 >> 14)
      {
        v136 = v4 + 4;
        do
        {
          *(v136 - 1) = v137 | 0x80;
          v138 = v137 >> 7;
          ++v136;
          v139 = v137 >> 14;
          v137 >>= 7;
        }

        while (v139);
        *(v136 - 1) = v138;
      }

      else
      {
        v4[3] = v137;
        v136 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v135;
      v136 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v134, v136, a3);
    if ((v133 & 0x40000) == 0)
    {
LABEL_284:
      if ((v133 & 0x80000) == 0)
      {
        goto LABEL_316;
      }

      goto LABEL_306;
    }
  }

  else if ((v133 & 0x40000) == 0)
  {
    goto LABEL_284;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v140 = *(this + 28);
  *v4 = 666;
  v141 = *(v140 + 5);
  if (v141 > 0x7F)
  {
    v4[2] = v141 | 0x80;
    v143 = v141 >> 7;
    if (v141 >> 14)
    {
      v142 = v4 + 4;
      do
      {
        *(v142 - 1) = v143 | 0x80;
        v144 = v143 >> 7;
        ++v142;
        v145 = v143 >> 14;
        v143 >>= 7;
      }

      while (v145);
      *(v142 - 1) = v144;
    }

    else
    {
      v4[3] = v143;
      v142 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v141;
    v142 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v140, v142, a3);
  if ((v133 & 0x80000) != 0)
  {
LABEL_306:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v146 = *(this + 29);
    *v4 = 674;
    v147 = *(v146 + 5);
    if (v147 > 0x7F)
    {
      v4[2] = v147 | 0x80;
      v149 = v147 >> 7;
      if (v147 >> 14)
      {
        v148 = v4 + 4;
        do
        {
          *(v148 - 1) = v149 | 0x80;
          v150 = v149 >> 7;
          ++v148;
          v151 = v149 >> 14;
          v149 >>= 7;
        }

        while (v151);
        *(v148 - 1) = v150;
      }

      else
      {
        v4[3] = v149;
        v148 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v147;
      v148 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v146, v148, a3);
  }

LABEL_316:
  if ((*(this + 25) & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v152 = *(this + 606);
    *v4 = 680;
    v4[2] = v152;
    v4 += 3;
  }

  v153 = *(this + 4);
  if ((v153 & 0x100000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v154 = *(this + 30);
    *v4 = 690;
    v155 = *(v154 + 5);
    if (v155 > 0x7F)
    {
      v4[2] = v155 | 0x80;
      v157 = v155 >> 7;
      if (v155 >> 14)
      {
        v156 = v4 + 4;
        do
        {
          *(v156 - 1) = v157 | 0x80;
          v158 = v157 >> 7;
          ++v156;
          v159 = v157 >> 14;
          v157 >>= 7;
        }

        while (v159);
        *(v156 - 1) = v158;
      }

      else
      {
        v4[3] = v157;
        v156 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v155;
      v156 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v154, v156, a3);
  }

  if ((v153 & 0x200000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v160 = *(this + 31);
    *v4 = 698;
    v161 = *(v160 + 5);
    if (v161 > 0x7F)
    {
      v4[2] = v161 | 0x80;
      v163 = v161 >> 7;
      if (v161 >> 14)
      {
        v162 = v4 + 4;
        do
        {
          *(v162 - 1) = v163 | 0x80;
          v164 = v163 >> 7;
          ++v162;
          v165 = v163 >> 14;
          v163 >>= 7;
        }

        while (v165);
        *(v162 - 1) = v164;
      }

      else
      {
        v4[3] = v163;
        v162 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v161;
      v162 = v4 + 3;
    }

    v4 = TSP::CFUUIDArchive::_InternalSerialize(v160, v162, a3);
  }

  v166 = *(this + 6);
  if ((v166 & 0x4000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v168 = *(this + 154);
    *v4 = 704;
    if (v168 > 0x7F)
    {
      v4[2] = v168 | 0x80;
      v170 = v168 >> 7;
      if (v168 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v170 | 0x80;
          v173 = v170 >> 7;
          ++v4;
          v174 = v170 >> 14;
          v170 >>= 7;
        }

        while (v174);
        *(v4 - 1) = v173;
        if ((v166 & 0x8000) != 0)
        {
          goto LABEL_365;
        }
      }

      else
      {
        v4[3] = v170;
        v4 += 4;
        if ((v166 & 0x8000) != 0)
        {
          goto LABEL_365;
        }
      }
    }

    else
    {
      v4[2] = v168;
      v4 += 3;
      if ((v166 & 0x8000) != 0)
      {
        goto LABEL_365;
      }
    }

LABEL_344:
    if ((v166 & 0x10000) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_345;
  }

  if ((v166 & 0x8000) == 0)
  {
    goto LABEL_344;
  }

LABEL_365:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v175 = *(this + 155);
  *v4 = 712;
  if (v175 > 0x7F)
  {
    v4[2] = v175 | 0x80;
    v176 = v175 >> 7;
    if (v175 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v176 | 0x80;
        v177 = v176 >> 7;
        ++v4;
        v178 = v176 >> 14;
        v176 >>= 7;
      }

      while (v178);
      *(v4 - 1) = v177;
      if ((v166 & 0x10000) == 0)
      {
        goto LABEL_376;
      }
    }

    else
    {
      v4[3] = v176;
      v4 += 4;
      if ((v166 & 0x10000) == 0)
      {
        goto LABEL_376;
      }
    }
  }

  else
  {
    v4[2] = v175;
    v4 += 3;
    if ((v166 & 0x10000) == 0)
    {
      goto LABEL_376;
    }
  }

LABEL_345:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v167 = *(this + 156);
  *v4 = 720;
  if (v167 > 0x7F)
  {
    v4[2] = v167 | 0x80;
    v169 = v167 >> 7;
    if (v167 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v169 | 0x80;
        v171 = v169 >> 7;
        ++v4;
        v172 = v169 >> 14;
        v169 >>= 7;
      }

      while (v172);
      *(v4 - 1) = v171;
    }

    else
    {
      v4[3] = v169;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v167;
    v4 += 3;
  }

LABEL_376:
  v179 = *(this + 4);
  if ((v179 & 4) != 0)
  {
    v4 = sub_22150C00C(a3, 43, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v179 & 0x400000) == 0)
    {
LABEL_378:
      if ((v179 & 0x800000) == 0)
      {
        goto LABEL_379;
      }

      goto LABEL_395;
    }
  }

  else if ((v179 & 0x400000) == 0)
  {
    goto LABEL_378;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v180 = *(this + 32);
  *v4 = 738;
  v181 = *(v180 + 5);
  if (v181 > 0x7F)
  {
    v4[2] = v181 | 0x80;
    v183 = v181 >> 7;
    if (v181 >> 14)
    {
      v182 = v4 + 4;
      do
      {
        *(v182 - 1) = v183 | 0x80;
        v184 = v183 >> 7;
        ++v182;
        v185 = v183 >> 14;
        v183 >>= 7;
      }

      while (v185);
      *(v182 - 1) = v184;
    }

    else
    {
      v4[3] = v183;
      v182 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v181;
    v182 = v4 + 3;
  }

  v4 = TST::TableSortOrderArchive::_InternalSerialize(v180, v182, a3);
  if ((v179 & 0x800000) == 0)
  {
LABEL_379:
    if ((v179 & 0x1000000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_405;
  }

LABEL_395:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v186 = *(this + 33);
  *v4 = 746;
  v187 = *(v186 + 5);
  if (v187 > 0x7F)
  {
    v4[2] = v187 | 0x80;
    v189 = v187 >> 7;
    if (v187 >> 14)
    {
      v188 = v4 + 4;
      do
      {
        *(v188 - 1) = v189 | 0x80;
        v190 = v189 >> 7;
        ++v188;
        v191 = v189 >> 14;
        v189 >>= 7;
      }

      while (v191);
      *(v188 - 1) = v190;
    }

    else
    {
      v4[3] = v189;
      v188 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v187;
    v188 = v4 + 3;
  }

  v4 = TST::SortRuleReferenceTrackerArchive::_InternalSerialize(v186, v188, a3);
  if ((v179 & 0x1000000) == 0)
  {
LABEL_380:
    if ((v179 & 0x2000000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_415;
  }

LABEL_405:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v192 = *(this + 34);
  *v4 = 754;
  v193 = *(v192 + 5);
  if (v193 > 0x7F)
  {
    v4[2] = v193 | 0x80;
    v195 = v193 >> 7;
    if (v193 >> 14)
    {
      v194 = v4 + 4;
      do
      {
        *(v194 - 1) = v195 | 0x80;
        v196 = v195 >> 7;
        ++v194;
        v197 = v195 >> 14;
        v195 >>= 7;
      }

      while (v197);
      *(v194 - 1) = v196;
    }

    else
    {
      v4[3] = v195;
      v194 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v193;
    v194 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v192, v194, a3);
  if ((v179 & 0x2000000) == 0)
  {
LABEL_381:
    if ((v179 & 0x4000000) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_425;
  }

LABEL_415:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v198 = *(this + 35);
  *v4 = 762;
  v199 = *(v198 + 5);
  if (v199 > 0x7F)
  {
    v4[2] = v199 | 0x80;
    v201 = v199 >> 7;
    if (v199 >> 14)
    {
      v200 = v4 + 4;
      do
      {
        *(v200 - 1) = v201 | 0x80;
        v202 = v201 >> 7;
        ++v200;
        v203 = v201 >> 14;
        v201 >>= 7;
      }

      while (v203);
      *(v200 - 1) = v202;
    }

    else
    {
      v4[3] = v201;
      v200 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v199;
    v200 = v4 + 3;
  }

  v4 = TST::MergeOwnerArchive::_InternalSerialize(v198, v200, a3);
  if ((v179 & 0x4000000) == 0)
  {
LABEL_382:
    if ((v179 & 0x8000000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_435;
  }

LABEL_425:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v204 = *(this + 36);
  *v4 = 898;
  v205 = *(v204 + 5);
  if (v205 > 0x7F)
  {
    v4[2] = v205 | 0x80;
    v207 = v205 >> 7;
    if (v205 >> 14)
    {
      v206 = v4 + 4;
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
      v4[3] = v207;
      v206 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v205;
    v206 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v204, v206, a3);
  if ((v179 & 0x8000000) != 0)
  {
LABEL_435:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v210 = *(this + 37);
    *v4 = 906;
    v211 = *(v210 + 5);
    if (v211 > 0x7F)
    {
      v4[2] = v211 | 0x80;
      v213 = v211 >> 7;
      if (v211 >> 14)
      {
        v212 = v4 + 4;
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
        v4[3] = v213;
        v212 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v211;
      v212 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v210, v212, a3);
  }

LABEL_445:
  v216 = *(this + 6);
  if ((v216 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v217 = *(this + 604);
    *v4 = 912;
    v4[2] = v217;
    v4 += 3;
  }

  if ((v216 & 0x20000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v218 = *(this + 628);
    *v4 = 920;
    v4[2] = v218;
    v4 += 3;
  }

  v219 = *(this + 4);
  if ((v219 & 0x10000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v220 = *(this + 38);
    *v4 = 930;
    v221 = *(v220 + 5);
    if (v221 > 0x7F)
    {
      v4[2] = v221 | 0x80;
      v223 = v221 >> 7;
      if (v221 >> 14)
      {
        v222 = v4 + 4;
        do
        {
          *(v222 - 1) = v223 | 0x80;
          v224 = v223 >> 7;
          ++v222;
          v225 = v223 >> 14;
          v223 >>= 7;
        }

        while (v225);
        *(v222 - 1) = v224;
      }

      else
      {
        v4[3] = v223;
        v222 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v221;
      v222 = v4 + 3;
    }

    v4 = TST::StructuredTextImportRecord::_InternalSerialize(v220, v222, a3);
    if ((v219 & 0x20000000) == 0)
    {
LABEL_455:
      if ((v219 & 0x40000000) == 0)
      {
        goto LABEL_456;
      }

      goto LABEL_478;
    }
  }

  else if ((v219 & 0x20000000) == 0)
  {
    goto LABEL_455;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v226 = *(this + 39);
  *v4 = 994;
  v227 = *(v226 + 5);
  if (v227 > 0x7F)
  {
    v4[2] = v227 | 0x80;
    v229 = v227 >> 7;
    if (v227 >> 14)
    {
      v228 = v4 + 4;
      do
      {
        *(v228 - 1) = v229 | 0x80;
        v230 = v229 >> 7;
        ++v228;
        v231 = v229 >> 14;
        v229 >>= 7;
      }

      while (v231);
      *(v228 - 1) = v230;
    }

    else
    {
      v4[3] = v229;
      v228 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v227;
    v228 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v226, v228, a3);
  if ((v219 & 0x40000000) == 0)
  {
LABEL_456:
    if ((v219 & 0x80000000) == 0)
    {
      goto LABEL_498;
    }

    goto LABEL_488;
  }

LABEL_478:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v232 = *(this + 40);
  *v4 = 1002;
  v233 = *(v232 + 5);
  if (v233 > 0x7F)
  {
    v4[2] = v233 | 0x80;
    v235 = v233 >> 7;
    if (v233 >> 14)
    {
      v234 = v4 + 4;
      do
      {
        *(v234 - 1) = v235 | 0x80;
        v236 = v235 >> 7;
        ++v234;
        v237 = v235 >> 14;
        v235 >>= 7;
      }

      while (v237);
      *(v234 - 1) = v236;
    }

    else
    {
      v4[3] = v235;
      v234 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v233;
    v234 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v232, v234, a3);
  if (v219 < 0)
  {
LABEL_488:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v238 = *(this + 41);
    *v4 = 1010;
    v239 = *(v238 + 5);
    if (v239 > 0x7F)
    {
      v4[2] = v239 | 0x80;
      v241 = v239 >> 7;
      if (v239 >> 14)
      {
        v240 = v4 + 4;
        do
        {
          *(v240 - 1) = v241 | 0x80;
          v242 = v241 >> 7;
          ++v240;
          v243 = v241 >> 14;
          v241 >>= 7;
        }

        while (v243);
        *(v240 - 1) = v242;
      }

      else
      {
        v4[3] = v241;
        v240 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v239;
      v240 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v238, v240, a3);
  }

LABEL_498:
  v244 = *(this + 5);
  if (v244)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v245 = *(this + 42);
    *v4 = 1018;
    v246 = *(v245 + 5);
    if (v246 > 0x7F)
    {
      v4[2] = v246 | 0x80;
      v248 = v246 >> 7;
      if (v246 >> 14)
      {
        v247 = v4 + 4;
        do
        {
          *(v247 - 1) = v248 | 0x80;
          v249 = v248 >> 7;
          ++v247;
          v250 = v248 >> 14;
          v248 >>= 7;
        }

        while (v250);
        *(v247 - 1) = v249;
      }

      else
      {
        v4[3] = v248;
        v247 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v246;
      v247 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v245, v247, a3);
    if ((v244 & 2) == 0)
    {
LABEL_500:
      if ((v244 & 4) == 0)
      {
        goto LABEL_501;
      }

      goto LABEL_539;
    }
  }

  else if ((v244 & 2) == 0)
  {
    goto LABEL_500;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v251 = *(this + 43);
  *v4 = 1154;
  v252 = *(v251 + 5);
  if (v252 > 0x7F)
  {
    v4[2] = v252 | 0x80;
    v254 = v252 >> 7;
    if (v252 >> 14)
    {
      v253 = v4 + 4;
      do
      {
        *(v253 - 1) = v254 | 0x80;
        v255 = v254 >> 7;
        ++v253;
        v256 = v254 >> 14;
        v254 >>= 7;
      }

      while (v256);
      *(v253 - 1) = v255;
    }

    else
    {
      v4[3] = v254;
      v253 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v252;
    v253 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v251, v253, a3);
  if ((v244 & 4) == 0)
  {
LABEL_501:
    if ((v244 & 8) == 0)
    {
      goto LABEL_502;
    }

    goto LABEL_549;
  }

LABEL_539:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v257 = *(this + 44);
  *v4 = 1162;
  v258 = *(v257 + 5);
  if (v258 > 0x7F)
  {
    v4[2] = v258 | 0x80;
    v260 = v258 >> 7;
    if (v258 >> 14)
    {
      v259 = v4 + 4;
      do
      {
        *(v259 - 1) = v260 | 0x80;
        v261 = v260 >> 7;
        ++v259;
        v262 = v260 >> 14;
        v260 >>= 7;
      }

      while (v262);
      *(v259 - 1) = v261;
    }

    else
    {
      v4[3] = v260;
      v259 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v258;
    v259 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v257, v259, a3);
  if ((v244 & 8) == 0)
  {
LABEL_502:
    if ((v244 & 0x10) == 0)
    {
      goto LABEL_503;
    }

    goto LABEL_559;
  }

LABEL_549:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v263 = *(this + 45);
  *v4 = 1170;
  v264 = *(v263 + 5);
  if (v264 > 0x7F)
  {
    v4[2] = v264 | 0x80;
    v266 = v264 >> 7;
    if (v264 >> 14)
    {
      v265 = v4 + 4;
      do
      {
        *(v265 - 1) = v266 | 0x80;
        v267 = v266 >> 7;
        ++v265;
        v268 = v266 >> 14;
        v266 >>= 7;
      }

      while (v268);
      *(v265 - 1) = v267;
    }

    else
    {
      v4[3] = v266;
      v265 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v264;
    v265 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v263, v265, a3);
  if ((v244 & 0x10) == 0)
  {
LABEL_503:
    if ((v244 & 0x20) == 0)
    {
      goto LABEL_504;
    }

    goto LABEL_569;
  }

LABEL_559:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v269 = *(this + 46);
  *v4 = 1178;
  v270 = *(v269 + 5);
  if (v270 > 0x7F)
  {
    v4[2] = v270 | 0x80;
    v272 = v270 >> 7;
    if (v270 >> 14)
    {
      v271 = v4 + 4;
      do
      {
        *(v271 - 1) = v272 | 0x80;
        v273 = v272 >> 7;
        ++v271;
        v274 = v272 >> 14;
        v272 >>= 7;
      }

      while (v274);
      *(v271 - 1) = v273;
    }

    else
    {
      v4[3] = v272;
      v271 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v270;
    v271 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v269, v271, a3);
  if ((v244 & 0x20) == 0)
  {
LABEL_504:
    if ((v244 & 0x40) == 0)
    {
      goto LABEL_505;
    }

    goto LABEL_579;
  }

LABEL_569:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v275 = *(this + 47);
  *v4 = 1186;
  v276 = *(v275 + 5);
  if (v276 > 0x7F)
  {
    v4[2] = v276 | 0x80;
    v278 = v276 >> 7;
    if (v276 >> 14)
    {
      v277 = v4 + 4;
      do
      {
        *(v277 - 1) = v278 | 0x80;
        v279 = v278 >> 7;
        ++v277;
        v280 = v278 >> 14;
        v278 >>= 7;
      }

      while (v280);
      *(v277 - 1) = v279;
    }

    else
    {
      v4[3] = v278;
      v277 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v276;
    v277 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v275, v277, a3);
  if ((v244 & 0x40) == 0)
  {
LABEL_505:
    if ((v244 & 0x80) == 0)
    {
      goto LABEL_506;
    }

    goto LABEL_589;
  }

LABEL_579:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v281 = *(this + 48);
  *v4 = 1194;
  v282 = *(v281 + 5);
  if (v282 > 0x7F)
  {
    v4[2] = v282 | 0x80;
    v284 = v282 >> 7;
    if (v282 >> 14)
    {
      v283 = v4 + 4;
      do
      {
        *(v283 - 1) = v284 | 0x80;
        v285 = v284 >> 7;
        ++v283;
        v286 = v284 >> 14;
        v284 >>= 7;
      }

      while (v286);
      *(v283 - 1) = v285;
    }

    else
    {
      v4[3] = v284;
      v283 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v282;
    v283 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v281, v283, a3);
  if ((v244 & 0x80) == 0)
  {
LABEL_506:
    if ((v244 & 0x100) == 0)
    {
      goto LABEL_507;
    }

    goto LABEL_599;
  }

LABEL_589:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v287 = *(this + 49);
  *v4 = 1202;
  v288 = *(v287 + 5);
  if (v288 > 0x7F)
  {
    v4[2] = v288 | 0x80;
    v290 = v288 >> 7;
    if (v288 >> 14)
    {
      v289 = v4 + 4;
      do
      {
        *(v289 - 1) = v290 | 0x80;
        v291 = v290 >> 7;
        ++v289;
        v292 = v290 >> 14;
        v290 >>= 7;
      }

      while (v292);
      *(v289 - 1) = v291;
    }

    else
    {
      v4[3] = v290;
      v289 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v288;
    v289 = v4 + 3;
  }

  v4 = TST::HiddenStatesOwnerArchive::_InternalSerialize(v287, v289, a3);
  if ((v244 & 0x100) == 0)
  {
LABEL_507:
    if ((v244 & 0x200) == 0)
    {
      goto LABEL_508;
    }

    goto LABEL_609;
  }

LABEL_599:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v293 = *(this + 50);
  *v4 = 1210;
  v294 = *(v293 + 5);
  if (v294 > 0x7F)
  {
    v4[2] = v294 | 0x80;
    v296 = v294 >> 7;
    if (v294 >> 14)
    {
      v295 = v4 + 4;
      do
      {
        *(v295 - 1) = v296 | 0x80;
        v297 = v296 >> 7;
        ++v295;
        v298 = v296 >> 14;
        v296 >>= 7;
      }

      while (v298);
      *(v295 - 1) = v297;
    }

    else
    {
      v4[3] = v296;
      v295 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v294;
    v295 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v293, v295, a3);
  if ((v244 & 0x200) == 0)
  {
LABEL_508:
    if ((v244 & 0x400) == 0)
    {
      goto LABEL_509;
    }

    goto LABEL_619;
  }

LABEL_609:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v299 = *(this + 51);
  *v4 = 1218;
  v300 = *(v299 + 5);
  if (v300 > 0x7F)
  {
    v4[2] = v300 | 0x80;
    v302 = v300 >> 7;
    if (v300 >> 14)
    {
      v301 = v4 + 4;
      do
      {
        *(v301 - 1) = v302 | 0x80;
        v303 = v302 >> 7;
        ++v301;
        v304 = v302 >> 14;
        v302 >>= 7;
      }

      while (v304);
      *(v301 - 1) = v303;
    }

    else
    {
      v4[3] = v302;
      v301 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v300;
    v301 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v299, v301, a3);
  if ((v244 & 0x400) == 0)
  {
LABEL_509:
    if ((v244 & 0x800) == 0)
    {
      goto LABEL_510;
    }

    goto LABEL_629;
  }

LABEL_619:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v305 = *(this + 52);
  *v4 = 1226;
  v306 = *(v305 + 5);
  if (v306 > 0x7F)
  {
    v4[2] = v306 | 0x80;
    v308 = v306 >> 7;
    if (v306 >> 14)
    {
      v307 = v4 + 4;
      do
      {
        *(v307 - 1) = v308 | 0x80;
        v309 = v308 >> 7;
        ++v307;
        v310 = v308 >> 14;
        v308 >>= 7;
      }

      while (v310);
      *(v307 - 1) = v309;
    }

    else
    {
      v4[3] = v308;
      v307 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v306;
    v307 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v305, v307, a3);
  if ((v244 & 0x800) == 0)
  {
LABEL_510:
    if ((v244 & 0x1000) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_639;
  }

LABEL_629:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v311 = *(this + 53);
  *v4 = 1234;
  v312 = *(v311 + 5);
  if (v312 > 0x7F)
  {
    v4[2] = v312 | 0x80;
    v314 = v312 >> 7;
    if (v312 >> 14)
    {
      v313 = v4 + 4;
      do
      {
        *(v313 - 1) = v314 | 0x80;
        v315 = v314 >> 7;
        ++v313;
        v316 = v314 >> 14;
        v314 >>= 7;
      }

      while (v316);
      *(v313 - 1) = v315;
    }

    else
    {
      v4[3] = v314;
      v313 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v312;
    v313 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v311, v313, a3);
  if ((v244 & 0x1000) == 0)
  {
LABEL_511:
    if ((v244 & 0x2000) == 0)
    {
      goto LABEL_512;
    }

    goto LABEL_649;
  }

LABEL_639:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v317 = *(this + 54);
  *v4 = 1242;
  v318 = *(v317 + 5);
  if (v318 > 0x7F)
  {
    v4[2] = v318 | 0x80;
    v320 = v318 >> 7;
    if (v318 >> 14)
    {
      v319 = v4 + 4;
      do
      {
        *(v319 - 1) = v320 | 0x80;
        v321 = v320 >> 7;
        ++v319;
        v322 = v320 >> 14;
        v320 >>= 7;
      }

      while (v322);
      *(v319 - 1) = v321;
    }

    else
    {
      v4[3] = v320;
      v319 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v318;
    v319 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v317, v319, a3);
  if ((v244 & 0x2000) == 0)
  {
LABEL_512:
    if ((v244 & 0x4000) == 0)
    {
      goto LABEL_513;
    }

    goto LABEL_659;
  }

LABEL_649:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v323 = *(this + 55);
  *v4 = 1250;
  v324 = *(v323 + 5);
  if (v324 > 0x7F)
  {
    v4[2] = v324 | 0x80;
    v326 = v324 >> 7;
    if (v324 >> 14)
    {
      v325 = v4 + 4;
      do
      {
        *(v325 - 1) = v326 | 0x80;
        v327 = v326 >> 7;
        ++v325;
        v328 = v326 >> 14;
        v326 >>= 7;
      }

      while (v328);
      *(v325 - 1) = v327;
    }

    else
    {
      v4[3] = v326;
      v325 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v324;
    v325 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v323, v325, a3);
  if ((v244 & 0x4000) == 0)
  {
LABEL_513:
    if ((v244 & 0x8000) == 0)
    {
      goto LABEL_514;
    }

    goto LABEL_669;
  }

LABEL_659:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v329 = *(this + 56);
  *v4 = 1258;
  v330 = *(v329 + 5);
  if (v330 > 0x7F)
  {
    v4[2] = v330 | 0x80;
    v332 = v330 >> 7;
    if (v330 >> 14)
    {
      v331 = v4 + 4;
      do
      {
        *(v331 - 1) = v332 | 0x80;
        v333 = v332 >> 7;
        ++v331;
        v334 = v332 >> 14;
        v332 >>= 7;
      }

      while (v334);
      *(v331 - 1) = v333;
    }

    else
    {
      v4[3] = v332;
      v331 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v330;
    v331 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v329, v331, a3);
  if ((v244 & 0x8000) == 0)
  {
LABEL_514:
    if ((v244 & 0x10000) == 0)
    {
      goto LABEL_515;
    }

    goto LABEL_679;
  }

LABEL_669:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v335 = *(this + 57);
  *v4 = 1266;
  v336 = *(v335 + 5);
  if (v336 > 0x7F)
  {
    v4[2] = v336 | 0x80;
    v338 = v336 >> 7;
    if (v336 >> 14)
    {
      v337 = v4 + 4;
      do
      {
        *(v337 - 1) = v338 | 0x80;
        v339 = v338 >> 7;
        ++v337;
        v340 = v338 >> 14;
        v338 >>= 7;
      }

      while (v340);
      *(v337 - 1) = v339;
    }

    else
    {
      v4[3] = v338;
      v337 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v336;
    v337 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v335, v337, a3);
  if ((v244 & 0x10000) == 0)
  {
LABEL_515:
    if ((v244 & 0x20000) == 0)
    {
      goto LABEL_516;
    }

    goto LABEL_689;
  }

LABEL_679:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v341 = *(this + 58);
  *v4 = 1274;
  v342 = *(v341 + 5);
  if (v342 > 0x7F)
  {
    v4[2] = v342 | 0x80;
    v344 = v342 >> 7;
    if (v342 >> 14)
    {
      v343 = v4 + 4;
      do
      {
        *(v343 - 1) = v344 | 0x80;
        v345 = v344 >> 7;
        ++v343;
        v346 = v344 >> 14;
        v344 >>= 7;
      }

      while (v346);
      *(v343 - 1) = v345;
    }

    else
    {
      v4[3] = v344;
      v343 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v342;
    v343 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v341, v343, a3);
  if ((v244 & 0x20000) == 0)
  {
LABEL_516:
    if ((v244 & 0x40000) == 0)
    {
      goto LABEL_517;
    }

    goto LABEL_699;
  }

LABEL_689:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v347 = *(this + 59);
  *v4 = 1410;
  v348 = *(v347 + 5);
  if (v348 > 0x7F)
  {
    v4[2] = v348 | 0x80;
    v350 = v348 >> 7;
    if (v348 >> 14)
    {
      v349 = v4 + 4;
      do
      {
        *(v349 - 1) = v350 | 0x80;
        v351 = v350 >> 7;
        ++v349;
        v352 = v350 >> 14;
        v350 >>= 7;
      }

      while (v352);
      *(v349 - 1) = v351;
    }

    else
    {
      v4[3] = v350;
      v349 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v348;
    v349 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v347, v349, a3);
  if ((v244 & 0x40000) == 0)
  {
LABEL_517:
    if ((v244 & 0x80000) == 0)
    {
      goto LABEL_719;
    }

    goto LABEL_709;
  }

LABEL_699:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v353 = *(this + 60);
  *v4 = 1418;
  v354 = *(v353 + 5);
  if (v354 > 0x7F)
  {
    v4[2] = v354 | 0x80;
    v356 = v354 >> 7;
    if (v354 >> 14)
    {
      v355 = v4 + 4;
      do
      {
        *(v355 - 1) = v356 | 0x80;
        v357 = v356 >> 7;
        ++v355;
        v358 = v356 >> 14;
        v356 >>= 7;
      }

      while (v358);
      *(v355 - 1) = v357;
    }

    else
    {
      v4[3] = v356;
      v355 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v354;
    v355 = v4 + 3;
  }

  v4 = TST::CategoryOwnerArchive::_InternalSerialize(v353, v355, a3);
  if ((v244 & 0x80000) != 0)
  {
LABEL_709:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v359 = *(this + 61);
    *v4 = 1426;
    v360 = *(v359 + 5);
    if (v360 > 0x7F)
    {
      v4[2] = v360 | 0x80;
      v362 = v360 >> 7;
      if (v360 >> 14)
      {
        v361 = v4 + 4;
        do
        {
          *(v361 - 1) = v362 | 0x80;
          v363 = v362 >> 7;
          ++v361;
          v364 = v362 >> 14;
          v362 >>= 7;
        }

        while (v364);
        *(v361 - 1) = v363;
      }

      else
      {
        v4[3] = v362;
        v361 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v360;
      v361 = v4 + 3;
    }

    v4 = TST::PencilAnnotationOwnerArchive::_InternalSerialize(v359, v361, a3);
  }

LABEL_719:
  if ((*(this + 16) & 8) != 0)
  {
    v4 = sub_22150C00C(a3, 83, (*(this + 13) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v365 = *(this + 5);
  if ((v365 & 0x100000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v366 = *(this + 62);
    *v4 = 1442;
    v367 = *(v366 + 5);
    if (v367 > 0x7F)
    {
      v4[2] = v367 | 0x80;
      v369 = v367 >> 7;
      if (v367 >> 14)
      {
        v368 = v4 + 4;
        do
        {
          *(v368 - 1) = v369 | 0x80;
          v370 = v369 >> 7;
          ++v368;
          v371 = v369 >> 14;
          v369 >>= 7;
        }

        while (v371);
        *(v368 - 1) = v370;
      }

      else
      {
        v4[3] = v369;
        v368 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v367;
      v368 = v4 + 3;
    }

    v4 = TSCE::HauntedOwnerArchive::_InternalSerialize(v366, v368, a3);
    if ((v365 & 0x200000) == 0)
    {
LABEL_723:
      if ((v365 & 0x400000) == 0)
      {
        goto LABEL_724;
      }

      goto LABEL_748;
    }
  }

  else if ((v365 & 0x200000) == 0)
  {
    goto LABEL_723;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v372 = *(this + 63);
  *v4 = 1450;
  v373 = *(v372 + 5);
  if (v373 > 0x7F)
  {
    v4[2] = v373 | 0x80;
    v375 = v373 >> 7;
    if (v373 >> 14)
    {
      v374 = v4 + 4;
      do
      {
        *(v374 - 1) = v375 | 0x80;
        v376 = v375 >> 7;
        ++v374;
        v377 = v375 >> 14;
        v375 >>= 7;
      }

      while (v377);
      *(v374 - 1) = v376;
    }

    else
    {
      v4[3] = v375;
      v374 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v373;
    v374 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v372, v374, a3);
  if ((v365 & 0x400000) == 0)
  {
LABEL_724:
    if ((v365 & 0x800000) == 0)
    {
      goto LABEL_725;
    }

    goto LABEL_758;
  }

LABEL_748:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v378 = *(this + 64);
  *v4 = 1458;
  v379 = *(v378 + 5);
  if (v379 > 0x7F)
  {
    v4[2] = v379 | 0x80;
    v381 = v379 >> 7;
    if (v379 >> 14)
    {
      v380 = v4 + 4;
      do
      {
        *(v380 - 1) = v381 | 0x80;
        v382 = v381 >> 7;
        ++v380;
        v383 = v381 >> 14;
        v381 >>= 7;
      }

      while (v383);
      *(v380 - 1) = v382;
    }

    else
    {
      v4[3] = v381;
      v380 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v379;
    v380 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v378, v380, a3);
  if ((v365 & 0x800000) == 0)
  {
LABEL_725:
    if ((v365 & 0x1000000) == 0)
    {
      goto LABEL_726;
    }

    goto LABEL_768;
  }

LABEL_758:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v384 = *(this + 65);
  *v4 = 1466;
  v385 = *(v384 + 5);
  if (v385 > 0x7F)
  {
    v4[2] = v385 | 0x80;
    v387 = v385 >> 7;
    if (v385 >> 14)
    {
      v386 = v4 + 4;
      do
      {
        *(v386 - 1) = v387 | 0x80;
        v388 = v387 >> 7;
        ++v386;
        v389 = v387 >> 14;
        v387 >>= 7;
      }

      while (v389);
      *(v386 - 1) = v388;
    }

    else
    {
      v4[3] = v387;
      v386 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v385;
    v386 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v384, v386, a3);
  if ((v365 & 0x1000000) == 0)
  {
LABEL_726:
    if ((v365 & 0x2000000) == 0)
    {
      goto LABEL_788;
    }

    goto LABEL_778;
  }

LABEL_768:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v390 = *(this + 66);
  *v4 = 1474;
  v391 = *(v390 + 5);
  if (v391 > 0x7F)
  {
    v4[2] = v391 | 0x80;
    v393 = v391 >> 7;
    if (v391 >> 14)
    {
      v392 = v4 + 4;
      do
      {
        *(v392 - 1) = v393 | 0x80;
        v394 = v393 >> 7;
        ++v392;
        v395 = v393 >> 14;
        v393 >>= 7;
      }

      while (v395);
      *(v392 - 1) = v394;
    }

    else
    {
      v4[3] = v393;
      v392 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v391;
    v392 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v390, v392, a3);
  if ((v365 & 0x2000000) != 0)
  {
LABEL_778:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v396 = *(this + 67);
    *v4 = 1482;
    v397 = *(v396 + 5);
    if (v397 > 0x7F)
    {
      v4[2] = v397 | 0x80;
      v399 = v397 >> 7;
      if (v397 >> 14)
      {
        v398 = v4 + 4;
        do
        {
          *(v398 - 1) = v399 | 0x80;
          v400 = v399 >> 7;
          ++v398;
          v401 = v399 >> 14;
          v399 >>= 7;
        }

        while (v401);
        *(v398 - 1) = v400;
      }

      else
      {
        v4[3] = v399;
        v398 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v397;
      v398 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v396, v398, a3);
  }

LABEL_788:
  v402 = *(this + 8);
  if (v402 >= 1)
  {
    for (i = 0; i != v402; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v404 = *(*(this + 5) + 4 * i);
      *v4 = 1488;
      if (v404 > 0x7F)
      {
        v4[2] = v404 | 0x80;
        v405 = v404 >> 7;
        if (v404 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v405 | 0x80;
            v406 = v405 >> 7;
            ++v4;
            v407 = v405 >> 14;
            v405 >>= 7;
          }

          while (v407);
          *(v4 - 1) = v406;
        }

        else
        {
          v4[3] = v405;
          v4 += 4;
        }
      }

      else
      {
        v4[2] = v404;
        v4 += 3;
      }
    }
  }

  v408 = *(this + 12);
  if (v408 >= 1)
  {
    for (j = 0; j != v408; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v410 = *(*(this + 7) + 4 * j);
      *v4 = 1496;
      if (v410 > 0x7F)
      {
        v4[2] = v410 | 0x80;
        v411 = v410 >> 7;
        if (v410 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v411 | 0x80;
            v412 = v411 >> 7;
            ++v4;
            v413 = v411 >> 14;
            v411 >>= 7;
          }

          while (v413);
          *(v4 - 1) = v412;
        }

        else
        {
          v4[3] = v411;
          v4 += 4;
        }
      }

      else
      {
        v4[2] = v410;
        v4 += 3;
      }
    }
  }

  v414 = *(this + 16);
  if (v414 >= 1)
  {
    for (k = 0; k != v414; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v416 = *(*(this + 9) + 4 * k);
      *v4 = 1504;
      if (v416 > 0x7F)
      {
        v4[2] = v416 | 0x80;
        v417 = v416 >> 7;
        if (v416 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v417 | 0x80;
            v418 = v417 >> 7;
            ++v4;
            v419 = v417 >> 14;
            v417 >>= 7;
          }

          while (v419);
          *(v4 - 1) = v418;
        }

        else
        {
          v4[3] = v417;
          v4 += 4;
        }
      }

      else
      {
        v4[2] = v416;
        v4 += 3;
      }
    }
  }

  if ((v365 & 0x4000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v420 = *(this + 68);
    *v4 = 1514;
    v421 = *(v420 + 5);
    if (v421 > 0x7F)
    {
      v4[2] = v421 | 0x80;
      v423 = v421 >> 7;
      if (v421 >> 14)
      {
        v422 = v4 + 4;
        do
        {
          *(v422 - 1) = v423 | 0x80;
          v424 = v423 >> 7;
          ++v422;
          v425 = v423 >> 14;
          v423 >>= 7;
        }

        while (v425);
        *(v422 - 1) = v424;
      }

      else
      {
        v4[3] = v423;
        v422 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v421;
      v422 = v4 + 3;
    }

    v4 = TSCE::SpillOwnerArchive::_InternalSerialize(v420, v422, a3);
  }

  v426 = *(this + 1);
  if ((v426 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v426 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableModelArchive::RequiredFieldsByteSizeFallback(TST::TableModelArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v4 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v7 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
    v15 = TSP::Reference::ByteSizeLong(*(this + 14));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 0x20) == 0)
    {
LABEL_12:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  v16 = TST::DataStore::ByteSizeLong(*(this + 15));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = TSP::Reference::ByteSizeLong(*(this + 17));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = TSP::Reference::ByteSizeLong(*(this + 18));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x200) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = TSP::Reference::ByteSizeLong(*(this + 19));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = TSP::Reference::ByteSizeLong(*(this + 20));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = TSP::Reference::ByteSizeLong(*(this + 22));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = TSP::Reference::ByteSizeLong(*(this + 23));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v2 = *(this + 4);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_38:
  v23 = TSP::Reference::ByteSizeLong(*(this + 24));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((*(this + 4) & 0x8000) != 0)
  {
LABEL_20:
    v10 = TSP::Reference::ByteSizeLong(*(this + 25));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  v11 = *(this + 5);
  if ((v11 & 0x8000000) != 0)
  {
    v3 += ((9 * (__clz(*(this + 138) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v11 & 0x10000000) != 0)
  {
    v3 += ((9 * (__clz(*(this + 139) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v12 = *(this + 6);
  v13 = v3 + 10;
  if ((v12 & 2) == 0)
  {
    v13 = v3;
  }

  if ((v12 & 4) != 0)
  {
    return v13 + 10;
  }

  else
  {
    return v13;
  }
}

uint64_t TST::TableModelArchive::ByteSizeLong(TST::TableModelArchive *this)
{
  if ((*(this + 5) & 0x18000000 | *(this + 4) & 0xF7B3) == 0x1800F7B3 && (*(this + 6) & 6) == 6)
  {
    v4 = *(this + 11);
    v5 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v10 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v94 = v8;
    v95 = v12;
    v13 = TSP::Reference::ByteSizeLong(*(this + 14));
    v14 = TST::DataStore::ByteSizeLong(*(this + 15));
    v15 = TSP::Reference::ByteSizeLong(*(this + 17));
    v16 = TSP::Reference::ByteSizeLong(*(this + 18));
    v17 = TSP::Reference::ByteSizeLong(*(this + 19));
    v18 = TSP::Reference::ByteSizeLong(*(this + 20));
    v19.i32[0] = v8 | 1;
    v19.i32[1] = v12 | 1;
    v19.i32[2] = v13 | 1;
    v19.i32[3] = v14 | 1;
    v20.i32[0] = v15 | 1;
    v20.i32[1] = v16 | 1;
    v20.i32[2] = v17 | 1;
    v20.i32[3] = v18 | 1;
    v21.i64[0] = 0x1F0000001FLL;
    v21.i64[1] = 0x1F0000001FLL;
    *v19.i8 = vmovn_s32(veorq_s8(vclzq_s32(v19), v21));
    *v20.i8 = vmovn_s32(veorq_s8(vclzq_s32(v20), v21));
    v21.i64[0] = 0x4900000049;
    v21.i64[1] = 0x4900000049;
    v22 = vmlal_u16(v21, *v19.i8, 0x9000900090009);
    v19.i64[0] = 0x4900000049;
    v19.i64[1] = 0x4900000049;
    v92 = vshrq_n_u32(vmlal_u16(v19, *v20.i8, 0x9000900090009), 6uLL);
    v93 = vshrq_n_u32(v22, 6uLL);
    v23 = TSP::Reference::ByteSizeLong(*(this + 22));
    v24 = TSP::Reference::ByteSizeLong(*(this + 23));
    v25 = TSP::Reference::ByteSizeLong(*(this + 24));
    v26 = TSP::Reference::ByteSizeLong(*(this + 25));
    v27.i32[0] = v23 | 1;
    v27.i32[1] = v24 | 1;
    v27.i32[2] = v25 | 1;
    v27.i32[3] = v26 | 1;
    v28.i64[0] = 0x1F0000001FLL;
    v28.i64[1] = 0x1F0000001FLL;
    *v27.i8 = vmovn_s32(veorq_s8(vclzq_s32(v27), v28));
    v28.i64[0] = 0x4900000049;
    v28.i64[1] = 0x4900000049;
    v27.i64[0] = vaddvq_s64(vpadalq_u32(vaddq_s64(vaddl_u32(*v93.i8, *v92.i8), vaddl_high_u32(v93, v92)), vshrq_n_u32(vmlal_u16(v28, *v27.i8, 0x9000900090009), 6uLL)));
    v27.i64[1] = v94;
    v3 = v13 + v15 + v14 + v23 + v18 + v17 + v16 + vaddvq_s64(vaddw_u32(v27, vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(this + 69) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL))) + v95 + v26 + v25 + v24 + 42;
  }

  else
  {
    v3 = TST::TableModelArchive::RequiredFieldsByteSizeFallback(this);
  }

  v29 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v30 = *(this + 8);
  v31 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v32 = *(this + 12);
  v33 = v29 + v3 + v31 + google::protobuf::internal::WireFormatLite::UInt32Size() + 2 * (v32 + v30 + *(this + 16));
  v34 = *(this + 4);
  if ((v34 & 0xC) != 0)
  {
    if ((v34 & 4) != 0)
    {
      v35 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v35 + 23);
      v37 = *(v35 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v37 = v36;
      }

      v33 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v34 & 8) != 0)
    {
      v38 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
      v39 = *(v38 + 23);
      v40 = *(v38 + 8);
      if ((v39 & 0x80u) == 0)
      {
        v40 = v39;
      }

      v33 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v34 & 0x40) != 0)
  {
    v41 = TSP::Reference::ByteSizeLong(*(this + 16));
    v33 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v34 & 0x800) != 0)
  {
    v42 = TST::CellID::ByteSizeLong(*(this + 21));
    v33 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v34 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v34 & 0x10000) != 0)
  {
    v54 = TSP::Reference::ByteSizeLong(*(this + 26));
    v33 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v34 & 0x20000) == 0)
    {
LABEL_29:
      if ((v34 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_121;
    }
  }

  else if ((v34 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v55 = TSP::Reference::ByteSizeLong(*(this + 27));
  v33 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x40000) == 0)
  {
LABEL_30:
    if ((v34 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_122;
  }

LABEL_121:
  v56 = TSP::Reference::ByteSizeLong(*(this + 28));
  v33 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x80000) == 0)
  {
LABEL_31:
    if ((v34 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_123;
  }

LABEL_122:
  v57 = TSP::Reference::ByteSizeLong(*(this + 29));
  v33 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x100000) == 0)
  {
LABEL_32:
    if ((v34 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

LABEL_124:
    v59 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 31));
    v33 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v34 & 0x400000) == 0)
    {
LABEL_34:
      if ((v34 & 0x800000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_125;
  }

LABEL_123:
  v58 = TSP::Reference::ByteSizeLong(*(this + 30));
  v33 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x200000) != 0)
  {
    goto LABEL_124;
  }

LABEL_33:
  if ((v34 & 0x400000) == 0)
  {
    goto LABEL_34;
  }

LABEL_125:
  v60 = TST::TableSortOrderArchive::ByteSizeLong(*(this + 32));
  v33 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x800000) != 0)
  {
LABEL_35:
    v43 = TST::SortRuleReferenceTrackerArchive::ByteSizeLong(*(this + 33));
    v33 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_36:
  if (!HIBYTE(v34))
  {
    goto LABEL_45;
  }

  if ((v34 & 0x1000000) != 0)
  {
    v84 = TSP::Reference::ByteSizeLong(*(this + 34));
    v33 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v34 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v34 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_156;
    }
  }

  else if ((v34 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v85 = TST::MergeOwnerArchive::ByteSizeLong(*(this + 35));
  v33 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_157;
  }

LABEL_156:
  v86 = TSP::Reference::ByteSizeLong(*(this + 36));
  v33 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_158;
  }

LABEL_157:
  v87 = TSP::Reference::ByteSizeLong(*(this + 37));
  v33 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v34 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_159;
  }

LABEL_158:
  v88 = TST::StructuredTextImportRecord::ByteSizeLong(*(this + 38));
  v33 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_160:
    v90 = TSP::Reference::ByteSizeLong(*(this + 40));
    v33 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

LABEL_159:
  v89 = TSP::Reference::ByteSizeLong(*(this + 39));
  v33 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_160;
  }

LABEL_44:
  if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_161:
  v91 = TSP::Reference::ByteSizeLong(*(this + 41));
  v33 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_45:
  v44 = *(this + 5);
  if (!v44)
  {
    goto LABEL_55;
  }

  if (v44)
  {
    v61 = TSP::Reference::ByteSizeLong(*(this + 42));
    v33 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v44 & 2) == 0)
    {
LABEL_48:
      if ((v44 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_129;
    }
  }

  else if ((v44 & 2) == 0)
  {
    goto LABEL_48;
  }

  v62 = TSP::Reference::ByteSizeLong(*(this + 43));
  v33 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 4) == 0)
  {
LABEL_49:
    if ((v44 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_130;
  }

LABEL_129:
  v63 = TSP::Reference::ByteSizeLong(*(this + 44));
  v33 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 8) == 0)
  {
LABEL_50:
    if ((v44 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_131;
  }

LABEL_130:
  v64 = TSP::Reference::ByteSizeLong(*(this + 45));
  v33 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x10) == 0)
  {
LABEL_51:
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_132;
  }

LABEL_131:
  v65 = TSP::Reference::ByteSizeLong(*(this + 46));
  v33 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x20) == 0)
  {
LABEL_52:
    if ((v44 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_133;
  }

LABEL_132:
  v66 = TSP::Reference::ByteSizeLong(*(this + 47));
  v33 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x40) == 0)
  {
LABEL_53:
    if ((v44 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_133:
  v67 = TSP::Reference::ByteSizeLong(*(this + 48));
  v33 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x80) != 0)
  {
LABEL_54:
    v45 = TST::HiddenStatesOwnerArchive::ByteSizeLong(*(this + 49));
    v33 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_55:
  if ((v44 & 0xFF00) == 0)
  {
    goto LABEL_65;
  }

  if ((v44 & 0x100) != 0)
  {
    v68 = TSP::Reference::ByteSizeLong(*(this + 50));
    v33 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v44 & 0x200) == 0)
    {
LABEL_58:
      if ((v44 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_137;
    }
  }

  else if ((v44 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  v69 = TSP::Reference::ByteSizeLong(*(this + 51));
  v33 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x400) == 0)
  {
LABEL_59:
    if ((v44 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_138;
  }

LABEL_137:
  v70 = TSP::Reference::ByteSizeLong(*(this + 52));
  v33 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x800) == 0)
  {
LABEL_60:
    if ((v44 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_139;
  }

LABEL_138:
  v71 = TSP::Reference::ByteSizeLong(*(this + 53));
  v33 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x1000) == 0)
  {
LABEL_61:
    if ((v44 & 0x2000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_140;
  }

LABEL_139:
  v72 = TSP::Reference::ByteSizeLong(*(this + 54));
  v33 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x2000) == 0)
  {
LABEL_62:
    if ((v44 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_141;
  }

LABEL_140:
  v73 = TSP::Reference::ByteSizeLong(*(this + 55));
  v33 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x4000) == 0)
  {
LABEL_63:
    if ((v44 & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_141:
  v74 = TSP::Reference::ByteSizeLong(*(this + 56));
  v33 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x8000) != 0)
  {
LABEL_64:
    v46 = TSP::Reference::ByteSizeLong(*(this + 57));
    v33 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_65:
  if ((v44 & 0xFF0000) == 0)
  {
    goto LABEL_75;
  }

  if ((v44 & 0x10000) != 0)
  {
    v75 = TSP::Reference::ByteSizeLong(*(this + 58));
    v33 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v44 & 0x20000) == 0)
    {
LABEL_68:
      if ((v44 & 0x40000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_145;
    }
  }

  else if ((v44 & 0x20000) == 0)
  {
    goto LABEL_68;
  }

  v76 = TSP::Reference::ByteSizeLong(*(this + 59));
  v33 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x40000) == 0)
  {
LABEL_69:
    if ((v44 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_146;
  }

LABEL_145:
  v77 = TST::CategoryOwnerArchive::ByteSizeLong(*(this + 60));
  v33 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x80000) == 0)
  {
LABEL_70:
    if ((v44 & 0x100000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_147;
  }

LABEL_146:
  v78 = TST::PencilAnnotationOwnerArchive::ByteSizeLong(*(this + 61));
  v33 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x100000) == 0)
  {
LABEL_71:
    if ((v44 & 0x200000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_148;
  }

LABEL_147:
  v79 = TSCE::HauntedOwnerArchive::ByteSizeLong(*(this + 62));
  v33 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x200000) == 0)
  {
LABEL_72:
    if ((v44 & 0x400000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_149;
  }

LABEL_148:
  v80 = TSP::Reference::ByteSizeLong(*(this + 63));
  v33 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x400000) == 0)
  {
LABEL_73:
    if ((v44 & 0x800000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_149:
  v81 = TSP::Reference::ByteSizeLong(*(this + 64));
  v33 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x800000) != 0)
  {
LABEL_74:
    v47 = TSP::Reference::ByteSizeLong(*(this + 65));
    v33 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_75:
  if ((v44 & 0x7000000) == 0)
  {
    goto LABEL_80;
  }

  if ((v44 & 0x1000000) != 0)
  {
    v82 = TSP::Reference::ByteSizeLong(*(this + 66));
    v33 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v44 & 0x2000000) == 0)
    {
LABEL_78:
      if ((v44 & 0x4000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }
  }

  else if ((v44 & 0x2000000) == 0)
  {
    goto LABEL_78;
  }

  v83 = TSP::Reference::ByteSizeLong(*(this + 67));
  v33 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v44 & 0x4000000) != 0)
  {
LABEL_79:
    v48 = TSCE::SpillOwnerArchive::ByteSizeLong(*(this + 68));
    v33 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_80:
  if (!(v44 >> 29))
  {
    goto LABEL_84;
  }

  if ((v44 & 0x20000000) == 0)
  {
    if ((v44 & 0x40000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_163:
    v33 += ((9 * (__clz(*(this + 141) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_164;
  }

  v33 += ((9 * (__clz(*(this + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v44 & 0x40000000) != 0)
  {
    goto LABEL_163;
  }

LABEL_83:
  if ((v44 & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

LABEL_164:
  v33 += ((9 * (__clz(*(this + 142) | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_84:
  v49 = *(this + 6);
  if (v49)
  {
    v33 += ((9 * (__clz(*(this + 143) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v49 & 0xF8) != 0)
  {
    if ((v49 & 8) != 0)
    {
      v33 += ((9 * (__clz(*(this + 148) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v50 = v33 + ((v49 >> 3) & 2);
    if ((v49 & 0x20) != 0)
    {
      v50 += 3;
    }

    if ((v49 & 0x40) != 0)
    {
      v50 += 3;
    }

    if ((v49 & 0x80) != 0)
    {
      v33 = v50 + 3;
    }

    else
    {
      v33 = v50;
    }
  }

  if ((v49 & 0xFF00) != 0)
  {
    if ((v49 & 0x100) != 0)
    {
      v33 += ((9 * (__clz(*(this + 150) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v51 = v33 + 3;
    if ((v49 & 0x200) == 0)
    {
      v51 = v33;
    }

    if ((v49 & 0x400) != 0)
    {
      v51 += 3;
    }

    if ((v49 & 0x800) != 0)
    {
      v51 += 3;
    }

    v52 = v51 + ((v49 >> 11) & 2);
    if ((v49 & 0x2000) != 0)
    {
      v33 = v52 + 10;
    }

    else
    {
      v33 = v52;
    }

    if ((v49 & 0x4000) != 0)
    {
      v33 += ((9 * (__clz(*(this + 154) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v49 & 0x8000) != 0)
    {
      v33 += ((9 * (__clz(*(this + 155) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v49 & 0x30000) != 0)
  {
    if ((v49 & 0x10000) != 0)
    {
      v33 += ((9 * (__clz(*(this + 156) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v49 & 0x20000) != 0)
    {
      v33 += 3;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v33, this + 28);
  }

  else
  {
    *(this + 7) = v33;
    return v33;
  }
}

void TST::TableModelArchive::MergeFrom(TST::TableModelArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TST::TableModelArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TST::TableModelArchive::MergeFrom(TST::TableModelArchive *this, const TST::TableModelArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(this + 8);
    sub_2210BBC64(this + 8, v6 + v5);
    v7 = *(this + 5);
    *(this + 8) += *(a2 + 8);
    memcpy((v7 + 4 * v6), *(a2 + 5), 4 * *(a2 + 8));
  }

  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *(this + 12);
    sub_2210BBC64(this + 12, v9 + v8);
    v10 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy((v10 + 4 * v9), *(a2 + 7), 4 * *(a2 + 12));
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(this + 16);
    sub_2210BBC64(this + 16, v12 + v11);
    v13 = *(this + 9);
    *(this + 16) += *(a2 + 16);
    memcpy((v13 + 4 * v12), *(a2 + 9), 4 * *(a2 + 16));
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    goto LABEL_56;
  }

  if (v14)
  {
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Set();
    if ((v14 & 2) == 0)
    {
LABEL_12:
      if ((v14 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      *(this + 4) |= 4u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if ((v14 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_12;
  }

  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::Set();
  if ((v14 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((v14 & 8) != 0)
  {
LABEL_18:
    *(this + 4) |= 8u;
    google::protobuf::internal::ArenaStringPtr::Set();
  }

LABEL_19:
  v15 = MEMORY[0x277D80A18];
  if ((v14 & 0x10) == 0)
  {
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    *(this + 4) |= 0x20u;
    v19 = *(this + 15);
    if (!v19)
    {
      v20 = *(this + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v20);
      *(this + 15) = v19;
    }

    if (*(a2 + 15))
    {
      v21 = *(a2 + 15);
    }

    else
    {
      v21 = TST::_DataStore_default_instance_;
    }

    TST::DataStore::MergeFrom(v19, v21);
    if ((v14 & 0x40) == 0)
    {
LABEL_22:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

  *(this + 4) |= 0x10u;
  v16 = *(this + 14);
  if (!v16)
  {
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0390](v17);
    *(this + 14) = v16;
  }

  if (*(a2 + 14))
  {
    v18 = *(a2 + 14);
  }

  else
  {
    v18 = v15;
  }

  TSP::Reference::MergeFrom(v16, v18);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_40:
  *(this + 4) |= 0x40u;
  v22 = *(this + 16);
  if (!v22)
  {
    v23 = *(this + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0390](v23);
    *(this + 16) = v22;
  }

  if (*(a2 + 16))
  {
    v24 = *(a2 + 16);
  }

  else
  {
    v24 = v15;
  }

  TSP::Reference::MergeFrom(v22, v24);
  if ((v14 & 0x80) != 0)
  {
LABEL_48:
    *(this + 4) |= 0x80u;
    v25 = *(this + 17);
    if (!v25)
    {
      v26 = *(this + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0390](v26);
      *(this + 17) = v25;
    }

    if (*(a2 + 17))
    {
      v27 = *(a2 + 17);
    }

    else
    {
      v27 = v15;
    }

    TSP::Reference::MergeFrom(v25, v27);
  }

LABEL_56:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_130;
  }

  if ((v14 & 0x100) != 0)
  {
    *(this + 4) |= 0x100u;
    v28 = *(this + 18);
    if (!v28)
    {
      v29 = *(this + 1);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0390](v29);
      *(this + 18) = v28;
    }

    if (*(a2 + 18))
    {
      v30 = *(a2 + 18);
    }

    else
    {
      v30 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v28, v30);
    if ((v14 & 0x200) == 0)
    {
LABEL_59:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  *(this + 4) |= 0x200u;
  v31 = *(this + 19);
  if (!v31)
  {
    v32 = *(this + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x223DA0390](v32);
    *(this + 19) = v31;
  }

  if (*(a2 + 19))
  {
    v33 = *(a2 + 19);
  }

  else
  {
    v33 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v31, v33);
  if ((v14 & 0x400) == 0)
  {
LABEL_60:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_90;
  }

LABEL_82:
  *(this + 4) |= 0x400u;
  v34 = *(this + 20);
  if (!v34)
  {
    v35 = *(this + 1);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0390](v35);
    *(this + 20) = v34;
  }

  if (*(a2 + 20))
  {
    v36 = *(a2 + 20);
  }

  else
  {
    v36 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v34, v36);
  if ((v14 & 0x800) == 0)
  {
LABEL_61:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_98;
  }

LABEL_90:
  *(this + 4) |= 0x800u;
  v37 = *(this + 21);
  if (!v37)
  {
    v38 = *(this + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v38);
    *(this + 21) = v37;
  }

  if (*(a2 + 21))
  {
    v39 = *(a2 + 21);
  }

  else
  {
    v39 = TST::_CellID_default_instance_;
  }

  TST::CellID::MergeFrom(v37, v39);
  if ((v14 & 0x1000) == 0)
  {
LABEL_62:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_98:
  *(this + 4) |= 0x1000u;
  v40 = *(this + 22);
  if (!v40)
  {
    v41 = *(this + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0390](v41);
    *(this + 22) = v40;
  }

  if (*(a2 + 22))
  {
    v42 = *(a2 + 22);
  }

  else
  {
    v42 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v40, v42);
  if ((v14 & 0x2000) == 0)
  {
LABEL_63:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_114;
  }

LABEL_106:
  *(this + 4) |= 0x2000u;
  v43 = *(this + 23);
  if (!v43)
  {
    v44 = *(this + 1);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x223DA0390](v44);
    *(this + 23) = v43;
  }

  if (*(a2 + 23))
  {
    v45 = *(a2 + 23);
  }

  else
  {
    v45 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v43, v45);
  if ((v14 & 0x4000) == 0)
  {
LABEL_64:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_122;
  }

LABEL_114:
  *(this + 4) |= 0x4000u;
  v46 = *(this + 24);
  if (!v46)
  {
    v47 = *(this + 1);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x223DA0390](v47);
    *(this + 24) = v46;
  }

  if (*(a2 + 24))
  {
    v48 = *(a2 + 24);
  }

  else
  {
    v48 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v46, v48);
  if ((v14 & 0x8000) != 0)
  {
LABEL_122:
    *(this + 4) |= 0x8000u;
    v49 = *(this + 25);
    if (!v49)
    {
      v50 = *(this + 1);
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = MEMORY[0x223DA0390](v50);
      *(this + 25) = v49;
    }

    if (*(a2 + 25))
    {
      v51 = *(a2 + 25);
    }

    else
    {
      v51 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v49, v51);
  }

LABEL_130:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_204;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(this + 4) |= 0x10000u;
    v52 = *(this + 26);
    if (!v52)
    {
      v53 = *(this + 1);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x223DA0390](v53);
      *(this + 26) = v52;
    }

    if (*(a2 + 26))
    {
      v54 = *(a2 + 26);
    }

    else
    {
      v54 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v52, v54);
    if ((v14 & 0x20000) == 0)
    {
LABEL_133:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_156;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_133;
  }

  *(this + 4) |= 0x20000u;
  v55 = *(this + 27);
  if (!v55)
  {
    v56 = *(this + 1);
    if (v56)
    {
      v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
    }

    v55 = MEMORY[0x223DA0390](v56);
    *(this + 27) = v55;
  }

  if (*(a2 + 27))
  {
    v57 = *(a2 + 27);
  }

  else
  {
    v57 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v55, v57);
  if ((v14 & 0x40000) == 0)
  {
LABEL_134:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_164;
  }

LABEL_156:
  *(this + 4) |= 0x40000u;
  v58 = *(this + 28);
  if (!v58)
  {
    v59 = *(this + 1);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = MEMORY[0x223DA0390](v59);
    *(this + 28) = v58;
  }

  if (*(a2 + 28))
  {
    v60 = *(a2 + 28);
  }

  else
  {
    v60 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v58, v60);
  if ((v14 & 0x80000) == 0)
  {
LABEL_135:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_172;
  }

LABEL_164:
  *(this + 4) |= 0x80000u;
  v61 = *(this + 29);
  if (!v61)
  {
    v62 = *(this + 1);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x223DA0390](v62);
    *(this + 29) = v61;
  }

  if (*(a2 + 29))
  {
    v63 = *(a2 + 29);
  }

  else
  {
    v63 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v61, v63);
  if ((v14 & 0x100000) == 0)
  {
LABEL_136:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_180;
  }

LABEL_172:
  *(this + 4) |= 0x100000u;
  v64 = *(this + 30);
  if (!v64)
  {
    v65 = *(this + 1);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x223DA0390](v65);
    *(this + 30) = v64;
  }

  if (*(a2 + 30))
  {
    v66 = *(a2 + 30);
  }

  else
  {
    v66 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v64, v66);
  if ((v14 & 0x200000) == 0)
  {
LABEL_137:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_188;
  }

LABEL_180:
  *(this + 4) |= 0x200000u;
  v67 = *(this + 31);
  if (!v67)
  {
    v68 = *(this + 1);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x223DA0300](v68);
    *(this + 31) = v67;
  }

  if (*(a2 + 31))
  {
    v69 = *(a2 + 31);
  }

  else
  {
    v69 = MEMORY[0x277D80A28];
  }

  TSP::CFUUIDArchive::MergeFrom(v67, v69);
  if ((v14 & 0x400000) == 0)
  {
LABEL_138:
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_196;
  }

LABEL_188:
  *(this + 4) |= 0x400000u;
  v70 = *(this + 32);
  if (!v70)
  {
    v71 = *(this + 1);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive>(v71);
    *(this + 32) = v70;
  }

  if (*(a2 + 32))
  {
    v72 = *(a2 + 32);
  }

  else
  {
    v72 = &TST::_TableSortOrderArchive_default_instance_;
  }

  TST::TableSortOrderArchive::MergeFrom(v70, v72);
  if ((v14 & 0x800000) != 0)
  {
LABEL_196:
    *(this + 4) |= 0x800000u;
    v73 = *(this + 33);
    if (!v73)
    {
      v74 = *(this + 1);
      if (v74)
      {
        v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
      }

      v73 = google::protobuf::Arena::CreateMaybeMessage<TST::SortRuleReferenceTrackerArchive>(v74);
      *(this + 33) = v73;
    }

    if (*(a2 + 33))
    {
      v75 = *(a2 + 33);
    }

    else
    {
      v75 = &TST::_SortRuleReferenceTrackerArchive_default_instance_;
    }

    TST::SortRuleReferenceTrackerArchive::MergeFrom(v73, v75);
  }

LABEL_204:
  if (!HIBYTE(v14))
  {
    goto LABEL_278;
  }

  if ((v14 & 0x1000000) != 0)
  {
    *(this + 4) |= 0x1000000u;
    v76 = *(this + 34);
    if (!v76)
    {
      v77 = *(this + 1);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x223DA0390](v77);
      *(this + 34) = v76;
    }

    if (*(a2 + 34))
    {
      v78 = *(a2 + 34);
    }

    else
    {
      v78 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v76, v78);
    if ((v14 & 0x2000000) == 0)
    {
LABEL_207:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_208;
      }

      goto LABEL_230;
    }
  }

  else if ((v14 & 0x2000000) == 0)
  {
    goto LABEL_207;
  }

  *(this + 4) |= 0x2000000u;
  v79 = *(this + 35);
  if (!v79)
  {
    v80 = *(this + 1);
    if (v80)
    {
      v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
    }

    v79 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOwnerArchive>(v80);
    *(this + 35) = v79;
  }

  if (*(a2 + 35))
  {
    v81 = *(a2 + 35);
  }

  else
  {
    v81 = TST::_MergeOwnerArchive_default_instance_;
  }

  TST::MergeOwnerArchive::MergeFrom(v79, v81);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_208:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_238;
  }

LABEL_230:
  *(this + 4) |= 0x4000000u;
  v82 = *(this + 36);
  if (!v82)
  {
    v83 = *(this + 1);
    if (v83)
    {
      v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
    }

    v82 = MEMORY[0x223DA0390](v83);
    *(this + 36) = v82;
  }

  if (*(a2 + 36))
  {
    v84 = *(a2 + 36);
  }

  else
  {
    v84 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v82, v84);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_209:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_246;
  }

LABEL_238:
  *(this + 4) |= 0x8000000u;
  v85 = *(this + 37);
  if (!v85)
  {
    v86 = *(this + 1);
    if (v86)
    {
      v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
    }

    v85 = MEMORY[0x223DA0390](v86);
    *(this + 37) = v85;
  }

  if (*(a2 + 37))
  {
    v87 = *(a2 + 37);
  }

  else
  {
    v87 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v85, v87);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_210:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_254;
  }

LABEL_246:
  *(this + 4) |= 0x10000000u;
  v88 = *(this + 38);
  if (!v88)
  {
    v89 = *(this + 1);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
    }

    v88 = google::protobuf::Arena::CreateMaybeMessage<TST::StructuredTextImportRecord>(v89);
    *(this + 38) = v88;
  }

  if (*(a2 + 38))
  {
    v90 = *(a2 + 38);
  }

  else
  {
    v90 = &TST::_StructuredTextImportRecord_default_instance_;
  }

  TST::StructuredTextImportRecord::MergeFrom(v88, v90);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_211:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_262;
  }

LABEL_254:
  *(this + 4) |= 0x20000000u;
  v91 = *(this + 39);
  if (!v91)
  {
    v92 = *(this + 1);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = MEMORY[0x223DA0390](v92);
    *(this + 39) = v91;
  }

  if (*(a2 + 39))
  {
    v93 = *(a2 + 39);
  }

  else
  {
    v93 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v91, v93);
  if ((v14 & 0x40000000) == 0)
  {
LABEL_212:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_270;
  }

LABEL_262:
  *(this + 4) |= 0x40000000u;
  v94 = *(this + 40);
  if (!v94)
  {
    v95 = *(this + 1);
    if (v95)
    {
      v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
    }

    v94 = MEMORY[0x223DA0390](v95);
    *(this + 40) = v94;
  }

  if (*(a2 + 40))
  {
    v96 = *(a2 + 40);
  }

  else
  {
    v96 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v94, v96);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_270:
    *(this + 4) |= 0x80000000;
    v97 = *(this + 41);
    if (!v97)
    {
      v98 = *(this + 1);
      if (v98)
      {
        v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
      }

      v97 = MEMORY[0x223DA0390](v98);
      *(this + 41) = v97;
    }

    if (*(a2 + 41))
    {
      v99 = *(a2 + 41);
    }

    else
    {
      v99 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v97, v99);
  }

LABEL_278:
  v100 = *(a2 + 5);
  if (!v100)
  {
    goto LABEL_352;
  }

  if (v100)
  {
    *(this + 5) |= 1u;
    v101 = *(this + 42);
    if (!v101)
    {
      v102 = *(this + 1);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x223DA0390](v102);
      *(this + 42) = v101;
    }

    if (*(a2 + 42))
    {
      v103 = *(a2 + 42);
    }

    else
    {
      v103 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v101, v103);
    if ((v100 & 2) == 0)
    {
LABEL_281:
      if ((v100 & 4) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_304;
    }
  }

  else if ((v100 & 2) == 0)
  {
    goto LABEL_281;
  }

  *(this + 5) |= 2u;
  v104 = *(this + 43);
  if (!v104)
  {
    v105 = *(this + 1);
    if (v105)
    {
      v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
    }

    v104 = MEMORY[0x223DA0390](v105);
    *(this + 43) = v104;
  }

  if (*(a2 + 43))
  {
    v106 = *(a2 + 43);
  }

  else
  {
    v106 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v104, v106);
  if ((v100 & 4) == 0)
  {
LABEL_282:
    if ((v100 & 8) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_312;
  }

LABEL_304:
  *(this + 5) |= 4u;
  v107 = *(this + 44);
  if (!v107)
  {
    v108 = *(this + 1);
    if (v108)
    {
      v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
    }

    v107 = MEMORY[0x223DA0390](v108);
    *(this + 44) = v107;
  }

  if (*(a2 + 44))
  {
    v109 = *(a2 + 44);
  }

  else
  {
    v109 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v107, v109);
  if ((v100 & 8) == 0)
  {
LABEL_283:
    if ((v100 & 0x10) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_320;
  }

LABEL_312:
  *(this + 5) |= 8u;
  v110 = *(this + 45);
  if (!v110)
  {
    v111 = *(this + 1);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = MEMORY[0x223DA0390](v111);
    *(this + 45) = v110;
  }

  if (*(a2 + 45))
  {
    v112 = *(a2 + 45);
  }

  else
  {
    v112 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v110, v112);
  if ((v100 & 0x10) == 0)
  {
LABEL_284:
    if ((v100 & 0x20) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_328;
  }

LABEL_320:
  *(this + 5) |= 0x10u;
  v113 = *(this + 46);
  if (!v113)
  {
    v114 = *(this + 1);
    if (v114)
    {
      v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
    }

    v113 = MEMORY[0x223DA0390](v114);
    *(this + 46) = v113;
  }

  if (*(a2 + 46))
  {
    v115 = *(a2 + 46);
  }

  else
  {
    v115 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v113, v115);
  if ((v100 & 0x20) == 0)
  {
LABEL_285:
    if ((v100 & 0x40) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_336;
  }

LABEL_328:
  *(this + 5) |= 0x20u;
  v116 = *(this + 47);
  if (!v116)
  {
    v117 = *(this + 1);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = MEMORY[0x223DA0390](v117);
    *(this + 47) = v116;
  }

  if (*(a2 + 47))
  {
    v118 = *(a2 + 47);
  }

  else
  {
    v118 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v116, v118);
  if ((v100 & 0x40) == 0)
  {
LABEL_286:
    if ((v100 & 0x80) == 0)
    {
      goto LABEL_352;
    }

    goto LABEL_344;
  }

LABEL_336:
  *(this + 5) |= 0x40u;
  v119 = *(this + 48);
  if (!v119)
  {
    v120 = *(this + 1);
    if (v120)
    {
      v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
    }

    v119 = MEMORY[0x223DA0390](v120);
    *(this + 48) = v119;
  }

  if (*(a2 + 48))
  {
    v121 = *(a2 + 48);
  }

  else
  {
    v121 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v119, v121);
  if ((v100 & 0x80) != 0)
  {
LABEL_344:
    *(this + 5) |= 0x80u;
    v122 = *(this + 49);
    if (!v122)
    {
      v123 = *(this + 1);
      if (v123)
      {
        v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
      }

      v122 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesOwnerArchive>(v123);
      *(this + 49) = v122;
    }

    if (*(a2 + 49))
    {
      v124 = *(a2 + 49);
    }

    else
    {
      v124 = &TST::_HiddenStatesOwnerArchive_default_instance_;
    }

    TST::HiddenStatesOwnerArchive::MergeFrom(v122, v124);
  }

LABEL_352:
  if ((v100 & 0xFF00) == 0)
  {
    goto LABEL_426;
  }

  if ((v100 & 0x100) != 0)
  {
    *(this + 5) |= 0x100u;
    v125 = *(this + 50);
    if (!v125)
    {
      v126 = *(this + 1);
      if (v126)
      {
        v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
      }

      v125 = MEMORY[0x223DA0390](v126);
      *(this + 50) = v125;
    }

    if (*(a2 + 50))
    {
      v127 = *(a2 + 50);
    }

    else
    {
      v127 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v125, v127);
    if ((v100 & 0x200) == 0)
    {
LABEL_355:
      if ((v100 & 0x400) == 0)
      {
        goto LABEL_356;
      }

      goto LABEL_378;
    }
  }

  else if ((v100 & 0x200) == 0)
  {
    goto LABEL_355;
  }

  *(this + 5) |= 0x200u;
  v128 = *(this + 51);
  if (!v128)
  {
    v129 = *(this + 1);
    if (v129)
    {
      v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
    }

    v128 = MEMORY[0x223DA0390](v129);
    *(this + 51) = v128;
  }

  if (*(a2 + 51))
  {
    v130 = *(a2 + 51);
  }

  else
  {
    v130 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v128, v130);
  if ((v100 & 0x400) == 0)
  {
LABEL_356:
    if ((v100 & 0x800) == 0)
    {
      goto LABEL_357;
    }

    goto LABEL_386;
  }

LABEL_378:
  *(this + 5) |= 0x400u;
  v131 = *(this + 52);
  if (!v131)
  {
    v132 = *(this + 1);
    if (v132)
    {
      v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
    }

    v131 = MEMORY[0x223DA0390](v132);
    *(this + 52) = v131;
  }

  if (*(a2 + 52))
  {
    v133 = *(a2 + 52);
  }

  else
  {
    v133 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v131, v133);
  if ((v100 & 0x800) == 0)
  {
LABEL_357:
    if ((v100 & 0x1000) == 0)
    {
      goto LABEL_358;
    }

    goto LABEL_394;
  }

LABEL_386:
  *(this + 5) |= 0x800u;
  v134 = *(this + 53);
  if (!v134)
  {
    v135 = *(this + 1);
    if (v135)
    {
      v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
    }

    v134 = MEMORY[0x223DA0390](v135);
    *(this + 53) = v134;
  }

  if (*(a2 + 53))
  {
    v136 = *(a2 + 53);
  }

  else
  {
    v136 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v134, v136);
  if ((v100 & 0x1000) == 0)
  {
LABEL_358:
    if ((v100 & 0x2000) == 0)
    {
      goto LABEL_359;
    }

    goto LABEL_402;
  }

LABEL_394:
  *(this + 5) |= 0x1000u;
  v137 = *(this + 54);
  if (!v137)
  {
    v138 = *(this + 1);
    if (v138)
    {
      v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
    }

    v137 = MEMORY[0x223DA0390](v138);
    *(this + 54) = v137;
  }

  if (*(a2 + 54))
  {
    v139 = *(a2 + 54);
  }

  else
  {
    v139 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v137, v139);
  if ((v100 & 0x2000) == 0)
  {
LABEL_359:
    if ((v100 & 0x4000) == 0)
    {
      goto LABEL_360;
    }

    goto LABEL_410;
  }

LABEL_402:
  *(this + 5) |= 0x2000u;
  v140 = *(this + 55);
  if (!v140)
  {
    v141 = *(this + 1);
    if (v141)
    {
      v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
    }

    v140 = MEMORY[0x223DA0390](v141);
    *(this + 55) = v140;
  }

  if (*(a2 + 55))
  {
    v142 = *(a2 + 55);
  }

  else
  {
    v142 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v140, v142);
  if ((v100 & 0x4000) == 0)
  {
LABEL_360:
    if ((v100 & 0x8000) == 0)
    {
      goto LABEL_426;
    }

    goto LABEL_418;
  }

LABEL_410:
  *(this + 5) |= 0x4000u;
  v143 = *(this + 56);
  if (!v143)
  {
    v144 = *(this + 1);
    if (v144)
    {
      v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
    }

    v143 = MEMORY[0x223DA0390](v144);
    *(this + 56) = v143;
  }

  if (*(a2 + 56))
  {
    v145 = *(a2 + 56);
  }

  else
  {
    v145 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v143, v145);
  if ((v100 & 0x8000) != 0)
  {
LABEL_418:
    *(this + 5) |= 0x8000u;
    v146 = *(this + 57);
    if (!v146)
    {
      v147 = *(this + 1);
      if (v147)
      {
        v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
      }

      v146 = MEMORY[0x223DA0390](v147);
      *(this + 57) = v146;
    }

    if (*(a2 + 57))
    {
      v148 = *(a2 + 57);
    }

    else
    {
      v148 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v146, v148);
  }

LABEL_426:
  if ((v100 & 0xFF0000) == 0)
  {
    goto LABEL_500;
  }

  if ((v100 & 0x10000) != 0)
  {
    *(this + 5) |= 0x10000u;
    v149 = *(this + 58);
    if (!v149)
    {
      v150 = *(this + 1);
      if (v150)
      {
        v150 = *(v150 & 0xFFFFFFFFFFFFFFFELL);
      }

      v149 = MEMORY[0x223DA0390](v150);
      *(this + 58) = v149;
    }

    if (*(a2 + 58))
    {
      v151 = *(a2 + 58);
    }

    else
    {
      v151 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v149, v151);
    if ((v100 & 0x20000) == 0)
    {
LABEL_429:
      if ((v100 & 0x40000) == 0)
      {
        goto LABEL_430;
      }

      goto LABEL_452;
    }
  }

  else if ((v100 & 0x20000) == 0)
  {
    goto LABEL_429;
  }

  *(this + 5) |= 0x20000u;
  v152 = *(this + 59);
  if (!v152)
  {
    v153 = *(this + 1);
    if (v153)
    {
      v153 = *(v153 & 0xFFFFFFFFFFFFFFFELL);
    }

    v152 = MEMORY[0x223DA0390](v153);
    *(this + 59) = v152;
  }

  if (*(a2 + 59))
  {
    v154 = *(a2 + 59);
  }

  else
  {
    v154 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v152, v154);
  if ((v100 & 0x40000) == 0)
  {
LABEL_430:
    if ((v100 & 0x80000) == 0)
    {
      goto LABEL_431;
    }

    goto LABEL_460;
  }

LABEL_452:
  *(this + 5) |= 0x40000u;
  v155 = *(this + 60);
  if (!v155)
  {
    v156 = *(this + 1);
    if (v156)
    {
      v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
    }

    v155 = google::protobuf::Arena::CreateMaybeMessage<TST::CategoryOwnerArchive>(v156);
    *(this + 60) = v155;
  }

  if (*(a2 + 60))
  {
    v157 = *(a2 + 60);
  }

  else
  {
    v157 = &TST::_CategoryOwnerArchive_default_instance_;
  }

  TST::CategoryOwnerArchive::MergeFrom(v155, v157);
  if ((v100 & 0x80000) == 0)
  {
LABEL_431:
    if ((v100 & 0x100000) == 0)
    {
      goto LABEL_432;
    }

    goto LABEL_468;
  }

LABEL_460:
  *(this + 5) |= 0x80000u;
  v158 = *(this + 61);
  if (!v158)
  {
    v159 = *(this + 1);
    if (v159)
    {
      v159 = *(v159 & 0xFFFFFFFFFFFFFFFELL);
    }

    v158 = google::protobuf::Arena::CreateMaybeMessage<TST::PencilAnnotationOwnerArchive>(v159);
    *(this + 61) = v158;
  }

  if (*(a2 + 61))
  {
    v160 = *(a2 + 61);
  }

  else
  {
    v160 = &TST::_PencilAnnotationOwnerArchive_default_instance_;
  }

  TST::PencilAnnotationOwnerArchive::MergeFrom(v158, v160);
  if ((v100 & 0x100000) == 0)
  {
LABEL_432:
    if ((v100 & 0x200000) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_476;
  }

LABEL_468:
  *(this + 5) |= 0x100000u;
  v161 = *(this + 62);
  if (!v161)
  {
    v162 = *(this + 1);
    if (v162)
    {
      v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
    }

    v161 = google::protobuf::Arena::CreateMaybeMessage<TSCE::HauntedOwnerArchive>(v162);
    *(this + 62) = v161;
  }

  if (*(a2 + 62))
  {
    v163 = *(a2 + 62);
  }

  else
  {
    v163 = &TSCE::_HauntedOwnerArchive_default_instance_;
  }

  TSCE::HauntedOwnerArchive::MergeFrom(v161, v163);
  if ((v100 & 0x200000) == 0)
  {
LABEL_433:
    if ((v100 & 0x400000) == 0)
    {
      goto LABEL_434;
    }

    goto LABEL_484;
  }

LABEL_476:
  *(this + 5) |= 0x200000u;
  v164 = *(this + 63);
  if (!v164)
  {
    v165 = *(this + 1);
    if (v165)
    {
      v165 = *(v165 & 0xFFFFFFFFFFFFFFFELL);
    }

    v164 = MEMORY[0x223DA0390](v165);
    *(this + 63) = v164;
  }

  if (*(a2 + 63))
  {
    v166 = *(a2 + 63);
  }

  else
  {
    v166 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v164, v166);
  if ((v100 & 0x400000) == 0)
  {
LABEL_434:
    if ((v100 & 0x800000) == 0)
    {
      goto LABEL_500;
    }

    goto LABEL_492;
  }

LABEL_484:
  *(this + 5) |= 0x400000u;
  v167 = *(this + 64);
  if (!v167)
  {
    v168 = *(this + 1);
    if (v168)
    {
      v168 = *(v168 & 0xFFFFFFFFFFFFFFFELL);
    }

    v167 = MEMORY[0x223DA0390](v168);
    *(this + 64) = v167;
  }

  if (*(a2 + 64))
  {
    v169 = *(a2 + 64);
  }

  else
  {
    v169 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v167, v169);
  if ((v100 & 0x800000) != 0)
  {
LABEL_492:
    *(this + 5) |= 0x800000u;
    v170 = *(this + 65);
    if (!v170)
    {
      v171 = *(this + 1);
      if (v171)
      {
        v171 = *(v171 & 0xFFFFFFFFFFFFFFFELL);
      }

      v170 = MEMORY[0x223DA0390](v171);
      *(this + 65) = v170;
    }

    if (*(a2 + 65))
    {
      v172 = *(a2 + 65);
    }

    else
    {
      v172 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v170, v172);
  }

LABEL_500:
  if (!HIBYTE(v100))
  {
    goto LABEL_510;
  }

  if ((v100 & 0x1000000) != 0)
  {
    *(this + 5) |= 0x1000000u;
    v174 = *(this + 66);
    if (!v174)
    {
      v175 = *(this + 1);
      if (v175)
      {
        v175 = *(v175 & 0xFFFFFFFFFFFFFFFELL);
      }

      v174 = MEMORY[0x223DA0390](v175);
      *(this + 66) = v174;
    }

    if (*(a2 + 66))
    {
      v176 = *(a2 + 66);
    }

    else
    {
      v176 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v174, v176);
    if ((v100 & 0x2000000) == 0)
    {
LABEL_503:
      if ((v100 & 0x4000000) == 0)
      {
        goto LABEL_504;
      }

      goto LABEL_571;
    }
  }

  else if ((v100 & 0x2000000) == 0)
  {
    goto LABEL_503;
  }

  *(this + 5) |= 0x2000000u;
  v177 = *(this + 67);
  if (!v177)
  {
    v178 = *(this + 1);
    if (v178)
    {
      v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
    }

    v177 = MEMORY[0x223DA0390](v178);
    *(this + 67) = v177;
  }

  if (*(a2 + 67))
  {
    v179 = *(a2 + 67);
  }

  else
  {
    v179 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v177, v179);
  if ((v100 & 0x4000000) == 0)
  {
LABEL_504:
    if ((v100 & 0x8000000) == 0)
    {
      goto LABEL_505;
    }

    goto LABEL_579;
  }

LABEL_571:
  *(this + 5) |= 0x4000000u;
  v180 = *(this + 68);
  if (!v180)
  {
    v181 = *(this + 1);
    if (v181)
    {
      v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
    }

    v180 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpillOwnerArchive>(v181);
    *(this + 68) = v180;
  }

  if (*(a2 + 68))
  {
    v182 = *(a2 + 68);
  }

  else
  {
    v182 = &TSCE::_SpillOwnerArchive_default_instance_;
  }

  TSCE::SpillOwnerArchive::MergeFrom(v180, v182);
  if ((v100 & 0x8000000) == 0)
  {
LABEL_505:
    if ((v100 & 0x10000000) == 0)
    {
      goto LABEL_506;
    }

    goto LABEL_580;
  }

LABEL_579:
  *(this + 138) = *(a2 + 138);
  if ((v100 & 0x10000000) == 0)
  {
LABEL_506:
    if ((v100 & 0x20000000) == 0)
    {
      goto LABEL_507;
    }

    goto LABEL_581;
  }

LABEL_580:
  *(this + 139) = *(a2 + 139);
  if ((v100 & 0x20000000) == 0)
  {
LABEL_507:
    if ((v100 & 0x40000000) == 0)
    {
      goto LABEL_508;
    }

LABEL_582:
    *(this + 141) = *(a2 + 141);
    if ((v100 & 0x80000000) == 0)
    {
      goto LABEL_509;
    }

LABEL_583:
    *(this + 142) = *(a2 + 142);
    goto LABEL_509;
  }

LABEL_581:
  *(this + 140) = *(a2 + 140);
  if ((v100 & 0x40000000) != 0)
  {
    goto LABEL_582;
  }

LABEL_508:
  if ((v100 & 0x80000000) != 0)
  {
    goto LABEL_583;
  }

LABEL_509:
  *(this + 5) |= v100;
LABEL_510:
  v173 = *(a2 + 6);
  if (!v173)
  {
    goto LABEL_521;
  }

  if (v173)
  {
    *(this + 143) = *(a2 + 143);
    if ((v173 & 2) == 0)
    {
LABEL_513:
      if ((v173 & 4) == 0)
      {
        goto LABEL_514;
      }

      goto LABEL_541;
    }
  }

  else if ((v173 & 2) == 0)
  {
    goto LABEL_513;
  }

  *(this + 72) = *(a2 + 72);
  if ((v173 & 4) == 0)
  {
LABEL_514:
    if ((v173 & 8) == 0)
    {
      goto LABEL_515;
    }

    goto LABEL_542;
  }

LABEL_541:
  *(this + 73) = *(a2 + 73);
  if ((v173 & 8) == 0)
  {
LABEL_515:
    if ((v173 & 0x10) == 0)
    {
      goto LABEL_516;
    }

    goto LABEL_543;
  }

LABEL_542:
  *(this + 148) = *(a2 + 148);
  if ((v173 & 0x10) == 0)
  {
LABEL_516:
    if ((v173 & 0x20) == 0)
    {
      goto LABEL_517;
    }

    goto LABEL_544;
  }

LABEL_543:
  *(this + 596) = *(a2 + 596);
  if ((v173 & 0x20) == 0)
  {
LABEL_517:
    if ((v173 & 0x40) == 0)
    {
      goto LABEL_518;
    }

LABEL_545:
    *(this + 598) = *(a2 + 598);
    if ((v173 & 0x80) == 0)
    {
      goto LABEL_520;
    }

    goto LABEL_519;
  }

LABEL_544:
  *(this + 597) = *(a2 + 597);
  if ((v173 & 0x40) != 0)
  {
    goto LABEL_545;
  }

LABEL_518:
  if ((v173 & 0x80) != 0)
  {
LABEL_519:
    *(this + 599) = *(a2 + 599);
  }

LABEL_520:
  *(this + 6) |= v173;
LABEL_521:
  if ((v173 & 0xFF00) == 0)
  {
    goto LABEL_532;
  }

  if ((v173 & 0x100) != 0)
  {
    *(this + 150) = *(a2 + 150);
    if ((v173 & 0x200) == 0)
    {
LABEL_524:
      if ((v173 & 0x400) == 0)
      {
        goto LABEL_525;
      }

      goto LABEL_549;
    }
  }

  else if ((v173 & 0x200) == 0)
  {
    goto LABEL_524;
  }

  *(this + 604) = *(a2 + 604);
  if ((v173 & 0x400) == 0)
  {
LABEL_525:
    if ((v173 & 0x800) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_550;
  }

LABEL_549:
  *(this + 605) = *(a2 + 605);
  if ((v173 & 0x800) == 0)
  {
LABEL_526:
    if ((v173 & 0x1000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_551;
  }

LABEL_550:
  *(this + 606) = *(a2 + 606);
  if ((v173 & 0x1000) == 0)
  {
LABEL_527:
    if ((v173 & 0x2000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_552;
  }

LABEL_551:
  *(this + 607) = *(a2 + 607);
  if ((v173 & 0x2000) == 0)
  {
LABEL_528:
    if ((v173 & 0x4000) == 0)
    {
      goto LABEL_529;
    }

LABEL_553:
    *(this + 154) = *(a2 + 154);
    if ((v173 & 0x8000) == 0)
    {
      goto LABEL_531;
    }

    goto LABEL_530;
  }

LABEL_552:
  *(this + 76) = *(a2 + 76);
  if ((v173 & 0x4000) != 0)
  {
    goto LABEL_553;
  }

LABEL_529:
  if ((v173 & 0x8000) != 0)
  {
LABEL_530:
    *(this + 155) = *(a2 + 155);
  }

LABEL_531:
  *(this + 6) |= v173;
LABEL_532:
  if ((v173 & 0x30000) != 0)
  {
    if ((v173 & 0x10000) != 0)
    {
      *(this + 156) = *(a2 + 156);
    }

    if ((v173 & 0x20000) != 0)
    {
      *(this + 628) = *(a2 + 628);
    }

    *(this + 6) |= v173;
  }
}

uint64_t TST::MergeOwnerArchive::MergeFrom(uint64_t this, const TST::MergeOwnerArchive *a2)
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

        v6 = MEMORY[0x223DA0300](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A28];
      }

      this = TSP::CFUUIDArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_FormulaStoreArchive_default_instance_;
      }

      return TST::FormulaStoreArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t TST::HiddenStatesOwnerArchive::MergeFrom(uint64_t this, const TST::HiddenStatesOwnerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167FECC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0360](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t TST::CategoryOwnerArchive::MergeFrom(uint64_t this, const TST::CategoryOwnerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221680CB8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0360](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t TST::PencilAnnotationOwnerArchive::MergeFrom(uint64_t this, const TST::PencilAnnotationOwnerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221568514(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0300](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A28];
      }

      this = TSP::CFUUIDArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = &TST::_FormulaStoreArchive_default_instance_;
      }

      return TST::FormulaStoreArchive::MergeFrom(v14, v16);
    }
  }

  return this;
}

void TST::TableModelArchive::CopyFrom(TST::TableModelArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TST::TableModelArchive::Clear(this);

    TST::TableModelArchive::MergeFrom(this, a2);
  }
}

void TST::TableModelArchive::CopyFrom(TST::TableModelArchive *this, const TST::TableModelArchive *a2)
{
  if (a2 != this)
  {
    TST::TableModelArchive::Clear(this);

    TST::TableModelArchive::MergeFrom(this, a2);
  }
}

uint64_t TST::TableModelArchive::IsInitialized(TST::TableModelArchive *this)
{
  v1 = *(this + 4);
  if ((*(this + 5) & 0x18000000 | v1 & 0xF7B3) != 0x1800F7B3 || (*(this + 6) & 6) != 6)
  {
    return 0;
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TST::DataStore::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x200) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x400) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x800) != 0 && (*(*(this + 21) + 16) & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 22));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 23));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x4000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x8000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 27));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 28));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 29));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x100000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 30));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x400000) != 0)
  {
    v5 = *(this + 32);
    if ((*(v5 + 16) & 1) == 0)
    {
      return 0;
    }

    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    while (v6 >= 1)
    {
      result = 0;
      v8 = *(v7 + 8 * v6--);
      if ((~*(v8 + 16) & 3) != 0)
      {
        return result;
      }
    }
  }

  if ((v1 & 0x800000) == 0)
  {
    if ((v1 & 0x1000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_60;
  }

  v9 = *(this + 33);
  if ((*(v9 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(v9 + 24));
  if (!result)
  {
    return result;
  }

  v1 = *(this + 4);
  if ((v1 & 0x1000000) != 0)
  {
LABEL_60:
    result = TSP::Reference::IsInitialized(*(this + 34));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

LABEL_70:
  if ((v1 & 0x2000000) != 0)
  {
    result = TST::MergeOwnerArchive::IsInitialized(*(this + 35));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x4000000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 36));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x8000000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 37));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10000000) != 0)
  {
    result = TST::StructuredTextImportRecord::IsInitialized(*(this + 38));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20000000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 39));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40000000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 40));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80000000) == 0 || (result = TSP::Reference::IsInitialized(*(this + 41)), result))
  {
    v10 = *(this + 5);
    if (v10)
    {
      result = TSP::Reference::IsInitialized(*(this + 42));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 43));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 44));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 45));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x10) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 46));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x20) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 47));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x40) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 48));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x80) != 0)
    {
      result = TST::HiddenStatesOwnerArchive::IsInitialized(*(this + 49));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x100) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 50));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x200) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 51));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x400) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 52));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x800) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 53));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x1000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 54));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x2000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 55));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x4000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 56));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x8000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 57));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x10000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 58));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x20000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 59));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x40000) != 0)
    {
      result = TST::CategoryOwnerArchive::IsInitialized(*(this + 60));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x80000) != 0)
    {
      result = TST::PencilAnnotationOwnerArchive::IsInitialized(*(this + 61));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x100000) != 0)
    {
      result = TSCE::HauntedOwnerArchive::IsInitialized(*(this + 62));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x200000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 63));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x400000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 64));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x800000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 65));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x1000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 66));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x2000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 67));
      if (!result)
      {
        return result;
      }

      v10 = *(this + 5);
    }

    if ((v10 & 0x4000000) == 0)
    {
      return 1;
    }

    result = TSCE::SpillOwnerArchive::IsInitialized(*(this + 68));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL TST::MergeOwnerArchive::IsInitialized(TST::MergeOwnerArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
  {
    return 1;
  }

  v3 = *(this + 4);
  if ((*(v3 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_22164DA10(v3 + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TST::HiddenStatesOwnerArchive::IsInitialized(TST::HiddenStatesOwnerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::HiddenStatesArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TST::CategoryOwnerArchive::IsInitialized(TST::CategoryOwnerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::GroupByArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL TST::PencilAnnotationOwnerArchive::IsInitialized(TST::PencilAnnotationOwnerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v6 = *(this + 7);
  if ((*(v6 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_22164DA10(v6 + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

double TST::TableModelArchive::InternalSwap(TST::TableModelArchive *this, TST::TableModelArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 4);
  v8 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v7;
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  v10 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v9;
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  v12 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v11;
  *(a2 + 9) = v12;
  v13 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v15;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = *(this + 14);
  v18 = *(this + 15);
  *(this + 7) = *(a2 + 7);
  *(a2 + 14) = v17;
  *(a2 + 15) = v18;
  v19 = *(this + 16);
  v20 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v19;
  *(a2 + 17) = v20;

  return sub_22167E704(this + 18, a2 + 144);
}

TSP::Reference *TST::SummaryModelArchive::clear_table_info(TST::SummaryModelArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::SummaryModelArchive::clear_column_row_uids(TST::SummaryModelArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}