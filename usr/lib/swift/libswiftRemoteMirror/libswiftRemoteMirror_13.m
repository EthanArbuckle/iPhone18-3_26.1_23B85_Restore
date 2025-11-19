unsigned int *anonymous namespace::OldDemangler::demangleType(swift::Demangle::__runtime::NodeFactory **this, uint64_t a2)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
  swift::Demangle::__runtime::Node::addChild(Node, v4, this[5], v6, v7);
  return Node;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolConformance(swift::Demangle::__runtime::NodeFactory **this, int a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v7, v8);
    if (!Node)
    {
      return 0;
    }

    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(v10, v9, this[5], v11, v12);
    if (v10)
    {
      if (result)
      {
        v13 = result;
        v14 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 192);
        swift::Demangle::__runtime::Node::addChild(v14, Node, this[5], v15, v16);
        swift::Demangle::__runtime::Node::addChild(v14, v10, this[5], v17, v18);
        swift::Demangle::__runtime::Node::addChild(v14, v13, this[5], v19, v20);
        return v14;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleTypeImpl(_anonymous_namespace_::OldDemangler *this, uint64_t a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  Node = 0;
  v4 = *(this + 3);
  v6 = *v4;
  v5 = v4 + 1;
  *(this + 3) = v4 + 1;
  *(this + 4) = v2 - 1;
  v7 = 25;
  switch(v6)
  {
    case 'B':
      Node = 0;
      if (v2 == 1)
      {
        return Node;
      }

      v8 = v4[1];
      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      if (v8 > 110)
      {
        if (v8 <= 115)
        {
          if (v8 == 111)
          {
            v73 = *(this + 5);
            v74 = "Builtin.NativeObject";
          }

          else
          {
            if (v8 != 112)
            {
              return Node;
            }

            v73 = *(this + 5);
            v74 = "Builtin.RawPointer";
          }
        }

        else
        {
          switch(v8)
          {
            case 't':
              v73 = *(this + 5);
              v74 = "Builtin.SILToken";
              break;
            case 'v':
              v145 = 0;
              v101 = this;
              {
                return 0;
              }

              v102 = *(v101 + 4);
              if (!v102)
              {
                return 0;
              }

              v103 = *(v101 + 3);
              if (*v103 != 66)
              {
                return 0;
              }

              *(v101 + 3) = v103 + 1;
              *(v101 + 4) = v102 - 1;
              if (v102 == 1)
              {
                return 0;
              }

              v104 = v103[1];
              switch(v104)
              {
                case 'f':
                  *(v101 + 3) = v103 + 2;
                  *(v101 + 4) = v102 - 2;
                  v143 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v10 = *(v101 + 5);
                  memset(&v144, 0, sizeof(v144));
                  std::string::append(&v144, "Builtin.Vec", 0xBuLL);
                  v105 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v144, v145);
                  v106 = v105;
                  v107 = "xFPIEEE";
                  v108 = 7;
                  break;
                case 'p':
                  *(v101 + 3) = v103 + 2;
                  *(v101 + 4) = v102 - 2;
                  v10 = *(v101 + 5);
                  memset(&v144, 0, sizeof(v144));
                  std::string::append(&v144, "Builtin.Vec", 0xBuLL);
                  v135 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v144, v145);
                  std::string::append(v135, "xRawPointer", 0xBuLL);
                  v99 = SHIBYTE(v135->__r_.__value_.__r.__words[2]);
                  size = v135->__r_.__value_.__l.__size_;
                  if (v99 >= 0)
                  {
                    v59 = v135;
                  }

                  else
                  {
                    v59 = v135->__r_.__value_.__r.__words[0];
                  }

                  goto LABEL_150;
                case 'i':
                  *(v101 + 3) = v103 + 2;
                  *(v101 + 4) = v102 - 2;
                  v143 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v10 = *(v101 + 5);
                  memset(&v144, 0, sizeof(v144));
                  std::string::append(&v144, "Builtin.Vec", 0xBuLL);
                  v105 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v144, v145);
                  v106 = v105;
                  v107 = "xInt";
                  v108 = 4;
                  break;
                default:
                  return 0;
              }

              std::string::append(v105, v107, v108);
              v96 = v143;
              v97 = v106;
LABEL_147:
              v98 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(v97, v96);
              v99 = SHIBYTE(v98->__r_.__value_.__r.__words[2]);
              size = v98->__r_.__value_.__l.__size_;
              if (v99 >= 0)
              {
                v59 = v98;
              }

              else
              {
                v59 = v98->__r_.__value_.__r.__words[0];
              }

LABEL_150:
              if (v99 >= 0)
              {
                v61 = v99;
              }

              else
              {
                v61 = size;
              }

              v58 = v10;
              v60 = 20;
LABEL_154:
              Node = swift::Demangle::__runtime::NodeFactory::createNode(v58, v60, v59, v61);
              if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v144.__r_.__value_.__l.__data_);
              }

              return Node;
            case 'w':
              v73 = *(this + 5);
              v74 = "Builtin.Word";
              break;
            default:
              return Node;
          }
        }
      }

      else if (v8 <= 97)
      {
        if (v8 == 66)
        {
          v73 = *(this + 5);
          v74 = "Builtin.UnsafeValueBuffer";
        }

        else
        {
          if (v8 != 79)
          {
            return Node;
          }

          v73 = *(this + 5);
          v74 = "Builtin.UnknownObject";
        }
      }

      else
      {
        if (v8 != 98)
        {
          if (v8 == 102)
          {
            v145 = 0;
            v95 = this;
            {
              return 0;
            }

            v10 = *(v95 + 5);
            memset(&v144, 0, sizeof(v144));
            v11 = "Builtin.FPIEEE";
            v12 = 14;
            goto LABEL_146;
          }

          if (v8 != 105)
          {
            return Node;
          }

          v145 = 0;
          v9 = this;
          {
            v10 = *(v9 + 5);
            memset(&v144, 0, sizeof(v144));
            v11 = "Builtin.Int";
            v12 = 11;
LABEL_146:
            std::string::append(&v144, v11, v12);
            v96 = v145;
            v97 = &v144;
            goto LABEL_147;
          }

          return 0;
        }

        v73 = *(this + 5);
        v74 = "Builtin.BridgeObject";
      }

      return swift::Demangle::__runtime::NodeFactory::createNode(v73, 20, v74);
    case 'C':
      goto LABEL_69;
    case 'D':
      v26 = this;
      if (!v27)
      {
        return 0;
      }

      v28 = v27;
      v29 = swift::Demangle::__runtime::NodeFactory::createNode(*(v26 + 5), 243);
      swift::Demangle::__runtime::Node::addChild(v29, v28, *(v26 + 5), v30, v31);
      if (!v29)
      {
        return 0;
      }

      v32 = *(v26 + 5);
      v33 = 59;
      goto LABEL_67;
    case 'E':
      if (v2 == 1)
      {
        return 0;
      }

      if (*v5 != 82)
      {
        return 0;
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      if (v2 == 2 || v4[2] != 82)
      {
        return 0;
      }

      *(this + 3) = v4 + 3;
      *(this + 4) = v2 - 3;
      v58 = *(this + 5);
      memset(&v144, 0, sizeof(v144));
      v59 = &v144;
      v60 = 65;
      v61 = 0;
      goto LABEL_154;
    case 'F':
      v13 = a2 + 1;
      v14 = 84;
      goto LABEL_83;
    case 'G':
      v34 = a2;
      v35 = this;
      if (!v36)
      {
        return 0;
      }

    case 'K':
      v13 = a2 + 1;
      v14 = 11;
      goto LABEL_83;
    case 'M':
      v55 = this;
      if (!v56)
      {
        return 0;
      }

      v29 = v56;
      v26 = v55;
      v32 = *(v55 + 5);
      v33 = 154;
      goto LABEL_67;
    case 'O':
      v7 = 63;
      goto LABEL_69;
    case 'P':
      if (v2 == 1 || *v5 != 77)
      {
        goto LABEL_112;
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      v62 = this;
      if (!v63)
      {
        return 0;
      }

      v29 = v63;
      v26 = v62;
      v32 = *(v62 + 5);
      v33 = 71;
      goto LABEL_67;
    case 'Q':
      if (v2 == 1)
      {
        goto LABEL_89;
      }

      v23 = *v5;
      if (v23 != 85)
      {
        if (v23 == 117)
        {
          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          v24 = *(this + 5);

          return swift::Demangle::__runtime::NodeFactory::createNode(v24, 322);
        }

        else
        {
LABEL_89:
          v72 = a2 + 1;
        }
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      v144.__r_.__value_.__r.__words[0] = 0;
      v76 = this;
      Node = 0;
      {
        return Node;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(v76 + 5), 322);
      v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(v76 + 5), 355, v144.__r_.__value_.__l.__data_);
      v42 = *(v76 + 5);
      v43 = Node;
      goto LABEL_49;
    case 'R':
      v15 = this;
      v16 = *(this + 5);
      v17 = a2;
      v18 = 128;
      goto LABEL_43;
    case 'S':

    case 'T':
      v19 = a2 + 1;
      v20 = 0;
      goto LABEL_19;
    case 'V':
      v7 = 230;
LABEL_69:
      v67 = a2 + 1;
      v68 = v7;
      goto LABEL_71;
    case 'W':
      v57 = a2 + 1;

    case 'X':
      Node = 0;
      if (v2 == 1)
      {
        return Node;
      }

      v69 = *v5;
      if (v69 > 0x61)
      {
        if (*v5 <= 0x6Eu)
        {
          if (v69 != 98)
          {
            if (v69 != 102)
            {
              return Node;
            }

            *(this + 3) = v4 + 2;
            *(this + 4) = v2 - 2;
            v13 = a2 + 1;
            v14 = 233;
LABEL_83:
          }

          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          v91 = this;
          if (!v92)
          {
            return 0;
          }

          v29 = v92;
          v26 = v91;
          v32 = *(v91 + 5);
          v33 = 221;
        }

        else
        {
          switch(v69)
          {
            case 'o':
              *(this + 3) = v4 + 2;
              *(this + 4) = v2 - 2;
              v89 = this;
              if (!v90)
              {
                return 0;
              }

              v29 = v90;
              v26 = v89;
              v32 = *(v89 + 5);
              v33 = 260;
              break;
            case 'u':
              *(this + 3) = v4 + 2;
              *(this + 4) = v2 - 2;
              v93 = this;
              if (!v94)
              {
                return 0;
              }

              v29 = v94;
              v26 = v93;
              v32 = *(v93 + 5);
              v33 = 261;
              break;
            case 'w':
              *(this + 3) = v4 + 2;
              *(this + 4) = v2 - 2;
              v70 = this;
              if (!v71)
              {
                return 0;
              }

              v29 = v71;
              v26 = v70;
              v32 = *(v70 + 5);
              v33 = 259;
              break;
            default:
              return Node;
          }
        }

LABEL_67:
        v64 = swift::Demangle::__runtime::NodeFactory::createNode(v32, v33);
        swift::Demangle::__runtime::Node::addChild(v64, v29, *(v26 + 5), v65, v66);
        return v64;
      }

      if (*v5 > 0x4Cu)
      {
        if (v69 == 77)
        {
          v85 = a2;
          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          v86 = this;
          if (!v87)
          {
            return 0;
          }

          v47 = v87;
          if (!v88)
          {
            return 0;
          }

          v49 = v88;
          v50 = v86;
          v51 = *(v86 + 5);
          v52 = 154;
        }

        else
        {
          if (v69 != 80)
          {
            return Node;
          }

          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          if (v2 == 2 || v4[2] != 77)
          {
LABEL_112:
            v81 = a2 + 1;
          }

          v77 = a2;
          *(this + 3) = v4 + 3;
          *(this + 4) = v2 - 3;
          v78 = this;
          if (!v79)
          {
            return 0;
          }

          v47 = v79;
          if (!v80)
          {
            return 0;
          }

          v49 = v80;
          v50 = v78;
          v51 = *(v78 + 5);
          v52 = 71;
        }

LABEL_48:
        Node = swift::Demangle::__runtime::NodeFactory::createNode(v51, v52);
        swift::Demangle::__runtime::Node::addChild(Node, v47, *(v50 + 5), v53, v54);
        v42 = *(v50 + 5);
        v43 = Node;
        v41 = v49;
LABEL_49:
        swift::Demangle::__runtime::Node::addChild(v43, v41, v42, v39, v40);
        return Node;
      }

      if (v69 != 66)
      {
        if (v69 != 70)
        {
          return Node;
        }

        *(this + 3) = v4 + 2;
        *(this + 4) = v2 - 2;
        v75 = a2 + 1;
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      if (v2 == 2 || v4[2] != 71)
      {
        v83 = a2;
        v84 = 0;
      }

      else
      {
        *(this + 3) = v4 + 3;
        *(this + 4) = v2 - 3;
        v82 = this;
        v83 = a2;
        this = v82;
        if (!v84)
        {
          return 0;
        }
      }

      v109 = this;
      v110 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 223);
      v111 = *(v109 + 4);
      if (!v111)
      {
        return 0;
      }

      v112 = v110;
      v113 = v109;
      v114 = v83;
      break;
    case 'a':
      v67 = a2 + 1;
      v68 = 245;
LABEL_71:

    case 'b':
      v13 = a2 + 1;
      v14 = 175;
      goto LABEL_83;
    case 'c':
      v13 = a2 + 1;
      v14 = 23;
      goto LABEL_83;
    case 'f':
      v13 = a2 + 1;
      v14 = 257;
      goto LABEL_83;
    case 'k':
      v15 = this;
      v16 = *(this + 5);
      v17 = a2;
      v18 = 340;
LABEL_43:
      v37 = swift::Demangle::__runtime::NodeFactory::createNode(v16, v18);
      if (!v38)
      {
        return 0;
      }

      v41 = v38;
      v42 = *(v15 + 5);
      Node = v37;
      v43 = v37;
      goto LABEL_49;
    case 'q':
      v25 = a2 + 1;

    case 't':
      v19 = a2 + 1;
      v20 = 1;
LABEL_19:

    case 'u':
      v44 = a2;
      v45 = this;
      if (!v46)
      {
        return 0;
      }

      v47 = v46;
      if (!v48)
      {
        return 0;
      }

      v49 = v48;
      v50 = v45;
      v51 = *(v45 + 5);
      v52 = 45;
      goto LABEL_48;
    case 'w':
      v21 = a2 + 1;

    case 'x':

    default:
      return Node;
  }

  while (1)
  {
    v115 = *(v113 + 3);
    v116 = *v115;
    if (v116 == 105)
    {
      v117 = 225;
      goto LABEL_172;
    }

    if (v116 != 109)
    {
      break;
    }

    v117 = 224;
LABEL_172:
    *(v113 + 3) = v115 + 1;
    *(v113 + 4) = v111 - 1;
    v118 = v114;
    if (!v119)
    {
      return 0;
    }

    v120 = v119;
    v121 = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v121, v120, *(v109 + 5), v122, v123);
    if (!v121)
    {
      return 0;
    }

    v124 = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), v117);
    swift::Demangle::__runtime::Node::addChild(v124, v121, *(v109 + 5), v125, v126);
    swift::Demangle::__runtime::Node::addChild(v112, v124, *(v109 + 5), v127, v128);
    v113 = v109;
    Node = 0;
    v111 = *(v109 + 4);
    v114 = v118;
    if (!v111)
    {
      return Node;
    }
  }

  if (v116 != 95)
  {
    return 0;
  }

  *(v113 + 3) = v115 + 1;
  *(v113 + 4) = v111 - 1;
  if (v84)
  {
    for (i = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), 246); ; swift::Demangle::__runtime::Node::addChild(i, v132, *(v109 + 5), v133, v134))
    {
      v130 = *(v109 + 4);
      if (v130)
      {
        v131 = *(v109 + 3);
        if (*v131 == 95)
        {
          break;
        }
      }

      if (!v132)
      {
        return 0;
      }
    }

    *(v109 + 3) = v131 + 1;
    *(v109 + 4) = v130 - 1;
  }

  else
  {
    i = 0;
  }

  v136 = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), 222);
  swift::Demangle::__runtime::Node::addChild(v136, v112, *(v109 + 5), v137, v138);
  if (v84)
  {
    swift::Demangle::__runtime::Node::addChild(v136, v84, *(v109 + 5), v139, v140);
    swift::Demangle::__runtime::Node::addChild(v136, i, *(v109 + 5), v141, v142);
  }

  return v136;
}

uint64_t anonymous namespace::OldDemangler::demangleBuiltinSize(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 == 1)
  {
    return 0;
  }

  v8 = v3 + 2;
  v9 = v2 - 2;
  while (1)
  {
    v10 = *v4;
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v7 = (v10 & 0xF) + 10 * v7;
    *a2 = v7;
    ++v4;
    *(this + 3) = v8;
    *(this + 4) = v9;
    ++v8;
    if (--v9 == -1)
    {
      return 0;
    }
  }

  if (v10 != 95)
  {
    return 0;
  }

  *(this + 3) = v8;
  *(this + 4) = v9;
  return 1;
}

uint64_t anonymous namespace::OldDemangler::demangleNatural(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 != 1)
  {
    v8 = v3 + 2;
    v9 = v2 - 2;
    do
    {
      v10 = *v4;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v7 = (v10 & 0xF) + 10 * v7;
      *a2 = v7;
      ++v4;
      *(this + 3) = v8;
      *(this + 4) = v9;
      ++v8;
      --v9;
    }

    while (v9 != -1);
  }

  return 1;
}

unsigned int *anonymous namespace::OldDemangler::demangleDeclarationName(swift::Demangle::__runtime::NodeFactory **a1, __int16 a2, int a3)
{
  if (result)
  {
    v6 = result;
    if (result)
    {
      v7 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(a1[5], a2);
      swift::Demangle::__runtime::Node::addChild(Node, v6, a1[5], v8, v9);
      swift::Demangle::__runtime::Node::addChild(Node, v7, a1[5], v10, v11);
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](a1, &Node);
      return Node;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleFunctionType(_anonymous_namespace_::OldDemangler *this, __int16 a2, int a3)
{
  v6 = *(this + 4);
  if (!v6)
  {
    Node = 0;
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_28;
  }

  v7 = *(this + 3);
  v8 = *v7;
  v9 = v8 == 122;
  if (v8 == 122)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 1;
      goto LABEL_28;
    }

    v8 = *v7;
  }

  v10 = v8 == 121;
  if (v8 == 121)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 1;
      goto LABEL_28;
    }
  }

  v11 = *v7;
  v12 = v11 == 90;
  if (v11 == 90)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 1;
      goto LABEL_28;
    }

    v11 = *v7;
  }

  if (v11 == 68)
  {
    *(this + 3) = v7 + 1;
    *(this + 4) = v6 - 1;
    if (v6 == 1)
    {
      v6 = 0;
      v13 = 46;
      ++v7;
    }

    else
    {
      v13 = v7[1];
      v7 += 2;
      v6 -= 2;
      *(this + 3) = v7;
      *(this + 4) = v6;
    }

    v15 = (((v13 - 100) >> 1) | ((v13 - 100) << 7));
    if (v15 <= 7 && ((1 << v15) & 0x93) != 0)
    {
      if (!v6)
      {
LABEL_27:
        Node = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v13 = 0;
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (*v7 != 89)
  {
    goto LABEL_27;
  }

  *(this + 3) = v7 + 1;
  *(this + 4) = v6 - 1;
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v17, *(this + 5), v18, v19);
  if (!Node)
  {
    return 0;
  }

LABEL_28:
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v22, v21, *(this + 5), v23, v24);
  if (!v22)
  {
    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  v26 = v25;
  v27 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v27, v26, *(this + 5), v28, v29);
  if (!v27)
  {
    return 0;
  }

  v30 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), a2);
  if (v9)
  {
    v31 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 285);
    swift::Demangle::__runtime::Node::addChild(v30, v31, *(this + 5), v32, v33);
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else if (!v12)
  {
LABEL_34:
    if (v10)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v38 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 284);
  swift::Demangle::__runtime::Node::addChild(v30, v38, *(this + 5), v39, v40);
  if (v10)
  {
LABEL_35:
    v34 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 68);
    swift::Demangle::__runtime::Node::addChild(v30, v34, *(this + 5), v35, v36);
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (v13)
  {
LABEL_42:
    v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 70, v13);
    swift::Demangle::__runtime::Node::addChild(v30, v41, *(this + 5), v42, v43);
  }

LABEL_43:
  if (Node)
  {
    v44 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 69);
    swift::Demangle::__runtime::Node::addChild(v44, Node, *(this + 5), v45, v46);
    swift::Demangle::__runtime::Node::addChild(v30, v44, *(this + 5), v47, v48);
  }

  v49 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 3);
  swift::Demangle::__runtime::Node::addChild(v30, v49, *(this + 5), v50, v51);
  swift::Demangle::__runtime::Node::addChild(v49, v22, *(this + 5), v52, v53);
  v54 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 218);
  swift::Demangle::__runtime::Node::addChild(v54, v27, *(this + 5), v55, v56);
  swift::Demangle::__runtime::Node::addChild(v30, v54, *(this + 5), v57, v58);
  return v30;
}

unsigned __int16 *anonymous namespace::OldDemangler::demangleGenericSignature(_anonymous_namespace_::OldDemangler *this, int a2, int a3)
{
  v5 = *(this + 5);
  if (a3)
  {
    v6 = 47;
  }

  else
  {
    v6 = 44;
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(v5, v6);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = Node;
    v10 = -1;
    while (1)
    {
      v14 = *(this + 3);
      v15 = *v14;
      if (v15 == 122)
      {
        v10 = 0;
        *(this + 3) = v14 + 1;
        *(this + 4) = v8 - 1;
        goto LABEL_7;
      }

      if (v15 == 82 || v15 == 114)
      {
        break;
      }

      v16 = v14 + 1;
      *(this + 3) = v14 + 1;
      *(this + 4) = v8 - 1;
      if (v15 == 95)
      {
        v10 = 1;
      }

      else
      {
        result = 0;
        if (v8 == 1 || (v15 - 58) < 0xFFFFFFF6)
        {
          return result;
        }

        v18 = v15 & 0xF;
        v19 = v14 + 2;
        v20 = v8 - 2;
        while (1)
        {
          v21 = *v16;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v18 = (v21 & 0xF) + 10 * v18;
          ++v16;
          *(this + 3) = v19;
          *(this + 4) = v20;
          ++v19;
          if (--v20 == -1)
          {
            return 0;
          }
        }

        if (v21 != 95)
        {
          return 0;
        }

        *(this + 3) = v19;
        *(this + 4) = v20;
        v10 = v18 + 2;
      }

LABEL_7:
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 38, v10);
      swift::Demangle::__runtime::Node::addChild(v9, v11, *(this + 5), v12, v13);
      v8 = *(this + 4);
      if (!v8)
      {
        return 0;
      }
    }

    if (v10 != -1 || (v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 38, 1), swift::Demangle::__runtime::Node::addChild(v9, v22, *(this + 5), v23, v24), (v8 = *(this + 4)) != 0))
    {
      v25 = *(this + 3);
      v26 = *v25;
      if (v26 == 114)
      {
LABEL_115:
        *(this + 3) = v25 + 1;
        *(this + 4) = v8 - 1;
        return v9;
      }

      if (v26 == 82)
      {
        --v8;
        *(this + 3) = v25 + 1;
        *(this + 4) = v8;
        v27 = "U";
        v28 = "B";
        v29 = "E";
        if (v8)
        {
          goto LABEL_26;
        }

LABEL_39:
        if (v35)
        {
          while (1)
          {
            v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
            swift::Demangle::__runtime::Node::addChild(v41, v35, *(this + 5), v42, v43);
            if (!v41)
            {
              return 0;
            }

            v46 = *(this + 4);
            if (!v46)
            {
              return 0;
            }

            v47 = *(this + 3);
            v48 = *v47;
            if (v48 <= 0x6B)
            {
              break;
            }

            if (v48 != 108)
            {
              if (v48 == 122)
              {
                *(this + 3) = v47 + 1;
                *(this + 4) = v46 - 1;
                if (!result)
                {
                  return result;
                }

                v54 = result;
                v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::__runtime::Node::addChild(v51, v54, *(this + 5), v55, v56);
                if (!v51)
                {
                  return 0;
                }

                v57 = *(this + 5);
                v58 = 40;
                goto LABEL_61;
              }

LABEL_56:
              if (!result)
              {
                return result;
              }

LABEL_59:
              v59 = result;
              v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
              swift::Demangle::__runtime::Node::addChild(v51, v59, *(this + 5), v60, v61);
              if (!v51)
              {
                return 0;
              }

              goto LABEL_60;
            }

            v95 = -1;
            v96 = -1;
            *(this + 3) = v47 + 1;
            *(this + 4) = v46 - 1;
            v62 = 0;
            if (v46 != 1)
            {
              v67 = v47[1];
              if (v67 > 0x52)
              {
                if (v47[1] <= 0x54u)
                {
                  if (v67 == 83)
                  {
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    *(this + 3) = v47 + 2;
                    *(this + 4) = v46 - 2;
                    v27 = "S";
                    {
                      goto LABEL_100;
                    }

                    goto LABEL_110;
                  }

                  if (v67 == 84)
                  {
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    v27 = "T";
                    goto LABEL_99;
                  }
                }

                else
                {
                  switch(v67)
                  {
                    case 'U':
                      v68 = v29;
                      v69 = v28;
                      v70 = v27;
                      goto LABEL_99;
                    case 'e':
                      v68 = v29;
                      v69 = v28;
                      v70 = v27;
                      *(this + 3) = v47 + 2;
                      *(this + 4) = v46 - 2;
                      v27 = "e";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                    case 'm':
                      v68 = v29;
                      v69 = v28;
                      v70 = v27;
                      *(this + 3) = v47 + 2;
                      *(this + 4) = v46 - 2;
                      v27 = "m";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                  }
                }
              }

              else if (v47[1] <= 0x4Cu)
              {
                if (v67 == 66)
                {
                  v68 = v29;
                  v74 = v28;
                  v70 = v27;
                  v69 = v74;
                  v27 = v74;
                  goto LABEL_99;
                }

                if (v67 == 69)
                {
                  *(this + 3) = v47 + 2;
                  *(this + 4) = v46 - 2;
                  {
                    v71 = *(this + 4);
                    if (v71)
                    {
                      v72 = *(this + 3);
                      if (*v72 == 95)
                      {
                        v73 = v29;
                        v69 = v28;
                        v70 = v27;
                        *(this + 3) = v72 + 1;
                        *(this + 4) = v71 - 1;
                        v68 = v73;
                        v27 = v73;
                        {
                          goto LABEL_110;
                        }

LABEL_100:
                        v77 = *(this + 5);
                        v78 = v77[1];
                        if (!v78 || (v79 = v78 + 1, (v78 + 1) > v77[2]))
                        {
                          v80 = 2 * v77[4];
                          if (v80 <= 2)
                          {
                            v80 = 2;
                          }

                          v77[4] = v80;
                          v81 = v80 + 8;
                          v82 = malloc_type_malloc(v80 + 8, 0x2004093837F09uLL);
                          v78 = (v82 + 1);
                          *v82 = v77[3];
                          v79 = v82 + 9;
                          v77[2] = v82 + v81;
                          v77[3] = v82;
                        }

                        v77[1] = v79;
                        *v78 = *v27;
                        NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v77, 103, v78, 1);
                        if (NodeWithAllocatedText)
                        {
                          v84 = NodeWithAllocatedText;
                          v62 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 42);
                          swift::Demangle::__runtime::Node::addChild(v62, v41, *(this + 5), v85, v86);
                          swift::Demangle::__runtime::Node::addChild(v62, v84, *(this + 5), v87, v88);
                          v27 = v70;
                          if (v96 != -1)
                          {
                            v89 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v96);
                            swift::Demangle::__runtime::Node::addChild(v62, v89, *(this + 5), v90, v91);
                            v28 = v69;
                            if (v95 != -1)
                            {
                              v92 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v95);
                              swift::Demangle::__runtime::Node::addChild(v62, v92, *(this + 5), v93, v94);
                            }

                            goto LABEL_112;
                          }

LABEL_111:
                          v28 = v69;
LABEL_112:
                          v29 = v68;
                          goto LABEL_62;
                        }

LABEL_110:
                        v62 = 0;
                        v27 = v70;
                        goto LABEL_111;
                      }
                    }
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                switch(v67)
                {
                  case 'M':
                    *(this + 3) = v47 + 2;
                    *(this + 4) = v46 - 2;
                    {
                      v75 = *(this + 4);
                      if (v75)
                      {
                        v76 = *(this + 3);
                        if (*v76 == 95)
                        {
                          v68 = v29;
                          v69 = v28;
                          v70 = v27;
                          *(this + 3) = v76 + 1;
                          *(this + 4) = v75 - 1;
                          v27 = "M";
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_110;
                        }
                      }
                    }

LABEL_96:
                    v62 = 0;
                    break;
                  case 'N':
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    v27 = "N";
                    goto LABEL_99;
                  case 'R':
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    v27 = "R";
LABEL_99:
                    *(this + 3) = v47 + 2;
                    *(this + 4) = v46 - 2;
                    goto LABEL_100;
                }
              }
            }

LABEL_62:
            if (!v62)
            {
              return 0;
            }

            swift::Demangle::__runtime::Node::addChild(v9, v62, *(this + 5), v44, v45);
            v8 = *(this + 4);
            if (!v8)
            {
              goto LABEL_39;
            }

LABEL_26:
            v25 = *(this + 3);
            v30 = *v25;
            switch(v30)
            {
              case 'W':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v35 = result;
                while (1)
                {
                  v39 = *(this + 4);
                  if (v39)
                  {
                    v40 = *(this + 3);
                    if (*v40 == 95)
                    {
                      break;
                    }
                  }

                  v36 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                  swift::Demangle::__runtime::Node::addChild(v36, v35, *(this + 5), v37, v38);
                  result = 0;
                  if (!v35)
                  {
                    return result;
                  }
                }

                *(this + 3) = v40 + 1;
                *(this + 4) = v39 - 1;
                break;
              case 'w':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v31 = result;
                v32 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::__runtime::Node::addChild(v32, v31, *(this + 5), v33, v34);
                if (!v35)
                {
                  return 0;
                }

                break;
              case 'r':
                goto LABEL_115;
              default:
                goto LABEL_39;
            }
          }

          if (v48 == 67)
          {
            if (!result)
            {
              return result;
            }

            goto LABEL_59;
          }

          if (v48 != 83)
          {
            goto LABEL_56;
          }

          *(this + 3) = v47 + 1;
          *(this + 4) = v46 - 1;
          if (!result)
          {
            return result;
          }

          v49 = result;
          v50 = result[8];
          if (v50 != 25 && v50 != 190)
          {
            if (v50 != 163)
            {
              return 0;
            }

            v49 = result;
            if (!result)
            {
              return result;
            }
          }

          v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
          swift::Demangle::__runtime::Node::addChild(v51, v49, *(this + 5), v52, v53);
LABEL_60:
          v57 = *(this + 5);
          v58 = 37;
LABEL_61:
          v62 = swift::Demangle::__runtime::NodeFactory::createNode(v57, v58);
          swift::Demangle::__runtime::Node::addChild(v62, v41, *(this + 5), v63, v64);
          swift::Demangle::__runtime::Node::addChild(v62, v51, *(this + 5), v65, v66);
          goto LABEL_62;
        }
      }
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleMetatypeRepresentation(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 116)
  {
    v4 = "@thin";
    goto LABEL_9;
  }

  if (v3 == 111)
  {
    v4 = "@objc_metatype";
    goto LABEL_9;
  }

  if (v3 != 84)
  {
    return 0;
  }

  v4 = "@thick";
LABEL_9:
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  return swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 155, v4);
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolList(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 200);
  v7 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 246);
  v8 = *(this + 5);
  v9 = Node;
  v10 = Node;
  for (i = v7; ; i = v16)
  {
    swift::Demangle::__runtime::Node::addChild(v10, i, v8, v5, v6);
    v12 = *(this + 4);
    if (v12)
    {
      v13 = *(this + 3);
      if (*v13 == 95)
      {
        break;
      }
    }

    if (!result)
    {
      return result;
    }

    v15 = result;
    v16 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v16, v15, *(this + 5), v17, v18);
    if (!v16)
    {
      return 0;
    }

    v8 = *(this + 5);
    v10 = v7;
  }

  *(this + 3) = v13 + 1;
  *(this + 4) = v12 - 1;
  return v9;
}

uint64_t anonymous namespace::OldDemangler::demangleIndex(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = v3 + 1;
    v5 = *v3;
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v5 == 95)
    {
      v6 = 0;
LABEL_4:
      *a2 = v6;
      return 1;
    }

    if ((v5 - 48) <= 9)
    {
      v8 = v5 & 0xF;
      *a2 = v8;
      if (v2 != 1)
      {
        v9 = v3 + 2;
        v10 = v2 - 2;
        while (1)
        {
          v11 = *v4;
          if ((v11 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v8 = (v11 & 0xF) + 10 * v8;
          *a2 = v8;
          ++v4;
          *(this + 3) = v9;
          *(this + 4) = v10;
          ++v9;
          if (--v10 == -1)
          {
            return 0;
          }
        }

        if (v11 == 95)
        {
          *(this + 3) = v9;
          *(this + 4) = v10;
          v6 = v8 + 1;
          goto LABEL_4;
        }
      }
    }
  }

  return 0;
}

unsigned int *anonymous namespace::OldDemangler::demangleArchetypeType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 == 115)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    v7 = *(this + 5);
    v8 = v7[1];
    v9 = (v8 + 5);
    if (v8)
    {
      v10 = v9 > v7[2];
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 2 * v7[4];
      if (v11 <= 6)
      {
        v11 = 6;
      }

      v7[4] = v11;
      v12 = v11 + 8;
      v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      *v13 = v7[3];
      v9 = v13 + 13;
      v8 = (v13 + 1);
      v7[2] = v13 + v12;
      v7[3] = v13;
    }

    v7[1] = v9;
    *(v8 + 4) = 116;
    *v8 = 1718187859;
    result = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v7, 163, v8, 5);
    goto LABEL_19;
  }

  if (v5 == 83)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 != 81)
  {
    return 0;
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v2 - 1;
  if (result)
  {
LABEL_19:
    v14 = result;
    if (result)
    {
      v15 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 5);
      swift::Demangle::__runtime::Node::addChild(Node, v14, *(this + 5), v16, v17);
      swift::Demangle::__runtime::Node::addChild(Node, v15, *(this + 5), v18, v19);
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &Node);
      return Node;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleDependentType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v2 = **(this + 3);
  if (v2 == 95 || v2 == 100 || (v2 - 48) < 0xA)
  {
  }

  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v7, *(this + 5), v9, v10);
  if (!Node)
  {
    return 0;
  }
}

unsigned int *anonymous namespace::OldDemangler::getDependentGenericParamType(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime *a2, unsigned int a3)
{
  memset(&v17, 0, sizeof(v17));
  v4 = a2;
  v5 = a3;
  swift::Demangle::__runtime::genericParameterName(a2, a3, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v17, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 39);
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 104, v4);
  swift::Demangle::__runtime::Node::addChild(Node, v9, *(this + 5), v10, v11);
  v12 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 104, v5);
  swift::Demangle::__runtime::Node::addChild(Node, v12, *(this + 5), v13, v14);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return Node;
}

unsigned int *anonymous namespace::OldDemangler::demangleAssociatedTypeSimple(swift::Demangle::__runtime::NodeFactory **this, int a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v7, v8);
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleAssociatedTypeCompound(swift::Demangle::__runtime::NodeFactory **this, int a2)
{
  {
    v8 = result;
    if (!result)
    {
      break;
    }

    v9 = this[4];
    if (v9)
    {
      v10 = this[3];
      if (*v10 == 95)
      {
        this[3] = (v10 + 1);
        this[4] = (v9 - 1);
        return result;
      }
    }

    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v8, this[5], v6, v7);
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleSubstitutionIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  switch(*v2)
  {
    case 'C':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v3 = *(this + 5);
      v4 = v3[1];
      v5 = v4 + 15;
      if (v4)
      {
        v6 = v5 > v3[2];
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        v7 = 2 * v3[4];
        if (v7 <= 0x10)
        {
          v7 = 16;
        }

        v3[4] = v7;
        v8 = v7 + 8;
        v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
        v4 = v9 + 1;
        *v9 = v3[3];
        v5 = v9 + 23;
        v3[2] = v9 + v8;
        v3[3] = v9;
      }

      v3[1] = v5;
      qmemcpy(v4, "__C_Synthesized", 15);
      v10 = v3;
      v11 = 15;
      goto LABEL_24;
    case 'P':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafePointer";
      goto LABEL_45;
    case 'Q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "ImplicitlyUnwrappedOptional";
      v13 = 63;
      v14 = 27;
      goto LABEL_49;
    case 'R':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeBufferPointer";
      v13 = 230;
      v14 = 19;
      goto LABEL_49;
    case 'S':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "String";
      goto LABEL_43;
    case 'V':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeRawPointer";
      v13 = 230;
      v14 = 16;
      goto LABEL_49;
    case 'a':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Array";
      goto LABEL_38;
    case 'b':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Bool";
      goto LABEL_48;
    case 'c':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnicodeScalar";
LABEL_45:
      v13 = 230;
      v14 = 13;
      goto LABEL_49;
    case 'd':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Double";
LABEL_43:
      v13 = 230;
      v14 = 6;
      goto LABEL_49;
    case 'f':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Float";
LABEL_38:
      v13 = 230;
      v14 = 5;
      goto LABEL_49;
    case 'i':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Int";
      v13 = 230;
      v14 = 3;
      goto LABEL_49;
    case 'o':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v15 = *(this + 5);
      v4 = v15[1];
      v16 = v4 + 3;
      if (v4)
      {
        v17 = v16 > v15[2];
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 2 * v15[4];
        if (v18 <= 4)
        {
          v18 = 4;
        }

        v15[4] = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v4 = v20 + 1;
        *v20 = v15[3];
        v16 = v20 + 11;
        v15[2] = v20 + v19;
        v15[3] = v20;
      }

      v15[1] = v16;
      v4[2] = 67;
      *v4 = 24415;
      v10 = v15;
      v11 = 3;
LABEL_24:

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v10, 163, v4, v11);
    case 'p':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutablePointer";
      v13 = 230;
      v14 = 20;
      goto LABEL_49;
    case 'q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Optional";
      v13 = 63;
      v14 = 8;
      goto LABEL_49;
    case 'r':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableBufferPointer";
      v13 = 230;
      v14 = 26;
      goto LABEL_49;
    case 'u':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UInt";
LABEL_48:
      v13 = 230;
      v14 = 4;
      goto LABEL_49;
    case 'v':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableRawPointer";
      v13 = 230;
      v14 = 23;
LABEL_49:

      break;
    default:
      v23 = 0;
      {
        return 0;
      }

      result = *(*this + 8 * v23);
      break;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleTuple(uint64_t a1, int a2, int a3)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 234);
  v8 = *(a1 + 32);
  if (!v8)
  {
    return 0;
  }

  v9 = Node;
  v10 = *(a1 + 24);
  if (*v10 != 95)
  {
    while (1)
    {
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 235);
      if (!*(a1 + 32))
      {
        break;
      }

      v15 = **(a1 + 24);
      if (v15 != 111)
      {
        goto LABEL_11;
      }

LABEL_12:
      v3 = v3 & 0xFFFFFFFF00000000 | 0x100EC;
      if (!v16)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v11, v16, *(a1 + 40), v17, v18);
LABEL_14:
      if (!v19)
      {
        return 0;
      }

      v20 = v19;
      v21 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 243);
      swift::Demangle::__runtime::Node::addChild(v21, v20, *(a1 + 40), v22, v23);
      if (!v21)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v11, v21, *(a1 + 40), v24, v25);
      swift::Demangle::__runtime::Node::addChild(v9, v11, *(a1 + 40), v26, v27);
      v8 = *(a1 + 32);
      if (!v8)
      {
        return 0;
      }

      v10 = *(a1 + 24);
      if (*v10 == 95)
      {
        goto LABEL_4;
      }
    }

    v15 = 46;
LABEL_11:
    if ((v15 - 48) > 9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_4:
  *(a1 + 24) = v10 + 1;
  *(a1 + 32) = v8 - 1;
  if (a2 == 1 && v11)
  {
    swift::Demangle::__runtime::Node::reverseChildren(v11, 0);
    v12 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 289);
    swift::Demangle::__runtime::Node::addChild(v11, v12, *(a1 + 40), v13, v14);
    swift::Demangle::__runtime::Node::reverseChildren(v11, 0);
  }

  return v9;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleImplFunctionType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 119);
  v5 = *(this + 4);
  if (v5 && (v6 = *(this + 3), *v6 == 116))
  {
    *(this + 3) = v6 + 1;
    *(this + 4) = v5 - 1;
    v7 = "@convention(thin)";
    v8 = 17;
  }

  else
  {
    if (!v10)
    {
      return 0;
    }

    v7 = v9;
    v8 = v10;
  }

  v11 = *(this + 5);
  v12 = v11[1];
  v13 = &v12[v8];
  if (v12)
  {
    v14 = v13 > v11[2];
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 2 * v11[4];
    if (v15 <= v8 + 1)
    {
      v15 = v8 + 1;
    }

    v11[4] = v15;
    v16 = v15 + 8;
    v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
    v18 = v17 + v16;
    *v17 = v11[3];
    v12 = (v17 + 1);
    v11[2] = v18;
    v11[3] = v17;
    v13 = v17 + v8 + 8;
  }

  v11[1] = v13;
  memmove(v12, v7, v8);
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v11, 108, v12, v8);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(this + 5), v20, v21);
  v22 = *(this + 4);
  if (!v22)
  {
    return 0;
  }

  v23 = *(this + 3);
  if (*v23 == 67)
  {
    *(this + 3) = v23 + 1;
    *(this + 4) = v22 - 1;
    result = 0;
    if (v22 == 1)
    {
      return result;
    }

    v25 = v23[1];
    if (v25 <= 0x62)
    {
      if (v25 == 79)
      {
        v26 = "objc_method";
        v27 = 11;
      }

      else
      {
        if (v25 != 98)
        {
          return result;
        }

        v26 = "block";
        v27 = 5;
      }
    }

    else
    {
      switch(v25)
      {
        case 'w':
          v26 = "witness_method";
          v27 = 14;
          break;
        case 'm':
          v26 = "method";
          v27 = 6;
          break;
        case 'c':
          v26 = "c";
          v27 = 1;
          break;
        default:
          return result;
      }
    }

    *(this + 3) = v23 + 2;
    *(this + 4) = v22 - 2;
    v28 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 117);
    v29 = *(this + 5);
    v30 = v29[1];
    if (!v30 || (v31 = &v30[v27], &v30[v27] > v29[2]))
    {
      v32 = 2 * v29[4];
      if (v32 <= v27 + 1)
      {
        v32 = v27 + 1;
      }

      v29[4] = v32;
      v33 = v32 + 8;
      v34 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      v35 = v34 + v33;
      *v34 = v29[3];
      v30 = (v34 + 1);
      v29[2] = v35;
      v29[3] = v34;
      v31 = v34 + v27 + 8;
    }

    v29[1] = v31;
    memmove(v30, v26, v27);
    v36 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v29, 118, v30, v27);
    swift::Demangle::__runtime::Node::addChild(v28, v36, *(this + 5), v37, v38);
    swift::Demangle::__runtime::Node::addChild(Node, v28, *(this + 5), v39, v40);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }
  }

  v41 = *(this + 3);
  v42 = *v41;
  if (v42 == 104)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v43 = *(this + 5);
    v44 = v43[1];
    if (!v44 || (v45 = (v44 + 9), (v44 + 9) > v43[2]))
    {
      v46 = 2 * v43[4];
      if (v46 <= 0xA)
      {
        v46 = 10;
      }

      v43[4] = v46;
      v47 = v46 + 8;
      v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
      v44 = (v48 + 1);
      *v48 = v43[3];
      v45 = v48 + 17;
      v43[2] = v48 + v47;
      v43[3] = v48;
    }

    v43[1] = v45;
    *v44 = *"@Sendable";
    *(v44 + 8) = 101;
    v49 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v43, 116, v44, 9);
    swift::Demangle::__runtime::Node::addChild(Node, v49, *(this + 5), v50, v51);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 == 72)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v52 = *(this + 5);
    v53 = v52[1];
    if (!v53 || (v54 = (v53 + 6), (v53 + 6) > v52[2]))
    {
      v55 = 2 * v52[4];
      if (v55 <= 7)
      {
        v55 = 7;
      }

      v52[4] = v55;
      v56 = v55 + 8;
      v57 = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
      v53 = (v57 + 1);
      *v57 = v52[3];
      v54 = v57 + 14;
      v52[2] = v57 + v56;
      v52[3] = v57;
    }

    v52[1] = v54;
    *(v53 + 4) = 25454;
    *v53 = 2037604672;
    v58 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v52, 116, v53, 6);
    swift::Demangle::__runtime::Node::addChild(Node, v58, *(this + 5), v59, v60);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if ((v42 | 0x20) == 0x67)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    if (!result)
    {
      return result;
    }

    swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v61, v62);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 != 95)
  {
    return 0;
  }

  v63 = v22 - 1;
  *(this + 3) = v41 + 1;
  *(this + 4) = v63;
  if (!v63)
  {
    goto LABEL_57;
  }

LABEL_56:
  v64 = *(this + 3);
  if (*v64 == 95)
  {
    v67 = v63 - 1;
    *(this + 3) = v64 + 1;
    *(this + 4) = v67;
    if (!v67)
    {
      goto LABEL_64;
    }

LABEL_63:
    v68 = *(this + 3);
    if (*v68 == 95)
    {
      *(this + 3) = v68 + 1;
      *(this + 4) = v67 - 1;
      return Node;
    }

    else
    {
LABEL_64:
      while (1)
      {
        if (!result)
        {
          break;
        }

        swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v69, v70);
        v67 = *(this + 4);
        if (v67)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
LABEL_57:
    while (1)
    {
      if (!result)
      {
        break;
      }

      swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v65, v66);
      v63 = *(this + 4);
      if (v63)
      {
        goto LABEL_56;
      }
    }
  }

  return result;
}

_anonymous_namespace_::OldDemangler *anonymous namespace::OldDemangler::demangleContext(_anonymous_namespace_::OldDemangler *this, int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  if (v4 > 0x52)
  {
    if (*v3 > 0x64u)
    {
      if (v4 == 101)
      {
        *(this + 3) = v3 + 1;
        *(this + 4) = v2 - 1;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 73);
        v23 = this;
        if (!result)
        {
          return result;
        }

        v24 = result;
        if (!result)
        {
          return result;
        }

        v25 = result;
        if (!result)
        {
          return result;
        }

        v28 = result;
        swift::Demangle::__runtime::Node::addChild(Node, v24, v23[5], v26, v27);
        swift::Demangle::__runtime::Node::addChild(Node, v28, v23[5], v29, v30);
        v19 = v23[5];
        v20 = Node;
        v21 = v25;
        goto LABEL_37;
      }

      if (v4 != 115)
      {
        if (v4 == 118)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      v31 = *(this + 5);
      v32 = v31[1];
      v33 = (v32 + 5);
      if (v32)
      {
        v34 = v33 > v31[2];
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        v35 = 2 * v31[4];
        if (v35 <= 6)
        {
          v35 = 6;
        }

        v31[4] = v35;
        v36 = v35 + 8;
        v37 = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
        v32 = (v37 + 1);
        *v37 = v31[3];
        v33 = v37 + 13;
        v31[2] = v37 + v36;
        v31[3] = v37;
      }

      v31[1] = v33;
      *(v32 + 4) = 116;
      *v32 = 1718187859;

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v31, 163, v32, 5);
    }

    else
    {
      if (v4 != 83)
      {
        if (v4 == 86 || v4 == 90)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
    }
  }

  else
  {
    if (*v3 <= 0x46u)
    {
      if (v4 != 67)
      {
        if (v4 != 69)
        {
          if (v4 != 70)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        *(this + 3) = v3 + 1;
        *(this + 4) = v2 - 1;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 73);
        v11 = a2;
        v12 = this;
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (!result)
        {
          return result;
        }

        v16 = result;
        swift::Demangle::__runtime::Node::addChild(Node, v13, v12[5], v14, v15);
        v19 = v12[5];
        v20 = Node;
        v21 = v16;
LABEL_37:
        swift::Demangle::__runtime::Node::addChild(v20, v21, v19, v17, v18);
        return Node;
      }

LABEL_24:
      v7 = a2 + 1;
    }

    if (v4 - 79 < 2)
    {
      goto LABEL_24;
    }

    if (v4 != 71)
    {
      if (v4 == 73)
      {
        goto LABEL_24;
      }

LABEL_18:
    }

    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (result)
    {
    }
  }

  return result;
}

unint64_t anonymous namespace::OldDemangler::demangleDeclName(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3);
    v3 = *v2;
    if (v3 == 80)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      if (v17)
      {
        v9 = v17;
        if (v18)
        {
          v11 = v18;
          v12 = this;
          v13 = *(this + 5);
          v14 = 186;
          goto LABEL_16;
        }
      }

      return 0;
    }

    if (v3 == 76)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      if (v1 != 1)
      {
        v4 = v2[1];
        v5 = v2 + 2;
        *(this + 3) = v2 + 2;
        *(this + 4) = v1 - 2;
        if (v4 == 95)
        {
          v6 = 0;
        }

        else
        {
          v19 = 0;
          if (v1 == 2 || (v4 - 58) < 0xFFFFFFF6)
          {
            return v19;
          }

          v24 = v4 & 0xF;
          v25 = v2 + 3;
          v26 = v1 - 3;
          while (1)
          {
            v27 = *v5;
            if ((v27 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            v24 = (v27 & 0xF) + 10 * v24;
            ++v5;
            *(this + 3) = v25;
            *(this + 4) = v26;
            ++v25;
            if (--v26 == -1)
            {
              return 0;
            }
          }

          if (v27 != 95)
          {
            return 0;
          }

          *(this + 3) = v25;
          *(this + 4) = v26;
          v6 = v24 + 1;
        }

        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v6);
        if (Node)
        {
          v9 = Node;
          if (v10)
          {
            v11 = v10;
            v12 = this;
            v13 = *(this + 5);
            v14 = 146;
LABEL_16:
            v19 = swift::Demangle::__runtime::NodeFactory::createNode(v13, v14);
            swift::Demangle::__runtime::Node::addChild(v19, v9, *(v12 + 5), v20, v21);
            swift::Demangle::__runtime::Node::addChild(v19, v11, *(v12 + 5), v22, v23);
            return v19;
          }
        }
      }

      return 0;
    }
  }
}

void std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

_anonymous_namespace_::OldDemangler *anonymous namespace::OldDemangler::demangleModule(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
LABEL_15:
    v13 = result;
    if (result)
    {
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &v13);
      return v13;
    }

    return result;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 != 83)
  {
    if (v3 == 115)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v4 = *(this + 5);
      v5 = v4[1];
      v6 = (v5 + 5);
      if (v5)
      {
        v7 = v6 > v4[2];
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = 2 * v4[4];
        if (v8 <= 6)
        {
          v8 = 6;
        }

        v4[4] = v8;
        v9 = v8 + 8;
        v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
        v5 = (v10 + 1);
        *v10 = v4[3];
        v6 = v10 + 13;
        v4[2] = v10 + v9;
        v4[3] = v10;
      }

      v4[1] = v6;
      *(v5 + 4) = 116;
      *v5 = 1718187859;

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v4, 163, v5, 5);
    }

    goto LABEL_15;
  }

  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  if (result && *(result + 8) != 163)
  {
    return 0;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleEntity(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 != 90)
  {
    v9 = *v4;
    if (v5 != 70)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    v8 = 78;
    goto LABEL_17;
  }

  ++v4;
  --v3;
  *(this + 3) = v4;
  *(this + 4) = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (*v4 == 70)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = *v4;
  switch(v6)
  {
    case 'I':
      v8 = 130;
      v7 = 1;
      break;
    case 'i':
      v7 = 0;
      v8 = 231;
      break;
    case 'v':
      v7 = 0;
      v8 = 266;
      break;
    default:
LABEL_12:
  }

LABEL_17:
  *(this + 3) = v4 + 1;
  *(this + 4) = v3 - 1;
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = this;
  v14 = *(this + 4);
  if (!v14)
  {
    if ((v7 & 1) == 0)
    {
LABEL_22:
      if (!result)
      {
        return result;
      }

      v19 = result;
LABEL_24:
      v17 = 1;
LABEL_25:
      v13 = this;
LABEL_56:
      v24 = (v13 + 40);
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(v13 + 5), v8);
      swift::Demangle::__runtime::Node::addChild(Node, v12, *v24, v26, v27);
      if (v19)
      {
        swift::Demangle::__runtime::Node::addChild(Node, v19, *v24, v28, v29);
      }

      if (!v17)
      {
        goto LABEL_116;
      }

      if (!result)
      {
        return result;
      }

      v30 = result;
      v31 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 243);
      swift::Demangle::__runtime::Node::addChild(v31, v30, *v24, v32, v33);
      if (v31)
      {
        v36 = *v24;
        v37 = Node;
        v38 = v31;
LABEL_115:
        swift::Demangle::__runtime::Node::addChild(v37, v38, v36, v34, v35);
LABEL_116:
        if (v5 != 90)
        {
          return Node;
        }

        v63 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 229);
        swift::Demangle::__runtime::Node::addChild(v63, Node, *v24, v64, v65);
        return v63;
      }
    }

    return 0;
  }

  v15 = *(this + 3);
  v16 = *v15;
  v17 = 0;
  v18 = 32;
  switch(*v15)
  {
    case 'C':
      v18 = 0;
      goto LABEL_54;
    case 'D':
      goto LABEL_55;
    case 'E':
      v17 = 0;
      v18 = 106;
      goto LABEL_55;
    case 'G':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 102;
      goto LABEL_89;
    case 'M':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 161;
      goto LABEL_89;
    case 'U':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v8 = 72;
      goto LABEL_24;
    case 'W':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 53;
      goto LABEL_89;
    case 'Z':
      v17 = 0;
      v18 = 133;
      goto LABEL_55;
    case 'a':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      result = 0;
      if (v14 == 1)
      {
        return result;
      }

      v39 = v15[1];
      if (v39 > 0x6F)
      {
        if (v39 == 112)
        {
          v23 = 167;
        }

        else
        {
          if (v39 != 117)
          {
            return result;
          }

          v23 = 263;
        }
      }

      else if (v39 == 79)
      {
        v23 = 179;
      }

      else
      {
        if (v39 != 111)
        {
          return result;
        }

        v23 = 165;
      }

      goto LABEL_87;
    case 'c':
      v18 = 30;
LABEL_54:
      v17 = 1;
      goto LABEL_55;
    case 'd':
      v17 = 0;
      v18 = 52;
      goto LABEL_55;
    case 'e':
      v17 = 0;
      v18 = 105;
      goto LABEL_55;
    case 'g':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 100;
      goto LABEL_89;
    case 'l':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      result = 0;
      if (v14 == 1)
      {
        return result;
      }

      v22 = v15[1];
      if (v22 > 0x6F)
      {
        if (v22 == 112)
        {
          v23 = 166;
        }

        else
        {
          if (v22 != 117)
          {
            return result;
          }

          v23 = 262;
        }
      }

      else if (v22 == 79)
      {
        v23 = 178;
      }

      else
      {
        if (v22 != 111)
        {
          return result;
        }

        v23 = 164;
      }

LABEL_87:
      *(this + 3) = v15 + 2;
      *(this + 4) = v14 - 2;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = v23;
LABEL_89:
      v24 = (this + 40);
      v40 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), v21);
      v41 = *(v20 + 16);
      if (v41 == 186)
      {
        v43 = *(v20 + 18);
        v44 = v20;
        if (v43 != 2)
        {
          if (v43 != 5 || *(v20 + 8) < 2u)
          {
LABEL_107:
            Node = v40;
            v50 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 266);
            swift::Demangle::__runtime::Node::addChild(v50, v12, *v24, v51, v52);
            swift::Demangle::__runtime::Node::addChild(v50, v20, *v24, v53, v54);
            v55 = 0;
            goto LABEL_108;
          }

          v44 = *v20;
        }

        v45 = *(v44 + 8);
        if (v45[1] != (&dword_8 + 1))
        {
          goto LABEL_107;
        }

        v46 = *v45;
        v47 = *v46;
        v48 = *(v46 + 8);
        if (v47 != 0x7069726373627573 || v48 != 116)
        {
          goto LABEL_107;
        }

        if (v43 != 2)
        {
          if (!*(v20 + 8))
          {
            Node = v40;
            v66 = 0;
            goto LABEL_124;
          }

          v20 = *v20;
        }

        Node = v40;
        v66 = *v20;
LABEL_124:
        v20 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 186);
        swift::Demangle::__runtime::Node::addChild(v20, v66, *v24, v67, v68);
        goto LABEL_125;
      }

      if (v41 != 103 || *(v20 + 8) != 9)
      {
        goto LABEL_107;
      }

      if (**v20 != 0x7069726373627573 || *(*v20 + 8) != 116)
      {
        goto LABEL_107;
      }

      Node = v40;
      v20 = 0;
LABEL_125:
      v50 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 231);
      swift::Demangle::__runtime::Node::addChild(v50, v12, *v24, v69, v70);
      v55 = 1;
LABEL_108:
      if (result)
      {
        v56 = result;
        v57 = swift::Demangle::__runtime::NodeFactory::createNode(*v24, 243);
        swift::Demangle::__runtime::Node::addChild(v57, v56, *v24, v58, v59);
        if (v57)
        {
          swift::Demangle::__runtime::Node::addChild(v50, v57, *v24, v60, v61);
          v62 = v55 ^ 1;
          if (!v20)
          {
            v62 = 1;
          }

          if ((v62 & 1) == 0)
          {
            swift::Demangle::__runtime::Node::addChild(v50, v20, *v24, v34, v35);
          }

          v36 = *v24;
          v37 = Node;
          v38 = v50;
          goto LABEL_115;
        }

        return 0;
      }

      return result;
    case 'm':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 150;
      goto LABEL_89;
    case 'r':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 214;
      goto LABEL_89;
    case 's':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 226;
      goto LABEL_89;
    case 'u':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v8 = 122;
      goto LABEL_24;
    case 'w':
      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (!result)
      {
        return result;
      }

      v20 = result;
      v21 = 269;
      goto LABEL_89;
    default:
      if (!v7)
      {
        goto LABEL_22;
      }

      if (v16 == 105)
      {
        v17 = 0;
        v18 = 130;
LABEL_55:
        v19 = 0;
        *(this + 3) = v15 + 1;
        *(this + 4) = v14 - 1;
        v8 = v18;
        goto LABEL_56;
      }

      if (v16 != 65)
      {
        return 0;
      }

      *(this + 3) = v15 + 1;
      *(this + 4) = v14 - 1;
      if (result)
      {
        v19 = result;
        v17 = 0;
        v8 = 34;
        goto LABEL_25;
      }

      return result;
  }
}

unint64_t anonymous namespace::OldDemangler::demangleIdentifier(void *a1, unint64_t a2)
{
  v2 = a1[4];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = *v3;
  if (v4 == 88)
  {
    ++v3;
    __p = 0;
    v29 = 0;
    v30 = 0;
    --v2;
    a1[3] = v3;
    a1[4] = v2;
    if (!v2)
    {
LABEL_14:
      v8 = 0;
      if ((a2 & 0x10000) != 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = 103;
      }

      if (!v2)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
  }

  if (*v3 != 111)
  {
    goto LABEL_14;
  }

  size = 0;
  a1[3] = v3 + 1;
  a1[4] = v2 - 1;
  if (v2 != 1 && ((a2 >> 16) & 1) == 0)
  {
    v6 = v3[1];
    v3 += 2;
    v2 -= 2;
    a1[3] = v3;
    a1[4] = v2;
    switch(v6)
    {
      case 'p':
        v7 = 185;
        break;
      case 'i':
        v7 = 129;
        break;
      case 'P':
        v7 = 183;
        break;
      default:
        goto LABEL_28;
    }

    v8 = 1;
    if (!v2)
    {
      goto LABEL_28;
    }

LABEL_22:
    p_p = (v3 + 1);
    v9 = *v3;
    v11 = v2 - 1;
    a1[3] = v3 + 1;
    a1[4] = v11;
    if ((v9 - 48) > 9)
    {
      goto LABEL_28;
    }

    size = v9 & 0xF;
    if (v11)
    {
      v12 = v3 + 2;
      do
      {
        v13 = p_p->__r_.__value_.__s.__data_[0];
        if ((v13 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        size = (v13 & 0xF) + 10 * size;
        p_p = (p_p + 1);
        --v11;
        a1[3] = v12;
        a1[4] = v11;
        ++v12;
      }

      while (v11);
    }

    if (v11 < size)
    {
      goto LABEL_28;
    }

    a1[3] = p_p + size;
    a1[4] = v11 - size;
    if (v4 != 88)
    {
LABEL_41:
      if (size)
      {
        memset(&v27, 0, sizeof(v27));
        if (v8)
        {
          v16 = a1;
          std::string::reserve(&v27, size);
          do
          {
            v17 = p_p->__r_.__value_.__s.__data_[0];
            if ((v17 & 0x80000000) == 0)
            {
              if (v17 - 123) < 0xE6u || (v18 = v17 - 97, ((0x17007A2uLL >> v18)))
              {
                size = 0;
                if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_69;
              }
            }

            std::string::push_back(&v27, v17);
            p_p = (p_p + 1);
            --size;
          }

          while (size);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &v27;
          }

          else
          {
            p_p = v27.__r_.__value_.__r.__words[0];
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v27.__r_.__value_.__l.__size_;
          }

          v19 = v16[5];
          if (!size)
          {
            v20 = 0;
            goto LABEL_68;
          }
        }

        else
        {
          v19 = a1[5];
        }

        v20 = v19[1];
        v21 = &v20[size];
        if (v20)
        {
          v22 = v21 > v19[2];
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = 2 * v19[4];
          if (v23 <= size + 1)
          {
            v23 = size + 1;
          }

          v19[4] = v23;
          v24 = v23 + 8;
          v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
          v26 = v25 + v24;
          *v25 = v19[3];
          v20 = (v25 + 1);
          v19[2] = v26;
          v19[3] = v25;
          v21 = v25 + size + 8;
        }

        v19[1] = v21;
        memmove(v20, p_p, size);
LABEL_68:
        size = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v19, v7, v20, size);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_69:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }

    v15 = a1;
    if (swift::Punycode::__runtime::decodePunycodeUTF8(p_p, size, &__p))
    {
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v30 >= 0)
      {
        size = SHIBYTE(v30);
      }

      else
      {
        size = v29;
      }

      a1 = v15;
      goto LABEL_41;
    }

LABEL_28:
    size = 0;
  }

LABEL_29:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  return size;
}

unsigned int *anonymous namespace::OldDemangler::demangleNominalType(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3);
    v3 = *v2;
    if (v3 > 0x4F)
    {
      switch(v3)
      {
        case 'P':
          *(this + 3) = v2 + 1;
          *(this + 4) = v1 - 1;
          break;
        case 'V':
          *(this + 3) = v2 + 1;
          *(this + 4) = v1 - 1;
          break;
        case 'S':
          *(this + 3) = v2 + 1;
          *(this + 4) = v1 - 1;
        default:
          return 0;
      }
    }

    if (v3 == 67)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
    }

    if (v3 == 79)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleIndexAsNode(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = v2 + 1;
    v4 = *v2;
    *(a1 + 24) = v2 + 1;
    *(a1 + 32) = v1 - 1;
    if (v4 == 95)
    {
      v5 = 0;
      return swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 171, v5);
    }

    if (v1 != 1 && (v4 - 58) >= 0xFFFFFFF6)
    {
      v8 = v4 & 0xF;
      v9 = v2 + 2;
      v10 = v1 - 2;
      while (1)
      {
        v11 = *v3;
        if ((v11 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v8 = (v11 & 0xF) + 10 * v8;
        ++v3;
        *(a1 + 24) = v9;
        *(a1 + 32) = v10;
        ++v9;
        if (--v10 == -1)
        {
          return 0;
        }
      }

      if (v11 == 95)
      {
        *(a1 + 24) = v9;
        *(a1 + 32) = v10;
        v5 = v8 + 1;
        return swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 171, v5);
      }
    }
  }

  return 0;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleBoundGenericArgs(swift::Demangle::__runtime::NodeFactory **this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v4 = a2;
  v6 = *(a2 + 18);
  v7 = a2;
  if ((v6 - 1) >= 2)
  {
    if (v6 != 5 || !*(a2 + 2))
    {
      return 0;
    }

    v7 = *a2;
  }

  v8 = *v7;
  v9 = *(*v7 + 16);
  if (v9 == 73 || v9 == 78 || v9 == 163)
  {
    goto LABEL_30;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], *(v4 + 8));
  swift::Demangle::__runtime::Node::addChild(Node, v11, this[5], v13, v14);
  for (i = 1; ; ++i)
  {
    v19 = *(v4 + 18);
    if (v19 != 1)
    {
      break;
    }

    if (v19 <= i)
    {
      goto LABEL_29;
    }

LABEL_20:
    v20 = v19 - 1;
    if (v19 == 1)
    {
      goto LABEL_23;
    }

    if (v19 != 5)
    {
      v19 = 2;
LABEL_23:
      if (v19 <= i)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    if (*(v4 + 2) <= i)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }

LABEL_26:
    v21 = v4;
    if (v20 >= 2)
    {
      v21 = *v4;
    }

    v18 = *(v21 + i);
LABEL_11:
    swift::Demangle::__runtime::Node::addChild(Node, v18, this[5], v15, v16);
  }

  if (v19 == 5)
  {
    if (*(v4 + 2) <= i)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v19 == 2 && i < 2)
  {
    goto LABEL_20;
  }

LABEL_29:
  v4 = Node;
LABEL_30:
  v22 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 246);
  v23 = this[4];
  while (1)
  {
    if (v23)
    {
      v24 = this[3];
      if (*v24 == 95)
      {
        break;
      }
    }

    if (v25)
    {
      v26 = v25;
      v27 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
      swift::Demangle::__runtime::Node::addChild(v27, v26, this[5], v28, v29);
      if (v27)
      {
        swift::Demangle::__runtime::Node::addChild(v22, v27, this[5], v30, v31);
        v23 = this[4];
        if (v23)
        {
          continue;
        }
      }
    }

    return 0;
  }

  this[3] = (v24 + 1);
  this[4] = (v23 - 1);
  v33 = *(v22 + 18);
  if ((v33 - 1) < 2 || v33 == 5 && *(v22 + 8))
  {
    v34 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(v34, v4, this[5], v35, v36);
    v37 = *(v4 + 8);
    switch(v37)
    {
      case 25:
        v38 = 13;
        break;
      case 63:
        v38 = 14;
        break;
      case 230:
        v38 = 15;
        break;
      default:
        return 0;
    }

    v4 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], v38);
    swift::Demangle::__runtime::Node::addChild(v4, v34, this[5], v39, v40);
    swift::Demangle::__runtime::Node::addChild(v4, v22, this[5], v41, v42);
  }

  return v4;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolNameGivenContext(swift::Demangle::__runtime::NodeFactory **this, swift::Demangle::__runtime::Node *a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 190);
    swift::Demangle::__runtime::Node::addChild(Node, a2, this[5], v6, v7);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v8, v9);
    std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &Node);
    return Node;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolName(swift::Demangle::__runtime::NodeFactory **this, unsigned int a2)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
  swift::Demangle::__runtime::Node::addChild(Node, v4, this[5], v6, v7);
  return Node;
}

unsigned int *anonymous namespace::OldDemangler::demangleGenericParamIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 120)
  {
    v8 = 0;
    v11 = 0;
    *(this + 3) = v2 + 1;
    *(this + 4) = v1 - 1;
  }

  v4 = v2 + 1;
  if (v3 == 100)
  {
    *(this + 3) = v4;
    *(this + 4) = v1 - 1;
    if (v1 != 1)
    {
      v5 = v2[1];
      i = v2 + 2;
      v7 = v1 - 2;
      *(this + 3) = v2 + 2;
      *(this + 4) = v1 - 2;
      if (v5 == 95)
      {
        v8 = (&dword_0 + 1);
        if (v1 == 2)
        {
          return 0;
        }
      }

      else
      {
        if (v1 == 2 || (v5 - 58) < 0xFFFFFFF6)
        {
          return 0;
        }

        v17 = v5 & 0xF;
        v18 = v2 + 3;
        v7 = v1 - 3;
        for (i = v18; ; ++i)
        {
          v19 = *(i - 1);
          if ((v19 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v17 = (v19 & 0xF) + 10 * v17;
          *(this + 3) = v18;
          *(this + 4) = v7;
          ++v18;
          if (--v7 == -1)
          {
            return 0;
          }
        }

        if (v19 != 95)
        {
          return 0;
        }

        *(this + 3) = v18;
        *(this + 4) = v7;
        v8 = (v17 + 2);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = i + 1;
      v10 = *i;
      *(this + 3) = i + 1;
      *(this + 4) = v7 - 1;
      if (v10 == 95)
      {
        v11 = 0;
      }

      if (v7 != 1 && (v10 - 58) >= 0xFFFFFFF6)
      {
        v20 = v10 & 0xF;
        v21 = i + 2;
        v22 = v7 - 2;
        while (1)
        {
          v23 = *v9;
          if ((v23 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v20 = (v23 & 0xF) + 10 * v20;
          ++v9;
          *(this + 3) = v21;
          *(this + 4) = v22;
          ++v21;
          if (--v22 == -1)
          {
            return 0;
          }
        }

        if (v23 == 95)
        {
          *(this + 3) = v21;
          *(this + 4) = v22;
          v11 = v20 + 1;
        }
      }
    }
  }

  else
  {
    *(this + 3) = v4;
    *(this + 4) = v1 - 1;
    if (v3 == 95)
    {
      v8 = 0;
      v11 = 1;
    }

    if (v1 != 1 && (v3 - 58) >= 0xFFFFFFF6)
    {
      v13 = v3 & 0xF;
      v14 = v2 + 2;
      v15 = v1 - 2;
      while (1)
      {
        v16 = *v4;
        if ((v16 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v13 = (v16 & 0xF) + 10 * v13;
        ++v4;
        *(this + 3) = v14;
        *(this + 4) = v15;
        ++v14;
        if (--v15 == -1)
        {
          return 0;
        }
      }

      if (v16 == 95)
      {
        v8 = 0;
        *(this + 3) = v14;
        *(this + 4) = v15;
        v11 = v13 + 2;
      }
    }
  }

  return 0;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolNameImpl(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 != 115)
  {
    if (v5 == 83)
    {
      *(this + 3) = v4 + 1;
      *(this + 4) = v3 - 1;
      v6 = this;
      if (result)
      {
        v7 = *(result + 8);
        if (v7 != 190)
        {
          if (v7 != 163)
          {
            return 0;
          }

          v8 = result;
          if (result)
          {
            v9 = result;
            Node = swift::Demangle::__runtime::NodeFactory::createNode(v6[5], 190);
            swift::Demangle::__runtime::Node::addChild(Node, v8, v6[5], v10, v11);
            v14 = v6[5];
            v15 = Node;
            v16 = v9;
LABEL_25:
            swift::Demangle::__runtime::Node::addChild(v15, v16, v14, v12, v13);
            std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](v6, &Node);
            return Node;
          }
        }
      }

      return result;
    }

LABEL_12:
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v3 - 1;
  v6 = this;
  v17 = *(this + 5);
  v18 = v17[1];
  v19 = (v18 + 5);
  if (v18)
  {
    v20 = v19 > v17[2];
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 2 * v17[4];
    if (v21 <= 6)
    {
      v21 = 6;
    }

    v17[4] = v21;
    v22 = v21 + 8;
    v23 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
    *v23 = v17[3];
    v19 = v23 + 13;
    v18 = (v23 + 1);
    v17[2] = v23 + v22;
    v17[3] = v23;
  }

  v17[1] = v19;
  *(v18 + 4) = 116;
  *v18 = 1718187859;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v17, 163, v18, 5);
  if (result)
  {
    v25 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(v6[5], 190);
    swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, v6[5], v26, v27);
    v14 = v6[5];
    v15 = Node;
    v16 = v25;
    goto LABEL_25;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleDependentMemberTypeName(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v5 = *(this + 4);
  if (!v5)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *(this + 3);
  v7 = *v6;
  if (v7 != 80)
  {
    if (v7 == 83)
    {
      *(this + 3) = v6 + 1;
      *(this + 4) = v5 - 1;
      v24 = result;
      if (!result)
      {
        return result;
      }

      if (*(result + 8) != 36)
      {
        return 0;
      }

LABEL_13:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 46);
      swift::Demangle::__runtime::Node::addChild(Node, a2, *(this + 5), v17, v18);
      swift::Demangle::__runtime::Node::addChild(Node, v24, *(this + 5), v19, v20);
      return Node;
    }

    goto LABEL_7;
  }

  *(this + 3) = v6 + 1;
  *(this + 4) = v5 - 1;
  if (!result)
  {
    return result;
  }

  v21 = result;
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v9, v21, *(this + 5), v22, v23);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if (result)
  {
    v10 = result;
    result = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 36);
    v24 = result;
    if (result)
    {
      v13 = result;
      swift::Demangle::__runtime::Node::addChild(result, v10, *(this + 5), v11, v12);
      if (v9)
      {
        swift::Demangle::__runtime::Node::addChild(v13, v9, *(this + 5), v14, v15);
      }

      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &v24);
      goto LABEL_13;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::createSwiftType(uint64_t a1, __int16 a2, const void *a3, size_t a4)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), a2);
  v8 = *(a1 + 40);
  v9 = v8[1];
  v10 = (v9 + 5);
  if (v9)
  {
    v11 = v10 > v8[2];
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 2 * v8[4];
    if (v12 <= 6)
    {
      v12 = 6;
    }

    v8[4] = v12;
    v13 = v12 + 8;
    v14 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    v9 = (v14 + 1);
    *v14 = v8[3];
    v10 = v14 + 13;
    v8[2] = v14 + v13;
    v8[3] = v14;
  }

  v8[1] = v10;
  *(v9 + 4) = 116;
  *v9 = 1718187859;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v8, 163, v9, 5);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(a1 + 40), v16, v17);
  v18 = *(a1 + 40);
  if (a4)
  {
    v19 = v18[1];
    v20 = &v19[a4];
    if (v19)
    {
      v21 = v20 > v18[2];
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 2 * v18[4];
      if (v22 <= a4 + 1)
      {
        v22 = a4 + 1;
      }

      v18[4] = v22;
      v23 = v22 + 8;
      v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v25 = v24 + v23;
      *v24 = v18[3];
      v19 = (v24 + 1);
      v18[2] = v25;
      v18[3] = v24;
      v20 = v24 + a4 + 8;
    }

    v18[1] = v20;
    memmove(v19, a3, a4);
  }

  else
  {
    v19 = 0;
  }

  v26 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v18, 103, v19, a4);
  swift::Demangle::__runtime::Node::addChild(Node, v26, *(a1 + 40), v27, v28);
  return Node;
}

const char *anonymous namespace::OldDemangler::demangleImplConvention(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *v4;
  if (v5 > 0x66)
  {
    if (*v4 <= 0x6Bu)
    {
      if (v5 == 103)
      {
        *(a1 + 24) = v4 + 1;
        *(a1 + 32) = v2 - 1;
        v9 = qword_DAA30[a2];
        return off_DCDC8[a2];
      }

      if (v5 == 105)
      {
        *(a1 + 24) = v4 + 1;
        *(a1 + 32) = v2 - 1;
        v7 = qword_DAA48[a2];
        return qword_DCDE0[a2];
      }

      return 0;
    }

    if (v5 != 108)
    {
      if (v5 == 111)
      {
        *(a1 + 24) = v4 + 1;
        *(a1 + 32) = v2 - 1;
        v8 = qword_DAA60[a2];
        return off_DCDF8[a2];
      }

      return 0;
    }

    *(a1 + 24) = v4 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 == 1)
    {
      return "@inout";
    }

    else
    {
      return 0;
    }
  }

  else if (*v4 > 0x63u)
  {
    if (v5 == 100)
    {
      *(a1 + 24) = v4 + 1;
      *(a1 + 32) = v2 - 1;
      v10 = qword_DAA18[a2];
      return off_DCDB0[a2];
    }

    if (v5 != 101)
    {
      return 0;
    }

    *(a1 + 24) = v4 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 == 1)
    {
      return "@deallocating";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v5 != 68)
    {
      if (v5 == 97)
      {
        *(a1 + 24) = v4 + 1;
        *(a1 + 32) = v2 - 1;
        if (a2 >= 2)
        {
          return "@autoreleased";
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    *(a1 + 24) = v4 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 >= 2)
    {
      return "@unowned_inner_pointer";
    }

    else
    {
      return 0;
    }
  }
}

uint64_t anonymous namespace::OldDemangler::demangleImplParameterOrResult(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 32);
  if (!v5 || (v6 = *(a1 + 24), *v6 != 122))
  {
    if (a2 == 123)
    {
      v7 = 1;
      v8 = 123;
      goto LABEL_9;
    }

    if ((a2 & 0xFFFFFFFD) == 0x7D)
    {
      v8 = a2;
      v7 = 2;
      goto LABEL_9;
    }

    return 0;
  }

  *(a1 + 24) = v6 + 1;
  *(a1 + 32) = v5 - 1;
  if (a2 != 125)
  {
    return 0;
  }

  v7 = 2;
  v8 = 127;
LABEL_9:
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  if (!result)
  {
    return result;
  }

  v14 = result;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v14, *(a1 + 40), v16, v17);
  if (!Node)
  {
    return 0;
  }

  v18 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), v8);
  v19 = *(a1 + 40);
  v20 = v19[1];
  if (!v20 || (v21 = &v20[v12], &v20[v12] > v19[2]))
  {
    v22 = 2 * v19[4];
    if (v22 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    v19[4] = v22;
    v23 = v22 + 8;
    v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
    v25 = v24 + v23;
    *v24 = v19[3];
    v20 = (v24 + 1);
    v19[2] = v25;
    v19[3] = v24;
    v21 = v24 + v12 + 8;
  }

  v19[1] = v21;
  memmove(v20, v11, v12);
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v19, 108, v20, v12);
  swift::Demangle::__runtime::Node::addChild(v18, NodeWithAllocatedText, *(a1 + 40), v27, v28);
  swift::Demangle::__runtime::Node::addChild(v18, Node, *(a1 + 40), v29, v30);
  return v18;
}

unint64_t anonymous namespace::OldDemangler::demangleValueWitnessKind(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  LOBYTE(v7) = *v2;
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  if (v1 == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v3 = v2[1];
    *(this + 3) = v2 + 2;
    *(this + 4) = v1 - 2;
    HIBYTE(v7) = v3;
    switch(v7)
    {
      case 27745:
        v5 = 0;
        v4 = 0x100000000;
        break;
      case 24931:
        v4 = 0x100000000;
        v5 = 1;
        break;
      case 24948:
        v4 = 0x100000000;
        v5 = 2;
        break;
      case 25956:
        v4 = 0x100000000;
        v5 = 3;
        break;
      case 30840:
        v4 = 0x100000000;
        v5 = 4;
        break;
      case 22616:
        v4 = 0x100000000;
        v5 = 5;
        break;
      case 30808:
        v4 = 0x100000000;
        v5 = 6;
        break;
      case 20547:
        v4 = 0x100000000;
        v5 = 7;
        break;
      case 28739:
        v4 = 0x100000000;
        v5 = 8;
        break;
      case 28771:
        v4 = 0x100000000;
        v5 = 9;
        break;
      case 27476:
        v4 = 0x100000000;
        v5 = 10;
        break;
      case 27508:
        v4 = 0x100000000;
        v5 = 11;
        break;
      case 29296:
        v4 = 0x100000000;
        v5 = 12;
        break;
      case 19284:
        v4 = 0x100000000;
        v5 = 13;
        break;
      case 25411:
        v4 = 0x100000000;
        v5 = 14;
        break;
      case 29780:
        v4 = 0x100000000;
        v5 = 15;
        break;
      case 21620:
        v4 = 0x100000000;
        v5 = 16;
        break;
      case 29560:
        v4 = 0x100000000;
        v5 = 17;
        break;
      case 26488:
        v4 = 0x100000000;
        v5 = 18;
        break;
      case 26485:
        v4 = 0x100000000;
        v5 = 19;
        break;
      case 28789:
        v4 = 0x100000000;
        v5 = 20;
        break;
      case 26997:
        v4 = 0x100000000;
        v5 = 21;
        break;
      case 29797:
        v4 = 0x100000000;
        v5 = 22;
        break;
      default:
        v4 = (v7 == 29811) << 32;
        v5 = 23;
        if (v7 != 29811)
        {
          v5 = 0;
        }

        break;
    }
  }

  return v5 | v4;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleReabstractSignature(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(this + 3);
    if (*v7 == 71)
    {
      *(this + 3) = v7 + 1;
      *(this + 4) = v6 - 1;
      if (!result)
      {
        return result;
      }

      swift::Demangle::__runtime::Node::addChild(a2, result, *(this + 5), v9, v10);
    }
  }

  if (result)
  {
    v11 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(Node, v11, *(this + 5), v13, v14);
    if (!Node)
    {
      return 0;
    }

    swift::Demangle::__runtime::Node::addChild(a2, Node, *(this + 5), v15, v16);
    if (!result)
    {
      return result;
    }

    v17 = result;
    v18 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v18, v17, *(this + 5), v19, v20);
    if (v18)
    {
      swift::Demangle::__runtime::Node::addChild(a2, v18, *(this + 5), v21, v22);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *swift::reflection::MetadataSource::dump(swift::reflection::MetadataSource *this)
{
  v2 = &std::cerr;
  v3 = 0;
  swift::reflection::MetadataSourceVisitor<PrintMetadataSource,void>::visit(&v2, this);
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "\n", 1);
}

void *swift::reflection::MetadataSource::dump(const swift::reflection::MetadataCaptureMetadataSource *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a3;
  swift::reflection::MetadataSourceVisitor<PrintMetadataSource,void>::visit(&v5, a1);
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
}

PrintMetadataSource *swift::reflection::MetadataSourceVisitor<PrintMetadataSource,void>::visit(PrintMetadataSource *this, const swift::reflection::MetadataCaptureMetadataSource *a2)
{
  v2 = *(a2 + 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return PrintMetadataSource::visitGenericArgumentMetadataSource(this, a2);
      case 4:
        return PrintMetadataSource::visitSelfMetadataSource(this, a2);
      case 5:
        return PrintMetadataSource::visitSelfWitnessTableMetadataSource(this);
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      return PrintMetadataSource::visitReferenceCaptureMetadataSource(this, a2);
    }

    else if (v2 == 2)
    {
      return PrintMetadataSource::visitMetadataCaptureMetadataSource(this, a2);
    }
  }

  else
  {
    return PrintMetadataSource::visitClosureBindingMetadataSource(this, a2);
  }

  return this;
}

void *PrintMetadataSource::visitClosureBindingMetadataSource(PrintMetadataSource *this, const swift::reflection::ClosureBindingMetadataSource *a2)
{
  v11 = 15;
  strcpy(__p, "closure_binding");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 15);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 5;
  strcpy(v8, "index");
  std::to_string(&v7, *(a2 + 3));
  PrintMetadataSource::printField(this, v8, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

LABEL_9:
    operator delete(v8[0]);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintMetadataSource::visitReferenceCaptureMetadataSource(PrintMetadataSource *this, const swift::reflection::ReferenceCaptureMetadataSource *a2)
{
  v11 = 17;
  strcpy(__p, "reference_capture");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 17);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v9 = 5;
  strcpy(v8, "index");
  std::to_string(&v7, *(a2 + 3));
  PrintMetadataSource::printField(this, v8, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

LABEL_9:
    operator delete(v8[0]);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintMetadataSource::visitMetadataCaptureMetadataSource(PrintMetadataSource *this, const swift::reflection::MetadataCaptureMetadataSource *a2)
{
  v11 = 16;
  strcpy(__p, "metadata_capture");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 16);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v9 = 5;
  strcpy(v8, "index");
  std::to_string(&v7, *(a2 + 3));
  PrintMetadataSource::printField(this, v8, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

LABEL_9:
    operator delete(v8[0]);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintMetadataSource::visitGenericArgumentMetadataSource(PrintMetadataSource *this, const swift::reflection::GenericArgumentMetadataSource *a2)
{
  v12 = 16;
  strcpy(__p, "generic_argument");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 16);
  if (v12 < 0)
  {
    operator delete(*__p);
  }

  v10 = 5;
  strcpy(v9, "index");
  std::to_string(&v8, *(a2 + 3));
  PrintMetadataSource::printField(this, v9, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    operator delete(v9[0]);
    goto LABEL_7;
  }

  if (v10 < 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = *(a2 + 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  *(this + 2) += 2;
  swift::reflection::MetadataSourceVisitor<PrintMetadataSource,void>::visit(this, v6);
  *(this + 2) -= 2;
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintMetadataSource::visitSelfMetadataSource(PrintMetadataSource *this, const swift::reflection::SelfMetadataSource *a2)
{
  v7 = 4;
  strcpy(__p, "self");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, __p, 4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintMetadataSource::visitSelfWitnessTableMetadataSource(void **a1)
{
  v6 = 18;
  strcpy(__p, "self_witness_table");
  for (i = *(a1 + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, " ", 1);
  }

  v3 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, __p, 18);
  if (v6 < 0)
  {
    operator delete(*__p);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, ")", 1);
}

uint64_t PrintMetadataSource::printField(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, " ", 1);
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v9, v10);
    v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "=", 1);
  }

  v12 = *(a3 + 23);
  if (v12 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v13, v14);
  return *a1;
}

void *swift::reflection::TypeInfo::dump(swift::reflection::TypeInfo *this)
{
  v2 = &std::cerr;
  v3 = 0;
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "\n", 1);
}

void *swift::reflection::TypeInfo::dump(swift::reflection::TypeInfo *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a3;
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
}

int *swift::reflection::anonymous namespace::PrintTypeInfo::print(int *this, const swift::reflection::TypeInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 2);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v47[24] = 9;
          strcpy(&v47[1], "reference");
          for (i = this[2]; i; --i)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
          }

          v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v47[1], 9);
          if ((v47[24] & 0x80000000) != 0)
          {
            operator delete(*&v47[1]);
          }

          v7 = *(a2 + 8);
          if (v7 > 1)
          {
            if (v7 == 2)
            {
              v47[24] = 4;
              strcpy(&v47[1], "kind");
              v47[0] = 7;
              strcpy(v46, "unowned");
              goto LABEL_96;
            }

            if (v7 == 3)
            {
              v47[24] = 4;
              strcpy(v47, "\tkind");
              strcpy(v46, "unmanaged");
              goto LABEL_96;
            }
          }

          else
          {
            if (!v7)
            {
              v47[24] = 4;
              strcpy(&v47[1], "kind");
              v47[0] = 6;
              strcpy(v46, "strong");
              goto LABEL_96;
            }

            if (v7 == 1)
            {
              v47[24] = 4;
              strcpy(&v47[1], "kind");
              v47[0] = 4;
              strcpy(v46, "weak");
LABEL_96:
              if ((v47[0] & 0x80000000) != 0)
              {
                operator delete(v46[0]);
              }

              if ((v47[24] & 0x80000000) != 0)
              {
                operator delete(*&v47[1]);
              }
            }
          }

          v34 = *(a2 + 9);
          if (v34 == 1)
          {
            v47[24] = 11;
            strcpy(&v47[1], "refcounting");
            v47[0] = 7;
            strcpy(v46, "unknown");
          }

          else
          {
            if (v34)
            {
              return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, ")", 1);
            }

            v47[24] = 11;
            strcpy(&v47[1], "refcounting");
            v47[0] = 6;
            strcpy(v46, "native");
          }

          if ((v47[0] & 0x80000000) != 0)
          {
            operator delete(v46[0]);
          }

          goto LABEL_106;
        }

LABEL_146:
        __break(1u);
        return this;
      }

      v10 = *(a2 + 8);
      if (v10 > 4)
      {
        if (v10 <= 6)
        {
          if (v10 == 5)
          {
            v11 = "class_existential";
          }

          else
          {
            v11 = "existential_metatype";
          }
        }

        else
        {
          switch(v10)
          {
            case 7:
              v11 = "error_existential";
              break;
            case 8:
              v11 = "class_instance";
              break;
            case 9:
              v11 = "closure_context";
              break;
            default:
              goto LABEL_116;
          }
        }
      }

      else if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_116;
          }

          v11 = "tuple";
        }

        else
        {
          v11 = "invalid";
        }
      }

      else if (v10 == 2)
      {
        v11 = "struct";
      }

      else if (v10 == 3)
      {
        v11 = "thick_function";
      }

      else
      {
        v11 = "opaque_existential";
      }

      std::string::basic_string[abi:nn200100]<0>(&v47[1], v11);
      if ((v47[24] & 0x80000000) != 0)
      {
        operator delete(*&v47[1]);
      }

LABEL_116:
      v22 = v3[2];
      v3[2] = v22 + 2;
      v35 = *(a2 + 5);
      v36 = *(a2 + 6);
      if (v35 == v36)
      {
        goto LABEL_144;
      }

      while (1)
      {
        if (*(v35 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v47[1], *v35, *(v35 + 1));
        }

        else
        {
          v37 = *v35;
          *&v47[17] = *(v35 + 2);
          *&v47[1] = v37;
        }

        v38 = *(v35 + 24);
        v49 = *(v35 + 5);
        __val = v38;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "\n", 1);
        v47[0] = 5;
        strcpy(v46, "field");
        for (j = v3[2]; j; --j)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
        }

        v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
        if (v47[0] >= 0)
        {
          v41 = v46;
        }

        else
        {
          v41 = v46[0];
        }

        if (v47[0] >= 0)
        {
          v42 = v47[0];
        }

        else
        {
          v42 = v46[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, v41, v42);
        if ((v47[0] & 0x80000000) != 0)
        {
          operator delete(v46[0]);
        }

        v43 = v47[24];
        if (v47[24] < 0)
        {
          v43 = *&v47[9];
        }

        if (v43)
        {
          v47[0] = 4;
          strcpy(v46, "name");
          if ((v47[0] & 0x80000000) != 0)
          {
            operator delete(v46[0]);
          }
        }

        v47[0] = 6;
        strcpy(v46, "offset");
        std::to_string(&v45, __val);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
          if ((v47[0] & 0x80000000) != 0)
          {
LABEL_142:
            operator delete(v46[0]);
          }
        }

        else if ((v47[0] & 0x80000000) != 0)
        {
          goto LABEL_142;
        }

        v44 = v49;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "\n", 1);
        v3[2] += 2;
        v3[2] -= 2;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, ")", 1);
        if ((v47[24] & 0x80000000) != 0)
        {
          operator delete(*&v47[1]);
        }

        v35 += 3;
        if (v35 == v36)
        {
          goto LABEL_143;
        }
      }
    }

    v47[24] = 7;
    strcpy(&v47[1], "builtin");
    for (k = this[2]; k; --k)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
    }

    v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
    v18 = 7;
LABEL_36:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, &v47[1], v18);
    if ((v47[24] & 0x80000000) != 0)
    {
      operator delete(*&v47[1]);
    }

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, ")", 1);
  }

  if (v4 == 5)
  {
    v47[24] = 5;
    strcpy(&v47[1], "array");
    for (m = this[2]; m; --m)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
    }

    v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
    v18 = 5;
    goto LABEL_36;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v47[24] = 7;
      strcpy(&v47[1], "invalid");
      for (n = this[2]; n; --n)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
      }

      v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, &v47[1], 7);
LABEL_106:
      if ((v47[24] & 0x80000000) != 0)
      {
        operator delete(*&v47[1]);
      }

      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, ")", 1);
    }

    goto LABEL_146;
  }

  v12 = *(a2 + 8);
  switch(v12)
  {
    case 2:
      v47[24] = 18;
      strcpy(&v47[1], "multi_payload_enum");
      for (ii = this[2]; ii; --ii)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
      }

      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
      v15 = 18;
      goto LABEL_53;
    case 1:
      v47[24] = 19;
      strcpy(&v47[1], "single_payload_enum");
      for (jj = this[2]; jj; --jj)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
      }

      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
      v15 = 19;
      goto LABEL_53;
    case 0:
      v47[24] = 15;
      strcpy(&v47[1], "no_payload_enum");
      for (kk = this[2]; kk; --kk)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
      }

      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
      v15 = 15;
LABEL_53:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, &v47[1], v15);
      if ((v47[24] & 0x80000000) != 0)
      {
        operator delete(*&v47[1]);
      }

      break;
  }

  v22 = v3[2];
  v3[2] = v22 + 2;
  v23 = *(a2 + 5);
  v24 = *(a2 + 6);
  if (v23 == v24)
  {
    goto LABEL_144;
  }

  v25 = -1;
  do
  {
    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v47[1], *v23, *(v23 + 1));
    }

    else
    {
      v26 = *v23;
      *&v47[17] = *(v23 + 2);
      *&v47[1] = v26;
    }

    v27 = *(v23 + 24);
    v49 = *(v23 + 5);
    __val = v27;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "\n", 1);
    v47[0] = 4;
    strcpy(v46, "case");
    for (mm = v3[2]; mm; --mm)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, " ", 1);
    }

    v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "(", 1);
    if (v47[0] >= 0)
    {
      v30 = v46;
    }

    else
    {
      v30 = v46[0];
    }

    if (v47[0] >= 0)
    {
      v31 = v47[0];
    }

    else
    {
      v31 = v46[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, v30, v31);
    if ((v47[0] & 0x80000000) != 0)
    {
      operator delete(v46[0]);
    }

    v32 = v47[24];
    if (v47[24] < 0)
    {
      v32 = *&v47[9];
    }

    if (v32)
    {
      v47[0] = 4;
      strcpy(v46, "name");
      if ((v47[0] & 0x80000000) != 0)
      {
        operator delete(v46[0]);
      }
    }

    ++v25;
    v47[0] = 5;
    strcpy(v46, "index");
    std::to_string(&v45, v25);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
      if ((v47[0] & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

LABEL_81:
      operator delete(v46[0]);
      if (!*(&__val + 1))
      {
        goto LABEL_85;
      }

LABEL_82:
      v47[0] = 6;
      strcpy(v46, "offset");
      std::to_string(&v45, __val);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
        if ((v47[0] & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }

      else if ((v47[0] & 0x80000000) == 0)
      {
LABEL_84:
        v33 = v49;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, "\n", 1);
        v3[2] += 2;
        v3[2] -= 2;
        goto LABEL_85;
      }

      operator delete(v46[0]);
      goto LABEL_84;
    }

    if ((v47[0] & 0x80000000) != 0)
    {
      goto LABEL_81;
    }

LABEL_78:
    if (*(&__val + 1))
    {
      goto LABEL_82;
    }

LABEL_85:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, ")", 1);
    if ((v47[24] & 0x80000000) != 0)
    {
      operator delete(*&v47[1]);
    }

    v23 += 3;
  }

  while (v23 != v24);
LABEL_143:
  v22 = v3[2] - 2;
LABEL_144:
  v3[2] = v22;
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v3, ")", 1);
}

void *swift::reflection::ReferenceTypeInfo::getSpareBits@<X0>(swift::reflection::ReferenceTypeInfo *this@<X0>, swift::reflection::TypeRefBuilder **a2@<X1>, uint64_t a3@<X8>)
{
  MultiPayloadEnumPointerMask = swift::reflection::TypeRefBuilder::getMultiPayloadEnumPointerMask(*a2);
  v7 = *(this + 3);
  __src = MultiPayloadEnumPointerMask;
  *a3 = v7;
  result = malloc_type_calloc(1uLL, v7, 0x100004077774924uLL);
  *(a3 + 8) = result;
  if (result)
  {
    if (v7 >= 8)
    {
      v9 = 8;
    }

    else
    {
      v9 = v7;
    }

    return memcpy(result, &__src, v9);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::getMultiPayloadEnumPointerMask(swift::reflection::TypeRefBuilder *this)
{
  v2 = *(this + 94);
  if (!v2)
  {
    v3 = *(this + 81);
    v7 = 2;
    strcpy(__p, "Bp");
    v2 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
    *(this + 94) = v2;
    if (v7 < 0)
    {
      operator delete(__p[0]);
      v2 = *(this + 94);
    }
  }

  v4 = *(swift::reflection::TypeConverter::getTypeInfo(this + 648, v2, 0) + 3);
  if ((*(this + 2464) & 1) == 0)
  {
    operator new();
  }

  return *(this + 307);
}

uint64_t swift::reflection::BuiltinTypeInfo::BuiltinTypeInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  *(a1 + 8) = 0;
  *(a1 + 12) = *(a3 + 8);
  *(a1 + 28) = v4;
  *a1 = &off_E1450;
  v5 = (*(*a3 + 16))(a3);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v8 = (a1 + 32);
  *(a1 + 55) = v6;
  if (v6)
  {
    memmove(v8, v5, v6);
  }

  *(v8 + v7) = 0;
  return a1;
}

{
  v4 = *(a3 + 24);
  *(a1 + 8) = 0;
  *(a1 + 12) = *(a3 + 8);
  *(a1 + 28) = v4;
  *a1 = &off_E1450;
  v5 = (*(*a3 + 16))(a3);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v8 = (a1 + 32);
  *(a1 + 55) = v6;
  if (v6)
  {
    memmove(v8, v5, v6);
  }

  *(v8 + v7) = 0;
  return a1;
}

uint64_t swift::reflection::BuiltinTypeInfo::BuiltinTypeInfo(uint64_t this, int a2, int a3, int a4, int a5, char a6)
{
  *(this + 8) = 0;
  *(this + 12) = a2;
  *(this + 16) = a3;
  *(this + 20) = a4;
  *(this + 24) = a5;
  *(this + 28) = a6;
  *this = &off_E1450;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 12) = a2;
  *(this + 16) = a3;
  *(this + 20) = a4;
  *(this + 24) = a5;
  *(this + 28) = a6;
  *this = &off_E1450;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t swift::reflection::BuiltinTypeInfo::readExtraInhabitantIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (!*(a1 + 24))
  {
    goto LABEL_24;
  }

  v10 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v10;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 48);
  }

  size = __p.__r_.__value_.__l.__size_;
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (size < 2 || LOWORD(p_p->__r_.__value_.__l.__data_) != 26946 || p_p->__r_.__value_.__s.__data_[size - 1] != 95)
  {
    goto LABEL_20;
  }

  v13 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  v14 = size - 2 >= size - 3 ? size - 3 : size - 2;
  v25 = 0;
  if ((__swift::__runtime::llvm::getAsUnsignedInteger(v13->__r_.__value_.__r.__words + 2, v14, (&dword_8 + 2), &v25) & 1) != 0 || (v15 = v25, v25 > 0xFF))
  {
LABEL_20:
    v15 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v15)
    {
      goto LABEL_23;
    }
  }

  else if (v15)
  {
LABEL_23:
    if (v15 <= 0x40)
    {
      v18 = *(a1 + 12);
      if (v18 <= 8 && v15 < 8 * v18)
      {
        v25 = 0;
        result = (*(*a2 + 32))(a2, a3, a4, &v25);
        if (result)
        {
          v19 = v25 + (-1 << v15);
          if (!(v25 >> v15))
          {
            v19 = -1;
          }

          *a5 = v19;
        }

        return result;
      }
    }

LABEL_24:
    *a5 = -1;
    return 1;
  }

  v17 = *(a1 + 55);
  if (v17 < 0)
  {
    if (*(a1 + 40) != 4)
    {
      return swift::remote::MemoryReader::readHeapObjectExtraInhabitantIndex(a2, a3, a4, a5);
    }

    v10 = *v10;
  }

  else if (v17 != 4)
  {
    return swift::remote::MemoryReader::readHeapObjectExtraInhabitantIndex(a2, a3, a4, a5);
  }

  if (*v10 != 1717074297)
  {
    return swift::remote::MemoryReader::readHeapObjectExtraInhabitantIndex(a2, a3, a4, a5);
  }

  v26 = 0;
  v20 = (**a2)(a2, 0, 0, &v26);
  result = 0;
  if (v20)
  {
    v25 = 0;
    result = (**a2)(a2, 4, 0, &v25);
    if (result)
    {
      v24 = 0;
      v21 = v26 >= 8u ? 8 : v26;
      result = (*(*a2 + 32))(a2, a3, a4, &v24, v21);
      if (result)
      {
        if (v24 >= v25)
        {
          v22 = -1;
        }

        else
        {
          v22 = v24;
        }

        *a5 = v22;
      }
    }
  }

  return result;
}

uint64_t swift::remote::MemoryReader::readHeapObjectExtraInhabitantIndex(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v16 = 0;
  v8 = (**a1)(a1, 0, 0, &v16);
  result = 0;
  if (v8)
  {
    v15 = 0;
    result = (**a1)(a1, 4, 0, &v15);
    if (result)
    {
      v14 = 0;
      v10 = (**a1)(a1, 3, 0, &v14);
      result = 0;
      if (v10)
      {
        v13 = 0;
        v11 = v16 >= 8u ? 8 : v16;
        result = (*(*a1 + 32))(a1, a2, a3, &v13, v11);
        if (result)
        {
          if (v13 >= v15)
          {
            v12 = -1;
          }

          else
          {
            v12 = v13 >> v14;
          }

          *a4 = v12;
        }
      }
    }
  }

  return result;
}

void swift::reflection::BuiltinTypeInfo::getSpareBits(swift::reflection::BuiltinTypeInfo *this@<X0>, swift::reflection::TypeRefBuilder **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 32);
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 4), *(this + 5));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v7;
    __p.__r_.__value_.__r.__words[2] = *(this + 6);
  }

  size = __p.__r_.__value_.__l.__size_;
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (size >= 2 && LOWORD(p_p->__r_.__value_.__l.__data_) == 26946 && p_p->__r_.__value_.__s.__data_[size - 1] == 95)
  {
    v10 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__r.__words[0];
    }

    v11 = size - 2 >= size - 3 ? size - 3 : size - 2;
    __src = 0;
    if ((__swift::__runtime::llvm::getAsUnsignedInteger(v10->__r_.__value_.__r.__words + 2, v11, (&dword_8 + 2), &__src) & 1) == 0)
    {
      v12 = __src;
      if (__src <= 0xFF)
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v12)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }
  }

  v12 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (v12)
  {
LABEL_21:
    v13 = *(this + 3);
    *a3 = v13;
    if ((v13 - 134217729) >> 27 == 31)
    {
      v15 = malloc_type_malloc(v13, 0x100004077774924uLL);
      *(a3 + 8) = v15;
      if (v15)
      {
        memset(v15, 255, v13);
      }

      else
      {
        *a3 = 0;
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    swift::reflection::BitMask::keepOnlyMostSignificantBits(a3, 8 * *(this + 3) - v12);
    return;
  }

LABEL_25:
  v14 = *(this + 55);
  if (v14 < 0)
  {
    if (*(this + 5) != 4)
    {
LABEL_33:
      v16 = *(this + 3);
      *a3 = v16;
      if ((v16 - 134217729) >> 27 == 31)
      {
        v17 = malloc_type_malloc(v16, 0x100004077774924uLL);
        *(a3 + 8) = v17;
        if (v17)
        {
          v18 = v17;
          memset(v17, 255, v16);
          v17 = v18;
        }

        else
        {
          v16 = 0;
          *a3 = 0;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        *a3 = 0;
        *(a3 + 8) = 0;
      }

      bzero(v17, v16);
      return;
    }

    v7 = *v7;
  }

  else if (v14 != 4)
  {
    goto LABEL_33;
  }

  if (*v7 != 1884844153)
  {
    goto LABEL_33;
  }

  MultiPayloadEnumPointerMask = swift::reflection::TypeRefBuilder::getMultiPayloadEnumPointerMask(*a2);
  v20 = *(this + 3);
  __src = MultiPayloadEnumPointerMask;
  *a3 = v20;
  v21 = malloc_type_calloc(1uLL, v20, 0x100004077774924uLL);
  *(a3 + 8) = v21;
  if (v21)
  {
    if (v20 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v20;
    }

    memcpy(v21, &__src, v22);
  }

  else
  {
    *a3 = 0;
  }
}

unsigned int *swift::reflection::BitMask::keepOnlyMostSignificantBits(unsigned int *this, unsigned int a2)
{
  v2 = *this;
  if (v2)
  {
    v3 = 0;
    v4 = v2 - 1;
    do
    {
      v5 = *(this + 1);
      if (v3 >= a2)
      {
        *(v5 + v4) = 0;
      }

      else
      {
        v6 = *(v5 + v4);
        v3 += v6 >> 7;
        if (v3 >= a2)
        {
          *(v5 + v4) = v6 & 0xBF;
        }

        else
        {
          v3 += (v6 >> 6) & 1;
        }

        v7 = *(this + 1);
        v8 = *(v7 + v4);
        if (v3 >= a2)
        {
          *(v7 + v4) = v8 & 0xDF;
        }

        else
        {
          v3 += (v8 >> 5) & 1;
        }

        v9 = *(this + 1);
        v10 = *(v9 + v4);
        if (v3 >= a2)
        {
          *(v9 + v4) = v10 & 0xEF;
        }

        else
        {
          v3 += (v10 >> 4) & 1;
        }

        v11 = *(this + 1);
        v12 = *(v11 + v4);
        if (v3 >= a2)
        {
          *(v11 + v4) = v12 & 0xF7;
        }

        else
        {
          v3 += (v12 >> 3) & 1;
        }

        v13 = *(this + 1);
        v14 = *(v13 + v4);
        if (v3 >= a2)
        {
          *(v13 + v4) = v14 & 0xFB;
        }

        else
        {
          v3 += (v14 >> 2) & 1;
        }

        v15 = *(this + 1);
        v16 = *(v15 + v4);
        if (v3 >= a2)
        {
          *(v15 + v4) = v16 & 0xFD;
        }

        else
        {
          v3 += (v16 >> 1) & 1;
        }

        v17 = *(this + 1);
        v18 = *(v17 + v4);
        if (v3 >= a2)
        {
          *(v17 + v4) = v18 & 0xFE;
        }

        else
        {
          v3 += v18 & 1;
        }
      }

      --v4;
    }

    while (v4 != -1);
  }

  return this;
}

uint64_t swift::reflection::RecordTypeInfo::readExtraInhabitantIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = 0;
  *a5 = -1;
  v7 = *(a1 + 32);
  if (v7 > 4)
  {
    if (v7 != 5 && v7 != 7)
    {
      if (v7 != 6)
      {
        return result;
      }

LABEL_22:
      v16 = a1 + 40;
      v9 = *(a1 + 40);
      if (*(v16 + 8) != v9)
      {
        goto LABEL_23;
      }

      return 0;
    }

    v10 = a1 + 40;
    v9 = *(a1 + 40);
    if (*(v10 + 8) != v9)
    {
LABEL_23:
      if (*(v9 + 23) < 0)
      {
        v19 = a2;
        v20 = a3;
        v21 = a5;
        v22 = a4;
        std::string::__init_copy_ctor_external(&v40, *v9, *(v9 + 1));
        a3 = v20;
        LOBYTE(a4) = v22;
        a2 = v19;
        a5 = v21;
      }

      else
      {
        v17 = *v9;
        v40.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v40.__r_.__value_.__l.__data_ = v17;
      }

      v23 = *(v9 + 5);
      v41 = *(v9 + 24);
      v42 = v23;
      result = (**v23)(v23, a2, a3 + v41, a4, a5);
      goto LABEL_30;
    }

    return 1;
  }

  if ((v7 - 1) >= 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return result;
      }

      goto LABEL_22;
    }

    v18 = *(a1 + 40);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - v18) >> 4) < 2)
    {
      return 0;
    }

    if (*(v18 + 23) < 0)
    {
      v27 = a2;
      v28 = a3;
      v29 = a5;
      v30 = a4;
      std::string::__init_copy_ctor_external(&v40, *v18, *(v18 + 1));
      a3 = v28;
      a4 = v30;
      a2 = v27;
      a5 = v29;
      v26 = *(a1 + 40);
    }

    else
    {
      v25 = *v18;
      v40.__r_.__value_.__r.__words[2] = *(v18 + 2);
      *&v40.__r_.__value_.__l.__data_ = v25;
      v26 = v18;
    }

    v31 = *(v18 + 24);
    v42 = *(v18 + 5);
    v41 = v31;
    if (*(v26 + 71) < 0)
    {
      v32 = a2;
      v33 = a3;
      v34 = a5;
      v35 = a4;
      std::string::__init_copy_ctor_external(&__p, *(v26 + 6), *(v26 + 7));
      a3 = v33;
      a4 = v35;
      a2 = v32;
      a5 = v34;
    }

    else
    {
      __p = *(v26 + 2);
    }

    v38 = *(v26 + 72);
    v39 = *(v26 + 11);
    if (v41)
    {
      result = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      result = (**v42)(v42, a2, a3, a4, a5);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }
    }

    v36 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v36;
LABEL_30:
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = result;
      operator delete(v40.__r_.__value_.__l.__data_);
      return v24;
    }

    return result;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v12 == v11)
  {
    return 1;
  }

  for (i = v11 + 48; i != v12; i += 48)
  {
    if (*(*(v11 + 40) + 24) < *(*(i + 40) + 24))
    {
      v11 = i;
    }
  }

  v14 = ***(v11 + 40);
  v15 = a3 + *(v11 + 24);

  return v14();
}

void swift::reflection::RecordTypeInfo::getSpareBits(swift::reflection::RecordTypeInfo *this@<X0>, swift::reflection::TypeConverter *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(this + 3);
  *a4 = v7;
  if ((v7 - 134217729) >> 27 == 31)
  {
    v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v8 = v9;
    *(a4 + 8) = v9;
    if (v9)
    {
      memset(v9, 255, v7);
    }

    else
    {
      LODWORD(v7) = 0;
      *a4 = 0;
    }
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v10 = *(this + 8);
  if (v10 > 3)
  {
    v98 = v7;
    if (v10 != 4)
    {
      if (v10 != 5)
      {
        if (v10 != 6)
        {
          goto LABEL_43;
        }

        goto LABEL_103;
      }

      v17 = *(a2 + 13);
      if (!v17)
      {
        v18 = *a2;
        *(&__p.__r_.__value_.__s + 23) = 2;
        strcpy(&__p, "Bp");
        v17 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v18, &__p);
        *(a2 + 13) = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v17 = *(a2 + 13);
        }
      }

      if (*(swift::reflection::TypeConverter::getTypeInfo(a2, v17, 0) + 3) != 8)
      {
LABEL_103:
        v67 = *(a2 + 13);
        if (!v67)
        {
          v68 = *a2;
          *(&__p.__r_.__value_.__s + 23) = 2;
          strcpy(&__p, "Bp");
          v67 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v68, &__p);
          *(a2 + 13) = v67;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v67 = *(a2 + 13);
          }
        }

        v69 = *(swift::reflection::TypeConverter::getTypeInfo(a2, v67, 0) + 3);
        __p.__r_.__value_.__r.__words[0] = swift::reflection::TypeRefBuilder::getMultiPayloadEnumPointerMask(*a2);
        v70 = malloc_type_calloc(1uLL, v69, 0x100004077774924uLL);
        v97 = v70;
        if (v70)
        {
          if (v69 >= 8)
          {
            v71 = 8;
          }

          else
          {
            v71 = v69;
          }

          memcpy(v70, &__p, v71);
          v72 = v69;
        }

        else
        {
          v72 = 0;
        }

        if (*(this + 3) < 1)
        {
LABEL_146:
          free(v97);
          return;
        }

        v73 = 0;
        v74 = 0;
        v75 = v98;
        while (1)
        {
          v76 = v75;
          if (v72 < v75)
          {
            v76 = v72;
          }

          v99 = v76;
          v77 = v98 - v69 * v73;
          if (v72 >= v77)
          {
            v78 = v77;
          }

          else
          {
            v78 = v72;
          }

          v79 = malloc_type_malloc(v72, 0x100004077774924uLL);
          memcpy(v79, v97, v72);
          v80 = v98 - v74;
          if (v98 <= v74)
          {
            goto LABEL_114;
          }

          if (v80 >= v72)
          {
            v80 = v72;
          }

          if (!v80)
          {
            goto LABEL_114;
          }

          if (v78 < 8)
          {
            goto LABEL_125;
          }

          v81 = 0;
          if (__CFADD__(v74, v78 - 1) || (v78 - 1) >> 32)
          {
            goto LABEL_126;
          }

          v86 = v8 + v74;
          if (v79 >= &v86[v78] || v86 >= &v79->i8[v78])
          {
            if (v78 < 0x20)
            {
              v81 = 0;
LABEL_142:
              v93 = &v79->i8[v81];
              v94 = v81 - (v99 & 0xFFFFFFF8);
              v95 = v74 + v81;
              v81 = v78 & 0xFFFFFFF8;
              do
              {
                v96 = *v93++;
                *(v8 + v95) = vand_s8(*(v8 + v95), v96);
                v95 += 8;
                v94 += 8;
              }

              while (v94);
              if (v81 == v78)
              {
                goto LABEL_114;
              }

              goto LABEL_126;
            }

            v88 = v99 & 0xFFFFFFE0;
            v81 = v78 & 0xFFFFFFE0;
            v89 = v79 + 1;
            v90 = v74;
            do
            {
              v91 = (v8 + v90);
              v92 = vandq_s8(v91[1], *v89);
              *v91 = vandq_s8(*v91, v89[-1]);
              v91[1] = v92;
              v89 += 2;
              v90 += 32;
              v88 -= 32;
            }

            while (v88);
            if (v81 == v78)
            {
              goto LABEL_114;
            }

            if ((v78 & 0x18) != 0)
            {
              goto LABEL_142;
            }
          }

          else
          {
LABEL_125:
            v81 = 0;
          }

LABEL_126:
          v82 = v99 - v81;
          v83 = v74 + v81;
          v84 = &v79->i8[v81];
          do
          {
            v85 = *v84++;
            v8->i8[v83++] &= v85;
            --v82;
          }

          while (v82);
LABEL_114:
          free(v79);
          v74 += v69;
          ++v73;
          v75 -= v69;
          if (v74 >= *(this + 3))
          {
            goto LABEL_146;
          }
        }
      }

      v19 = malloc_type_malloc(8uLL, 0x100004077774924uLL);
      v20 = v19;
      if (v19)
      {
        *v19 = -1;
        v21 = 8;
        v22 = 8;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      bzero(v19, v22);
      v55 = malloc_type_malloc(v21, 0x100004077774924uLL);
      memcpy(v55, v20, v21);
      if (v20 && v98)
      {
        if (v98 >= v21)
        {
          v56 = v21;
        }

        else
        {
          v56 = v98;
        }

        if (v56 < 8)
        {
          v57 = 0;
          goto LABEL_101;
        }

        if (v55 < &v8->i8[v56] && v8 < &v55->i8[v56])
        {
          v57 = 0;
          goto LABEL_101;
        }

        v57 = v56 & 8;
        for (*v8 = vand_s8(*v8, *v55); v56 != v57; ++v57)
        {
LABEL_101:
          v8->i8[v57] &= v55->u8[v57];
        }
      }

      free(v55);
      free(v20);
      goto LABEL_103;
    }

    v11 = *(a2 + 13);
    if (!v11)
    {
      v12 = *a2;
      *(&__p.__r_.__value_.__s + 23) = 2;
      strcpy(&__p, "Bp");
      v11 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v12, &__p);
      *(a2 + 13) = v11;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v11 = *(a2 + 13);
      }
    }

    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(a2, v11, 0);
    v14 = (3 * *(TypeInfo + 3));
    if ((v14 - 134217729) >> 27 == 31)
    {
      v23 = malloc_type_malloc((3 * *(TypeInfo + 3)), 0x100004077774924uLL);
      v16 = v23;
      if (v23)
      {
        memset(v23, 255, v14);
        v15 = v14;
LABEL_31:
        bzero(v16, v14);
        v24 = malloc_type_malloc(v15, 0x100004077774924uLL);
        memcpy(v24, v16, v15);
        if (!v15 || !v98)
        {
          goto LABEL_42;
        }

        if (v98 >= v15)
        {
          v25 = v15;
        }

        else
        {
          v25 = v98;
        }

        if (v25 < 8 || v8 < &v24->i8[v25] && v24 < (v8 + v25))
        {
          v26 = 0;
LABEL_40:
          v27 = v8 + v26;
          v28 = v25 - v26;
          v29 = &v24->i8[v26];
          do
          {
            v30 = *v29++;
            *v27++ &= v30;
            --v28;
          }

          while (v28);
LABEL_42:
          free(v24);
          *a3 = 1;
          free(v16);
          LODWORD(v7) = v98;
          goto LABEL_43;
        }

        if (v25 >= 0x20)
        {
          v26 = v25 & 0xFFFFFE0;
          v58 = v24 + 1;
          v59 = &v8[2];
          v60 = v26;
          do
          {
            v61 = vandq_s8(*v59, *v58);
            v59[-1] = vandq_s8(v59[-1], v58[-1]);
            *v59 = v61;
            v58 += 2;
            v59 += 2;
            v60 -= 32;
          }

          while (v60);
          if (v26 == v25)
          {
            goto LABEL_42;
          }

          if ((v25 & 0x18) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v26 = 0;
        }

        v62 = v26;
        v26 = v25 & 0xFFFFFF8;
        v63 = &v24->i8[v62];
        v64 = (v8 + v62);
        v65 = v62 - v26;
        do
        {
          v66 = *v63++;
          *v64 = vand_s8(*v64, v66);
          ++v64;
          v65 += 8;
        }

        while (v65);
        if (v26 == v25)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v14 = 0;
    goto LABEL_31;
  }

  if (!v10)
  {
    return;
  }

  if (v10 == 3)
  {

    bzero(v8, v7);
    return;
  }

LABEL_43:
  v31 = *(this + 5);
  v32 = *(this + 6);
  if (v31 != v32)
  {
    while (1)
    {
      if (*(v31 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v31, *(v31 + 1));
      }

      else
      {
        v33 = *v31;
        __p.__r_.__value_.__r.__words[2] = *(v31 + 2);
        *&__p.__r_.__value_.__l.__data_ = v33;
      }

      v34 = *(v31 + 24);
      v105 = *(v31 + 5);
      v104 = v34;
      if (!*(&v34 + 1))
      {
        goto LABEL_60;
      }

      (*(*v105 + 8))(&size);
      v35 = size;
      v36 = malloc_type_malloc(size, 0x100004077774924uLL);
      memcpy(v36, __src, v35);
      v37 = v104;
      LODWORD(v38) = v7 - v104;
      if (v7 > v104)
      {
        v38 = v38 >= v35 ? v35 : v38;
        if (v38)
        {
          break;
        }
      }

LABEL_59:
      free(v36);
      free(__src);
LABEL_60:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v31 += 3;
      if (v31 == v32)
      {
        return;
      }
    }

    if (v38 >= 8)
    {
      v39 = 0;
      if (__CFADD__(v104, v38 - 1) || (v38 - 1) >> 32)
      {
        goto LABEL_57;
      }

      if (v36 >= (v8 + v38 + v104) || &v8->i8[v104] >= &v36->i8[v38])
      {
        if (v38 >= 0x20)
        {
          v39 = v38 & 0xFFFFFFE0;
          v45 = v36 + 1;
          v46 = v104;
          v47 = v39;
          do
          {
            v48 = (v8 + v46);
            v49 = vandq_s8(v48[1], *v45);
            *v48 = vandq_s8(*v48, v45[-1]);
            v48[1] = v49;
            v45 += 2;
            v46 += 32;
            v47 -= 32;
          }

          while (v47);
          if (v39 == v38)
          {
            goto LABEL_59;
          }

          if ((v38 & 0x18) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v39 = 0;
        }

        v50 = v39;
        v39 = v38 & 0xFFFFFFF8;
        v51 = &v36->i8[v50];
        v52 = v50 - v39;
        v53 = v37 + v50;
        do
        {
          v54 = *v51++;
          *(v8 + v53) = vand_s8(*(v8 + v53), v54);
          v53 += 8;
          v52 += 8;
        }

        while (v52);
        if (v39 == v38)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }
    }

    v39 = 0;
LABEL_57:
    v40 = v38 - v39;
    v41 = v37 + v39;
    v42 = &v36->i8[v39];
    do
    {
      v43 = *v42++;
      v8->i8[v41++] &= v43;
      --v40;
    }

    while (v40);
    goto LABEL_59;
  }
}

uint64_t swift::reflection::ArrayTypeInfo::ArrayTypeInfo(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 20) * a2;
  v5 = *(a3 + 24);
  v6 = *(a3 + 28);
  *(result + 8) = 5;
  *(result + 12) = v4;
  *(result + 16) = v3;
  *(result + 20) = v4;
  *(result + 24) = v5;
  *(result + 28) = v6;
  *result = &off_E1480;
  *(result + 32) = a3;
  return result;
}

{
  v3 = *(a3 + 16);
  v4 = *(a3 + 20) * a2;
  v5 = *(a3 + 24);
  v6 = *(a3 + 28);
  *(result + 8) = 5;
  *(result + 12) = v4;
  *(result + 16) = v3;
  *(result + 20) = v4;
  *(result + 24) = v5;
  *(result + 28) = v6;
  *result = &off_E1480;
  *(result + 32) = a3;
  return result;
}

uint64_t swift::reflection::RecordTypeInfoBuilder::addField(swift::reflection::RecordTypeInfoBuilder *this, int a2, unsigned int a3, unsigned int a4, char a5)
{
  v5 = *(this + 3);
  v6 = (a3 + *(this + 2) - 1) & -a3;
  if (v5 <= a3)
  {
    v5 = a3;
  }

  *(this + 2) = v6 + a2;
  *(this + 3) = v5;
  *(this + 20) &= a5;
  v7 = *(this + 6);
  if (v7 <= 9)
  {
    if (((1 << v7) & 0x3E9) != 0)
    {
      if (*(this + 56) == 1)
      {
        *(this + 4) = a4;
      }
    }

    else
    {
      v8 = *(this + 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      *(this + 4) = v8;
    }
  }

  *(this + 56) = 0;
  return v6;
}

void swift::reflection::RecordTypeInfoBuilder::addField(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a1, a3, a4);
  if (!TypeInfo)
  {
    *(a1 + 57) = 1;
    v13 = *a1;
    *(v13 + 184) = "no TypeInfo for field type";
    *(v13 + 192) = a3;
    return;
  }

  v8 = *(TypeInfo + 16);
  v9 = *(TypeInfo + 24);
  v10 = (v8 + *(a1 + 2) - 1) & -v8;
  v11 = *(TypeInfo + 28);
  if (*(a1 + 3) > v8)
  {
    v8 = *(a1 + 3);
  }

  *(a1 + 2) = v10 + *(TypeInfo + 12);
  *(a1 + 3) = v8;
  *(a1 + 20) &= v11;
  v12 = *(a1 + 6);
  if (v12 <= 9)
  {
    if (((1 << v12) & 0x3E9) != 0)
    {
      if (*(a1 + 56) != 1)
      {
        goto LABEL_12;
      }
    }

    else if (*(a1 + 4) > v9)
    {
      v9 = *(a1 + 4);
    }

    *(a1 + 4) = v9;
  }

LABEL_12:
  *(a1 + 56) = 0;
  if (*(a2 + 23) < 0)
  {
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = TypeInfo;
    std::string::__init_copy_ctor_external(&__p, v14, v15);
    TypeInfo = v16;
  }

  else
  {
    __p = *a2;
  }

  *&v23 = v10 | 0xFFFFFFFF00000000;
  *(&v23 + 1) = a3;
  v24 = TypeInfo;
  v17 = a1[5];
  if (v17 >= a1[6])
  {
    v20 = std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo>(a1 + 4, &__p);
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    a1[5] = v20;
    if (v21 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = *&__p.__r_.__value_.__l.__data_;
    *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v17 = v18;
    v19 = v23;
    *(v17 + 40) = v24;
    *(v17 + 24) = v19;
    a1[5] = v17 + 48;
  }
}

uint64_t *swift::reflection::TypeConverter::getTypeInfo(uint64_t a1, swift::reflection::TypeRefBuilder **a2, uint64_t a3)
{
  v28 = a2;
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v6 = (*(*a3 + 24))(a3);
  }

  else
  {
    v6 = 0;
  }

  v25 = a2;
  v26 = v6;
  v29 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>((a1 + 32), &v25, &v29))
  {
    v7 = v29;
    if (v29 != (*(a1 + 32) + 24 * *(a1 + 48)))
    {
      result = v29[2];
      if (!result)
      {
        result = *(a1 + 200);
        if (result)
        {
          v25 = a2;
          v26 = v6;
          v29 = 0;
          v9 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(result, &v25, &v29);
          v10 = 0uLL;
          if (v9)
          {
            v10 = *(v29 + 1);
          }

          *(a1 + 184) = v10;
          return v7[2];
        }
      }

      return result;
    }
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>::try_emplace<__swift::__runtime::llvm::detail::DenseSetEmpty&>(a1 + 56, &v28, &v25);
  if (v27 != 1)
  {
    return 0;
  }

  v25 = a1;
  v26 = a3;
  swift::reflection::TypeRefVisitor<swift::reflection::LowerType,swift::reflection::TypeInfo const*>::visit(&v25, v28);
  v25 = v28;
  v26 = v6;
  v12 = v11;
  *&v27 = v11;
  v29 = 0;
  if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>((a1 + 32), &v25, &v29) & 1) == 0)
  {
    v13 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::reflection::TypeRef const*,void *>>((a1 + 32), &v25, &v25, v29);
    *v13 = v25;
    v13[1] = v26;
    v13[2] = v27;
  }

  result = v12;
  if (!v12)
  {
    v14 = *(a1 + 200);
    if (v14)
    {
      v15 = v28;
      if (!*(a1 + 184))
      {
        *(a1 + 184) = "cannot decode or find";
        *(a1 + 192) = v15;
      }

      v25 = v15;
      v26 = v6;
      v27 = *(a1 + 184);
      v29 = 0;
      if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(v14, &v25, &v29) & 1) == 0)
      {
        v16 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::InsertIntoBucketImpl<std::pair<swift::reflection::TypeRef const*,void *>>(v14, &v25, &v25, v29);
        *v16 = v25;
        v16[1] = v26;
        *(v16 + 1) = v27;
      }

      result = 0;
    }
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = v17 - 1;
    LODWORD(v20) = ((v28 >> 4) ^ (v28 >> 9)) & v19;
    v21 = (v18 + 8 * v20);
    v22 = *v21;
    if (v28 == *v21)
    {
LABEL_24:
      *v21 = -8192;
      *(a1 + 64) = vadd_s32(*(a1 + 64), 0x1FFFFFFFFLL);
    }

    else
    {
      v23 = 1;
      while (v22 != -4096)
      {
        v24 = v20 + v23++;
        v20 = v24 & v19;
        v22 = *(v18 + 8 * v20);
        if (v28 == v22)
        {
          v21 = (v18 + 8 * v20);
          result = v12;
          goto LABEL_24;
        }
      }

      return v12;
    }
  }

  return result;
}

uint64_t swift::reflection::RecordTypeInfoBuilder::build(swift::reflection::RecordTypeInfoBuilder *this)
{
  if ((*(this + 57) & 1) == 0)
  {
    *(this + 2);
    v1 = *this;
    operator new();
  }

  return 0;
}

uint64_t swift::reflection::TypeConverter::getReferenceTypeInfo(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v12 = a2 | (a3 << 32);
  __p[0] = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>((a1 + 80), &v12, __p) && __p[0] != (*(a1 + 80) + 16 * *(a1 + 96)))
  {
    return *(__p[0] + 1);
  }

  if (v3 == 1)
  {
    v6 = *(a1 + 120);
    if (!v6)
    {
      v8 = *a1;
      v14 = 2;
      strcpy(__p, "BO");
      v6 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v8, __p);
      *(a1 + 120) = v6;
      if (v14 < 0)
      {
        operator delete(__p[0]);
        v6 = *(a1 + 120);
      }
    }
  }

  else if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 112);
    if (!v6)
    {
      v7 = *a1;
      v14 = 2;
      strcpy(__p, "Bo");
      v6 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v7, __p);
      *(a1 + 112) = v6;
      if (v14 < 0)
      {
        operator delete(__p[0]);
        v6 = *(a1 + 112);
      }
    }
  }

  swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(*a1, v6, &v11);
  if (v11)
  {
    v9 = *(v11 + 20);
    operator new();
  }

  return 0;
}

uint64_t swift::reflection::TypeConverter::getNativeObjectTypeRef(swift::reflection::TypeConverter *this)
{
  result = *(this + 14);
  if (!result)
  {
    v3 = *this;
    v5 = 2;
    strcpy(__p, "Bo");
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
    *(this + 14) = result;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      return *(this + 14);
    }
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getUnknownObjectTypeRef(swift::reflection::TypeConverter *this)
{
  result = *(this + 15);
  if (!result)
  {
    v3 = *this;
    v5 = 2;
    strcpy(__p, "BO");
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
    *(this + 15) = result;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      return *(this + 15);
    }
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::takeLastError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = (this + 184);
  if (*(this + 184))
  {
    v3 = this;
    v22 = 0;
    *(v11 + *(v11[0] - 24)) = v4;
    v11[1] = 0;
    v5 = (v11 + *(v11[0] - 24));
    std::ios_base::init(v5, &v13);
    v5[1].__vftable = 0;
    v5[1].__fmtflags_ = -1;
    *(&v12 + *(v12 - 3)) = v6;
    std::locale::locale(&v14);
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    *__p = 0u;
    v19 = 0u;
    v20 = 24;
    std::stringbuf::__init_buf_ptrs[abi:nn200100](&v13);
    v7 = strlen(*(v3 + 184));
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, *(v3 + 184), v7);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ": ", 2);
    v9 = *(v3 + 192);
    if (v9)
    {
      swift::reflection::TypeRef::dump(v9, &v12, 0);
    }

    *v2 = 0;
    v2[1] = 0;
    std::stringbuf::str();
    v12 = v10;
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }

    std::locale::~locale(&v14);
    std::iostream::~basic_iostream();
    return std::ios::~ios();
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

uint64_t swift::reflection::TypeConverter::getThinFunctionTypeInfo(swift::reflection::TypeConverter *this)
{
  result = *(this + 18);
  if (!result)
  {
    v3 = *this;
    v4 = *(this + 16);
    if (!v4)
    {
      v7 = 4;
      strcpy(__p, "yyXf");
      v4 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
      *(this + 16) = v4;
      if (v7 < 0)
      {
        operator delete(__p[0]);
        v4 = *(this + 16);
      }
    }

    swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(v3, v4, __p);
    if (__p[0])
    {
      v5 = *this;
      swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::BuiltinTypeInfo,swift::reflection::TypeRefBuilder &,swift::reflection::BuiltinTypeDescriptorBase &>();
    }

    return 0;
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getThinFunctionTypeRef(swift::reflection::TypeConverter *this)
{
  result = *(this + 16);
  if (!result)
  {
    v3 = *this;
    v5 = 4;
    strcpy(__p, "yyXf");
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
    *(this + 16) = result;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      return *(this + 16);
    }
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getThickFunctionTypeInfo(swift::reflection::TypeConverter *this)
{
  result = *(this + 19);
  if (!result)
  {
    v14[0] = this;
    v14[1] = 0x100000000;
    v15 = 0;
    v16 = 1;
    v17 = 3;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 1;
    v13 = 8;
    strcpy(__p, "function");
    v3 = *(this + 16);
    if (!v3)
    {
      v4 = *this;
      v23 = 4;
      strcpy(v22, "yyXf");
      v3 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v4, v22);
      *(this + 16) = v3;
      if (v23 < 0)
      {
        operator delete(v22[0]);
        v3 = *(this + 16);
      }
    }

    swift::reflection::RecordTypeInfoBuilder::addField(v14, __p, v3, 0);
    v5 = *(this + 14);
    v13 = 7;
    strcpy(__p, "context");
    if (!v5)
    {
      v6 = *this;
      v23 = 2;
      strcpy(v22, "Bo");
      v5 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v6, v22);
      *(this + 14) = v5;
      if (v23 < 0)
      {
        operator delete(v22[0]);
        v5 = *(this + 14);
      }
    }

    swift::reflection::RecordTypeInfoBuilder::addField(v14, __p, v5, 0);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    result = swift::reflection::RecordTypeInfoBuilder::build(v14);
    *(this + 19) = result;
    v7 = v18;
    if (v18)
    {
      v8 = result;
      v9 = v19;
      v10 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *(v9 - 25);
          v9 -= 6;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v7);
        v10 = v18;
      }

      v19 = v7;
      operator delete(v10);
      return v8;
    }
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getAnyMetatypeTypeInfo(swift::reflection::TypeConverter *this)
{
  result = *(this + 20);
  if (!result)
  {
    v3 = *this;
    v4 = *(this + 17);
    if (!v4)
    {
      v7 = 4;
      strcpy(__p, "ypXp");
      v4 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
      *(this + 17) = v4;
      if (v7 < 0)
      {
        operator delete(__p[0]);
        v4 = *(this + 17);
      }
    }

    swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(v3, v4, __p);
    if (__p[0])
    {
      v5 = *this;
      swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::BuiltinTypeInfo,swift::reflection::TypeRefBuilder &,swift::reflection::BuiltinTypeDescriptorBase &>();
    }

    return 0;
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getAnyMetatypeTypeRef(swift::reflection::TypeConverter *this)
{
  result = *(this + 17);
  if (!result)
  {
    v3 = *this;
    v5 = 4;
    strcpy(__p, "ypXp");
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
    *(this + 17) = result;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      return *(this + 17);
    }
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getDefaultActorStorageTypeInfo(swift::reflection::TypeConverter *this)
{
  result = *(this + 21);
  if (!result)
  {
    v3 = *this;
    v4 = *(this + 13);
    if (!v4)
    {
      v8 = 2;
      strcpy(__p, "Bp");
      v4 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
      *(this + 13) = v4;
      if (v8 < 0)
      {
        operator delete(__p[0]);
        v4 = *(this + 13);
      }
    }

    swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(v3, v4, &v6);
    if (v6)
    {
      v5 = vmul_s32(v6[1], 0x20000000CLL);
      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getRawPointerTypeRef(swift::reflection::TypeConverter *this)
{
  result = *(this + 13);
  if (!result)
  {
    v3 = *this;
    v5 = 2;
    strcpy(__p, "Bp");
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v3, __p);
    *(this + 13) = result;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      return *(this + 13);
    }
  }

  return result;
}

uint64_t swift::reflection::TypeConverter::getEmptyTypeInfo(swift::reflection::TypeConverter *this)
{
  result = *(this + 22);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t swift::reflection::TypeRefVisitor<swift::reflection::HasFixedSize,BOOL>::visit(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(a2 + 8);
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (v3 != 22)
    {
      break;
    }

    a2 = *(a2 + 24);
    if (!a2)
    {
      return 0;
    }
  }

  if (((1 << v3) & 0x1F39F0) != 0)
  {
    return 1;
  }

  if (v3 == 3)
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    if (v5 == v6)
    {
      return 1;
    }

    v7 = v5 + 8;
    do
    {
      result = swift::reflection::TypeRefVisitor<swift::reflection::HasFixedSize,BOOL>::visit(a1, *(v7 - 8));
      if (result)
      {
        v8 = v7 == v6;
      }

      else
      {
        v8 = 1;
      }

      v7 += 8;
    }

    while (!v8);
  }

  else
  {
LABEL_18:
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v9 = a2;
      if (swift::reflection::NominalTypeTrait::isClass((a2 + 16)))
      {
        return 1;
      }

      v10 = *(v9 + 48);
      v11 = *(v9 + 56);
      if (v10 == v11)
      {
        return 1;
      }

      v12 = v10 + 8;
      do
      {
        result = swift::reflection::TypeRefVisitor<swift::reflection::HasFixedSize,BOOL>::visit(a1, *(v12 - 8));
        if (result)
        {
          v13 = v12 == v11;
        }

        else
        {
          v13 = 1;
        }

        v12 += 8;
      }

      while (!v13);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift::reflection::combineRepresentations(uint64_t result, int a2)
{
  v3 = result == 1 || a2 == 1;
  if (a2 == 2)
  {
    v3 = 2;
  }

  if (result == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (result == a2)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

void swift::reflection::TypeRefVisitor<swift::reflection::LowerType,swift::reflection::TypeInfo const*>::visit(swift::reflection::TypeRefBuilder ***a1, uint64_t a2)
{
  if (a2)
  {
    switch(*(a2 + 8))
    {
      case 0:

        swift::reflection::LowerType::visitBuiltinTypeRef(a1, a2);
        return;
      case 1:
      case 2:

        swift::reflection::LowerType::visitAnyNominalTypeRef(a1, a2);
        return;
      case 3:

        swift::reflection::LowerType::visitTupleTypeRef(a1, a2);
        return;
      case 4:

        swift::reflection::LowerType::visitFunctionTypeRef(a1, a2);
        return;
      case 5:
        goto LABEL_20;
      case 6:
        a2 = *(a2 + 16);
LABEL_20:
        v22 = *a1;
        *__p = 0u;
        v24 = 0u;
        v25 = 0x100000000;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        swift::reflection::ExistentialTypeInfoBuilder::addProtocolComposition(&v22, a2);
        swift::reflection::ExistentialTypeInfoBuilder::build(&v22, a1[1]);
        goto LABEL_21;
      case 7:
        v11 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(&v22, a2);
        if (v11 != 2)
        {
          if (v11 == 1)
          {
            v19 = a1;
            v20 = *a1;
            AnyMetatypeTypeRef = swift::reflection::TypeConverter::getAnyMetatypeTypeRef(v20);
            swift::reflection::TypeConverter::getTypeInfo(v20, AnyMetatypeTypeRef, v19[1]);
          }

          else
          {
            if (v11)
            {
              __break(1u);
              JUMPOUT(0xB4B14);
            }

            swift::reflection::TypeConverter::getEmptyTypeInfo(*a1);
          }
        }

        return;
      case 8:
        v22 = *a1;
        *__p = 0u;
        v24 = 0u;
        v25 = 0x100000000;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v17 = *(a2 + 16);
        if (!v17 || *(v17 + 2) != 5)
        {
          return;
        }

        swift::reflection::ExistentialTypeInfoBuilder::addProtocolComposition(&v22, v17);
        swift::reflection::ExistentialTypeInfoBuilder::buildMetatype(&v22, a1[1]);
LABEL_21:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        break;
      case 0xB:
      case 0xC:
      case 0xD:
        v2 = *a1;
        v3 = 1;
        goto LABEL_5;
      case 0x10:
        TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a1, *(a2 + 16), a1[1]);
        v6 = a1;
        v7 = 1;
        goto LABEL_31;
      case 0x11:
        TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a1, *(a2 + 16), a1[1]);
        v6 = a1;
        v7 = 2;
        goto LABEL_31;
      case 0x12:
        TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a1, *(a2 + 16), a1[1]);
        v6 = a1;
        v7 = 3;
LABEL_31:

        swift::reflection::LowerType::rebuildStorageTypeInfo(v6, TypeInfo, v7);
        break;
      case 0x13:
      case 0x14:
        v2 = *a1;
        v3 = 0;
LABEL_5:

        swift::reflection::TypeConverter::getReferenceTypeInfo(v2, 0, v3);
        break;
      case 0x16:
        v14 = a2;
        swift::reflection::TypeRefVisitor<swift::reflection::LowerType,swift::reflection::TypeInfo const*>::visit(a1, *(a2 + 24));
        v15 = *(*(v14 + 16) + 16);
        v16 = *a1;
        operator new();
      default:
        return;
    }
  }
}

void swift::reflection::TypeConverter::getClassInstanceTypeInfo(swift::reflection::TypeRefBuilder **a1, const swift::reflection::TypeRef *a2, int a3, uint64_t a4)
{
  swift::reflection::TypeRefBuilder::getFieldDescriptor(*a1, a2, &v36);
  v8 = v36;
  if (v36)
  {
    v9 = v36[4];
    if (v9 > 7)
    {
      __break(1u);
    }

    else
    {
      if (((1 << v9) & 0x7D) != 0)
      {
        v36 = 0;
LABEL_5:
        (*(*v8 + 8))(v8);
        return;
      }

      v27 = 0;
      v28 = a1;
      *v29 = 0x100000000;
      *&v29[8] = 0;
      v30 = 1;
      v31 = 8;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      v35 = 1;
      v25 = 0;
      v26 = 0;
      if (swift::reflection::TypeRefBuilder::getFieldTypeRefs(*a1, a2, v36, a4, &v25))
      {
        *v29 = a3;
        *&v29[4] = 1;
        LOBYTE(v35) = 0;
        v10 = v25;
        v11 = v26;
        if (v25 != v26)
        {
          do
          {
            if (*(v10 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v10, v10[1]);
            }

            else
            {
              v12 = *v10;
              __p.__r_.__value_.__r.__words[2] = v10[2];
              *&__p.__r_.__value_.__l.__data_ = v12;
            }

            v13 = *(v10 + 3);
            v24 = *(v10 + 20);
            v23 = v13;
            swift::reflection::RecordTypeInfoBuilder::addField(&v28, &__p, *(&v13 + 1), a4);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v10 += 6;
          }

          while (v10 != v11);
        }

        swift::reflection::RecordTypeInfoBuilder::build(&v28);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
          do
          {
            v17 = *(v15 - 25);
            v15 -= 6;
            if (v17 < 0)
            {
              operator delete(*v15);
            }
          }

          while (v15 != v14);
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      v18 = v32;
      if (v32)
      {
        v19 = v33;
        v20 = v32;
        if (v33 != v32)
        {
          do
          {
            v21 = *(v19 - 25);
            v19 -= 6;
            if (v21 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v18);
          v20 = v32;
        }

        v33 = v18;
        operator delete(v20);
      }

      v8 = v36;
      v36 = 0;
      if (v8)
      {
        goto LABEL_5;
      }
    }
  }
}

void swift::reflection::BuiltinTypeInfo::~BuiltinTypeInfo(void **this)
{
  *this = &off_E1450;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

{
  *this = &off_E1450;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    v1 = vars8;
  }

  operator delete();
}

void swift::reflection::RecordTypeInfo::~RecordTypeInfo(swift::reflection::RecordTypeInfo *this)
{
  *this = &off_E14B0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E14B0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::ReferenceTypeInfo::readExtraInhabitantIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*(a1 + 24))
  {
    return swift::remote::MemoryReader::readHeapObjectExtraInhabitantIndex(a2, a3, a4, a5);
  }

  *a5 = -1;
  return 1;
}

void *swift::reflection::anonymous namespace::PrintTypeInfo::printHeader(void **a1, uint64_t a2)
{
  for (i = *(a1 + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "(", 1);
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

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v7, v8);
}

void swift::reflection::anonymous namespace::PrintTypeInfo::printBasic(swift::reflection::_anonymous_namespace_::PrintTypeInfo *this, const swift::reflection::TypeInfo *a2)
{
  v8 = 4;
  strcpy(__p, "size");
  std::to_string(&v6, *(a2 + 3));
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*__p);
LABEL_3:
  v8 = 9;
  strcpy(__p, "alignment");
  std::to_string(&v6, *(a2 + 4));
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*__p);
LABEL_5:
  v8 = 6;
  strcpy(__p, "stride");
  std::to_string(&v6, *(a2 + 5));
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*__p);
LABEL_7:
  v8 = 21;
  strcpy(__p, "num_extra_inhabitants");
  std::to_string(&v6, *(a2 + 6));
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*__p);
LABEL_9:
  v8 = 15;
  strcpy(__p, "bitwise_takable");
  v4 = *(a2 + 28);
  *(&v6.__r_.__value_.__s + 23) = 1;
  if (v4)
  {
    v5 = 49;
  }

  else
  {
    v5 = 48;
  }

  LOWORD(v6.__r_.__value_.__l.__data_) = v5;
  if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(*__p);
    return;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
  if (v8 < 0)
  {
    goto LABEL_24;
  }
}

void *swift::reflection::anonymous namespace::PrintTypeInfo::printField(void **a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, " ", 1);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, v8, v9);
  if (v5)
  {
    v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(result, "=", 1);
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v13, v14);
  }

  return result;
}

void swift::reflection::TypeInfo::getSpareBits(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  *a2 = v3;
  if ((v3 - 134217729) >> 27 == 31)
  {
    v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
    *(a2 + 8) = v4;
    if (v4)
    {
      v5 = v4;
      memset(v4, 255, v3);
      v4 = v5;
    }

    else
    {
      v3 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  bzero(v4, v3);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2;
    v5 = *(a1 + 87);
    v6 = *(a1 + 96);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
LABEL_3:
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

LABEL_4:
  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t swift::reflection::LowerType::visitBuiltinTypeRef(swift::reflection::TypeRefBuilder ***this, const swift::reflection::BuiltinTypeRef *a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 39);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 != 2)
    {
LABEL_16:
      swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(**this, a2, &v10);
      if (v10)
      {
        v5 = **this;
        swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::BuiltinTypeInfo,swift::reflection::TypeRefBuilder &,swift::reflection::BuiltinTypeDescriptorBase &>();
      }

      return 0;
    }

    if (*v3 == 28482)
    {
      goto LABEL_18;
    }

    if (*v3 != 20290)
    {
      if (*v3 == 17474)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (*(a2 + 3) != 2 || **v3 != 28482)
  {
    if (*(a2 + 3) != 2 || **v3 != 20290)
    {
      if (*(a2 + 3) == 2 && **v3 == 17474)
      {
LABEL_24:
        v9 = *this;

        return swift::reflection::TypeConverter::getDefaultActorStorageTypeInfo(v9);
      }

      if (*(a2 + 3) != 2)
      {
        goto LABEL_16;
      }

      v3 = *v3;
LABEL_15:
      if (*v3 != 25410)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_20:
    v6 = *this;
    v7 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v6 = *this;
  v7 = 0;
LABEL_21:

  return swift::reflection::TypeConverter::getReferenceTypeInfo(v6, 0, v7);
}

uint64_t swift::reflection::LowerType::visitTupleTypeRef(swift::reflection::LowerType *this, const swift::reflection::TupleTypeRef *a2)
{
  v13[0] = *this;
  v13[1] = 0x100000000;
  v14 = 0;
  v15 = 1;
  v16 = 1;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v20 = 1;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  while (v2 != v3)
  {
    v5 = *v2++;
    v12[23] = 0;
    v12[0] = 0;
    swift::reflection::RecordTypeInfoBuilder::addField(v13, v12, v5, *(this + 1));
  }

  result = swift::reflection::RecordTypeInfoBuilder::build(v13);
  v7 = __p;
  if (__p)
  {
    v8 = result;
    v9 = v18;
    v10 = __p;
    if (v18 != __p)
    {
      do
      {
        v11 = *(v9 - 25);
        v9 -= 6;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v7);
      v10 = __p;
    }

    v18 = v7;
    operator delete(v10);
    return v8;
  }

  return result;
}

uint64_t **swift::reflection::LowerType::visitFunctionTypeRef(uint64_t **this, const swift::reflection::FunctionTypeRef *a2)
{
  v4 = *(a2 + 50);
  if ((v4 - 2) < 2)
  {
    v13 = v2;
    v14 = v3;
    v6 = *this;
    v7 = (*this)[16];
    if (!v7)
    {
      v8 = *v6;
      v12 = 4;
      strcpy(__p, "yyXf");
      v9 = this;
      v7 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v8, __p);
      this = v9;
      v6[16] = v7;
      if (v12 < 0)
      {
        operator delete(__p[0]);
        this = v9;
        v7 = v6[16];
      }
    }

    return swift::reflection::TypeConverter::getTypeInfo(v6, v7, this[1]);
  }

  else if (v4 == 1)
  {
    v10 = *this;

    return swift::reflection::TypeConverter::getReferenceTypeInfo(v10, 0, 1);
  }

  else if (*(a2 + 50))
  {
    __break(1u);
  }

  else
  {
    v5 = *this;

    return swift::reflection::TypeConverter::getThickFunctionTypeInfo(v5);
  }

  return this;
}

void swift::reflection::LowerType::visitAnyNominalTypeRef(uint64_t **this, const swift::reflection::TypeRef *a2)
{
  swift::reflection::TypeRefBuilder::getFieldDescriptor(**this, a2, &v53);
  v4 = v53;
  if (!v53 || (v5 = v53[4], !v53[4]))
  {
    swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(**this, a2, &__p);
    if (!__p.__r_.__value_.__r.__words[0])
    {
      v4 = v53;
      if (!v53)
      {
        if (!this[1])
        {
          goto LABEL_76;
        }

        v20 = 0;
        size = 0;
        memset(&v47, 0, sizeof(v47));
        if (a2 && (*(a2 + 2) - 3) >= 0xFFFFFFFE)
        {
          std::string::operator=(&v47, (a2 + 16));
          v20 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
          size = v47.__r_.__value_.__l.__size_;
        }

        if ((v20 & 0x80u) == 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = size;
        }

        if (v22 && ((v20 & 0x80u) == 0 ? (v23 = &v47) : (v23 = v47.__r_.__value_.__r.__words[0]), (v24 = (*(*this[1] + 16))(this[1], v23)) != 0))
        {
          v25 = v24;
          v26 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 1;
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (((v25 != 0) & ~v26) == 0)
        {
LABEL_76:
          swift::reflection::LowerType::CFRefTypeInfo(this, a2);
        }

        goto LABEL_77;
      }

      v5 = v53[4];
      if (v5 <= 3)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (!this[1])
    {
LABEL_30:
      v14 = **this;
      swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::BuiltinTypeInfo,swift::reflection::TypeRefBuilder &,swift::reflection::BuiltinTypeDescriptorBase &>();
    }

    v6 = 0;
    v7 = 0;
    memset(&v47, 0, sizeof(v47));
    if (a2 && (*(a2 + 2) - 3) >= 0xFFFFFFFE)
    {
      std::string::operator=(&v47, (a2 + 16));
      v6 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      v7 = v47.__r_.__value_.__l.__size_;
    }

    if ((v6 & 0x80u) == 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v8 && ((v6 & 0x80u) == 0 ? (v9 = &v47) : (v9 = v47.__r_.__value_.__r.__words[0]), (v10 = (*(*this[1] + 16))(this[1], v9)) != 0))
    {
      v11 = v10;
      v12 = 0;
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v11 = 0;
      v12 = 1;
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(v47.__r_.__value_.__l.__data_);
LABEL_29:
    v13 = __p.__r_.__value_.__r.__words[0];
    if (((v11 != 0) & ~v12) != 0)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      goto LABEL_77;
    }

    goto LABEL_30;
  }

  if (v53[4] <= 3u)
  {
LABEL_4:
    if (v5 - 2 < 2)
    {
      v15 = this[1];
      v47.__r_.__value_.__r.__words[0] = *this;
      v47.__r_.__value_.__l.__size_ = 0x100000000;
      LODWORD(v47.__r_.__value_.__r.__words[2]) = 0;
      v47.__r_.__value_.__s.__data_[20] = 1;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      LOBYTE(v51) = 0;
      swift::reflection::EnumTypeInfoBuilder::build(&v47, a2, v4, v15);
      v16 = v48;
      if (v48)
      {
        v17 = v49;
        v18 = v48;
        if (v49 != v48)
        {
          do
          {
            v19 = *(v17 - 25);
            v17 -= 6;
            if (v19 < 0)
            {
              operator delete(*v17);
            }
          }

          while (v17 != v16);
          v18 = v48;
        }

        v49 = v16;
        operator delete(v18);
      }
    }

    else
    {
      if (v5)
      {
        if (v5 == 1)
        {
          swift::reflection::TypeConverter::getReferenceTypeInfo(*this, 0, 0);
          goto LABEL_77;
        }

LABEL_90:
        __break(1u);
        return;
      }

      v28 = *this;
      v27 = this[1];
      v46 = 0;
      v47.__r_.__value_.__r.__words[0] = v28;
      v47.__r_.__value_.__l.__size_ = 0x100000000;
      LODWORD(v47.__r_.__value_.__r.__words[2]) = 0;
      LODWORD(v48) = 2;
      v47.__r_.__value_.__s.__data_[20] = 1;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      v52 = 1;
      v44 = 0;
      v45 = 0;
      if (swift::reflection::TypeRefBuilder::getFieldTypeRefs(*v28, a2, v4, v27, &v44))
      {
        v29 = v44;
        v30 = v45;
        if (v44 != v45)
        {
          do
          {
            if (*(v29 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v29, v29[1]);
            }

            else
            {
              v31 = *v29;
              __p.__r_.__value_.__r.__words[2] = v29[2];
              *&__p.__r_.__value_.__l.__data_ = v31;
            }

            v32 = *(v29 + 3);
            v43 = *(v29 + 20);
            v42 = v32;
            swift::reflection::RecordTypeInfoBuilder::addField(&v47, &__p, *(&v32 + 1), this[1]);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v29 += 6;
          }

          while (v29 != v30);
        }

        swift::reflection::RecordTypeInfoBuilder::build(&v47);
      }

      v33 = v44;
      if (v44)
      {
        v34 = v45;
        v35 = v44;
        if (v45 != v44)
        {
          do
          {
            v36 = *(v34 - 25);
            v34 -= 6;
            if (v36 < 0)
            {
              operator delete(*v34);
            }
          }

          while (v34 != v33);
          v35 = v44;
        }

        v45 = v33;
        operator delete(v35);
      }

      v37 = v49;
      if (v49)
      {
        v38 = v50;
        v39 = v49;
        if (v50 != v49)
        {
          do
          {
            v40 = *(v38 - 25);
            v38 -= 6;
            if (v40 < 0)
            {
              operator delete(*v38);
            }
          }

          while (v38 != v37);
          v39 = v49;
        }

        v50 = v37;
        operator delete(v39);
      }
    }

LABEL_77:
    v4 = v53;
    v53 = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_78;
  }

LABEL_25:
  if (v5 - 4 >= 3)
  {
    if (v5 != 7)
    {
      goto LABEL_90;
    }

    swift::reflection::TypeConverter::getReferenceTypeInfo(*this, 0, 1);
    goto LABEL_77;
  }

  v53 = 0;
LABEL_78:
  (*(*v4 + 8))(v4);
}

uint64_t swift::reflection::LowerType::CFRefTypeInfo(swift::reflection::LowerType *this, const swift::reflection::TypeRef *a2)
{
  if (!a2 || *(a2 + 2) != 1)
  {
    return 0;
  }

  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  v24 = 2400;
  v25 = 0;
  v26 = 0;
  v61 = 0;
  v22[0] = off_E13E8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v59 = 0;
  Demangling = swift::reflection::TypeRef::getDemangling(a2, v22);
  if (*(Demangling + 8) != 243)
  {
    goto LABEL_24;
  }

  v5 = *(Demangling + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || Demangling[2] != 1)
    {
      goto LABEL_24;
    }

    Demangling = *Demangling;
  }

  v6 = *Demangling;
  if (*(*Demangling + 16) != 245)
  {
    goto LABEL_24;
  }

  v7 = *(v6 + 18);
  if (v7 == 2)
  {
    goto LABEL_13;
  }

  if (v7 != 5 || v6[2] != 2)
  {
LABEL_24:
    v15 = 1;
    goto LABEL_25;
  }

  v6 = *v6;
LABEL_13:
  v8 = *v6;
  if (*(*v6 + 16) != 163 || *(v8 + 18) != 3 || v8[1] != (&dword_0 + 3))
  {
    goto LABEL_24;
  }

  v9 = *v8;
  v10 = *v9;
  v11 = *(v9 + 2);
  if (v10 != 24415 || v11 != 67)
  {
    goto LABEL_24;
  }

  v13 = *(v6 + 1);
  if (*(v13 + 16) != 103)
  {
    goto LABEL_24;
  }

  if (*(v13 + 18) != 3)
  {
    goto LABEL_24;
  }

  v14 = *(v13 + 8);
  if (v14 < 2)
  {
    goto LABEL_24;
  }

  v15 = 1;
  if (v14 != 2)
  {
    v17 = *v13;
    if (*v17 == 17987)
    {
      v18 = v17 + v14;
      v19 = *(v18 - 3);
      v20 = *(v18 - 1);
      if (v19 == 25938 && v20 == 102)
      {
        ReferenceTypeInfo = swift::reflection::TypeConverter::getReferenceTypeInfo(*this, 0, 1);
        v15 = 0;
      }
    }
  }

LABEL_25:
  v22[0] = off_E13E8;
  if (v61 == &v60)
  {
    (*(*v61 + 32))(v61);
  }

  else if (v61)
  {
    (*(*v61 + 40))(v61);
  }

  v22[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v23);
  if (v25)
  {
    *(v25 + 48) = 0;
  }

  result = ReferenceTypeInfo;
  if (v15)
  {
    return 0;
  }

  return result;
}

uint64_t swift::reflection::EnumTypeInfoBuilder::build(void *a1, swift::reflection::TypeRef *a2, _WORD *a3, uint64_t a4)
{
  v104 = 0;
  v105 = 0;
  v106 = 0;
  if ((swift::reflection::TypeRefBuilder::getFieldTypeRefs(**a1, a2, a3, a4, &v104) & 1) == 0)
  {
    v19 = 0;
    *(a1 + 48) = 1;
    v20 = *a1;
    v20[23] = "cannot not get field types";
    v20[24] = a2;
    goto LABEL_47;
  }

  v86 = a2;
  v8 = v104;
  v7 = v105;
  if (v104 != v105)
  {
    v9 = 0;
    v87 = 0;
    v10 = 0;
    v88 = 0;
    v89 = 0;
    while (1)
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v101, *v8, *(v8 + 8));
      }

      else
      {
        v11 = *v8;
        v101.__r_.__value_.__r.__words[2] = *(v8 + 16);
        *&v101.__r_.__value_.__l.__data_ = v11;
      }

      v12 = *(v8 + 24);
      LOWORD(v103) = *(v8 + 40);
      v102 = v12;
      if (!*(&v12 + 1))
      {
        break;
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v98, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
      }

      else
      {
        v98 = v101;
      }

      v100 = v103;
      v99 = v102;
      if (v103 == 1)
      {
        v13 = *a1;
        v14 = *(*a1 + 112);
        if (!v14)
        {
          v15 = *v13;
          v109 = 2;
          strcpy(&v107, "Bo");
          v14 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v15, &v107);
          v13[14] = v14;
          if (v109 < 0)
          {
            operator delete(v107);
            v14 = v13[14];
          }
        }
      }

      else
      {
        v14 = *(&v99 + 1);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a1, v14, a4);
      if (TypeInfo)
      {
        if (v103 == 1)
        {
          goto LABEL_26;
        }

        if (BYTE1(v103) == 1)
        {
          ++v88;
          goto LABEL_27;
        }

        if (*(TypeInfo + 12))
        {
LABEL_26:
          ++v10;
LABEL_27:
          v89 = v14;
        }

        else
        {
          ++v87;
        }

        swift::reflection::EnumTypeInfoBuilder::addCase(a1, &v101, v14, TypeInfo);
LABEL_29:
        v17 = 1;
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v17 = 0;
      *(a1 + 48) = 1;
      v18 = *a1;
      v18[23] = "no type info for single enum case";
      v18[24] = v14;
      if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_30:
      operator delete(v101.__r_.__value_.__l.__data_);
LABEL_31:
      if ((v17 & 1) == 0)
      {
        v19 = 0;
        goto LABEL_47;
      }

      v8 += 48;
      if (v8 == v7)
      {
        goto LABEL_37;
      }
    }

    ++v9;
    swift::reflection::EnumTypeInfoBuilder::addCase(a1, &v101);
    goto LABEL_29;
  }

  v89 = 0;
  v88 = 0;
  v10 = 0;
  v87 = 0;
  v9 = 0;
LABEL_37:
  v21 = v10 + v88;
  v97 = v10 + v88;
  v22 = a1[3];
  v23 = a1[4];
  if (v22 == v23)
  {
    v25 = *a1;
    operator new();
  }

  v24 = v21 + v87;
  if (v21 + v87 != 1)
  {
    if (!v24)
    {
      v96 = 0;
      goto LABEL_45;
    }

    v24 = 2;
  }

  v96 = v24;
LABEL_45:
  v26 = (a1 + 1);
  if (*(a1 + 2) > 0x100000u)
  {
    v27 = *(a1 + 3);
    v28 = *a1;
    operator new();
  }

  if (v23 - v22 != 48)
  {
    v34 = v9 + v87;
    if (v21 != 1)
    {
      if (!v21)
      {
        if (v34 > 0xFF)
        {
          v35 = HIWORD(v34);
          if (HIWORD(v34))
          {
            LODWORD(v101.__r_.__value_.__l.__data_) = 4;
            LODWORD(v107) = -v34;
            v35 = v34 > 0;
LABEL_86:
            if (v87)
            {
              LODWORD(v107) = 0;
            }

            else if (v35)
            {
              LODWORD(v107) = 0x7FFFFFFF;
            }

            v52 = *a1;
            swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::NoPayloadEnumTypeInfo,unsigned int &,unsigned int &,unsigned int &,unsigned int &,swift::reflection::EnumKind &,std::vector<swift::reflection::FieldInfo> &>();
          }

          LODWORD(v101.__r_.__value_.__l.__data_) = 2;
          v36 = 0x10000;
        }

        else
        {
          v35 = 0;
          LODWORD(v101.__r_.__value_.__l.__data_) = 1;
          v36 = 256;
        }

        LODWORD(v107) = v36 - v34;
        goto LABEL_86;
      }

      swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(**a1, v86, &v95);
      v42 = v95;
      if (!v95 || v88)
      {
        EnumTagCounts = swift::getEnumTagCounts(*v26, v34, v97);
        v48 = *v26 + HIDWORD(EnumTagCounts);
        v49 = (1 << (8 * BYTE4(EnumTagCounts))) - EnumTagCounts;
        if (v49 >= 0x7FFFFFFF)
        {
          v49 = 0x7FFFFFFF;
        }

        if (EnumTagCounts >> 34)
        {
          v49 = 0x7FFFFFFF;
        }

        *(a1 + 4) = v49;
        *v26 = v48;
        v50 = (v48 + *(a1 + 3) - 1) & -*(a1 + 3);
        if (v50 <= 1)
        {
          v50 = 1;
        }

        LODWORD(v101.__r_.__value_.__l.__data_) = v50;
        v51 = *a1;
        swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::TaggedMultiPayloadEnumTypeInfo,unsigned int &,unsigned int &,unsigned int &,unsigned int &,BOOL &,std::vector<swift::reflection::FieldInfo> &,unsigned int &>();
      }

      v43 = 0x100004077774924;
      v45 = *(v95 + 8);
      v44 = *(v95 + 12);
      *(a1 + 3) = v44;
      *(a1 + 2) = v45;
      *(a1 + 4) = *(v42 + 20);
      *(a1 + 20) = *(v42 + 24);
      v46 = (v45 + v44 - 1) & -v44;
      if (v46 <= 1)
      {
        v46 = 1;
      }

      v94 = v46;
      LODWORD(v107) = v45;
      if ((v45 - 134217729) >> 27 == 31)
      {
        v54 = malloc_type_malloc(v45, 0x100004077774924uLL);
        v108 = v54;
        if (v54)
        {
          v90 = v54;
          memset(v54, 255, v45);
        }

        else
        {
          v90 = 0;
          LODWORD(v45) = 0;
          LODWORD(v107) = 0;
        }
      }

      else
      {
        v90 = 0;
        LODWORD(v45) = 0;
        LODWORD(v107) = 0;
        v108 = 0;
      }

      v93 = 0;
      v57 = a1[3];
      v56 = a1[4];
      if (v57 == v56)
      {
LABEL_131:
        if (!v45)
        {
          goto LABEL_138;
        }

        if (!v90->i8[0])
        {
          v80 = 1;
          do
          {
            v81 = v80;
            if (v45 == v80)
            {
              break;
            }

            v82 = v90->u8[v80++];
          }

          while (!v90->i8[v81]);
          if (v81 >= v45)
          {
            goto LABEL_138;
          }
        }

        if (v93 == 1)
        {
LABEL_138:
          v83 = *a1;
          swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::TaggedMultiPayloadEnumTypeInfo,unsigned int &,unsigned int &,unsigned int &,unsigned int &,BOOL &,std::vector<swift::reflection::FieldInfo> &,unsigned int &>();
        }

        v84 = *a1;
        swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::MultiPayloadEnumTypeInfo,unsigned int &,unsigned int &,unsigned int &,unsigned int &,BOOL &,std::vector<swift::reflection::FieldInfo> &,swift::reflection::BitMask &,unsigned int &>();
      }

      while (1)
      {
        if (*(v57 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v101, *v57, *(v57 + 1));
        }

        else
        {
          v58 = *v57;
          v101.__r_.__value_.__r.__words[2] = *(v57 + 2);
          *&v101.__r_.__value_.__l.__data_ = v58;
        }

        v59 = *(v57 + 24);
        v103 = *(v57 + 5);
        v102 = v59;
        if (!*(&v59 + 1))
        {
          goto LABEL_121;
        }

        v60 = *a1;
        (*(*v103 + 8))(&size);
        v61 = size;
        v62 = v43;
        v63 = malloc_type_malloc(size, v43);
        memcpy(v63, __src, v61);
        if (v61)
        {
          if (v45)
          {
            break;
          }
        }

LABEL_120:
        free(v63);
        free(__src);
        v43 = v62;
LABEL_121:
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        v57 += 3;
        if (v57 == v56)
        {
          goto LABEL_131;
        }
      }

      if (v45 >= v61)
      {
        v64 = v61;
      }

      else
      {
        v64 = v45;
      }

      if (v64 < 8 || (v90 < &v63->i8[v64] ? (v65 = v63 >= &v90->i8[v64]) : (v65 = 1), !v65))
      {
        v66 = 0;
LABEL_118:
        v67 = &v90->i8[v66];
        v68 = v64 - v66;
        v69 = &v63->i8[v66];
        do
        {
          v70 = *v69++;
          *v67++ &= v70;
          --v68;
        }

        while (v68);
        goto LABEL_120;
      }

      if (v64 >= 0x20)
      {
        v66 = v64 & 0xFFFFFE0;
        v71 = v63 + 1;
        v72 = v66;
        v73 = v90 + 1;
        do
        {
          v74 = vandq_s8(*v73, *v71);
          v73[-1] = vandq_s8(v73[-1], v71[-1]);
          *v73 = v74;
          v71 += 2;
          v73 += 2;
          v72 -= 32;
        }

        while (v72);
        if (v66 == v64)
        {
          goto LABEL_120;
        }

        if ((v64 & 0x18) == 0)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v66 = 0;
      }

      v75 = v66;
      v66 = v64 & 0xFFFFFF8;
      v76 = &v63->i8[v75];
      v77 = &v90->i8[v75];
      v78 = v75 - v66;
      do
      {
        v79 = *v76++;
        *v77 = vand_s8(*v77, v79);
        ++v77;
        v78 += 8;
      }

      while (v78);
      if (v66 == v64)
      {
        goto LABEL_120;
      }

      goto LABEL_118;
    }

    v37 = swift::reflection::TypeConverter::getTypeInfo(*a1, v89, a4);
    v19 = 0;
    if (!v89 || !v37)
    {
      goto LABEL_47;
    }

    v38 = *(v37 + 24);
    v65 = v38 >= v34;
    v39 = v38 - v34;
    if (v65)
    {
      *(a1 + 4) = v39;
      v53 = *(a1 + 2);
      v41 = *(a1 + 3);
      goto LABEL_147;
    }

    *(a1 + 4) = 0;
    v40 = *(a1 + 2);
    if (v40 <= 3)
    {
      v55 = ((v34 + ~(-1 << (8 * v40))) >> (8 * v40)) + 1;
      if (v55 < 2)
      {
        v41 = 0;
        goto LABEL_144;
      }

      if (v55 >= 0x100)
      {
        if (v55 >= 0x10000)
        {
          v41 = 4;
        }

        else
        {
          v41 = 2;
        }

        goto LABEL_144;
      }
    }

    v41 = 1;
LABEL_144:
    v53 = v41 + v40;
    if (*(a1 + 3) > v41)
    {
      v41 = *(a1 + 3);
    }

    *(a1 + 2) = v53;
    *(a1 + 3) = v41;
LABEL_147:
    LODWORD(v101.__r_.__value_.__l.__data_) = (v53 + v41 - 1) & -v41;
    v85 = *a1;
    swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::SinglePayloadEnumTypeInfo,unsigned int &,unsigned int &,unsigned int &,unsigned int &,BOOL &,swift::reflection::EnumKind &,std::vector<swift::reflection::FieldInfo> &>();
  }

  if (!v21)
  {
    swift::reflection::TypeConverter::makeTypeInfo<swift::reflection::TrivialEnumTypeInfo,swift::reflection::EnumKind &,std::vector<swift::reflection::FieldInfo> &>();
  }

  v19 = swift::reflection::TypeConverter::getTypeInfo(*a1, v89, a4);
LABEL_47:
  v29 = v104;
  if (v104)
  {
    v30 = v105;
    v31 = v104;
    if (v105 != v104)
    {
      do
      {
        v32 = *(v30 - 25);
        v30 -= 6;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = v104;
    }

    v105 = v29;
    operator delete(v31);
  }

  return v19;
}