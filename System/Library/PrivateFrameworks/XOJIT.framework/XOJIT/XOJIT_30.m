BOOL llvm::Attribute::isExistingAttribute(unsigned __int16 *a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 3:
      if (*a1 == 28520 && *(a1 + 2) == 116)
      {
        return 1;
      }

      v4 = *(a1 + 2);
      v5 = *a1 == 29555;
      v6 = 112;
      return v5 && v4 == v6;
    case 4:
      return *a1 == 1684828003 || *a1 == 1953719662 || *a1 == 1952805491;
    case 5:
      if (*a1 == 1701998185 && *(a1 + 4) == 103)
      {
        return 1;
      }

      if (*a1 == 1701536110 && *(a1 + 4) == 100)
      {
        return 1;
      }

      if (*a1 == 1702000994 && *(a1 + 4) == 102)
      {
        return 1;
      }

      if (*a1 == 1635154274 && *(a1 + 4) == 108)
      {
        return 1;
      }

      v4 = *(a1 + 4);
      v5 = *a1 == 1734962273;
      v6 = 110;
      return v5 && v4 == v6;
    case 6:
      if (*a1 == 1634561385 && a1[2] == 26482)
      {
        return 1;
      }

      if (*a1 == 1919315822 && a1[2] == 25957)
      {
        return 1;
      }

      if (*a1 == 2037608302 && a1[2] == 25454)
      {
        return 1;
      }

      if (*a1 == 1919972211 && a1[2] == 29029)
      {
        return 1;
      }

      v4 = a1[2];
      v5 = *a1 == 1869440365;
      v6 = 31090;
      return v5 && v4 == v6;
    case 7:
      if (*a1 == 1818850658 && *(a1 + 3) == 1852404844)
      {
        return 1;
      }

      if (*a1 == 1936615789 && *(a1 + 3) == 1702521203)
      {
        return 1;
      }

      if (*a1 == 1818324846 && *(a1 + 3) == 1935763820)
      {
        return 1;
      }

      if (*a1 == 1701670766 && *(a1 + 3) == 1701278309)
      {
        return 1;
      }

      if (*a1 == 1853189998 && *(a1 + 3) == 1717920878)
      {
        return 1;
      }

      if (*a1 == 1852731246 && *(a1 + 3) == 1819047278)
      {
        return 1;
      }

      if (*a1 == 1937010799 && *(a1 + 3) == 1702521203)
      {
        return 1;
      }

      if (*a1 == 1853124719 && *(a1 + 3) == 1701736302)
      {
        return 1;
      }

      if (*a1 == 1852270963 && *(a1 + 3) == 1954047342)
      {
        return 1;
      }

      if (*a1 == 1869768058 && *(a1 + 3) == 1954047343)
      {
        return 1;
      }

      v4 = *(a1 + 3);
      v5 = *a1 == 1635022709;
      v6 = 1701601889;
      return v5 && v4 == v6;
    case 8:
      return *a1 == 0x727470636F6C6C61 || *a1 == 0x656E696C6E696F6ELL || *a1 == 0x6E72757465726F6ELL || *a1 == 0x646E69776E756F6ELL || *a1 == 0x656E6F6E64616572 || *a1 == 0x796C6E6F64616572 || *a1 == 0x64656E7275746572 || *a1 == 0x7066746369727473 || *a1 == 0x61636F6C6C616E69;
    case 9:
      if (*a1 == 0x6C626174706D756ALL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x69746C6975626F6ELL && *(a1 + 8) == 110)
      {
        return 1;
      }

      if (*a1 == 0x7275747061636F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x6C69666F72706F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x7372756365726F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x6E6F7A6465726F6ELL && *(a1 + 8) == 101)
      {
        return 1;
      }

      if (*a1 == 0x6361747365666173 && *(a1 + 8) == 107)
      {
        return 1;
      }

      if (*a1 == 0x6E6F727473707373 && *(a1 + 8) == 103)
      {
        return 1;
      }

      if (*a1 == 0x6C65737466697773 && *(a1 + 8) == 102)
      {
        return 1;
      }

      if (*a1 == 0x6C6E6F6574697277 && *(a1 + 8) == 121)
      {
        return 1;
      }

      if (*a1 == 0x6E696B636F6C6C61 && *(a1 + 8) == 100)
      {
        return 1;
      }

      if (*a1 == 0x7A6973636F6C6C61 && *(a1 + 8) == 101)
      {
        return 1;
      }

      v4 = *(a1 + 8);
      v5 = *a1 == 0x73616C6370666F6ELL;
      v6 = 115;
      return v5 && v4 == v6;
    case 10:
      if (*a1 == 0x696C61636F6C6C61 && a1[4] == 28263)
      {
        return 1;
      }

      if (*a1 == 0x65677265766E6F63 && a1[4] == 29806)
      {
        return 1;
      }

      if (*a1 == 0x6968656E696C6E69 && a1[4] == 29806)
      {
        return 1;
      }

      if (*a1 == 0x61626C6C61636F6ELL && a1[4] == 27491)
      {
        return 1;
      }

      if (*a1 == 0x6568635F66636F6ELL && a1[4] == 27491)
      {
        return 1;
      }

      if (*a1 == 0x7973617466697773 && a1[4] == 25454)
      {
        return 1;
      }

      if (*a1 == 0x7272657466697773 && a1[4] == 29295)
      {
        return 1;
      }

      if (*a1 == 0x757465726C6C6977 && a1[4] == 28274)
      {
        return 1;
      }

      v4 = a1[4];
      v5 = *a1 == 0x6174736E67696C61;
      v6 = 27491;
      return v5 && v4 == v6;
    case 11:
      if (*a1 == 0x63696C7075646F6ELL && *(a1 + 3) == 0x65746163696C7075)
      {
        return 1;
      }

      if (*a1 == 0x62797A616C6E6F6ELL && *(a1 + 3) == 0x646E6962797A616CLL)
      {
        return 1;
      }

      if (*a1 == 0x666F727070696B73 && *(a1 + 3) == 0x656C69666F727070)
      {
        return 1;
      }

      v15 = *(a1 + 3);
      v16 = *a1 == 0x74746E656D656C65;
      v17 = 0x65707974746E656DLL;
      return v16 && v15 == v17;
    case 12:
      if (*a1 == 0x6E69737961776C61 && *(a1 + 2) == 1701734764)
      {
        return 1;
      }

      if (*a1 == 0x676F72707473756DLL && *(a1 + 2) == 1936942450)
      {
        return 1;
      }

      if (*a1 == 0x74616C7563657073 && *(a1 + 2) == 1701601889)
      {
        return 1;
      }

      if (*a1 == 0x636F6C6C61657270 && *(a1 + 2) == 1684370529)
      {
        return 1;
      }

      v4 = *(a1 + 2);
      v5 = *a1 == 0x725F656C61637376;
      v6 = 1701277281;
      return v5 && v4 == v6;
    case 13:
      if (*a1 == 0x7566726F6674706FLL && *(a1 + 5) == 0x676E697A7A756672)
      {
        return 1;
      }

      v15 = *(a1 + 5);
      v16 = *a1 == 0x5F736E7275746572;
      v17 = 0x65636977745F736ELL;
      return v16 && v15 == v17;
    case 14:
      if (*a1 == 0x2D706D756A2D6F6ELL && *(a1 + 3) == 0x73656C6261742D70)
      {
        return 1;
      }

      v15 = *(a1 + 3);
      v16 = *a1 == 0x662D656661736E75;
      v17 = 0x6874616D2D70662DLL;
      return v16 && v15 == v17;
    case 15:
      if (*a1 == 0x63696C706D696F6ELL && *(a1 + 7) == 0x74616F6C66746963)
      {
        return 1;
      }

      if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6761746D656D5F65)
      {
        return 1;
      }

      if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x79726F6D656D5F65)
      {
        return 1;
      }

      if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6461657268745F65)
      {
        return 1;
      }

      if (*a1 == 0x6163776F64616873 && *(a1 + 7) == 0x6B636174736C6C61)
      {
        return 1;
      }

      if (*a1 == 0x6572656665726564 && *(a1 + 7) == 0x656C626165636E65)
      {
        return 1;
      }

      v14 = 0x6874616D2D70662DLL;
      if (*a1 == 0x2D73666E692D6F6ELL && *(a1 + 7) == 0x6874616D2D70662DLL)
      {
        return 1;
      }

      v12 = *(a1 + 7);
      v13 = *a1 == 0x2D736E616E2D6F6ELL;
      return v13 && v12 == v14;
    case 16:
      v15 = *(a1 + 1);
      v16 = *a1 == 0x657A6974696E6173;
      v17 = 0x737365726464615FLL;
      return v16 && v15 == v17;
    case 17:
      if (*a1 == 0x6974696E61736F6ELL && *(a1 + 1) == 0x646E756F625F657ALL && *(a1 + 16) == 115)
      {
        return 1;
      }

      v56 = *(a1 + 16);
      v57 = *a1 == 0x74696C7073657270 && *(a1 + 1) == 0x6E6974756F726F63;
      v58 = 101;
      return v57 && v56 == v58;
    case 18:
      if (*a1 == 0x657A6974696E6173 && *(a1 + 1) == 0x657264646177685FLL && a1[8] == 29555)
      {
        return 1;
      }

      v61 = *a1 == 0x6572702D7373656CLL && *(a1 + 1) == 0x6D70662D65736963;
      if (v61 && a1[8] == 25697)
      {
        return 1;
      }

      v56 = a1[8];
      v57 = *a1 == 0x706D61732D657375 && *(a1 + 1) == 0x69666F72702D656CLL;
      v58 = 25964;
      return v57 && v56 == v58;
    case 19:
      if (*a1 == 0x745F7465725F6E66 && *(a1 + 1) == 0x7478655F6B6E7568 && *(a1 + 11) == 0x6E72657478655F6BLL)
      {
        return 1;
      }

      v90 = *a1 == 0x6974696E61736F6ELL && *(a1 + 1) == 0x7265766F635F657ALL;
      if (v90 && *(a1 + 11) == 0x6567617265766F63)
      {
        return 1;
      }

      v12 = *(a1 + 11);
      v13 = *a1 == 0x662D786F72707061 && *(a1 + 1) == 0x6D2D70662D636E75;
      v14 = 0x6874616D2D70662DLL;
      return v13 && v12 == v14;
    case 21:
      if (*a1 == 0x696F705F6C6C756ELL && *(a1 + 1) == 0x5F73695F7265746ELL && *(a1 + 13) == 0x64696C61765F7369)
      {
        return 1;
      }

      v12 = *(a1 + 13);
      v13 = *a1 == 0x6E696C6E692D6F6ELL && *(a1 + 1) == 0x742D656E696C2D65;
      v14 = 0x73656C6261742D65;
      return v13 && v12 == v14;
    case 23:
      if (*a1 == 0x6572656665726564 && *(a1 + 1) == 0x5F656C626165636ELL && *(a1 + 15) == 0x6C6C756E5F726F5FLL)
      {
        return 1;
      }

      v10 = *a1 == 0x656E6769732D6F6ELL && *(a1 + 1) == 0x2D736F72657A2D64;
      if (v10 && *(a1 + 15) == 0x6874616D2D70662DLL)
      {
        return 1;
      }

      v12 = *(a1 + 15);
      v13 = *a1 == 0x2D656C69666F7270 && *(a1 + 1) == 0x612D656C706D6173;
      v14 = 0x6574617275636361;
      return v13 && v12 == v14;
    case 26:
      return *a1 == 0x74616C7563657073 && *(a1 + 1) == 0x64616F6C5F657669 && *(a1 + 2) == 0x696E65647261685FLL && a1[12] == 26478;
    case 33:
      return !memcmp(a1, "disable_sanitizer_instrumentation", 0x21uLL);
    default:
      return v2;
  }
}

BOOL llvm::AttributeImpl::hasAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  if (*(a1 + 8) != 2)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  if (a3 != v4)
  {
    return 0;
  }

  if (v4)
  {
    return memcmp((a1 + 24), a2, v4) == 0;
  }

  return 1;
}

uint64_t llvm::Attribute::getVScaleRangeMax(llvm::Attribute *this)
{
  v1 = *(*this + 16);
  if (!*(*this + 16))
  {
    v1 = 0;
  }

  *&v4[4] = v1 | *(*this + 16) & 0xFFFFFF00 | ((*(*this + 16) != 0) << 32);
  *(&v3 + 1) = *(*this + 16) != 0;
  *&v3 = *v4;
  return v3 >> 32;
}

void llvm::Attribute::getAsString(llvm::Attribute *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (!*this)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_22;
  }

  v6 = *(v4 + 8);
  if (v6 == 3)
  {
    *&v74 = llvm::Attribute::getNameFromAttrKind(*(v4 + 12));
    *(&v74 + 1) = v8;
    llvm::StringRef::str(&v74, a3);
    std::string::push_back(a3, 40);
    DWORD2(v74) = 0;
    v78 = 0;
    v79 = 0;
    v80 = 1;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    *&v74 = &unk_2883EB8F0;
    v81 = a3;
    llvm::raw_ostream::SetUnbuffered(&v74);
    if (*this)
    {
      v9 = *(*this + 16);
    }

    else
    {
      v9 = 0;
    }

    llvm::Type::print(v9, &v74, 0, 1);
    v14 = v77 - v75;
    if (v77 != v75)
    {
      v77 = v75;
      llvm::raw_ostream::flush_tied_then_write(&v74, v75, v14);
    }

    std::string::push_back(a3, 41);
LABEL_20:
    v15 = &v74;
    goto LABEL_21;
  }

  if (!*(v4 + 8))
  {
    *&v74 = llvm::Attribute::getNameFromAttrKind(*(v4 + 12));
    *(&v74 + 1) = v7;
    llvm::StringRef::str(&v74, a3);
LABEL_22:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v6 == 2)
  {
LABEL_9:
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    DWORD2(v74) = 0;
    v78 = 0;
    v79 = 0;
    v80 = 1;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    *&v74 = &unk_2883EB8F0;
    v81 = a3;
    llvm::raw_ostream::SetUnbuffered(&v74);
    v10 = v77;
    if (v77 >= v76)
    {
      llvm::raw_ostream::write(&v74, 34);
    }

    else
    {
      ++v77;
      *v10 = 34;
    }

    v17 = *this;
    if (*this)
    {
      v18 = (v17 + 24);
      v19 = *(v17 + 12);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v27 = llvm::raw_ostream::operator<<(&v74, v18, v19);
    v28 = *(v27 + 4);
    if (v28 >= *(v27 + 3))
    {
      llvm::raw_ostream::write(v27, 34);
    }

    else
    {
      *(v27 + 4) = v28 + 1;
      *v28 = 34;
    }

    v29 = *(*this + 16);
    if (v29)
    {
      v30 = *this + *(*this + 12);
      if ((v76 - v77) > 1)
      {
        *v77 = 8765;
        v77 += 2;
      }

      else
      {
        llvm::raw_ostream::write(&v74, "=", 2uLL);
      }

      llvm::printEscapedString((v30 + 25), v29, &v74);
      if (v76 == v77)
      {
        llvm::raw_ostream::write(&v74, "", 1uLL);
      }

      else
      {
        *v77++ = 34;
      }
    }

    goto LABEL_20;
  }

  v11 = *(v4 + 12);
  if (v11 > 79)
  {
    if (v11 > 81)
    {
      if (v11 == 82)
      {
        v39 = *(v4 + 16);
        if (a2)
        {
          v69[0] = *(v4 + 16);
          v71[0] = "=";
          v72 = v69;
          v73 = 3075;
          v40 = 2;
          v41 = 3;
          v42 = "alignstack";
          v43 = v71;
        }

        else
        {
          v67[0] = *(v4 + 16);
          v69[0] = "(";
          v69[2] = v67;
          v70 = 3075;
          v71[0] = "alignstack";
          v72 = v69;
          v40 = 3;
          v41 = 2;
          v43 = ")";
          v73 = 515;
          v42 = v71;
        }

        *&v74 = v42;
        v75 = v43;
        LOBYTE(v77) = v41;
        BYTE1(v77) = v40;
        goto LABEL_103;
      }

      if (v11 != 83)
      {
        if (v11 != 84)
        {
          goto LABEL_9;
        }

        v24 = *(v4 + 16);
        v20 = HIDWORD(v24);
        v21 = v24 == 0;
        v22 = v24 != 0;
        v23 = v24 & 0xFFFFFF00;
        v24 = v24;
        LODWORD(v74) = v20;
        if (v21)
        {
          v24 = 0;
        }

        *(&v74 + 4) = v24 | v23 | (v22 << 32);
        VScaleRangeMax = llvm::Attribute::getVScaleRangeMax(this);
        v65[0] = "vscale_range(";
        v66 = 259;
        v64 = 264;
        LODWORD(v63[0]) = v74;
        llvm::operator+(v65, v63, v67);
        __p.__r_.__value_.__r.__words[0] = ",";
        v62 = 259;
        llvm::operator+(v67, &__p, v69);
        if ((VScaleRangeMax & 0x100000000) != 0)
        {
          v26 = VScaleRangeMax;
        }

        else
        {
          v26 = 0;
        }

        v60 = 264;
        LODWORD(v59[0]) = v26;
        llvm::operator+(v69, v59, v71);
        v57 = ")";
        v58 = 259;
        goto LABEL_93;
      }

      v45 = *(v4 + 16);
      if (!v45)
      {
        goto LABEL_9;
      }

      if (v45 == 2)
      {
        std::string::basic_string[abi:nn200100]<0>(a3, "uwtable");
        goto LABEL_22;
      }

      v69[0] = "uwtable(";
      v49 = "async";
      v70 = 259;
      if (v45 == 1)
      {
        v49 = "sync";
      }

      v50 = 1;
      HIBYTE(v68) = 1;
      if (*v49)
      {
        v67[0] = v49;
        v50 = 3;
      }

      LOBYTE(v68) = v50;
LABEL_101:
      llvm::operator+(v69, v67, v71);
      v65[0] = ")";
      v66 = 259;
      v48 = v65;
      goto LABEL_102;
    }

    if (v11 != 80)
    {
      std::string::basic_string[abi:nn200100]<0>(a3, "nofpclass");
      DWORD2(v74) = 0;
      v78 = 0;
      v79 = 0;
      v80 = 1;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      *&v74 = &unk_2883EB8F0;
      v81 = a3;
      llvm::raw_ostream::SetUnbuffered(&v74);
      v15 = llvm::operator<<(&v74, *(*this + 16));
LABEL_21:
      llvm::raw_ostream::~raw_ostream(v15);
      goto LABEL_22;
    }

    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    DWORD2(v74) = 0;
    v78 = 0;
    v79 = 0;
    v80 = 1;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    *&v74 = &unk_2883EB8F0;
    v81 = a3;
    llvm::raw_ostream::SetUnbuffered(&v74);
    llvm::raw_ostream::operator<<(&v74, "memory(", 7uLL);
    v33 = *(*this + 16);
    v34 = (v33 >> 4) & 3;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v46 = "write";
      }

      else
      {
        v46 = "readwrite";
      }
    }

    else if (v34)
    {
      v46 = "read";
    }

    else
    {
      if (v33 & 3 | (v33 >> 2) & 3 | (v33 >> 4) & 3)
      {
        v35 = 1;
LABEL_108:
        v51 = 0;
        v52 = 0;
        while (1)
        {
          v53 = (v33 >> v51) & 3;
          if (v53 != v34)
          {
            break;
          }

LABEL_118:
          ++v52;
          v51 += 2;
          if (v52 == 3)
          {
            llvm::raw_ostream::operator<<(&v74, ")", 1uLL);
            v56 = v77 - v75;
            if (v77 != v75)
            {
              v77 = v75;
              llvm::raw_ostream::flush_tied_then_write(&v74, v75, v56);
            }

            goto LABEL_20;
          }
        }

        if ((v35 & 1) == 0)
        {
          llvm::raw_ostream::operator<<(&v74, ", ", 2uLL);
        }

        if (v52)
        {
          if (v52 != 1)
          {
LABEL_117:
            llvm::raw_ostream::operator<<(&v74, off_279F00458[v53]);
            v35 = 0;
            goto LABEL_118;
          }

          v54 = "inaccessiblemem: ";
          v55 = 17;
        }

        else
        {
          v54 = "argmem: ";
          v55 = 8;
        }

        llvm::raw_ostream::operator<<(&v74, v54, v55);
        goto LABEL_117;
      }

      v46 = "none";
    }

    llvm::raw_ostream::operator<<(&v74, v46);
    v35 = 0;
    goto LABEL_108;
  }

  if (v11 <= 76)
  {
    if (v11 == 75)
    {
      v71[0] = *(v4 + 16);
      if (a2)
      {
        v32 = "align=";
      }

      else
      {
        v32 = "align ";
      }

      *&v74 = v32;
      v75 = v71;
      LOWORD(v77) = 3075;
      goto LABEL_103;
    }

    if (v11 != 76)
    {
      goto LABEL_9;
    }

    v31 = *(v4 + 16);
    *&v74 = &v75;
    *(&v74 + 1) = 0x300000000;
    if (v31)
    {
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v74, "alloc", 5);
      if ((v31 & 2) == 0)
      {
LABEL_51:
        if ((v31 & 4) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_85;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_51;
    }

    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v74, "realloc", 7);
    if ((v31 & 4) == 0)
    {
LABEL_52:
      if ((v31 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_86;
    }

LABEL_85:
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v74, "free", 4);
    if ((v31 & 8) == 0)
    {
LABEL_53:
      if ((v31 & 0x10) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_87;
    }

LABEL_86:
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v74, "uninitialized", 13);
    if ((v31 & 0x10) == 0)
    {
LABEL_54:
      if ((v31 & 0x20) == 0)
      {
LABEL_56:
        v67[0] = "allockind(";
        v68 = 259;
        llvm::detail::join_impl<llvm::StringRef *>(&__p, v74, v74 + 16 * DWORD2(v74));
        v66 = 260;
        v65[0] = &__p;
        llvm::operator+(v67, v65, v69);
        v63[0] = ")";
        v64 = 259;
        llvm::operator+(v69, v63, v71);
        llvm::Twine::str(v71, a3);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v74 != &v75)
        {
          free(v74);
        }

        goto LABEL_22;
      }

LABEL_55:
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v74, "aligned", 7);
      goto LABEL_56;
    }

LABEL_87:
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v74, "zeroed", 6);
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v11 == 77)
  {
    v36 = *(v4 + 16);
    v37 = v36;
    LODWORD(v74) = HIDWORD(v36);
    if (v36 == 0xFFFFFFFFLL)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36 | 0x100000000;
    }

    *(&v74 + 4) = v38;
    if (v37 != 0xFFFFFFFFLL)
    {
      v47 = DWORD1(v74);
      v65[0] = "allocsize(";
      v66 = 259;
      v64 = 264;
      LODWORD(v63[0]) = v74;
      llvm::operator+(v65, v63, v67);
      __p.__r_.__value_.__r.__words[0] = ",";
      v62 = 259;
      llvm::operator+(v67, &__p, v69);
      v60 = 264;
      LODWORD(v59[0]) = v47;
      llvm::operator+(v69, v59, v71);
      v57 = ")";
      v58 = 259;
LABEL_93:
      v48 = &v57;
LABEL_102:
      llvm::operator+(v71, v48, &v74);
LABEL_103:
      llvm::Twine::str(&v74, a3);
      goto LABEL_22;
    }

    v69[0] = "allocsize(";
    v70 = 259;
    v68 = 264;
    LODWORD(v67[0]) = v74;
    goto LABEL_101;
  }

  if (v11 == 78)
  {
    v44 = *MEMORY[0x277D85DE8];
    v13 = "dereferenceable";
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];
    v13 = "dereferenceable_or_null";
  }

  llvm::Attribute::getAsString(BOOL)const::$_0::operator()(a3, a2, v4, v13);
}

void llvm::Attribute::getAsString(BOOL)const::$_0::operator()(uint64_t a1, char a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *a4;
  if (a2)
  {
    if (a3)
    {
      v5 = *(a3 + 16);
    }

    else
    {
      v5 = 0;
    }

    *&v11 = v5;
    *&v14 = "=";
    *&v15 = &v11;
    LOWORD(v16) = 3075;
    if (!v4)
    {
      v17 = v14;
      v18 = v15;
      v19 = v16;
      goto LABEL_19;
    }

    *&v17 = a4;
    *&v18 = &v14;
    v7 = 515;
    goto LABEL_9;
  }

  if (a3)
  {
    v6 = *(a3 + 16);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  *&v11 = "(";
  *&v12 = &v10;
  LOWORD(v13) = 3075;
  if (v4)
  {
    *&v14 = a4;
    *&v15 = &v11;
    LOWORD(v16) = 515;
    v8 = 3;
  }

  else
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    v8 = v13;
    if (v13 == 1)
    {
      *&v17 = ")";
      v7 = 259;
LABEL_9:
      LOWORD(v19) = v7;
      goto LABEL_19;
    }
  }

  if (BYTE1(v16) != 1)
  {
    v8 = 2;
  }

  v9 = &v14;
  if (BYTE1(v16) == 1)
  {
    v9 = v14;
  }

  *&v17 = v9;
  *(&v17 + 1) = *(&v14 + 1);
  *&v18 = ")";
  LOBYTE(v19) = v8;
  BYTE1(v19) = 3;
LABEL_19:
  llvm::Twine::str(&v17, a1);
}

BOOL llvm::Attribute::hasParentContext(uint64_t *a1, void *a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x2000000000;
  llvm::AttributeImpl::Profile(*a1, v9);
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(*a2 + 264, v9, &v8, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  v5 = *a1;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  result = NodeOrInsertPos == v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *llvm::AttributeImpl::Profile(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 8) == 2)
  {
    v8 = a1 + 24;
    v10 = *(a1 + 12);
    v9 = *(a1 + 16);
    result = llvm::FoldingSetNodeID::AddString(a2, (a1 + 24), v10);
    if (v9)
    {

      return llvm::FoldingSetNodeID::AddString(a2, (v8 + v10 + 1), v9);
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      v6 = *(a1 + 16);
      v5 = *(a1 + 20);
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, *(a1 + 12));
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v6);
      v4 = a2;
      v3 = v5;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = a2;
    }

    return llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v4, v3);
  }

  return result;
}

uint64_t llvm::AttributeImpl::operator<(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 2)
  {
    if (v6 == 2)
    {
      v7 = a1 + 24;
      v8 = *(a1 + 12);
      v9 = a2 + 24;
      v10 = *(a2 + 12);
      if (v8 == v10 && (!v8 || !memcmp((a1 + 24), (a2 + 24), *(a1 + 12))))
      {
        v16 = *(a1 + 16);
        v12 = *(a2 + 16);
        v17 = v7 + v8 + 1;
        v18 = v16;
        v11 = (v9 + v10 + 1);
      }

      else
      {
        v17 = a1 + 24;
        v18 = v8;
        v11 = (a2 + 24);
        v12 = v10;
      }

      return llvm::StringRef::compare(&v17, v11, v12) >> 31;
    }

    else
    {
      return 0;
    }
  }

  else if (v6 == 2)
  {
    return 1;
  }

  else
  {
    v14 = *(a1 + 12);
    v15 = *(a2 + 12);
    if (v14 == v15)
    {
      return *(a1 + 16) < *(a2 + 16);
    }

    else
    {
      return v14 < v15;
    }
  }
}

uint64_t *llvm::AttributeSetNode::get(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v10[8] = *MEMORY[0x277D85DE8];
  __base = v10;
  __nel = 0x800000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&__base, a2, &a2[8 * a3]);
  v4 = __nel;
  if (__nel >= 2)
  {
    qsort(__base, __nel, 8uLL, llvm::array_pod_sort_comparator<llvm::Attribute>);
    v4 = __nel;
  }

  Sorted = llvm::AttributeSetNode::getSorted(a1, __base, v4);
  if (__base != v10)
  {
    free(__base);
  }

  v6 = *MEMORY[0x277D85DE8];
  return Sorted;
}

uint64_t **llvm::AttrBuilder::addAttribute(uint64_t **a1, int a2)
{
  v4 = (a1 + 1);
  v5 = llvm::Attribute::get(*a1, a2, 0);
  addAttributeImpl<llvm::Attribute::AttrKind>(v4, a2, v5);
  return a1;
}

uint64_t *llvm::AttributeSet::removeAttribute(uint64_t **a1, uint64_t *a2, int a3)
{
  v11[8] = *MEMORY[0x277D85DE8];
  Sorted = *a1;
  if (*a1)
  {
    if ((*(Sorted + a3 / 8 + 12) >> (a3 & 7)))
    {
      v8 = a2;
      v9 = v11;
      v10 = 0x800000000;
      llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v9, v11, Sorted + 6, &Sorted[*(Sorted + 2) + 6]);
      llvm::AttrBuilder::removeAttribute(&v8, a3);
      Sorted = llvm::AttributeSetNode::getSorted(a2, v9, v10);
      if (v9 != v11)
      {
        free(v9);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return Sorted;
}

uint64_t llvm::AttrBuilder::removeAttribute(uint64_t a1, int a2)
{
  v8 = a2;
  v3 = llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(a1 + 8, &v8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8) + 8 * v4;
  if (v3 != v5)
  {
    v6 = *v3;
    if (*v3)
    {
      if (*(v6 + 8) == 2 || *(v6 + 12) != v8)
      {
        return a1;
      }
    }

    else if (v8)
    {
      return a1;
    }

    if (v5 != v3 + 1)
    {
      memmove(v3, v3 + 1, v5 - (v3 + 1));
      LODWORD(v4) = *(a1 + 16);
    }

    *(a1 + 16) = v4 - 1;
  }

  return a1;
}

uint64_t llvm::AttrBuilder::removeAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = a2;
  v13 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = 0;
  v6 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(v4, &v12, v5);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8) + 8 * v7;
  if (v6 != v8)
  {
    v9 = v6;
    v10 = *v6;
    if (v10)
    {
      if (*(v10 + 8) == 2 && llvm::AttributeImpl::hasAttribute(v10, v12, v13))
      {
        if (v8 != v9 + 1)
        {
          memmove(v9, v9 + 1, v8 - (v9 + 1));
          LODWORD(v7) = *(a1 + 16);
        }

        *(a1 + 16) = v7 - 1;
      }
    }
  }

  return a1;
}

uint64_t *llvm::AttributeSet::removeAttributes(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v14 = a2;
  v15 = v17;
  v16 = 0x800000000;
  if (v6)
  {
    v7 = v6 + 6;
    v8 = &v6[*(v6 + 2) + 6];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v15, v17, v7, v8);
  if (v16)
  {
    v9 = v15;
    v10 = 8 * v16;
    while (!llvm::AttributeMask::contains(a3, *v9))
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    llvm::AttrBuilder::remove(&v14, a3);
    Sorted = llvm::AttributeSetNode::getSorted(a2, v15, v16);
  }

  else
  {
LABEL_8:
    Sorted = *a1;
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Sorted;
}

uint64_t llvm::AttrBuilder::remove(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = &v4[v5];
  if (v5)
  {
    v7 = 8 * v5;
    while (!llvm::AttributeMask::contains(a2, *v4))
    {
      ++v4;
      v7 -= 8;
      if (!v7)
      {
        v4 = v6;
        goto LABEL_13;
      }
    }
  }

  v8 = v4 + 1;
  if (v4 != v6 && v8 != v6)
  {
    do
    {
      if (!llvm::AttributeMask::contains(a2, *v8))
      {
        *v4++ = *v8;
      }

      ++v8;
    }

    while (v8 != v6);
  }

LABEL_13:
  *(a1 + 16) = (v4 - *(a1 + 8)) >> 3;
  return a1;
}

uint64_t llvm::AttributeSet::getAttribute(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7[0] = a2;
  v7[1] = a3;
  v8 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((v4 + 24), v7, &v8, a4);
  result = 0;
  if (v5)
  {
    return *(v8 + 16);
  }

  return result;
}

uint64_t llvm::AttributeSetNode::getAlignment(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 75);
  if (v2)
  {
    v3 = *(EnumAttribute + 16);
    v4 = __clz(v3) ^ 0x3F | 0x100;
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 >> 8;
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

uint64_t llvm::AttributeSetNode::getAllocSizeArgs(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 77);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (*(EnumAttribute + 16) == 0xFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(EnumAttribute + 16);
  }

  HIDWORD(v5) = v3;
  LODWORD(v5) = HIDWORD(*(EnumAttribute + 16));
  return v5;
}

uint64_t llvm::AttributeSetNode::getVScaleRangeMin(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 84);
  if (v2)
  {
    return *(EnumAttribute + 20);
  }

  else
  {
    return 1;
  }
}

uint64_t llvm::AttributeSetNode::getVScaleRangeMax(llvm::AttributeSetNode *this)
{
  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(this, 84);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v5 = *(EnumAttribute + 16);
  v3 = HIDWORD(v5);
  v4 = v5 & 0xFFFFFF00;
  LODWORD(v5) = v5;
  LODWORD(v8) = v3;
  if (!*(EnumAttribute + 16))
  {
    LODWORD(v5) = 0;
  }

  HIDWORD(v8) = v5 | v4;
  *(&v7 + 1) = *(EnumAttribute + 16) != 0;
  *&v7 = v8;
  return v7 >> 32;
}

void llvm::AttributeSet::getAsString(llvm::AttributeSetNode **this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v3 = *this;
  if (v3)
  {
    llvm::AttributeSetNode::getAsString(v3, a2, a3);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(a3, &str_119);
  }
}

void llvm::AttributeSetNode::getAsString(llvm::AttributeSetNode *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 2);
  if (v4)
  {
    v6 = 0;
    v7 = (this + 48);
    v8 = -8 * v4;
    do
    {
      if (v6)
      {
        std::string::push_back(a3, 32);
      }

      llvm::Attribute::getAsString(v7, a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = (v7 + 8);
      v6 -= 8;
    }

    while (v8 != v6);
  }
}

BOOL llvm::AttributeSet::hasParentContext(unsigned int **a1, void *a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x2000000000;
  llvm::AttributeSetNode::Profile(*a1, v9);
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(*a2 + 296, v9, &v8, llvm::FoldingSet<llvm::AttributeSetNode>::getFoldingSetInfo(void)::Info);
  v5 = *a1;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  result = NodeOrInsertPos == v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *llvm::AttributeSetNode::Profile(unsigned int *result, unsigned int *a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = (result + 12);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v6);
      result = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, SHIDWORD(v6));
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t llvm::AttributeSetNode::AttributeSetNode(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 0u;
  v5 = a1 + 12;
  *(a1 + 28) = 0u;
  if (a3)
  {
    v6 = (a1 + 48);
    memmove((a1 + 48), a2, 8 * a3);
    if (v3)
    {
      v8 = 8 * v3;
      while (1)
      {
        v9 = *v6;
        if (!*v6)
        {
          goto LABEL_13;
        }

        if (*(v9 + 8) != 2)
        {
          break;
        }

        v10 = *(v9 + 12);
        *&v16 = v9 + 24;
        *(&v16 + 1) = v10;
        v17 = v9;
        v18 = 0;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 24), &v16, &v18, v7) & 1) == 0)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          if (4 * v11 + 4 >= 3 * v12)
          {
            v12 *= 2;
          }

          else if (v12 + ~v11 - *(a1 + 36) > v12 >> 3)
          {
LABEL_9:
            v13 = v18;
            ++*(a1 + 32);
            if (*v13 != -1)
            {
              --*(a1 + 36);
            }

            *v13 = v16;
            v13[2] = v17;
            goto LABEL_14;
          }

          llvm::DenseMap<llvm::StringRef,llvm::jitlink::Block *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Block *>>::grow(a1 + 24, v12);
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 24), &v16, &v18, v14);
          goto LABEL_9;
        }

LABEL_14:
        ++v6;
        v8 -= 8;
        if (!v8)
        {
          return a1;
        }
      }

      LODWORD(v9) = *(v9 + 12);
LABEL_13:
      *(v5 + v9 / 8) |= 1 << (v9 & 7);
      goto LABEL_14;
    }
  }

  return a1;
}

uint64_t *llvm::AttributeSetNode::getSorted(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *a1;
    v14[0] = v15;
    v14[1] = 0x2000000000;
    v6 = 8 * a3;
    v7 = 8 * a3;
    v8 = a2;
    do
    {
      v9 = *v8++;
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v14, v9);
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v14, SHIDWORD(v9));
      v7 -= 8;
    }

    while (v7);
    v13 = 0;
    NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v5 + 296, v14, &v13, llvm::FoldingSet<llvm::AttributeSetNode>::getFoldingSetInfo(void)::Info);
    if (!NodeOrInsertPos)
    {
      NodeOrInsertPos = operator new(v6 + 48);
      llvm::AttributeSetNode::AttributeSetNode(NodeOrInsertPos, a2, a3);
      llvm::FoldingSetBase::InsertNode(v5 + 296, NodeOrInsertPos, v13, llvm::FoldingSet<llvm::AttributeSetNode>::getFoldingSetInfo(void)::Info);
    }

    if (v14[0] != v15)
    {
      free(v14[0]);
    }
  }

  else
  {
    NodeOrInsertPos = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return NodeOrInsertPos;
}

uint64_t llvm::AttributeSetNode::findEnumAttribute(uint64_t a1, int a2)
{
  if (((*(a1 + a2 / 8 + 12) >> (a2 & 7)) & 1) == 0)
  {
    return 0;
  }

  v2 = (a1 + 48);
  v3 = *(a1 + 32);
  if (8 * *(a1 + 8) != 8 * v3)
  {
    v4 = (8 * *(a1 + 8) - 8 * v3) >> 3;
    do
    {
      v5 = v4 >> 1;
      v6 = &v2[v4 >> 1];
      v7 = *v6;
      if (*v6)
      {
        LODWORD(v7) = *(v7 + 12);
      }

      v8 = v6 + 1;
      v4 += ~v5;
      if (v7 < a2)
      {
        v2 = v8;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  return *v2;
}

uint64_t llvm::AttributeListImpl::AttributeListImpl(uint64_t a1, void *__src, uint64_t a3)
{
  v4 = __src;
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 12) = 0;
  v6 = a1 + 12;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  if (a3)
  {
    memmove((a1 + 40), __src, 8 * a3);
  }

  v7 = *v4;
  if (*v4)
  {
    v8 = (*v4 + 48);
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = *v4 + 48 + 8 * *(v7 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    while (1)
    {
      v10 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }

      if (*(v10 + 8) != 2)
      {
        break;
      }

LABEL_14:
      if (++v8 == v9)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v10) = *(v10 + 12);
LABEL_13:
    *(v6 + v10 / 8) |= 1 << (v10 & 7);
    goto LABEL_14;
  }

LABEL_15:
  if (a3)
  {
    v11 = &v4[a3];
    do
    {
      v12 = *v4;
      if (*v4)
      {
        v13 = (*v4 + 48);
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = *v4 + 48 + 8 * *(v12 + 8);
      }

      else
      {
        v14 = 0;
      }

      while (v13 != v14)
      {
        v15 = *v13;
        if (*v13)
        {
          if (*(v15 + 8) == 2)
          {
            goto LABEL_27;
          }

          LODWORD(v15) = *(v15 + 12);
        }

        *(a1 + 24 + v15 / 8) |= 1 << (v15 & 7);
LABEL_27:
        ++v13;
      }

      ++v4;
    }

    while (v4 != v11);
  }

  return a1;
}

unsigned int *llvm::AttributeListImpl::Profile(unsigned int *result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v4, v6);
      result = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v4, SHIDWORD(v6));
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

BOOL llvm::AttributeListImpl::hasAttrSomewhere(uint64_t a1, int a2, int *a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 7;
  }

  v4 = 1 << (a2 & 7);
  v5 = (v4 & *(a1 + (v3 >> 3) + 24));
  if (a3)
  {
    if ((v4 & *(a1 + (v3 >> 3) + 24)) != 0)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = v3 >> 3;
        v8 = (a1 + 40);
        v9 = -1;
        while (!*v8 || (v4 & *(*v8 + v7 + 12)) == 0)
        {
          ++v9;
          ++v8;
          if (!--v6)
          {
            return v5 != 0;
          }
        }

        *a3 = v9;
      }
    }
  }

  return v5 != 0;
}

uint64_t *llvm::AttributeList::getImpl(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v10[0] = v11;
  v10[1] = 0x2000000000;
  llvm::AttributeListImpl::Profile(v10, a2, a3);
  v9 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v5 + 280, v10, &v9, llvm::FoldingSet<llvm::AttributeListImpl>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v5 + 2072, 8 * a3 + 40, 3);
    llvm::AttributeListImpl::AttributeListImpl(NodeOrInsertPos, a2, a3);
    llvm::FoldingSetBase::InsertNode(v5 + 280, NodeOrInsertPos, v9, llvm::FoldingSet<llvm::AttributeListImpl>::getFoldingSetInfo(void)::Info);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return NodeOrInsertPos;
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a2;
    v6 = a2 + 16 * a3;
    v7 = *(v6 - 16);
    if (v7 == -1)
    {
      if (a3 == 1)
      {
        v7 = -1;
      }

      else
      {
        v7 = *(v6 - 32);
      }
    }

    v11 = v13;
    v12 = 0x400000000;
    llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v11, (v7 + 2));
    if ((a3 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      do
      {
        *(v11 + (*v4 + 1)) = *(v4 + 8);
        v4 += 16;
      }

      while (v4 != v6);
    }

    Impl = llvm::AttributeList::getImpl(a1, v11, v12);
    if (v11 != v13)
    {
      free(v11);
    }
  }

  else
  {
    Impl = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  LODWORD(v10) = a5 + 3;
  v11 = a5;
  do
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = a4[--v11];
    v10 = (v10 - 1);
  }

  while (!v12);
  if (!v10)
  {
LABEL_7:
    if (a3)
    {
      LODWORD(v10) = 2;
    }

    else
    {
      if (!a2)
      {
        Impl = 0;
        goto LABEL_19;
      }

      LODWORD(v10) = 1;
    }

    v17 = v19;
    v18 = 0x800000000;
    goto LABEL_12;
  }

  v17 = v19;
  v18 = 0x800000000;
  if (v10 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v10, 8);
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v17, a2);
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v17, a3);
    goto LABEL_14;
  }

LABEL_12:
  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v17, a2);
  if (v10 == 1)
  {
    goto LABEL_17;
  }

  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v17, a3);
  if (v10 < 3)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = (v10 - 2);
  if (a5 < v13)
  {
    v13 = a5;
  }

  llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v17, v17 + 8 * v18, a4, &a4[v13]);
LABEL_17:
  Impl = llvm::AttributeList::getImpl(a1, v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, int a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2 + 1;
    v9 = v11;
    v10 = 0x800000000;
    llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v9, (a2 + 2));
    *(v9 + v5) = a3;
    Impl = llvm::AttributeList::getImpl(a1, v9, v10);
    if (v9 != v11)
    {
      free(v9);
    }
  }

  else
  {
    Impl = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return Impl;
}

{
  Sorted = llvm::AttributeSetNode::getSorted(a1, *(a3 + 8), *(a3 + 16));

  return llvm::AttributeList::get(a1, a2, Sorted);
}

uint64_t *llvm::AttributeList::get(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  Impl = a3;
  v32[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 1)
    {
      Impl = *a2;
    }

    else
    {
      LODWORD(v5) = 0;
      v6 = 8 * a3;
      v7 = a2;
      v8 = &a2[a3];
      do
      {
        v9 = *v7;
        if (*v7)
        {
          LODWORD(v9) = *(v9 + 2);
        }

        if (v5 <= v9)
        {
          v5 = v9;
        }

        else
        {
          v5 = v5;
        }

        ++v7;
        v6 -= 8;
      }

      while (v6);
      if (v5)
      {
        v30 = v32;
        v31 = 0x800000000;
        llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v30, v5);
        for (i = 0; i != v5; ++i)
        {
          v26 = a1;
          v27 = v29;
          v11 = a2;
          v28 = 0x800000000;
          do
          {
            v12 = *v11;
            if (*v11 && i < *(v12 + 2))
            {
              v13 = v12[i + 5];
              v23 = v25;
              v24 = 0x800000000;
              if (v13)
              {
                v14 = (v13 + 48);
                v15 = (v13 + 48 + 8 * *(v13 + 8));
              }

              else
              {
                v14 = 0;
                v15 = 0;
              }
            }

            else
            {
              v14 = 0;
              v15 = 0;
              v23 = v25;
              v24 = 0x800000000;
            }

            llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v23, v25, v14, v15);
            v16 = v23;
            if (v24)
            {
              v17 = 8 * v24;
              do
              {
                v18 = *v16++;
                llvm::AttrBuilder::addAttribute(&v26, v18);
                v17 -= 8;
              }

              while (v17);
              v16 = v23;
            }

            if (v16 != v25)
            {
              free(v16);
            }

            ++v11;
          }

          while (v11 != v8);
          Sorted = llvm::AttributeSetNode::getSorted(a1, v27, v28);
          *(v30 + i) = Sorted;
          if (v27 != v29)
          {
            free(v27);
          }
        }

        Impl = llvm::AttributeList::getImpl(a1, v30, v31);
        if (v30 != v32)
        {
          free(v30);
        }
      }

      else
      {
        Impl = 0;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t *llvm::AttributeList::addAttributeAtIndex(uint64_t **a1, uint64_t *a2, int a3, int a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*a1 && (a3 + 1) < *(v8 + 2) && (v9 = v8[(a3 + 1) + 5]) != 0)
  {
    if ((*(v9 + a4 / 8 + 12) >> (a4 & 7)))
    {
      goto LABEL_9;
    }

    v10 = (v9 + 48);
    v11 = (v9 + 48 + 8 * *(v9 + 8));
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v16 = v18;
  v17 = 0x800000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v16, v10, v11);
  v12 = llvm::Attribute::get(a2, a4, 0);
  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v16, v12);
  v13 = llvm::AttributeSetNode::get(a2, v16, v17);
  v8 = llvm::AttributeList::setAttributesAtIndex(a1, a2, a3, v13);
  if (v16 != v18)
  {
    free(v16);
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t *llvm::AttributeList::setAttributesAtIndex(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v7 = a3 + 1;
  v8 = *a1;
  if (*a1)
  {
    v9 = (*a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = (*a1 + 40 + 8 * *(v8 + 8));
  }

  else
  {
    v10 = 0;
  }

  v17 = v19;
  v18 = 0x400000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v17, v9, v10);
  v11 = v18;
  if (v18 > v7)
  {
    *(v17 + v7) = a4;
    v12 = v17;
    goto LABEL_10;
  }

  llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v17, (a3 + 2));
  v11 = v18;
  *(v17 + v7) = a4;
  v12 = v17;
  if (v11)
  {
LABEL_10:
    while (1)
    {
      v13 = v11;
      if (v12[v11 - 1])
      {
        break;
      }

      --v11;
      LODWORD(v18) = v13 - 1;
      if (v13 == 1)
      {
        goto LABEL_12;
      }
    }

    Impl = llvm::AttributeList::getImpl(a2, v12, v11);
    v12 = v17;
  }

  else
  {
LABEL_12:
    Impl = 0;
  }

  if (v12 != v19)
  {
    free(v12);
  }

  v15 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t llvm::AttrBuilder::addAttribute(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (*(a2 + 8) != 2)
  {
    LODWORD(a2) = *(a2 + 12);
LABEL_5:
    addAttributeImpl<llvm::Attribute::AttrKind>((a1 + 8), a2, v2);
    return a1;
  }

  addAttributeImpl<llvm::StringRef>((a1 + 8), (a2 + 24), *(a2 + 12), a2);
  return a1;
}

uint64_t *llvm::AttributeList::addParamAttribute(void *a1, uint64_t *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  if (*a1)
  {
    v10 = (*a1 + 40);
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = (*a1 + 40 + 8 * *(v9 + 8));
  }

  else
  {
    v11 = 0;
  }

  v26 = v28;
  v27 = 0x400000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v26, v10, v11);
  v12 = a3[a4 - 1];
  if (v27 <= v12 + 2)
  {
    llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(&v26, (v12 + 3));
  }

  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 4 * a4;
    do
    {
      v14 = *a3 + 2;
      v15 = *(v26 + v14);
      v22 = a2;
      v23 = v25;
      v24 = 0x800000000;
      if (v15)
      {
        v16 = (v15 + 48);
        v17 = (v15 + 48 + 8 * *(v15 + 8));
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(&v23, v25, v16, v17);
      llvm::AttrBuilder::addAttribute(&v22, a5);
      Sorted = llvm::AttributeSetNode::getSorted(a2, v23, v24);
      *(v26 + v14) = Sorted;
      if (v23 != v25)
      {
        free(v23);
      }

      ++a3;
      v13 -= 4;
    }

    while (v13);
  }

  Impl = llvm::AttributeList::getImpl(a2, v26, v27);
  if (v26 != v28)
  {
    free(v26);
  }

  v20 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t *llvm::AttributeList::removeAttributeAtIndex(void *a1, uint64_t *a2, int a3, int a4)
{
  v7 = *a1;
  if (*a1 && (a3 + 1) < *(v7 + 8))
  {
    v8 = *(v7 + 8 * (a3 + 1) + 40);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v9 = llvm::AttributeSet::removeAttribute(&v11, a2, a4);
  if (v8 == v9)
  {
    return *a1;
  }

  return llvm::AttributeList::setAttributesAtIndex(a1, a2, a3, v9);
}

uint64_t *llvm::AttributeList::removeAttributesAtIndex(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v7 = *a1;
  if (*a1 && (a3 + 1) < *(v7 + 8))
  {
    v8 = *(v7 + 8 * (a3 + 1) + 40);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v9 = llvm::AttributeSet::removeAttributes(&v11, a2, a4);
  if (v8 == v9)
  {
    return *a1;
  }

  return llvm::AttributeList::setAttributesAtIndex(a1, a2, a3, v9);
}

uint64_t **llvm::AttrBuilder::addDereferenceableAttr(uint64_t **this, uint64_t a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*this, 78, a2);
    llvm::AttrBuilder::addAttribute(this, v3);
  }

  return this;
}

uint64_t **llvm::AttrBuilder::addDereferenceableOrNullAttr(uint64_t **this, uint64_t a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*this, 79, a2);
    llvm::AttrBuilder::addAttribute(this, v3);
  }

  return this;
}

uint64_t llvm::AttributeList::hasAttributeAtIndex(uint64_t *a1, int a2, uint64_t a3, unint64_t *a4)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if ((a2 + 1) >= *(v6 + 8))
  {
    return 0;
  }

  v7 = *(v6 + 8 * (a2 + 1) + 40);
  if (!v7)
  {
    return 0;
  }

  v10[1] = v4;
  v10[2] = v5;
  v9[0] = a3;
  v9[1] = a4;
  v10[0] = 0;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((v7 + 24), v9, v10, a4);
}

uint64_t llvm::AttributeList::getAttributeAtIndex(uint64_t *a1, int a2, int a3)
{
  v3 = *a1;
  if (!*a1 || (a2 + 1) >= *(v3 + 8))
  {
    return 0;
  }

  result = *(v3 + 8 * (a2 + 1) + 40);
  if (result)
  {
    result = llvm::AttributeSetNode::findEnumAttribute(result, a3);
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::AttributeList::getRetAlignment(llvm::AttributeList *this)
{
  v1 = *this;
  if (!*this)
  {
    goto LABEL_6;
  }

  if (*(v1 + 8) < 2u)
  {
    LODWORD(v1) = 0;
LABEL_6:
    LOBYTE(v2) = 0;
    return v2 | (v1 << 8);
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    LOWORD(v2) = llvm::AttributeSetNode::getAlignment(v2);
    LODWORD(v1) = BYTE1(v2);
  }

  else
  {
    LODWORD(v1) = 0;
  }

  return v2 | (v1 << 8);
}

uint64_t llvm::AttributeList::getParamAlignment(llvm::AttributeList *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    goto LABEL_6;
  }

  if ((a2 + 2) >= *(v2 + 8))
  {
    LODWORD(v2) = 0;
LABEL_6:
    LOBYTE(v3) = 0;
    return v3 | (v2 << 8);
  }

  v3 = *(v2 + 8 * (a2 + 2) + 40);
  if (v3)
  {
    LOWORD(v3) = llvm::AttributeSetNode::getAlignment(v3);
    LODWORD(v2) = BYTE1(v3);
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v3 | (v2 << 8);
}

uint64_t llvm::AttributeList::getParamStructRetType(llvm::AttributeList *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((a2 + 2) >= *(v2 + 8))
  {
    return 0;
  }

  result = *(v2 + 8 * (a2 + 2) + 40);
  if (result)
  {
    EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 74);
    result = 0;
    if (v5)
    {
      if (EnumAttribute)
      {
        return *(EnumAttribute + 16);
      }
    }
  }

  return result;
}

uint64_t llvm::AttributeList::getParamElementType(llvm::AttributeList *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((a2 + 2) >= *(v2 + 8))
  {
    return 0;
  }

  result = *(v2 + 8 * (a2 + 2) + 40);
  if (result)
  {
    EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 71);
    result = 0;
    if (v5)
    {
      if (EnumAttribute)
      {
        return *(EnumAttribute + 16);
      }
    }
  }

  return result;
}

uint64_t llvm::AttributeList::getAllocKind(llvm::AttributeList *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (!*(v1 + 8))
  {
    return 0;
  }

  result = *(v1 + 40);
  if (!result)
  {
    return result;
  }

  EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(result, 76);
  if (v4)
  {
    return *(EnumAttribute + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::AttributeList::getMemoryEffects(llvm::AttributeList *this)
{
  v1 = *this;
  if (!*this)
  {
    return 63;
  }

  if (*(v1 + 8))
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(v2, 80);
      if (v4)
      {
        return *(EnumAttribute + 16);
      }
    }
  }

  return 63;
}

BOOL llvm::AttributeList::hasParentContext(uint64_t a1, void *a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x2000000000;
  llvm::AttributeListImpl::Profile(v9, (*a1 + 40), *(*a1 + 8));
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(*a2 + 280, v9, &v8, llvm::FoldingSet<llvm::AttributeListImpl>::getFoldingSetInfo(void)::Info);
  v5 = *a1;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  result = NodeOrInsertPos == v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::AttributeList::print(llvm::AttributeSetNode **this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0xEuLL)
  {
    qmemcpy(v4, "AttributeList[\n", 15);
    *(a2 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(a2, "AttributeList[\n", 0xFuLL);
  }

  if (*this)
  {
    v5 = *(*this + 2);
    if (v5)
    {
      v6 = 0;
      v7 = 40;
      while (1)
      {
        v8 = *this;
        if (*this)
        {
          if (v6 < *(v8 + 2) && *(v8 + v7))
          {
            break;
          }
        }

LABEL_47:
        ++v6;
        v7 += 8;
        if (v5 == v6)
        {
          goto LABEL_48;
        }
      }

      v9 = *(a2 + 4);
      if (*(a2 + 3) - v9 > 3uLL)
      {
        *v9 = 544940064;
        *(a2 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(a2, "  { ", 4uLL);
      }

      v10 = *(a2 + 4);
      v11 = *(a2 + 3) - v10;
      if (v6)
      {
        if (v6 == 1)
        {
          if (v11 <= 5)
          {
            v12 = a2;
            v13 = "return";
            v14 = 6;
LABEL_28:
            llvm::raw_ostream::write(v12, v13, v14);
            goto LABEL_29;
          }

          *(v10 + 4) = 28274;
          *v10 = 1970562418;
          v15 = *(a2 + 4) + 6;
        }

        else
        {
          if (v11 > 3)
          {
            *v10 = 677868129;
            *(a2 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(a2, "arg(", 4uLL);
          }

          write_unsigned<unsigned long>(a2, v6 - 2, 0, 0, 0);
          v16 = *(a2 + 4);
          if (*(a2 + 3) == v16)
          {
            v12 = a2;
            v13 = ")";
            v14 = 1;
            goto LABEL_28;
          }

          *v16 = 41;
          v15 = *(a2 + 4) + 1;
        }
      }

      else
      {
        if (v11 <= 7)
        {
          v12 = a2;
          v13 = "function";
          v14 = 8;
          goto LABEL_28;
        }

        *v10 = 0x6E6F6974636E7566;
        v15 = *(a2 + 4) + 8;
      }

      *(a2 + 4) = v15;
LABEL_29:
      v17 = *(a2 + 4);
      if (*(a2 + 3) - v17 > 3uLL)
      {
        *v17 = 540949792;
        *(a2 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(a2, " => ", 4uLL);
      }

      v18 = *this;
      if (*this)
      {
        if (v6 >= *(v18 + 2))
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v18 + v7);
        }
      }

      v24 = v18;
      llvm::AttributeSet::getAsString(&v24, 0, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(a2, p_p, size);
      v21 = *(a2 + 4);
      if ((*(a2 + 3) - v21) > 2)
      {
        *(v21 + 2) = 10;
        *v21 = 32032;
        *(a2 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(a2, " }\n", 3uLL);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_47;
    }
  }

LABEL_48:
  v22 = *(a2 + 4);
  if (*(a2 + 3) - v22 > 1uLL)
  {
    *v22 = 2653;
    *(a2 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(a2, "]\n", 2uLL);
  }
}

uint64_t addAttributeImpl<llvm::StringRef>(unsigned int *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v13 = a3;
  v6 = *a1;
  v7 = a1[2];
  v14 = 0;
  v8 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(v6, &v12, v7);
  v9 = v8;
  if (v8 != (*a1 + 8 * a1[2]) && (v10 = *v8, *v9) && *(v10 + 8) == 2 && (result = llvm::AttributeImpl::hasAttribute(v10, v12, v13), result))
  {
    *v9 = a4;
  }

  else
  {
    v15 = a4;
    return llvm::SmallVectorImpl<llvm::Attribute>::insert_one_impl<llvm::Attribute>(a1, v9, &v15);
  }

  return result;
}

uint64_t *addAttributeImpl<llvm::Attribute::AttrKind>(unsigned int *a1, int a2, uint64_t a3)
{
  v7 = a2;
  result = llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(a1, &v7);
  if (result != (*a1 + 8 * a1[2]))
  {
    v6 = *result;
    if (*result)
    {
      if (*(v6 + 8) != 2 && *(v6 + 12) == v7)
      {
        goto LABEL_5;
      }
    }

    else if (!v7)
    {
LABEL_5:
      *result = a3;
      return result;
    }
  }

  v8 = a3;
  return llvm::SmallVectorImpl<llvm::Attribute>::insert_one_impl<llvm::Attribute>(a1, result, &v8);
}

void *llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v5 = v4 >> 1;
      v6 = &result[v4 >> 1];
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_5;
      }

      if (*(v7 + 8) != 2)
      {
        break;
      }

LABEL_7:
      v4 = v5;
      if (!v5)
      {
        return result;
      }
    }

    LODWORD(v7) = *(v7 + 12);
LABEL_5:
    v8 = v6 + 1;
    v9 = v4 + ~v5;
    if (v7 < *a2)
    {
      v5 = v9;
      result = v8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t llvm::AttrBuilder::getAttribute(uint64_t a1, int a2)
{
  v5 = a2;
  v3 = llvm::lower_bound<llvm::SmallVector<llvm::Attribute,8u> &,llvm::Attribute::AttrKind &,AttributeComparator>(a1 + 8, &v5);
  if (v3 == (*(a1 + 8) + 8 * *(a1 + 16)))
  {
    return 0;
  }

  result = *v3;
  if (!result)
  {
    if (!v5)
    {
      return result;
    }

    return 0;
  }

  if (*(result + 8) == 2 || *(result + 12) != v5)
  {
    return 0;
  }

  return result;
}

uint64_t **llvm::AttrBuilder::addAlignmentAttr(uint64_t **a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v3 = llvm::Attribute::get(*a1, 75, 1 << a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t **llvm::AttrBuilder::addStackAlignmentAttr(uint64_t **a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v3 = llvm::Attribute::get(*a1, 82, 1 << a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t llvm::AttrBuilder::addAllocSizeAttrFromRawRepr(uint64_t **this, uint64_t a2)
{
  v3 = llvm::Attribute::get(*this, 77, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t **llvm::AttrBuilder::addVScaleRangeAttrFromRawRepr(uint64_t **this, uint64_t a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*this, 84, a2);
    llvm::AttrBuilder::addAttribute(this, v3);
  }

  return this;
}

uint64_t **llvm::AttrBuilder::addUWTableAttr(uint64_t **a1, int a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*a1, 83, a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t llvm::AttrBuilder::addMemoryAttr(uint64_t **a1, unsigned int a2)
{
  v3 = llvm::Attribute::get(*a1, 80, a2);

  return llvm::AttrBuilder::addAttribute(a1, v3);
}

uint64_t **llvm::AttrBuilder::addNoFPClassAttr(uint64_t **a1, unsigned int a2)
{
  if (a2)
  {
    v3 = llvm::Attribute::get(*a1, 81, a2);
    llvm::AttrBuilder::addAttribute(a1, v3);
  }

  return a1;
}

uint64_t llvm::AttrBuilder::addAllocKindAttr(uint64_t **a1, uint64_t a2)
{
  v3 = llvm::Attribute::get(*a1, 76, a2);

  return llvm::AttrBuilder::addAttribute(a1, v3);
}

uint64_t llvm::AttrBuilder::addByValAttr(uint64_t **this, llvm::Type *a2)
{
  v3 = llvm::Attribute::get(*this, 70, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t llvm::AttrBuilder::addStructRetAttr(uint64_t **this, llvm::Type *a2)
{
  v3 = llvm::Attribute::get(*this, 74, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t llvm::AttrBuilder::addInAllocaAttr(uint64_t **this, llvm::Type *a2)
{
  v3 = llvm::Attribute::get(*this, 72, a2);

  return llvm::AttrBuilder::addAttribute(this, v3);
}

uint64_t llvm::AttrBuilder::getAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v11 = 0;
  v6 = std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(v4, &v9, v5);
  if (v6 == (*(a1 + 8) + 8 * *(a1 + 16)))
  {
    return 0;
  }

  v7 = *v6;
  if (!*v6 || *(v7 + 8) != 2)
  {
    return 0;
  }

  if (llvm::AttributeImpl::hasAttribute(*v6, v9, v10))
  {
    return v7;
  }

  return 0;
}

BOOL llvm::AttributeFuncs::isNoFPClassCompatibleType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (a1 && v1 == 17)
  {
    do
    {
      a1 = *(a1 + 24);
      v1 = *(a1 + 8);
      if (a1)
      {
        v2 = v1 == 17;
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2);
  }

  if ((v1 & 0xFE) == 0x12)
  {
    v1 = *(**(a1 + 16) + 8);
  }

  return v1 < 6u && ((0x2Fu >> v1) & 1) != 0 || (v1 & 0xFD) == 4;
}

uint64_t llvm::AttributeFuncs::typeIncompatible@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[4] = 0;
  a3[3] = 0;
  a3[2] = (a3 + 3);
  v7 = *(result + 8);
  if (v7 != 13)
  {
    if (a2)
    {
      v6 = 2;
      *a3 = 2;
      if ((a2 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = 0;
      if ((a2 & 2) != 0)
      {
LABEL_4:
        v6 |= 0x1000000000000uLL;
        v5 = 16;
        *a3 = v6;
        a3[1] = 16;
        goto LABEL_7;
      }
    }

    v5 = 0;
LABEL_7:
    if (v7 == 15)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    v6 |= 0x304000240000uLL;
    v5 |= 0xC000uLL;
    *a3 = v6;
    a3[1] = v5;
  }

  if ((a2 & 2) != 0)
  {
    v5 |= 0x7E1uLL;
    v6 |= 0x20004uLL;
    *a3 = v6;
    a3[1] = v5;
  }

LABEL_12:
  v8 = v7;
  if ((v7 & 0xFE) == 0x12)
  {
    v8 = *(**(result + 16) + 8);
  }

  if ((a2 & 1) == 0 || v8 == 15)
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v5 |= 0x800uLL;
    a3[1] = v5;
  }

  result = llvm::AttributeFuncs::isNoFPClassCompatibleType(result);
  if ((result & 1) == 0)
  {
    a3[1] = v5 | 0x20000;
  }

  if ((a2 & 1) != 0 && v7 == 7)
  {
    *a3 = v6 | 0x800000000;
  }

  return result;
}

uint64_t llvm::StringAttributeImpl::StringAttributeImpl(uint64_t a1, const void *a2, size_t __len, void *__src, size_t a5)
{
  v7 = __len;
  *a1 = 0;
  *(a1 + 8) = 2;
  *(a1 + 12) = __len;
  *(a1 + 16) = a5;
  v9 = a1 + 24;
  if (__len)
  {
    memmove((a1 + 24), a2, __len);
  }

  *(v9 + v7) = 0;
  if (a5)
  {
    memmove((v9 + v7 + 1), __src, a5);
    v7 = *(a1 + 12);
    v10 = *(a1 + 16) + 1;
  }

  else
  {
    v10 = 1;
  }

  *(v9 + v10 + v7) = 0;
  return a1;
}

void *std::__lower_bound_bisecting[abi:nn200100]<std::_ClassicAlgPolicy,llvm::Attribute *,llvm::StringRef,std::__identity,AttributeComparator>(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v7 = &a1[v4 >> 1];
      v8 = *v7;
      if (!*v7 || *(v8 + 8) != 2 || (v9 = *a2, v10 = *(a2 + 8), v11 = v8 + 24, v12 = *(v8 + 12), v14[0] = v11, v14[1] = v12, (llvm::StringRef::compare(v14, v9, v10) & 0x80000000) != 0))
      {
        a1 = v7 + 1;
        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

BOOL llvm::FoldingSet<llvm::AttributeImpl>::NodeEquals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  llvm::AttributeImpl::Profile(a2, a5);
  v7 = *(a3 + 8);
  return v7 == a5[2] && memcmp(*a5, *a3, 4 * v7) == 0;
}

std::string *llvm::detail::join_impl<llvm::StringRef *>(std::string *this, uint64_t a2, uint64_t a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v5 = this;
    v6 = ((a3 - a2) >> 4) - 1;
    v7 = a2;
    do
    {
      v6 += *(v7 + 8);
      v7 += 16;
    }

    while (v7 != a3);
    std::string::reserve(this, v6);
    this = std::string::append(v5, *a2, *(a2 + 8));
    for (i = a2 + 16; i != a3; this = std::string::append(v5, v9, v10))
    {
      std::string::append(v5, ",", 1uLL);
      v9 = *i;
      v10 = *(i + 8);
      i += 16;
    }
  }

  return this;
}

BOOL llvm::FoldingSet<llvm::AttributeSetNode>::NodeEquals(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  llvm::AttributeSetNode::Profile(a2, a5);
  v7 = *(a3 + 8);
  return v7 == a5[2] && memcmp(*a5, *a3, 4 * v7) == 0;
}

uint64_t llvm::array_pod_sort_comparator<llvm::Attribute>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a1)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = llvm::AttributeImpl::operator<(*a1, v3);
    if (v8)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *a1;
    v3 = *a2;
  }

  if (v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4 == 0;
  }

  result = !v10;
  if (v3)
  {
    v11 = v4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    return llvm::AttributeImpl::operator<(v3, v4);
  }

  return result;
}

BOOL llvm::FoldingSet<llvm::AttributeListImpl>::NodeEquals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  llvm::AttributeListImpl::Profile(a5, (a2 + 40), *(a2 + 8));
  v7 = *(a3 + 8);
  return v7 == a5[2] && memcmp(*a5, *a3, 4 * v7) == 0;
}

char *llvm::SmallVectorImpl<llvm::AttributeSet>::insert<llvm::AttributeSet const*,void>(unsigned int *a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = a4 - __src;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v9 + v11, 8);
    v7 = *a1;
    v9 = a1[2];
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), (v7 + v8), v15);
      v18 = v12;
      do
      {
        v19 = *v5++;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  v20 = v11 + v9;
  if (v20 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v20, 8);
    LODWORD(v9) = a1[2];
  }

  if (a4 != v5)
  {
    v21 = (*a1 + 8 * v9);
    v22 = -8 * v11;
    do
    {
      *v21++ = *&v14[v22];
      v22 += 8;
    }

    while (v22);
  }

  a1[2] = v9 + v11;
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

uint64_t llvm::SmallVectorImpl<llvm::Attribute>::insert_one_impl<llvm::Attribute>(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[2];
  if (*a1 + 8 * v6 == a2)
  {
    llvm::SmallVectorTemplateBase<void *,true>::push_back(a1, *a3);
    return *a1 + 8 * a1[2] - 8;
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= a1[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v6 + 1, 8);
      v5 = *a1;
      v6 = a1[2];
    }

    v8 = (v5 + v7);
    *(v5 + 8 * v6) = *(v5 + 8 * v6 - 8);
    v9 = *a1 + 8 * v6 - 8;
    if (v9 != v8)
    {
      memmove(v8 + 1, v8, v9 - v8);
      LODWORD(v6) = a1[2];
    }

    a1[2] = v6 + 1;
    *v8 = *a3;
  }

  return v8;
}

BOOL llvm::AttributeMask::contains(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = 0;
LABEL_6:
    v5 = (1 << v6) & *(a1 + ((v6 >> 3) & 0x1FFFFFF8));
    return v5 != 0;
  }

  if (*(a2 + 8) != 2)
  {
    v6 = *(a2 + 12);
    goto LABEL_6;
  }

  v9 = v2;
  v10 = v3;
  v4 = *(a2 + 12);
  *&v8 = a2 + 24;
  *(&v8 + 1) = v4;
  v5 = std::__tree<llvm::SmallString<32u>>::__count_multi<llvm::StringRef>(a1 + 16, &v8);
  return v5 != 0;
}

uint64_t std::__tree<llvm::SmallString<32u>>::__count_multi<llvm::StringRef>(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = v3[4];
    v6 = v3[5];
    v24 = *a2;
    if ((llvm::StringRef::compare(&v24, v5, v6) & 0x80000000) != 0)
    {
      v2 = v3;
      goto LABEL_6;
    }

    v7 = v3[5];
    v8 = *a2;
    v9 = *(a2 + 1);
    *&v24 = v3[4];
    *(&v24 + 1) = v7;
    if ((llvm::StringRef::compare(&v24, v8, v9) & 0x80000000) == 0)
    {
      break;
    }

    ++v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  v11 = *v3;
  v12 = v3;
  if (*v3)
  {
    v12 = v3;
    do
    {
      v13 = v11[5];
      v14 = *a2;
      v15 = *(a2 + 1);
      *&v24 = v11[4];
      *(&v24 + 1) = v13;
      v16 = llvm::StringRef::compare(&v24, v14, v15);
      if (v16 >= 0)
      {
        v12 = v11;
      }

      v11 = *(v11 + ((v16 >> 28) & 8));
    }

    while (v11);
  }

  for (i = v3[1]; i; i = i[v20 >= 0])
  {
    v18 = i[4];
    v19 = i[5];
    v24 = *a2;
    v20 = llvm::StringRef::compare(&v24, v18, v19);
    if (v20 < 0)
    {
      v2 = i;
    }
  }

  if (v12 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v21 = v12[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v12[2];
        v23 = *v22 == v12;
        v12 = v22;
      }

      while (!v23);
    }

    ++result;
    v12 = v22;
  }

  while (v22 != v2);
  return result;
}

uint64_t llvm::UpgradeIntrinsicFunction(llvm *this, llvm::Function **a2, llvm::Function **a3)
{
  *a2 = 0;
  v5 = UpgradeIntrinsicFunction1(this, a2);
  if (*a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = this;
  }

  v7 = *(v6 + 9);
  if (v7)
  {
    *(v6 + 14) = llvm::Intrinsic::getAttributes(**v6, v7);
  }

  return v5;
}

uint64_t UpgradeIntrinsicFunction1(llvm::Function *a1, llvm::Function **a2)
{
  v292 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 23) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  ValueName = llvm::Value::getValueName(a1);
  v6 = *ValueName;
  if (*ValueName < 8uLL)
  {
    goto LABEL_7;
  }

  v7 = ValueName;
  if (*(ValueName + 16) != 1836477548 || *(ValueName + 20) != 46)
  {
    goto LABEL_7;
  }

  v13 = ValueName + 21;
  v12 = *(ValueName + 21);
  v14 = v6 - 5;
  v284 = (ValueName + 21);
  v285 = v6 - 5;
  switch(v12)
  {
    case 'a':
      if (v14 < 8)
      {
        goto LABEL_50;
      }

      if (*v13 == 0x746962722E6D7261)
      {
        goto LABEL_454;
      }

      if (v14 < 0xC)
      {
        goto LABEL_50;
      }

      if (*v13 == 0x2E34366863726161 && *(ValueName + 29) == 1953063538)
      {
        goto LABEL_454;
      }

      if (v14 >= 0x13)
      {
        if (*v13 == 0x2E34366863726161 && *(ValueName + 29) == 0x6972662E6E6F656ELL && *(ValueName + 32) == 0x6E746E6972662E6ELL)
        {
          v162 = *(a1 + 5);
          if (*(a1 + 9))
          {
            llvm::Function::BuildLazyArguments(a1);
          }

          v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
          v9 = 1;
          v26 = v162;
          v27 = 264;
          goto LABEL_457;
        }
      }

      else if (v14 < 0x11)
      {
        goto LABEL_50;
      }

      if (*v13 == 0x2E34366863726161 && *(ValueName + 29) == 0x6962722E6E6F656ELL && *(ValueName + 37) == 116)
      {
LABEL_454:
        v144 = *(a1 + 5);
        if (*(a1 + 9))
        {
          llvm::Function::BuildLazyArguments(a1);
        }

        v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
        v9 = 1;
        v26 = v144;
        v27 = 8;
        goto LABEL_457;
      }

LABEL_50:
      if (v6 == 29)
      {
        if (!memcmp((ValueName + 21), "aarch64.sve.bfmlalb.lane", v14))
        {
          v15 = *(a1 + 5);
          v16 = 991;
          goto LABEL_525;
        }

        if (*v13 == 0x2E34366863726161 && *(v7 + 29) == 0x6C6D66622E657673 && *(v7 + 37) == 0x656E616C2E746C61)
        {
          v15 = *(a1 + 5);
          v16 = 993;
          goto LABEL_525;
        }
      }

      else if (v6 == 27 && !memcmp((ValueName + 21), "aarch64.sve.bfdot.lane", v14))
      {
        v15 = *(a1 + 5);
        v16 = 989;
        goto LABEL_525;
      }

      if ((atomic_load_explicit(&_MergedGlobals_42, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_42))
      {
        llvm::Regex::Regex();
      }

      if (!llvm::Regex::match(&unk_2815AA878, v284, v285, 0, 0))
      {
        if (v285 >= 0x15)
        {
          if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6C7075742E657673 && *(v284 + 13) == 0x7465672E656C7075)
          {
LABEL_312:
            v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
            if (*(a1 + 18))
            {
              llvm::Function::BuildLazyArguments(a1);
            }

            v286.__r_.__value_.__l.__size_ = **(a1 + 11);
            v15 = *(a1 + 5);
            v86 = &v286;
            v16 = 320;
            goto LABEL_661;
          }

          if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6C7075742E657673 && *(v284 + 13) == 0x7465732E656C7075)
          {
            v159 = *(*(a1 + 3) + 16);
            v286.__r_.__value_.__r.__words[0] = v159->u64[1];
            *&v286.__r_.__value_.__r.__words[1] = vextq_s8(v159[1], v159[1], 8uLL);
            v15 = *(a1 + 5);
            v86 = &v286;
            v16 = 321;
            goto LABEL_653;
          }
        }

        if ((atomic_load_explicit(&qword_2815AA858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA858))
        {
          llvm::Regex::Regex();
        }

        if (llvm::Regex::match(&unk_2815AA888, v284, v285, 0, 0))
        {
          v99 = *(*(a1 + 3) + 16);
          v100 = *v99;
          v101 = v99[2];
          v286.__r_.__value_.__r.__words[0] = v100;
          v286.__r_.__value_.__l.__size_ = v101;
          goto LABEL_309;
        }

        if (v285 >= 0xD)
        {
          if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 5) == 0x7A6C63762E6E6F65)
          {
            if (*(a1 + 9))
            {
              llvm::Function::BuildLazyArguments(a1);
            }

            *&v289 = **(a1 + 11);
            *(&v289 + 1) = ***a1 + 1920;
            v163 = llvm::FunctionType::get(**(*(a1 + 3) + 16), &v289, 2, 0);
            v164 = *(a1 + 8);
            v165 = (*(*a1 + 8) >> 8);
            v166 = 14;
            if (v285 < 0xE)
            {
              v166 = v285;
            }

            v288 = 1283;
            v286.__r_.__value_.__r.__words[0] = "llvm.ctlz.";
            v286.__r_.__value_.__r.__words[2] = &v284[v166];
            v287 = v285 - v166;
            v167 = *(a1 + 5);
            v168 = operator new(0x80uLL);
            v169 = (v168 + 2);
            v168[7] = v168[7] & 0x38000000 | 0x40000000;
            *v168 = 0;
            llvm::Function::Function((v168 + 2), v163, v164 & 0xF, v165, &v286, v167);
            *a2 = v169;
            goto LABEL_847;
          }

          if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 5) == 0x746E63762E6E6F65)
          {
            v179 = *(a1 + 5);
            if (*(a1 + 9))
            {
              llvm::Function::BuildLazyArguments(a1);
            }

            v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
            v9 = 1;
            v26 = v179;
            v27 = 54;
            goto LABEL_457;
          }
        }

        if ((atomic_load_explicit(&qword_2815AA860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA860))
        {
          llvm::Regex::Regex();
        }

        if (llvm::Regex::match(&unk_2815AA898, v284, v285, 0, 0))
        {
          v125 = *(a1 + 3);
          v126 = 8 * *(v125 + 12) - 8;
          *&v286.__r_.__value_.__l.__data_ = *(*(v125 + 16) + 8);
          v127 = llvm::StringRef::find(&v284, "lane", 4uLL, 0);
          v128 = *(a1 + 5);
          v129 = (&UpgradeIntrinsicFunction1(llvm::Function *,llvm::Function *&)::StoreLaneInts + (v126 >> 1) - 20);
          if (v127 == -1)
          {
            v129 = (&UpgradeIntrinsicFunction1(llvm::Function *,llvm::Function *&)::StoreInts + (v126 >> 1) - 12);
          }

          v16 = *v129;
          v86 = &v286;
          v15 = *(a1 + 5);
          goto LABEL_661;
        }

        if (v285 == 18)
        {
          if (*v284 != 0x657268742E6D7261 || *(v284 + 1) != 0x746E696F702E6461 || *(v284 + 8) != 29285)
          {
            goto LABEL_597;
          }
        }

        else
        {
          if (v285 != 22)
          {
            if (v285 < 0x10)
            {
              if (v285 == 15)
              {
                v182 = *v284 == 0x6E6F656E2E6D7261 && *(v284 + 7) == 0x2E746F6466622E6ELL;
                v183 = 1;
                if (!v182)
                {
                  goto LABEL_693;
                }

                goto LABEL_692;
              }

              if (v285 < 0xC)
              {
                goto LABEL_707;
              }

              v183 = 1;
              goto LABEL_693;
            }

LABEL_597:
            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7364646171762ELL)
            {
              v190 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v26 = v190;
              v27 = 265;
              goto LABEL_457;
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7564646171762ELL)
            {
              v202 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v26 = v202;
              v27 = 303;
              goto LABEL_457;
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7362757371762ELL)
            {
              v203 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v26 = v203;
              v27 = 286;
              goto LABEL_457;
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x2E7562757371762ELL)
            {
              v204 = *(a1 + 5);
              if (*(a1 + 9))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
              v9 = 1;
              v26 = v204;
              v27 = 314;
              goto LABEL_457;
            }

            if (v285 < 0x11)
            {
              if (*v284 != 0x6E6F656E2E6D7261 || *(v284 + 7) != 0x2E746F6466622E6ELL)
              {
                if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 2) == 1835426350)
                {
                  goto LABEL_703;
                }

                goto LABEL_698;
              }

              goto LABEL_691;
            }

            if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6464612E6E6F656ELL && v284[16] == 112)
            {
              if (*(a1 + 12) != 2)
              {
                goto LABEL_822;
              }

              v230 = **(*(a1 + 3) + 16);
              if (v230)
              {
                if ((*(v230 + 8) & 0xFE) == 0x12)
                {
                  v231 = *(*(v230 + 24) + 8);
                  if (v231 < 4u || v231 == 5 || (v231 & 0xFD) == 4)
                  {
                    v26 = *(a1 + 5);
                    v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
                    v9 = 1;
                    v27 = 496;
                    goto LABEL_457;
                  }
                }
              }
            }

            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 7) == 0x2E746F6466622E6ELL)
            {
LABEL_691:
              v183 = 0;
LABEL_692:
              if (*&v284[v285 - 2] == 14441)
              {
                if (v285 > 28)
                {
                  if (v285 == 29)
                  {
                    v258 = *(v284 + 21);
                    v260 = *v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6466622E6E6F656ELL && *(v284 + 2) == 0x32336632762E746FLL;
                    v261 = 0x38762E323366;
                  }

                  else
                  {
                    if (v285 != 30)
                    {
                      goto LABEL_822;
                    }

                    v258 = *(v284 + 22);
                    v260 = *v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6466622E6E6F656ELL && *(v284 + 2) == 0x32336634762E746FLL;
                    v261 = 0x3631762E3233;
                  }

                  v274 = v261 & 0xFFFFFFFFFFFFLL | 0x3869000000000000;
                  if (!v260 || v258 != v274)
                  {
                    goto LABEL_822;
                  }

                  v272 = 488;
                }

                else
                {
                  if (v285 == 25)
                  {
                    v220 = v284[24];
                    v222 = *v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x762E746F6466622ELL && *(v284 + 2) == 0x6938762E32336632;
                    v223 = 56;
                  }

                  else
                  {
                    if (v285 != 26)
                    {
                      goto LABEL_822;
                    }

                    v220 = *(v284 + 12);
                    v222 = *v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x762E746F6466622ELL && *(v284 + 2) == 0x3631762E32336634;
                    v223 = 14441;
                  }

                  if (!v222 || v220 != v223)
                  {
                    goto LABEL_822;
                  }

                  v272 = 2812;
                }

                v276 = **(*(a1 + 3) + 16);
                PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v276);
                if (v277)
                {
                  v276 = **(*(a1 + 3) + 16);
                }

                v279 = **(a1 + 5);
                v286.__r_.__value_.__r.__words[0] = v276;
                llvm::FixedVectorType::get((*v279 + 1680), (PrimitiveSizeInBits >> 4));
                v286.__r_.__value_.__l.__size_ = v280;
                v15 = *(a1 + 5);
                v86 = &v286;
                v16 = v272;
                goto LABEL_661;
              }

              goto LABEL_693;
            }

            if (v285 < 0x13)
            {
              v183 = 0;
              goto LABEL_693;
            }

            v183 = 0;
            if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6466622E6E6F656ELL && *(v284 + 11) == 0x2E746F6466622E6ELL)
            {
              goto LABEL_692;
            }

LABEL_693:
            if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 2) == 1835426350)
            {
              goto LABEL_703;
            }

            if ((v183 & 1) == 0)
            {
LABEL_698:
              if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x6D66622E6E6F656ELL)
              {
                goto LABEL_707;
              }

LABEL_703:
              if (*&v284[v285 - 12] == 0x762E32336634762ELL && *&v284[v285 - 4] == 946419249)
              {
                if (v285 > 30)
                {
                  if (v285 == 31)
                  {
                    if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x6D66622E6E6F656ELL || *(v284 + 2) != 0x336634762E616C6DLL || *(v284 + 23) != 0x38693631762E3233)
                    {
                      goto LABEL_822;
                    }

                    v16 = 491;
                  }

                  else
                  {
                    if (v285 != 32)
                    {
                      goto LABEL_822;
                    }

                    if (*v284 == 0x2E34366863726161 && *(v284 + 1) == 0x6D66622E6E6F656ELL && *(v284 + 2) == 0x6634762E626C616CLL && *(v284 + 3) == 0x38693631762E3233)
                    {
                      v16 = 489;
                    }

                    else
                    {
                      if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x6D66622E6E6F656ELL || *(v284 + 2) != 0x6634762E746C616CLL || *(v284 + 3) != 0x38693631762E3233)
                      {
                        goto LABEL_822;
                      }

                      v16 = 490;
                    }
                  }
                }

                else if (v285 == 27)
                {
                  if (*v284 != 0x6E6F656E2E6D7261 || *(v284 + 1) != 0x2E616C6D6D66622ELL || *(v284 + 2) != 0x31762E3233663476 || *(v284 + 19) != 0x38693631762E3233)
                  {
                    goto LABEL_822;
                  }

                  v16 = 2815;
                }

                else
                {
                  if (v285 != 28)
                  {
                    goto LABEL_822;
                  }

                  if (*v284 == 0x6E6F656E2E6D7261 && *(v284 + 1) == 0x626C616C6D66622ELL && *(v284 + 2) == 0x762E32336634762ELL && *(v284 + 6) == 946419249)
                  {
                    v16 = 2813;
                  }

                  else
                  {
                    if (*v284 != 0x6E6F656E2E6D7261 || *(v284 + 1) != 0x746C616C6D66622ELL || *(v284 + 2) != 0x762E32336634762ELL || *(v284 + 6) != 946419249)
                    {
                      goto LABEL_822;
                    }

                    v16 = 2814;
                  }
                }

                v15 = *(a1 + 5);
LABEL_525:
                v86 = 0;
                v87 = 0;
                goto LABEL_662;
              }
            }

LABEL_707:
            if (v285 > 52)
            {
              if (v285 <= 56)
              {
                switch(v285)
                {
                  case '5':
                    v211 = "arm.mve.vstr.scatter.base.predicated.v2i64.v2i64.v4i1";
                    v212 = v284;
                    v213 = 53;
                    break;
                  case '7':
                    v211 = "arm.mve.vldr.gather.base.wb.predicated.v2i64.v2i64.v4i1";
                    v212 = v284;
                    v213 = 55;
                    break;
                  case '8':
                    v211 = "arm.mve.vstr.scatter.base.wb.predicated.v2i64.v2i64.v4i1";
                    v212 = v284;
                    v213 = 56;
                    break;
                  default:
                    goto LABEL_822;
                }
              }

              else if (v285 > 59)
              {
                if (v285 == 60)
                {
                  v211 = "arm.mve.vldr.gather.offset.predicated.v2i64.p0i64.v2i64.v4i1";
                  v212 = v284;
                  v213 = 60;
                }

                else
                {
                  if (v285 != 61)
                  {
                    goto LABEL_822;
                  }

                  v211 = "arm.mve.vstr.scatter.offset.predicated.p0i64.v2i64.v2i64.v4i1";
                  v212 = v284;
                  v213 = 61;
                }
              }

              else if (v285 == 57)
              {
                v211 = "arm.mve.vldr.gather.offset.predicated.v2i64.p0.v2i64.v4i1";
                v212 = v284;
                v213 = 57;
              }

              else
              {
                if (v285 != 58)
                {
                  goto LABEL_822;
                }

                v211 = "arm.mve.vstr.scatter.offset.predicated.p0.v2i64.v2i64.v4i1";
                v212 = v284;
                v213 = 58;
              }

              goto LABEL_821;
            }

            if (v285 > 35)
            {
              if (v285 > 43)
              {
                if (v285 == 44)
                {
                  v211 = "arm.mve.mull.int.predicated.v2i64.v4i32.v4i1";
                  v212 = v284;
                  v213 = 44;
                }

                else
                {
                  if (v285 != 52)
                  {
                    goto LABEL_822;
                  }

                  v211 = "arm.mve.vldr.gather.base.predicated.v2i64.v2i64.v4i1";
                  v212 = v284;
                  v213 = 52;
                }
              }

              else
              {
                if (v285 != 36)
                {
                  if (v285 == 43)
                  {
                    v211 = "arm.mve.vqdmull.predicated.v2i64.v4i32.v4i1";
                    v212 = v284;
                    v213 = 43;
                    goto LABEL_821;
                  }

LABEL_822:
                  v234 = **(*(a1 + 3) + 16);
                  if ((*(v234 + 8) & 0x600) != 0x400 && v234 != 0 && *(v234 + 8) == 16)
                  {
                    v286.__r_.__value_.__r.__words[0] = &v286.__r_.__value_.__r.__words[2];
                    v286.__r_.__value_.__l.__size_ = 0x400000000;
                    llvm::Intrinsic::getIntrinsicInfoTableEntries(*(a1 + 9), &v286);
                    if (*v286.__r_.__value_.__l.__data_ == 13)
                    {
                      v237 = *(a1 + 3);
                      v238 = llvm::StructType::get(*v234, *(v234 + 16), *(v234 + 12), 0);
                      v239 = llvm::FunctionType::get(v238, (*(v237 + 16) + 8), (8 * *(v237 + 12) - 8) >> 3, (*(v237 + 8) > 0xFFu));
                      if ((*(a1 + 23) & 0x10) != 0)
                      {
                        v243 = llvm::Value::getValueName(a1);
                        v244 = *v243;
                        v241 = v243 + 2;
                        v240 = v244;
                      }

                      else
                      {
                        v240 = 0;
                        v241 = &str_3_24;
                      }

                      *&v289 = v241;
                      *(&v289 + 1) = v240;
                      llvm::StringRef::str(&v289, __p);
                      if ((*(a1 + 23) & 0x10) != 0)
                      {
                        v247 = llvm::Value::getValueName(a1);
                        v248 = *v247;
                        v246 = v247 + 2;
                        v245 = v248;
                      }

                      else
                      {
                        v245 = 0;
                        v246 = &str_3_24;
                      }

                      v291 = 773;
                      *&v289 = v246;
                      *(&v289 + 1) = v245;
                      v290 = ".old";
                      llvm::Value::setName(a1, &v289);
                      v249 = *(a1 + 8);
                      v250 = (*(*a1 + 8) >> 8);
                      v291 = 260;
                      *&v289 = __p;
                      v251 = *(a1 + 5);
                      v252 = operator new(0x80uLL);
                      v253 = (v252 + 2);
                      v252[7] = v252[7] & 0x38000000 | 0x40000000;
                      *v252 = 0;
                      v254 = llvm::Function::Function((v252 + 2), v239, v249 & 0xF, v250, &v289, v251);
                      *a2 = v253;
                      v256 = llvm::Intrinsic::remangleIntrinsicFunction(v254, v255);
                      if (v257)
                      {
                        *a2 = v256;
                      }

                      if (v283 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v201 = v286.__r_.__value_.__r.__words[0];
                      if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
                      {
LABEL_846:
                        free(v201);
                      }

                      goto LABEL_847;
                    }

                    if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
                    {
                      free(v286.__r_.__value_.__l.__data_);
                    }
                  }

                  Declaration = llvm::Intrinsic::remangleIntrinsicFunction(a1, v5);
                  if ((v242 & 1) == 0)
                  {
LABEL_7:
                    v9 = 0;
                    goto LABEL_8;
                  }

                  goto LABEL_836;
                }

                if (!memcmp(v284, "arm.cde.vcx1qa.predicated.v2i64.v4i1", 0x24uLL) || !memcmp(v284, "arm.cde.vcx2qa.predicated.v2i64.v4i1", 0x24uLL))
                {
                  goto LABEL_847;
                }

                v211 = "arm.cde.vcx3qa.predicated.v2i64.v4i1";
                v212 = v284;
                v213 = 36;
              }

LABEL_821:
              if (memcmp(v212, v211, v213))
              {
                goto LABEL_822;
              }

LABEL_847:
              v9 = 1;
              goto LABEL_8;
            }

            if (v285 == 14)
            {
              v232 = *v284 == 0x2E65766D2E6D7261 && *(v284 + 6) == 0x3436707463762E65;
              if (!v232 || *(**(*(a1 + 3) + 16) + 32) != 4)
              {
                goto LABEL_822;
              }

              rename(a1);
              goto LABEL_847;
            }

            if (v285 != 15)
            {
              if (v285 != 35)
              {
                goto LABEL_822;
              }

              if (!memcmp(v284, "arm.cde.vcx1q.predicated.v2i64.v4i1", 0x23uLL) || !memcmp(v284, "arm.cde.vcx2q.predicated.v2i64.v4i1", 0x23uLL))
              {
                goto LABEL_847;
              }

              v211 = "arm.cde.vcx3q.predicated.v2i64.v4i1";
              v212 = v284;
              v213 = 35;
              goto LABEL_821;
            }

            if (*v284 != 0x612E6E6367646D61 || *(v284 + 7) != 0x7469626E67696C61)
            {
              goto LABEL_822;
            }

            v26 = *(a1 + 5);
            v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
            v9 = 1;
            v27 = 149;
LABEL_457:
            *a2 = llvm::Intrinsic::getDeclaration(v26, v27, &v286, 1);
            goto LABEL_8;
          }

          if (*v284 != 0x2E34366863726161 || *(v284 + 1) != 0x702E646165726874 || *(v284 + 14) != 0x7265746E696F702ELL)
          {
            goto LABEL_597;
          }
        }

        v15 = *(a1 + 5);
        v16 = 297;
        goto LABEL_525;
      }

      v90 = **(*(a1 + 3) + 16);
      if ((*(v90 + 8) & 0xFE) != 0x12)
      {
        v90 = 0;
      }

      v91 = *(v90 + 24);
      if (*(a1 + 9))
      {
        llvm::Function::BuildLazyArguments(a1);
      }

      v92 = **(a1 + 11);
      if ((*(v92 + 8) & 0xFE) != 0x12)
      {
        v92 = 0;
      }

      llvm::VectorType::get(v91, (*(v92 + 32) | ((*(v92 + 8) == 19) << 32)));
      v286.__r_.__value_.__r.__words[0] = v93;
      if (v285 >= 0xF)
      {
        if (*v284 == 0x2E34366863726161 && *(v284 + 7) == 0x32646C2E6576732ELL)
        {
          v94 = 1221;
        }

        else if (*v284 == 0x2E34366863726161 && *(v284 + 7) == 0x33646C2E6576732ELL)
        {
          v94 = 1222;
        }

        else if (*v284 ^ 0x2E34366863726161 | *(v284 + 7) ^ 0x34646C2E6576732ELL)
        {
          v94 = 0;
        }

        else
        {
          v94 = 1223;
        }
      }

      else
      {
        v94 = 0;
      }

      v160 = *(a1 + 5);
      v9 = 1;
      *a2 = llvm::Intrinsic::getDeclaration(v160, v94, &v286, 1);
LABEL_8:
      v10 = *MEMORY[0x277D85DE8];
      return v9;
    case 'c':
      if (v14 < 5)
      {
        goto LABEL_822;
      }

      v24 = *v13 == 2053928035 && *(ValueName + 25) == 46;
      if (v24 && *(a1 + 12) == 1)
      {
        rename(a1);
        v25 = *(a1 + 5);
        if (*(a1 + 9))
        {
          llvm::Function::BuildLazyArguments(a1);
        }

        v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
        v9 = 1;
        v26 = v25;
        v27 = 53;
      }

      else
      {
        v59 = *v13 == 2054452323 && *(ValueName + 25) == 46;
        if (!v59 || *(a1 + 12) != 1)
        {
          goto LABEL_822;
        }

        rename(a1);
        v60 = *(a1 + 5);
        if (*(a1 + 9))
        {
          llvm::Function::BuildLazyArguments(a1);
        }

        v286.__r_.__value_.__r.__words[0] = **(a1 + 11);
        v9 = 1;
        v26 = v60;
        v27 = 55;
      }

      goto LABEL_457;
    case 'd':
      if (v6 == 14)
      {
        if (memcmp((ValueName + 21), "dbg.value", v14) || *(a1 + 12) != 4)
        {
          goto LABEL_822;
        }
      }

      else if (v6 != 13 || memcmp((ValueName + 21), "dbg.addr", v14))
      {
        goto LABEL_822;
      }

      rename(a1);
      v15 = *(a1 + 5);
      v16 = 59;
      goto LABEL_525;
    case 'e':
      if (v14 >= 0x1C)
      {
        if (*v13 == 0x656D697265707865 && *(ValueName + 29) == 0x6365762E6C61746ELL && *(ValueName + 37) == 0x727478652E726F74 && *(ValueName + 45) == 779379553)
        {
          rename(a1);
          goto LABEL_312;
        }
      }

      else if (v6 != 32)
      {
        goto LABEL_167;
      }

      if (*v13 == 0x656D697265707865 && *(ValueName + 29) == 0x6365762E6C61746ELL && *(ValueName + 37) == 0x65736E692E726F74 && *(ValueName + 40) == 0x2E747265736E692ELL)
      {
        rename(a1);
        *&v286.__r_.__value_.__l.__data_ = *(*(*(a1 + 3) + 16) + 8);
LABEL_309:
        v15 = *(a1 + 5);
        v86 = &v286;
        v16 = 321;
        goto LABEL_661;
      }

LABEL_167:
      v286.__r_.__value_.__r.__words[0] = &v286.__r_.__value_.__r.__words[2];
      v286.__r_.__value_.__l.__size_ = 0x200000000;
      if ((atomic_load_explicit(&qword_2815AA868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA868))
      {
        llvm::Regex::Regex();
      }

      if (!llvm::Regex::match(&unk_2815AA8A8, v284, v285, &v286, 0))
      {
        goto LABEL_415;
      }

      v50 = *(v286.__r_.__value_.__r.__words[0] + 16);
      v51 = *(v286.__r_.__value_.__r.__words[0] + 24);
      switch(v51)
      {
        case 2:
          if (*v50 != 29295)
          {
            goto LABEL_415;
          }

          v58 = 329;
          break;
        case 4:
          switch(*v50)
          {
            case 0x78616D73:
              v58 = 330;
              break;
            case 0x6E696D73:
              v58 = 331;
              break;
            case 0x78616D75:
              v58 = 332;
              break;
            case 0x6E696D75:
              v58 = 333;
              break;
            case 0x78616D66:
              v58 = 325;
              break;
            case 0x6E696D66:
              v58 = 326;
              break;
            default:
              goto LABEL_415;
          }

          break;
        case 3:
          if (*v50 == 25697 && *(v50 + 2) == 100)
          {
            v58 = 322;
          }

          else if (*v50 == 30061 && *(v50 + 2) == 108)
          {
            v58 = 328;
          }

          else if (*v50 == 28257 && *(v50 + 2) == 100)
          {
            v58 = 323;
          }

          else
          {
            v55 = *v50;
            v56 = *(v50 + 2);
            if (v55 != 28536 || v56 != 114)
            {
LABEL_415:
              if ((atomic_load_explicit(&qword_2815AA870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2815AA870))
              {
                llvm::Regex::Regex();
              }

              LODWORD(v286.__r_.__value_.__r.__words[1]) = 0;
              if (!llvm::Regex::match(&unk_2815AA8B8, v284, v285, &v286, 0) || *(v286.__r_.__value_.__r.__words[0] + 24) != 4)
              {
                goto LABEL_423;
              }

              v130 = bswap32(**(v286.__r_.__value_.__r.__words[0] + 16));
              v131 = v130 > 0x66616464;
              v132 = v130 < 0x66616464;
              v133 = v130 >= 0x666D756C;
              v134 = v130 > 0x666D756C;
              v135 = !v133;
              v136 = v134 - v135;
              v137 = v131 - v132;
              if (v137)
              {
                if (v136)
                {
LABEL_423:
                  if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
                  {
                    free(v286.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_822;
                }
              }

              if (v137)
              {
                v138 = 0;
              }

              else
              {
                v138 = 324;
              }

              if (v136)
              {
                v58 = v138;
              }

              else
              {
                v58 = 327;
              }

              rename(a1);
              *&v289 = *(*(*(a1 + 3) + 16) + 16);
              v139 = *(a1 + 5);
LABEL_665:
              *a2 = llvm::Intrinsic::getDeclaration(v139, v58, &v289, 1);
              v201 = v286.__r_.__value_.__r.__words[0];
              if (v286.__r_.__value_.__l.__data_ != &v286.__r_.__value_.__r.__words[2])
              {
                goto LABEL_846;
              }

              goto LABEL_847;
            }

            v58 = 334;
          }

          break;
        default:
          goto LABEL_415;
      }

      rename(a1);
      v139 = *(a1 + 5);
      *&v289 = *(*(*(a1 + 3) + 16) + 8);
      goto LABEL_665;
    case 'f':
      if (v14 < 0xA)
      {
        goto LABEL_822;
      }

      if (*v13 != 0x6E756F722E746C66 || *(ValueName + 29) != 29540)
      {
        goto LABEL_822;
      }

      rename(a1);
      v15 = *(a1 + 5);
      v16 = 155;
      goto LABEL_525;
    case 'i':
    case 'l':
      if (v14 < 0xE)
      {
        if (v14 < 0xC)
        {
          goto LABEL_822;
        }

        goto LABEL_232;
      }

      if (*v13 == 0x656D69746566696CLL && *(ValueName + 27) == 0x74726174732E656DLL)
      {
        v61 = 171;
      }

      else
      {
        if (v6 == 19)
        {
          if (*v13 != 0x656D69746566696CLL || *(ValueName + 29) != 1684956462)
          {
LABEL_237:
            if (*v13 != 0x6E61697261766E69 || *(v13 + 5) != 0x646E652E746E6169)
            {
LABEL_256:
              if (v14 >= 0x17)
              {
                v84 = *v13 == 0x6E61697261766E69 && *(v13 + 8) == 0x2E70756F72672E74;
                if (v84 && *(v13 + 15) == 0x726569727261622ELL)
                {
                  v286.__r_.__value_.__r.__words[0] = *(*(*(a1 + 3) + 16) + 8);
                  rename(a1);
                  v26 = *(a1 + 5);
                  v9 = 1;
                  v27 = 169;
                  goto LABEL_457;
                }
              }

              goto LABEL_822;
            }

            v75 = 165;
            v76 = 2;
LABEL_244:
            *&v289 = *(*(*(a1 + 3) + 16) + 8 * v76 + 8);
            if ((*(a1 + 23) & 0x10) != 0)
            {
              v79 = llvm::Value::getValueName(a1);
              v78 = v79 + 2;
              v77 = *v79;
            }

            else
            {
              v77 = 0;
              v78 = &str_3_24;
            }

            v80 = 1;
            v281 = v75;
            getIntrinsicNameImpl(v75, &v289, 1, *(a1 + 5), 0, &v286);
            v81 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            size = v286.__r_.__value_.__l.__size_;
            v83 = v286.__r_.__value_.__r.__words[0];
            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v286;
            }

            else
            {
              v5 = v286.__r_.__value_.__r.__words[0];
            }

            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            }

            if (v77 == size)
            {
              if (v77)
              {
                v80 = memcmp(v78, v5, v77) != 0;
                if (v81 < 0)
                {
                  goto LABEL_255;
                }

LABEL_267:
                if (!v80)
                {
                  goto LABEL_256;
                }

                goto LABEL_268;
              }

              v80 = 0;
              if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_267;
              }
            }

            else if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_267;
            }

LABEL_255:
            operator delete(v83);
            if (!v80)
            {
              goto LABEL_256;
            }

LABEL_268:
            rename(a1);
            v15 = *(a1 + 5);
            v86 = &v289;
            v16 = v281;
            goto LABEL_269;
          }

LABEL_243:
          v75 = 170;
          v76 = 1;
          goto LABEL_244;
        }

        if (*v13 != 0x6E61697261766E69 || *(ValueName + 28) != 0x74726174732E746ELL)
        {
LABEL_232:
          if (*v13 != 0x656D69746566696CLL || *(v13 + 8) != 1684956462)
          {
            if (v14 < 0xD)
            {
              goto LABEL_822;
            }

            goto LABEL_237;
          }

          goto LABEL_243;
        }

        v61 = 166;
      }

      *&v289 = *(*(*(a1 + 3) + 16) + 16);
      if ((*(a1 + 23) & 0x10) != 0)
      {
        v68 = llvm::Value::getValueName(a1);
        v64 = v68 + 2;
        v63 = *v68;
      }

      else
      {
        v63 = 0;
        v64 = &str_3_24;
      }

      v69 = 1;
      v281 = v61;
      getIntrinsicNameImpl(v61, &v289, 1, *(a1 + 5), 0, &v286);
      v70 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      v71 = v286.__r_.__value_.__l.__size_;
      v72 = v286.__r_.__value_.__r.__words[0];
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v286;
      }

      else
      {
        v5 = v286.__r_.__value_.__r.__words[0];
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      if (v63 == v71)
      {
        if (v63)
        {
          v69 = memcmp(v64, v5, v63) != 0;
          if (v70 < 0)
          {
            goto LABEL_228;
          }

LABEL_231:
          if (v69)
          {
            goto LABEL_268;
          }

          goto LABEL_232;
        }

        v69 = 0;
        if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_231;
        }
      }

      else if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_231;
      }

LABEL_228:
      operator delete(v72);
      if (v69)
      {
        goto LABEL_268;
      }

      goto LABEL_232;
    case 'm':
      if (v14 >= 0xC)
      {
        if (*v13 == 0x6C2E64656B73616DLL && *(ValueName + 29) == 778330479)
        {
          v289 = 0uLL;
          *&v289 = **(*(a1 + 3) + 16);
          if (*(a1 + 18))
          {
            llvm::Function::BuildLazyArguments(a1);
          }

          *(&v289 + 1) = **(a1 + 11);
          if ((*(a1 + 23) & 0x10) != 0)
          {
            v112 = llvm::Value::getValueName(a1);
            v43 = v112 + 2;
            v42 = *v112;
          }

          else
          {
            v42 = 0;
            v43 = &str_3_24;
          }

          getIntrinsicNameImpl(188, &v289, 2, *(a1 + 5), 0, &v286);
          v113 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
          v114 = v286.__r_.__value_.__l.__size_;
          v115 = v286.__r_.__value_.__r.__words[0];
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v5 = &v286;
          }

          else
          {
            v5 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v114 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
          }

          if (v42 == v114)
          {
            if (v42)
            {
              LODWORD(v42) = memcmp(v43, v5, v42) != 0;
            }
          }

          else
          {
            LODWORD(v42) = 1;
          }

          if (v113 < 0)
          {
            operator delete(v115);
          }

          if (v42)
          {
            rename(a1);
            v15 = *(a1 + 5);
            v86 = &v289;
            v16 = 188;
            goto LABEL_661;
          }
        }

        if (v14 != 12)
        {
          if (*v13 == 0x732E64656B73616DLL && *(v13 + 5) == 0x2E65726F74732E64)
          {
            v117 = *(*(a1 + 3) + 16);
            v289 = 0uLL;
            v289 = *(v117 + 8);
            if ((*(a1 + 23) & 0x10) != 0)
            {
              v150 = llvm::Value::getValueName(a1);
              v119 = v150 + 2;
              v118 = *v150;
            }

            else
            {
              v118 = 0;
              v119 = &str_3_24;
            }

            getIntrinsicNameImpl(190, &v289, 2, *(a1 + 5), 0, &v286);
            v151 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            v152 = v286.__r_.__value_.__l.__size_;
            v153 = v286.__r_.__value_.__r.__words[0];
            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v286;
            }

            else
            {
              v5 = v286.__r_.__value_.__r.__words[0];
            }

            if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v152 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
            }

            if (v118 == v152)
            {
              if (v118)
              {
                LODWORD(v118) = memcmp(v119, v5, v118) != 0;
              }
            }

            else
            {
              LODWORD(v118) = 1;
            }

            if (v151 < 0)
            {
              operator delete(v153);
            }

            if (v118)
            {
              rename(a1);
              v15 = *(a1 + 5);
              v86 = &v289;
              v16 = 190;
              goto LABEL_661;
            }
          }

          if (v14 >= 0xE)
          {
            if (*v13 == 0x672E64656B73616DLL && *(v13 + 6) == 0x2E7265687461672ELL)
            {
              v289 = 0uLL;
              *&v289 = **(*(a1 + 3) + 16);
              if (*(a1 + 18))
              {
                llvm::Function::BuildLazyArguments(a1);
              }

              *(&v289 + 1) = **(a1 + 11);
              if ((*(a1 + 23) & 0x10) != 0)
              {
                v170 = llvm::Value::getValueName(a1);
                v156 = v170 + 2;
                v155 = *v170;
              }

              else
              {
                v155 = 0;
                v156 = &str_3_24;
              }

              getIntrinsicNameImpl(187, &v289, 2, *(a1 + 5), 0, &v286);
              v171 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              v172 = v286.__r_.__value_.__l.__size_;
              v173 = v286.__r_.__value_.__r.__words[0];
              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v5 = &v286;
              }

              else
              {
                v5 = v286.__r_.__value_.__r.__words[0];
              }

              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v172 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              }

              if (v155 == v172)
              {
                if (v155)
                {
                  LODWORD(v155) = memcmp(v156, v5, v155) != 0;
                }
              }

              else
              {
                LODWORD(v155) = 1;
              }

              if (v171 < 0)
              {
                operator delete(v173);
              }

              if (v155)
              {
                rename(a1);
                v15 = *(a1 + 5);
                v86 = &v289;
                v16 = 187;
                goto LABEL_661;
              }
            }

            if (v14 != 14 && *v13 == 0x732E64656B73616DLL && *(v13 + 7) == 0x2E72657474616373)
            {
              v175 = *(*(a1 + 3) + 16);
              v289 = 0uLL;
              v289 = *(v175 + 8);
              if ((*(a1 + 23) & 0x10) != 0)
              {
                v191 = llvm::Value::getValueName(a1);
                v177 = v191 + 2;
                v176 = *v191;
              }

              else
              {
                v176 = 0;
                v177 = &str_3_24;
              }

              getIntrinsicNameImpl(189, &v289, 2, *(a1 + 5), 0, &v286);
              v192 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              v193 = v286.__r_.__value_.__l.__size_;
              v194 = v286.__r_.__value_.__r.__words[0];
              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v5 = &v286;
              }

              else
              {
                v5 = v286.__r_.__value_.__r.__words[0];
              }

              if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v193 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
              }

              if (v176 == v193)
              {
                if (v176)
                {
                  LODWORD(v176) = memcmp(v177, v5, v176) != 0;
                }
              }

              else
              {
                LODWORD(v176) = 1;
              }

              if (v192 < 0)
              {
                operator delete(v194);
              }

              if (v176)
              {
                rename(a1);
                v15 = *(a1 + 5);
                v86 = &v289;
                v16 = 189;
                goto LABEL_661;
              }
            }
          }
        }
      }

      else if (v14 < 7)
      {
        goto LABEL_822;
      }

      v195 = *v13 == 1668113773 && *(v13 + 3) == 779710563;
      if (v195 && *(a1 + 12) == 5)
      {
        rename(a1);
        v15 = *(a1 + 5);
        v86 = (*(*(a1 + 3) + 16) + 8);
        v16 = 197;
      }

      else
      {
        if (v14 < 8 || *v13 != 0x2E65766F6D6D656DLL || *(a1 + 12) != 5)
        {
          v196 = *v13 == 1936549229 && *(v13 + 3) == 779380083;
          if (v196 && *(a1 + 12) == 5)
          {
            rename(a1);
            v197 = *(*(a1 + 3) + 16);
            v198 = *(v197 + 8);
            v199 = *(v197 + 24);
            v286.__r_.__value_.__r.__words[0] = v198;
            v286.__r_.__value_.__l.__size_ = v199;
            v15 = *(a1 + 5);
            v86 = &v286;
            v16 = 202;
LABEL_661:
            v87 = 2;
LABEL_662:
            Declaration = llvm::Intrinsic::getDeclaration(v15, v16, v86, v87);
LABEL_836:
            *a2 = Declaration;
            goto LABEL_847;
          }

          goto LABEL_822;
        }

        rename(a1);
        v15 = *(a1 + 5);
        v86 = (*(*(a1 + 3) + 16) + 8);
        v16 = 200;
      }

LABEL_653:
      v87 = 3;
      goto LABEL_662;
    case 'n':
      if (v14 < 5)
      {
        goto LABEL_822;
      }

      if (*v13 != 1836480110 || *(ValueName + 25) != 46)
      {
        goto LABEL_822;
      }

      v34 = (ValueName + 26);
      if (v6 == 16)
      {
        v35 = *v34 == 1986359906 && *(v7 + 30) == 12851;
        if (v35 || (*v34 == 1986359906 ? (v36 = *(v7 + 30) == 13366) : (v36 = 0), v36))
        {
          v27 = 8;
        }

        else
        {
          if (*v34 != 1668312944 || *(v7 + 30) != 26926)
          {
            v286.__r_.__value_.__r.__words[0] = v7 + 26;
            v286.__r_.__value_.__l.__size_ = 6;
            LOWORD(v286.__r_.__value_.__r.__words[2]) = 0;
            goto LABEL_570;
          }

          v27 = 54;
        }
      }

      else
      {
        if (v6 != 15)
        {
          goto LABEL_562;
        }

        if (*v34 != 779775075 || *(v7 + 30) != 105)
        {
          v286.__r_.__value_.__r.__words[0] = v7 + 26;
          v286.__r_.__value_.__l.__size_ = 5;
          LOWORD(v286.__r_.__value_.__r.__words[2]) = 0;
          goto LABEL_563;
        }

        v27 = 53;
      }

      if (*(a1 + 12) == 1)
      {
        v26 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        goto LABEL_457;
      }

LABEL_562:
      v286.__r_.__value_.__r.__words[0] = v7 + 26;
      v286.__r_.__value_.__l.__size_ = v6 - 10;
      LOWORD(v286.__r_.__value_.__r.__words[2]) = 0;
      if (v6 != 15)
      {
        if (v6 != 16)
        {
          goto LABEL_572;
        }

LABEL_570:
        if (memcmp(v34, "abs.ll", v6 - 10))
        {
          goto LABEL_572;
        }

        goto LABEL_571;
      }

LABEL_563:
      if (*v34 != 779313761 || *(v7 + 30) != 105)
      {
LABEL_572:
        llvm::StringSwitch<BOOL,BOOL>::Cases(&v286, "clz.ll", 6, "popc.ll", 7, "h2f", 3);
        llvm::StringSwitch<BOOL,BOOL>::Case(&v286, "max.i", 5);
        llvm::StringSwitch<BOOL,BOOL>::Cases(&v286, "max.ll", 6, "max.ui", 6, "max.ull", 7);
        llvm::StringSwitch<BOOL,BOOL>::Case(&v286, "min.i", 5);
        llvm::StringSwitch<BOOL,BOOL>::Cases(&v286, "min.ll", 6, "min.ui", 6, "min.ull", 7);
        llvm::StringSwitch<BOOL,BOOL>::StartsWith(&v286, "atomic.load.add.f32.p", 0x15uLL);
        llvm::StringSwitch<BOOL,BOOL>::StartsWith(&v286, "atomic.load.add.f64.p", 0x15uLL);
        if ((v286.__r_.__value_.__s.__data_[17] & 1) != 0 && v286.__r_.__value_.__s.__data_[16] == 1)
        {
LABEL_46:
          *a2 = 0;
          goto LABEL_847;
        }

        goto LABEL_822;
      }

LABEL_571:
      LOWORD(v286.__r_.__value_.__r.__words[2]) = 257;
      goto LABEL_572;
    case 'o':
      if (v14 < 0xB)
      {
        goto LABEL_822;
      }

      if (*v13 != 0x69737463656A626FLL || *(ValueName + 24) != 0x2E657A6973746365)
      {
        goto LABEL_822;
      }

      *&v289 = **(*(a1 + 3) + 16);
      if (*(a1 + 18))
      {
        llvm::Function::BuildLazyArguments(a1);
      }

      v32 = *(a1 + 12);
      *(&v289 + 1) = **(a1 + 11);
      if ((v32 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        if ((*(a1 + 23) & 0x10) != 0)
        {
          v146 = llvm::Value::getValueName(a1);
          v121 = v146 + 2;
          v120 = *v146;
        }

        else
        {
          v120 = 0;
          v121 = &str_3_24;
        }

        getIntrinsicNameImpl(240, &v289, 2, *(a1 + 5), 0, &v286);
        v147 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
        v148 = v286.__r_.__value_.__l.__size_;
        v149 = v286.__r_.__value_.__r.__words[0];
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v5 = &v286;
        }

        else
        {
          v5 = v286.__r_.__value_.__r.__words[0];
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v148 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        if (v120 == v148)
        {
          if (v120)
          {
            LODWORD(v120) = memcmp(v121, v5, v120) != 0;
          }
        }

        else
        {
          LODWORD(v120) = 1;
        }

        if (v147 < 0)
        {
          operator delete(v149);
        }

        if (!v120)
        {
          goto LABEL_822;
        }
      }

      rename(a1);
      v15 = *(a1 + 5);
      v16 = 240;
      v86 = &v289;
      v87 = 2;
      goto LABEL_662;
    case 'p':
      if (v6 != 13)
      {
        if (v14 >= 0xF)
        {
          v65 = *v13 == 0x6F6E6E612E727470 && *(ValueName + 28) == 0x2E6E6F697461746FLL;
          if (v65 && *(a1 + 12) == 4)
          {
            rename(a1);
            v66 = *(a1 + 5);
            if (*(a1 + 9))
            {
              llvm::Function::BuildLazyArguments(a1);
              v161 = *(a1 + 9);
              v67 = *(a1 + 11);
              v286.__r_.__value_.__r.__words[0] = *v67;
              if (v161)
              {
                llvm::Function::BuildLazyArguments(a1);
                v67 = *(a1 + 11);
              }
            }

            else
            {
              v67 = *(a1 + 11);
              v286.__r_.__value_.__r.__words[0] = *v67;
            }

            v286.__r_.__value_.__l.__size_ = v67[5];
            v86 = &v286;
            v15 = v66;
            v16 = 249;
            goto LABEL_661;
          }
        }

        else if (v14 < 8)
        {
          goto LABEL_822;
        }

        goto LABEL_346;
      }

      if (*v13 != 0x6863746566657270)
      {
        goto LABEL_346;
      }

      *&v289 = 0;
      if (*(a1 + 9))
      {
        llvm::Function::BuildLazyArguments(a1);
      }

      *&v289 = **(a1 + 11);
      if ((*(a1 + 23) & 0x10) != 0)
      {
        v105 = llvm::Value::getValueName(a1);
        v18 = v105 + 2;
        v17 = *v105;
      }

      else
      {
        v17 = 0;
        v18 = &str_3_24;
      }

      v106 = 1;
      getIntrinsicNameImpl(244, &v289, 1, *(a1 + 5), 0, &v286);
      v107 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      v108 = v286.__r_.__value_.__l.__size_;
      v109 = v286.__r_.__value_.__r.__words[0];
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v286;
      }

      else
      {
        v5 = v286.__r_.__value_.__r.__words[0];
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = SHIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      if (v17 == v108)
      {
        if (v17)
        {
          v106 = memcmp(v18, v5, v17) != 0;
          if (v107 < 0)
          {
            goto LABEL_345;
          }

          goto LABEL_354;
        }

        v106 = 0;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_345:
          operator delete(v109);
          if (!v106)
          {
            goto LABEL_346;
          }

LABEL_355:
          rename(a1);
          v15 = *(a1 + 5);
          v86 = &v289;
          v16 = 244;
LABEL_269:
          v87 = 1;
          goto LABEL_662;
        }
      }

      else if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_345;
      }

LABEL_354:
      if (v106)
      {
        goto LABEL_355;
      }

LABEL_346:
      if (*v13 != 0x2E68747561727470)
      {
        goto LABEL_822;
      }

      v110 = v6 - 13;
      if (v6 > 22)
      {
        if (v6 == 23)
        {
          if (memcmp((v7 + 29), "resign.i64", v110))
          {
            goto LABEL_822;
          }

          v111 = 252;
        }

        else
        {
          if (v6 != 29 || memcmp((v7 + 29), "sign.generic.i64", v110))
          {
            goto LABEL_822;
          }

          v111 = 254;
        }
      }

      else if (v6 == 21)
      {
        if (!memcmp((v7 + 29), "auth.i64", v110))
        {
          v111 = 250;
        }

        else
        {
          if (memcmp((v7 + 29), "sign.i64", 8uLL))
          {
            goto LABEL_822;
          }

          v111 = 253;
        }
      }

      else
      {
        if (v6 != 22)
        {
          goto LABEL_822;
        }

        if (!memcmp((v7 + 29), "strip.i64", v110))
        {
          v111 = 255;
        }

        else
        {
          if (memcmp((v7 + 29), "blend.i64", 9uLL))
          {
            goto LABEL_822;
          }

          v111 = 251;
        }
      }

      rename(a1);
      v15 = *(a1 + 5);
      v16 = v111;
      goto LABEL_525;
    case 's':
      if (v6 != 24)
      {
        goto LABEL_822;
      }

      v22 = *v13 == 0x6F72706B63617473 && *(ValueName + 29) == 0x6863726F74636574;
      if (!v22 || *(ValueName + 32) != 0x6B63656863726F74)
      {
        goto LABEL_822;
      }

      goto LABEL_46;
    case 'v':
      if (v6 != 19)
      {
        goto LABEL_822;
      }

      v19 = *v13 == 0x6F6E6E612E726176 && *(ValueName + 27) == 0x6E6F697461746F6ELL;
      if (!v19 || *(a1 + 12) != 4)
      {
        goto LABEL_822;
      }

      rename(a1);
      v20 = *(a1 + 5);
      if (*(a1 + 9))
      {
        llvm::Function::BuildLazyArguments(a1);
        v145 = *(a1 + 9);
        v21 = *(a1 + 11);
        v286.__r_.__value_.__r.__words[0] = *v21;
        if (v145)
        {
          llvm::Function::BuildLazyArguments(a1);
          v21 = *(a1 + 11);
        }
      }

      else
      {
        v21 = *(a1 + 11);
        v286.__r_.__value_.__r.__words[0] = *v21;
      }

      v286.__r_.__value_.__l.__size_ = v21[5];
      v86 = &v286;
      v15 = v20;
      v16 = 319;
      goto LABEL_661;
    case 'w':
      if (v14 < 9)
      {
        goto LABEL_14;
      }

      if (*v13 == 0x616D662E6D736177 && *(ValueName + 29) == 46)
      {
        rename(a1);
        v26 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        v27 = 10138;
        goto LABEL_457;
      }

      if (*v13 == 0x736D662E6D736177 && *(ValueName + 29) == 46)
      {
        rename(a1);
        v26 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        v27 = 10141;
        goto LABEL_457;
      }

      if (v14 >= 0x10 && *v13 == 0x6E616C2E6D736177 && *(ValueName + 29) == 0x2E7463656C657365)
      {
        rename(a1);
        v26 = *(a1 + 5);
        v286.__r_.__value_.__r.__words[0] = **(*(a1 + 3) + 16);
        v9 = 1;
        v27 = 10137;
        goto LABEL_457;
      }

LABEL_14:
      if (v6 != 36)
      {
        if (v6 == 32 && !memcmp((ValueName + 21), "wasm.dot.i8x16.i7x16.signed", v14))
        {
          rename(a1);
          v15 = *(a1 + 5);
          v16 = 10136;
          goto LABEL_525;
        }

        goto LABEL_822;
      }

      if (memcmp((ValueName + 21), "wasm.dot.i8x16.i7x16.add.signed", v14))
      {
        goto LABEL_822;
      }

      rename(a1);
      v15 = *(a1 + 5);
      v16 = 10135;
      goto LABEL_525;
    case 'x':
      if (UpgradeX86IntrinsicFunction(a1, ValueName + 21, v6 - 5, a2))
      {
        goto LABEL_847;
      }

      goto LABEL_822;
    default:
      goto LABEL_822;
  }
}

uint64_t llvm::UpgradeGlobalVariable(uint64_t **this, llvm::GlobalVariable *a2)
{
  v49[1] = *MEMORY[0x277D85DE8];
  if ((this[4] & 0xF) == 6 && ((*(this + 23) & 0x10) != 0 && (v3 = llvm::Value::getValueName(this), *v3 == 12) && (*(v3 + 16) == 0x646D632E6D766C6CLL ? (v4 = *(v3 + 24) == 1701734764) : (v4 = 0), v4) || (*(this + 23) & 0x10) != 0 && (v5 = llvm::Value::getValueName(this), *v5 == 20) && (*(v5 + 16) == 0x626D652E6D766C6CLL ? (v6 = *(v5 + 24) == 0x6F6D2E6465646465) : (v6 = 0), v6 ? (v7 = *(v5 + 32) == 1701606756) : (v7 = 0), v7)))
  {
    v14 = 0;
    *(this + 8) = this[4] & 0xFFFFBCC0 | 0x4008;
  }

  else
  {
    if ((*(this + 23) & 0x10) == 0)
    {
      goto LABEL_52;
    }

    ValueName = llvm::Value::getValueName(this);
    if (*ValueName != 17 || (*(ValueName + 16) == 0x6F6C672E6D766C6CLL ? (v9 = *(ValueName + 24) == 0x726F74635F6C6162) : (v9 = 0), v9 ? (v10 = *(ValueName + 32) == 115) : (v10 = 0), !v10))
    {
      if ((*(this + 23) & 0x10) == 0)
      {
        goto LABEL_52;
      }

      v11 = llvm::Value::getValueName(this);
      if (*v11 != 17)
      {
        goto LABEL_52;
      }

      v12 = *(v11 + 16) == 0x6F6C672E6D766C6CLL && *(v11 + 24) == 0x726F74645F6C6162;
      if (!v12 || *(v11 + 32) != 115)
      {
        goto LABEL_52;
      }
    }

    if (*(this + 16))
    {
      if (*(this + 16) == 3 && (*(this + 5) & 0x7FFFFFF) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (this[9] == (this + 9) && (*(this + 35) & 1) == 0)
    {
      goto LABEL_52;
    }

    v14 = 0;
    v15 = this[3];
    if (v15)
    {
      if (*(v15 + 8) == 17)
      {
        v14 = 0;
        v16 = v15[3];
        if (v16)
        {
          if (*(v16 + 8) == 16)
          {
            if (*(v16 + 12) != 2)
            {
LABEL_52:
              v14 = 0;
              goto LABEL_53;
            }

            v17 = **this;
            v40 = v42;
            v41 = 0x200000000;
            v42[6] = v17;
            v42[7] = &v48;
            v42[8] = v49;
            v42[9] = 0;
            v43 = 0;
            v44 = 512;
            v45 = 7;
            v42[4] = 0;
            v42[5] = 0;
            v46 = 0;
            v47 = 0;
            v48 = &unk_2883F13A8;
            v49[0] = &unk_2883F1498;
            v33 = **(v16 + 16);
            v18 = llvm::PointerType::get((*v17 + 1944), 0);
            v19 = *v33;
            v37 = v33;
            v38 = v18;
            v20 = llvm::StructType::get(v19, &v37, 3, 0);
            v21 = *(*(this - 4) + 5);
            __p = 0;
            v35 = 0;
            v36 = 0;
            if ((v21 & 0x7FFFFFF) != 0)
            {
              std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](&__p, v21 & 0x7FFFFFF);
            }

            llvm::ArrayType::get(v20, (v21 & 0x7FFFFFF));
            v23 = llvm::ConstantArray::get(v22, __p, ((v35 - __p) >> 3));
            v24 = operator new(0x78uLL);
            v14 = (v24 + 8);
            v24[13] = v24[13] & 0x38000000 | 1;
            *v24 = 0;
            *(v24 + 1) = 0;
            *(v24 + 2) = 0;
            *(v24 + 3) = v24 + 8;
            v25 = *v23;
            v26 = *(this + 8);
            if ((*(this + 23) & 0x10) != 0)
            {
              v31 = llvm::Value::getValueName(this);
              v32 = *v31;
              v28 = v31 + 2;
              v27 = v32;
            }

            else
            {
              v27 = 0;
              v28 = &str_3_24;
            }

            v39 = 261;
            *&v37 = v28;
            *(&v37 + 1) = v27;
            llvm::GlobalVariable::GlobalVariable(v14, v25, 0, v26 & 0xF, v23, &v37, 0, 0, 0);
            if (__p)
            {
              v35 = __p;
              operator delete(__p);
            }

            if (v40 != v42)
            {
              free(v40);
            }
          }
        }
      }
    }
  }

LABEL_53:
  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

std::string *llvm::UpgradeInlineAsmString(std::string *__s)
{
  v1 = __s;
  v2 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    v3 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = __s;
    size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  }

  if (size >= 6)
  {
    v5 = v3 + size;
    __s = v3;
    do
    {
      __s = memchr(__s, 109, size - 5);
      if (!__s)
      {
        break;
      }

      if (LODWORD(__s->__r_.__value_.__l.__data_) == 158756717 && WORD2(__s->__r_.__value_.__r.__words[0]) == 28774)
      {
        if (__s == v3)
        {
          if ((v2 & 0x80000000) != 0)
          {
            v7 = v1->__r_.__value_.__r.__words[0];
            v8 = v1->__r_.__value_.__l.__size_;
          }

          else
          {
            v7 = v1;
            v8 = v2;
          }

          if (v8 >= 33)
          {
            v9 = (v7 + v8);
            __s = v7;
            while (1)
            {
              __s = memchr(__s, 111, v8 - 32);
              if (!__s)
              {
                break;
              }

              v10 = __s;
              __s = memcmp(__s, "objc_retainAutoreleaseReturnValue", 0x21uLL);
              if (!__s)
              {
                if (v10 != v9 && v10 - v7 != -1)
                {
                  if ((v2 & 0x80000000) != 0)
                  {
                    v11 = v1->__r_.__value_.__r.__words[0];
                    v2 = v1->__r_.__value_.__l.__size_;
                  }

                  else
                  {
                    v11 = v1;
                  }

                  if (v2 >= 8)
                  {
                    v12 = (v11 + v2);
                    __s = v11;
                    while (1)
                    {
                      __s = memchr(__s, 35, v2 - 7);
                      if (!__s)
                      {
                        break;
                      }

                      if (__s->__r_.__value_.__r.__words[0] == 0x72656B72616D2023)
                      {
                        if (__s != v12 && __s - v11 != -1)
                        {

                          return std::string::replace(v1, __s - v11, 1uLL, ";");
                        }

                        return __s;
                      }

                      __s = (__s + 1);
                      v2 = v12 - __s;
                      if (v12 - __s < 8)
                      {
                        return __s;
                      }
                    }
                  }
                }

                return __s;
              }

              __s = (&v10->__r_.__value_.__l.__data_ + 1);
              v8 = v9 - (&v10->__r_.__value_.__l.__data_ + 1);
              if (v8 < 33)
              {
                return __s;
              }
            }
          }
        }

        return __s;
      }

      __s = (__s + 1);
      size = v5 - __s;
    }

    while (v5 - __s >= 6);
  }

  return __s;
}

void llvm::UpgradeIntrinsicCall(llvm *this, llvm::CallBase *a2, llvm::Function *a3)
{
  v1748[1] = *MEMORY[0x277D85DE8];
  v1717 = a2;
  v1718 = this;
  v4 = *(this - 4);
  if (v4)
  {
    v5 = *(v4 + 16) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_918;
  }

  v6 = **this;
  v7 = v1733;
  v1732[0] = v1733;
  v1732[1] = 0x200000000;
  v1735 = 0;
  v1736 = v6;
  v1737 = &v1745;
  v1738 = &v1746;
  v1739 = 0;
  v1740 = 0;
  v1741 = 512;
  v1742 = 7;
  v1734 = 0;
  v1744 = 0;
  v1743 = 0;
  v1745 = &unk_2883F13A8;
  v1746 = &unk_2883F1498;
  llvm::IRBuilderBase::SetInsertPoint(v1732, *(this + 5), this + 24);
  v14 = v1717;
  if (!v1717)
  {
    if ((*(v4 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(v4);
      v31 = *ValueName;
      v27 = (ValueName + 2);
      v26 = v31;
    }

    else
    {
      v26 = 0;
      v27 = &str_3_24;
    }

    v32 = 5;
    if (v26 < 5)
    {
      v32 = v26;
    }

    v33 = v26 - v32;
    v34 = &v27[v32];
    v1713 = &v27[v32];
    v1714 = v33;
    v35 = *&v27[v32];
    v5 = v35 == 775305336;
    v36 = v35 != 775305336;
    if (v5)
    {
      v34 = (v34 + 4);
      v33 -= 4;
      v1713 = v34;
      v1714 = v33;
    }

    v37 = v33 > 4;
    if (v33 >= 5)
    {
      if (*v34 != 1836480110 || *(v34 + 4) != 46)
      {
        v37 = 0;
LABEL_56:
        if (*v34 == 778924641)
        {
          v34 = (v34 + 4);
          v33 -= 4;
          v1713 = v34;
          v1714 = v33;
        }

LABEL_58:
        if (v36)
        {
          ShuffleVector = 0;
          if (v33 == 19)
          {
            if (*v34 != 0x6F72706B63617473 || v34[1] != 0x6863726F74636574 || *(v34 + 11) != 0x6B63656863726F74)
            {
              goto LABEL_125;
            }

            goto LABEL_914;
          }

          if (v33 != 23)
          {
            goto LABEL_125;
          }

          v59 = 0;
LABEL_62:
          if (*v34 != 0x6D2E323135787661 || v34[1] != 0x766F6D702E6B7361 || *(v34 + 15) != 0x3635322E64712E76)
          {
            v62 = *v34 == 0x6D2E323135787661 && v34[1] == 0x766F6D702E6B7361;
            if (!v62 || *(v34 + 15) != 0x3231352E64712E76)
            {
              v64 = *v34 == 0x6D2E323135787661 && v34[1] == 0x766F6D702E6B7361;
              if (!v64 || *(v34 + 15) != 0x3635322E62772E76)
              {
                v66 = *v34 == 0x6D2E323135787661 && v34[1] == 0x766F6D702E6B7361;
                if (!v66 || *(v34 + 15) != 0x3231352E62772E76)
                {
                  if ((v59 & 1) == 0)
                  {
                    goto LABEL_125;
                  }

                  if (*v34 != 0x6F7262762E787661 || v34[1] != 0x3166747361636461 || *(v34 + 8) != 14386)
                  {
                    v70 = 23;
LABEL_99:
                    v72 = *v34 == 0x6D2E323135787661 && v34[1] == 0x667568732E6B7361 && *(v34 + 8) == 26926;
                    if (v72 || (*v34 == 0x6D2E323135787661 ? (v73 = v34[1] == 0x667568732E6B7361) : (v73 = 0), v73 ? (v74 = *(v34 + 8) == 26158) : (v74 = 0), v74))
                    {
                      v429 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                      v430 = (v429 + 24);
                      if (*(v429 + 32) >= 0x41u)
                      {
                        v430 = *v430;
                      }

                      v431 = *v430;
                      v432 = *v1718;
                      PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*v1718);
                      if (v433)
                      {
                      }

                      v435 = PrimitiveSizeInBits >> 7;
                      if ((*(v432 + 2) & 0xFE) == 0x12)
                      {
                        v432 = **(v432 + 2);
                      }

                      v436 = llvm::Type::getPrimitiveSizeInBits(v432);
                      __src = &v1726;
                      v1725 = 0x800000000;
                      llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, 0);
                      if (v435)
                      {
                        v437 = 0;
                        v438 = v435 >> 1;
                        do
                        {
                          if (v436 <= 0x80)
                          {
                            v439 = 0;
                            if (v437 >= v438)
                            {
                              v440 = PrimitiveSizeInBits >> 7;
                            }

                            else
                            {
                              v440 = 0;
                            }

                            v441 = (((v431 >> (v437 * v438)) & (v435 - 1)) + v440) * (0x80 / v436);
                            v442 = 0x80 / v436;
                            do
                            {
                              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__src, v439 + v441);
                              ++v439;
                              --v442;
                            }

                            while (v442);
                          }

                          ++v437;
                        }

                        while (v437 != v435);
                      }

                      v443 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                      v444 = *v443;
                      v445 = *(v443 + 4);
                      v1731 = 257;
                      ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v444, v445, __src, v1725, v1729);
                      v446 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                      ShuffleVector = EmitX86Select(v1732, *(v446 + 16), ShuffleVector, *(v446 + 12));
                      if (__src != &v1726)
                      {
                        free(__src);
                      }

                      v7 = v1733;
                      goto LABEL_1395;
                    }

                    if (v70 < 0x16)
                    {
                      i = 0;
                      v76 = 1;
                      goto LABEL_797;
                    }

                    if (*v34 != 0x6D2E323135787661 || v34[1] != 0x616F72622E6B7361 || *(v34 + 14) != 0x667473616364616FLL)
                    {
                      v509 = *v34 == 0x6D2E323135787661 && v34[1] == 0x616F72622E6B7361;
                      if (!v509 || *(v34 + 14) != 0x697473616364616FLL)
                      {
                        v76 = 0;
                        for (i = 0; ; i = 1)
                        {
LABEL_797:
                          v511 = *v34 == 0x7262702E32787661 && *(v34 + 7) == 0x7473616364616F72;
                          if (v511 || (*v34 == 0x7262762E32787661 ? (v512 = *(v34 + 7) == 0x7473616364616F72) : (v512 = 0), v512))
                          {
LABEL_1325:
                            v711 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                            llvm::VectorType::get((*v6 + 1992), (*(*v1718 + 32) | ((*(*v1718 + 8) == 19) << 32)));
                            __src = &v1726;
                            v1725 = 0x800000000;
                            NullValue = llvm::Constant::getNullValue(v712, v713);
                            llvm::ShuffleVectorInst::getShuffleMask(NullValue, &__src);
                            v1731 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v711, __src, v1725, v1729);
                            v715 = v1718;
                            if (((llvm::CallBase::arg_end(v1718) - (v715 - 32 * (*(v715 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x60)
                            {
                              v557 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v558 = *(v557 + 8);
                              v556 = ShuffleVector;
                              goto LABEL_1327;
                            }

                            goto LABEL_1328;
                          }

                          if (v70 < 0x11)
                          {
                            break;
                          }

                          if (*v34 == 0x702E323135787661 && v34[1] == 0x73616364616F7262 && *(v34 + 16) == 116)
                          {
                            goto LABEL_1325;
                          }

                          v3 = v7;
                          if (v70 < 0x17)
                          {
                            v514 = 0;
                            v513 = 0;
                            goto LABEL_1155;
                          }

                          if (*v34 == 0x6D2E323135787661 && v34[1] == 0x616F72622E6B7361 && *(v34 + 15) == 0x732E747361636461)
                          {
                            goto LABEL_1325;
                          }

                          v514 = 0;
                          v513 = 0;
                          v650 = 0;
LABEL_1156:
                          v651 = *v34 == 0x6461702E32657373 && *(v34 + 3) == 0x2E73646461702E32;
                          if (v651 || (*v34 == 0x6461702E32787661 ? (v652 = *(v34 + 3) == 0x2E73646461702E32) : (v652 = 0), v652 || (v653 = v70 < 0xD, v70 >= 0xD) && (*v34 == 0x702E323135787661 ? (v654 = *(v34 + 5) == 0x2E73646461702E32) : (v654 = 0), v654)) || (i & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v655 = v34[1] == 0x646461702E6B7361) : (v655 = 0), v655 ? (v656 = *(v34 + 8) == 11891) : (v656 = 0), v656))
                          {
                            v687 = v1718;
                            v688 = 265;
LABEL_1621:
                            InsertElement = UpgradeX86BinaryIntrinsics(v1732, v687, v688);
                            goto LABEL_1622;
                          }

                          v657 = *v34 == 0x7573702E32657373 && *(v34 + 3) == 0x2E73627573702E32;
                          if (v657 || ((v10 = *(v34 + 3), *v34 == 0x7573702E32787661) ? (v658 = v10 == 0x2E73627573702E32) : (v658 = 0), v658 || v70 >= 0xD && ((v10 = *(v34 + 5), *v34 == 0x702E323135787661) ? (v659 = v10 == 0x2E73627573702E32) : (v659 = 0), v659)) || (i & 1) == 0 && ((v10 = *(v34 + 8), *v34 == 0x6D2E323135787661) ? (v660 = v34[1] == 0x627573702E6B7361) : (v660 = 0), v660 ? (v661 = v10 == 11891) : (v661 = 0), v661))
                          {
                            v687 = v1718;
                            v688 = 286;
                            goto LABEL_1621;
                          }

                          if (v70 < 0xC)
                          {
                            v662 = 1;
                            v70 = 11;
                            v663 = 1;
                            v664 = 1;
                            goto LABEL_1200;
                          }

                          v748 = *v34 == 0x6461702E32657373 && *(v34 + 2) == 779318628;
                          if (v748 || ((v10 = *(v34 + 2), *v34 == 0x6461702E32787661) ? (v749 = v10 == 779318628) : (v749 = 0), v749 || v70 >= 0x13 && ((v10 = 0x6D2E323135787661, *v34 == 0x6D2E323135787661) ? (v750 = v34[1] == 0x646461702E6B7361) : (v750 = 0), v750 ? (v751 = *(v34 + 11) == 0x2E7375646461702ELL) : (v751 = 0), v751)))
                          {
                            v687 = v1718;
                            v688 = 303;
                            goto LABEL_1621;
                          }

                          v752 = *v34 == 0x7573702E32657373 && *(v34 + 2) == 779318626;
                          if (v752 || (*v34 == 0x7573702E32787661 ? (v753 = *(v34 + 2) == 779318626) : (v753 = 0), v753))
                          {
LABEL_1620:
                            v687 = v1718;
                            v688 = 314;
                            goto LABEL_1621;
                          }

                          if (v70 >= 0x13)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x627573702E6B7361 && *(v34 + 11) == 0x2E7375627573702ELL)
                            {
                              goto LABEL_1620;
                            }

                            v664 = v70 == 19;
                            if (v70 != 19)
                            {
                              v866 = *v34 == 0x6D2E323135787661 && v34[1] == 0x696C61702E6B7361;
                              if (v866 && *(v34 + 4) == 779251303)
                              {
                                v1183 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1061 = *v1183;
                                v1062 = *(v1183 + 4);
                                v1063 = *(v1183 + 8);
                                v1064 = *(v1183 + 12);
                                v1065 = *(v1183 + 16);
                                v1066 = 0;
LABEL_2475:
                                InsertElement = UpgradeX86ALIGNIntrinsics(v1732, v1061, v1062, v1063, v1064, v1065, v1066);
                                goto LABEL_1622;
                              }
                            }

                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x696C61762E6B7361 && *(v34 + 11) == 0x2E6E67696C61762ELL)
                            {
                              v1060 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1061 = *v1060;
                              v1062 = *(v1060 + 4);
                              v1063 = *(v1060 + 8);
                              v1064 = *(v1060 + 12);
                              v1065 = *(v1060 + 16);
                              v1066 = 1;
                              goto LABEL_2475;
                            }

                            v662 = 0;
                            v653 = 0;
                            v663 = 0;
                          }

                          else
                          {
                            v662 = 0;
                            v663 = 1;
                            v664 = 1;
                          }

LABEL_1611:
                          if (v70 > 14)
                          {
                            if (v70 == 15)
                            {
                              v912 = *v34 == 0x6C73702E32657373 && *(v34 + 7) == 0x73622E71642E6C6CLL;
                              if (v912 || (*v34 == 0x6C73702E32787661 ? (v913 = *(v34 + 7) == 0x73622E71642E6C6CLL) : (v913 = 0), v913))
                              {
LABEL_1744:
                                v917 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v918 = *(v917 + 4);
                                v919 = (v918 + 24);
                                if (*(v918 + 32) >= 0x41u)
                                {
                                  v919 = *v919;
                                }

                                v920 = *v919;
                                v921 = *v917;
                                goto LABEL_2244;
                              }

                              v914 = *v34 == 0x7273702E32657373 && *(v34 + 7) == 0x73622E71642E6C72;
                              if (v914 || ((v10 = 0x7273702E32787661, *v34 == 0x7273702E32787661) ? (v915 = *(v34 + 7) == 0x73622E71642E6C72) : (v915 = 0), v915))
                              {
LABEL_2444:
                                v1154 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1155 = *(v1154 + 4);
                                v1156 = (v1155 + 24);
                                if (*(v1155 + 32) >= 0x41u)
                                {
                                  v1156 = *v1156;
                                }

                                v911 = *v1156;
                                v910 = *v1154;
                                goto LABEL_2447;
                              }

LABEL_1738:
                              if (*v34 == 0x6C622E3134657373 && *(v34 + 2) == 1885630053)
                              {
                                goto LABEL_2250;
                              }

                              if (v662)
                              {
                                goto LABEL_1743;
                              }

                              goto LABEL_1200;
                            }

                            if (v70 == 18)
                            {
                              if (*v34 == 0x702E323135787661 && v34[1] == 0x352E71642E6C6C73 && *(v34 + 8) == 12849)
                              {
                                goto LABEL_1744;
                              }

                              v10 = *v34;
                              if (*v34 == 0x702E323135787661 && v34[1] == 0x352E71642E6C7273 && *(v34 + 8) == 12849)
                              {
                                goto LABEL_2444;
                              }

                              goto LABEL_1738;
                            }
                          }

                          else
                          {
                            if (v70 == 12)
                            {
                              v903 = *v34 == 0x6C73702E32657373 && *(v34 + 2) == 1902390892;
                              if (v903 || (*v34 == 0x6C73702E32787661 ? (v904 = *(v34 + 2) == 1902390892) : (v904 = 0), v904))
                              {
                                v1067 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1068 = *(v1067 + 4);
                                v1069 = (v1068 + 24);
                                if (*(v1068 + 32) >= 0x41u)
                                {
                                  v1069 = *v1069;
                                }

                                v921 = *v1067;
                                v920 = *v1069 >> 3;
LABEL_2244:
                                InsertElement = UpgradeX86PSLLDQIntrinsics(v1732, v921, v920);
                                goto LABEL_1622;
                              }

                              v905 = *v34 == 0x7273702E32657373 && *(v34 + 2) == 1902390892;
                              if (v905 || ((v10 = 0x7273702E32787661, *v34 == 0x7273702E32787661) ? (v906 = *(v34 + 2) == 1902390892) : (v906 = 0), v906))
                              {
                                v907 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v908 = *(v907 + 4);
                                v909 = (v908 + 24);
                                if (*(v908 + 32) >= 0x41u)
                                {
                                  v909 = *v909;
                                }

                                v910 = *v907;
                                v911 = *v909 >> 3;
LABEL_2447:
                                InsertElement = UpgradeX86PSRLDQIntrinsics(v1732, v910, v911);
                                goto LABEL_1622;
                              }

                              goto LABEL_1738;
                            }

                            if (v70 == 13)
                            {
                              if (*v34 == 0x62702E3134657373 && *(v34 + 5) == 0x77646E656C62702ELL)
                              {
                                goto LABEL_2250;
                              }

                              goto LABEL_1738;
                            }
                          }

                          if (v662)
                          {
                            v662 = 1;
LABEL_1743:
                            v666 = 1;
                            goto LABEL_1205;
                          }

                          if (*v34 == 0x6C622E3134657373 && *(v34 + 2) == 1885630053)
                          {
                            goto LABEL_2250;
                          }

                          v662 = 0;
LABEL_1200:
                          if (*v34 == 0x6E656C622E787661 && *(v34 + 3) == 0x702E646E656C622ELL)
                          {
                            goto LABEL_2250;
                          }

                          v666 = 0;
LABEL_1205:
                          if (v70 == 12 && ((v10 = 0x6C62702E32787661, *v34 == 0x6C62702E32787661) ? (v667 = *(v34 + 2) == 2003070565) : (v667 = 0), v667) || !v653 && ((v10 = 0x6C62702E32787661, *v34 == 0x6C62702E32787661) ? (v668 = *(v34 + 5) == 0x2E64646E656C6270) : (v668 = 0), v668))
                          {
LABEL_2250:
                            v1071 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                            v1072 = *v1071;
                            v1073 = v1071[4];
                            v1074 = v1071[8];
                            v1075 = (v1074 + 24);
                            if (*(v1074 + 32) >= 0x41u)
                            {
                              v1075 = *v1075;
                            }

                            v1076 = *v1075;
                            v1077 = *(*v1718 + 32);
                            __src = &v1726;
                            v1725 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1077);
                            v882 = __src;
                            if (v1077)
                            {
                              v1078 = 0;
                              v1079 = vdupq_n_s64(v1077 - 1);
                              v1080 = xmmword_2750C1830;
                              v1081 = xmmword_2750C1210;
                              v1082 = __src + 8;
                              v1083 = vdupq_n_s64(4uLL);
                              do
                              {
                                v1084 = vmovn_s64(vcgeq_u64(v1079, v1081));
                                if (vuzp1_s16(v1084, *v1079.i8).u8[0])
                                {
                                  *(v1082 - 2) = v1078 + (((v1076 >> (v1078 & 4) << 31) >> 31) & v1077);
                                }

                                if (vuzp1_s16(v1084, *&v1079).i8[2])
                                {
                                  *(v1082 - 1) = v1078 + (((v1076 >> ((v1078 + 1) & 5) << 31) >> 31) & v1077) + 1;
                                }

                                if (vuzp1_s16(*&v1079, vmovn_s64(vcgeq_u64(v1079, *&v1080))).i32[1])
                                {
                                  *v1082 = v1078 + (((v1076 >> ((v1078 + 2) & 6) << 31) >> 31) & v1077) + 2;
                                  v1082[1] = v1078 + (((v1076 >> ((v1078 + 3) & 7) << 31) >> 31) & v1077) + 3;
                                }

                                v1078 += 4;
                                v1080 = vaddq_s64(v1080, v1083);
                                v1081 = vaddq_s64(v1081, v1083);
                                v1082 += 4;
                              }

                              while (((v1077 + 3) & 0x1FFFFFFFCLL) != v1078);
                            }

                            v900 = v1725;
                            v1731 = 257;
                            v901 = v1072;
                            v902 = v1073;
LABEL_2262:
                            v811 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v901, v902, v882, v900, v1729);
LABEL_2263:
                            ShuffleVector = v811;
LABEL_2264:
                            v863 = __src;
                            if (__src == &v1726)
                            {
                              goto LABEL_2266;
                            }

LABEL_2265:
                            free(v863);
                            goto LABEL_2266;
                          }

                          if (v70 >= 0x10 && ((v10 = 0x736E69762E787661, *v34 == 0x736E69762E787661) ? (v669 = v34[1] == 0x2E38323166747265) : (v669 = 0), v669 || v70 == 16 && ((v10 = 0x6E69762E32787661, *v34 == 0x6E69762E32787661) ? (v670 = v34[1] == 0x3832316974726573) : (v670 = 0), v670)) || (i & 1) == 0 && ((v10 = *(v34 + 8), *v34 == 0x6D2E323135787661) ? (v671 = v34[1] == 0x65736E692E6B7361) : (v671 = 0), v671 ? (v672 = v10 == 29810) : (v672 = 0), v672))
                          {
                            v775 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v776 = *v775;
                            v777 = *(v775 + 4);
                            v778 = *(v775 + 8);
                            v779 = (v778 + 24);
                            if (*(v778 + 32) >= 0x41u)
                            {
                              v779 = *v779;
                            }

                            v780 = *v779;
                            v781 = *(*v1718 + 32);
                            v782 = *(*v777 + 8);
                            __src = &v1726;
                            v1725 = 0x800000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v781);
                            v783 = 0;
                            v784 = __src;
                            v785 = v782 - 1;
                            v786 = (v785 + 4) & 0x1FFFFFFFCLL;
                            v787 = vdupq_n_s64(v785);
                            v788 = xmmword_2750C1830;
                            v789 = xmmword_2750C1210;
                            v790 = __src + 8;
                            v791 = vdupq_n_s64(4uLL);
                            do
                            {
                              v792 = vmovn_s64(vcgeq_u64(v787, v789));
                              if (vuzp1_s16(v792, *v787.i8).u8[0])
                              {
                                *(v790 - 2) = v783;
                              }

                              if (vuzp1_s16(v792, *&v787).i8[2])
                              {
                                *(v790 - 1) = v783 + 1;
                              }

                              if (vuzp1_s16(*&v787, vmovn_s64(vcgeq_u64(v787, *&v788))).i32[1])
                              {
                                *v790 = v783 + 2;
                                v790[1] = v783 + 3;
                              }

                              v783 += 4;
                              v788 = vaddq_s64(v788, v791);
                              v789 = vaddq_s64(v789, v791);
                              v790 += 4;
                            }

                            while (v786 != v783);
                            if (v782 != v781)
                            {
                              v793 = v782;
                              do
                              {
                                v784[v793++] = v782;
                              }

                              while (v781 != v793);
                            }

                            v794 = v780 % (v781 / v782);
                            v1731 = 257;
                            v795 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v777, v784, v1725, v1729);
                            ShuffleVector = v795;
                            v796 = __src;
                            if (v781)
                            {
                              v797 = 0;
                              v798 = vdupq_n_s64(v781 - 1);
                              v799 = xmmword_2750C1830;
                              v800 = xmmword_2750C1210;
                              v801 = __src + 8;
                              v802 = vdupq_n_s64(4uLL);
                              do
                              {
                                v803 = vmovn_s64(vcgeq_u64(v798, v800));
                                if (vuzp1_s16(v803, *v798.i8).u8[0])
                                {
                                  *(v801 - 2) = v797;
                                }

                                if (vuzp1_s16(v803, *&v798).i8[2])
                                {
                                  *(v801 - 1) = v797 + 1;
                                }

                                if (vuzp1_s16(*&v798, vmovn_s64(vcgeq_u64(v798, *&v799))).i32[1])
                                {
                                  *v801 = v797 + 2;
                                  v801[1] = v797 + 3;
                                }

                                v797 += 4;
                                v799 = vaddq_s64(v799, v802);
                                v800 = vaddq_s64(v800, v802);
                                v801 += 4;
                              }

                              while (((v781 + 3) & 0x1FFFFFFFCLL) != v797);
                            }

                            v804 = 0;
                            v805 = v794 * v782;
                            do
                            {
                              v796[(v805 + v804++)] = v781;
                              LODWORD(v781) = v781 + 1;
                              --v782;
                            }

                            while (v782);
                            v1731 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v776, v795, v796, v1725, v1729);
                            v806 = v1718;
                            if (((llvm::CallBase::arg_end(v1718) - (v806 - 32 * (*(v806 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0xA0)
                            {
                              goto LABEL_2264;
                            }

                            v807 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v808 = *(v807 + 16);
                            v809 = ShuffleVector;
                            v810 = *(v807 + 12);
                            goto LABEL_1514;
                          }

                          if ((v514 & 1) == 0 && ((v10 = *(v34 + 16), *v34 == 0x747865762E787661) ? (v673 = v34[1] == 0x3832316674636172) : (v673 = 0), v673 ? (v674 = v10 == 46) : (v674 = 0), v674) || v70 == 17 && ((v10 = *(v34 + 16), *v34 == 0x7865762E32787661) ? (v675 = v34[1] == 0x3231697463617274) : (v675 = 0), v675 ? (v676 = v10 == 56) : (v676 = 0), v676))
                          {
LABEL_1572:
                            v844 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v827 = *v844;
                            v845 = *(v844 + 4);
                            v846 = (v845 + 24);
                            if (*(v845 + 32) >= 0x41u)
                            {
                              v846 = *v846;
                            }

                            v847 = *(*v1718 + 32);
                            v848 = *v846 % (*(*v827 + 32) / v847);
                            __src = &v1726;
                            v1725 = 0x800000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v847);
                            v849 = 0;
                            v850 = v848 * v847;
                            v832 = __src;
                            v851 = (v847 + 3) & 0x1FFFFFFFCLL;
                            v852 = vdupq_n_s64(v847 - 1);
                            v853 = xmmword_2750C1830;
                            v854 = xmmword_2750C1210;
                            v855 = __src + 8;
                            v856 = vdupq_n_s64(4uLL);
                            do
                            {
                              v857 = vmovn_s64(vcgeq_u64(v852, v854));
                              if (vuzp1_s16(v857, *v852.i8).u8[0])
                              {
                                *(v855 - 2) = v850 + v849;
                              }

                              if (vuzp1_s16(v857, *&v852).i8[2])
                              {
                                *(v855 - 1) = v850 + v849 + 1;
                              }

                              if (vuzp1_s16(*&v852, vmovn_s64(vcgeq_u64(v852, *&v853))).i32[1])
                              {
                                *v855 = v850 + v849 + 2;
                                v855[1] = v850 + v849 + 3;
                              }

                              v849 += 4;
                              v853 = vaddq_s64(v853, v856);
                              v854 = vaddq_s64(v854, v856);
                              v855 += 4;
                              v851 -= 4;
                            }

                            while (v851);
LABEL_1582:
                            v1731 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v827, v827, v832, v1725, v1729);
                            v858 = v1718;
                            if (((llvm::CallBase::arg_end(v1718) - (v858 - 32 * (*(v858 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x80)
                            {
                              v859 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v860 = *(v859 + 12);
                              v861 = ShuffleVector;
                              v862 = *(v859 + 8);
                              goto LABEL_1584;
                            }

LABEL_1585:
                            v863 = __src;
                            if (__src == &v1726)
                            {
                              goto LABEL_2266;
                            }

                            goto LABEL_2265;
                          }

                          if (!v664)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x747865762E6B7361 && *(v34 + 4) == 1952670066)
                            {
                              goto LABEL_1572;
                            }

                            v822 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D7265702E6B7361;
                            v823 = v822 && *(v34 + 4) == 778462254;
                            if (v823 || ((v10 = 778658862, *v34 == 0x6D2E323135787661) ? (v824 = v34[1] == 0x6D7265702E6B7361) : (v824 = 0), v824 ? (v825 = *(v34 + 4) == 778658862) : (v825 = 0), v825))
                            {
                              v826 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v827 = *v826;
                              v828 = *(v826 + 4);
                              v829 = (v828 + 24);
                              if (*(v828 + 32) >= 0x41u)
                              {
                                v829 = *v829;
                              }

                              v830 = *v829;
                              v831 = *(*v1718 + 32);
                              __src = &v1726;
                              v1725 = 0x800000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v831);
                              v832 = __src;
                              if (v831)
                              {
                                v833 = (v831 + 3) & 0x1FFFFFFFCLL;
                                v834 = vdupq_n_s64(v831 - 1);
                                v835 = v830 & 3;
                                v836 = (v830 >> 2) & 3;
                                v837 = (v830 >> 4) & 3;
                                v838 = xmmword_2750C1830;
                                v839 = xmmword_2750C1210;
                                v840 = v830 >> 6;
                                v841 = (__src + 8);
                                v842 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v843 = vmovn_s64(vcgeq_u64(v834, v839));
                                  if (vuzp1_s16(v843, *v834.i8).u8[0])
                                  {
                                    *(v841 - 2) = v835;
                                  }

                                  if (vuzp1_s16(v843, *&v834).i8[2])
                                  {
                                    *(v841 - 1) = v836;
                                  }

                                  if (vuzp1_s16(*&v834, vmovn_s64(vcgeq_u64(v834, *&v838))).i32[1])
                                  {
                                    *v841 = v837;
                                    v841[1] = v840;
                                  }

                                  v838 = vaddq_s64(v838, v842);
                                  v835 += 4;
                                  v836 += 4;
                                  v839 = vaddq_s64(v839, v842);
                                  v837 += 4;
                                  v841 += 4;
                                  v840 += 4;
                                  v833 -= 4;
                                }

                                while (v833);
                              }

                              goto LABEL_1582;
                            }
                          }

                          if ((v513 & 1) == 0)
                          {
                            v10 = 0x726570762E787661;
                            if (*v34 == 0x726570762E787661 && *(v34 + 7) == 0x2E38323166326D72)
                            {
LABEL_1261:
                              v679 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                              v680 = (v679 + 24);
                              if (*(v679 + 32) >= 0x41u)
                              {
                                v680 = *v680;
                              }

                              v681 = *v680;
                              v682 = *(*v1718 + 32);
                              __src = &v1726;
                              v1725 = 0x800000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v682);
                              v684 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v685 = *&v684[v681 & 0x20];
                              if ((v681 & 8) != 0)
                              {
                                v686 = llvm::ConstantAggregateZero::get(*v1718, v683);
                              }

                              else
                              {
                                v686 = *&v684[(16 * v681) & 0x20];
                              }

                              if ((v681 & 0x80) != 0)
                              {
                                v685 = llvm::ConstantAggregateZero::get(*v1718, v683);
                              }

                              v882 = __src;
                              if (v682 >= 2)
                              {
                                v883 = v682 >> 1;
                                v884 = ((v681 << 31) >> 31) & (v682 >> 1);
                                v885 = ((v682 >> 1) + 3) & 0xFFFFFFFC;
                                v886 = vdupq_n_s64((v682 >> 1) - 1);
                                v887 = xmmword_2750C1830;
                                v888 = xmmword_2750C1210;
                                v889 = __src + 8;
                                v890 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v891 = vmovn_s64(vcgeq_u64(v886, v888));
                                  if (vuzp1_s16(v891, *v886.i8).u8[0])
                                  {
                                    *(v889 - 2) = v884;
                                  }

                                  if (vuzp1_s16(v891, *&v886).i8[2])
                                  {
                                    *(v889 - 1) = v884 + 1;
                                  }

                                  if (vuzp1_s16(*&v886, vmovn_s64(vcgeq_u64(v886, *&v887))).i32[1])
                                  {
                                    *v889 = v884 + 2;
                                    v889[1] = v884 + 3;
                                  }

                                  v887 = vaddq_s64(v887, v890);
                                  v888 = vaddq_s64(v888, v890);
                                  v884 += 4;
                                  v889 += 4;
                                  v885 -= 4;
                                }

                                while (v885);
                                v892 = 0;
                                v893 = (v883 + 3) & 0xFFFFFFFC;
                                v894 = (v883 & ((v681 << 27) >> 31)) + v682;
                                v895 = &v882[v883 + 2];
                                v896 = xmmword_2750C1830;
                                v897 = xmmword_2750C1210;
                                v898 = vdupq_n_s64(4uLL);
                                do
                                {
                                  v899 = vmovn_s64(vcgeq_u64(v886, v897));
                                  if (vuzp1_s16(v899, *v886.i8).u8[0])
                                  {
                                    *(v895 - 2) = v894 + v892;
                                  }

                                  if (vuzp1_s16(v899, *&v886).i8[2])
                                  {
                                    *(v895 - 1) = v894 + v892 + 1;
                                  }

                                  if (vuzp1_s16(*&v886, vmovn_s64(vcgeq_u64(v886, *&v896))).i32[1])
                                  {
                                    *v895 = v894 + v892 + 2;
                                    v895[1] = v894 + v892 + 3;
                                  }

                                  v892 += 4;
                                  v896 = vaddq_s64(v896, v898);
                                  v897 = vaddq_s64(v897, v898);
                                  v895 += 4;
                                }

                                while (v893 != v892);
                              }

                              v900 = v1725;
                              v1731 = 257;
                              v901 = v686;
                              v902 = v685;
                              goto LABEL_2262;
                            }
                          }

                          if (v70 == 15)
                          {
                            if (*v34 == 0x6570762E32787661 && *(v34 + 7) == 0x38323169326D7265)
                            {
                              goto LABEL_1261;
                            }
                          }

                          else if (v662)
                          {
                            goto LABEL_1748;
                          }

                          v10 = 0x726570762E787661;
                          if (*v34 == 0x726570762E787661 && *(v34 + 2) == 778856813)
                          {
LABEL_2456:
                            v1159 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v1160 = *(v1159 + 4);
                            v1161 = (v1160 + 24);
                            if (*(v1160 + 32) >= 0x41u)
                            {
                              v1161 = *v1161;
                            }

                            v1162 = *v1159;
                            v1163 = *v1718;
                            v1164 = *(*v1718 + 32);
                            if ((*(*v1718 + 8) & 0xFE) == 0x12)
                            {
                              v1163 = **(v1163 + 2);
                            }

                            v1165 = *v1161;
                            v1166 = llvm::Type::getPrimitiveSizeInBits(v1163);
                            __src = &v1726;
                            v1725 = 0x800000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1164);
                            v1167 = __src;
                            if (v1164)
                            {
                              v1168 = 0;
                              v1169 = 0x40 / v1166;
                              v1170 = -1 << (0x40 / v1166);
                              v1171 = ~v1170;
                              v1172 = vdupq_n_s64(v1164 - 1);
                              v1173 = xmmword_2750C1830;
                              v1174 = xmmword_2750C1210;
                              v1175 = vdupq_n_s64(4uLL);
                              v1176 = __src + 8;
                              do
                              {
                                v1177 = vmovn_s64(vcgeq_u64(v1172, v1174));
                                if (vuzp1_s16(v1177, *v1172.i8).u8[0])
                                {
                                  *(v1176 - 2) = (v1165 >> ((v1169 * v1168) & 4)) & v1171 | v1170 & v1168;
                                }

                                if (vuzp1_s16(v1177, *&v1172).i8[2])
                                {
                                  *(v1176 - 1) = (v1165 >> ((v1169 * (v1168 | 1)) & 7)) & v1171 | v1170 & (v1168 + 1);
                                }

                                if (vuzp1_s16(*&v1172, vmovn_s64(vcgeq_u64(v1172, *&v1173))).i32[1])
                                {
                                  *v1176 = (v1165 >> ((v1169 * (v1168 | 2)) & 6)) & v1171 | v1170 & (v1168 + 2);
                                  v1176[1] = (v1165 >> ((v1169 * (v1168 | 3)) & 7)) & v1171 | v1170 & (v1168 + 3);
                                }

                                v1168 += 4;
                                v1173 = vaddq_s64(v1173, v1175);
                                v1174 = vaddq_s64(v1174, v1175);
                                v1176 += 4;
                              }

                              while (((v1164 + 3) & 0x1FFFFFFFCLL) != v1168);
                            }

                            v1731 = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1162, v1162, v1167, v1725, v1729);
                            v1178 = v1718;
                            if (((llvm::CallBase::arg_end(v1718) - (v1178 - 32 * (*(v1178 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0x80)
                            {
                              goto LABEL_2264;
                            }

                            v1179 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v808 = *(v1179 + 12);
                            v809 = ShuffleVector;
                            v810 = *(v1179 + 8);
LABEL_1514:
                            v811 = EmitX86Select(v1732, v808, v809, v810);
                            goto LABEL_2263;
                          }

                          if (v70 == 12)
                          {
                            v10 = 0x6873702E32657373;
                            if (*v34 == 0x6873702E32657373 && *(v34 + 2) == 1680762485)
                            {
                              goto LABEL_2456;
                            }

LABEL_1748:
                            v922 = 1;
                            goto LABEL_1749;
                          }

                          if (v70 < 0x15)
                          {
                            goto LABEL_1748;
                          }

                          v10 = *(v34 + 13);
                          if (*v34 == 0x6D2E323135787661 && v34[1] == 0x726570762E6B7361 && v10 == 0x702E6C696D726570)
                          {
                            goto LABEL_2456;
                          }

                          v922 = 0;
LABEL_1749:
                          v923 = 0x756873702E6B7361;
                          if (!v664)
                          {
                            v924 = *v34 == 0x6D2E323135787661 && v34[1] == 0x756873702E6B7361;
                            v10 = 778317414;
                            if (v924 && *(v34 + 4) == 778317414)
                            {
                              goto LABEL_2456;
                            }
                          }

                          if (v70 == 13 && ((v10 = 0x772E6C6675687370, *v34 == 0x6873702E32657373) ? (v926 = *(v34 + 5) == 0x772E6C6675687370) : (v926 = 0), v926) || (v922 & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v927 = v34[1] == 0x756873702E6B7361) : (v927 = 0), (v10 = 0x2E772E6C66756873, v927) ? (v928 = *(v34 + 13) == 0x2E772E6C66756873) : (v928 = 0), v928))
                          {
                            v1014 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v827 = *v1014;
                            v1015 = *(v1014 + 4);
                            v1016 = (v1015 + 24);
                            if (*(v1015 + 32) >= 0x41u)
                            {
                              v1016 = *v1016;
                            }

                            v1017 = *v1016;
                            v1018 = *(*v1718 + 32);
                            __src = &v1726;
                            v1725 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1018);
                            v832 = __src;
                            if (v1018)
                            {
                              v1019 = 0;
                              v1020.i64[0] = 0x300000003;
                              v1020.i64[1] = 0x300000003;
                              v1021 = vandq_s8(vshlq_u32(vdupq_n_s32(v1017), xmmword_2750C8A90), v1020);
                              v1022 = __src;
                              do
                              {
                                *v1022 = vorrq_s8(v1021, vdupq_n_s32(v1019));
                                v1022 += 2;
                                v1023 = vdupq_n_s64(v1019);
                                v1024 = vorrq_s8(v1023, xmmword_2750C4000);
                                v1025 = vorrq_s8(v1023, xmmword_2750C4010);
                                *&v832[v1025.i64[0]] = vuzp1q_s32(v1025, v1024);
                                v1019 += 8;
                              }

                              while (v1018 != v1019);
                            }

                            goto LABEL_1582;
                          }

                          if (v70 == 13 && ((v10 = 0x772E686675687370, *v34 == 0x6873702E32657373) ? (v929 = *(v34 + 5) == 0x772E686675687370) : (v929 = 0), v929) || (v922 & 1) == 0 && ((v10 = *v34, *v34 == 0x6D2E323135787661) ? (v930 = v34[1] == 0x756873702E6B7361) : (v930 = 0), (v923 = 0x2E772E6866756873, v930) ? (v931 = *(v34 + 13) == 0x2E772E6866756873) : (v931 = 0), v931))
                          {
                            v1144 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v827 = *v1144;
                            v1145 = *(v1144 + 4);
                            v1146 = (v1145 + 24);
                            if (*(v1145 + 32) >= 0x41u)
                            {
                              v1146 = *v1146;
                            }

                            v1147 = *v1146;
                            v1148 = *(*v1718 + 32);
                            __src = &v1726;
                            v1725 = 0x1000000000;
                            llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1148);
                            v832 = __src;
                            if (v1148)
                            {
                              v1149 = 0;
                              v1150.i64[0] = 0x300000003;
                              v1150.i64[1] = 0x300000003;
                              v1151 = vandq_s8(vshlq_u32(vdupq_n_s32(v1147), xmmword_2750C8A90), v1150);
                              v1152 = (__src + 16);
                              do
                              {
                                v1153.i32[0] = v1149;
                                v1153.i32[1] = v1149 + 1;
                                *(v1152 - 1) = vmovn_hight_s64(v1153, vorrq_s8(vdupq_n_s64(v1149), xmmword_2750C1830));
                                *v1152 = *&vorrq_s8(v1151, vdupq_n_s32(v1149)) | __PAIR128__(0x400000004, 0x400000004);
                                v1152 += 2;
                                v1149 += 8;
                              }

                              while (v1148 != v1149);
                            }

                            goto LABEL_1582;
                          }

                          if ((i & 1) == 0)
                          {
                            v10 = v34[1];
                            v932 = *v34 == 0x6D2E323135787661 && v10 == 0x667568732E6B7361;
                            v923 = 28718;
                            if (v932 && *(v34 + 8) == 28718)
                            {
                              v1224 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1225 = *(v1224 + 8);
                              v1226 = (v1225 + 24);
                              if (*(v1225 + 32) >= 0x41u)
                              {
                                v1226 = *v1226;
                              }

                              v1227 = *v1224;
                              v1228 = *(v1224 + 4);
                              v1229 = *v1718;
                              v1230 = *(*v1718 + 32);
                              if ((*(*v1718 + 8) & 0xFE) == 0x12)
                              {
                                v1229 = **(v1229 + 2);
                              }

                              v1231 = *v1226;
                              v1232 = llvm::Type::getPrimitiveSizeInBits(v1229);
                              __src = &v1726;
                              v1725 = 0x1000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1230);
                              v1234 = __src;
                              if (v1230)
                              {
                                v1235 = 0;
                                v1236 = 0x80 / v1232;
                                v1237 = vdupq_n_s64(v1230 - 1);
                                v1238 = vdupq_n_s32((0x80 / v1232) >> 1);
                                v1239 = vdupq_n_s32(v1230);
                                v1240 = vdupq_n_s32(v1231);
                                v1241 = vdupq_n_s32(~(-1 << ((0x80 / v1232) >> 1)));
                                v1242 = xmmword_2750C1830;
                                v1243 = xmmword_2750C1210;
                                v1244 = xmmword_2750C8A80;
                                v1245 = __src + 8;
                                v1246.i64[0] = 0x700000007;
                                v1246.i64[1] = 0x700000007;
                                v1247 = vdupq_n_s64(4uLL);
                                v1248.i64[0] = 0x400000004;
                                v1248.i64[1] = 0x400000004;
                                do
                                {
                                  v1249 = vmovn_s64(vcgeq_u64(v1237, v1243));
                                  if (vuzp1_s16(v1249, *v1237.i8).u8[0])
                                  {
                                    v1233.i32[0] = v1235 % v1236;
                                  }

                                  if (vuzp1_s16(v1249, *&v1237).i8[2])
                                  {
                                    v1233.i32[1] = (v1235 + 1) % v1236;
                                  }

                                  v1250 = vmovn_s64(vcgeq_u64(v1237, v1242));
                                  if (vuzp1_s16(*&v1237, v1250).i32[1])
                                  {
                                    v1233.i32[2] = (v1235 + 2) % v1236;
                                    v1233.i32[3] = (v1235 + 3) % v1236;
                                  }

                                  v1233 = vaddq_s32(vaddq_s32(vsubq_s32(v1244, v1233), vbicq_s8(v1239, vcgtq_u32(v1238, v1233))), vandq_s8(vshlq_u32(v1240, vnegq_s32(vandq_s8(vmulq_s32(v1238, v1244), v1246))), v1241));
                                  if (vuzp1_s16(v1249, *v1237.i8).u8[0])
                                  {
                                    *(v1245 - 2) = v1233.i32[0];
                                  }

                                  if (vuzp1_s16(v1249, *&v1237).i8[2])
                                  {
                                    *(v1245 - 1) = v1233.i32[1];
                                  }

                                  if (vuzp1_s16(*&v1237, v1250).i32[1])
                                  {
                                    *v1245 = v1233.i64[1];
                                  }

                                  v1235 += 4;
                                  v1242 = vaddq_s64(v1242, v1247);
                                  v1243 = vaddq_s64(v1243, v1247);
                                  v1244 = vaddq_s32(v1244, v1248);
                                  v1245 += 2;
                                }

                                while (((v1230 + 3) & 0x1FFFFFFFCLL) != v1235);
                              }

                              v1731 = 257;
                              v1251 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1227, v1228, v1234, v1725, v1729);
                              ShuffleVector = v1251;
                              v1252 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1253 = *(v1252 + 16);
                              v1254 = *(v1252 + 12);
                              goto LABEL_2585;
                            }
                          }

                          if ((v663 & 1) == 0)
                          {
                            v10 = v34[1];
                            v934 = *v34 == 0x6D2E323135787661 && v10 == 0x64766F6D2E6B7361;
                            v923 = 0x70756464766F6D2ELL;
                            if (v934 && *(v34 + 11) == 0x70756464766F6D2ELL)
                            {
                              goto LABEL_2476;
                            }
                          }

                          if (!v664)
                          {
                            v923 = 0x73766F6D2E6B7361;
                            v936 = *v34 == 0x6D2E323135787661 && v34[1] == 0x73766F6D2E6B7361;
                            v937 = v936 && *(v34 + 4) == 1886741608;
                            if (v937 || ((v10 = 1886741612, *v34 == 0x6D2E323135787661) ? (v938 = v34[1] == 0x73766F6D2E6B7361) : (v938 = 0), v938 ? (v939 = *(v34 + 4) == 1886741612) : (v939 = 0), v939))
                            {
LABEL_2476:
                              v1184 = *v1718;
                              v1185 = *(*v1718 + 32);
                              if ((*(*v1718 + 8) & 0xFE) == 0x12)
                              {
                                v1184 = **(v1184 + 2);
                              }

                              v1186 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              v1187 = llvm::Type::getPrimitiveSizeInBits(v1184);
                              if (v922)
                              {
                                v1188 = 0;
                              }

                              else
                              {
                                v1258 = 0x6176783531322E6DLL;
                                v1259 = bswap64(*v34);
                                if (v1259 == 0x6176783531322E6DLL && (v1258 = 0x61736B2E6D6F7673, v1259 = bswap64(v34[1]), v1259 == 0x61736B2E6D6F7673) && (v1258 = 0x6F7673686475702ELL, v1259 = bswap64(*(v34 + 13)), v1259 == 0x6F7673686475702ELL))
                                {
                                  v1260 = 0;
                                }

                                else if (v1259 < v1258)
                                {
                                  v1260 = -1;
                                }

                                else
                                {
                                  v1260 = 1;
                                }

                                v1188 = v1260 == 0;
                              }

                              __src = &v1726;
                              v1725 = 0x1000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1185);
                              v1261 = __src;
                              if (v1185)
                              {
                                v1262 = 0;
                                do
                                {
                                  if (v1187 <= 0x80)
                                  {
                                    v1263 = 0;
                                    v1264 = 0x80 / v1187;
                                    do
                                    {
                                      v1265 = v1262 + v1263 + v1188;
                                      v1261[(v1262 + v1263)] = v1265;
                                      v1261[(v1262 + v1263 + 1)] = v1265;
                                      v1263 += 2;
                                      v1264 -= 2;
                                    }

                                    while (v1264);
                                  }

                                  v1262 += 0x80 / v1187;
                                }

                                while (v1262 != v1185);
                              }

                              v1731 = 257;
                              v861 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1186, v1186, v1261, v1725, v1729);
                              ShuffleVector = v861;
                              v1266 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v860 = *(v1266 + 8);
LABEL_2567:
                              v862 = *(v1266 + 4);
LABEL_1584:
                              ShuffleVector = EmitX86Select(v1732, v860, v861, v862);
                              goto LABEL_1585;
                            }
                          }

                          if ((v663 & 1) == 0)
                          {
                            v1192 = *v34 == 0x6D2E323135787661 && v34[1] == 0x706E75702E6B7361 && *(v34 + 11) == 0x6C6B63706E75702ELL;
                            if (v1192 || ((v923 = 0x63706E752E6B7361, *v34 == 0x6D2E323135787661) ? (v1193 = v34[1] == 0x63706E752E6B7361) : (v1193 = 0), v1193 ? (v1194 = *(v34 + 11) == 0x2E6C6B63706E752ELL) : (v1194 = 0), v1194))
                            {
                              v1274 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1200 = *v1274;
                              v1201 = *(v1274 + 4);
                              v1275 = *v1718;
                              v1276 = *(*v1718 + 32);
                              v1277 = *(*v1718 + 32);
                              if ((*(*v1718 + 8) & 0xFE) == 0x12)
                              {
                                v1275 = **(v1275 + 2);
                              }

                              v1278 = llvm::Type::getPrimitiveSizeInBits(v1275);
                              __src = &v1726;
                              v1725 = 0x4000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1276);
                              v1206 = __src;
                              if (v1277)
                              {
                                v1279 = 0;
                                v1280 = 0x80 / v1278;
                                v1281 = vdupq_n_s64(v1280 - 1);
                                v1282 = vdupq_n_s64(4uLL);
                                do
                                {
                                  if (v1278 <= 0x80)
                                  {
                                    v1283 = 0;
                                    v1284 = xmmword_2750C1210;
                                    v1285 = xmmword_2750C1830;
                                    v1286 = &v1206[v1279];
                                    do
                                    {
                                      v1287 = vmovn_s64(vcgeq_u64(v1281, v1284));
                                      if (vuzp1_s16(v1287, *v1281.i8).u8[0])
                                      {
                                        v1286[v1283] = v1279 + (v1283 >> 1);
                                      }

                                      if (vuzp1_s16(v1287, *&v1281).i8[2])
                                      {
                                        v1286[v1283 + 1] = v1279 + (v1283 >> 1) + v1277;
                                      }

                                      if (vuzp1_s16(*&v1281, vmovn_s64(vcgeq_u64(v1281, *&v1285))).i32[1])
                                      {
                                        v1286[v1283 + 2] = v1279 + (v1283 >> 1) + 1;
                                        v1286[v1283 + 3] = v1279 + (v1283 >> 1) + v1276 + 1;
                                      }

                                      v1283 += 4;
                                      v1285 = vaddq_s64(v1285, v1282);
                                      v1284 = vaddq_s64(v1284, v1282);
                                    }

                                    while (((v1280 + 3) & 0x1FC) != v1283);
                                  }

                                  v1279 += v1280;
                                }

                                while (v1279 != v1276);
                              }

LABEL_2584:
                              v1731 = 257;
                              v1251 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1200, v1201, v1206, v1725, v1729);
                              ShuffleVector = v1251;
                              v1288 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1253 = *(v1288 + 12);
                              v1254 = *(v1288 + 8);
LABEL_2585:
                              ShuffleVector = EmitX86Select(v1732, v1253, v1251, v1254);
                              v863 = __src;
                              if (__src == &v1726)
                              {
                                goto LABEL_2266;
                              }

                              goto LABEL_2265;
                            }

                            v1196 = *v34 == 0x6D2E323135787661 && v34[1] == 0x706E75702E6B7361 && *(v34 + 11) == 0x686B63706E75702ELL;
                            if (v1196 || ((v10 = v34[1], *v34 == 0x6D2E323135787661) ? (v1197 = v10 == 0x63706E752E6B7361) : (v1197 = 0), v1197 ? (v1198 = *(v34 + 11) == 0x2E686B63706E752ELL) : (v1198 = 0), v1198))
                            {
                              v1199 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1200 = *v1199;
                              v1201 = *(v1199 + 4);
                              v1202 = *v1718;
                              v1203 = *(*v1718 + 32);
                              v1204 = *(*v1718 + 32);
                              if ((*(*v1718 + 8) & 0xFE) == 0x12)
                              {
                                v1202 = **(v1202 + 2);
                              }

                              v1205 = llvm::Type::getPrimitiveSizeInBits(v1202);
                              __src = &v1726;
                              v1725 = 0x4000000000;
                              llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1203);
                              v1206 = __src;
                              if (v1204)
                              {
                                v1207 = 0;
                                v1208 = 0x80 / v1205;
                                v1209 = vdupq_n_s64(v1208 - 1);
                                v1210 = vdupq_n_s64(4uLL);
                                do
                                {
                                  if (v1205 <= 0x80)
                                  {
                                    v1211 = 0;
                                    v1212 = (v1208 >> 1) + v1207;
                                    v1213 = xmmword_2750C1210;
                                    v1214 = xmmword_2750C1830;
                                    v1215 = &v1206[v1207];
                                    do
                                    {
                                      v1216 = vmovn_s64(vcgeq_u64(v1209, v1213));
                                      if (vuzp1_s16(v1216, *v1209.i8).u8[0])
                                      {
                                        v1215[v1211] = v1212 + (v1211 >> 1);
                                      }

                                      if (vuzp1_s16(v1216, *&v1209).i8[2])
                                      {
                                        v1215[v1211 + 1] = v1212 + (v1211 >> 1) + v1204;
                                      }

                                      if (vuzp1_s16(*&v1209, vmovn_s64(vcgeq_u64(v1209, *&v1214))).i32[1])
                                      {
                                        v1215[v1211 + 2] = v1212 + (v1211 >> 1) + 1;
                                        v1215[v1211 + 3] = v1212 + (v1211 >> 1) + v1203 + 1;
                                      }

                                      v1211 += 4;
                                      v1214 = vaddq_s64(v1214, v1210);
                                      v1213 = vaddq_s64(v1213, v1210);
                                    }

                                    while (((v1208 + 3) & 0x1FC) != v1211);
                                  }

                                  v1207 += v1208;
                                }

                                while (v1207 != v1203);
                              }

                              goto LABEL_2584;
                            }
                          }

                          if (v70 >= 0x10)
                          {
                            v923 = v34[1];
                            if (*v34 == 0x6D2E323135787661 && v923 == 0x2E646E612E6B7361)
                            {
LABEL_2588:
                              v1291 = *v1718;
                              llvm::VectorType::getInteger(*v1718);
                              v1293 = v1292;
                              v1294 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              LOWORD(v1728) = 257;
                              Cast = llvm::IRBuilderBase::CreateCast(v1732, 49, v1294, v1292, &__src);
                              v1296 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                              v1731 = 257;
                              v1297 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1296, v1293, v1729);
                              v1723 = 257;
                              p_p = &__p;
                              goto LABEL_2605;
                            }
                          }

                          if ((v514 & 1) == 0)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x646E61702E6B7361 && *(v34 + 16) == 46)
                            {
                              goto LABEL_2588;
                            }

                            v10 = v34[1];
                            v923 = 0x6E646E612E6B7361;
                            v943 = *v34 == 0x6D2E323135787661 && v10 == 0x6E646E612E6B7361;
                            if (v943 && *(v34 + 16) == 46)
                            {
LABEL_2604:
                              v1291 = *v1718;
                              llvm::VectorType::getInteger(*v1718);
                              v1312 = v1311;
                              v1313 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              LOWORD(v1728) = 257;
                              v1314 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1313, v1311, &__src);
                              v1731 = 257;
                              Cast = llvm::IRBuilderBase::CreateNot(v1732, v1314, v1729);
                              ShuffleVector = Cast;
                              v1315 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                              LOWORD(v1728) = 257;
                              v1297 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1315, v1312, &__src);
                              v1731 = 257;
                              p_p = v1729;
LABEL_2605:
                              Xor = llvm::IRBuilderBase::CreateAnd(v1732, Cast, v1297, p_p);
LABEL_2640:
                              ShuffleVector = Xor;
                              LOWORD(v1728) = 257;
                              Add = llvm::IRBuilderBase::CreateCast(v1732, 49, Xor, v1291, &__src);
LABEL_2641:
                              v1354 = Add;
                              ShuffleVector = Add;
                              v1355 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1356 = *(v1355 + 12);
                              v1357 = *(v1355 + 8);
                              goto LABEL_2642;
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v923 = v34[1];
                            v10 = *(v34 + 8);
                            v945 = *v34 == 0x6D2E323135787661 && v923 == 0x646E61702E6B7361;
                            if (v945 && v10 == 11886)
                            {
                              goto LABEL_2604;
                            }
                          }

                          if ((v513 & 1) == 0)
                          {
                            v923 = *(v34 + 7);
                            if (*v34 == 0x6D2E323135787661 && v923 == 0x2E726F2E6B73616DLL)
                            {
LABEL_2610:
                              v1291 = *v1718;
                              llvm::VectorType::getInteger(*v1718);
                              v1327 = v1326;
                              v1328 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              LOWORD(v1728) = 257;
                              v1329 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1328, v1326, &__src);
                              v1330 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                              v1731 = 257;
                              v1331 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1330, v1327, v1729);
                              v1723 = 257;
                              Xor = llvm::IRBuilderBase::CreateOr(v1732, v1329, v1331, &__p);
                              goto LABEL_2640;
                            }
                          }

                          if (v70 >= 0x10)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x2E726F702E6B7361)
                            {
                              goto LABEL_2610;
                            }

                            v923 = v34[1];
                            if (*v34 == 0x6D2E323135787661 && v923 == 0x2E726F782E6B7361)
                            {
LABEL_2639:
                              v1291 = *v1718;
                              llvm::VectorType::getInteger(*v1718);
                              v1349 = v1348;
                              v1350 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              LOWORD(v1728) = 257;
                              v1351 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1350, v1348, &__src);
                              v1352 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                              v1731 = 257;
                              v1353 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1352, v1349, v1729);
                              v1723 = 257;
                              Xor = llvm::IRBuilderBase::CreateXor(v1732, v1351, v1353, &__p);
                              goto LABEL_2640;
                            }
                          }

                          if ((v514 & 1) == 0)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x726F78702E6B7361 && *(v34 + 16) == 46)
                            {
                              goto LABEL_2639;
                            }

                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x646461702E6B7361 && *(v34 + 16) == 46)
                            {
                              v1419 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1420 = *v1419;
                              v1421 = *(v1419 + 4);
                              LOWORD(v1728) = 257;
                              Add = llvm::IRBuilderBase::CreateAdd(v1732, v1420, v1421, &__src, 0, 0);
                              goto LABEL_2641;
                            }

                            v923 = v34[1];
                            v10 = *(v34 + 16);
                            v1342 = *v34 == 0x6D2E323135787661 && v923 == 0x627573702E6B7361;
                            if (v1342 && v10 == 46)
                            {
                              v1344 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1345 = *v1344;
                              v1346 = *(v1344 + 4);
                              LOWORD(v1728) = 257;
                              Add = llvm::IRBuilderBase::CreateSub(v1732, v1345, v1346, &__src, 0, 0);
                              goto LABEL_2641;
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v923 = v34[1];
                            v10 = *(v34 + 8);
                            v950 = *v34 == 0x6D2E323135787661 && v923 == 0x6C756D702E6B7361;
                            if (v950 && v10 == 11884)
                            {
                              v1422 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1423 = *v1422;
                              v1424 = *(v1422 + 4);
                              LOWORD(v1728) = 257;
                              Add = llvm::IRBuilderBase::CreateMul(v1732, v1423, v1424, &__src, 0, 0);
                              goto LABEL_2641;
                            }
                          }

                          if ((v514 & 1) == 0)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x2E6464612E6B7361 && *(v34 + 16) == 112)
                            {
                              if (*(v34 + v70 - 4) != 842085678)
                              {
                                v1431 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1432 = *v1431;
                                v1433 = *(v1431 + 4);
                                LOWORD(v1728) = 257;
                                Add = llvm::IRBuilderBase::CreateFAdd(v1732, v1432, v1433, &__src, 0);
                                goto LABEL_2641;
                              }

                              v1460 = *(v34 + 17) == 115;
                              v1461 = 10381;
                              goto LABEL_2956;
                            }

                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x2E7669642E6B7361 && *(v34 + 16) == 112)
                            {
                              if (*(v34 + v70 - 4) != 842085678)
                              {
                                v1435 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1436 = *v1435;
                                v1437 = *(v1435 + 4);
                                LOWORD(v1728) = 257;
                                Add = llvm::IRBuilderBase::CreateFDiv(v1732, v1436, v1437, &__src, 0);
                                goto LABEL_2641;
                              }

                              v1460 = *(v34 + 17) == 115;
                              v1461 = 10412;
                              goto LABEL_2956;
                            }

                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x2E6C756D2E6B7361 && *(v34 + 16) == 112)
                            {
                              if (*(v34 + v70 - 4) != 842085678)
                              {
                                v1457 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1458 = *v1457;
                                v1459 = *(v1457 + 4);
                                LOWORD(v1728) = 257;
                                Add = llvm::IRBuilderBase::CreateFMul(v1732, v1458, v1459, &__src, 0);
                                goto LABEL_2641;
                              }

                              v1460 = *(v34 + 17) == 115;
                              v1461 = 10763;
                              goto LABEL_2956;
                            }

                            v10 = *(v34 + 16);
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x2E6275732E6B7361 && v10 == 112)
                            {
                              if (*(v34 + v70 - 4) != 842085678)
                              {
                                v1465 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v1466 = *v1465;
                                v1467 = *(v1465 + 4);
                                LOWORD(v1728) = 257;
                                Add = llvm::IRBuilderBase::CreateFSub(v1732, v1466, v1467, &__src, 0);
                                goto LABEL_2641;
                              }

                              v1460 = *(v34 + 17) == 115;
                              v1461 = 10893;
LABEL_2956:
                              if (v1460)
                              {
                                v1380 = v1461 + 1;
                              }

                              else
                              {
                                v1380 = v1461;
                              }

LABEL_2959:
                              Declaration = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1380, 0, 0);
                              if (Declaration)
                              {
                                v1539 = *(Declaration + 24);
                              }

                              else
                              {
                                v1539 = 0;
                              }

                              v1540 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                              v1729[0] = *v1540;
                              v1729[1] = v1540[4];
                              *&v1730 = v1540[16];
                              LOWORD(v1728) = 257;
                              Add = llvm::IRBuilderBase::CreateCall(v1732, v1539, Declaration, v1729, 3, &__src, 0);
                              goto LABEL_2641;
                            }

                            v923 = *(v34 + 16);
                            v1376 = *v34 == 0x6D2E323135787661 && v34[1] == 0x2E78616D2E6B7361 && v923 == 112;
                            if (v1376 || ((v923 = v34[1], v10 = *(v34 + 16), *v34 == 0x6D2E323135787661) ? (v1377 = v923 == 0x2E6E696D2E6B7361) : (v1377 = 0), v1377 ? (v1378 = v10 == 112) : (v1378 = 0), v1378))
                            {
                              v1379 = 18;
                              if (v70 < 0x12)
                              {
                                v1379 = v70;
                              }

                              if (v70 - v1379 == 4 && *(v34 + v1379) == 842085678)
                              {
                                v1380 = llvm::UpgradeIntrinsicCall(llvm::CallBase *,llvm::Function *)::MinMaxTbl[2 * (*(v34 + 13) == 105) + (*(v34 + 17) == 100)];
                                goto LABEL_2959;
                              }
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v923 = *(v34 + 8);
                            v952 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6E637A6C2E6B7361;
                            if (v952 && v923 == 11892)
                            {
                              v1438 = *(v4 + 40);
                              __p = *v1718;
                              v1439 = llvm::Intrinsic::getDeclaration(v1438, 53, &__p, 1);
                              v1440 = v1439;
                              if (v1439)
                              {
                                v1441 = *(v1439 + 24);
                              }

                              else
                              {
                                v1441 = 0;
                              }

                              v1729[0] = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              v1729[1] = llvm::ConstantInt::get(*v1736 + 1920, 0);
                              LOWORD(v1728) = 257;
                              v1354 = llvm::IRBuilderBase::CreateCall(v1732, v1441, v1440, v1729, 2, &__src, 0);
                              ShuffleVector = v1354;
                              v1470 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              v1356 = *(v1470 + 8);
                              v1357 = *(v1470 + 4);
                              goto LABEL_2642;
                            }
                          }

                          if (v70 >= 0x10)
                          {
                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x6C6C73702E6B7361)
                            {
                              v1442 = *(v34 + 16);
                              if (v1442 == 105)
                              {
                                v1443 = *(v34 + 18);
                                if (*(v34 + 17) == 46)
                                {
                                  v1444 = 0;
                                }

                                else
                                {
                                  v1444 = 0;
                                  v1522 = 19;
                                  if (v1443 != 46)
                                  {
                                    v1522 = 20;
                                  }

                                  v1443 = *(v34 + v1522);
                                }

                                v1469 = 1;
                                goto LABEL_3061;
                              }

                              v1469 = v70 >= 0x13 && *(v34 + 18) == 105;
                              v1444 = v1442 == 118;
                              v1523 = *(v34 + 17);
                              if (v1442 == 46)
                              {
                                v1444 = 0;
                                v1443 = *(v34 + 17);
                                goto LABEL_3061;
                              }

                              v1443 = *(v34 + 18);
                              if (v1523 != 46)
                              {
                                if (v1443 == 46)
                                {
                                  v1443 = *(v34 + 19);
                                }

                                else
                                {
                                  v1443 = *(v34 + 20);
                                }

                                if (v1442 != 118)
                                {
                                  v1444 = 0;
                                  goto LABEL_3061;
                                }

                                switch(v1443)
                                {
                                  case 's':
                                    if (v1523 == 52)
                                    {
                                      v1586 = 10349;
                                    }

                                    else
                                    {
                                      if (v1523 != 56)
                                      {
                                        goto LABEL_3235;
                                      }

                                      v1586 = 10350;
                                    }

                                    break;
                                  case 'h':
                                    if (v1523 == 49)
                                    {
                                      v1586 = 10802;
                                    }

                                    else
                                    {
                                      if (v1523 != 56)
                                      {
                                        goto LABEL_3235;
                                      }

                                      v1586 = 10801;
                                    }

                                    break;
                                  case 'd':
                                    if (v1523 == 50)
                                    {
                                      v1586 = 10351;
                                    }

                                    else
                                    {
                                      if (v1523 == 52)
                                      {
                                        v1586 = 10352;
                                        break;
                                      }

LABEL_3235:
                                      v1586 = 10803;
                                    }

                                    break;
                                  default:
                                    goto LABEL_3235;
                                }

LABEL_3219:
                                InsertElement = UpgradeX86MaskedShift(v1732, v1718, v1586);
LABEL_1622:
                                AlignedLoad = InsertElement;
                                ShuffleVector = InsertElement;
                                goto LABEL_1623;
                              }

LABEL_3061:
                              if (*(v34 + v70 - 4) == 942813486)
                              {
                                if (v1443 == 113)
                                {
                                  v1590 = !v1469;
                                  v1591 = 11361;
                                  v1592 = 11364;
                                }

                                else
                                {
                                  v1590 = !v1469;
                                  if (v1443 == 100)
                                  {
                                    v1591 = 11360;
                                    v1592 = 11363;
                                  }

                                  else
                                  {
                                    v1591 = 11362;
                                    v1592 = 11365;
                                  }
                                }
                              }

                              else if (*(v34 + v70 - 4) == 909455918)
                              {
                                if (v1443 == 113)
                                {
                                  v1590 = !v1469;
                                  v1591 = 10344;
                                  v1592 = 10347;
                                }

                                else
                                {
                                  v1590 = !v1469;
                                  if (v1443 == 100)
                                  {
                                    v1591 = 10343;
                                    v1592 = 10346;
                                  }

                                  else
                                  {
                                    v1591 = 10345;
                                    v1592 = 10348;
                                  }
                                }
                              }

                              else
                              {
                                if (v1443 == 113)
                                {
                                  if (v1444)
                                  {
                                    v1587 = 10800;
                                  }

                                  else
                                  {
                                    v1587 = 10794;
                                  }

                                  v1588 = !v1469;
                                  v1589 = 10797;
                                  goto LABEL_3212;
                                }

                                if (v1443 == 100)
                                {
                                  if (v1444)
                                  {
                                    v1587 = 10799;
                                  }

                                  else
                                  {
                                    v1587 = 10793;
                                  }

                                  v1588 = !v1469;
                                  v1589 = 10796;
                                  goto LABEL_3212;
                                }

                                v1590 = !v1469;
                                v1591 = 10795;
                                v1592 = 10798;
                              }

LABEL_3216:
                              if (v1590)
                              {
                                v1586 = v1591;
                              }

                              else
                              {
                                v1586 = v1592;
                              }

                              goto LABEL_3219;
                            }

                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x6C7273702E6B7361)
                            {
                              v1462 = *(v34 + 16);
                              if (v1462 == 105)
                              {
                                v1463 = *(v34 + 18);
                                if (*(v34 + 17) == 46)
                                {
                                  v1464 = 0;
                                }

                                else
                                {
                                  v1464 = 0;
                                  v1552 = 19;
                                  if (v1463 != 46)
                                  {
                                    v1552 = 20;
                                  }

                                  v1463 = *(v34 + v1552);
                                }

                                v1503 = 1;
                              }

                              else
                              {
                                v1503 = v70 >= 0x13 && *(v34 + 18) == 105;
                                v1464 = v1462 == 118;
                                v1553 = *(v34 + 17);
                                if (v1462 == 46)
                                {
                                  v1464 = 0;
                                  v1463 = *(v34 + 17);
                                }

                                else
                                {
                                  v1463 = *(v34 + 18);
                                  if (v1553 != 46)
                                  {
                                    if (v1463 == 46)
                                    {
                                      v1463 = *(v34 + 19);
                                    }

                                    else
                                    {
                                      v1463 = *(v34 + 20);
                                    }

                                    if (v1462 == 118)
                                    {
                                      switch(v1463)
                                      {
                                        case 's':
                                          if (v1553 == 52)
                                          {
                                            v1586 = 10365;
                                            goto LABEL_3219;
                                          }

                                          if (v1553 == 56)
                                          {
                                            v1586 = 10366;
                                            goto LABEL_3219;
                                          }

                                          break;
                                        case 'h':
                                          if (v1553 == 49)
                                          {
                                            v1586 = 10830;
                                            goto LABEL_3219;
                                          }

                                          if (v1553 == 56)
                                          {
                                            v1586 = 10829;
                                            goto LABEL_3219;
                                          }

                                          break;
                                        case 'd':
                                          if (v1553 == 50)
                                          {
                                            v1586 = 10367;
                                            goto LABEL_3219;
                                          }

                                          if (v1553 == 52)
                                          {
                                            v1586 = 10368;
                                            goto LABEL_3219;
                                          }

                                          break;
                                      }

                                      v1586 = 10831;
                                      goto LABEL_3219;
                                    }

                                    v1464 = 0;
                                  }
                                }
                              }

                              if (*(v34 + v70 - 4) == 942813486)
                              {
                                if (v1463 == 113)
                                {
                                  v1590 = !v1503;
                                  v1591 = 11371;
                                  v1592 = 11374;
                                }

                                else
                                {
                                  v1590 = !v1503;
                                  if (v1463 == 100)
                                  {
                                    v1591 = 11370;
                                    v1592 = 11373;
                                  }

                                  else
                                  {
                                    v1591 = 11372;
                                    v1592 = 11375;
                                  }
                                }

                                goto LABEL_3216;
                              }

                              if (*(v34 + v70 - 4) == 909455918)
                              {
                                if (v1463 == 113)
                                {
                                  v1590 = !v1503;
                                  v1591 = 10360;
                                  v1592 = 10363;
                                }

                                else
                                {
                                  v1590 = !v1503;
                                  if (v1463 == 100)
                                  {
                                    v1591 = 10359;
                                    v1592 = 10362;
                                  }

                                  else
                                  {
                                    v1591 = 10361;
                                    v1592 = 10364;
                                  }
                                }

                                goto LABEL_3216;
                              }

                              if (v1463 == 113)
                              {
                                if (v1464)
                                {
                                  v1587 = 10828;
                                }

                                else
                                {
                                  v1587 = 10822;
                                }

                                v1588 = !v1503;
                                v1589 = 10825;
                              }

                              else
                              {
                                if (v1463 != 100)
                                {
                                  v1590 = !v1503;
                                  v1591 = 10823;
                                  v1592 = 10826;
                                  goto LABEL_3216;
                                }

                                if (v1464)
                                {
                                  v1587 = 10827;
                                }

                                else
                                {
                                  v1587 = 10821;
                                }

                                v1588 = !v1503;
                                v1589 = 10824;
                              }

                              goto LABEL_3212;
                            }

                            if (*v34 == 0x6D2E323135787661 && v34[1] == 0x617273702E6B7361)
                            {
                              v1428 = *(v34 + 16);
                              if (v1428 == 105)
                              {
                                v1429 = *(v34 + 18);
                                if (*(v34 + 17) == 46)
                                {
                                  v1430 = 0;
                                }

                                else
                                {
                                  v1430 = 0;
                                  v1582 = 19;
                                  if (v1429 != 46)
                                  {
                                    v1582 = 20;
                                  }

                                  v1429 = *(v34 + v1582);
                                }

                                v1541 = 1;
                              }

                              else
                              {
                                v1541 = v70 >= 0x13 && *(v34 + 18) == 105;
                                v1430 = v1428 == 118;
                                v1583 = *(v34 + 17);
                                if (v1428 == 46)
                                {
                                  v1430 = 0;
                                  v1429 = *(v34 + 17);
                                }

                                else
                                {
                                  v1429 = *(v34 + 18);
                                  if (v1583 != 46)
                                  {
                                    if (v1429 == 46)
                                    {
                                      v1429 = *(v34 + 19);
                                    }

                                    else
                                    {
                                      v1429 = *(v34 + 20);
                                    }

                                    if (v1428 == 118)
                                    {
                                      if (v1429 == 104)
                                      {
                                        if (v1583 == 49)
                                        {
                                          v1586 = 10819;
                                          goto LABEL_3219;
                                        }

                                        if (v1583 == 56)
                                        {
                                          v1586 = 10818;
                                          goto LABEL_3219;
                                        }
                                      }

                                      else if (v1429 == 115)
                                      {
                                        if (v1583 == 52)
                                        {
                                          v1586 = 10357;
                                          goto LABEL_3219;
                                        }

                                        if (v1583 == 56)
                                        {
                                          v1586 = 10358;
                                          goto LABEL_3219;
                                        }
                                      }

                                      v1586 = 10820;
                                      goto LABEL_3219;
                                    }

                                    v1430 = 0;
                                  }
                                }
                              }

                              if (*(v34 + v70 - 4) == 942813486)
                              {
                                if (v1429 != 113)
                                {
                                  v1590 = !v1541;
                                  if (v1429 == 100)
                                  {
                                    v1591 = 11366;
                                    v1592 = 11368;
                                  }

                                  else
                                  {
                                    v1591 = 11367;
                                    v1592 = 11369;
                                  }

                                  goto LABEL_3216;
                                }

                                if (v1430)
                                {
                                  v1587 = 10815;
                                }

                                else
                                {
                                  v1587 = 10805;
                                }

                                v1588 = !v1541;
                                v1589 = 10810;
                              }

                              else if (*(v34 + v70 - 4) == 909455918)
                              {
                                if (v1429 != 113)
                                {
                                  v1590 = !v1541;
                                  if (v1429 == 100)
                                  {
                                    v1591 = 10353;
                                    v1592 = 10355;
                                  }

                                  else
                                  {
                                    v1591 = 10354;
                                    v1592 = 10356;
                                  }

                                  goto LABEL_3216;
                                }

                                if (v1430)
                                {
                                  v1587 = 10816;
                                }

                                else
                                {
                                  v1587 = 10806;
                                }

                                v1588 = !v1541;
                                v1589 = 10811;
                              }

                              else if (v1429 == 113)
                              {
                                if (v1430)
                                {
                                  v1587 = 10817;
                                }

                                else
                                {
                                  v1587 = 10807;
                                }

                                v1588 = !v1541;
                                v1589 = 10812;
                              }

                              else
                              {
                                if (v1429 != 100)
                                {
                                  v1590 = !v1541;
                                  v1591 = 10808;
                                  v1592 = 10813;
                                  goto LABEL_3216;
                                }

                                if (v1430)
                                {
                                  v1587 = 10814;
                                }

                                else
                                {
                                  v1587 = 10804;
                                }

                                v1588 = !v1541;
                                v1589 = 10809;
                              }

LABEL_3212:
                              if (v1588)
                              {
                                v1586 = v1587;
                              }

                              else
                              {
                                v1586 = v1589;
                              }

                              goto LABEL_3219;
                            }
                          }

                          if ((i & 1) == 0)
                          {
                            v954 = *v34 == 0x6D2E323135787661 && v34[1] == 0x65766F6D2E6B7361;
                            if (v954 && *(v34 + 8) == 29486)
                            {
                              InsertElement = upgradeMaskedMove(v1732, v1718, v923, v10);
                              goto LABEL_1622;
                            }
                          }

                          if ((v513 & 1) == 0 && *v34 == 0x632E323135787661 && *(v34 + 7) == 0x326B73616D747663)
                          {
                            InsertElement = UpgradeMaskToInt(v1732, v1718);
                            goto LABEL_1622;
                          }

                          if (v70 >= 9 && *(v34 + v70 - 9) == 0x7164746E766F6D2ELL && *(v34 + v70 - 1) == 97)
                          {
                            v1490 = *(v4 + 40);
                            v1491 = llvm::ConstantInt::get(*v6 + 1992, 1);
                            __src = llvm::ValueAsMetadata::get(v1491, v1492);
                            Impl = llvm::MDTuple::getImpl(v6, &__src, 1uLL, 0, 1);
                            v1494 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                            v1495 = llvm::PointerType::get(*v1718, 0);
                            __src = "cast";
                            LOWORD(v1728) = 259;
                            v1496 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1494, v1495, &__src);
                            v1497 = *v1718;
                            v1498 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                            LOWORD(v1728) = 257;
                            AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v1732, v1497, v1496, (63 - __clz(v1498 >> 3)) | 0x100u, 0, &__src);
                            MDKindID = llvm::Module::getMDKindID(v1490, "nontemporal", 0xBuLL);
                            llvm::Instruction::setMetadata(AlignedLoad, MDKindID, Impl);
                            ShuffleVector = AlignedLoad;
LABEL_1623:
                            v7 = v3;
LABEL_622:
                            if (!AlignedLoad)
                            {
LABEL_914:
                              v331 = v1718;
                              goto LABEL_915;
                            }

LABEL_912:
                            v260 = v1718;
                            v261 = AlignedLoad;
LABEL_913:
                            llvm::Value::doRAUW(v260, v261, 1, v96);
                            goto LABEL_914;
                          }

                          if ((v666 & 1) == 0 && (*v34 == 0x616D66762E616D66 ? (v958 = *(v34 + 3) == 0x2E6464616D66762ELL) : (v958 = 0), v958 || (*v34 == 0x736D66762E616D66 ? (v959 = *(v34 + 3) == 0x2E6275736D66762ELL) : (v959 = 0), v959)) || (v662 & 1) == 0 && (*v34 == 0x6D6E66762E616D66 ? (v960 = *(v34 + 2) == 778331233) : (v960 = 0), v960 || (*v34 == 0x6D6E66762E616D66 ? (v961 = *(v34 + 2) == 778204531) : (v961 = 0), v961)))
                          {
                            v1445 = *(v34 + 6);
                            v1446 = 7;
                            if (v1445 == 110)
                            {
                              v1446 = 8;
                            }

                            v1447 = 11;
                            if (v1445 == 110)
                            {
                              v1447 = 12;
                            }

                            v1448 = *(v34 + v1447);
                            v1449 = *(v34 + v1446);
                            v1450 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            Element = *v1450;
                            v1729[0] = *v1450;
                            v1452 = *(v1450 + 4);
                            v1729[1] = v1452;
                            v1453 = *(v1450 + 8);
                            *&v1730 = v1453;
                            if (v1448 == 115)
                            {
                              LOWORD(v1728) = 257;
                              Element = llvm::IRBuilderBase::CreateExtractElement(v1732, Element, &__src, v10);
                              v1729[0] = Element;
                              LOWORD(v1728) = 257;
                              v1455 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1452, &__src, v1454);
                              v1729[1] = v1455;
                              LOWORD(v1728) = 257;
                              v1453 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1453, &__src, v1456);
                              *&v1730 = v1453;
                              if (v1445 == 110)
                              {
                                LOWORD(v1728) = 257;
                                v1729[1] = llvm::IRBuilderBase::CreateFNeg(v1732, v1455, &__src, 0);
                              }
                            }

                            else if (v1445 == 110)
                            {
                              LOWORD(v1728) = 257;
                              Element = llvm::IRBuilderBase::CreateFNeg(v1732, Element, &__src, 0);
                              v1729[0] = Element;
                            }

                            if (v1449 == 115)
                            {
                              LOWORD(v1728) = 257;
                              *&v1730 = llvm::IRBuilderBase::CreateFNeg(v1732, v1453, &__src, 0);
                            }

                            v1471 = *(*(*(v1718 + 5) + 56) + 40);
                            __p = *Element;
                            v1472 = llvm::Intrinsic::getDeclaration(v1471, 142, &__p, 1);
                            if (v1472)
                            {
                              v1473 = *(v1472 + 24);
                            }

                            else
                            {
                              v1473 = 0;
                            }

                            LOWORD(v1728) = 257;
                            v1500 = llvm::IRBuilderBase::CreateCall(v1732, v1473, v1472, v1729, 3, &__src, 0);
                            ShuffleVector = v1500;
                            if (v1448 == 115)
                            {
                              v1502 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                              LOWORD(v1728) = 257;
                              ShuffleVector = llvm::IRBuilderBase::CreateInsertElement(v1732, v1502, v1500, &__src, v1501);
                            }

LABEL_2266:
                            v7 = v3;
LABEL_1395:
                            AlignedLoad = ShuffleVector;
                            goto LABEL_622;
                          }

                          if (!v653 && *v34 == 0x6D66762E34616D66 && *(v34 + 5) == 0x732E6464616D6676)
                          {
                            v1542 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v1543 = *v1542;
                            v1544 = *(v1542 + 4);
                            v1545 = *(v1542 + 8);
                            LOWORD(v1728) = 257;
                            v1546 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1543, &__src, v10);
                            v1729[0] = v1546;
                            LOWORD(v1728) = 257;
                            v1729[1] = llvm::IRBuilderBase::CreateExtractElement(v1732, v1544, &__src, v1547);
                            LOWORD(v1728) = 257;
                            *&v1730 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1545, &__src, v1548);
                            v1549 = *(*(*(v1718 + 5) + 56) + 40);
                            __p = *v1546;
                            v1550 = llvm::Intrinsic::getDeclaration(v1549, 142, &__p, 1);
                            if (v1550)
                            {
                              v1551 = *(v1550 + 24);
                            }

                            else
                            {
                              v1551 = 0;
                            }

                            LOWORD(v1728) = 257;
                            ShuffleVector = llvm::IRBuilderBase::CreateCall(v1732, v1551, v1550, v1729, 3, &__src, 0);
                            v1036 = llvm::Constant::getNullValue(*v1718, v1593);
                            v1035 = ShuffleVector;
                            LOWORD(v1728) = 257;
                            goto LABEL_2143;
                          }

                          if (!v664)
                          {
                            v963 = *v34 == 0x6D2E323135787661 && v34[1] == 0x616D66762E6B7361;
                            if (v963 && *(v34 + 4) == 1932420196)
                            {
                              goto LABEL_2909;
                            }
                          }

                          if ((v922 & 1) == 0)
                          {
                            v1504 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D66762E7A6B7361;
                            if (v1504 && *(v34 + 13) == 0x732E6464616D6676)
                            {
                              goto LABEL_2909;
                            }

                            v1506 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D66762E336B7361;
                            if (v1506 && *(v34 + 13) == 0x732E6464616D6676)
                            {
                              goto LABEL_2909;
                            }

                            v1508 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D66762E336B7361;
                            if (v1508 && *(v34 + 13) == 0x732E6275736D6676)
                            {
                              goto LABEL_2909;
                            }
                          }

                          if ((v76 & 1) == 0)
                          {
                            v965 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6E66762E336B7361;
                            if (v965 && *(v34 + 14) == 0x732E6275736D6E66)
                            {
LABEL_2909:
                              v1510 = *(v34 + 11);
                              v1511 = v1510 == 51 || v1510 == 122;
                              v1512 = v1511;
                              v1513 = 12;
                              if (v1511)
                              {
                                v1513 = 13;
                              }

                              if (v70 < v1513)
                              {
                                v1513 = v70;
                              }

                              v1514 = v34 + v1513;
                              v1713 = (v34 + v1513);
                              v1714 = v70 - v1513;
                              v1515 = *(v34 + v1513 + 2);
                              v1516 = 3;
                              if (v1515 == 110)
                              {
                                v1516 = 4;
                              }

                              v1517 = v1514[v1516];
                              v1518 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                              FNeg = *v1518;
                              v1520 = *(v1518 + 4);
                              v1521 = *(v1518 + 8);
                              if (v1512 == 1 && v1515 == 110)
                              {
                                LOWORD(v1728) = 257;
                                FNeg = llvm::IRBuilderBase::CreateFNeg(v1732, FNeg, &__src, 0);
                                goto LABEL_2939;
                              }

                              if (v1515 == 110)
                              {
LABEL_2939:
                                if (v1510 != 51 && v1510 != 122)
                                {
                                  LOWORD(v1728) = 257;
                                  v1520 = llvm::IRBuilderBase::CreateFNeg(v1732, v1520, &__src, 0);
                                }
                              }

                              if (v1517 == 115)
                              {
                                LOWORD(v1728) = 257;
                                v1521 = llvm::IRBuilderBase::CreateFNeg(v1732, v1521, &__src, 0);
                              }

                              LOWORD(v1728) = 257;
                              v1524 = llvm::IRBuilderBase::CreateExtractElement(v1732, FNeg, &__src, v10);
                              LOWORD(v1728) = 257;
                              v1526 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1520, &__src, v1525);
                              LOWORD(v1728) = 257;
                              v1528 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1521, &__src, v1527);
                              v1529 = v1528;
                              v1530 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[16];
                              if (*(v1530 + 16) != 16)
                              {
                                goto LABEL_2950;
                              }

                              v1531 = (v1530 + 24);
                              if (*(v1530 + 32) >= 0x41u)
                              {
                                v1531 = *v1531;
                              }

                              if (*v1531 == 4)
                              {
                                v1532 = *(*(*(v1718 + 5) + 56) + 40);
                                __src = *v1524;
                                v1533 = llvm::Intrinsic::getDeclaration(v1532, 142, &__src, 1);
                                v1534 = v1533;
                                if (v1533)
                                {
                                  v1535 = *(v1533 + 24);
                                }

                                else
                                {
                                  v1535 = 0;
                                }

                                v1729[0] = v1524;
                                v1729[1] = v1526;
                                *&v1730 = v1529;
                                LOWORD(v1728) = 257;
                                v1574 = 3;
                              }

                              else
                              {
LABEL_2950:
                                v1729[0] = v1524;
                                v1729[1] = v1526;
                                *&v1730 = v1528;
                                *(&v1730 + 1) = v1530;
                                if (*(v1713 + v1714 - 1) == 100)
                                {
                                  v1536 = 10907;
                                }

                                else
                                {
                                  v1536 = 10906;
                                }

                                v1537 = llvm::Intrinsic::getDeclaration(*(*(*(v1718 + 5) + 56) + 40), v1536, 0, 0);
                                v1534 = v1537;
                                if (v1537)
                                {
                                  v1535 = *(v1537 + 24);
                                }

                                else
                                {
                                  v1535 = 0;
                                }

                                LOWORD(v1728) = 257;
                                v1574 = 4;
                              }

                              v1595 = llvm::IRBuilderBase::CreateCall(v1732, v1535, v1534, v1729, v1574, &__src, 0);
                              ShuffleVector = v1595;
                              if (v1510 == 122)
                              {
                                v1597 = llvm::Constant::getNullValue(*v1595, v1596);
                                goto LABEL_3130;
                              }

                              if (v1510 == 51)
                              {
                                v1598 = v1529;
                              }

                              else
                              {
                                v1598 = v1524;
                              }

                              if (v1510 == 51 && v1517 == 115)
                              {
                                v1599 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                                LOWORD(v1728) = 257;
                                v1597 = llvm::IRBuilderBase::CreateExtractElement(v1732, v1599, &__src, v1598);
LABEL_3130:
                                v1598 = v1597;
                              }

                              v1035 = EmitX86ScalarSelect(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[12], ShuffleVector, v1598);
                              ShuffleVector = v1035;
                              v1036 = *(v1718 + 8 * (v1510 == 51) + -4 * (*(v1718 + 5) & 0x7FFFFFF));
                              LOWORD(v1728) = 257;
LABEL_2143:
                              InsertElement = llvm::IRBuilderBase::CreateInsertElement(v1732, v1036, v1035, &__src, v1034);
                              goto LABEL_1622;
                            }
                          }

                          if (!v664)
                          {
                            v967 = *v34 == 0x6D2E323135787661 && v34[1] == 0x616D66762E6B7361;
                            if (v967 && *(v34 + 4) == 1882088548)
                            {
                              goto LABEL_3007;
                            }
                          }

                          if ((v922 & 1) == 0)
                          {
                            v1554 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D6E66762E6B7361;
                            if (v1554 && *(v34 + 13) == 0x702E6464616D6E66)
                            {
                              goto LABEL_3007;
                            }

                            v1556 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D6E66762E6B7361;
                            if (v1556 && *(v34 + 13) == 0x702E6275736D6E66)
                            {
                              goto LABEL_3007;
                            }

                            v1558 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D66762E336B7361;
                            if (v1558 && *(v34 + 13) == 0x702E6464616D6676)
                            {
                              goto LABEL_3007;
                            }

                            v1560 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D66762E336B7361;
                            if (v1560 && *(v34 + 13) == 0x702E6275736D6676)
                            {
                              goto LABEL_3007;
                            }
                          }

                          if ((v76 & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v969 = v34[1] == 0x6E66762E336B7361) : (v969 = 0), v969 ? (v970 = *(v34 + 14) == 0x702E6275736D6E66) : (v970 = 0), v970) || (v922 & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v971 = v34[1] == 0x6D66762E7A6B7361) : (v971 = 0), v971 ? (v972 = *(v34 + 13) == 0x702E6464616D6676) : (v972 = 0), v972))
                          {
LABEL_3007:
                            v1562 = *(v34 + 11);
                            v1563 = v1562 == 51 || v1562 == 122;
                            v1564 = v1563;
                            v1565 = 12;
                            if (v1563)
                            {
                              v1565 = 13;
                            }

                            if (v70 < v1565)
                            {
                              v1565 = v70;
                            }

                            v1566 = v34 + v1565;
                            v1713 = (v34 + v1565);
                            v1714 = v70 - v1565;
                            v1567 = *(v34 + v1565 + 2);
                            v1568 = 3;
                            if (v1567 == 110)
                            {
                              v1568 = 4;
                            }

                            v1569 = v1566[v1568];
                            v1570 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                            v1571 = *v1570;
                            v1572 = *(v1570 + 4);
                            v1573 = *(v1570 + 8);
                            if (v1564 == 1 && v1567 == 110)
                            {
                              LOWORD(v1728) = 257;
                              v1571 = llvm::IRBuilderBase::CreateFNeg(v1732, v1571, &__src, 0);
                              goto LABEL_3025;
                            }

                            if (v1567 == 110)
                            {
LABEL_3025:
                              if (v1562 != 51 && v1562 != 122)
                              {
                                LOWORD(v1728) = 257;
                                v1572 = llvm::IRBuilderBase::CreateFNeg(v1732, v1572, &__src, 0);
                              }
                            }

                            if (v1569 == 115)
                            {
                              LOWORD(v1728) = 257;
                              v1573 = llvm::IRBuilderBase::CreateFNeg(v1732, v1573, &__src, 0);
                            }

                            v1575 = v1718;
                            if (((llvm::CallBase::arg_end(v1718) - (v1575 - 32 * (*(v1575 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0xA0)
                            {
                              goto LABEL_3035;
                            }

                            v1576 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[16];
                            if (*(v1576 + 16) != 16)
                            {
                              goto LABEL_3047;
                            }

                            v1577 = (v1576 + 24);
                            if (*(v1576 + 32) >= 0x41u)
                            {
                              v1577 = *v1577;
                            }

                            if (*v1577 == 4)
                            {
LABEL_3035:
                              v1578 = *(*(*(v1718 + 5) + 56) + 40);
                              __src = *v1571;
                              v1579 = llvm::Intrinsic::getDeclaration(v1578, 142, &__src, 1);
                              v1580 = v1579;
                              if (v1579)
                              {
                                v1581 = *(v1579 + 24);
                              }

                              else
                              {
                                v1581 = 0;
                              }

                              v1729[0] = v1571;
                              v1729[1] = v1572;
                              *&v1730 = v1573;
                              LOWORD(v1728) = 257;
                              v1594 = 3;
                            }

                            else
                            {
LABEL_3047:
                              if (*(v1713 + v1714 - 5) == 115)
                              {
                                v1584 = 10909;
                              }

                              else
                              {
                                v1584 = 10908;
                              }

                              v1585 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1584, 0, 0);
                              v1580 = v1585;
                              if (v1585)
                              {
                                v1581 = *(v1585 + 24);
                              }

                              else
                              {
                                v1581 = 0;
                              }

                              v1729[0] = v1571;
                              v1729[1] = v1572;
                              *&v1730 = v1573;
                              *(&v1730 + 1) = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[16];
                              LOWORD(v1728) = 257;
                              v1594 = 4;
                            }

                            v1354 = llvm::IRBuilderBase::CreateCall(v1732, v1581, v1580, v1729, v1594, &__src, 0);
                            ShuffleVector = v1354;
                            v1617 = v1718;
                            if (v1562 == 122)
                            {
                              v1618 = llvm::Constant::getNullValue(*v1718, v1616);
                              goto LABEL_3173;
                            }

                            v1620 = *(v1718 + 5) & 0x7FFFFFF;
                            v1619 = -v1620;
                            v1621 = v1718 - 32 * v1620;
                            if (v1562 == 51)
                            {
                              v1357 = *(v1621 + 8);
                              goto LABEL_3416;
                            }

LABEL_3415:
                            v1357 = *v1621;
                            goto LABEL_3416;
                          }

                          if ((v513 & 1) == 0 && *v34 == 0x736D66762E616D66 && *(v34 + 7) == 0x702E646461627573)
                          {
                            v1629 = v1718;
                            v1630 = *v1718;
                            v1632 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                            if (v1631)
                            {
                              v1629 = v1718;
                              v1630 = *v1718;
                            }

                            if ((*(v1630 + 2) & 0xFE) == 0x12)
                            {
                              v1630 = **(v1630 + 2);
                            }

                            v1633 = llvm::Type::getPrimitiveSizeInBits(v1630);
                            if (v1632 == 128 && v1633 == 32)
                            {
                              v1634 = 11154;
                            }

                            else if (v1632 == 256 && v1633 == 32)
                            {
                              v1634 = 11155;
                            }

                            else if (v1633 == 64 && v1632 == 128)
                            {
                              v1634 = 11152;
                            }

                            else
                            {
                              v1634 = 11153;
                            }

                            v1669 = (v1629 - 32 * (*(v1629 + 5) & 0x7FFFFFF));
                            v1729[0] = *v1669;
                            v1729[1] = v1669[4];
                            v1670 = v1669[8];
                            LOWORD(v1728) = 257;
                            *&v1730 = llvm::IRBuilderBase::CreateFNeg(v1732, v1670, &__src, 0);
                            v1671 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1634, 0, 0);
                            v1222 = v1671;
                            if (v1671)
                            {
                              v1223 = *(v1671 + 24);
                            }

                            else
                            {
                              v1223 = 0;
                            }

                            LOWORD(v1728) = 257;
                            goto LABEL_2732;
                          }

                          if ((v650 & 1) == 0)
                          {
                            v974 = *v34 == 0x6D2E323135787661 && v34[1] == 0x616D66762E6B7361;
                            if (v974 && *(v34 + 15) == 0x702E627573646461)
                            {
                              goto LABEL_3154;
                            }
                          }

                          if (v70 >= 0x18)
                          {
                            v1600 = *v34 == 0x6D2E323135787661 && v34[1] == 0x6D66762E336B7361;
                            v1601 = v1600 && v34[2] == 0x702E627573646461;
                            if (v1601 || (*v34 == 0x6D2E323135787661 ? (v1602 = v34[1] == 0x6D66762E7A6B7361) : (v1602 = 0), v1602 ? (v1603 = v34[2] == 0x702E627573646461) : (v1603 = 0), v1603 || (*v34 == 0x6D2E323135787661 ? (v1604 = v34[1] == 0x6D66762E336B7361) : (v1604 = 0), v1604 ? (v1605 = v34[2] == 0x702E646461627573) : (v1605 = 0), v1605)))
                            {
LABEL_3154:
                              v1606 = *(v34 + 11);
                              v1607 = v1606 == 122 || v1606 == 51;
                              v1608 = 12;
                              if (v1607)
                              {
                                v1608 = 13;
                              }

                              if (v70 < v1608)
                              {
                                v1608 = v70;
                              }

                              v1713 = (v34 + v1608);
                              v1714 = v70 - v1608;
                              v1609 = *(v34 + v1608 + 3);
                              v1610 = v1718;
                              if (((llvm::CallBase::arg_end(v1718) - (v1610 - 32 * (*(v1610 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0xA0)
                              {
                                if (*(v1713 + v1714 - 5) == 115)
                                {
                                  v1611 = 10911;
                                }

                                else
                                {
                                  v1611 = 10910;
                                }

                                v1612 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                                v1729[0] = *v1612;
                                v1729[1] = v1612[4];
                                v1613 = v1612[8];
                                *&v1730 = v1613;
                                *(&v1730 + 1) = v1612[16];
                                if (v1609 == 115)
                                {
                                  LOWORD(v1728) = 257;
                                  *&v1730 = llvm::IRBuilderBase::CreateFNeg(v1732, v1613, &__src, 0);
                                }

                                v1614 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1611, 0, 0);
                                if (v1614)
                                {
                                  v1615 = *(v1614 + 24);
                                }

                                else
                                {
                                  v1615 = 0;
                                }

                                LOWORD(v1728) = 257;
                                ShuffleVector = llvm::IRBuilderBase::CreateCall(v1732, v1615, v1614, v1729, 4, &__src, 0);
                              }

                              else
                              {
                                v1622 = *(*v1718 + 32);
                                v1623 = *(*v1718 + 32);
                                v1624 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                __p = *v1624;
                                v1721 = *(v1624 + 4);
                                v1722 = *(v1624 + 8);
                                v1625 = *(*(*(v1718 + 5) + 56) + 40);
                                __src = *__p;
                                v1626 = llvm::Intrinsic::getDeclaration(v1625, 142, &__src, 1);
                                v1627 = v1626;
                                if (v1626)
                                {
                                  v1628 = *(v1626 + 24);
                                }

                                else
                                {
                                  v1628 = 0;
                                }

                                LOWORD(v1728) = 257;
                                v1637 = llvm::IRBuilderBase::CreateCall(v1732, v1628, v1626, &__p, 3, &__src, 0);
                                LOWORD(v1728) = 257;
                                v1722 = llvm::IRBuilderBase::CreateFNeg(v1732, v1722, &__src, 0);
                                if (v1627)
                                {
                                  v1638 = *(v1627 + 24);
                                }

                                else
                                {
                                  v1638 = 0;
                                }

                                LOWORD(v1728) = 257;
                                v1639 = llvm::IRBuilderBase::CreateCall(v1732, v1638, v1627, &__p, 3, &__src, 0);
                                if (v1609 == 115)
                                {
                                  v1640 = v1637;
                                }

                                else
                                {
                                  v1640 = v1639;
                                }

                                if (v1609 == 115)
                                {
                                  v1637 = v1639;
                                }

                                __src = &v1726;
                                v1725 = 0x2000000000;
                                llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1622);
                                v1641 = __src;
                                if (v1623)
                                {
                                  v1642 = (v1622 + 3) & 0x1FFFFFFFCLL;
                                  v1643 = vdupq_n_s64(v1622 - 1);
                                  v1644 = v1622 + 1;
                                  v1645 = xmmword_2750C1830;
                                  v1646 = xmmword_2750C1210;
                                  v1647 = __src + 8;
                                  v1648 = 3;
                                  v1649 = vdupq_n_s64(4uLL);
                                  do
                                  {
                                    v1650 = vmovn_s64(vcgeq_u64(v1643, v1646));
                                    if (vuzp1_s16(v1650, *v1643.i8).u8[0])
                                    {
                                      *(v1647 - 2) = v1648 - 3;
                                    }

                                    if (vuzp1_s16(v1650, *&v1643).i8[2])
                                    {
                                      *(v1647 - 1) = v1644;
                                    }

                                    if (vuzp1_s16(*&v1643, vmovn_s64(vcgeq_u64(v1643, *&v1645))).i32[1])
                                    {
                                      *v1647 = v1648 - 1;
                                      v1647[1] = v1644 + 2;
                                    }

                                    v1645 = vaddq_s64(v1645, v1649);
                                    v1646 = vaddq_s64(v1646, v1649);
                                    v1648 += 4;
                                    v1644 += 4;
                                    v1647 += 4;
                                    v1642 -= 4;
                                  }

                                  while (v1642);
                                }

                                v1731 = 257;
                                ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1640, v1637, v1641, v1725, v1729);
                                if (__src != &v1726)
                                {
                                  free(__src);
                                }
                              }

                              v1651 = v1718;
                              if (v1606 == 122)
                              {
                                v1357 = llvm::Constant::getNullValue(*v1718, v1636);
                                v1651 = v1718;
                                v1652 = -(*(v1718 + 5) & 0x7FFFFFF);
                              }

                              else
                              {
                                v1653 = *(v1718 + 5) & 0x7FFFFFF;
                                v1652 = -v1653;
                                v1654 = v1718 - 32 * v1653;
                                if (v1606 == 51)
                                {
                                  v1357 = *(v1654 + 8);
                                }

                                else
                                {
                                  v1357 = *v1654;
                                }
                              }

                              v1356 = *(v1651 + 4 * v1652 + 12);
                              v1354 = ShuffleVector;
                              goto LABEL_2642;
                            }
                          }

                          if ((v922 & 1) == 0)
                          {
                            v976 = *v34 == 0x6D2E323135787661 && v34[1] == 0x726574702E6B7361;
                            if (v976 && *(v34 + 13) == 0x2E676F6C6E726574)
                            {
                              goto LABEL_3282;
                            }
                          }

                          if ((v76 & 1) == 0)
                          {
                            v978 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x6574702E7A6B7361;
                            if (v978 && *(v1713 + 14) == 0x2E676F6C6E726574)
                            {
                              v34 = v1713;
LABEL_3282:
                              v1655 = *(v34 + 11);
                              v1656 = v1718;
                              v1657 = *v1718;
                              v1659 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                              if (v1658)
                              {
                                v1656 = v1718;
                                v1657 = *v1718;
                              }

                              if ((*(v1657 + 2) & 0xFE) == 0x12)
                              {
                                v1657 = **(v1657 + 2);
                              }

                              v1660 = llvm::Type::getPrimitiveSizeInBits(v1657);
                              if (v1659 == 128 && v1660 == 32)
                              {
                                v1661 = 10832;
                              }

                              else if (v1659 == 256 && v1660 == 32)
                              {
                                v1661 = 10833;
                              }

                              else if (v1659 == 512 && v1660 == 32)
                              {
                                v1661 = 10834;
                              }

                              else if (v1659 == 128 && v1660 == 64)
                              {
                                v1661 = 10835;
                              }

                              else if (v1660 == 64 && v1659 == 256)
                              {
                                v1661 = 10836;
                              }

                              else
                              {
                                v1661 = 10837;
                              }

                              v1680 = (v1656 - 32 * (*(v1656 + 5) & 0x7FFFFFF));
                              v1729[0] = *v1680;
                              v1729[1] = v1680[4];
                              *&v1730 = v1680[8];
                              *(&v1730 + 1) = v1680[12];
                              v1681 = llvm::Intrinsic::getDeclaration(*(*(*(v1656 + 5) + 56) + 40), v1661, 0, 0);
                              if (v1681)
                              {
                                v1682 = *(v1681 + 24);
                              }

                              else
                              {
                                v1682 = 0;
                              }

                              LOWORD(v1728) = 257;
                              v1683 = llvm::IRBuilderBase::CreateCall(v1732, v1682, v1681, v1729, 4, &__src, 0);
                              ShuffleVector = v1683;
                              v1685 = v1718;
                              if (v1655 == 122)
                              {
                                v1357 = llvm::ConstantAggregateZero::get(*v1718, v1684);
                                v1685 = v1718;
                                v1354 = ShuffleVector;
                                v1686 = -(*(v1718 + 5) & 0x7FFFFFF);
                              }

                              else
                              {
                                v1354 = v1683;
                                v1687 = *(v1718 + 5) & 0x7FFFFFF;
                                v1686 = -v1687;
                                v1357 = *(v1718 - 4 * v1687);
                              }

                              v1356 = *(v1685 + 4 * v1686 + 16);
                              goto LABEL_2642;
                            }
                          }

                          if (!v664 && ((v980 = v1713, *v1713 == 0x6D2E323135787661) ? (v981 = v1713[1] == 0x616D70762E6B7361) : (v981 = 0), v981 ? (v982 = *(v1713 + 4) == 842359908) : (v982 = 0), v982) || (v922 & 1) == 0 && ((v980 = v1713, *v1713 == 0x6D2E323135787661) ? (v983 = v1713[1] == 0x6D70762E7A6B7361) : (v983 = 0), v983 ? (v984 = *(v1713 + 13) == 0x32356464616D7076) : (v984 = 0), v984))
                          {
                            v1635 = v980[20] == 104 || v980[21] == 104;
                            v1662 = v980[11];
                            v1673 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                            if (v1672)
                            {
                            }

                            if (v1673 == 128 && !v1635)
                            {
                              v1667 = 10953;
                              goto LABEL_3409;
                            }

                            if (v1673 == 256 && !v1635)
                            {
                              v1667 = 10954;
                              goto LABEL_3409;
                            }

                            if (v1673 == 512 && !v1635)
                            {
                              v1667 = 10955;
                              goto LABEL_3409;
                            }

                            v1674 = !v1635;
                            if (v1673 == 128 && !v1674)
                            {
                              v1667 = 10950;
                              goto LABEL_3409;
                            }

                            v1697 = ((v1673 != 256) | v1674 & 1) == 0;
                            v1698 = 10951;
LABEL_3406:
                            if (v1697)
                            {
                              v1667 = v1698;
                            }

                            else
                            {
                              v1667 = v1698 + 1;
                            }

                            goto LABEL_3409;
                          }

                          if ((v650 & 1) == 0)
                          {
                            v985 = v1713;
                            v986 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x726570762E6B7361;
                            if (v986 && *(v1713 + 15) == 0x2E72617632696D72)
                            {
                              goto LABEL_3252;
                            }

                            v988 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x726570762E6B7361;
                            if (v988 && *(v1713 + 15) == 0x2E72617632746D72)
                            {
                              goto LABEL_3252;
                            }
                          }

                          if (v70 >= 0x18)
                          {
                            v985 = v1713;
                            v990 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x6570762E7A6B7361;
                            if (v990 && v1713[2] == 0x2E72617632746D72)
                            {
LABEL_3252:
                              InsertElement = UpgradeX86VPERMT2Intrinsics(v1732, v1718, *(v985 + 11) == 122, *(v985 + 17) == 105);
                              goto LABEL_1622;
                            }
                          }

                          if ((v922 & 1) == 0)
                          {
                            v992 = v1713;
                            v993 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x706470762E6B7361;
                            if (v993 && *(v1713 + 13) == 0x2E64737562706470)
                            {
                              goto LABEL_3295;
                            }
                          }

                          if ((v76 & 1) == 0)
                          {
                            v992 = v1713;
                            v995 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x6470762E7A6B7361;
                            if (v995 && *(v1713 + 14) == 0x2E64737562706470)
                            {
                              goto LABEL_3295;
                            }

                            v997 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x706470762E6B7361;
                            if (v997 && *(v1713 + 14) == 0x2E73647375627064)
                            {
                              goto LABEL_3295;
                            }
                          }

                          if ((v650 & 1) == 0)
                          {
                            v992 = v1713;
                            v999 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x6470762E7A6B7361;
                            if (v999 && *(v1713 + 15) == 0x2E73647375627064)
                            {
LABEL_3295:
                              v1662 = *(v992 + 11);
                              v1663 = 20;
                              if (v1662 == 122)
                              {
                                v1663 = 21;
                              }

                              v1664 = *(v992 + v1663);
                              v1666 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                              if (v1665)
                              {
                              }

                              if (v1666 != 128 || v1664 == 115)
                              {
                                if (v1666 == 256 && v1664 != 115)
                                {
                                  v1667 = 10919;
                                  goto LABEL_3409;
                                }

                                if (v1666 == 512 && v1664 != 115)
                                {
                                  v1667 = 10920;
                                  goto LABEL_3409;
                                }

                                if (v1666 == 128 && v1664 == 115)
                                {
                                  v1667 = 10921;
                                  goto LABEL_3409;
                                }

                                v1697 = v1666 == 256 && v1664 == 115;
                                v1698 = 10922;
                                goto LABEL_3406;
                              }

                              v1667 = 10918;
LABEL_3409:
                              v1706 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                              v1729[0] = *v1706;
                              v1729[1] = v1706[4];
                              *&v1730 = v1706[8];
                              v1707 = llvm::Intrinsic::getDeclaration(*(*(*(v1718 + 5) + 56) + 40), v1667, 0, 0);
                              if (v1707)
                              {
                                v1708 = *(v1707 + 24);
                              }

                              else
                              {
                                v1708 = 0;
                              }

                              LOWORD(v1728) = 257;
                              v1709 = llvm::IRBuilderBase::CreateCall(v1732, v1708, v1707, v1729, 3, &__src, 0);
                              ShuffleVector = v1709;
                              v1617 = v1718;
                              if (v1662 != 122)
                              {
                                v1354 = v1709;
                                v1711 = *(v1718 + 5) & 0x7FFFFFF;
                                v1619 = -v1711;
                                v1621 = v1718 - 32 * v1711;
                                goto LABEL_3415;
                              }

                              v1618 = llvm::ConstantAggregateZero::get(*v1718, v1710);
LABEL_3173:
                              v1357 = v1618;
                              v1617 = v1718;
                              v1354 = ShuffleVector;
                              v1619 = -(*(v1718 + 5) & 0x7FFFFFF);
LABEL_3416:
                              v1356 = *(v1617 + 4 * v1619 + 12);
LABEL_2642:
                              InsertElement = EmitX86Select(v1732, v1356, v1354, v1357);
                              goto LABEL_1622;
                            }
                          }

                          if ((v922 & 1) == 0)
                          {
                            v1001 = v1713;
                            v1002 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x706470762E6B7361;
                            if (v1002 && *(v1713 + 13) == 0x2E64737377706470)
                            {
                              goto LABEL_3333;
                            }
                          }

                          if ((v76 & 1) == 0)
                          {
                            v1001 = v1713;
                            v1004 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x6470762E7A6B7361;
                            if (v1004 && *(v1713 + 14) == 0x2E64737377706470)
                            {
                              goto LABEL_3333;
                            }

                            v1006 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x706470762E6B7361;
                            if (v1006 && *(v1713 + 14) == 0x2E73647373777064)
                            {
                              goto LABEL_3333;
                            }
                          }

                          if ((v650 & 1) == 0)
                          {
                            v1001 = v1713;
                            v1008 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x6470762E7A6B7361;
                            if (v1008 && *(v1713 + 15) == 0x2E73647373777064)
                            {
LABEL_3333:
                              v1662 = *(v1001 + 11);
                              v1675 = 20;
                              if (v1662 == 122)
                              {
                                v1675 = 21;
                              }

                              v1676 = *(v1001 + v1675);
                              v1678 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                              if (v1677)
                              {
                              }

                              if (v1678 == 128 && v1676 != 115)
                              {
                                v1667 = 10924;
                                goto LABEL_3409;
                              }

                              if (v1678 == 256 && v1676 != 115)
                              {
                                v1667 = 10925;
                                goto LABEL_3409;
                              }

                              if (v1678 == 512 && v1676 != 115)
                              {
                                v1667 = 10926;
                                goto LABEL_3409;
                              }

                              if (v1678 == 128 && v1676 == 115)
                              {
                                v1667 = 10927;
                                goto LABEL_3409;
                              }

                              v1697 = v1678 == 256 && v1676 == 115;
                              v1698 = 10928;
                              goto LABEL_3406;
                            }
                          }

                          if (v70 == 12)
                          {
                            v1688 = *v34 == 0x7972726163646461 && *(v34 + 2) == 842233134;
                            if (v1688 || (*v34 == 0x7972726163646461 ? (v1689 = *(v34 + 2) == 875984174) : (v1689 = 0), v1689))
                            {
LABEL_3373:
                              if (*(v1713 + v70 - 1) == 50)
                              {
                                v1690 = 10199;
                              }

                              else
                              {
                                v1690 = 10200;
                              }

                              if (*(v1713 + v70 - 1) == 50)
                              {
                                v1691 = 11458;
                              }

                              else
                              {
                                v1691 = 11459;
                              }

                              if (*v1713 == 97)
                              {
                                v1692 = v1690;
                              }

                              else
                              {
                                v1692 = v1691;
                              }

                              v1693 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                              v1729[0] = *v1693;
                              v1729[1] = v1693[4];
                              *&v1730 = v1693[8];
                              v1694 = llvm::Intrinsic::getDeclaration(*(*(*(v1718 + 5) + 56) + 40), v1692, 0, 0);
                              if (v1694)
                              {
                                v1695 = *(v1694 + 24);
                              }

                              else
                              {
                                v1695 = 0;
                              }

                              LOWORD(v1728) = 257;
                              v1699 = llvm::IRBuilderBase::CreateCall(v1732, v1695, v1694, v1729, 3, &__src, 0);
                              LODWORD(__p) = 1;
                              LOWORD(v1728) = 257;
                              Value = llvm::IRBuilderBase::CreateExtractValue(v1732, v1699, &__p, 1, &__src);
                              v1701 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[12];
                              v1702 = llvm::PointerType::get(*Value, 0);
                              LOWORD(v1728) = 257;
                              v1703 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1701, v1702, &__src);
                              llvm::IRBuilderBase::CreateAlignedStore(v1732, Value, v1703, 256, 0);
                              LODWORD(__p) = 0;
                              LOWORD(v1728) = 257;
                              v1704 = llvm::IRBuilderBase::CreateExtractValue(v1732, v1699, &__p, 1, &__src);
                              llvm::Value::doRAUW(v1718, v1704, 1, v1705);
                              ShuffleVector = 0;
                              v7 = v3;
                              goto LABEL_914;
                            }
                          }

                          else if (v70 == 13)
                          {
                            if (*v34 == 0x7972726163646461 && *(v34 + 5) == 0x3233752E78797272)
                            {
                              goto LABEL_3373;
                            }

                            if (*v34 == 0x7972726163646461 && *(v34 + 5) == 0x3436752E78797272)
                            {
                              goto LABEL_3373;
                            }

                            if (*v34 == 0x6F72726F62627573 && *(v34 + 5) == 0x3233752E776F7272)
                            {
                              goto LABEL_3373;
                            }

                            if (*v34 == 0x6F72726F62627573 && *(v34 + 5) == 0x3436752E776F7272)
                            {
                              goto LABEL_3373;
                            }
                          }

                          else if (v662)
                          {
                            goto LABEL_3389;
                          }

                          if (*v1713 != 0x6D2E323135787661 || *(v1713 + 2) != 778793825)
                          {
LABEL_3389:
                            v7 = v3;
                            goto LABEL_125;
                          }

                          v7 = v3;
                          if (upgradeAVX512MaskToSelect(v34, v70, v1732, v1718, &ShuffleVector))
                          {
                            goto LABEL_1395;
                          }

LABEL_125:
                          if (v37)
                          {
                            v34 = v1714;
                            if (v1714 == 6)
                            {
                              if (*v1713 == 779313761 && *(v1713 + 2) == 27756)
                              {
LABEL_284:
                                v204 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                __src = "neg";
                                LOWORD(v1728) = 259;
                                Neg = llvm::IRBuilderBase::CreateNeg(v1732, v204, &__src);
                                v207 = llvm::Constant::getNullValue(*v204, v206);
                                __src = "abs.cond";
                                LOWORD(v1728) = 259;
                                ICmp = llvm::IRBuilderBase::CreateICmp(v1732, 39, v204, v207, &__src);
                                __src = "abs";
                                LOWORD(v1728) = 259;
                                v209 = v204;
                                v210 = Neg;
LABEL_412:
                                Select = llvm::IRBuilderBase::CreateSelect(v1732, ICmp, v209, v210, &__src, 0);
                                goto LABEL_413;
                              }

                              if (!memcmp(v1713, "max.ll", v1714) || (*v1713 == 779641197 ? (v180 = *(v1713 + 2) == 26997) : (v180 = 0), v180))
                              {
LABEL_373:
                                v272 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v273 = *v272;
                                v274 = *(v272 + 4);
                                v275 = *(v1713 + v1714 - 3) == 29998 && *(v1713 + v1714 - 1) == 105;
                                if (v275 || *(v1713 + v1714 - 4) == 1819047214)
                                {
                                  __src = "max.cond";
                                  LOWORD(v1728) = 259;
                                  v276 = 35;
                                }

                                else
                                {
                                  __src = "max.cond";
                                  LOWORD(v1728) = 259;
                                  v276 = 39;
                                }

                                ICmp = llvm::IRBuilderBase::CreateICmp(v1732, v276, v273, v274, &__src);
                                v277 = "max";
                                goto LABEL_411;
                              }

                              if (!memcmp(v1713, "min.ll", 6uLL) || (*v1713 == 778987885 ? (v181 = *(v1713 + 2) == 26997) : (v181 = 0), v181))
                              {
LABEL_381:
                                v278 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                v273 = *v278;
                                v274 = *(v278 + 4);
                                v279 = *(v1713 + v1714 - 3) == 29998 && *(v1713 + v1714 - 1) == 105;
                                if (v279 || *(v1713 + v1714 - 4) == 1819047214)
                                {
                                  __src = "min.cond";
                                  LOWORD(v1728) = 259;
                                  v280 = 37;
                                }

                                else
                                {
                                  __src = "min.cond";
                                  LOWORD(v1728) = 259;
                                  v280 = 41;
                                }

                                ICmp = llvm::IRBuilderBase::CreateICmp(v1732, v280, v273, v274, &__src);
                                v277 = "min";
LABEL_411:
                                __src = v277;
                                LOWORD(v1728) = 259;
                                v209 = v273;
                                v210 = v274;
                                goto LABEL_412;
                              }

                              if (!memcmp(v1713, "clz.ll", 6uLL))
                              {
                                v182 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                v183 = *(v4 + 40);
                                __p = *v182;
                                v184 = llvm::Intrinsic::getDeclaration(v183, 53, &__p, 1);
                                v185 = v184;
                                if (v184)
                                {
                                  v186 = *(v184 + 24);
                                }

                                else
                                {
                                  v186 = 0;
                                }

                                v1729[0] = v182;
                                v563 = *v1736;
                                v564 = *(*v1736 + 1600);
                                if (!v564)
                                {
                                  v564 = llvm::ConstantInt::get(v563 + 1920, 0);
                                  *(v563 + 1600) = v564;
                                }

                                v1729[1] = v564;
                                __src = "ctlz";
                                LOWORD(v1728) = 259;
                                v215 = llvm::IRBuilderBase::CreateCall(v1732, v186, v185, v1729, 2, &__src, 0);
                                v565 = *v1736;
                                __src = "ctlz.trunc";
                                LOWORD(v1728) = 259;
LABEL_1273:
                                v216 = (v565 + 1992);
                                p_src = &__src;
                                v218 = 38;
LABEL_289:
                                Select = llvm::IRBuilderBase::CreateCast(v1732, v218, v215, v216, p_src);
LABEL_413:
                                AlignedLoad = Select;
                                ShuffleVector = Select;
                                goto LABEL_622;
                              }
                            }

                            else if (v1714 == 5)
                            {
                              if (*v1713 == 779313761 && *(v1713 + 4) == 105)
                              {
                                goto LABEL_284;
                              }

                              if (*v1713 == 779641197 && *(v1713 + 4) == 105)
                              {
                                goto LABEL_373;
                              }

                              if (!memcmp(v1713, "min.i", v1714))
                              {
                                goto LABEL_381;
                              }
                            }

                            else
                            {
                              if (v1714 >= 0x15)
                              {
                                v187 = *v1713 == 0x6C2E63696D6F7461 && v1713[1] == 0x2E6464612E64616FLL;
                                v188 = v187 && *(v1713 + 13) == 0x702E3233662E6464;
                                if (v188 || (*v1713 == 0x6C2E63696D6F7461 ? (v189 = v1713[1] == 0x2E6464612E64616FLL) : (v189 = 0), v189 ? (v190 = *(v1713 + 13) == 0x702E3436662E6464) : (v190 = 0), v190))
                                {
                                  v283 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                                  Select = llvm::IRBuilderBase::CreateAtomicRMW(v1732, 11, *v283, v283[4], 0, 7, 1);
                                  goto LABEL_413;
                                }
                              }

                              if (v1714 > 5)
                              {
                                if (v1714 == 7)
                                {
                                  if (*v1713 == 779641197 && *(v1713 + 3) == 1819047214)
                                  {
                                    goto LABEL_373;
                                  }

                                  if (*v1713 == 778987885 && *(v1713 + 3) == 1819047214)
                                  {
                                    goto LABEL_381;
                                  }

                                  if (*v1713 == 1668312944 && *(v1713 + 3) == 1819029091)
                                  {
                                    v1729[0] = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                    v269 = *(v4 + 40);
                                    __p = *v1729[0];
                                    v270 = llvm::Intrinsic::getDeclaration(v269, 54, &__p, 1);
                                    if (v270)
                                    {
                                      v271 = *(v270 + 24);
                                    }

                                    else
                                    {
                                      v271 = 0;
                                    }

                                    __src = "ctpop";
                                    LOWORD(v1728) = 259;
                                    v215 = llvm::IRBuilderBase::CreateCall(v1732, v271, v270, v1729, 1, &__src, 0);
                                    v565 = *v1736;
                                    __src = "ctpop.trunc";
                                    LOWORD(v1728) = 259;
                                    goto LABEL_1273;
                                  }
                                }
                              }

                              else if (v1714 == 3 && *v1713 == 12904 && *(v1713 + 2) == 102)
                              {
                                v477 = *(v4 + 40);
                                v1729[0] = (*v1736 + 1704);
                                v478 = llvm::Intrinsic::getDeclaration(v477, 18, v1729, 1);
                                v303 = v478;
                                if (v478)
                                {
                                  v304 = *(v478 + 24);
                                }

                                else
                                {
                                  v304 = 0;
                                }

                                __p = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                __src = "h2f";
                                v348 = 259;
LABEL_538:
                                LOWORD(v1728) = v348;
                                Select = llvm::IRBuilderBase::CreateCall(v1732, v304, v303, &__p, 1, &__src, 0);
                                goto LABEL_413;
                              }
                            }
                          }

                          v6 = v1718;
                          if (v1714 <= 38)
                          {
                            if (v1714 == 14)
                            {
                              if (*v1713 == 0x707463762E65766DLL && *(v1713 + 6) == 0x646C6F2E34367074)
                              {
                                v351 = llvm::Intrinsic::getDeclaration(*(v4 + 40), 2699, 0, 0);
                                v352 = v351;
                                if (v351)
                                {
                                  v353 = *(v351 + 24);
                                }

                                else
                                {
                                  v353 = 0;
                                }

                                v494 = *(v6 + 5);
                                v1729[0] = *(v6 - 4 * (v494 & 0x7FFFFFF));
                                if ((v494 & 0x10000000) != 0)
                                {
                                  v497 = llvm::Value::getValueName(v6);
                                  v498 = *v497;
                                  v496 = v497 + 2;
                                  v495 = v498;
                                }

                                else
                                {
                                  v495 = 0;
                                  v496 = &str_3_24;
                                }

                                LOWORD(v1728) = 261;
                                __src = v496;
                                v1725 = v495;
                                v1729[0] = llvm::IRBuilderBase::CreateCall(v1732, v353, v352, v1729, 1, &__src, 0);
                                v499 = *(v4 + 40);
                                llvm::FixedVectorType::get((*v1736 + 1920), 2);
                                __p = v500;
                                v501 = llvm::Intrinsic::getDeclaration(v499, 2659, &__p, 1);
                                if (v501)
                                {
                                  v502 = *(v501 + 24);
                                }

                                else
                                {
                                  v502 = 0;
                                }

                                LOWORD(v1728) = 257;
                                __p = llvm::IRBuilderBase::CreateCall(v1732, v502, v501, v1729, 1, &__src, 0);
                                v503 = *(v4 + 40);
                                llvm::FixedVectorType::get((*v1736 + 1920), 4);
                                v1747[0] = v504;
                                v505 = llvm::Intrinsic::getDeclaration(v503, 2658, v1747, 1);
                                if (v505)
                                {
                                  v506 = *(v505 + 24);
                                }

                                else
                                {
                                  v506 = 0;
                                }

                                LOWORD(v1728) = 257;
                                AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v506, v505, &__p, 1, &__src, 0);
LABEL_621:
                                ShuffleVector = AlignedLoad;
                                goto LABEL_622;
                              }
                            }

                            else if (v1714 == 31)
                            {
                              v354 = *v1713 == 0x317863762E656463 && v1713[1] == 0x6369646572702E71;
                              v355 = v354 && v1713[2] == 0x6932762E64657461;
                              if (!v355 || *(v1713 + 23) != 0x316934762E343669)
                              {
                                v357 = v1713[2];
                                v358 = *(v1713 + 23);
                                if (*v1713 == 0x327863762E656463)
                                {
                                  v5 = v1713[1] == 0x6369646572702E71;
                                }
                              }
                            }
                          }

                          v1729[0] = 0;
                          v1729[1] = 0;
                          *&v1730 = 0;
                          v359 = *(v1718 - 4);
                          if (v359 && !*(v359 + 16) && *(v359 + 24) == *(v1718 + 9))
                          {
                            v360 = *(v359 + 36);
                            llvm::FixedVectorType::get((*v1736 + 1920), 2);
                            v362 = v361;
                            v1712 = v360;
                            if (v360 <= 2728)
                            {
                              if ((v360 - 2562) <= 0xE && ((1 << (v360 - 2)) & 0x5145) != 0)
                              {
                                __src = *(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF))[4];
                                v1725 = v361;
                                v363 = &v1726;
                                v364 = 2;
LABEL_586:
                                std::vector<llvm::Type *>::__assign_with_size[abi:nn200100]<llvm::Type * const*,llvm::Type * const*>(v1729, &__src, v363, v364);
                                v1721 = 0;
                                v1722 = 0;
                                __p = 0;
                                v369 = (v6 - 32 * (*(v6 + 5) & 0x7FFFFFF));
                                v370 = llvm::CallBase::arg_end(v6);
                                if (v369 != v370)
                                {
                                  v371 = v370;
                                  v372 = 0;
                                  do
                                  {
                                    v1747[0] = *v369;
                                    v373 = v1747[0];
                                    v374 = *v1747[0];
                                    if ((*(*v1747[0] + 8) & 0xFE) == 0x12)
                                    {
                                      v374 = **(v374 + 2);
                                    }

                                    if (llvm::Type::getPrimitiveSizeInBits(v374) == 1)
                                    {
                                      v375 = *(v4 + 40);
                                      llvm::FixedVectorType::get((*v1736 + 1920), 4);
                                      v1748[0] = v376;
                                      v377 = llvm::Intrinsic::getDeclaration(v375, 2659, v1748, 1);
                                      if (v377)
                                      {
                                        v378 = *(v377 + 24);
                                      }

                                      else
                                      {
                                        v378 = 0;
                                      }

                                      LOWORD(v1728) = 257;
                                      v1719 = llvm::IRBuilderBase::CreateCall(v1732, v378, v377, v1747, 1, &__src, 0);
                                      v379 = *(v4 + 40);
                                      v1748[0] = v362;
                                      v380 = llvm::Intrinsic::getDeclaration(v379, 2658, v1748, 1);
                                      if (v380)
                                      {
                                        v381 = *(v380 + 24);
                                      }

                                      else
                                      {
                                        v381 = 0;
                                      }

                                      LOWORD(v1728) = 257;
                                      v373 = llvm::IRBuilderBase::CreateCall(v1732, v381, v380, &v1719, 1, &__src, 0);
                                      v1747[0] = v373;
                                      v372 = v1721;
                                    }

                                    if (v372 >= v1722)
                                    {
                                      v382 = (v372 - __p) >> 3;
                                      if ((v382 + 1) >> 61)
                                      {
                                        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                                      }

                                      v383 = (v1722 - __p) >> 2;
                                      if (v383 <= v382 + 1)
                                      {
                                        v383 = v382 + 1;
                                      }

                                      if ((v1722 - __p) >= 0x7FFFFFFFFFFFFFF8)
                                      {
                                        v384 = 0x1FFFFFFFFFFFFFFFLL;
                                      }

                                      else
                                      {
                                        v384 = v383;
                                      }

                                      if (v384)
                                      {
                                        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v384);
                                      }

                                      v385 = (8 * v382);
                                      *v385 = v373;
                                      v372 = (8 * v382 + 8);
                                      v386 = v385 - (v1721 - __p);
                                      memcpy(v386, __p, v1721 - __p);
                                      v387 = __p;
                                      __p = v386;
                                      v1721 = v372;
                                      v1722 = 0;
                                      if (v387)
                                      {
                                        operator delete(v387);
                                      }
                                    }

                                    else
                                    {
                                      *v372++ = v373;
                                    }

                                    v1721 = v372;
                                    v369 += 4;
                                  }

                                  while (v369 != v371);
                                }

                                v388 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v1712, v1729[0], (v1729[1] - v1729[0]) >> 3);
                                v389 = v388;
                                if (v388)
                                {
                                  v390 = *(v388 + 24);
                                }

                                else
                                {
                                  v390 = 0;
                                }

                                v391 = __p;
                                v392 = (v1721 - __p) >> 3;
                                if ((*(v6 + 23) & 0x10) != 0)
                                {
                                  v395 = llvm::Value::getValueName(v6);
                                  v396 = *v395;
                                  v394 = v395 + 2;
                                  v393 = v396;
                                }

                                else
                                {
                                  v393 = 0;
                                  v394 = &str_3_24;
                                }

                                LOWORD(v1728) = 261;
                                __src = v394;
                                v1725 = v393;
                                AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v390, v389, v391, v392, &__src, 0);
                                if (__p)
                                {
                                  v1721 = __p;
                                  operator delete(__p);
                                }

                                if (v1729[0])
                                {
                                  v1729[1] = v1729[0];
                                  operator delete(v1729[0]);
                                }

                                goto LABEL_621;
                              }

LABEL_580:
                              __src = *v6;
                              v367 = **(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF));
LABEL_583:
                              v1725 = v367;
                              v1726 = v361;
                              v363 = &v1727;
                              v364 = 3;
                              goto LABEL_586;
                            }

                            if (v360 <= 2756)
                            {
                              if (v360 == 2729)
                              {
                                goto LABEL_580;
                              }

                              if (v360 == 2731)
                              {
                                goto LABEL_582;
                              }

                              __src = *v6;
                              v365 = v6 - 32 * (*(v6 + 5) & 0x7FFFFFF);
                              v1725 = **v365;
                              v366 = *(v365 + 4);
                            }

                            else
                            {
                              if (v360 <= 2804)
                              {
                                if (v360 == 2757)
                                {
                                  goto LABEL_580;
                                }

                                goto LABEL_582;
                              }

                              if (v360 == 2805)
                              {
LABEL_582:
                                v367 = **(v6 - 4 * (*(v6 + 5) & 0x7FFFFFF));
                                __src = v367;
                                goto LABEL_583;
                              }

                              v368 = v6 - 32 * (*(v6 + 5) & 0x7FFFFFF);
                              __src = **v368;
                              v1725 = **(v368 + 4);
                              v366 = *(v368 + 8);
                            }

                            v1726 = *v366;
                            v1727 = v361;
                            v363 = &v1728;
                            v364 = 4;
                            goto LABEL_586;
                          }

                          llvm::FixedVectorType::get((*v1736 + 1920), 2);
                          __break(1u);
LABEL_2935:
                          v76 = 1;
                          v7 = v3;
                        }

                        v3 = v7;
                        v513 = 0;
                        v514 = 1;
LABEL_1155:
                        v650 = 1;
                        goto LABEL_1156;
                      }
                    }

                    v545 = *(**(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)) + 32);
                    v546 = *(*v1718 + 32);
                    __src = &v1726;
                    v1725 = 0x800000000;
                    llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v546);
                    v547 = __src;
                    if (v546)
                    {
                      v548 = 0;
                      v549 = vdupq_n_s64(v546 - 1);
                      v550 = xmmword_2750C1830;
                      v551 = xmmword_2750C1210;
                      v552 = (__src + 8);
                      v553 = vdupq_n_s64(4uLL);
                      do
                      {
                        v554 = vmovn_s64(vcgeq_u64(v549, v551));
                        if (vuzp1_s16(v554, *v549.i8).u8[0])
                        {
                          *(v552 - 2) = v548 % v545;
                        }

                        if (vuzp1_s16(v554, *&v549).i8[2])
                        {
                          *(v552 - 1) = (v548 + 1) % v545;
                        }

                        if (vuzp1_s16(*&v549, vmovn_s64(vcgeq_u64(v549, *&v550))).i32[1])
                        {
                          *v552 = (v548 + 2) % v545;
                          v552[1] = (v548 + 3) % v545;
                        }

                        v548 += 4;
                        v550 = vaddq_s64(v550, v553);
                        v551 = vaddq_s64(v551, v553);
                        v552 += 4;
                      }

                      while (((v546 + 3) & 0x1FFFFFFFCLL) != v548);
                    }

                    v555 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                    v1731 = 257;
                    v556 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v555, v555, v547, v1725, v1729);
                    ShuffleVector = v556;
                    v557 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                    v558 = *(v557 + 8);
LABEL_1327:
                    ShuffleVector = EmitX86Select(v1732, v558, v556, *(v557 + 4));
LABEL_1328:
                    v716 = __src;
                    if (__src == &v1726)
                    {
                      goto LABEL_1395;
                    }

LABEL_1394:
                    free(v716);
                    goto LABEL_1395;
                  }

                  goto LABEL_2873;
                }
              }
            }
          }

          v88 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
          v89 = **(v88 + 4);
          v90 = *v88;
          LOWORD(v1728) = 257;
          VectorSplat = llvm::IRBuilderBase::CreateCast(v1732, 38, v90, v89, &__src);
          goto LABEL_160;
        }

        if (v33 >= 0xC)
        {
          if (*v34 == 0x6F6D2E6134657373 && *(v34 + 2) == 779382390)
          {
            v124 = *(v4 + 40);
            v1729[0] = &v1730;
            v1729[1] = 0x100000000;
            v125 = llvm::ConstantInt::get(*v6 + 1992, 1);
            v127 = llvm::ValueAsMetadata::get(v125, v126);
            llvm::SmallVectorTemplateBase<void *,true>::push_back(v1729, v127);
            v128 = llvm::MDTuple::getImpl(v6, v1729[0], LODWORD(v1729[1]), 0, 1);
            v129 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
            v130 = *v129;
            v131 = *(v129 + 4);
            v132 = llvm::PointerType::get(*(*v131 + 24), 0);
            __src = "cast";
            LOWORD(v1728) = 259;
            v133 = llvm::IRBuilderBase::CreateCast(v1732, 49, v130, v132, &__src);
            __src = "extractelement";
            LOWORD(v1728) = 259;
            v135 = llvm::IRBuilderBase::CreateExtractElement(v1732, v131, &__src, v134);
            v136 = v133;
            v137 = 256;
            goto LABEL_224;
          }
        }

        else if (v33 < 0xA)
        {
          v77 = 1;
          goto LABEL_199;
        }

        if (*v34 != 0x6E766F6D2E787661 || *(v34 + 4) != 11892)
        {
          if (v33 < 0xF)
          {
            if (v33 == 14)
            {
              if (*v34 == 0x6F74732E32657373 && *(v34 + 6) == 0x71642E6C65726F74)
              {
                v323 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                v244 = *v323;
                v324 = *(v323 + 4);
                llvm::FixedVectorType::get((*v6 + 2016), 2);
                __src = "cast";
                LOWORD(v1728) = 259;
                v326 = llvm::IRBuilderBase::CreateCast(v1732, 49, v324, v325, &__src);
                LOWORD(v1728) = 257;
                v245 = llvm::IRBuilderBase::CreateExtractElement(v1732, v326, &__src, v327);
                v246 = llvm::PointerType::get(*v245, 0);
                __src = "cast";
                LOWORD(v1728) = 259;
                goto LABEL_336;
              }

              v77 = 0;
              v85 = v34;
              goto LABEL_202;
            }

            goto LABEL_198;
          }

          if (*v34 != 0x732E323135787661 || *(v34 + 7) != 0x2E746E65726F7473)
          {
LABEL_198:
            v77 = 0;
LABEL_199:
            v85 = v34;
            if (v33 < 0xB)
            {
              v159 = 1;
              ShuffleVector = 0;
              v160 = 1;
              v161 = 1;
              v162 = 1;
              if (v33 < 9)
              {
                goto LABEL_422;
              }

              goto LABEL_213;
            }

LABEL_202:
            if (*v34 == 0x726F74732E657373 && *(v34 + 3) == 0x2E7565726F74732ELL)
            {
              goto LABEL_335;
            }

            if (v33 < 0xC)
            {
              if (*v34 != 0x726F74732E787661 || *(v34 + 3) != 0x2E7565726F74732ELL)
              {
                goto LABEL_211;
              }

              goto LABEL_335;
            }

            v232 = *v34 == 0x6F74732E32657373 && *(v34 + 2) == 779445618;
            if (v232 || (*v34 == 0x726F74732E787661 ? (v233 = *(v34 + 3) == 0x2E7565726F74732ELL) : (v233 = 0), v233))
            {
LABEL_335:
              v243 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
              v244 = *v243;
              v245 = *(v243 + 4);
              v246 = llvm::PointerType::get(*v245, 0);
              __src = "cast";
              LOWORD(v1728) = 259;
LABEL_336:
              v247 = llvm::IRBuilderBase::CreateCast(v1732, 49, v244, v246, &__src);
              llvm::IRBuilderBase::CreateAlignedStore(v1732, v245, v247, 256, 0);
              goto LABEL_914;
            }

            if (v33 == 20)
            {
              if (*v85 == 0x6D2E323135787661 && v85[1] == 0x726F74732E6B7361 && *(v85 + 4) == 1936928357)
              {
                v236 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                v237 = llvm::ConstantInt::get(*v1736 + 1944, 1);
                LOWORD(v1728) = 257;
                v238 = llvm::IRBuilderBase::CreateAnd(v1732, v236, v237, &__src);
                v239 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                v240 = *v239;
                v241 = *(v239 + 4);
                v242 = 0;
                goto LABEL_748;
              }
            }

            else if (v33 < 0x11)
            {
LABEL_211:
              v160 = 1;
LABEL_212:
              v159 = 0;
              ShuffleVector = 0;
LABEL_213:
              v165 = *v34 == 0x6D63702E32657373 && *(v34 + 8) == 112;
              if (v165 || (*v34 == 0x6D63702E32787661 ? (v166 = *(v34 + 8) == 112) : (v166 = 0), v166))
              {
                if (*(v34 + 9) == 101)
                {
                  v211 = 32;
                }

                else
                {
                  v211 = 38;
                }

                v212 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                v213 = *v212;
                v214 = *(v212 + 4);
                LOWORD(v1728) = 257;
                v215 = llvm::IRBuilderBase::CreateICmp(v1732, v211, v213, v214, &__src);
                ShuffleVector = v215;
                v216 = *v1718;
                LOWORD(v1728) = 257;
                p_src = &__src;
                v218 = 40;
                goto LABEL_289;
              }

              if (v160)
              {
                v161 = 0;
                v162 = 1;
              }

              else
              {
                if (*v34 == 0x622E323135787661 && v34[1] == 0x7473616364616F72 && *(v34 + 16) == 109)
                {
                  v452 = *v6;
                  if (*(**(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)) + 8) == 2061)
                  {
                    v453 = 2016;
                  }

                  else
                  {
                    v453 = 1992;
                  }

                  v455 = llvm::Type::getPrimitiveSizeInBits(*v1718);
                  if (v454)
                  {
                  }

                  v457 = llvm::Type::getPrimitiveSizeInBits(&v452[v453]);
                  if (v456)
                  {
                  }

                  v458 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                  LOWORD(v1728) = 257;
                  ShuffleVector = llvm::IRBuilderBase::CreateCast(v1732, 39, v458, &v452[v453], &__src);
                  LOWORD(v1728) = 257;
                  Select = llvm::IRBuilderBase::CreateVectorSplat(v1732, (v455 / v457), ShuffleVector, &__src);
                  goto LABEL_413;
                }

                v161 = 0;
                v162 = 0;
              }

LABEL_422:
              if (v33 == 12)
              {
                if (*v85 != 0x7271732E32657373 || *(v85 + 2) != 1685270132)
                {
                  goto LABEL_428;
                }
              }

              else if (v33 != 11 || (*v85 == 0x747271732E657373 ? (v295 = *(v85 + 3) == 0x73732E747271732ELL) : (v295 = 0), !v295))
              {
LABEL_428:
                if ((v77 & 1) == 0 && (*v34 == 0x747271732E787661 ? (v296 = *(v34 + 4) == 28718) : (v296 = 0), v296) || (v159 & 1) == 0 && (*v34 == 0x7271732E32657373 ? (v297 = *(v34 + 3) == 0x702E747271732E32) : (v297 = 0), v297) || (v77 & 1) == 0 && (*v34 == 0x747271732E657373 ? (v298 = *(v34 + 4) == 28718) : (v298 = 0), v298))
                {
                  v301 = *(v4 + 40);
                  v1729[0] = *v1718;
                  v302 = llvm::Intrinsic::getDeclaration(v301, 283, v1729, 1);
                  v303 = v302;
                  if (v302)
                  {
                    v304 = *(v302 + 24);
                  }

                  else
                  {
                    v304 = 0;
                  }

                  __p = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                  v348 = 257;
                  goto LABEL_538;
                }

                if (v33 >= 0x12)
                {
                  if (*v34 == 0x6D2E323135787661 && v34[1] == 0x747271732E6B7361 && *(v34 + 8) == 28718)
                  {
                    if (((llvm::CallBase::arg_end(v1718) - (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0x80)
                    {
                      goto LABEL_721;
                    }

                    v459 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                    v460 = *(v459 + 12);
                    if (*(v460 + 16) != 16)
                    {
                      goto LABEL_807;
                    }

                    v461 = (v460 + 24);
                    if (*(v460 + 32) >= 0x41u)
                    {
                      v461 = *v461;
                    }

                    if (*v461 == 4)
                    {
LABEL_721:
                      v462 = *(v4 + 40);
                      v1729[0] = *v1718;
                      v463 = llvm::Intrinsic::getDeclaration(v462, 283, v1729, 1);
                      v464 = v463;
                      if (v463)
                      {
                        v465 = *(v463 + 24);
                      }

                      else
                      {
                        v465 = 0;
                      }

                      __p = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                      LOWORD(v1728) = 257;
                      v559 = &__p;
                      v560 = 1;
                    }

                    else
                    {
LABEL_807:
                      if (*(v1713 + 18) == 115)
                      {
                        v515 = 10892;
                      }

                      else
                      {
                        v515 = 10891;
                      }

                      v1729[0] = *v459;
                      v1729[1] = v460;
                      v516 = llvm::Intrinsic::getDeclaration(*(*(*(v1718 + 5) + 56) + 40), v515, 0, 0);
                      v464 = v516;
                      if (v516)
                      {
                        v465 = *(v516 + 24);
                      }

                      else
                      {
                        v465 = 0;
                      }

                      LOWORD(v1728) = 257;
                      v559 = v1729;
                      v560 = 2;
                    }

                    VectorSplat = llvm::IRBuilderBase::CreateCall(v1732, v465, v464, v559, v560, &__src, 0);
                    goto LABEL_160;
                  }
                }

                else if (v33 < 0xD)
                {
                  v299 = 1;
                  v300 = 1;
                  goto LABEL_477;
                }

                if (*v34 == 0x702E323135787661 && *(v34 + 5) == 0x6D74736574702E32)
                {
                  goto LABEL_660;
                }

                v299 = v33 < 0xE;
                if (v33 < 0xE)
                {
LABEL_472:
                  v300 = 1;
                  goto LABEL_473;
                }

                if (*v34 == 0x702E323135787661 && *(v34 + 6) == 0x6D6E74736574702ELL)
                {
LABEL_660:
                  v420 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                  v421 = *v420;
                  v422 = *(v420 + 4);
                  v423 = *(v420 + 8);
                  LOWORD(v1728) = 257;
                  ShuffleVector = llvm::IRBuilderBase::CreateAnd(v1732, v421, v422, &__src);
                  v425 = llvm::Constant::getNullValue(*v421, v424);
                  if (v1714 >= 0xD)
                  {
                    v470 = bswap64(*v1713);
                    v471 = 0x6176783531322E70;
                    if (v470 == 0x6176783531322E70 && (v471 = 0x322E70746573746DLL, v470 = bswap64(*(v1713 + 5)), v470 == 0x322E70746573746DLL))
                    {
                      v472 = 0;
                    }

                    else if (v470 < v471)
                    {
                      v472 = -1;
                    }

                    else
                    {
                      v472 = 1;
                    }

                    if (v472)
                    {
                      v426 = 32;
                    }

                    else
                    {
                      v426 = 33;
                    }
                  }

                  else
                  {
                    v426 = 32;
                  }

                  LOWORD(v1728) = 257;
                  v480 = llvm::IRBuilderBase::CreateICmp(v1732, v426, ShuffleVector, v425, &__src);
                  ShuffleVector = v480;
                  v481 = v423;
                  goto LABEL_756;
                }

                if (v33 < 0x16)
                {
                  goto LABEL_472;
                }

                if (*v34 != 0x6D2E323135787661 || v34[1] != 0x6F7262702E6B7361 || *(v34 + 14) != 0x7473616364616F72)
                {
                  v300 = 0;
LABEL_473:
                  if (*v34 == 0x6B2E323135787661 && *(v34 + 5) == 0x6B63706E756B2E32)
                  {
                    v482 = *v1718;
                    if ((*(*v1718 + 8) & 0xFE) == 0x12)
                    {
                      v482 = **(v482 + 2);
                    }

                    v483 = llvm::Type::getPrimitiveSizeInBits(v482);
                    X86MaskVec = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), v483);
                    v485 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], v483);
                    if (v483)
                    {
                      v486 = 0;
                      v487 = v483;
                      v488 = vdupq_n_s64(v483 - 1);
                      v489 = xmmword_2750C1830;
                      v490 = xmmword_2750C1210;
                      v491 = &v1725;
                      v492 = vdupq_n_s64(4uLL);
                      do
                      {
                        v493 = vmovn_s64(vcgeq_u64(v488, v490));
                        if (vuzp1_s16(v493, *v488.i8).u8[0])
                        {
                          *(v491 - 2) = v486;
                        }

                        if (vuzp1_s16(v493, *&v488).i8[2])
                        {
                          *(v491 - 1) = v486 + 1;
                        }

                        if (vuzp1_s16(*&v488, vmovn_s64(vcgeq_u64(v488, *&v489))).i32[1])
                        {
                          *v491 = v486 + 2;
                          *(v491 + 1) = v486 + 3;
                        }

                        v486 += 4;
                        v489 = vaddq_s64(v489, v492);
                        v490 = vaddq_s64(v490, v492);
                        v491 += 2;
                      }

                      while (((v483 + 3) & 0x1FFFFFFFCLL) != v486);
                    }

                    else
                    {
                      v487 = 0;
                    }

                    v566 = (v483 >> 1);
                    v1731 = 257;
                    v567 = llvm::IRBuilderBase::CreateShuffleVector(v1732, X86MaskVec, X86MaskVec, &__src, v566, v1729);
                    v1731 = 257;
                    v568 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v485, v485, &__src, v566, v1729);
                    v1731 = 257;
                    v215 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v568, v567, &__src, v487, v1729);
                    ShuffleVector = v215;
                    v216 = *v1718;
                    v1731 = 257;
                    p_src = v1729;
                    goto LABEL_1285;
                  }

LABEL_477:
                  if (v33 > 12)
                  {
                    switch(v33)
                    {
                      case 0x11uLL:
                        v523 = *v85 == 0x6B2E323135787661 && v85[1] == 0x2E7A74736574726FLL && *(v85 + 16) == 119;
                        if (v523 || (*v85 == 0x6B2E323135787661 ? (v524 = v85[1] == 0x2E6374736574726FLL) : (v524 = 0), v524 ? (v525 = *(v85 + 16) == 119) : (v525 = 0), v525))
                        {
                          v569 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                          v570 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(v1728) = 257;
                          ShuffleVector = llvm::IRBuilderBase::CreateOr(v1732, v569, v570, &__src);
                          v571 = *v1736;
                          LOWORD(v1728) = 257;
                          ShuffleVector = llvm::IRBuilderBase::CreateCast(v1732, 49, ShuffleVector, (v571 + 1968), &__src);
                          v573 = (*v1736 + 1968);
                          if (*(v1713 + 14) == 99)
                          {
                            AllOnesValue = llvm::Constant::getAllOnesValue(v573, v572);
                          }

                          else
                          {
                            AllOnesValue = llvm::Constant::getNullValue(v573, v572);
                          }

                          LOWORD(v1728) = 257;
                          v215 = llvm::IRBuilderBase::CreateICmp(v1732, 32, ShuffleVector, AllOnesValue, &__src);
                          ShuffleVector = v215;
                          v691 = *v1736;
                          LOWORD(v1728) = 257;
                          v216 = (v691 + 1992);
                          p_src = &__src;
                          v218 = 39;
                          goto LABEL_289;
                        }

                        if (*v34 != 0x6D2E323135787661 || v34[1] != 0x706D63702E6B7361)
                        {
                          goto LABEL_935;
                        }

                        goto LABEL_1266;
                      case 0xEuLL:
                        if (*v85 == 0x6B2E323135787661 && *(v85 + 6) == 0x772E6E646E616B2ELL)
                        {
                          v641 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                          v642 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(v1728) = 257;
                          Not = llvm::IRBuilderBase::CreateNot(v1732, v641, &__src);
                          LOWORD(v1728) = 257;
                          v644 = llvm::IRBuilderBase::CreateAnd(v1732, Not, v642, &__src);
                        }

                        else
                        {
                          if (*v85 != 0x6B2E323135787661 || *(v85 + 6) != 0x772E726F6E786B2ELL)
                          {
                            goto LABEL_882;
                          }

                          v697 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                          v698 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(v1728) = 257;
                          v699 = llvm::IRBuilderBase::CreateNot(v1732, v697, &__src);
                          LOWORD(v1728) = 257;
                          v644 = llvm::IRBuilderBase::CreateXor(v1732, v699, v698, &__src);
                        }

                        v215 = v644;
                        ShuffleVector = v644;
                        v216 = *v1718;
                        LOWORD(v1728) = 257;
                        goto LABEL_1284;
                      case 0xDuLL:
                        if (*v85 == 0x6B2E323135787661 && *(v85 + 5) == 0x772E646E616B2E32)
                        {
                          v639 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                          v640 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(v1728) = 257;
                          v318 = llvm::IRBuilderBase::CreateAnd(v1732, v639, v640, &__src);
                        }

                        else
                        {
                          if (*v85 != 0x6B2E323135787661 || *(v85 + 5) != 0x772E726F786B2E32)
                          {
                            if (*v85 != 0x6B2E323135787661 || *(v85 + 5) != 0x772E746F6E6B2E32)
                            {
                              goto LABEL_882;
                            }

                            v451 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                            LOWORD(v1728) = 257;
                            v215 = llvm::IRBuilderBase::CreateNot(v1732, v451, &__src);
                            ShuffleVector = v215;
                            v216 = *v1718;
                            LOWORD(v1728) = 257;
                            goto LABEL_1284;
                          }

                          v695 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                          v696 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], 0x10u);
                          LOWORD(v1728) = 257;
                          v318 = llvm::IRBuilderBase::CreateXor(v1732, v695, v696, &__src);
                        }

                        goto LABEL_1281;
                    }

LABEL_852:
                    if (v33 < 0x10)
                    {
                      v527 = 1;
                      v528 = 1;
                      if (v33 < 0xC)
                      {
                        goto LABEL_955;
                      }

                      goto LABEL_937;
                    }

                    if (*v34 != 0x6D2E323135787661 || v34[1] != 0x706D63702E6B7361)
                    {
                      if (v33 >= 0x19)
                      {
                        if (*v34 == 0x6D2E323135787661 && v34[1] == 0x687370762E6B7361 && v34[2] == 0x626D717469626675 && *(v34 + 24) == 46)
                        {
                          v740 = llvm::Type::getPrimitiveSizeInBits(**(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)));
                          if (v739)
                          {
                          }

                          if (v740 == 128)
                          {
                            v724 = 10956;
                          }

                          else if (v740 == 256)
                          {
                            v724 = 10957;
                          }

                          else
                          {
                            v724 = 10958;
                          }

                          goto LABEL_1455;
                        }
                      }

                      else if (v33 < 0x15)
                      {
LABEL_935:
                        v527 = 0;
                        goto LABEL_936;
                      }

                      if (*v34 != 0x6D2E323135787661 || v34[1] != 0x6C6370662E6B7361 || *(v34 + 13) != 0x702E7373616C6370)
                      {
                        v527 = 0;
                        v528 = 0;
                        goto LABEL_937;
                      }

                      v720 = **(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                      v722 = llvm::Type::getPrimitiveSizeInBits(v720);
                      if (v721)
                      {
                      }

                      if ((*(v720 + 8) & 0xFE) == 0x12)
                      {
                        v720 = **(v720 + 16);
                      }

                      v723 = llvm::Type::getPrimitiveSizeInBits(v720);
                      if (v722 == 128 && v723 == 32)
                      {
                        v724 = 10419;
                      }

                      else if (v722 == 256 && v723 == 32)
                      {
                        v724 = 10420;
                      }

                      else if (v722 == 512 && v723 == 32)
                      {
                        v724 = 10421;
                      }

                      else if (v722 == 128 && v723 == 64)
                      {
                        v724 = 10416;
                      }

                      else if (v723 == 64 && v722 == 256)
                      {
                        v724 = 10417;
                      }

                      else
                      {
                        v724 = 10418;
                      }

LABEL_1455:
                      v765 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v724, 0, 0);
                      if (v765)
                      {
                        v766 = *(v765 + 24);
                      }

                      else
                      {
                        v766 = 0;
                      }

                      v767 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                      v1729[0] = *v767;
                      v1729[1] = v767[4];
                      LOWORD(v1728) = 257;
                      v480 = llvm::IRBuilderBase::CreateCall(v1732, v766, v765, v1729, 2, &__src, 0);
                      ShuffleVector = v480;
                      v481 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                      goto LABEL_756;
                    }

LABEL_1266:
                    v689 = v1718;
                    if (*(v34 + 16) == 101)
                    {
                      v690 = 0;
                    }

                    else
                    {
                      v690 = 6;
                    }

                    goto LABEL_1289;
                  }

                  switch(v33)
                  {
                    case 0xAuLL:
                      if ((*v85 != 0x2E6464612E657373 || *(v85 + 4) != 29555) && (*v85 != 0x2E6275732E657373 || *(v85 + 4) != 29555) && (*v85 != 0x2E6C756D2E657373 || *(v85 + 4) != 29555) && (*v85 != 0x2E7669642E657373 || *(v85 + 4) != 29555))
                      {
                        goto LABEL_871;
                      }

                      break;
                    case 0xBuLL:
                      if ((*v85 != 0x6464612E32657373 || *(v85 + 3) != 0x64732E6464612E32) && (*v85 != 0x6275732E32657373 || *(v85 + 3) != 0x64732E6275732E32) && (*v85 != 0x6C756D2E32657373 || *(v85 + 3) != 0x64732E6C756D2E32) && (*v85 != 0x7669642E32657373 || *(v85 + 3) != 0x64732E7669642E32))
                      {
LABEL_871:
                        v528 = 1;
LABEL_942:
                        v527 = 1;
LABEL_955:
                        if (v162)
                        {
LABEL_956:
                          if (v33 == 16 && (*v85 == 0x61702E3365737373 ? (v586 = v85[1] == 0x3832312E622E7362) : (v586 = 0), v586 || (*v85 == 0x61702E3365737373 ? (v587 = v85[1] == 0x3832312E772E7362) : (v587 = 0), v587 || (*v85 == 0x61702E3365737373 ? (v588 = v85[1] == 0x3832312E642E7362) : (v588 = 0), v588))) || (v161 & 1) == 0 && (*v34 == 0x6261702E32787661 ? (v589 = *(v34 + 8) == 115) : (v589 = 0), v589) || (v527 & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v590 = v34[1] == 0x736261702E6B7361) : (v590 = 0), v590))
                          {
                            Select = upgradeAbs(v1732, v1718);
                            goto LABEL_413;
                          }

                          if (v33 == 12)
                          {
                            if (*v85 == 0x6D702E3134657373 && *(v85 + 2) == 1651734625)
                            {
                              goto LABEL_1291;
                            }

                            v11 = 0x616D702E32657373;
                            if (*v85 == 0x616D702E32657373 && *(v85 + 2) == 1999532920)
                            {
                              goto LABEL_1291;
                            }

                            v10 = 1685289057;
                            if (*v85 == 0x6D702E3134657373 && *(v85 + 2) == 1685289057)
                            {
                              goto LABEL_1291;
                            }
                          }

                          if ((v77 & 1) == 0 && (*v34 == 0x616D702E32787661 ? (v594 = *(v34 + 4) == 29560) : (v594 = 0), v594) || (v162 & 1) == 0 && ((v10 = 0x6D2E323135787661, *v34 == 0x6D2E323135787661) ? (v595 = v34[1] == 0x78616D702E6B7361) : (v595 = 0), v595 ? (v596 = *(v34 + 16) == 115) : (v596 = 0), v596))
                          {
LABEL_1291:
                            Select = UpgradeX86BinaryIntrinsics(v1732, v1718, 277);
                            goto LABEL_413;
                          }

                          v3 = v1733;
                          if (v33 == 12)
                          {
                            if (*v85 == 0x616D702E32657373 && *(v85 + 2) == 1647211896)
                            {
                              goto LABEL_1336;
                            }

                            v10 = 2004187233;
                            if (*v85 == 0x6D702E3134657373 && *(v85 + 2) == 2004187233)
                            {
                              goto LABEL_1336;
                            }

                            if (*v85 == 0x6D702E3134657373 && *(v85 + 2) == 1685420129)
                            {
                              goto LABEL_1336;
                            }
                          }

                          if ((v77 & 1) == 0 && (*v34 == 0x616D702E32787661 ? (v600 = *(v34 + 4) == 30072) : (v600 = 0), v600) || (v162 & 1) == 0 && ((v10 = 0x6D2E323135787661, *v34 == 0x6D2E323135787661) ? (v601 = v34[1] == 0x78616D702E6B7361) : (v601 = 0), v601 ? (v602 = *(v34 + 16) == 117) : (v602 = 0), v602))
                          {
LABEL_1336:
                            v687 = v1718;
                            v688 = 308;
                            goto LABEL_1621;
                          }

                          if (v33 == 12)
                          {
                            if (*v85 == 0x6D702E3134657373 && *(v85 + 2) == 1651732073)
                            {
                              goto LABEL_1396;
                            }

                            v10 = 1999532910;
                            v11 = 0x696D702E32657373;
                            if (*v85 == 0x696D702E32657373 && *(v85 + 2) == 1999532910)
                            {
                              goto LABEL_1396;
                            }

                            if (*v85 == 0x6D702E3134657373 && *(v85 + 2) == 1685286505)
                            {
                              goto LABEL_1396;
                            }
                          }

                          if ((v77 & 1) == 0 && (*v34 == 0x696D702E32787661 ? (v606 = *(v34 + 4) == 29550) : (v606 = 0), v606) || (v162 & 1) == 0 && ((v10 = 0x6D2E323135787661, *v34 == 0x6D2E323135787661) ? (v607 = v34[1] == 0x6E696D702E6B7361) : (v607 = 0), v607 ? (v608 = *(v34 + 16) == 115) : (v608 = 0), v608))
                          {
LABEL_1396:
                            v687 = v1718;
                            v688 = 278;
                            goto LABEL_1621;
                          }

                          if (v33 == 12 && (*v85 == 0x696D702E32657373 ? (v609 = *(v85 + 2) == 1647211886) : (v609 = 0), v609 || (*v85 == 0x6D702E3134657373 ? (v610 = *(v85 + 2) == 2004184681) : (v610 = 0), v610 || ((v10 = 1685417577, *v85 == 0x6D702E3134657373) ? (v611 = *(v85 + 2) == 1685417577) : (v611 = 0), v611))) || (v77 & 1) == 0 && (*v34 == 0x696D702E32787661 ? (v612 = *(v34 + 4) == 30062) : (v612 = 0), v612) || (v162 & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v613 = v34[1] == 0x6E696D702E6B7361) : (v613 = 0), v613 ? (v614 = *(v34 + 16) == 117) : (v614 = 0), v614))
                          {
                            v687 = v1718;
                            v688 = 309;
                            goto LABEL_1621;
                          }

                          if (v33 == 19)
                          {
                            v617 = *(v85 + 11);
                            v10 = 0x702E323135787661;
                            v618 = *v85 == 0x702E323135787661 && v85[1] == 0x2E71642E756C756DLL;
                            v615 = 0x3231352E71642E75;
                          }

                          else
                          {
                            if (v33 != 13)
                            {
LABEL_1467:
                              if ((v528 & 1) != 0 || (*v34 == 0x6D2E323135787661 ? (v769 = v34[1] == 0x6C756D702E6B7361) : (v769 = 0), v769 ? (v770 = *(v34 + 13) == 0x2E71642E756C756DLL) : (v770 = 0), !v770))
                              {
                                if (v33 == 18)
                                {
                                  v10 = *(v85 + 8);
                                  v11 = 0x702E323135787661;
                                  if (*v85 != 0x702E323135787661 || v85[1] != 0x352E71642E6C756DLL || v10 != 12849)
                                  {
                                    goto LABEL_2148;
                                  }
                                }

                                else
                                {
                                  if (v33 == 12)
                                  {
                                    if ((*v85 != 0x6D702E3134657373 || *(v85 + 2) != 1902406773) && (*v85 != 0x756D702E32787661 || *(v85 + 2) != 1902390892))
                                    {
                                      v10 = 0x737476632E657373;
                                      if (*v85 != 0x737476632E657373 || *(v85 + 2) != 1936929385)
                                      {
                                        goto LABEL_2148;
                                      }

                                      goto LABEL_2141;
                                    }

                                    goto LABEL_1536;
                                  }

                                  if (v33 < 0x14 || (*v34 == 0x6D2E323135787661 ? (v814 = v34[1] == 0x6C756D702E6B7361) : (v814 = 0), v814 ? (v815 = *(v34 + 4) == 779183150) : (v815 = 0), !v815))
                                  {
                                    if (v33 > 14)
                                    {
                                      switch(v33)
                                      {
                                        case 0xFuLL:
                                          v816 = *(v85 + 7);
                                          v817 = *v85 == 0x7476632E32657373;
                                          v818 = 0x6473323436697374;
LABEL_2117:
                                          if (!v817 || v816 != v818)
                                          {
                                            break;
                                          }

                                          goto LABEL_2141;
                                        case 0x10uLL:
                                          if (*v85 != 0x632E323135787661 || v85[1] != 0x6473326973757476)
                                          {
                                            break;
                                          }

                                          v1189 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                          v1190 = *(*v1718 + 24);
                                          LOWORD(v1728) = 257;
                                          UIToFP = llvm::IRBuilderBase::CreateUIToFP(v1732, v1189, v1190, &__src);
LABEL_2142:
                                          v1035 = UIToFP;
                                          ShuffleVector = UIToFP;
                                          v1036 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                          LOWORD(v1728) = 257;
                                          goto LABEL_2143;
                                        case 0x11uLL:
                                          v874 = *v85 == 0x647476632E787661 && v85[1] == 0x35322E64702E3271;
                                          if (v874 && *(v85 + 16) == 54)
                                          {
                                            goto LABEL_2416;
                                          }

                                          v10 = v85[1];
                                          v11 = *(v85 + 16);
                                          v876 = *v85 == 0x647476632E787661 && v10 == 0x35322E73702E3271;
                                          if (v876 && v11 == 54)
                                          {
                                            goto LABEL_2416;
                                          }

                                          break;
                                      }
                                    }

                                    else if (v33 == 13)
                                    {
                                      if (*v85 == 0x7476632E32657373 && *(v85 + 5) == 0x6473326973747663)
                                      {
LABEL_2141:
                                        v1031 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                        v1032 = *(*v1718 + 24);
                                        LOWORD(v1728) = 257;
                                        UIToFP = llvm::IRBuilderBase::CreateSIToFP(v1732, v1031, v1032, &__src);
                                        goto LABEL_2142;
                                      }

                                      if (*v85 == 0x7476632E32657373 && *(v85 + 5) == 0x6473327373747663)
                                      {
                                        v1255 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                        LOWORD(v1728) = 257;
                                        ShuffleVector = llvm::IRBuilderBase::CreateExtractElement(v1732, v1255, &__src, v10);
                                        v1256 = *(*v1718 + 24);
                                        LOWORD(v1728) = 257;
                                        UIToFP = llvm::IRBuilderBase::CreateFPExt(v1732, ShuffleVector, v1256, &__src);
                                        goto LABEL_2142;
                                      }

                                      if (*v85 == 0x7476632E32657373 && *(v85 + 5) == 0x6470327164747663)
                                      {
                                        goto LABEL_2416;
                                      }

                                      if (*v85 == 0x7476632E32657373 && *(v85 + 5) == 0x7370327164747663)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    else if (v33 == 14)
                                    {
                                      v816 = *(v85 + 6);
                                      v817 = *v85 == 0x737476632E657373;
                                      v818 = 0x7373323436697374;
                                      goto LABEL_2117;
                                    }

LABEL_2148:
                                    if ((v528 & 1) == 0)
                                    {
                                      v10 = *(v34 + 13);
                                      v1038 = *v34 == 0x6D2E323135787661 && v34[1] == 0x647476632E6B7361;
                                      if (v1038 && v10 == 0x2E64703271647476)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    if ((v300 & 1) == 0)
                                    {
                                      v10 = v34[1];
                                      v11 = *(v34 + 14);
                                      v12 = 0x2E64703271647574;
                                      v1040 = *v34 == 0x6D2E323135787661 && v10 == 0x757476632E6B7361;
                                      if (v1040 && v11 == 0x2E64703271647574)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    if ((v528 & 1) == 0)
                                    {
                                      v10 = v34[1];
                                      v11 = *(v34 + 13);
                                      v1042 = *v34 == 0x6D2E323135787661 && v10 == 0x647476632E6B7361;
                                      if (v1042 && v11 == 0x2E73703271647476)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    if ((v300 & 1) == 0)
                                    {
                                      v10 = v34[1];
                                      v11 = *(v34 + 14);
                                      v12 = 0x2E73703271647574;
                                      v1044 = *v34 == 0x6D2E323135787661 && v10 == 0x757476632E6B7361;
                                      if (v1044 && v11 == 0x2E73703271647574)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    if ((v528 & 1) == 0)
                                    {
                                      v10 = v34[1];
                                      v11 = *(v34 + 13);
                                      v1046 = *v34 == 0x6D2E323135787661 && v10 == 0x717476632E6B7361;
                                      if (v1046 && v11 == 0x2E64703271717476)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    if ((v300 & 1) == 0)
                                    {
                                      v10 = *(v34 + 14);
                                      v1048 = *v34 == 0x6D2E323135787661 && v34[1] == 0x757476632E6B7361;
                                      if (v1048 && v10 == 0x2E64703271717574)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

                                    if (v33 > 23)
                                    {
                                      if (v33 == 25)
                                      {
                                        if (*v85 == 0x6D2E323135787661 && v85[1] == 0x757476632E6B7361 && v85[2] == 0x35322E7370327171 && *(v85 + 24) == 54)
                                        {
                                          goto LABEL_2416;
                                        }

                                        v10 = v85[2];
                                        v11 = *(v85 + 24);
                                        v1089 = *v85 == 0x6D2E323135787661 && v85[1] == 0x757476632E6B7361;
                                        v1090 = v1089 && v10 == 0x31352E7370327171;
                                        if (v1090 && v11 == 50)
                                        {
                                          goto LABEL_2416;
                                        }
                                      }

                                      else if (v33 == 24)
                                      {
                                        v1052 = *v85 == 0x6D2E323135787661 && v85[1] == 0x717476632E6B7361;
                                        if (v1052 && v85[2] == 0x3635322E73703271)
                                        {
                                          goto LABEL_2416;
                                        }

                                        v1054 = *v85 == 0x6D2E323135787661 && v85[1] == 0x717476632E6B7361;
                                        if (v1054 && v85[2] == 0x3231352E73703271)
                                        {
                                          goto LABEL_2416;
                                        }

                                        v1056 = *v85 == 0x6D2E323135787661 && v85[1] == 0x707476632E6B7361;
                                        if (v1056 && v85[2] == 0x3832312E64703273)
                                        {
                                          goto LABEL_2416;
                                        }

                                        v10 = v85[2];
                                        v1058 = *v85 == 0x6D2E323135787661 && v85[1] == 0x707476632E6B7361;
                                        if (v1058 && v10 == 0x3635322E64703273)
                                        {
                                          goto LABEL_2416;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v33 != 13)
                                      {
                                        if (v33 != 18)
                                        {
                                          goto LABEL_2293;
                                        }

                                        v10 = 0x2E7476632E787661;
                                        v1050 = *v85 == 0x2E7476632E787661 && v85[1] == 0x322E64702E327370;
                                        if (!v1050 || *(v85 + 8) != 13877)
                                        {
                                          goto LABEL_2293;
                                        }

LABEL_2416:
                                        v1127 = *v1718;
                                        v1128 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                        ShuffleVector = v1128;
                                        v1129 = *v1128;
                                        if (*(v1127 + 8) < *(*v1128 + 32))
                                        {
                                          v1729[0] = 0x100000000;
                                          LOWORD(v1728) = 257;
                                          ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1128, v1128, v1729, 2, &__src);
                                        }

                                        v1130 = *(*(v1129 + 24) + 8);
                                        v1131 = llvm::StringRef::find(&v1713, "cvtu", 4uLL, 0);
                                        if (v1130 != 2)
                                        {
                                          v1135 = v1131;
                                          v1136 = v1718;
                                          if (((llvm::CallBase::arg_end(v1718) - (v1136 - 32 * (*(v1136 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0x80)
                                          {
                                            goto LABEL_2426;
                                          }

                                          v1137 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[12];
                                          if (*(v1137 + 16) != 16)
                                          {
                                            goto LABEL_2428;
                                          }

                                          v1138 = (v1137 + 24);
                                          if (*(v1137 + 32) >= 0x41u)
                                          {
                                            v1138 = *v1138;
                                          }

                                          if (*v1138 == 4)
                                          {
LABEL_2426:
                                            __src = "cvt";
                                            LOWORD(v1728) = 259;
                                            if (v1135 == -1)
                                            {
                                              SIToFP = llvm::IRBuilderBase::CreateSIToFP(v1732, ShuffleVector, v1127, &__src);
                                            }

                                            else
                                            {
                                              SIToFP = llvm::IRBuilderBase::CreateUIToFP(v1732, ShuffleVector, v1127, &__src);
                                            }
                                          }

                                          else
                                          {
LABEL_2428:
                                            if (v1135 == -1)
                                            {
                                              v1139 = 10890;
                                            }

                                            else
                                            {
                                              v1139 = 10895;
                                            }

                                            v1140 = *(*(*(v1718 + 5) + 56) + 40);
                                            __src = v1127;
                                            v1725 = v1129;
                                            v1141 = llvm::Intrinsic::getDeclaration(v1140, v1139, &__src, 2);
                                            if (v1141)
                                            {
                                              v1142 = *(v1141 + 24);
                                            }

                                            else
                                            {
                                              v1142 = 0;
                                            }

                                            v1729[0] = ShuffleVector;
                                            v1729[1] = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[12];
                                            LOWORD(v1728) = 257;
                                            SIToFP = llvm::IRBuilderBase::CreateCall(v1732, v1142, v1141, v1729, 2, &__src, 0);
                                          }

                                          goto LABEL_2436;
                                        }

                                        v1132 = ShuffleVector;
                                        v1133 = "cvtps2pd";
LABEL_2420:
                                        __src = v1133;
                                        LOWORD(v1728) = 259;
                                        SIToFP = llvm::IRBuilderBase::CreateFPExt(v1732, v1132, v1127, &__src);
LABEL_2436:
                                        ShuffleVector = SIToFP;
                                        v1143 = v1718;
                                        if (((llvm::CallBase::arg_end(v1718) - (v1143 - 32 * (*(v1143 + 5) & 0x7FFFFFF))) >> 5) < 3)
                                        {
                                          goto LABEL_1395;
                                        }

                                        v93 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                        v94 = *(v93 + 8);
                                        v92 = ShuffleVector;
                                        goto LABEL_161;
                                      }

                                      if (*v85 == 0x7476632E32657373 && *(v85 + 5) == 0x6470327370747663)
                                      {
                                        goto LABEL_2416;
                                      }
                                    }

LABEL_2293:
                                    if ((v300 & 1) != 0 || (*v34 == 0x6D2E323135787661 ? (v1092 = v34[1] == 0x747663762E6B7361) : (v1092 = 0), v1092 ? (v1093 = *(v34 + 14) == 0x2E73703268707476) : (v1093 = 0), !v1093))
                                    {
                                      if ((v77 & 1) != 0 || (*v34 == 0x7032687074766376 ? (v1094 = *(v34 + 4) == 11891) : (v1094 = 0), !v1094))
                                      {
                                        if ((v527 & 1) == 0 && *v34 == 0x6D2E323135787661 && v34[1] == 0x64616F6C2E6B7361)
                                        {
                                          v1257 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                          InsertElement = UpgradeMaskedLoad(v1732, *v1257, *(v1257 + 4), *(v1257 + 8), *(v34 + 16) != 117);
                                          goto LABEL_1622;
                                        }

                                        if (v33 < 0x18)
                                        {
                                          goto LABEL_2330;
                                        }

                                        if (*v34 == 0x6D2E323135787661 && v34[1] == 0x617078652E6B7361 && v34[2] == 0x2E64616F6C2E646ELL)
                                        {
                                          v1267 = *v1718;
                                          v1268 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                          v1269 = llvm::PointerType::get(*(*v1718 + 24), 0);
                                          LOWORD(v1728) = 257;
                                          v1270 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1268, v1269, &__src);
                                          v1271 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8], *(v1267 + 8));
                                          v1272 = *(v4 + 40);
                                          __src = v1267;
                                          v1273 = llvm::Intrinsic::getDeclaration(v1272, 186, &__src, 1);
                                          v1222 = v1273;
                                          if (v1273)
                                          {
                                            v1223 = *(v1273 + 24);
                                          }

                                          else
                                          {
                                            v1223 = 0;
                                          }

                                          v1729[0] = v1270;
                                          v1729[1] = v1271;
                                          *&v1730 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                        }

                                        else
                                        {
                                          if (v33 < 0x1B || (*v34 == 0x6D2E323135787661 ? (v1098 = v34[1] == 0x706D6F632E6B7361) : (v1098 = 0), v1098 ? (v1099 = v34[2] == 0x6F74732E73736572) : (v1099 = 0), v1099 ? (v1100 = *(v34 + 19) == 0x2E65726F74732E73) : (v1100 = 0), !v1100))
                                          {
LABEL_2330:
                                            if ((v528 & 1) != 0 || (*v34 == 0x6D2E323135787661 ? (v1101 = v34[1] == 0x706D6F632E6B7361) : (v1101 = 0), v1101 ? (v1102 = *(v34 + 13) == 0x2E73736572706D6FLL) : (v1102 = 0), !v1102))
                                            {
                                              if (v33 < 0x13 || (*v34 == 0x6D2E323135787661 ? (v1103 = v34[1] == 0x617078652E6B7361) : (v1103 = 0), v1103 ? (v1104 = *(v34 + 11) == 0x2E646E617078652ELL) : (v1104 = 0), !v1104))
                                              {
                                                if ((v161 & 1) != 0 || (*v34 == 0x6F6370762E706F78 ? (v1105 = *(v34 + 8) == 109) : (v1105 = 0), !v1105))
                                                {
                                                  if ((v77 & 1) == 0 && *v34 == 0x6D6370762E706F78 && *(v34 + 4) == 30319)
                                                  {
                                                    v1305 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                                                    LOWORD(v1728) = 257;
                                                    v1306 = llvm::IRBuilderBase::CreateNot(v1732, v1305, &__src);
                                                    v1307 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                                    LOWORD(v1728) = 257;
                                                    v1308 = llvm::IRBuilderBase::CreateAnd(v1732, v1307, v1305, &__src);
                                                    v1309 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                                    LOWORD(v1728) = 257;
                                                    v1310 = llvm::IRBuilderBase::CreateAnd(v1732, v1309, v1306, &__src);
                                                    LOWORD(v1728) = 257;
                                                    InsertElement = llvm::IRBuilderBase::CreateOr(v1732, v1308, v1310, &__src);
                                                    goto LABEL_1622;
                                                  }

                                                  if ((v161 & 1) == 0 && (*v34 == 0x6F7270762E706F78 ? (v1107 = *(v34 + 8) == 116) : (v1107 = 0), v1107) || (v159 & 1) == 0 && (*v34 == 0x702E323135787661 ? (v1108 = *(v34 + 3) == 0x6C6F72702E323135) : (v1108 = 0), v1108) || (v527 & 1) == 0 && (*v34 == 0x6D2E323135787661 ? (v1109 = v34[1] == 0x6C6F72702E6B7361) : (v1109 = 0), v1109))
                                                  {
                                                    v1289 = v1718;
                                                    v1290 = 0;
                                                  }

                                                  else
                                                  {
                                                    if ((v159 & 1) != 0 || (*v34 == 0x702E323135787661 ? (v1110 = *(v34 + 3) == 0x726F72702E323135) : (v1110 = 0), !v1110))
                                                    {
                                                      if ((v527 & 1) != 0 || (*v34 == 0x6D2E323135787661 ? (v1111 = v34[1] == 0x726F72702E6B7361) : (v1111 = 0), !v1111))
                                                      {
                                                        if (!v299 && (*v34 == 0x762E323135787661 ? (v1112 = *(v34 + 6) == 0x2E646C687370762ELL) : (v1112 = 0), v1112) || v33 >= 0x12 && ((v34 = v1713, *v1713 == 0x6D2E323135787661) ? (v1113 = v1713[1] == 0x687370762E6B7361) : (v1113 = 0), v1113 ? (v1114 = *(v1713 + 8) == 25708) : (v1114 = 0), v1114 || v33 >= 0x13 && (*v1713 == 0x6D2E323135787661 ? (v1115 = v1713[1] == 0x7370762E7A6B7361) : (v1115 = 0), v1115 ? (v1116 = *(v1713 + 11) == 0x646C687370762E7ALL) : (v1116 = 0), v1116)))
                                                        {
                                                          v1335 = *(v34 + 11) == 122;
                                                          v1336 = v1718;
                                                          v1337 = 0;
                                                        }

                                                        else
                                                        {
                                                          if (v299 || ((v1117 = v1713, *v1713 == 0x762E323135787661) ? (v1118 = *(v1713 + 6) == 0x2E6472687370762ELL) : (v1118 = 0), !v1118))
                                                          {
                                                            if (v33 < 0x12)
                                                            {
                                                              if (v33 == 16)
                                                              {
                                                                v1120 = *v85;
                                                                v1119 = v85[1];
                                                                if (v1120 == 0x72632E3234657373 && v1119 == 0x382E34362E323363)
                                                                {
                                                                  v1122 = llvm::Intrinsic::getDeclaration(*(v4 + 40), 11409, 0, 0);
                                                                  v1123 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                                                  v1124 = *v6;
                                                                  LOWORD(v1728) = 257;
                                                                  v1125 = llvm::IRBuilderBase::CreateCast(v1732, 38, v1123, (v1124 + 1992), &__src);
                                                                  if (v1122)
                                                                  {
                                                                    v1126 = *(v1122 + 24);
                                                                  }

                                                                  else
                                                                  {
                                                                    v1126 = 0;
                                                                  }

                                                                  v1729[0] = v1125;
                                                                  v1729[1] = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                                                  LOWORD(v1728) = 257;
                                                                  ShuffleVector = llvm::IRBuilderBase::CreateCall(v1732, v1126, v1122, v1729, 2, &__src, 0);
                                                                  v1468 = *v1718;
                                                                  LOWORD(v1728) = 257;
                                                                  InsertElement = llvm::IRBuilderBase::CreateCast(v1732, 39, ShuffleVector, v1468, &__src);
                                                                  goto LABEL_1622;
                                                                }
                                                              }

LABEL_2658:
                                                              if ((v527 & 1) != 0 || (*v1713 == 0x6F7262762E787661 ? (v1362 = v1713[1] == 0x732E747361636461) : (v1362 = 0), !v1362))
                                                              {
                                                                if (v33 < 0x13)
                                                                {
                                                                  if (v33 < 0xC)
                                                                  {
LABEL_2748:
                                                                    if ((v159 & 1) != 0 || (*v1713 == 0x6F6D702E32787661 ? (v1387 = *(v1713 + 3) == 0x7873766F6D702E32) : (v1387 = 0), !v1387 && (*v1713 == 0x6F6D702E32787661 ? (v1388 = *(v1713 + 3) == 0x787A766F6D702E32) : (v1388 = 0), !v1388)))
                                                                    {
                                                                      if (v33 < 0x12 || (*v1713 == 0x6D2E323135787661 ? (v1389 = v1713[1] == 0x766F6D702E6B7361) : (v1389 = 0), v1389 ? (v1390 = *(v1713 + 8) == 30835) : (v1390 = 0), !v1390 && (*v1713 == 0x6D2E323135787661 ? (v1391 = v1713[1] == 0x766F6D702E6B7361) : (v1391 = 0), v1391 ? (v1392 = *(v1713 + 8) == 30842) : (v1392 = 0), !v1392)))
                                                                      {
                                                                        v34 = v1713;
                                                                        v70 = v1714;
                                                                        if (v1714 != 23)
                                                                        {
                                                                          if (v1714 < 0x12)
                                                                          {
                                                                            if (v1714 >= 0xF)
                                                                            {
                                                                              goto LABEL_2935;
                                                                            }

                                                                            v514 = 1;
                                                                            v513 = 1;
                                                                            v76 = 1;
                                                                            i = 1;
                                                                            v650 = 1;
                                                                            v662 = 1;
                                                                            v653 = 1;
                                                                            v663 = 1;
                                                                            v664 = 1;
                                                                            if (v1714 >= 0xB)
                                                                            {
                                                                              goto LABEL_1156;
                                                                            }

                                                                            goto LABEL_1611;
                                                                          }

                                                                          if (*v1713 != 0x6F7262762E787661 || v1713[1] != 0x3166747361636461 || *(v1713 + 8) != 14386)
                                                                          {
                                                                            if (v1714 != 19)
                                                                            {
                                                                              v7 = v1733;
                                                                              goto LABEL_99;
                                                                            }

                                                                            v1476 = *v1713 == 0x7262762E32787661 && v1713[1] == 0x697473616364616FLL;
                                                                            v1477 = v1476 && *(v1713 + 11) == 0x3832316974736163;
                                                                            v7 = v1733;
                                                                            if (!v1477)
                                                                            {
                                                                              v70 = 19;
                                                                              goto LABEL_99;
                                                                            }
                                                                          }

LABEL_2873:
                                                                          v1478 = *(*v1718 + 24);
                                                                          v1480 = llvm::Type::getPrimitiveSizeInBits(v1478);
                                                                          if (v1479)
                                                                          {
                                                                          }

                                                                          v1481 = (0x80 / v1480);
                                                                          llvm::FixedVectorType::get(v1478, v1481);
                                                                          v1483 = v1482;
                                                                          v1484 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                                                          v1485 = llvm::PointerType::get(v1482, 0);
                                                                          LOWORD(v1728) = 257;
                                                                          PointerCast = llvm::IRBuilderBase::CreatePointerCast(v1732, v1484, v1485, &__src, v1486);
                                                                          LOWORD(v1728) = 257;
                                                                          v1488 = llvm::IRBuilderBase::CreateAlignedLoad(v1732, v1483, PointerCast, 256, 0, &__src);
                                                                          if (v1481 == 2)
                                                                          {
                                                                            *v1729 = xmmword_2750C8AA0;
                                                                            LOWORD(v1728) = 257;
                                                                            v1489 = 4;
                                                                          }

                                                                          else
                                                                          {
                                                                            *v1729 = xmmword_2750C8AB0;
                                                                            v1730 = unk_2750C8AC0;
                                                                            LOWORD(v1728) = 257;
                                                                            v1489 = 8;
                                                                          }

                                                                          Select = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1488, v1729, v1489, &__src);
                                                                          goto LABEL_413;
                                                                        }

                                                                        v59 = 1;
                                                                        goto LABEL_62;
                                                                      }
                                                                    }

LABEL_2774:
                                                                    v1393 = *v1718;
                                                                    v1394 = *(*v1718 + 32);
                                                                    __src = &v1726;
                                                                    v1725 = 0x800000000;
                                                                    llvm::SmallVectorImpl<int>::resizeImpl<false>(&__src, v1394);
                                                                    v1395 = __src;
                                                                    if (v1394)
                                                                    {
                                                                      v1396 = 0;
                                                                      v1397 = vdupq_n_s64(v1394 - 1);
                                                                      v1398 = xmmword_2750C1830;
                                                                      v1399 = xmmword_2750C1210;
                                                                      v1400 = __src + 8;
                                                                      v1401 = vdupq_n_s64(4uLL);
                                                                      do
                                                                      {
                                                                        v1402 = vmovn_s64(vcgeq_u64(v1397, v1399));
                                                                        if (vuzp1_s16(v1402, *v1397.i8).u8[0])
                                                                        {
                                                                          *(v1400 - 2) = v1396;
                                                                        }

                                                                        if (vuzp1_s16(v1402, *&v1397).i8[2])
                                                                        {
                                                                          *(v1400 - 1) = v1396 + 1;
                                                                        }

                                                                        if (vuzp1_s16(*&v1397, vmovn_s64(vcgeq_u64(v1397, *&v1398))).i32[1])
                                                                        {
                                                                          *v1400 = v1396 + 2;
                                                                          v1400[1] = v1396 + 3;
                                                                        }

                                                                        v1396 += 4;
                                                                        v1398 = vaddq_s64(v1398, v1401);
                                                                        v1399 = vaddq_s64(v1399, v1401);
                                                                        v1400 += 4;
                                                                      }

                                                                      while (((v1394 + 3) & 0x1FFFFFFFCLL) != v1396);
                                                                    }

                                                                    v1403 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                                                    v1731 = 257;
                                                                    v1404 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1403, v1395, v1725, v1729);
                                                                    if (llvm::StringRef::find(&v1713, "pmovsx", 6uLL, 0) == -1)
                                                                    {
                                                                      v1731 = 257;
                                                                      v1405 = 39;
                                                                    }

                                                                    else
                                                                    {
                                                                      v1731 = 257;
                                                                      v1405 = 40;
                                                                    }

                                                                    ShuffleVector = llvm::IRBuilderBase::CreateCast(v1732, v1405, v1404, v1393, v1729);
                                                                    v1434 = v1718;
                                                                    if (((llvm::CallBase::arg_end(v1718) - (v1434 - 32 * (*(v1434 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x60)
                                                                    {
                                                                      v1266 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                                                      v860 = *(v1266 + 8);
                                                                      v861 = ShuffleVector;
                                                                      goto LABEL_2567;
                                                                    }

                                                                    goto LABEL_1585;
                                                                  }

                                                                  v1363 = v1713;
LABEL_2740:
                                                                  if (*v1363 == 0x6D702E3134657373 && *(v1363 + 2) == 2020832879)
                                                                  {
                                                                    goto LABEL_2774;
                                                                  }

                                                                  v1384 = *v1363;
                                                                  v1385 = *(v1363 + 2);
                                                                  if (v1384 == 0x6D702E3134657373 && v1385 == 2021291631)
                                                                  {
                                                                    goto LABEL_2774;
                                                                  }

                                                                  goto LABEL_2748;
                                                                }

                                                                v1363 = v1713;
                                                                if (*v1713 != 0x762E323135787661 || v1713[1] != 0x73616364616F7262 || *(v1713 + 11) != 0x732E747361636461)
                                                                {
                                                                  goto LABEL_2740;
                                                                }
                                                              }

                                                              v1406 = *v1718;
                                                              v1407 = *(*v1718 + 24);
                                                              v1408 = *(*v1718 + 32);
                                                              v1409 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                                              v1410 = llvm::PointerType::get(v1407, 0);
                                                              LOWORD(v1728) = 257;
                                                              v1411 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1409, v1410, &__src);
                                                              LOWORD(v1728) = 257;
                                                              v1412 = llvm::IRBuilderBase::CreateAlignedLoad(v1732, v1407, v1411, 0, 0, &__src);
                                                              v1413 = *v6;
                                                              v1415 = llvm::PoisonValue::get(v1406, v1414);
                                                              ShuffleVector = v1415;
                                                              if (v1408)
                                                              {
                                                                v1416 = v1415;
                                                                for (j = 0; j != v1408; j = (j + 1))
                                                                {
                                                                  v1418 = llvm::ConstantInt::get((v1413 + 1992), j);
                                                                  LOWORD(v1728) = 257;
                                                                  v1416 = llvm::IRBuilderBase::CreateInsertElement(v1732, v1416, v1412, v1418, &__src);
                                                                  ShuffleVector = v1416;
                                                                }
                                                              }

                                                              goto LABEL_1395;
                                                            }

                                                            v1117 = v1713;
                                                            if (*v1713 != 0x6D2E323135787661 || v1713[1] != 0x687370762E6B7361 || *(v1713 + 8) != 25714)
                                                            {
                                                              if (v33 < 0x13)
                                                              {
                                                                goto LABEL_2658;
                                                              }

                                                              v1360 = *v1713 == 0x6D2E323135787661 && v1713[1] == 0x7370762E7A6B7361;
                                                              if (!v1360 || *(v1713 + 11) != 0x6472687370762E7ALL)
                                                              {
                                                                goto LABEL_2658;
                                                              }
                                                            }
                                                          }

                                                          v1335 = *(v1117 + 11) == 122;
                                                          v1336 = v1718;
                                                          v1337 = 1;
                                                        }

                                                        InsertElement = upgradeX86ConcatShift(v1732, v1336, v1337, v1335, v11, v12);
                                                        goto LABEL_1622;
                                                      }
                                                    }

                                                    v1289 = v1718;
                                                    v1290 = 1;
                                                  }

                                                  InsertElement = upgradeX86Rotate(v1732, v1289, v1290, v10, v11, v12);
                                                  goto LABEL_1622;
                                                }

                                                v1300 = v34 + v33;
                                                v1301 = *(v1300 - 1) != 25205 && *(v1300 - 1) != 30581 && *(v1300 - 1) != 25717 && *(v1300 - 1) != 29045;
                                                if (((llvm::CallBase::arg_end(v1718) - (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x60)
                                                {
                                                  v1302 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                                                  v1303 = (v1302 + 24);
                                                  if (*(v1302 + 32) >= 0x41u)
                                                  {
                                                    v1303 = *v1303;
                                                  }

                                                  v1304 = *v1303;
                                                  goto LABEL_2937;
                                                }

                                                v1332 = 9;
                                                if (v1714 < 9)
                                                {
                                                  v1332 = v1714;
                                                }

                                                v1333 = v1713 + v1332;
                                                v1334 = v1714 - v1332;
                                                v1713 = (v1713 + v1332);
                                                v1714 = v1334;
                                                if (v1334 < 2)
                                                {
                                                  goto LABEL_2614;
                                                }

                                                switch(*v1333)
                                                {
                                                  case 0x746C:
                                                    v1304 = 0;
                                                    goto LABEL_2937;
                                                  case 0x656C:
                                                    v1304 = 1;
                                                    goto LABEL_2937;
                                                  case 0x7467:
                                                    v1304 = 2;
                                                    goto LABEL_2937;
                                                  case 0x6567:
                                                    v1304 = 3;
                                                    goto LABEL_2937;
                                                  case 0x7165:
                                                    v1304 = 4;
                                                    goto LABEL_2937;
                                                  case 0x656E:
                                                    v1304 = 5;
                                                    goto LABEL_2937;
                                                }

                                                if (v1334 >= 5 && ((v1364 = *v1333, v1365 = v1333[4], v1364 == 1936482662) ? (v1366 = v1365 == 101) : (v1366 = 0), v1366))
                                                {
                                                  v1304 = 6;
                                                }

                                                else
                                                {
LABEL_2614:
                                                  v1304 = 7;
                                                }

LABEL_2937:
                                                InsertElement = upgradeX86vpcom(v1732, v1718, v1304, v1301);
                                                goto LABEL_1622;
                                              }
                                            }

                                            v1217 = *v1718;
                                            v1218 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8], *(*v1718 + 32));
                                            if (*(v1713 + 12) == 99)
                                            {
                                              v1219 = 10472;
                                            }

                                            else
                                            {
                                              v1219 = 10526;
                                            }

                                            v1220 = *(v4 + 40);
                                            __src = v1217;
                                            v1221 = llvm::Intrinsic::getDeclaration(v1220, v1219, &__src, 1);
                                            v1222 = v1221;
                                            if (v1221)
                                            {
                                              v1223 = *(v1221 + 24);
                                            }

                                            else
                                            {
                                              v1223 = 0;
                                            }

                                            v1299 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                                            v1729[0] = *v1299;
                                            v1729[1] = v1299[4];
                                            *&v1730 = v1218;
                                            LOWORD(v1728) = 257;
LABEL_2732:
                                            InsertElement = llvm::IRBuilderBase::CreateCall(v1732, v1223, v1222, v1729, 3, &__src, 0);
                                            goto LABEL_1622;
                                          }

                                          v1317 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                                          v1318 = *(v1317 + 4);
                                          v1319 = *v1318;
                                          v1320 = *v1317;
                                          v1321 = llvm::PointerType::get(*(*v1318 + 3), 0);
                                          LOWORD(v1728) = 257;
                                          v1322 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1320, v1321, &__src);
                                          v1323 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8], v1319[8]);
                                          v1324 = *(v4 + 40);
                                          __src = v1319;
                                          v1325 = llvm::Intrinsic::getDeclaration(v1324, 185, &__src, 1);
                                          v1222 = v1325;
                                          if (v1325)
                                          {
                                            v1223 = *(v1325 + 24);
                                          }

                                          else
                                          {
                                            v1223 = 0;
                                          }

                                          v1729[0] = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                                          v1729[1] = v1322;
                                          *&v1730 = v1323;
                                        }

                                        LOWORD(v1728) = 257;
                                        goto LABEL_2732;
                                      }
                                    }

                                    v1127 = *v1718;
                                    v1180 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                                    ShuffleVector = v1180;
                                    v1181 = *(v1127 + 8);
                                    if (v1181 != *(*v1180 + 32))
                                    {
                                      *v1729 = xmmword_2750C8A80;
                                      LOWORD(v1728) = 257;
                                      v1180 = llvm::IRBuilderBase::CreateShuffleVector(v1732, v1180, v1180, v1729, 4, &__src);
                                      ShuffleVector = v1180;
                                    }

                                    llvm::FixedVectorType::get((*v6 + 1656), v1181);
                                    LOWORD(v1728) = 257;
                                    v1132 = llvm::IRBuilderBase::CreateCast(v1732, 49, v1180, v1182, &__src);
                                    ShuffleVector = v1132;
                                    v1133 = "cvtph2ps";
                                    goto LABEL_2420;
                                  }
                                }

LABEL_1536:
                                v773 = v1718;
                                v774 = 1;
                                goto LABEL_1537;
                              }

LABEL_1487:
                              v773 = v1718;
                              v774 = 0;
LABEL_1537:
                              InsertElement = upgradePMULDQ(v1732, v773, v774);
                              goto LABEL_1622;
                            }

                            v615 = 0x71642E756C756D70;
                            if (*v85 == 0x756D702E32657373 && *(v85 + 5) == 0x71642E756C756D70)
                            {
                              goto LABEL_1487;
                            }

                            v617 = *(v85 + 5);
                            v10 = 0x756D702E32787661;
                            v618 = *v85 == 0x756D702E32787661;
                          }

                          if (v618 && v617 == v615)
                          {
                            goto LABEL_1487;
                          }

                          goto LABEL_1467;
                        }

                        if (*v34 != 0x6D2E323135787661 || v34[1] != 0x706D63752E6B7361 || *(v34 + 16) != 46)
                        {
                          v621 = 0x6B73616D32627476;
                          if (*v34 != 0x632E323135787661 || v34[1] != 0x6B73616D32627476 || *(v34 + 16) != 46)
                          {
                            v624 = *v34 == 0x632E323135787661 && v34[1] == 0x6B73616D32777476;
                            if (!v624 || *(v34 + 16) != 46)
                            {
                              v12 = 0x6B73616D32647476;
                              v626 = *v34 == 0x632E323135787661 && v34[1] == 0x6B73616D32647476;
                              if (!v626 || *(v34 + 16) != 46)
                              {
                                v10 = v34[1];
                                v621 = 0x6B73616D32717476;
                                v11 = *(v34 + 16);
                                v628 = *v34 == 0x632E323135787661 && v10 == 0x6B73616D32717476;
                                if (!v628 || v11 != 46)
                                {
                                  goto LABEL_956;
                                }
                              }
                            }
                          }

                          v630 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
                          v631 = *v630;
                          v632 = llvm::Constant::getNullValue(**v630, v621);
                          LOWORD(v1728) = 257;
                          v480 = llvm::IRBuilderBase::CreateICmp(v1732, 40, v631, v632, &__src);
                          ShuffleVector = v480;
                          v481 = 0;
LABEL_756:
                          Select = ApplyX86MaskOn1BitsVec(v1732, v480, v481);
                          goto LABEL_413;
                        }

                        v689 = v1718;
                        v692 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                        v693 = (v692 + 24);
                        if (*(v692 + 32) >= 0x41u)
                        {
                          v693 = *v693;
                        }

                        v690 = *v693;
                        v694 = 0;
LABEL_1290:
                        Select = upgradeMaskedCompare(v1732, v689, v690, v694);
                        goto LABEL_413;
                      }

                      break;
                    case 0xCuLL:
                      if (*v85 != 0x6B2E323135787661 || *(v85 + 2) != 1999532655)
                      {
LABEL_882:
                        v527 = 1;
LABEL_936:
                        v528 = 1;
LABEL_937:
                        v10 = 0x632E323135787661;
                        if (*v34 == 0x632E323135787661 && *(v34 + 2) == 1882091629)
                        {
                          v577 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                          v578 = llvm::CallBase::arg_end(v1718);
                          __src = &v1726;
                          v1725 = 0x400000000;
                          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v577, v578);
                          v579 = **__src;
                          v581 = llvm::Type::getPrimitiveSizeInBits(v579);
                          if (v580)
                          {
                          }

                          if ((*(v579 + 8) & 0xFE) == 0x12)
                          {
                            v579 = **(v579 + 16);
                          }

                          v582 = llvm::Type::getPrimitiveSizeInBits(v579);
                          if (v581 == 128 && v582 == 32)
                          {
                            v584 = 10467;
                          }

                          else if (v581 == 256 && v582 == 32)
                          {
                            v584 = 10468;
                          }

                          else if (v581 == 512 && v582 == 32)
                          {
                            v584 = 10469;
                          }

                          else if (v581 == 128 && v582 == 64)
                          {
                            v584 = 10464;
                          }

                          else if (v582 == 64 && v581 == 256)
                          {
                            v584 = 10465;
                          }

                          else
                          {
                            v584 = 10466;
                          }

                          v742 = llvm::Constant::getAllOnesValue(*v1718, v583);
                          v743 = v742;
                          if (v581 == 512)
                          {
                            v744 = __src + 8 * v1725;
                            v745 = *(v744 - 1);
                            *(v744 - 1) = v742;
                            v743 = v745;
                          }

                          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v743);
                          v746 = llvm::Intrinsic::getDeclaration(*(v4 + 40), v584, 0, 0);
                          if (v746)
                          {
                            v747 = *(v746 + 24);
                          }

                          else
                          {
                            v747 = 0;
                          }

                          v1731 = 257;
                          ShuffleVector = llvm::IRBuilderBase::CreateCall(v1732, v747, v746, __src, v1725, v1729, 0);
                          v716 = __src;
                          if (__src == &v1726)
                          {
                            goto LABEL_1395;
                          }

                          goto LABEL_1394;
                        }

                        if (v527)
                        {
                          goto LABEL_942;
                        }

                        if (*v34 != 0x6D2E323135787661 || v34[1] != 0x2E706D632E6B7361)
                        {
                          v527 = 0;
                          goto LABEL_955;
                        }

                        v689 = v1718;
                        v700 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
                        v701 = (v700 + 24);
                        if (*(v700 + 32) >= 0x41u)
                        {
                          v701 = *v701;
                        }

                        v690 = *v701;
LABEL_1289:
                        v694 = 1;
                        goto LABEL_1290;
                      }

                      v316 = getX86MaskVec(v1732, *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF)), 0x10u);
                      v317 = getX86MaskVec(v1732, (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4], 0x10u);
                      LOWORD(v1728) = 257;
                      v318 = llvm::IRBuilderBase::CreateOr(v1732, v316, v317, &__src);
LABEL_1281:
                      v215 = v318;
                      ShuffleVector = v318;
                      v216 = *v1718;
                      LOWORD(v1728) = 257;
LABEL_1284:
                      p_src = &__src;
LABEL_1285:
                      v218 = 49;
                      goto LABEL_289;
                    default:
                      goto LABEL_852;
                  }

                  v533 = *v6;
                  v534 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                  v535 = llvm::ConstantInt::get((*v6 + 1992), 0);
                  LOWORD(v1728) = 257;
                  v536 = llvm::IRBuilderBase::CreateExtractElement(v1732, v534, v535, &__src);
                  v537 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                  v538 = llvm::ConstantInt::get((v533 + 1992), 0);
                  LOWORD(v1728) = 257;
                  v539 = llvm::IRBuilderBase::CreateExtractElement(v1732, v537, v538, &__src);
                  if (llvm::StringRef::find(&v1713, ".add.", 5uLL, 0) == -1)
                  {
                    if (llvm::StringRef::find(&v1713, ".sub.", 5uLL, 0) == -1)
                    {
                      if (llvm::StringRef::find(&v1713, ".mul.", 5uLL, 0) == -1)
                      {
                        LOWORD(v1728) = 257;
                        FDiv = llvm::IRBuilderBase::CreateFDiv(v1732, v536, v539, &__src, 0);
                      }

                      else
                      {
                        LOWORD(v1728) = 257;
                        FDiv = llvm::IRBuilderBase::CreateFMul(v1732, v536, v539, &__src, 0);
                      }
                    }

                    else
                    {
                      LOWORD(v1728) = 257;
                      FDiv = llvm::IRBuilderBase::CreateFSub(v1732, v536, v539, &__src, 0);
                    }
                  }

                  else
                  {
                    LOWORD(v1728) = 257;
                    FDiv = llvm::IRBuilderBase::CreateFAdd(v1732, v536, v539, &__src, 0);
                  }

                  v717 = FDiv;
                  v718 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                  v719 = llvm::ConstantInt::get((v533 + 1992), 0);
                  LOWORD(v1728) = 257;
                  Select = llvm::IRBuilderBase::CreateInsertElement(v1732, v718, v717, v719, &__src);
                  goto LABEL_413;
                }

                v645 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                v646 = *(**(v645 + 4) + 32);
                v647 = *v645;
                LOWORD(v1728) = 257;
                VectorSplat = llvm::IRBuilderBase::CreateVectorSplat(v1732, v646, v647, &__src);
LABEL_160:
                v92 = VectorSplat;
                ShuffleVector = VectorSplat;
                v93 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
                v94 = *(v93 + 8);
LABEL_161:
                Select = EmitX86Select(v1732, v94, v92, *(v93 + 4));
                goto LABEL_413;
              }

              v306 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
              LOWORD(v1728) = 257;
              v1729[0] = llvm::IRBuilderBase::CreateExtractElement(v1732, v306, &__src, v10);
              v307 = *(v4 + 40);
              __src = *v1729[0];
              v308 = llvm::Intrinsic::getDeclaration(v307, 283, &__src, 1);
              if (v308)
              {
                v309 = *(v308 + 24);
              }

              else
              {
                v309 = 0;
              }

              LOWORD(v1728) = 257;
              v1729[0] = llvm::IRBuilderBase::CreateCall(v1732, v309, v308, v1729, 1, &__src, 0);
              LOWORD(v1728) = 257;
              Select = llvm::IRBuilderBase::CreateInsertElement(v1732, v306, v1729[0], &__src, v447);
              goto LABEL_413;
            }

            if (*v34 != 0x6D2E323135787661 || v34[1] != 0x726F74732E6B7361 || *(v34 + 16) != 101)
            {
              v160 = 0;
              goto LABEL_212;
            }

            v242 = *(v34 + 17) != 117;
            v479 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
            v240 = *v479;
            v241 = *(v479 + 4);
            v238 = *(v479 + 8);
LABEL_748:
            UpgradeMaskedStore(v1732, v240, v241, v238, v242);
            goto LABEL_914;
          }
        }

        v124 = *(v4 + 40);
        v1729[0] = &v1730;
        v1729[1] = 0x100000000;
        v167 = llvm::ConstantInt::get(*v6 + 1992, 1);
        v169 = llvm::ValueAsMetadata::get(v167, v168);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(v1729, v169);
        v128 = llvm::MDTuple::getImpl(v6, v1729[0], LODWORD(v1729[1]), 0, 1);
        v170 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
        v171 = *v170;
        v172 = *(v170 + 4);
        v173 = llvm::PointerType::get(*v172, 0);
        __src = "cast";
        LOWORD(v1728) = 259;
        v174 = llvm::IRBuilderBase::CreateCast(v1732, 49, v171, v173, &__src);
        v137 = (63 - __clz(llvm::Type::getPrimitiveSizeInBits(*v172) >> 3)) | 0x100;
        v135 = v172;
        v136 = v174;
LABEL_224:
        AlignedStore = llvm::IRBuilderBase::CreateAlignedStore(v1732, v135, v136, v137, 0);
        v176 = llvm::Module::getMDKindID(v124, "nontemporal", 0xBuLL);
        llvm::Instruction::setMetadata(AlignedStore, v176, v128);
        llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v1718 + 5) + 40, v1718 + 24);
        v177 = v1729[0];
        if (v1729[0] == &v1730)
        {
          goto LABEL_916;
        }

LABEL_266:
        free(v177);
        goto LABEL_916;
      }

      v34 = (v34 + 5);
      v1713 = v34;
      v1714 = v33 - 5;
      v33 -= 5;
    }

    if (v33 < 4)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v1713 = &v1718;
  v1714 = &v1717;
  v1715 = v1732;
  v15 = *(v1717 + 9);
  if (v15 <= 2933)
  {
    if (v15 > 296)
    {
      if (v15 > 988)
      {
        if ((v15 - 2812) >= 4)
        {
          if ((v15 - 989) > 4 || ((1 << (v15 + 35)) & 0x15) == 0)
          {
            if ((v15 - 1221) >= 3)
            {
              goto LABEL_529;
            }

            if ((*(v4 + 23) & 0x10) != 0)
            {
              v219 = llvm::Value::getValueName(v4);
              v220 = *v219;
              v29 = (v219 + 2);
              v28 = v220;
            }

            else
            {
              v28 = 0;
              v29 = &str_3_24;
            }

            v221 = 5;
            if (v28 < 5)
            {
              v221 = v28;
            }

            if (v28 - v221 >= 0xF)
            {
              v223 = &v29[v221];
              if (*&v29[v221] == 0x2E34366863726161 && *&v29[v221 + 7] == 0x32646C2E6576732ELL)
              {
                v222 = 2;
              }

              else if (*v223 == 0x2E34366863726161 && *(v223 + 7) == 0x33646C2E6576732ELL)
              {
                v222 = 3;
              }

              else
              {
                v226 = *v223;
                v227 = *(v223 + 7);
                v229 = v226 == 0x2E34366863726161 && v227 == 0x34646C2E6576732ELL;
                v222 = 4 * v229;
              }
            }

            else
            {
              v222 = 0;
            }

            if (*(**(*(v4 + 24) + 16) + 8) == 19)
            {
              v397 = **(*(v4 + 24) + 16);
            }

            else
            {
              v397 = 0;
            }

            v398 = *(v397 + 8);
            v399 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
            v400 = llvm::CallBase::arg_end(v1718);
            v1729[0] = &v1730;
            v1729[1] = 0x200000000;
            llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(v1729, v399, v400);
            if (v1717)
            {
              v401 = *(v1717 + 3);
            }

            else
            {
              v401 = 0;
            }

            LOWORD(v1728) = 257;
            v402 = v398 / v222;
            v403 = llvm::IRBuilderBase::CreateCall(v1732, v401, v1717, v1729[0], LODWORD(v1729[1]), &__src, 0);
            v405 = llvm::PoisonValue::get(v397, v404);
            v406 = 0;
            LODWORD(v1719) = 0;
            do
            {
              v407 = llvm::ConstantInt::get(*v6 + 2016, v406 * v402);
              LOWORD(v1728) = 257;
              v408 = llvm::IRBuilderBase::CreateExtractValue(v1732, v403, &v1719, 1, &__src);
              LOWORD(v1728) = 257;
              v1747[0] = v397;
              v1747[1] = *v408;
              __p = v405;
              v1721 = v408;
              v1722 = v407;
              v409 = llvm::Intrinsic::getDeclaration(*(*(v1734 + 56) + 40), 321, v1747, 2);
              if (v409)
              {
                v410 = *(v409 + 24);
              }

              else
              {
                v410 = 0;
              }

              v411 = llvm::IRBuilderBase::CreateCall(v1732, v410, v409, &__p, 3, 0, 0, &__src, 0);
              v405 = v411;
              v406 = v1719 + 1;
              LODWORD(v1719) = v406;
            }

            while (v406 < v222);
            if (*(v411 + 16) == 84)
            {
              AlignedLoad = v411;
            }

            else
            {
              AlignedLoad = 0;
            }

            v231 = v1729[0];
            if (v1729[0] == &v1730)
            {
              goto LABEL_910;
            }

            goto LABEL_349;
          }

          v138 = **(v4 + 40);
          v139 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
          v140 = llvm::CallBase::arg_end(v1718);
          __src = &v1726;
          v1725 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v139, v140);
          v141 = *(__src + 3);
          v142 = (v141 + 24);
          if (*(v141 + 32) >= 0x41u)
          {
            v142 = *v142;
          }

          v143 = llvm::ConstantInt::get(*v138 + 1992, *v142);
          v107 = __src;
          *(__src + 3) = v143;
          v108 = v1717;
          if (v1717)
          {
            v109 = *(v1717 + 3);
          }

          else
          {
            v109 = 0;
          }

          goto LABEL_275;
        }

LABEL_174:
        __src = &v1726;
        v1725 = 0x300000000;
        v111 = llvm::Type::getPrimitiveSizeInBits(*(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4]);
        if (v110)
        {
        }

        llvm::FixedVectorType::get((*v6 + 1680), (v111 >> 4));
        v113 = v112;
        v114 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
        llvm::CallBase::arg_end(v1718);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, *v114);
        v115 = v114[4];
        v1731 = 257;
        v116 = llvm::IRBuilderBase::CreateCast(v1732, 49, v115, v113, v1729);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v116);
        v117 = v114[8];
        v1731 = 257;
        v118 = llvm::IRBuilderBase::CreateCast(v1732, 49, v117, v113, v1729);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v118);
        v119 = v1717;
        if (v1717)
        {
          v120 = *(v1717 + 3);
        }

        else
        {
          v120 = 0;
        }

        v156 = __src;
        v178 = v1725;
        v1731 = 257;
        goto LABEL_348;
      }

      if (v15 <= 320)
      {
        if (v15 == 297)
        {
          v25 = *(v1717 + 3);
          LOWORD(v1728) = 257;
          v24 = v1717;
          v193 = 0;
          v194 = 0;
          goto LABEL_909;
        }

        if (v15 != 319)
        {
          if (v15 == 320)
          {
            if ((*(v4 + 23) & 0x10) != 0)
            {
              v284 = llvm::Value::getValueName(v4);
              v285 = *v284;
              v87 = (v284 + 2);
              v86 = v285;
            }

            else
            {
              v86 = 0;
              v87 = &str_3_24;
            }

            v286 = 5;
            if (v86 < 5)
            {
              v286 = v86;
            }

            if (v86 - v286 >= 0x15)
            {
              v287 = *&v87[v286] == 0x2E34366863726161 && *&v87[v286 + 8] == 0x6C7075742E657673;
              if (v287 && *&v87[v286 + 13] == 0x7465672E656C7075)
              {
                v289 = **(*(v4 + 24) + 16);
                if (*(v289 + 8) != 19)
                {
                  v289 = 0;
                }

                v290 = *(v289 + 32);
                v291 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
                v292 = (v291 + 24);
                if (*(v291 + 32) >= 0x41u)
                {
                  v292 = *v292;
                }

                v23 = llvm::ConstantInt::get(*v6 + 2016, (v290 * *v292));
                v24 = v1717;
                if (v1717)
                {
                  v25 = *(v1717 + 3);
                }

                else
                {
                  v25 = 0;
                }

                v1729[0] = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
                goto LABEL_516;
              }
            }
          }

          goto LABEL_529;
        }

LABEL_278:
        v198 = v1718;
        if (((llvm::CallBase::arg_end(v1718) - (v198 - 32 * (*(v198 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x80)
        {
          v199 = v1717;
          if (v1717)
          {
            v200 = *(v1717 + 3);
          }

          else
          {
            v200 = 0;
          }

          v334 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
          __src = *v334;
          v1725 = *(v334 + 4);
          v1726 = *(v334 + 8);
          v1727 = *(v334 + 12);
          v335 = llvm::PointerType::get((*v1736 + 1944), 0);
          v1728 = llvm::Constant::getNullValue(v335, v336);
          v1731 = 257;
          v337 = llvm::IRBuilderBase::CreateCall(v1732, v200, v199, &__src, 5, v1729, 0);
          AlignedLoad = v337;
          v338 = v1718;
          goto LABEL_911;
        }

        goto LABEL_529;
      }

      if ((v15 - 488) < 4)
      {
        goto LABEL_174;
      }

      if (v15 != 321)
      {
        goto LABEL_529;
      }

      if ((*(v4 + 23) & 0x10) != 0)
      {
        v339 = llvm::Value::getValueName(v4);
        v340 = *v339;
        v282 = v339 + 2;
        v281 = v340;
      }

      else
      {
        v281 = 0;
        v282 = &str_3_24;
      }

      v341 = 5;
      if (v281 < 5)
      {
        v341 = v281;
      }

      v342 = v281 - v341;
      if (v281 - v341 < 0x11)
      {
        goto LABEL_529;
      }

      v343 = &v282[v341];
      v344 = *&v282[v341] == 0x2E34366863726161 && *&v282[v341 + 8] == 0x6C7075742E657673;
      if (!v344 || v282[v341 + 16] != 101)
      {
        goto LABEL_529;
      }

      if (v342 < 0x15)
      {
LABEL_744:
        AlignedLoad = 0;
        goto LABEL_910;
      }

      if (*v343 != 0x2E34366863726161 || *(v343 + 1) != 0x6C7075742E657673 || *(v343 + 13) != 0x7465732E656C7075)
      {
        if (v342 >= 0x18)
        {
          v475 = *v343 == 0x2E34366863726161 && *(v343 + 1) == 0x6C7075742E657673;
          if (v475 && *(v343 + 2) == 0x6574616572632E65)
          {
            if (v342 == 24)
            {
              v708 = 0;
            }

            else if (*v343 == 0x2E34366863726161 && *(v343 + 1) == 0x6C7075742E657673 && *(v343 + 2) == 0x6574616572632E65 && v343[24] == 50)
            {
              v708 = 2;
            }

            else if (*v343 == 0x2E34366863726161 && *(v343 + 1) == 0x6C7075742E657673 && *(v343 + 2) == 0x6574616572632E65 && v343[24] == 51)
            {
              v708 = 3;
            }

            else
            {
              v731 = *v343;
              v732 = *(v343 + 1);
              v733 = *(v343 + 2);
              v734 = v343[24];
              v738 = v731 == 0x2E34366863726161 && v732 == 0x6C7075742E657673 && v733 == 0x6574616572632E65 && v734 == 52;
              v708 = 4 * v738;
            }

            if (*(**(*(v4 + 24) + 16) + 8) == 19)
            {
              v754 = **(*(v4 + 24) + 16);
            }

            else
            {
              v754 = 0;
            }

            v755 = llvm::PoisonValue::get(v754, v8);
            v756 = 0;
            v757 = 0;
            if (v708 <= 1)
            {
              v758 = 1;
            }

            else
            {
              v758 = v708;
            }

            v759 = 32 * v758;
            v760 = *(v754 + 8) / v708;
            do
            {
              v761 = llvm::ConstantInt::get(*v6 + 2016, (v760 * v757));
              v762 = *(v1718 + v756 + -32 * (*(v1718 + 5) & 0x7FFFFFF));
              LOWORD(v1728) = 257;
              __p = v754;
              v1721 = *v762;
              v1729[0] = v755;
              v1729[1] = v762;
              *&v1730 = v761;
              Intrinsic = llvm::IRBuilderBase::CreateIntrinsic(v1732, 321, &__p, 2, v1729, 3, 0, &__src);
              v755 = Intrinsic;
              ++v757;
              v756 += 32;
            }

            while (v759 != v756);
            if (*(Intrinsic + 16) == 84)
            {
              AlignedLoad = Intrinsic;
            }

            else
            {
              AlignedLoad = 0;
            }

            goto LABEL_910;
          }
        }

        goto LABEL_744;
      }

      v633 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
      if (*(*(v633 + 4) + 16) == 16)
      {
        v634 = *(v633 + 4);
      }

      else
      {
        v634 = 0;
      }

      v635 = (v634 + 24);
      if (*(v634 + 32) >= 0x41u)
      {
        v635 = *v635;
      }

      v636 = *v635;
      v637 = **(v633 + 8);
      if (*(v637 + 8) != 19)
      {
        v637 = 0;
      }

      v638 = llvm::ConstantInt::get(*v6 + 2016, v636 * *(v637 + 32));
      v24 = v1717;
      if (v1717)
      {
        v25 = *(v1717 + 3);
      }

      else
      {
        v25 = 0;
      }

      v707 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
      v1729[0] = *v707;
      v1729[1] = v707[8];
      *&v1730 = v638;
      goto LABEL_907;
    }

    if (v15 > 164)
    {
      v39 = v15 + 91;
      if ((v15 - 165) <= 0x25)
      {
        if (((1 << v39) & 0x3C00000) != 0)
        {
          v121 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
          v122 = llvm::CallBase::arg_end(v1718);
          __src = &v1726;
          v1725 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v121, v122);
          if (v1717)
          {
            v123 = *(v1717 + 3);
          }

          else
          {
            v123 = 0;
          }

          v1731 = 257;
          AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v123, v1717, __src, v1725, v1729, 0);
          llvm::Instruction::copyMetadata(AlignedLoad, v1718, 0, 0);
LABEL_313:
          v231 = __src;
          if (__src == &v1726)
          {
            goto LABEL_910;
          }

          goto LABEL_349;
        }

        if (((1 << v39) & 0x2900000000) != 0)
        {
          v40 = v1718;
          if (((llvm::CallBase::arg_end(v1718) - (v40 - 32 * (*(v40 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0xA0)
          {
            goto LABEL_529;
          }

          v41 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
          v1729[0] = *v41;
          v1729[1] = v41[4];
          *&v1730 = v41[8];
          *(&v1730 + 1) = v41[16];
          if (v1717)
          {
            v42 = *(v1717 + 3);
          }

          else
          {
            v42 = 0;
          }

          LOWORD(v1728) = 257;
          AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v42, v1717, v1729, 4, &__src, 0);
          v319 = *(v1718 + 8);
          if (!v319)
          {
            v321 = 0;
            v322 = 0;
            __src = 0;
            v1725 = 0;
LABEL_646:
            v1726 = 0;
LABEL_647:
            v1727 = v319;
            AlignedLoad[8] = llvm::AttributeList::get(v6, v321, v322, &__src, 4uLL);
            v412 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[12];
            v413 = (v412 + 24);
            v414 = (v412 + 24);
            if (*(v412 + 32) >= 0x41u)
            {
              v414 = *v413;
            }

            v415 = *v414;
            v416 = __clz(v415) ^ 0x13F;
            if (v415)
            {
              v417 = v416;
            }

            else
            {
              v417 = 0;
            }

            llvm::MemIntrinsicBase<llvm::MemIntrinsic>::setDestAlignment(AlignedLoad, v417);
            if ((*(*(AlignedLoad - 4) + 36) - 197) <= 3 && *(*(AlignedLoad - 4) + 36) != 198)
            {
              if (*(v412 + 32) >= 0x41u)
              {
                v413 = *v413;
              }

              v418 = __clz(*v413) ^ 0x13F;
              if (*v413)
              {
                v419 = v418;
              }

              else
              {
                v419 = 0;
              }

              llvm::MemTransferBase<llvm::MemIntrinsic>::setSourceAlignment(AlignedLoad, v419);
            }

            goto LABEL_910;
          }

          v320 = *(v319 + 8);
          if (v320)
          {
            v321 = *(v319 + 40);
            if (v320 != 1)
            {
              v322 = *(v319 + 48);
              if (v320 > 2)
              {
                __src = *(v319 + 56);
                if (v320 != 3)
                {
                  v1725 = *(v319 + 64);
                  if (v320 > 4)
                  {
                    v1726 = *(v319 + 72);
                    if (v320 < 7)
                    {
                      v319 = 0;
                    }

                    else
                    {
                      v319 = *(v319 + 88);
                    }

                    goto LABEL_647;
                  }

                  goto LABEL_645;
                }

LABEL_644:
                v1725 = 0;
LABEL_645:
                v319 = 0;
                goto LABEL_646;
              }

LABEL_643:
              __src = 0;
              goto LABEL_644;
            }
          }

          else
          {
            v321 = 0;
          }

          v322 = 0;
          goto LABEL_643;
        }

        if (((1 << v39) & 3) != 0)
        {
LABEL_271:
          v195 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
          v196 = llvm::CallBase::arg_end(v1718);
          __src = &v1726;
          v1725 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v195, v196);
          v108 = v1717;
          if (v1717)
          {
            v109 = *(v1717 + 3);
          }

          else
          {
            v109 = 0;
          }

          v107 = __src;
LABEL_275:
          v197 = v1725;
          v1731 = 257;
LABEL_312:
          AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v109, v108, v107, v197, v1729, 0);
          goto LABEL_313;
        }
      }

      if (v15 == 240)
      {
        v262 = v1718;
        if (((llvm::CallBase::arg_end(v1718) - (v262 - 32 * (*(v262 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x40)
        {
          v263 = *v1736;
          v264 = *(*v1736 + 1600);
          if (!v264)
          {
            v264 = llvm::ConstantInt::get(v263 + 1920, 0);
            *(v263 + 1600) = v264;
          }

          v265 = v1718;
        }

        else
        {
          v265 = v1718;
          v264 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8];
        }

        if (((llvm::CallBase::arg_end(v265) - (v265 - 32 * (*(v265 + 5) & 0x7FFFFFF))) & 0x1FFFFFFF80) != 0)
        {
          v333 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[12];
        }

        else
        {
          v346 = *v1736;
          v333 = *(*v1736 + 1600);
          if (!v333)
          {
            v333 = llvm::ConstantInt::get(v346 + 1920, 0);
            *(v346 + 1600) = v333;
          }
        }

        v24 = v1717;
        if (v1717)
        {
          v25 = *(v1717 + 3);
        }

        else
        {
          v25 = 0;
        }

        v347 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
        v1729[0] = *v347;
        v1729[1] = v347[4];
        *&v1730 = v264;
        *(&v1730 + 1) = v333;
        LOWORD(v1728) = 257;
        v193 = v1729;
        v194 = 4;
        goto LABEL_909;
      }

      if (v15 != 249)
      {
        goto LABEL_529;
      }

      goto LABEL_278;
    }

    if (v15 > 53)
    {
      if (v15 != 54)
      {
        if (v15 != 55)
        {
          if (v15 != 59)
          {
            goto LABEL_529;
          }

          if ((*(v4 + 23) & 0x10) != 0)
          {
            v328 = llvm::Value::getValueName(v4);
            v329 = *v328;
            v145 = (v328 + 2);
            v144 = v329;
          }

          else
          {
            v144 = 0;
            v145 = &str_3_24;
          }

          v330 = 5;
          if (v144 < 5)
          {
            v330 = v144;
          }

          if (v144 - v330 >= 8 && *&v145[v330] == 0x726464612E676264)
          {
            v466 = *((v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[8] + 24);
            __src = 6;
            v467 = llvm::DIExpression::append(v466, &__src, 1);
            v468 = v1717;
            if (v1717)
            {
              v469 = *(v1717 + 3);
            }

            else
            {
              v469 = 0;
            }

            v517 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
            v1729[0] = *v517;
            v1729[1] = v517[4];
            *&v1730 = llvm::MetadataAsValue::get(v6, v467);
            LOWORD(v1728) = 257;
            v193 = v1729;
            v25 = v469;
            v24 = v468;
            goto LABEL_908;
          }

          v331 = v1718;
          v332 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
          if (!v332 || v332[16] > 0x14u)
          {
LABEL_915:
            llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v331 + 5) + 40, v331 + 24);
            goto LABEL_916;
          }

          if ((llvm::Constant::isZeroValue(v332) & 1) == 0)
          {
            goto LABEL_914;
          }

          v24 = v1717;
          if (v1717)
          {
            v25 = *(v1717 + 3);
          }

          else
          {
            v25 = 0;
          }

          v561 = (v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF));
          v1729[0] = *v561;
          v1729[1] = v561[8];
          *&v1730 = v561[12];
LABEL_907:
          LOWORD(v1728) = 257;
          v193 = v1729;
LABEL_908:
          v194 = 3;
          goto LABEL_909;
        }

LABEL_281:
        v201 = *(v1717 + 3);
        v1729[0] = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
        v202 = *v1736;
        v203 = *(*v1736 + 1600);
        if (!v203)
        {
          v203 = llvm::ConstantInt::get(v202 + 1920, 0);
          *(v202 + 1600) = v203;
        }

        v1729[1] = v203;
        LOWORD(v1728) = 257;
        v193 = v1729;
        v25 = v201;
        v24 = v14;
        goto LABEL_517;
      }
    }

    else if (v15 != 8 && v15 != 18)
    {
      if (v15 != 53)
      {
        goto LABEL_529;
      }

      goto LABEL_281;
    }

    v25 = *(v1717 + 3);
    v157 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
LABEL_269:
    v1729[0] = v157;
    LOWORD(v1728) = 257;
    v193 = v1729;
    v24 = v1717;
    v194 = 1;
LABEL_909:
    AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v25, v24, v193, v194, &__src, 0);
    goto LABEL_910;
  }

  if (v15 <= 10958)
  {
    if (v15 > 10315)
    {
      if ((v15 - 10464) < 6)
      {
        v97 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
        v98 = llvm::CallBase::arg_end(v1718);
        __src = &v1726;
        v1725 = 0x400000000;
        llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v97, v98);
        v99 = getX86MaskVec(v1732, *(__src + 3), *(**__src + 32));
        v100 = __src;
        *(__src + 3) = v99;
        if (v1717)
        {
          v101 = *(v1717 + 3);
        }

        else
        {
          v101 = 0;
        }

        v1731 = 257;
        v191 = llvm::IRBuilderBase::CreateCall(v1732, v101, v1717, v100, v1725, v1729, 0);
        v192 = ApplyX86MaskOn1BitsVec(v1732, v191, 0);
        llvm::Value::takeName(v191, v1718);
        v57 = v1718;
        v58 = v192;
        goto LABEL_265;
      }

      v43 = 10316;
LABEL_343:
      if (v15 != v43)
      {
        goto LABEL_529;
      }

      goto LABEL_344;
    }

    if ((v15 - 2934) > 9 || ((1 << (v15 - 118)) & 0x3F1) == 0)
    {
      v43 = 10247;
      goto LABEL_343;
    }

    goto LABEL_271;
  }

  if (v15 <= 11392)
  {
    if ((v15 - 10959) > 8)
    {
      if (v15 == 11268)
      {
        if ((*(v1718 + 5) & 0x7FFFFFF) != 0)
        {
          v253 = *(v1717 + 3);
          LOWORD(v1728) = 257;
          v254 = llvm::IRBuilderBase::CreateCall(v1732, v253, v1717, 0, 0, &__src, 0);
          LODWORD(v1729[0]) = 1;
          LOWORD(v1728) = 257;
          v255 = llvm::IRBuilderBase::CreateExtractValue(v1732, v254, v1729, 1, &__src);
          v256 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
          v257 = llvm::PointerType::get(*v255, 0);
          LOWORD(v1728) = 257;
          v258 = llvm::IRBuilderBase::CreateCast(v1732, 49, v256, v257, &__src);
          llvm::IRBuilderBase::CreateAlignedStore(v1732, v255, v258, 256, 0);
          LODWORD(v1729[0]) = 0;
          LOWORD(v1728) = 257;
          v259 = llvm::IRBuilderBase::CreateExtractValue(v1732, v254, v1729, 1, &__src);
          llvm::Value::takeName(v254, v1718);
          v260 = v1718;
          v261 = v259;
          goto LABEL_913;
        }

        goto LABEL_916;
      }

      goto LABEL_529;
    }

    if (((1 << (v15 + 49)) & 0x11F) != 0)
    {
      v44 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
      v45 = llvm::CallBase::arg_end(v1718);
      __src = &v1726;
      v1725 = 0x400000000;
      llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v44, v45);
      v46 = v1717;
      v47 = *(*v1718 + 32);
      v48 = __src;
      if (*(v1717 + 9) == 10967 && (v49 = *(__src + 1), llvm::FixedVectorType::get((*v1736 + 1680), *(*v1718 + 32)), v1731 = 257, v51 = llvm::IRBuilderBase::CreateCast(v1732, 49, v49, v50, v1729), v48 = __src, *(__src + 1) = v51, (v46 = v1717) == 0))
      {
        v52 = 0;
      }

      else
      {
        v52 = *(v46 + 3);
      }

      v1731 = 257;
      v53 = llvm::IRBuilderBase::CreateCall(v1732, v52, v46, v48, v1725, v1729, 0);
      llvm::FixedVectorType::get((*v1736 + 1968), v47);
      v1731 = 257;
      v55 = llvm::IRBuilderBase::CreateCast(v1732, 49, v53, v54, v1729);
      llvm::Value::takeName(v53, v1718);
      v57 = v1718;
      v58 = v55;
LABEL_265:
      llvm::Value::doRAUW(v57, v58, 1, v56);
      llvm::iplist_impl<llvm::simple_ilist<llvm::Instruction>,llvm::SymbolTableListTraits<llvm::Instruction>>::erase(*(v1718 + 5) + 40, v1718 + 24);
      v177 = __src;
      if (__src == &v1726)
      {
        goto LABEL_916;
      }

      goto LABEL_266;
    }

    v146 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
    v147 = llvm::CallBase::arg_end(v1718);
    __src = &v1726;
    v1725 = 0x400000000;
    llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v146, v147);
    v148 = (2 * *(*v1718 + 32));
    v149 = *(__src + 1);
    llvm::FixedVectorType::get((*v1736 + 1680), v148);
    v1731 = 257;
    v151 = llvm::IRBuilderBase::CreateCast(v1732, 49, v149, v150, v1729);
    v152 = __src;
    *(__src + 1) = v151;
    v153 = *(v152 + 2);
    llvm::FixedVectorType::get((*v1736 + 1680), v148);
    v1731 = 257;
    v155 = llvm::IRBuilderBase::CreateCast(v1732, 49, v153, v154, v1729);
    v156 = __src;
    *(__src + 2) = v155;
    v119 = v1717;
    if (v1717)
    {
      v120 = *(v1717 + 3);
    }

    else
    {
      v120 = 0;
    }

    v178 = v1725;
    v1731 = 257;
LABEL_348:
    AlignedLoad = llvm::IRBuilderBase::CreateCall(v1732, v120, v119, v156, v178, v1729, 0);
    v231 = __src;
    if (__src == &v1726)
    {
LABEL_910:
      v338 = v1718;
      v337 = AlignedLoad;
LABEL_911:
      llvm::Value::takeName(v337, v338);
      goto LABEL_912;
    }

LABEL_349:
    free(v231);
    goto LABEL_910;
  }

  if (v15 > 11534)
  {
    if ((v15 - 11537) < 4)
    {
      v102 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
      v103 = llvm::CallBase::arg_end(v1718);
      __src = &v1726;
      v1725 = 0x400000000;
      llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v102, v103);
      llvm::VectorType::getInteger(**(__src + 2));
      v104 = *(__src + 2);
      v1731 = 257;
      v106 = llvm::IRBuilderBase::CreateCast(v1732, 49, v104, v105, v1729);
      v107 = __src;
      *(__src + 2) = v106;
      v108 = v1717;
      if (v1717)
      {
        v109 = *(v1717 + 3);
      }

      else
      {
        v109 = 0;
      }

      v197 = v1725;
      v1731 = 257;
      goto LABEL_312;
    }

    if ((v15 - 11535) >= 2)
    {
      goto LABEL_529;
    }

    v25 = *(v1717 + 3);
    v157 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
    goto LABEL_269;
  }

  if ((v15 - 11393) < 4)
  {
LABEL_344:
    v248 = v1718 - 32 * (*(v1718 + 5) & 0x7FFFFFF);
    v249 = llvm::CallBase::arg_end(v1718);
    __src = &v1726;
    v1725 = 0x400000000;
    llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&__src, v248, v249);
    v250 = *(__src + v1725 - 1);
    v251 = *v6;
    v1729[0] = "trunc";
    v1731 = 259;
    v252 = llvm::IRBuilderBase::CreateCast(v1732, 38, v250, (v251 + 1944), v1729);
    v178 = v1725;
    *(__src + v1725 - 1) = v252;
    v119 = v1717;
    if (v1717)
    {
      v120 = *(v1717 + 3);
    }

    else
    {
      v120 = 0;
    }

    v156 = __src;
    v1731 = 257;
    goto LABEL_348;
  }

  if ((v15 - 11400) >= 3)
  {
LABEL_529:
    llvm::UpgradeIntrinsicCall(llvm::CallBase *,llvm::Function *)::$_0::operator()(&v1713, v13, v8, v9);
    goto LABEL_916;
  }

  v16 = *(v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF));
  v17 = *v16;
  llvm::FixedVectorType::get((*v6 + 1704), 4);
  if (v17 == v18)
  {
    v19 = (v1718 - 4 * (*(v1718 + 5) & 0x7FFFFFF))[4];
    llvm::FixedVectorType::get((*v6 + 2016), 2);
    v21 = v20;
    __src = "cast";
    LOWORD(v1728) = 259;
    v22 = llvm::IRBuilderBase::CreateCast(v1732, 49, v16, v20, &__src);
    __src = "cast";
    LOWORD(v1728) = 259;
    v23 = llvm::IRBuilderBase::CreateCast(v1732, 49, v19, v21, &__src);
    v24 = v1717;
    if (v1717)
    {
      v25 = *(v1717 + 3);
    }

    else
    {
      v25 = 0;
    }

    v1729[0] = v22;
LABEL_516:
    v1729[1] = v23;
    LOWORD(v1728) = 257;
    v193 = v1729;
LABEL_517:
    v194 = 2;
    goto LABEL_909;
  }

LABEL_916:
  if (v1732[0] != v7)
  {
    free(v1732[0]);
  }

LABEL_918:
  v562 = *MEMORY[0x277D85DE8];
}