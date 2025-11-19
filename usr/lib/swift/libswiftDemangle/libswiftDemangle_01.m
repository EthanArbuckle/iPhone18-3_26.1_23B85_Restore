char *swift::Demangle::Demangler::demangleArchetype(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v6 >= v5)
  {
    return 0;
  }

  result = 0;
  v9 = v6 + 1;
  *(this + 9) = v6 + 1;
  v10 = *(this + 7);
  switch(*(v10 + v6))
  {
    case 'O':
      result = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
      if (result)
      {
        v11 = result;
        v12 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v12;
        if (!v12 || v12 + 24 > *(this + 2))
        {
          v13 = 2 * *(this + 4);
          if (v13 <= 0x20)
          {
            v13 = 32;
          }

          *(this + 4) = v13;
          v14 = v13 + 8;
          v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
          *v15 = *(this + 3);
          v12 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v15 + v14;
          *(this + 3) = v15;
        }

        *(this + 1) = v12 + 24;
        *(v12 + 16) = 323;
        *(v12 + 18) = 0;
        v16 = v12;
        v17 = v12;
        goto LABEL_54;
      }

      return result;
    case 'P':

      return swift::Demangle::Demangler::popPack(this, a2, a3, a4, a5);
    case 'R':
      if (v9 >= v5)
      {
        return 0;
      }

      v27 = *(v10 + v9);
      if (v27 == 95)
      {
        v28 = 0;
        *(this + 9) = v6 + 2;
LABEL_22:
        v29 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v29;
        if (!v29 || v29 + 24 > *(this + 2))
        {
          v30 = 2 * *(this + 4);
          if (v30 <= 0x20)
          {
            v30 = 32;
          }

          *(this + 4) = v30;
          v31 = v30 + 8;
          v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
          *v32 = *(this + 3);
          v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v32 + v31;
          *(this + 3) = v32;
        }

        *(this + 1) = v29 + 24;
        *(v29 + 16) = 355;
        *(v29 + 18) = 4;
        *v29 = v28;
        v33 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v33;
        if (!v33 || v33 + 24 > *(this + 2))
        {
          v34 = 2 * *(this + 4);
          if (v34 <= 0x20)
          {
            v34 = 32;
          }

          *(this + 4) = v34;
          v35 = v34 + 8;
          v36 = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
          *v36 = *(this + 3);
          v33 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v36 + v35;
          *(this + 3) = v36;
        }

        *(this + 1) = v33 + 24;
        *(v33 + 16) = 322;
        *(v33 + 18) = 0;
        swift::Demangle::Node::addChild(v33, v29, this, a4, a5);
        v39 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v39;
        if (!v39 || v39 + 24 > *(this + 2))
        {
          v40 = 2 * *(this + 4);
          if (v40 <= 0x20)
          {
            v40 = 32;
          }

          *(this + 4) = v40;
          v41 = v40 + 8;
          v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
          *v42 = *(this + 3);
          v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
          v43 = v42 + v41;
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if ((v27 - 48) > 9)
      {
        return 0;
      }

      v105 = 0;
      while (1)
      {
        v106 = *(v10 + v9);
        if ((v106 - 48) > 9)
        {
          break;
        }

        v107 = v106 + 10 * v105 - 48;
        if (v107 < v105)
        {
          return 0;
        }

        result = 0;
        *(this + 9) = ++v9;
        v105 = v107;
        if (v5 == v9)
        {
          return result;
        }
      }

      result = 0;
      if ((v105 & 0x80000000) == 0 && v9 < v5 && v106 == 95)
      {
        *(this + 9) = v9 + 1;
        v28 = (v105 + 1);
        goto LABEL_22;
      }

      break;
    case 'S':

      return swift::Demangle::Demangler::popSILPack(this, a2, a3, a4, a5);
    case 'X':
      v58 = this;
      v57 = 0;
      goto LABEL_72;
    case 'Y':
      DependentGenericParamType = swift::Demangle::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
      goto LABEL_59;
    case 'Z':
      DependentGenericParamType = swift::Demangle::Demangler::getDependentGenericParamType(this, 0, 0, a4, a5);
LABEL_59:
      v57 = DependentGenericParamType;
      v58 = this;
LABEL_72:
      result = swift::Demangle::Demangler::demangleAssociatedTypeCompound(v58, v57, a3, a4, a5);
      v139 = result;
      if (result)
      {
        goto LABEL_73;
      }

      return result;
    case 'a':
      v59 = *(this + 24);
      if (!v59)
      {
        return 0;
      }

      v60 = v59 - 1;
      v61 = *(this + 11);
      v62 = *(v61 + 8 * (v59 - 1));
      if (*(v62 + 8) == 103)
      {
        *(this + 24) = v60;
        if (v59 == 1)
        {
          return 0;
        }
      }

      else
      {
        v62 = 0;
        v60 = *(this + 24);
      }

      v89 = v60 - 1;
      v90 = *(v61 + 8 * v89);
      if (*(v90 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v89;
      v91 = *(v90 + 18);
      if (v91 == 1)
      {
        goto LABEL_115;
      }

      if (v91 != 5 || *(v90 + 2) != 1)
      {
        return 0;
      }

      v90 = *v90;
LABEL_115:
      if (!v62)
      {
        return 0;
      }

      v92 = *v90;
      if (!*v90)
      {
        return 0;
      }

      v93 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v93;
      if (!v93 || v93 + 24 > *(this + 2))
      {
        v94 = 2 * *(this + 4);
        if (v94 <= 0x20)
        {
          v94 = 32;
        }

        *(this + 4) = v94;
        v95 = v94 + 8;
        v96 = malloc_type_malloc(v94 + 8, 0x2004093837F09uLL);
        *v96 = *(this + 3);
        v93 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v96 + v95;
        *(this + 3) = v96;
      }

      *(this + 1) = v93 + 24;
      *(v93 + 16) = 5;
      *(v93 + 18) = 0;
      swift::Demangle::Node::addChild(v93, v92, this, a4, a5);
      swift::Demangle::Node::addChild(v93, v62, this, v97, v98);
      v101 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v101;
      if (!v101 || v101 + 24 > *(this + 2))
      {
        v102 = 2 * *(this + 4);
        if (v102 <= 0x20)
        {
          v102 = 32;
        }

        *(this + 4) = v102;
        v103 = v102 + 8;
        v104 = malloc_type_malloc(v102 + 8, 0x2004093837F09uLL);
        *v104 = *(this + 3);
        v101 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v104 + v103;
        *(this + 3) = v104;
      }

      *(this + 1) = v101 + 24;
      *(v101 + 16) = 243;
      *(v101 + 18) = 0;
      v63 = v101;
      swift::Demangle::Node::addChild(v101, v93, this, v99, v100);
      v139 = v63;
LABEL_74:
      v64 = (this + 104);
      v65 = &v139;
      goto LABEL_75;
    case 'e':
      v68 = *(this + 24);
      if (!v68)
      {
        goto LABEL_86;
      }

      v69 = v68 - 1;
      v70 = *(*(this + 11) + 8 * (v68 - 1));
      if (*(v70 + 8) != 243)
      {
        goto LABEL_86;
      }

      *(this + 24) = v69;
      v71 = *(v70 + 18);
      if (v71 == 1)
      {
        goto LABEL_85;
      }

      if (v71 == 5 && *(v70 + 2) == 1)
      {
        v70 = *v70;
LABEL_85:
        v72 = *v70;
      }

      else
      {
LABEL_86:
        v72 = 0;
      }

      if (v9 >= v5)
      {
        return 0;
      }

      v73 = *(v10 + v9);
      if (v73 == 95)
      {
        v74 = 0;
        *(this + 9) = v6 + 2;
      }

      else
      {
        if ((v73 - 48) > 9)
        {
          return 0;
        }

        v124 = 0;
        while (1)
        {
          v125 = *(v10 + v9);
          if ((v125 - 48) > 9)
          {
            break;
          }

          v126 = v125 + 10 * v124 - 48;
          if (v126 < v124)
          {
            return 0;
          }

          result = 0;
          *(this + 9) = ++v9;
          v124 = v126;
          if (v5 == v9)
          {
            return result;
          }
        }

        result = 0;
        if (v124 < 0 || v9 >= v5 || v125 != 95)
        {
          return result;
        }

        *(this + 9) = v9 + 1;
        v74 = (v124 + 1);
      }

      v75 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v75;
      if (!v75 || v75 + 24 > *(this + 2))
      {
        v76 = 2 * *(this + 4);
        if (v76 <= 0x20)
        {
          v76 = 32;
        }

        *(this + 4) = v76;
        v77 = v76 + 8;
        v78 = malloc_type_malloc(v76 + 8, 0x2004093837F09uLL);
        *v78 = *(this + 3);
        v75 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v78 + v77;
        *(this + 3) = v78;
      }

      *(this + 1) = v75 + 24;
      *(v75 + 16) = 242;
      *(v75 + 18) = 4;
      *v75 = v74;
      if (v72)
      {
        v79 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v79;
        if (!v79 || v79 + 24 > *(this + 2))
        {
          v80 = 2 * *(this + 4);
          if (v80 <= 0x20)
          {
            v80 = 32;
          }

          *(this + 4) = v80;
          v81 = v80 + 8;
          v82 = malloc_type_malloc(v80 + 8, 0x2004093837F09uLL);
          *v82 = *(this + 3);
          v79 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v82 + v81;
          *(this + 3) = v82;
        }

        *(this + 1) = v79 + 24;
        *(v79 + 16) = 241;
        *(v79 + 18) = 0;
        swift::Demangle::Node::addChild(v79, v72, this, a4, a5);
        swift::Demangle::Node::addChild(v79, v75, this, v83, v84);
        v85 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v85;
        if (!v85 || v85 + 24 > *(this + 2))
        {
          v86 = 2 * *(this + 4);
          if (v86 <= 0x20)
          {
            v86 = 32;
          }

          *(this + 4) = v86;
          v87 = v86 + 8;
          v88 = malloc_type_malloc(v86 + 8, 0x2004093837F09uLL);
          *v88 = *(this + 3);
          v85 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v88 + v87;
          *(this + 3) = v88;
        }

        *(this + 1) = v85 + 24;
        *(v85 + 16) = 243;
        *(v85 + 18) = 0;
        v44 = v85;
        v45 = v85;
        v46 = v79;
        goto LABEL_107;
      }

      return 0;
    case 'o':
      if (v9 >= v5)
      {
        goto LABEL_139;
      }

      v66 = *(v10 + v9);
      if (v66 == 95)
      {
        v67 = 0;
        *(this + 9) = v6 + 2;
        goto LABEL_140;
      }

      if ((v66 - 48) > 9)
      {
        goto LABEL_139;
      }

      v108 = 0;
      while (1)
      {
        v109 = *(v10 + v9);
        if ((v109 - 48) > 9)
        {
          break;
        }

        v110 = v109 + 10 * v108 - 48;
        if (v110 >= v108)
        {
          *(this + 9) = ++v9;
          v108 = v110;
          if (v5 != v9)
          {
            continue;
          }
        }

LABEL_139:
        v67 = -1000;
        goto LABEL_140;
      }

      v67 = -1000;
      if ((v108 & 0x80000000) == 0 && v9 < v5 && v109 == 95)
      {
        *(this + 9) = v9 + 1;
        v67 = (v108 + 1);
      }

LABEL_140:
      v139 = 0;
      v140 = 0;
      v138 = 0;
      if (!swift::Demangle::Demangler::demangleBoundGenerics(this, &v139, &v138, a4, a5))
      {
        return 0;
      }

      v111 = *(this + 24);
      if (!v111)
      {
        return 0;
      }

      v112 = v111 - 1;
      v113 = *(*(this + 11) + 8 * v112);
      *(this + 24) = v112;
      if (!v113)
      {
        return 0;
      }

      Node = swift::Demangle::NodeFactory::createNode(this, 104, v67);
      v116 = swift::Demangle::Demangler::createWithChildren(this, 314, v113, Node, v115);
      v119 = swift::Demangle::NodeFactory::createNode(this, 246);
      if (v140)
      {
        v120 = 8 * v140 - 8;
        do
        {
          swift::Demangle::Node::addChild(v119, *&v139[v120], this, v117, v118);
          v120 -= 8;
        }

        while (v120 != -8);
      }

      swift::Demangle::Node::addChild(v116, v119, this, v117, v118);
      if (v138)
      {
        swift::Demangle::Node::addChild(v116, v138, this, v122, v123);
      }

      result = swift::Demangle::Demangler::createType(this, v116, v121, v122, v123);
      v141 = result;
      if (result)
      {
        v63 = result;
        v64 = (this + 104);
        v65 = &v141;
LABEL_75:
        swift::Demangle::Vector<swift::Demangle::Node *>::push_back(v64, v65, this);
        return v63;
      }

      return result;
    case 'p':
      v19 = *(this + 24);
      if (!v19)
      {
        return 0;
      }

      v20 = v19 - 1;
      v21 = *(this + 11);
      v22 = *(v21 + 8 * (v19 - 1));
      if (*(v22 + 8) != 243)
      {
        v24 = 0;
        v20 = *(this + 24);
        goto LABEL_158;
      }

      *(this + 24) = v20;
      v23 = *(v22 + 18);
      if (v23 == 1)
      {
        goto LABEL_17;
      }

      if (v23 == 5 && *(v22 + 2) == 1)
      {
        v22 = *v22;
LABEL_17:
        v24 = *v22;
      }

      else
      {
        v24 = 0;
      }

      if (!v20)
      {
        return 0;
      }

LABEL_158:
      v127 = v20 - 1;
      v128 = *(v21 + 8 * v127);
      if (*(v128 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v127;
      v129 = *(v128 + 18);
      if (v129 == 1)
      {
        goto LABEL_163;
      }

      if (v129 != 5 || *(v128 + 2) != 1)
      {
        return 0;
      }

      v128 = *v128;
LABEL_163:
      result = 0;
      if (v24)
      {
        v130 = *v128;
        if (*v128)
        {
          v33 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v33;
          if (!v33 || v33 + 24 > *(this + 2))
          {
            v131 = 2 * *(this + 4);
            if (v131 <= 0x20)
            {
              v131 = 32;
            }

            *(this + 4) = v131;
            v132 = v131 + 8;
            v133 = malloc_type_malloc(v131 + 8, 0x2004093837F09uLL);
            *v133 = *(this + 3);
            v33 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(this + 2) = v133 + v132;
            *(this + 3) = v133;
          }

          *(this + 1) = v33 + 24;
          *(v33 + 16) = 240;
          *(v33 + 18) = 0;
          swift::Demangle::Node::addChild(v33, v130, this, a4, a5);
          swift::Demangle::Node::addChild(v33, v24, this, v134, v135);
          v39 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v39;
          if (!v39 || v39 + 24 > *(this + 2))
          {
            v136 = 2 * *(this + 4);
            if (v136 <= 0x20)
            {
              v136 = 32;
            }

            *(this + 4) = v136;
            v137 = v136 + 8;
            v42 = malloc_type_malloc(v136 + 8, 0x2004093837F09uLL);
            *v42 = *(this + 3);
            v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
            v43 = v42 + v137;
LABEL_37:
            *(this + 2) = v43;
            *(this + 3) = v42;
          }

LABEL_38:
          *(this + 1) = v39 + 24;
          *(v39 + 16) = 243;
          *(v39 + 18) = 0;
          v44 = v39;
          v45 = v39;
          v46 = v33;
LABEL_107:
          swift::Demangle::Node::addChild(v45, v46, this, v37, v38);
          return v44;
        }
      }

      return result;
    case 'r':
      v11 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v11;
      if (!v11 || (v48 = *(this + 2), v11 + 24 > v48))
      {
        v49 = 2 * *(this + 4);
        if (v49 <= 0x20)
        {
          v49 = 32;
        }

        *(this + 4) = v49;
        v50 = v49 + 8;
        v51 = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
        *v51 = *(this + 3);
        v11 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
        v48 = v51 + v50;
        *(this + 2) = v51 + v50;
        *(this + 3) = v51;
      }

      *(v11 + 16) = 322;
      *(v11 + 18) = 0;
      v52 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v52;
      if (v52)
      {
        v53 = v52 + 24 > v48;
      }

      else
      {
        v53 = 1;
      }

      if (v53)
      {
        v54 = 2 * *(this + 4);
        if (v54 <= 0x20)
        {
          v54 = 32;
        }

        *(this + 4) = v54;
        v55 = v54 + 8;
        v56 = malloc_type_malloc(v54 + 8, 0x2004093837F09uLL);
        *v56 = *(this + 3);
        v52 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v56 + v55;
        *(this + 3) = v56;
      }

      *(this + 1) = v52 + 24;
      *(v52 + 16) = 243;
      *(v52 + 18) = 0;
      v16 = v52;
      v17 = v52;
LABEL_54:
      swift::Demangle::Node::addChild(v17, v11, this, a4, a5);
      return v16;
    case 'x':
      v25 = this;
      v26 = 0;
      goto LABEL_66;
    case 'y':
      v18 = swift::Demangle::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
      goto LABEL_65;
    case 'z':
      v18 = swift::Demangle::Demangler::getDependentGenericParamType(this, 0, 0, a4, a5);
LABEL_65:
      v26 = v18;
      v25 = this;
LABEL_66:
      result = swift::Demangle::Demangler::demangleAssociatedTypeSimple(v25, v26, a3, a4, a5);
      v139 = result;
      if (!result)
      {
        return result;
      }

LABEL_73:
      v63 = result;
      goto LABEL_74;
    default:
      return result;
  }

  return result;
}

unint64_t swift::Demangle::Demangler::demangleGenericRequirement(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 9);
  if (v6 < *(this + 8))
  {
    v7 = v6 + 1;
    *(this + 9) = v6 + 1;
    v8 = 0;
    v9 = 1;
    v10 = 7;
    switch(*(*(this + 7) + v6))
    {
      case 'B':
        goto LABEL_64;
      case 'C':
        goto LABEL_62;
      case 'I':
        v11 = swift::Demangle::Demangler::demangleIndexAsNode(this);
        if (!v11)
        {
          return 0;
        }

        v8 = v11;
        v9 = 6;
        goto LABEL_64;
      case 'L':
        v8 = 0;
        v9 = 4;
        goto LABEL_64;
      case 'M':
        v9 = 4;
        goto LABEL_62;
      case 'P':
        v9 = 0;
        goto LABEL_62;
      case 'Q':
        v8 = 0;
        v9 = 0;
        goto LABEL_64;
      case 'S':
        v8 = 0;
        v9 = 2;
LABEL_64:
        v42 = *(this + 24);
        if (v42 && (v43 = v42 - 1, v14 = *(*(this + 11) + 8 * v43), *(v14 + 16) == 243))
        {
          *(this + 24) = v43;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_74;
      case 'T':
        v9 = 2;
LABEL_62:
        v37 = swift::Demangle::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
        v41 = swift::Demangle::Demangler::demangleAssociatedTypeCompound(this, v37, v38, v39, v40);
        goto LABEL_71;
      case 'V':
        goto LABEL_7;
      case 'b':
        v8 = 0;
        v10 = 1;
        goto LABEL_7;
      case 'c':
        goto LABEL_70;
      case 'h':
        v8 = 0;
        v10 = 3;
        goto LABEL_7;
      case 'i':
        v36 = swift::Demangle::Demangler::demangleIndexAsNode(this);
        if (!v36)
        {
          return 0;
        }

        v8 = v36;
        v10 = 6;
        goto LABEL_7;
      case 'l':
        v8 = 0;
        v10 = 4;
        goto LABEL_7;
      case 'm':
        v9 = 4;
        goto LABEL_70;
      case 'p':
        v9 = 0;
        goto LABEL_70;
      case 's':
        v8 = 0;
        v10 = 2;
        goto LABEL_7;
      case 't':
        v9 = 2;
LABEL_70:
        v44 = swift::Demangle::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
        v41 = swift::Demangle::Demangler::demangleAssociatedTypeSimple(this, v44, v45, v46, v47);
LABEL_71:
        v14 = v41;
        v81 = v41;
        if (v41)
        {
          swift::Demangle::Vector<swift::Demangle::Node *>::push_back(this + 13, &v81, this);
        }

        v8 = 0;
LABEL_74:
        v10 = v9;
        if (v9 > 3)
        {
          goto LABEL_75;
        }

        goto LABEL_14;
      case 'v':
        v8 = 0;
        v10 = 5;
        goto LABEL_7;
      default:
        goto LABEL_6;
    }
  }

  v7 = *(this + 9);
LABEL_6:
  v8 = 0;
  v10 = 0;
  *(this + 9) = v7 - 1;
LABEL_7:
  v12 = swift::Demangle::Demangler::demangleGenericParamIndex(this, a2, a3, a4, a5);
  if (v12)
  {
    v13 = v12;
    v14 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v14;
    if (!v14 || v14 + 24 > *(this + 2))
    {
      v15 = 2 * *(this + 4);
      if (v15 <= 0x20)
      {
        v15 = 32;
      }

      *(this + 4) = v15;
      v16 = v15 + 8;
      v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      *v17 = *(this + 3);
      v14 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v17 + v16;
      *(this + 3) = v17;
    }

    *(this + 1) = v14 + 24;
    *(v14 + 16) = 243;
    *(v14 + 18) = 0;
    swift::Demangle::Node::addChild(v14, v13, this, a4, a5);
    if (v10 <= 3)
    {
LABEL_14:
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(this + 24);
          if (v20)
          {
            v21 = v20 - 1;
            v8 = *(*(this + 11) + 8 * v21);
            if (*(v8 + 8) == 243)
            {
              *(this + 24) = v21;
              if (v14)
              {
                v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v19;
                if (!v19 || v19 + 24 > *(this + 2))
                {
                  v22 = 2 * *(this + 4);
                  if (v22 <= 0x20)
                  {
                    v22 = 32;
                  }

                  *(this + 4) = v22;
                  v23 = v22 + 8;
                  v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
                  *v24 = *(this + 3);
                  v19 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(this + 2) = v24 + v23;
                  *(this + 3) = v24;
                }

                *(this + 1) = v19 + 24;
                v25 = 40;
                goto LABEL_109;
              }
            }
          }
        }

        else
        {
          v31 = *(this + 24);
          if (v31)
          {
            v32 = v31 - 1;
            v8 = *(*(this + 11) + 8 * v32);
            if (*(v8 + 8) == 243)
            {
              *(this + 24) = v32;
              if (v14)
              {
                v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
                *(this + 1) = v19;
                if (!v19 || v19 + 24 > *(this + 2))
                {
                  v33 = 2 * *(this + 4);
                  if (v33 <= 0x20)
                  {
                    v33 = 32;
                  }

                  *(this + 4) = v33;
                  v34 = v33 + 8;
                  v35 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
                  *v35 = *(this + 3);
                  v19 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
                  *(this + 2) = v35 + v34;
                  *(this + 3) = v35;
                }

                *(this + 1) = v19 + 24;
                v25 = 41;
                goto LABEL_109;
              }
            }
          }
        }
      }

      else
      {
        if (!v10)
        {
          v18 = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
          v19 = 0;
          if (!v14)
          {
            return v19;
          }

          v8 = v18;
          if (!v18)
          {
            return v19;
          }

          goto LABEL_34;
        }

        v26 = *(this + 24);
        if (v26)
        {
          v27 = v26 - 1;
          v8 = *(*(this + 11) + 8 * v27);
          if (*(v8 + 8) == 243)
          {
            *(this + 24) = v27;
            if (v14)
            {
LABEL_34:
              v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
              *(this + 1) = v19;
              if (!v19 || v19 + 24 > *(this + 2))
              {
                v28 = 2 * *(this + 4);
                if (v28 <= 0x20)
                {
                  v28 = 32;
                }

                *(this + 4) = v28;
                v29 = v28 + 8;
                v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
                *v30 = *(this + 3);
                v19 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
                *(this + 2) = v30 + v29;
                *(this + 3) = v30;
              }

              *(this + 1) = v19 + 24;
              v25 = 37;
              goto LABEL_109;
            }
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v10 <= 3)
    {
      goto LABEL_14;
    }
  }

LABEL_75:
  if (v10 > 5)
  {
    if (v10 == 6)
    {
      v19 = 0;
      if (!v8 || !v14)
      {
        return v19;
      }

      v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v19;
      if (!v19 || v19 + 24 > *(this + 2))
      {
        v52 = 2 * *(this + 4);
        if (v52 <= 0x20)
        {
          v52 = 32;
        }

        *(this + 4) = v52;
        v53 = v52 + 8;
        v54 = malloc_type_malloc(v52 + 8, 0x2004093837F09uLL);
        *v54 = *(this + 3);
        v19 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v54 + v53;
        *(this + 3) = v54;
      }

      *(this + 1) = v19 + 24;
      v25 = 367;
      goto LABEL_109;
    }

    v60 = *(this + 24);
    if (v60)
    {
      v61 = v60 - 1;
      v8 = *(*(this + 11) + 8 * v61);
      if (*(v8 + 8) == 243)
      {
        *(this + 24) = v61;
        if (v14)
        {
          v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(this + 1) = v19;
          if (!v19 || v19 + 24 > *(this + 2))
          {
            v62 = 2 * *(this + 4);
            if (v62 <= 0x20)
            {
              v62 = 32;
            }

            *(this + 4) = v62;
            v63 = v62 + 8;
            v64 = malloc_type_malloc(v62 + 8, 0x2004093837F09uLL);
            *v64 = *(this + 3);
            v19 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(this + 2) = v64 + v63;
            *(this + 3) = v64;
          }

          *(this + 1) = v19 + 24;
          v25 = 370;
LABEL_109:
          *(v19 + 16) = v25;
          *(v19 + 18) = 0;
          swift::Demangle::Node::addChild(v19, v14, this, a4, a5);
          v58 = v19;
          v59 = v8;
LABEL_110:
          swift::Demangle::Node::addChild(v58, v59, this, a4, a5);
          return v19;
        }
      }
    }

    return 0;
  }

  if (v10 != 4)
  {
    if (v14)
    {
      v19 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v19;
      if (!v19 || v19 + 24 > *(this + 2))
      {
        v55 = 2 * *(this + 4);
        if (v55 <= 0x20)
        {
          v55 = 32;
        }

        *(this + 4) = v55;
        v56 = v55 + 8;
        v57 = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
        *v57 = *(this + 3);
        v19 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v57 + v56;
        *(this + 3) = v57;
      }

      *(this + 1) = v19 + 24;
      *(v19 + 16) = 43;
      *(v19 + 18) = 0;
      v58 = v19;
      v59 = v14;
      goto LABEL_110;
    }

    return 0;
  }

  v48 = *(this + 9);
  if (v48 >= *(this + 8))
  {
    return 0;
  }

  v19 = 0;
  *(this + 9) = v48 + 1;
  v49 = *(*(this + 7) + v48);
  if (v49 > 81)
  {
    if (v49 > 84)
    {
      switch(v49)
      {
        case 'U':
          v51 = "U";
          v50 = 0;
          goto LABEL_136;
        case 'e':
          v67 = swift::Demangle::Demangler::demangleIndexAsNode(this);
          v50 = 0;
          if (v67)
          {
            v19 = v67;
            v51 = "e";
            goto LABEL_136;
          }

          break;
        case 'm':
          v65 = swift::Demangle::Demangler::demangleIndexAsNode(this);
          v50 = 0;
          if (v65)
          {
            v19 = v65;
            v51 = "m";
            goto LABEL_136;
          }

          break;
        default:
          return v19;
      }
    }

    else
    {
      if (v49 == 82)
      {
        v19 = 0;
        v50 = 0;
        v51 = "R";
        goto LABEL_136;
      }

      if (v49 != 83)
      {
        v19 = 0;
        v50 = 0;
        v51 = "T";
        goto LABEL_136;
      }

      v66 = swift::Demangle::Demangler::demangleIndexAsNode(this);
      v50 = 0;
      if (v66)
      {
        v19 = v66;
        v51 = "S";
        goto LABEL_136;
      }
    }

    return 0;
  }

  if (v49 > 68)
  {
    switch(v49)
    {
      case 'E':
        v19 = swift::Demangle::Demangler::demangleIndexAsNode(this);
        if (!v19)
        {
          return v19;
        }

        v50 = swift::Demangle::Demangler::demangleIndexAsNode(this);
        v51 = "E";
        break;
      case 'M':
        v19 = swift::Demangle::Demangler::demangleIndexAsNode(this);
        if (!v19)
        {
          return v19;
        }

        v50 = swift::Demangle::Demangler::demangleIndexAsNode(this);
        v51 = "M";
        break;
      case 'N':
        v19 = 0;
        v50 = 0;
        v51 = "N";
        break;
      default:
        return v19;
    }
  }

  else
  {
    switch(v49)
    {
      case 'B':
        v19 = 0;
        v50 = 0;
        v51 = "B";
        break;
      case 'C':
        v19 = 0;
        v50 = 0;
        v51 = "C";
        break;
      case 'D':
        v19 = 0;
        v50 = 0;
        v51 = "D";
        break;
      default:
        return v19;
    }
  }

LABEL_136:
  v68 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v68;
  if (!v68 || v68 + 24 > *(this + 2))
  {
    v69 = 2 * *(this + 4);
    if (v69 <= 0x20)
    {
      v69 = 32;
    }

    *(this + 4) = v69;
    v70 = v69 + 8;
    v71 = malloc_type_malloc(v69 + 8, 0x2004093837F09uLL);
    *v71 = *(this + 3);
    v68 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v71 + v70;
    *(this + 3) = v71;
  }

  *(this + 1) = v68 + 24;
  *(v68 + 16) = 103;
  *(v68 + 18) = 3;
  *v68 = v51;
  *(v68 + 8) = 1;
  if (!v14)
  {
    return 0;
  }

  v72 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v72;
  if (!v72 || v72 + 24 > *(this + 2))
  {
    v73 = 2 * *(this + 4);
    if (v73 <= 0x20)
    {
      v73 = 32;
    }

    *(this + 4) = v73;
    v74 = v73 + 8;
    v75 = malloc_type_malloc(v73 + 8, 0x2004093837F09uLL);
    *v75 = *(this + 3);
    v72 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v75 + v74;
    *(this + 3) = v75;
  }

  *(this + 1) = v72 + 24;
  *(v72 + 16) = 42;
  *(v72 + 18) = 0;
  swift::Demangle::Node::addChild(v72, v14, this, a4, a5);
  swift::Demangle::Node::addChild(v72, v68, this, v76, v77);
  if (v19)
  {
    swift::Demangle::Node::addChild(v72, v19, this, v78, v79);
  }

  if (v50)
  {
    swift::Demangle::Node::addChild(v72, v50, this, v78, v79);
  }

  return v72;
}

unint64_t swift::Demangle::Demangler::demangleStandardSubstitution(swift::Demangle::Demangler *this)
{
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v3 >= v2)
  {
    goto LABEL_6;
  }

  *(this + 9) = v3 + 1;
  v4 = *(*(this + 7) + v3);
  if (v4 == 67)
  {
    v5 = "__C_Synthesized";
    v6 = 15;
    goto LABEL_50;
  }

  if (v4 == 103)
  {
    SwiftType = swift::Demangle::Demangler::createSwiftType(this, 63, "Optional");
    v19 = *(this + 24);
    if (v19)
    {
      v20 = v19 - 1;
      v21 = *(*(this + 11) + 8 * v20);
      if (*(v21 + 8) == 243)
      {
        v22 = SwiftType;
        *(this + 24) = v20;
        v23 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v23;
        if (!v23 || v23 + 24 > *(this + 2))
        {
          v24 = 2 * *(this + 4);
          if (v24 <= 0x20)
          {
            v24 = 32;
          }

          *(this + 4) = v24;
          v25 = v24 + 8;
          v26 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
          *v26 = *(this + 3);
          v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v26 + v25;
          *(this + 3) = v26;
        }

        *(this + 1) = v23 + 24;
        *(v23 + 16) = 246;
        *(v23 + 18) = 0;
        swift::Demangle::Node::addChild(v23, v21, this, v17, v18);
        if (v22)
        {
          if (v23)
          {
            v29 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = v29;
            if (!v29 || v29 + 24 > *(this + 2))
            {
              v30 = 2 * *(this + 4);
              if (v30 <= 0x20)
              {
                v30 = 32;
              }

              *(this + 4) = v30;
              v31 = v30 + 8;
              v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
              *v32 = *(this + 3);
              v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v32 + v31;
              *(this + 3) = v32;
            }

            *(this + 1) = v29 + 24;
            *(v29 + 16) = 14;
            *(v29 + 18) = 0;
            swift::Demangle::Node::addChild(v29, v22, this, v27, v28);
            swift::Demangle::Node::addChild(v29, v23, this, v33, v34);
            StandardSubstitution = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = StandardSubstitution;
            if (!StandardSubstitution || StandardSubstitution + 24 > *(this + 2))
            {
              v37 = 2 * *(this + 4);
              if (v37 <= 0x20)
              {
                v37 = 32;
              }

              *(this + 4) = v37;
              v38 = v37 + 8;
              v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
              *v39 = *(this + 3);
              StandardSubstitution = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v39 + v38;
              *(this + 3) = v39;
            }

            *(this + 1) = StandardSubstitution + 24;
            *(StandardSubstitution + 16) = 243;
            *(StandardSubstitution + 18) = 0;
            swift::Demangle::Node::addChild(StandardSubstitution, v29, this, v35, v36);
            v41 = StandardSubstitution;
            swift::Demangle::Vector<swift::Demangle::Node *>::push_back(this + 13, &v41, this);
            return StandardSubstitution;
          }
        }
      }
    }

    return 0;
  }

  ++v3;
  if (v4 != 111)
  {
LABEL_6:
    v7 = v3 - 1;
    *(this + 9) = v7;
    if (v7 >= v2 || (v8 = *(this + 7), *(v8 + v7) - 48 > 9))
    {
LABEL_16:
      v9 = -1000;
      if (v7 >= v2)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v9 = 0;
    while (1)
    {
      v10 = *(v8 + v7);
      if ((v10 - 48) > 9)
      {
        break;
      }

      v11 = v10 + 10 * v9 - 48;
      if (v11 < v9)
      {
        goto LABEL_16;
      }

      *(this + 9) = ++v7;
      v9 = v11;
      if (v2 == v7)
      {
        v7 = v2;
        v9 = v11;
        break;
      }
    }

    if (v9 <= 2048)
    {
      if (v7 >= v2)
      {
        goto LABEL_20;
      }

LABEL_17:
      if (*(*(this + 7) + v7) == 99)
      {
        *(this + 9) = ++v7;
        v12 = 1;
        if (v7 >= v2)
        {
LABEL_19:
          v13 = 0;
LABEL_22:
          StandardSubstitution = swift::Demangle::Demangler::createStandardSubstitution(this, v13, v12);
          if (StandardSubstitution && v9 >= 2)
          {
            v15 = v9 + 1;
            do
            {
              v41 = StandardSubstitution;
              swift::Demangle::Vector<swift::Demangle::Node *>::push_back(this + 11, &v41, this);
              --v15;
            }

            while (v15 > 2);
          }

          return StandardSubstitution;
        }

LABEL_21:
        *(this + 9) = v7 + 1;
        v13 = *(*(this + 7) + v7);
        goto LABEL_22;
      }

LABEL_20:
      v12 = 0;
      if (v7 >= v2)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    return 0;
  }

  v5 = "__C";
  v6 = 3;
LABEL_50:

  return swift::Demangle::NodeFactory::createNode(this, 163, v5, v6);
}

int8x16_t *swift::Demangle::Demangler::demangleThunkOrSpecialization(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  if (v5 >= v6)
  {
    return 0;
  }

  Node = 0;
  v8 = v5 + 1;
  *(this + 9) = v5 + 1;
  v9 = *(this + 7);
  v10 = *(v9 + v5);
  v11 = 0;
  v12 = 211;
  switch(*(v9 + v5))
  {
    case 'A':
      v53 = 180;
      goto LABEL_173;
    case 'B':
      v82 = 95;
      goto LABEL_136;
    case 'C':
      v89 = *(this + 24);
      if (v89 && (v90 = v89 - 1, v55 = *(*(this + 11) + 8 * v90), *(v55 + 8) == 243))
      {
        *(this + 24) = v90;
      }

      else
      {
        v55 = 0;
      }

      v56 = 31;
      goto LABEL_186;
    case 'D':
      v53 = 57;
      goto LABEL_173;
    case 'E':
      v53 = 55;
      goto LABEL_173;
    case 'F':
      v53 = 56;
      goto LABEL_173;
    case 'G':
      v82 = 94;
      goto LABEL_136;
    case 'H':
    case 'h':
      if (v10 == 72)
      {
        v13 = 142;
      }

      else
      {
        v13 = 143;
      }

      if (v6 > v8 && *(v9 + v8) == 113)
      {
        *(this + 9) = v5 + 2;
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      memset(&__p, 0, sizeof(__p));
      v36 = *(this + 24);
      if (!v36)
      {
        goto LABEL_58;
      }

      v37 = v36 - 1;
      v38 = *(*(this + 11) + 8 * v37);
      *(this + 24) = v37;
      v158 = v38;
      if (!v38)
      {
        goto LABEL_58;
      }

      v39 = v38[8];
      if (v39 == 44)
      {
        goto LABEL_39;
      }

      if (v39 != 243)
      {
        goto LABEL_58;
      }

      v40 = this;
      std::vector<swift::Demangle::Node *>::emplace_back<swift::Demangle::Node * const&>(&__p, &v158);
      this = v40;
      v38 = 0;
      v37 = *(v40 + 24);
LABEL_39:
      if (!v37)
      {
        goto LABEL_217;
      }

      break;
    case 'I':
      v53 = 60;
      goto LABEL_173;
    case 'J':
      if (v6 <= v8)
      {
        goto LABEL_198;
      }

      v88 = *(v9 + v8);
      if (v88 == 79)
      {
        *(this + 9) = v5 + 2;

        return swift::Demangle::Demangler::demangleAutoDiffSelfReorderingReabstractionThunk(this, a2, a3, a4, a5);
      }

      else
      {
        if (v88 == 86)
        {
          *(this + 9) = v5 + 2;
          v145 = 338;
        }

        else
        {
          if (v88 == 83)
          {
            *(this + 9) = v5 + 2;

            return swift::Demangle::Demangler::demangleAutoDiffSubsetParametersThunk(this, a2, a3, a4, a5);
          }

LABEL_198:
          v145 = 334;
        }

        return swift::Demangle::Demangler::demangleAutoDiffFunctionOrSimpleThunk(this, v145, a3, a4, a5);
      }

    case 'K':
    case 'k':
      if (v6 - v8 >= 2 && *(v9 + v8) == 30061)
      {
        *(this + 9) = v5 + 3;
      }

      else
      {
        v15 = this;
        swift::Demangle::Demangler::nextIf(this, "MA", 2uLL);
        this = v15;
      }

      v16 = *(this + 9);
      if (v16 < *(this + 8) && *(*(this + 7) + v16) == 113)
      {
        *(this + 9) = v16 + 1;
      }

      v34 = *(this + 24);
      if (!v34)
      {
        return 0;
      }

      v35 = v34 - 1;
      Node = *(*(this + 11) + 8 * v35);
      *(this + 24) = v35;
      if (!Node)
      {
        return Node;
      }

      if (*(Node + 16) == 243)
      {
        operator new();
      }

      return 0;
    case 'L':
      v80 = this;
      v55 = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
      this = v80;
      v56 = 279;
      goto LABEL_186;
    case 'M':
      v101 = this;
      v55 = swift::Demangle::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
      this = v101;
      v56 = 7;
      goto LABEL_186;
    case 'N':
      v102 = this;
      v65 = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
      v70 = swift::Demangle::Demangler::popAssocTypePath(v102, v103, v104, v105, v106);
      v107 = *(v102 + 24);
      if (v107 && (v108 = v107 - 1, v73 = *(*(v102 + 11) + 8 * v108), *(v73 + 8) == 243))
      {
        *(v102 + 24) = v108;
      }

      else
      {
        v73 = 0;
      }

      v143 = v102;
      v144 = 281;
      goto LABEL_191;
    case 'O':
      v53 = 170;
      goto LABEL_173;
    case 'P':
      v77 = this;
      v78 = 89;
      goto LABEL_104;
    case 'Q':
    case 'Y':
      v17 = this;
      v18 = swift::Demangle::Demangler::demangleIndexAsNode(this);
      if (v10 == 81)
      {
        v19 = 342;
      }

      else
      {
        v19 = 343;
      }

      if (!v18)
      {
        return 0;
      }

      v20 = v18;
      v21 = v17;
      Node = (*(v17 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(v17 + 1) = Node;
      if (!Node || Node + 24 > *(v17 + 2))
      {
        v22 = 2 * *(v17 + 4);
        if (v22 <= 0x20)
        {
          v22 = 32;
        }

        *(v17 + 4) = v22;
        v23 = v22 + 8;
        v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
        v21 = v17;
        *v24 = *(v17 + 3);
        Node = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v17 + 2) = v24 + v23;
        *(v17 + 3) = v24;
      }

      *(v21 + 1) = Node + 24;
      *(Node + 16) = v19;
      *(Node + 18) = 0;
      v25 = Node;
      v26 = v20;
      goto LABEL_212;
    case 'R':
      goto LABEL_147;
    case 'S':
      v100 = this;
      this = v100;
      v56 = 204;
      goto LABEL_186;
    case 'T':
      if (v6 <= v8)
      {
        return 0;
      }

      *(this + 9) = v5 + 2;
      if (*(v9 + v8) != 73)
      {
        return 0;
      }

      v117 = this;
      this = v117;
      v56 = 276;
      goto LABEL_186;
    case 'U':
      v109 = *(this + 24);
      if (!v109)
      {
        return 0;
      }

      v110 = *(this + 11);
      v111 = *(v110 + 8 * (v109 - 1));
      if (*(v111 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v109 - 1;
      if (v109 == 1)
      {
        return 0;
      }

      v112 = v109 - 2;
      v113 = *(v110 + 8 * v112);
      *(this + 24) = v112;
      if (!v113)
      {
        return 0;
      }

      v114 = this;
      Node = swift::Demangle::NodeFactory::createNode(this, 213);
      swift::Demangle::Node::addChild(Node, v113, v114, v115, v116);
      v25 = Node;
      v26 = v111;
      v21 = v114;
      goto LABEL_212;
    case 'V':
      v57 = this;
      v61 = v57;
      v62 = 267;
      v63 = v58;
      goto LABEL_181;
    case 'W':
      v118 = this;
      v59 = swift::Demangle::Demangler::popProtocolConformance(v118, v120, v121, v122, v123);
      v61 = v118;
      v62 = 206;
      v63 = v119;
      goto LABEL_181;
    case 'X':
      v53 = 62;
      goto LABEL_173;
    case 'Z':
    case 'z':
      v27 = this;
      v28 = swift::Demangle::Demangler::demangleIndexAsNode(this);
      v29 = *(v27 + 24);
      if (!v29)
      {
        v33 = 0;
        v32 = 0;
        goto LABEL_205;
      }

      v30 = v29 - 1;
      v31 = *(v27 + 11);
      v32 = *(v31 + 8 * (v29 - 1));
      if (*(v32 + 8) == 44)
      {
        *(v27 + 24) = v30;
        if (v29 == 1)
        {
          v33 = 0;
          goto LABEL_205;
        }
      }

      else
      {
        v32 = 0;
        v30 = *(v27 + 24);
      }

      v33 = *(v31 + 8 * (v30 - 1));
      if (*(v33 + 8) == 243)
      {
        *(v27 + 24) = v30 - 1;
        if (v30 == 1)
        {
          goto LABEL_205;
        }

        --v30;
      }

      else
      {
        v33 = 0;
      }

      v146 = v30 - 1;
      v147 = *(v31 + 8 * v146);
      if (*(v147 + 8) == 243)
      {
        *(v27 + 24) = v146;
        goto LABEL_206;
      }

LABEL_205:
      v147 = 0;
LABEL_206:
      if (v10 == 122)
      {
        v148 = 172;
      }

      else
      {
        v148 = 173;
      }

      v25 = swift::Demangle::Demangler::createWithChildren(v27, v148, v147, v33, v28);
      Node = v25;
      if (v32 && v25)
      {
        v26 = v32;
        v21 = v27;
LABEL_212:
        swift::Demangle::Node::addChild(v25, v26, v21, a4, a5);
      }

      return Node;
    case 'a':
      v53 = 181;
      goto LABEL_173;
    case 'b':
      v74 = this;
      v63 = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
      v75 = *(v74 + 24);
      if (v75 && (v76 = v75 - 1, v59 = *(*(v74 + 11) + 8 * v76), *(v59 + 8) == 243))
      {
        *(v74 + 24) = v76;
      }

      else
      {
        v59 = 0;
      }

      v61 = v74;
      v62 = 282;
LABEL_181:

      return swift::Demangle::Demangler::createWithChildren(v61, v62, v59, v63, v60);
    case 'c':
      v54 = this;
      this = v54;
      v56 = 275;
      goto LABEL_186;
    case 'd':
      v53 = 58;
      goto LABEL_173;
    case 'e':
      v139 = this;
      swift::Demangle::Demangler::demangleBridgedMethodParams(this, &__p);
      v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        Node = swift::Demangle::NodeFactory::createNode(v139, 290, p_p, size);
        v140 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        Node = 0;
      }

      if (v140 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return Node;
    case 'f':

      return swift::Demangle::Demangler::demangleFunctionSpecialization(this, a2, a3, a4, a5);
    case 'g':
      v82 = 93;
      goto LABEL_136;
    case 'i':
      v82 = 98;
      goto LABEL_136;
    case 'j':
      v79 = this;
      this = v79;
      v56 = 277;
      goto LABEL_186;
    case 'l':
      v125 = this;
      v126 = swift::Demangle::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
      if (!v126)
      {
        return 0;
      }

      v55 = v126;
      this = v125;
      v56 = 283;
      goto LABEL_186;
    case 'm':
      v53 = 153;
      goto LABEL_173;
    case 'n':
      v64 = this;
      v65 = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
      v70 = swift::Demangle::Demangler::popAssocTypePath(v64, v66, v67, v68, v69);
      v71 = *(v64 + 24);
      if (v71 && (v72 = v71 - 1, v73 = *(*(v64 + 11) + 8 * v72), *(v73 + 8) == 243))
      {
        *(v64 + 24) = v72;
      }

      else
      {
        v73 = 0;
      }

      v143 = v64;
      v144 = 280;
LABEL_191:

      return swift::Demangle::Demangler::createWithChildren(v143, v144, v73, v70, v65);
    case 'o':
      v53 = 174;
      goto LABEL_173;
    case 'p':
      v77 = this;
      v78 = 88;
LABEL_104:
      v93 = swift::Demangle::Demangler::demangleSpecAttributes(this, v78, a3, a4, a5);
      v94 = *(v77 + 24);
      if (v94 && (v95 = v94 - 1, v96 = *(*(v77 + 11) + 8 * v95), *(v96 + 8) == 243))
      {
        *(v77 + 24) = v95;
      }

      else
      {
        v96 = 0;
      }

      v97 = swift::Demangle::Demangler::createWithChild(v77, 96, v96, v91, v92);
      Node = 0;
      if (v93 && v97)
      {
        swift::Demangle::Node::addChild(v93, v97, v77, v98, v99);
        return v93;
      }

      return Node;
    case 'q':
      v124 = this;
      this = v124;
      v56 = 278;
LABEL_186:

      return swift::Demangle::Demangler::createWithChild(this, v56, v55, a4, a5);
    case 'r':
      v11 = 0;
      v12 = 210;
      goto LABEL_147;
    case 's':
      v82 = 97;
LABEL_136:

      return swift::Demangle::Demangler::demangleGenericSpecialization(this, v82, 0, a4, a5);
    case 't':

      return swift::Demangle::Demangler::demangleGenericSpecializationWithDroppedArguments(this, a2, a3, a4, a5);
    case 'u':
      v53 = 333;
      goto LABEL_173;
    case 'v':
      v83 = this;
      v84 = swift::Demangle::Demangler::demangleIndex(this);
      if ((v84 & 0x80000000) != 0)
      {
        return 0;
      }

      v85 = *(v83 + 9);
      if (v85 < *(v83 + 8) && (*(v83 + 9) = v85 + 1, *(*(v83 + 7) + v85) == 114))
      {
        v86 = v84;
        v87 = 301;
      }

      else
      {
        v86 = v84;
        v87 = 300;
      }

      return swift::Demangle::NodeFactory::createNode(v83, v87, v86);
    case 'w':
      if (v6 <= v8)
      {
        return 0;
      }

      Node = 0;
      *(this + 9) = v5 + 2;
      v52 = *(v9 + v8);
      if (v52 <= 0x61)
      {
        if (v52 == 66)
        {
          v53 = 347;
        }

        else
        {
          if (v52 != 83)
          {
            return Node;
          }

          v53 = 354;
        }
      }

      else
      {
        switch(v52)
        {
          case 'd':
            v53 = 372;
            break;
          case 'c':
            v53 = 371;
            break;
          case 'b':
            v53 = 346;
            break;
          default:
            return Node;
        }
      }

LABEL_173:

      return swift::Demangle::NodeFactory::createNode(this, v53);
    case 'x':
      v53 = 61;
      goto LABEL_173;
    case 'y':
      v12 = 212;
      v11 = 1;
LABEL_147:
      Node = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = Node;
      if (!Node || Node + 24 > *(this + 2))
      {
        v127 = 2 * *(this + 4);
        if (v127 <= 0x20)
        {
          v127 = 32;
        }

        *(this + 4) = v127;
        v128 = v127 + 8;
        v129 = this;
        v130 = malloc_type_malloc(v127 + 8, 0x2004093837F09uLL);
        this = v129;
        *v130 = *(v129 + 3);
        Node = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v130 + v128;
        *(this + 3) = v130;
      }

      *(this + 1) = Node + 24;
      *(Node + 16) = v12;
      *(Node + 18) = 0;
      v131 = *(this + 24);
      if (!v131)
      {
        return Node;
      }

      v132 = *(*(this + 11) + 8 * (v131 - 1));
      if (*(v132 + 8) == 44)
      {
        *(this + 24) = v131 - 1;
        v133 = this;
        swift::Demangle::Node::addChild(Node, v132, this, a4, a5);
        this = v133;
        v131 = *(v133 + 24);
      }

      if (!v11)
      {
        goto LABEL_159;
      }

      if (!v131)
      {
        return Node;
      }

      v134 = *(*(this + 11) + 8 * (v131 - 1));
      if (*(v134 + 8) == 243)
      {
        *(this + 24) = v131 - 1;
        v135 = this;
        swift::Demangle::Node::addChild(Node, v134, this, a4, a5);
        this = v135;
        v131 = *(v135 + 24);
LABEL_159:
        if (!v131)
        {
          return Node;
        }
      }

      v136 = *(*(this + 11) + 8 * (v131 - 1));
      if (*(v136 + 8) == 243)
      {
        *(this + 24) = v131 - 1;
        v137 = this;
        swift::Demangle::Node::addChild(Node, v136, this, a4, a5);
        this = v137;
        v131 = *(v137 + 24);
        if (!v131)
        {
          return Node;
        }
      }

      v138 = v131 - 1;
      v26 = *(*(this + 11) + 8 * v138);
      if (*(v26 + 8) != 243)
      {
        return Node;
      }

      *(this + 24) = v138;
      v21 = this;
      v25 = Node;
      goto LABEL_212;
    default:
      return Node;
  }

  do
  {
    v42 = v37 - 1;
    v43 = *(*(this + 11) + 8 * v42);
    *(this + 24) = v42;
    if (!v43)
    {
      break;
    }

    if (*(v43 + 16) != 243)
    {
LABEL_58:
      Node = 0;
      goto LABEL_59;
    }

    v44 = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ < __p.__r_.__value_.__r.__words[2])
    {
      *__p.__r_.__value_.__l.__size_ = v43;
      v41 = v44 + 8;
    }

    else
    {
      v45 = __p.__r_.__value_.__r.__words[0];
      v46 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
      v47 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3;
      v48 = v47 + 1;
      if ((v47 + 1) >> 61)
      {
        std::string::__throw_out_of_range[abi:nn200100]();
      }

      v49 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 2 > v48)
      {
        v48 = v49 >> 2;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v50 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (!(v50 >> 61))
        {
          operator new();
        }

        std::string::__throw_out_of_range[abi:nn200100]();
      }

      v51 = this;
      *(8 * v47) = v43;
      v41 = 8 * v47 + 8;
      memcpy(0, v45, v46);
      __p.__r_.__value_.__r.__words[0] = 0;
      *&__p.__r_.__value_.__r.__words[1] = v41;
      if (v45)
      {
        operator delete(v45);
      }

      this = v51;
    }

    __p.__r_.__value_.__l.__size_ = v41;
    v37 = *(this + 24);
  }

  while (v37);
LABEL_217:
  v149 = this;
  Node = swift::Demangle::NodeFactory::createNode(this, v13);
  v152 = __p.__r_.__value_.__l.__size_;
  v153 = __p.__r_.__value_.__r.__words[0];
  while (v152 != v153)
  {
    v154 = *(v152 - 8);
    v152 -= 8;
    swift::Demangle::Node::addChild(Node, v154, v149, v150, v151);
  }

  if (v38)
  {
    swift::Demangle::Node::addChild(Node, v38, v149, v150, v151);
  }

  if (v14)
  {
    v155 = swift::Demangle::NodeFactory::createNode(v149, 228);
    swift::Demangle::Node::addChild(Node, v155, v149, v156, v157);
  }

LABEL_59:
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Node;
}

unsigned int *swift::Demangle::Demangler::demangleWitness(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  if (v5 >= v6)
  {
    return 0;
  }

  result = 0;
  v9 = v5 + 1;
  *(this + 9) = v5 + 1;
  v10 = *(this + 7);
  v11 = *(v10 + v5);
  switch(*(v10 + v5))
  {
    case 'C':
      v59 = *(this + 24);
      if (!v59)
      {
        return 0;
      }

      v60 = v59 - 1;
      v41 = *(*(this + 11) + 8 * (v59 - 1));
      if (*(v41 + 16) != 243 && !swift::Demangle::isContext())
      {
        return 0;
      }

      *(this + 24) = v60;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v61 = 2 * *(this + 4);
        if (v61 <= 0x20)
        {
          v61 = 32;
        }

        *(this + 4) = v61;
        v62 = v61 + 8;
        v63 = malloc_type_malloc(v61 + 8, 0x2004093837F09uLL);
        v64 = v63 + v62;
        *v63 = *(this + 3);
        v42 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v64;
        *(this + 3) = v63;
      }

      *(this + 1) = v42 + 24;
      v47 = 64;
      goto LABEL_132;
    case 'G':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v48 = 2 * *(this + 4);
        if (v48 <= 0x20)
        {
          v48 = 32;
        }

        *(this + 4) = v48;
        v49 = v48 + 8;
        v50 = malloc_type_malloc(v48 + 8, 0x2004093837F09uLL);
        v51 = v50 + v49;
        *v50 = *(this + 3);
        v42 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v51;
        *(this + 3) = v50;
      }

      *(this + 1) = v42 + 24;
      v47 = 90;
      goto LABEL_132;
    case 'I':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v65 = 2 * *(this + 4);
        if (v65 <= 0x20)
        {
          v65 = 32;
        }

        *(this + 4) = v65;
        v66 = v65 + 8;
        v67 = malloc_type_malloc(v65 + 8, 0x2004093837F09uLL);
        v68 = v67 + v66;
        *v67 = *(this + 3);
        v42 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v68;
        *(this + 3) = v67;
      }

      *(this + 1) = v42 + 24;
      v47 = 91;
      goto LABEL_132;
    case 'J':

      return swift::Demangle::Demangler::demangleDifferentiabilityWitness(this, a2, a3, a4, a5);
    case 'L':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      v31 = *(this + 24);
      if (!v31)
      {
        return 0;
      }

      v32 = v31 - 1;
      v33 = *(*(this + 11) + 8 * v32);
      if (*(v33 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v32;
      if (!result)
      {
        return result;
      }

      v34 = result;
      v35 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v35;
      if (!v35 || v35 + 24 > *(this + 2))
      {
        v36 = 2 * *(this + 4);
        if (v36 <= 0x20)
        {
          v36 = 32;
        }

        *(this + 4) = v36;
        v37 = v36 + 8;
        v38 = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
        v39 = v38 + v37;
        *v38 = *(this + 3);
        v35 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v39;
        *(this + 3) = v38;
      }

      *(this + 1) = v35 + 24;
      v40 = 145;
      goto LABEL_103;
    case 'O':
      if (v9 >= v6)
      {
        return 0;
      }

      break;
    case 'P':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v69 = 2 * *(this + 4);
        if (v69 <= 0x20)
        {
          v69 = 32;
        }

        *(this + 4) = v69;
        v70 = v69 + 8;
        v71 = malloc_type_malloc(v69 + 8, 0x2004093837F09uLL);
        v72 = v71 + v70;
        *v71 = *(this + 3);
        v42 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v72;
        *(this + 3) = v71;
      }

      *(this + 1) = v42 + 24;
      v47 = 207;
      goto LABEL_132;
    case 'S':
      result = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v73 = 2 * *(this + 4);
        if (v73 <= 0x20)
        {
          v73 = 32;
        }

        *(this + 4) = v73;
        v74 = v73 + 8;
        v75 = malloc_type_malloc(v73 + 8, 0x2004093837F09uLL);
        v76 = v75 + v74;
        *v75 = *(this + 3);
        v42 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v76;
        *(this + 3) = v75;
      }

      *(this + 1) = v42 + 24;
      v47 = 205;
      goto LABEL_132;
    case 'T':
      v97 = *(this + 24);
      if (v97 && (v98 = v97 - 1, v99 = *(*(this + 11) + 8 * v98), *(v99 + 16) == 243))
      {
        *(this + 24) = v98;
      }

      else
      {
        v99 = 0;
      }

      v116 = swift::Demangle::Demangler::popAssocTypePath(this, a2, a3, a4, a5);
      v121 = swift::Demangle::Demangler::popProtocolConformance(this, v117, v118, v119, v120);
      v122 = this;
      v123 = 9;
      v124 = v116;
      a5 = v99;
      goto LABEL_146;
    case 'V':
      v91 = *(this + 24);
      if (!v91)
      {
        return 0;
      }

      v92 = v91 - 1;
      v41 = *(*(this + 11) + 8 * v92);
      if (*(v41 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v92;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v93 = 2 * *(this + 4);
        if (v93 <= 0x20)
        {
          v93 = 32;
        }

        *(this + 4) = v93;
        v94 = v93 + 8;
        v95 = malloc_type_malloc(v93 + 8, 0x2004093837F09uLL);
        v96 = v95 + v94;
        *v95 = *(this + 3);
        v42 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v96;
        *(this + 3) = v95;
      }

      *(this + 1) = v42 + 24;
      v47 = 265;
      goto LABEL_132;
    case 'Z':
    case 'z':
      v12 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v12;
      if (!v12 || v12 + 24 > *(this + 2))
      {
        v13 = 2 * *(this + 4);
        if (v13 <= 0x20)
        {
          v13 = 32;
        }

        *(this + 4) = v13;
        v14 = v13 + 8;
        v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
        v16 = v15 + v14;
        *v15 = *(this + 3);
        v12 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v16;
        *(this + 3) = v15;
      }

      *(this + 1) = v12 + 24;
      *(v12 + 16) = 331;
      *(v12 + 18) = 0;
      v17 = *(this + 24);
      if (v17 && (v18 = *(this + 11), *(*(v18 + 8 * (v17 - 1)) + 16) == 288))
      {
        *(this + 24) = v17 - 1;
        if (v17 != 1)
        {
          v19 = v17 - 2;
          v20 = *(v18 + 8 * v19);
          v21 = *(v20 + 16);
          v22 = (v21 - 183) > 0x3D || ((1 << (v21 + 73)) & 0x200000020000010DLL) == 0;
          if (!v22 || ((v21 - 103) <= 0x2B ? (v23 = ((1 << (v21 - 103)) & 0x80004000001) == 0) : (v23 = 1), !v23 || v21 == 361))
          {
            *(this + 24) = v19;
            operator new();
          }
        }

        return 0;
      }

      else
      {
        result = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
        if (result)
        {
          if (v11 == 90)
          {
            v131 = 329;
          }

          else
          {
            v131 = 330;
          }

          if (v12)
          {
            v132 = result;
            v133 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = v133;
            if (!v133 || v133 + 24 > *(this + 2))
            {
              v134 = 2 * *(this + 4);
              if (v134 <= 0x20)
              {
                v134 = 32;
              }

              *(this + 4) = v134;
              v135 = v134 + 8;
              v136 = malloc_type_malloc(v134 + 8, 0x2004093837F09uLL);
              v137 = v136 + v135;
              *v136 = *(this + 3);
              v133 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v137;
              *(this + 3) = v136;
            }

            *(this + 1) = v133 + 24;
            *(v133 + 16) = v131;
            *(v133 + 18) = 0;
            swift::Demangle::Node::addChild(v133, v132, this, v129, v130);
            swift::Demangle::Node::addChild(v133, v12, this, v138, v139);
            return v133;
          }

          else
          {
            return 0;
          }
        }
      }

      return result;
    case 'a':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v43 = 2 * *(this + 4);
        if (v43 <= 0x20)
        {
          v43 = 32;
        }

        *(this + 4) = v43;
        v44 = v43 + 8;
        v45 = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
        v46 = v45 + v44;
        *v45 = *(this + 3);
        v42 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v46;
        *(this + 3) = v45;
      }

      *(this + 1) = v42 + 24;
      v47 = 208;
      goto LABEL_132;
    case 'b':
      v26 = *(this + 24);
      if (v26 && (v27 = v26 - 1, v28 = *(*(this + 11) + 8 * v27), *(v28 + 8) == 243))
      {
        *(this + 24) = v27;
      }

      else
      {
        v28 = 0;
      }

      v110 = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      result = 0;
      if (!v28 || !v110)
      {
        return result;
      }

      v35 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v35;
      if (!v35 || v35 + 24 > *(this + 2))
      {
        v111 = 2 * *(this + 4);
        if (v111 <= 0x20)
        {
          v111 = 32;
        }

        *(this + 4) = v111;
        v112 = v111 + 8;
        v113 = malloc_type_malloc(v111 + 8, 0x2004093837F09uLL);
        v114 = v113 + v112;
        *v113 = *(this + 3);
        v35 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v114;
        *(this + 3) = v113;
      }

      *(this + 1) = v35 + 24;
      v115 = 10;
      goto LABEL_158;
    case 'l':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      v77 = *(this + 24);
      if (!v77)
      {
        return 0;
      }

      v78 = v77 - 1;
      v33 = *(*(this + 11) + 8 * v78);
      if (*(v33 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v78;
      if (!result)
      {
        return result;
      }

      v34 = result;
      v35 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v35;
      if (!v35 || v35 + 24 > *(this + 2))
      {
        v79 = 2 * *(this + 4);
        if (v79 <= 0x20)
        {
          v79 = 32;
        }

        *(this + 4) = v79;
        v80 = v79 + 8;
        v81 = malloc_type_malloc(v79 + 8, 0x2004093837F09uLL);
        v82 = v81 + v80;
        *v81 = *(this + 3);
        v35 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v82;
        *(this + 3) = v81;
      }

      *(this + 1) = v35 + 24;
      v40 = 144;
LABEL_103:
      *(v35 + 16) = v40;
      *(v35 + 18) = 0;
      swift::Demangle::Node::addChild(v35, v33, this, v29, v30);
      v85 = v35;
      v86 = v34;
      goto LABEL_159;
    case 'p':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v87 = 2 * *(this + 4);
        if (v87 <= 0x20)
        {
          v87 = 32;
        }

        *(this + 4) = v87;
        v88 = v87 + 8;
        v89 = malloc_type_malloc(v87 + 8, 0x2004093837F09uLL);
        v90 = v89 + v88;
        *v89 = *(this + 3);
        v42 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v90;
        *(this + 3) = v89;
      }

      *(this + 1) = v42 + 24;
      v47 = 209;
      goto LABEL_132;
    case 'r':
      result = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v41 = result;
      v42 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v42;
      if (!v42 || v42 + 24 > *(this + 2))
      {
        v102 = 2 * *(this + 4);
        if (v102 <= 0x20)
        {
          v102 = 32;
        }

        *(this + 4) = v102;
        v103 = v102 + 8;
        v104 = malloc_type_malloc(v102 + 8, 0x2004093837F09uLL);
        v105 = v104 + v103;
        *v104 = *(this + 3);
        v42 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v105;
        *(this + 3) = v104;
      }

      *(this + 1) = v42 + 24;
      v47 = 92;
LABEL_132:
      *(v42 + 16) = v47;
      *(v42 + 18) = 0;
      v106 = v42;
      v107 = v41;
      goto LABEL_133;
    case 't':
      v100 = *(this + 24);
      {
        *(this + 24) = v101;
      }

      else
      {
        v28 = 0;
      }

      v110 = swift::Demangle::Demangler::popProtocolConformance(this, a2, a3, a4, a5);
      result = 0;
      if (!v28 || !v110)
      {
        return result;
      }

      v35 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v35;
      if (!v35 || v35 + 24 > *(this + 2))
      {
        v125 = 2 * *(this + 4);
        if (v125 <= 0x20)
        {
          v125 = 32;
        }

        *(this + 4) = v125;
        v126 = v125 + 8;
        v127 = malloc_type_malloc(v125 + 8, 0x2004093837F09uLL);
        v128 = v127 + v126;
        *v127 = *(this + 3);
        v35 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v128;
        *(this + 3) = v127;
      }

      *(this + 1) = v35 + 24;
      v115 = 6;
LABEL_158:
      *(v35 + 16) = v115;
      *(v35 + 18) = 0;
      swift::Demangle::Node::addChild(v35, v110, this, v108, v109);
      v85 = v35;
      v86 = v28;
LABEL_159:
      swift::Demangle::Node::addChild(v85, v86, this, v83, v84);
      return v35;
    case 'v':
      if (v9 >= v6)
      {
        return 0;
      }

      *(this + 9) = v5 + 2;
      v24 = *(v10 + v9);
      if (v24 == 100)
      {
        v25 = 0;
      }

      else
      {
        if (v24 != 105)
        {
          return 0;
        }

        v25 = 1;
      }

      v140 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v140;
      if (!v140 || v140 + 24 > *(this + 2))
      {
        v141 = 2 * *(this + 4);
        if (v141 <= 0x20)
        {
          v141 = 32;
        }

        *(this + 4) = v141;
        v142 = v141 + 8;
        v143 = malloc_type_malloc(v141 + 8, 0x2004093837F09uLL);
        v144 = v143 + v142;
        *v143 = *(this + 3);
        v140 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v144;
        *(this + 3) = v143;
      }

      *(this + 1) = v140 + 24;
      *(v140 + 16) = 54;
      *(v140 + 18) = 4;
      *v140 = v25;
      v145 = *(this + 24);
      if (!v145)
      {
        return 0;
      }

      v146 = v145 - 1;
      v147 = *(*(this + 11) + 8 * (v145 - 1));
      if (*(v147 + 8) != 243 && !swift::Demangle::isContext())
      {
        return 0;
      }

      *(this + 24) = v146;
      v148 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v148;
      if (!v148 || v148 + 24 > *(this + 2))
      {
        v149 = 2 * *(this + 4);
        if (v149 <= 0x20)
        {
          v149 = 32;
        }

        *(this + 4) = v149;
        v150 = v149 + 8;
        v151 = malloc_type_malloc(v149 + 8, 0x2004093837F09uLL);
        *v151 = *(this + 3);
        v148 = (v151 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v151 + v150;
        *(this + 3) = v151;
      }

      *(this + 1) = v148 + 24;
      *(v148 + 16) = 75;
      *(v148 + 18) = 0;
      v42 = v148;
      swift::Demangle::Node::addChild(v148, v140, this, a4, a5);
      v106 = v42;
      v107 = v147;
LABEL_133:
      swift::Demangle::Node::addChild(v106, v107, this, a4, a5);
      return v42;
    default:
      return result;
  }

  result = 0;
  *(this + 9) = v5 + 2;
  switch(*(v10 + v9))
  {
    case 'B':
      v52 = *(this + 24);
      if (!v52)
      {
        goto LABEL_295;
      }

      v53 = v52 - 1;
      v54 = *(this + 11);
      v55 = *(v54 + 8 * (v52 - 1));
      v56 = v55[8];
      if (v56 == 243)
      {
        *(this + 24) = v53;
      }

      else
      {
        if (v56 == 44)
        {
          *(this + 24) = v53;
          if (v52 == 1 || (v57 = v52 - 2, v58 = *(v54 + 8 * v57), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v57;
          }

          v232 = this;
          v233 = 362;
LABEL_313:

          return swift::Demangle::Demangler::createWithChildren(v232, v233, v58, v55, a5);
        }

LABEL_295:
        v55 = 0;
      }

      v234 = this;
      v235 = 362;
      goto LABEL_342;
    case 'C':
      v172 = *(this + 24);
      if (!v172)
      {
        goto LABEL_291;
      }

      v173 = v172 - 1;
      v174 = *(this + 11);
      v55 = *(v174 + 8 * (v172 - 1));
      v175 = v55[8];
      if (v175 == 243)
      {
        *(this + 24) = v173;
      }

      else
      {
        if (v175 == 44)
        {
          *(this + 24) = v173;
          if (v172 == 1 || (v176 = v172 - 2, v58 = *(v174 + 8 * v176), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v176;
          }

          v232 = this;
          v233 = 363;
          goto LABEL_313;
        }

LABEL_291:
        v55 = 0;
      }

      v234 = this;
      v235 = 363;
      goto LABEL_342;
    case 'D':
      v192 = *(this + 24);
      if (!v192)
      {
        goto LABEL_296;
      }

      v193 = v192 - 1;
      v194 = *(this + 11);
      v55 = *(v194 + 8 * (v192 - 1));
      v195 = v55[8];
      if (v195 == 243)
      {
        *(this + 24) = v193;
      }

      else
      {
        if (v195 == 44)
        {
          *(this + 24) = v193;
          if (v192 == 1 || (v196 = v192 - 2, v58 = *(v194 + 8 * v196), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v196;
          }

          v232 = this;
          v233 = 364;
          goto LABEL_313;
        }

LABEL_296:
        v55 = 0;
      }

      v234 = this;
      v235 = 364;
      goto LABEL_342;
    case 'F':
      v187 = *(this + 24);
      if (!v187)
      {
        goto LABEL_294;
      }

      v188 = v187 - 1;
      v189 = *(this + 11);
      v55 = *(v189 + 8 * (v187 - 1));
      v190 = v55[8];
      if (v190 == 243)
      {
        *(this + 24) = v188;
      }

      else
      {
        if (v190 == 44)
        {
          *(this + 24) = v188;
          if (v187 == 1 || (v191 = v187 - 2, v58 = *(v189 + 8 * v191), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v191;
          }

          v232 = this;
          v233 = 365;
          goto LABEL_313;
        }

LABEL_294:
        v55 = 0;
      }

      v234 = this;
      v235 = 365;
      goto LABEL_342;
    case 'H':
      v162 = *(this + 24);
      if (!v162)
      {
        goto LABEL_289;
      }

      v163 = v162 - 1;
      v164 = *(this + 11);
      v55 = *(v164 + 8 * (v162 - 1));
      v165 = v55[8];
      if (v165 == 243)
      {
        *(this + 24) = v163;
      }

      else
      {
        if (v165 == 44)
        {
          *(this + 24) = v163;
          if (v162 == 1 || (v166 = v162 - 2, v58 = *(v164 + 8 * v166), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v166;
          }

          v232 = this;
          v233 = 366;
          goto LABEL_313;
        }

LABEL_289:
        v55 = 0;
      }

      v234 = this;
      v235 = 366;
      goto LABEL_342;
    case 'b':
      v177 = *(this + 24);
      if (!v177)
      {
        goto LABEL_292;
      }

      v178 = v177 - 1;
      v179 = *(this + 11);
      v55 = *(v179 + 8 * (v177 - 1));
      v180 = v55[8];
      if (v180 == 243)
      {
        *(this + 24) = v178;
      }

      else
      {
        if (v180 == 44)
        {
          *(this + 24) = v178;
          if (v177 == 1 || (v181 = v177 - 2, v58 = *(v179 + 8 * v181), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v181;
          }

          v232 = this;
          v233 = 295;
          goto LABEL_313;
        }

LABEL_292:
        v55 = 0;
      }

      v234 = this;
      v235 = 295;
      goto LABEL_342;
    case 'c':
      v197 = *(this + 24);
      if (!v197)
      {
        goto LABEL_297;
      }

      v198 = v197 - 1;
      v199 = *(this + 11);
      v55 = *(v199 + 8 * (v197 - 1));
      v200 = v55[8];
      if (v200 == 243)
      {
        *(this + 24) = v198;
      }

      else
      {
        if (v200 == 44)
        {
          *(this + 24) = v198;
          if (v197 == 1 || (v201 = v197 - 2, v58 = *(v199 + 8 * v201), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v201;
          }

          v232 = this;
          v233 = 296;
          goto LABEL_313;
        }

LABEL_297:
        v55 = 0;
      }

      v234 = this;
      v235 = 296;
      goto LABEL_342;
    case 'd':
      v202 = *(this + 24);
      if (!v202)
      {
        goto LABEL_298;
      }

      v203 = v202 - 1;
      v204 = *(this + 11);
      v55 = *(v204 + 8 * (v202 - 1));
      v205 = v55[8];
      if (v205 == 243)
      {
        *(this + 24) = v203;
      }

      else
      {
        if (v205 == 44)
        {
          *(this + 24) = v203;
          if (v202 == 1 || (v206 = v202 - 2, v58 = *(v204 + 8 * v206), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v206;
          }

          v232 = this;
          v233 = 297;
          goto LABEL_313;
        }

LABEL_298:
        v55 = 0;
      }

      v234 = this;
      v235 = 297;
      goto LABEL_342;
    case 'e':
      v222 = *(this + 24);
      if (!v222)
      {
        goto LABEL_302;
      }

      v223 = v222 - 1;
      v224 = *(this + 11);
      v55 = *(v224 + 8 * (v222 - 1));
      v225 = v55[8];
      if (v225 == 243)
      {
        *(this + 24) = v223;
      }

      else
      {
        if (v225 == 44)
        {
          *(this + 24) = v223;
          if (v222 == 1 || (v226 = v222 - 2, v58 = *(v224 + 8 * v226), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v226;
          }

          v232 = this;
          v233 = 292;
          goto LABEL_313;
        }

LABEL_302:
        v55 = 0;
      }

      v234 = this;
      v235 = 292;
      goto LABEL_342;
    case 'f':
      v217 = *(this + 24);
      if (!v217)
      {
        goto LABEL_301;
      }

      v218 = v217 - 1;
      v219 = *(this + 11);
      v55 = *(v219 + 8 * (v217 - 1));
      v220 = v55[8];
      if (v220 == 243)
      {
        *(this + 24) = v218;
      }

      else
      {
        if (v220 == 44)
        {
          *(this + 24) = v218;
          if (v217 == 1 || (v221 = v217 - 2, v58 = *(v219 + 8 * v221), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v221;
          }

          v232 = this;
          v233 = 298;
          goto LABEL_313;
        }

LABEL_301:
        v55 = 0;
      }

      v234 = this;
      v235 = 298;
      goto LABEL_342;
    case 'g':
      v157 = *(this + 24);
      if (!v157)
      {
        goto LABEL_288;
      }

      v158 = v157 - 1;
      v159 = *(this + 11);
      v55 = *(v159 + 8 * (v157 - 1));
      v160 = v55[8];
      if (v160 == 243)
      {
        *(this + 24) = v158;
      }

      else
      {
        if (v160 == 44)
        {
          *(this + 24) = v158;
          if (v157 == 1 || (v161 = v157 - 2, v58 = *(v159 + 8 * v161), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v161;
          }

          v232 = this;
          v233 = 359;
          goto LABEL_313;
        }

LABEL_288:
        v55 = 0;
      }

      v234 = this;
      v235 = 359;
      goto LABEL_342;
    case 'h':
      v182 = *(this + 24);
      if (!v182)
      {
        goto LABEL_293;
      }

      v183 = v182 - 1;
      v184 = *(this + 11);
      v55 = *(v184 + 8 * (v182 - 1));
      v185 = v55[8];
      if (v185 == 243)
      {
        *(this + 24) = v183;
      }

      else
      {
        if (v185 == 44)
        {
          *(this + 24) = v183;
          if (v182 == 1 || (v186 = v182 - 2, v58 = *(v184 + 8 * v186), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v186;
          }

          v232 = this;
          v233 = 299;
          goto LABEL_313;
        }

LABEL_293:
        v55 = 0;
      }

      v234 = this;
      v235 = 299;
      goto LABEL_342;
    case 'i':
      a5 = swift::Demangle::Demangler::demangleIndexAsNode(this);
      v167 = *(this + 24);
      if (!v167)
      {
        goto LABEL_290;
      }

      v168 = v167 - 1;
      v169 = *(this + 11);
      v124 = *(v169 + 8 * (v167 - 1));
      v170 = v124[8];
      if (v170 == 243)
      {
        *(this + 24) = v168;
        goto LABEL_311;
      }

      if (v170 != 44)
      {
LABEL_290:
        v124 = 0;
LABEL_311:
        v232 = this;
        v233 = 357;
        goto LABEL_312;
      }

      *(this + 24) = v168;
      if (v167 == 1 || (v171 = v167 - 2, v121 = *(v169 + 8 * v171), *(v121 + 8) != 243))
      {
        v121 = 0;
      }

      else
      {
        *(this + 24) = v171;
      }

      v122 = this;
      v123 = 357;
LABEL_146:

      return swift::Demangle::Demangler::createWithChildren(v122, v123, v121, v124, a5);
    case 'j':
      a5 = swift::Demangle::Demangler::demangleIndexAsNode(this);
      v152 = *(this + 24);
      if (!v152)
      {
        goto LABEL_287;
      }

      v153 = v152 - 1;
      v154 = *(this + 11);
      v124 = *(v154 + 8 * (v152 - 1));
      v155 = v124[8];
      if (v155 == 243)
      {
        *(this + 24) = v153;
      }

      else
      {
        if (v155 == 44)
        {
          *(this + 24) = v153;
          if (v152 == 1 || (v156 = v152 - 2, v121 = *(v154 + 8 * v156), *(v121 + 8) != 243))
          {
            v121 = 0;
          }

          else
          {
            *(this + 24) = v156;
          }

          v122 = this;
          v123 = 358;
          goto LABEL_146;
        }

LABEL_287:
        v124 = 0;
      }

      v232 = this;
      v233 = 358;
LABEL_312:
      v58 = v124;
      v55 = a5;
      goto LABEL_313;
    case 'r':
      v207 = *(this + 24);
      if (!v207)
      {
        goto LABEL_299;
      }

      v208 = v207 - 1;
      v209 = *(this + 11);
      v55 = *(v209 + 8 * (v207 - 1));
      v210 = v55[8];
      if (v210 == 243)
      {
        *(this + 24) = v208;
      }

      else
      {
        if (v210 == 44)
        {
          *(this + 24) = v208;
          if (v207 == 1 || (v211 = v207 - 2, v58 = *(v209 + 8 * v211), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v211;
          }

          v232 = this;
          v233 = 293;
          goto LABEL_313;
        }

LABEL_299:
        v55 = 0;
      }

      v234 = this;
      v235 = 293;
      goto LABEL_342;
    case 's':
      v212 = *(this + 24);
      if (!v212)
      {
        goto LABEL_300;
      }

      v213 = v212 - 1;
      v214 = *(this + 11);
      v55 = *(v214 + 8 * (v212 - 1));
      v215 = v55[8];
      if (v215 == 243)
      {
        *(this + 24) = v213;
      }

      else
      {
        if (v215 == 44)
        {
          *(this + 24) = v213;
          if (v212 == 1 || (v216 = v212 - 2, v58 = *(v214 + 8 * v216), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v216;
          }

          v232 = this;
          v233 = 294;
          goto LABEL_313;
        }

LABEL_300:
        v55 = 0;
      }

      v234 = this;
      v235 = 294;
      goto LABEL_342;
    case 'y':
      v227 = *(this + 24);
      if (!v227)
      {
        goto LABEL_303;
      }

      v228 = v227 - 1;
      v229 = *(this + 11);
      v55 = *(v229 + 8 * (v227 - 1));
      v230 = v55[8];
      if (v230 == 243)
      {
        *(this + 24) = v228;
      }

      else
      {
        if (v230 == 44)
        {
          *(this + 24) = v228;
          if (v227 == 1 || (v231 = v227 - 2, v58 = *(v229 + 8 * v231), v58[8] != 243))
          {
            v58 = 0;
          }

          else
          {
            *(this + 24) = v231;
          }

          v232 = this;
          v233 = 291;
          goto LABEL_313;
        }

LABEL_303:
        v55 = 0;
      }

      v234 = this;
      v235 = 291;
LABEL_342:

      return swift::Demangle::Demangler::createWithChild(v234, v235, v55, v55, a5);
    default:
      return result;
  }
}

swift::Demangle::Node *swift::Demangle::Demangler::demangleSpecialType(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  if (v5 >= v6)
  {
    return 0;
  }

  result = 0;
  v9 = v5 + 1;
  *(this + 9) = v5 + 1;
  v10 = *(this + 7);
  v11 = *(v10 + v5);
  v12 = 0;
  switch(v11)
  {
    case 'A':
      v32 = this;
      v33 = 66;
      goto LABEL_129;
    case 'B':
      v32 = this;
      v33 = 175;
      goto LABEL_129;
    case 'C':
      v32 = this;
      v33 = 23;
      goto LABEL_129;
    case 'D':
      v81 = *(this + 24);
      if (!v81)
      {
        return 0;
      }

      v82 = v81 - 1;
      v15 = *(*(this + 11) + 8 * v82);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v82;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v83 = 2 * *(this + 4);
        if (v83 <= 0x20)
        {
          v83 = 32;
        }

        *(this + 4) = v83;
        v84 = v83 + 8;
        v85 = malloc_type_malloc(v83 + 8, 0x2004093837F09uLL);
        v86 = v85 + v84;
        *v85 = *(this + 3);
        v16 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v86;
        *(this + 3) = v85;
      }

      *(this + 1) = v16 + 24;
      v21 = 59;
      goto LABEL_152;
    case 'E':
      v32 = this;
      v33 = 67;
      goto LABEL_129;
    case 'G':
    case 'g':

      return swift::Demangle::Demangler::demangleExtendedExistentialShape(this, v11, a3, a4, a5);
    case 'K':
      v32 = this;
      v33 = 11;
      goto LABEL_129;
    case 'L':
      v32 = this;
      v33 = 176;
      goto LABEL_129;
    case 'M':
      result = swift::Demangle::Demangler::demangleMetatypeRepresentation(this);
      v57 = *(this + 24);
      if (!v57)
      {
        return 0;
      }

      v58 = v57 - 1;
      v15 = *(*(this + 11) + 8 * v58);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v58;
      if (!result)
      {
        return result;
      }

      v26 = result;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v59 = 2 * *(this + 4);
        if (v59 <= 0x20)
        {
          v59 = 32;
        }

        *(this + 4) = v59;
        v60 = v59 + 8;
        v61 = malloc_type_malloc(v59 + 8, 0x2004093837F09uLL);
        v62 = v61 + v60;
        *v61 = *(this + 3);
        v16 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v62;
        *(this + 3) = v61;
      }

      *(this + 1) = v16 + 24;
      v31 = 154;
      goto LABEL_71;
    case 'P':
      result = swift::Demangle::Demangler::demangleConstrainedExistentialRequirementList(this, a2, a3, a4, a5);
      v95 = *(this + 24);
      if (!v95)
      {
        return 0;
      }

      v96 = v95 - 1;
      v97 = *(*(this + 11) + 8 * v96);
      if (*(v97 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v96;
      if (!result)
      {
        return result;
      }

      v98 = result;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v99 = 2 * *(this + 4);
        if (v99 <= 0x20)
        {
          v99 = 32;
        }

        *(this + 4) = v99;
        v100 = v99 + 8;
        v101 = malloc_type_malloc(v99 + 8, 0x2004093837F09uLL);
        v102 = v101 + v100;
        *v101 = *(this + 3);
        v16 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v102;
        *(this + 3) = v101;
      }

      *(this + 1) = v16 + 24;
      *(v16 + 16) = 85;
      *(v16 + 18) = 0;
      swift::Demangle::Node::addChild(v16, v97, this, v93, v94);
      v103 = v16;
      v104 = v98;
      goto LABEL_154;
    case 'S':
      if (v9 >= v6)
      {
        return 0;
      }

      result = 0;
      *(this + 9) = v5 + 2;
      v34 = *(v10 + v9);
      if (v34 > 0x60)
      {
        switch(v34)
        {
          case 'a':
            v198 = *(this + 24);
            if (v198 && (v199 = v198 - 1, v37 = *(*(this + 11) + 8 * v199), *(v37 + 8) == 243))
            {
              *(this + 24) = v199;
            }

            else
            {
              v37 = 0;
            }

            v205 = this;
            v206 = 309;
            break;
          case 'p':
            v200 = *(this + 24);
            if (v200 && (v201 = v200 - 1, v37 = *(*(this + 11) + 8 * v201), *(v37 + 8) == 243))
            {
              *(this + 24) = v201;
            }

            else
            {
              v37 = 0;
            }

            v205 = this;
            v206 = 312;
            break;
          case 'q':
            v35 = *(this + 24);
            if (v35 && (v36 = v35 - 1, v37 = *(*(this + 11) + 8 * v36), *(v37 + 8) == 243))
            {
              *(this + 24) = v36;
            }

            else
            {
              v37 = 0;
            }

            v205 = this;
            v206 = 308;
            break;
          default:
            return result;
        }

        v207 = swift::Demangle::Demangler::createWithChild(v205, v206, v37, a4, a5);
LABEL_282:

        return swift::Demangle::Demangler::createType(this, v207, v208, v209, v210);
      }

      if (v34 != 65)
      {
        if (v34 != 68)
        {
          return result;
        }

        v161 = *(this + 24);
        if (v161)
        {
          v162 = v161 - 1;
          v163 = *(this + 11);
          v164 = *(v163 + 8 * (v161 - 1));
          if (*(v164 + 8) == 243)
          {
            *(this + 24) = v162;
            if (v161 == 1)
            {
              goto LABEL_279;
            }
          }

          else
          {
            v164 = 0;
            v162 = *(this + 24);
          }

          v215 = v162 - 1;
          v212 = *(v163 + 8 * v215);
          if (*(v212 + 8) == 243)
          {
            *(this + 24) = v215;
LABEL_280:
            v213 = this;
            v214 = 310;
            goto LABEL_281;
          }
        }

        else
        {
          v164 = 0;
        }

LABEL_279:
        v212 = 0;
        goto LABEL_280;
      }

      v202 = *(this + 24);
      if (v202)
      {
        v203 = v202 - 1;
        v204 = *(this + 11);
        v164 = *(v204 + 8 * (v202 - 1));
        if (*(v164 + 8) == 243)
        {
          *(this + 24) = v203;
          if (v202 == 1)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v164 = 0;
          v203 = *(this + 24);
        }

        v211 = v203 - 1;
        v212 = *(v204 + 8 * v211);
        if (*(v212 + 8) == 243)
        {
          *(this + 24) = v211;
LABEL_275:
          v213 = this;
          v214 = 311;
LABEL_281:
          v207 = swift::Demangle::Demangler::createWithChildren(v213, v214, v212, v164, a5);
          goto LABEL_282;
        }
      }

      else
      {
        v164 = 0;
      }

LABEL_274:
      v212 = 0;
      goto LABEL_275;
    case 'U':
      v32 = this;
      v33 = 257;
      goto LABEL_129;
    case 'X':
      v69 = *(this + 24);
      if (!v69)
      {
        return 0;
      }

      v70 = v69 - 1;
      v12 = *(*(this + 11) + 8 * v70);
      if (*(v12 + 8) != 44)
      {
        return 0;
      }

      *(this + 24) = v70;
      result = swift::Demangle::Demangler::popTypeList(this, a2, a3, a4, a5);
      if (result)
      {
        goto LABEL_84;
      }

      return result;
    case 'Y':

      return swift::Demangle::Demangler::demangleAnyGenericType(this, 177, a3, a4, a5);
    case 'Z':
      v109 = swift::Demangle::Demangler::popTypeList(this, a2, a3, a4, a5);
      v110 = *(this + 24);
      if (v110 && (v111 = v110 - 1, v112 = *(*(this + 11) + 8 * v111), *(v112 + 8) == 103))
      {
        *(this + 24) = v111;
      }

      else
      {
        v112 = 0;
      }

      v138 = swift::Demangle::Demangler::popContext(this, v105, v106, v107, v108);
      v139 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v139;
      if (!v139 || v139 + 24 > *(this + 2))
      {
        v140 = 2 * *(this + 4);
        if (v140 <= 0x20)
        {
          v140 = 32;
        }

        *(this + 4) = v140;
        v141 = v140 + 8;
        v142 = malloc_type_malloc(v140 + 8, 0x2004093837F09uLL);
        v143 = v142 + v141;
        *v142 = *(this + 3);
        v139 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v143;
        *(this + 3) = v142;
      }

      result = 0;
      *(this + 1) = v139 + 24;
      *(v139 + 16) = 1;
      *(v139 + 18) = 0;
      if (!v112 || !v139)
      {
        return result;
      }

      swift::Demangle::Node::addChild(v139, v112, this, v136, v137);
      if (!v138)
      {
        return 0;
      }

      swift::Demangle::Node::addChild(v139, v138, this, v144, v145);
      if (!v109)
      {
        return 0;
      }

      swift::Demangle::Node::addChild(v139, v109, this, v146, v147);
      return v139;
    case 'b':
      v87 = *(this + 24);
      if (!v87)
      {
        return 0;
      }

      v88 = v87 - 1;
      v15 = *(*(this + 11) + 8 * v88);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v88;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v89 = 2 * *(this + 4);
        if (v89 <= 0x20)
        {
          v89 = 32;
        }

        *(this + 4) = v89;
        v90 = v89 + 8;
        v91 = malloc_type_malloc(v89 + 8, 0x2004093837F09uLL);
        v92 = v91 + v90;
        *v91 = *(this + 3);
        v16 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v92;
        *(this + 3) = v91;
      }

      *(this + 1) = v16 + 24;
      v21 = 221;
      goto LABEL_152;
    case 'c':
      v113 = *(this + 24);
      if (v113 && (v114 = v113 - 1, v115 = *(*(this + 11) + 8 * v114), *(v115 + 8) == 243))
      {
        *(this + 24) = v114;
      }

      else
      {
        v115 = 0;
      }

      v150 = swift::Demangle::Demangler::demangleProtocolList(this, a2, a3, a4, a5);
      result = 0;
      if (!v115 || !v150)
      {
        return result;
      }

      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v151 = 2 * *(this + 4);
        if (v151 <= 0x20)
        {
          v151 = 32;
        }

        *(this + 4) = v151;
        v152 = v151 + 8;
        v153 = malloc_type_malloc(v151 + 8, 0x2004093837F09uLL);
        v154 = v153 + v152;
        *v153 = *(this + 3);
        v16 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v154;
        *(this + 3) = v153;
      }

      *(this + 1) = v16 + 24;
      *(v16 + 16) = 201;
      *(v16 + 18) = 0;
      swift::Demangle::Node::addChild(v16, v150, this, v148, v149);
      swift::Demangle::Node::addChild(v16, v115, this, v155, v156);
      v134 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v134;
      if (!v134 || v134 + 24 > *(this + 2))
      {
        v157 = 2 * *(this + 4);
        if (v157 <= 0x20)
        {
          v157 = 32;
        }

        *(this + 4) = v157;
        v158 = v157 + 8;
        v159 = malloc_type_malloc(v157 + 8, 0x2004093837F09uLL);
        v160 = v159 + v158;
        *v159 = *(this + 3);
        v134 = (v159 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v160;
        *(this + 3) = v159;
      }

      *(this + 1) = v134 + 24;
      *(v134 + 16) = 243;
      *(v134 + 18) = 0;
      v135 = v134;
      goto LABEL_160;
    case 'e':
      v44 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v44;
      if (!v44 || (v45 = *(this + 2), v44 + 24 > v45))
      {
        v46 = 2 * *(this + 4);
        if (v46 <= 0x20)
        {
          v46 = 32;
        }

        *(this + 4) = v46;
        v47 = v46 + 8;
        v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
        v45 = v48 + v47;
        *v48 = *(this + 3);
        v44 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v45;
        *(this + 3) = v48;
      }

      *(v44 + 16) = 65;
      *(v44 + 18) = 0;
      v49 = (v44 + 31) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v49;
      if (v49)
      {
        v50 = v49 + 24 > v45;
      }

      else
      {
        v50 = 1;
      }

      if (v50)
      {
        v51 = 2 * *(this + 4);
        if (v51 <= 0x20)
        {
          v51 = 32;
        }

        *(this + 4) = v51;
        v52 = v51 + 8;
        v53 = malloc_type_malloc(v51 + 8, 0x2004093837F09uLL);
        *v53 = *(this + 3);
        v49 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v53 + v52;
        *(this + 3) = v53;
      }

      *(this + 1) = v49 + 24;
      *(v49 + 16) = 243;
      *(v49 + 18) = 0;
      v54 = v49;
      v55 = v49;
      v56 = v44;
      goto LABEL_250;
    case 'f':
      v32 = this;
      v33 = 233;
LABEL_129:
      v39 = 0;
      goto LABEL_130;
    case 'j':

      return swift::Demangle::Demangler::demangleSymbolicExtendedExistentialType(this, a2, a3, a4, a5);
    case 'l':
      result = swift::Demangle::Demangler::demangleProtocolList(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v15 = result;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v40 = 2 * *(this + 4);
        if (v40 <= 0x20)
        {
          v40 = 32;
        }

        *(this + 4) = v40;
        v41 = v40 + 8;
        v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
        v43 = v42 + v41;
        *v42 = *(this + 3);
        v16 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v43;
        *(this + 3) = v42;
      }

      *(this + 1) = v16 + 24;
      v21 = 202;
LABEL_152:
      *(v16 + 16) = v21;
      *(v16 + 18) = 0;
      goto LABEL_153;
    case 'm':
      result = swift::Demangle::Demangler::demangleMetatypeRepresentation(this);
      v24 = *(this + 24);
      if (!v24)
      {
        return 0;
      }

      v25 = v24 - 1;
      v15 = *(*(this + 11) + 8 * v25);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v25;
      if (!result)
      {
        return result;
      }

      v26 = result;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v27 = 2 * *(this + 4);
        if (v27 <= 0x20)
        {
          v27 = 32;
        }

        *(this + 4) = v27;
        v28 = v27 + 8;
        v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
        v30 = v29 + v28;
        *v29 = *(this + 3);
        v16 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v30;
        *(this + 3) = v29;
      }

      *(this + 1) = v16 + 24;
      v31 = 71;
LABEL_71:
      *(v16 + 16) = v31;
      *(v16 + 18) = 0;
      swift::Demangle::Node::addChild(v16, v26, this, v22, v23);
LABEL_153:
      v103 = v16;
      v104 = v15;
LABEL_154:
      swift::Demangle::Node::addChild(v103, v104, this, a4, a5);
      v130 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v130;
      if (!v130 || v130 + 24 > *(this + 2))
      {
        v131 = 2 * *(this + 4);
        if (v131 <= 0x20)
        {
          v131 = 32;
        }

        *(this + 4) = v131;
        v132 = v131 + 8;
        v133 = malloc_type_malloc(v131 + 8, 0x2004093837F09uLL);
        *v133 = *(this + 3);
        v130 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v133 + v132;
        *(this + 3) = v133;
      }

      *(this + 1) = v130 + 24;
      *(v130 + 16) = 243;
      *(v130 + 18) = 0;
      v134 = v130;
      v135 = v130;
LABEL_160:
      swift::Demangle::Node::addChild(v135, v16, this, v128, v129);
      return v134;
    case 'o':
      v63 = *(this + 24);
      if (!v63)
      {
        return 0;
      }

      v64 = v63 - 1;
      v15 = *(*(this + 11) + 8 * v64);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v64;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v65 = 2 * *(this + 4);
        if (v65 <= 0x20)
        {
          v65 = 32;
        }

        *(this + 4) = v65;
        v66 = v65 + 8;
        v67 = malloc_type_malloc(v65 + 8, 0x2004093837F09uLL);
        v68 = v67 + v66;
        *v67 = *(this + 3);
        v16 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v68;
        *(this + 3) = v67;
      }

      *(this + 1) = v16 + 24;
      v21 = 260;
      goto LABEL_152;
    case 'p':
      v13 = *(this + 24);
      if (!v13)
      {
        return 0;
      }

      v14 = v13 - 1;
      v15 = *(*(this + 11) + 8 * v14);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v14;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v17 = 2 * *(this + 4);
        if (v17 <= 0x20)
        {
          v17 = 32;
        }

        *(this + 4) = v17;
        v18 = v17 + 8;
        v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
        v20 = v19 + v18;
        *v19 = *(this + 3);
        v16 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v20;
        *(this + 3) = v19;
      }

      *(this + 1) = v16 + 24;
      v21 = 71;
      goto LABEL_152;
    case 'u':
      v122 = *(this + 24);
      if (!v122)
      {
        return 0;
      }

      v123 = v122 - 1;
      v15 = *(*(this + 11) + 8 * v123);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v123;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v124 = 2 * *(this + 4);
        if (v124 <= 0x20)
        {
          v124 = 32;
        }

        *(this + 4) = v124;
        v125 = v124 + 8;
        v126 = malloc_type_malloc(v124 + 8, 0x2004093837F09uLL);
        v127 = v126 + v125;
        *v126 = *(this + 3);
        v16 = (v126 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v127;
        *(this + 3) = v126;
      }

      *(this + 1) = v16 + 24;
      v21 = 261;
      goto LABEL_152;
    case 'w':
      v116 = *(this + 24);
      if (!v116)
      {
        return 0;
      }

      v117 = v116 - 1;
      v15 = *(*(this + 11) + 8 * v117);
      if (*(v15 + 16) != 243)
      {
        return 0;
      }

      *(this + 24) = v117;
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v118 = 2 * *(this + 4);
        if (v118 <= 0x20)
        {
          v118 = 32;
        }

        *(this + 4) = v118;
        v119 = v118 + 8;
        v120 = malloc_type_malloc(v118 + 8, 0x2004093837F09uLL);
        v121 = v120 + v119;
        *v120 = *(this + 3);
        v16 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v121;
        *(this + 3) = v120;
      }

      *(this + 1) = v16 + 24;
      v21 = 259;
      goto LABEL_152;
    case 'x':
LABEL_84:
      v216 = result;
      result = swift::Demangle::Demangler::popTypeList(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v73 = result;
      v74 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v74;
      if (!v74 || v74 + 24 > *(this + 2))
      {
        v75 = 2 * *(this + 4);
        if (v75 <= 0x20)
        {
          v75 = 32;
        }

        *(this + 4) = v75;
        v76 = v75 + 8;
        v77 = malloc_type_malloc(v75 + 8, 0x2004093837F09uLL);
        v78 = v77 + v76;
        *v77 = *(this + 3);
        v74 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v78;
        *(this + 3) = v77;
      }

      v79 = v74 + 24;
      *(this + 1) = v74 + 24;
      *(v74 + 16) = 223;
      *(v74 + 18) = 0;
      v80 = *(v73 + 18);
      switch(v80)
      {
        case 1:
          break;
        case 5:
          v80 = *(v73 + 8);
          if (!v80)
          {
            goto LABEL_237;
          }

          break;
        case 2:
          v80 = 2;
          break;
        default:
          goto LABEL_237;
      }

      v165 = 0;
      break;
    case 'z':
      if (v9 >= v6)
      {
        return 0;
      }

      *(this + 9) = v5 + 2;
      v38 = *(v10 + v9);
      if (v38 == 67)
      {
        v32 = this;
        v33 = 23;
        v39 = 1;
      }

      else
      {
        if (v38 != 66)
        {
          return 0;
        }

        v32 = this;
        v33 = 175;
        v39 = 1;
      }

LABEL_130:

      return swift::Demangle::Demangler::popFunctionType(v32, v33, v39, a4, a5);
    default:
      return result;
  }

  do
  {
    v173 = *(v73 + 18);
    v174 = v173 - 1;
    if (v173 == 1)
    {
      goto LABEL_204;
    }

    if (v173 != 5)
    {
      if (v173 != 2)
      {
        goto LABEL_209;
      }

      v173 = 2;
LABEL_204:
      if (v173 <= v165)
      {
        goto LABEL_209;
      }

      goto LABEL_205;
    }

    if (*(v73 + 8) <= v165)
    {
LABEL_209:
      v176 = 0;
      goto LABEL_210;
    }

LABEL_205:
    v175 = v73;
    if (v174 >= 2)
    {
      v175 = *v73;
    }

    v176 = *(v175 + 8 * v165);
LABEL_210:
    v177 = *(v176 + 18);
    v178 = v176;
    if ((v177 - 1) >= 2)
    {
      v178 = *v176;
    }

    if (*(*v178 + 16) == 128)
    {
      if ((v177 - 1) >= 2)
      {
        if (v177 != 5 || !*(v176 + 8))
        {
          v179 = 0;
LABEL_220:
          v181 = *(v179 + 18);
          if ((v181 - 1) >= 2)
          {
            if (v181 != 5 || !*(v179 + 2))
            {
              goto LABEL_231;
            }

            v179 = *v179;
          }

          v182 = *v179;
          if (*v179)
          {
            v176 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = v176;
            if (!v176 || v176 + 24 > *(this + 2))
            {
              v183 = 2 * *(this + 4);
              if (v183 <= 0x20)
              {
                v183 = 32;
              }

              *(this + 4) = v183;
              v184 = v183 + 8;
              v185 = malloc_type_malloc(v183 + 8, 0x2004093837F09uLL);
              v186 = v185 + v184;
              *v185 = *(this + 3);
              v176 = (v185 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v186;
              *(this + 3) = v185;
            }

            *(this + 1) = v176 + 24;
            *(v176 + 16) = 243;
            *(v176 + 18) = 0;
            swift::Demangle::Node::addChild(v176, v182, this, v71, v72);
            goto LABEL_232;
          }

LABEL_231:
          v176 = 0;
LABEL_232:
          v180 = 224;
          goto LABEL_233;
        }

        v176 = *v176;
      }

      v179 = *v176;
      goto LABEL_220;
    }

    v180 = 225;
LABEL_233:
    v170 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v170;
    if (!v170 || v170 + 24 > *(this + 2))
    {
      v166 = 2 * *(this + 4);
      if (v166 <= 0x20)
      {
        v166 = 32;
      }

      *(this + 4) = v166;
      v167 = v166 + 8;
      v168 = malloc_type_malloc(v166 + 8, 0x2004093837F09uLL);
      v169 = v168 + v167;
      *v168 = *(this + 3);
      v170 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v169;
      *(this + 3) = v168;
    }

    *(this + 1) = v170 + 24;
    *(v170 + 16) = v180;
    *(v170 + 18) = 0;
    swift::Demangle::Node::addChild(v170, v176, this, v71, v72);
    swift::Demangle::Node::addChild(v74, v170, this, v171, v172);
    ++v165;
  }

  while (v80 != v165);
  v79 = *(this + 1);
LABEL_237:
  v187 = (v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v187;
  if (!v187 || v187 + 24 > *(this + 2))
  {
    v188 = 2 * *(this + 4);
    if (v188 <= 0x20)
    {
      v188 = 32;
    }

    *(this + 4) = v188;
    v189 = v188 + 8;
    v190 = malloc_type_malloc(v188 + 8, 0x2004093837F09uLL);
    v191 = v190 + v189;
    *v190 = *(this + 3);
    v187 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v191;
    *(this + 3) = v190;
  }

  *(this + 1) = v187 + 24;
  *(v187 + 16) = 222;
  *(v187 + 18) = 0;
  swift::Demangle::Node::addChild(v187, v74, this, v71, v72);
  if (v12)
  {
    swift::Demangle::Node::addChild(v187, v12, this, a4, a5);
    swift::Demangle::Node::addChild(v187, v216, this, v192, v193);
  }

  v54 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v54;
  if (!v54 || v54 + 24 > *(this + 2))
  {
    v194 = 2 * *(this + 4);
    if (v194 <= 0x20)
    {
      v194 = 32;
    }

    *(this + 4) = v194;
    v195 = v194 + 8;
    v196 = malloc_type_malloc(v194 + 8, 0x2004093837F09uLL);
    v197 = v196 + v195;
    *v196 = *(this + 3);
    v54 = (v196 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v197;
    *(this + 3) = v196;
  }

  *(this + 1) = v54 + 24;
  *(v54 + 16) = 243;
  *(v54 + 18) = 0;
  v55 = v54;
  v56 = v187;
LABEL_250:
  swift::Demangle::Node::addChild(v55, v56, this, a4, a5);
  return v54;
}

uint64_t anonymous namespace::isEntity(int a1)
{
  if (a1 == 243)
  {
    return 1;
  }

  else
  {
    return swift::Demangle::isContext();
  }
}

unint64_t swift::Demangle::Demangler::popFunctionType(swift::Demangle::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v8 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v8;
  if (!v8 || v8 + 24 > *(a1 + 2))
  {
    v9 = 2 * *(a1 + 4);
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    *(a1 + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    v12 = v11 + v10;
    *v11 = *(a1 + 3);
    v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v12;
    *(a1 + 3) = v11;
  }

  *(a1 + 1) = v8 + 24;
  *(v8 + 16) = a2;
  *(v8 + 18) = 0;
  if (v5)
  {
    v13 = swift::Demangle::Demangler::demangleClangType(a1);
    if (v13)
    {
      swift::Demangle::Node::addChild(v8, v13, a1, a4, a5);
    }
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = *(*(a1 + 11) + 8 * (v14 - 1));
    if (*(v15 + 8) != 137 || (*(a1 + 24) = v14 - 1, swift::Demangle::Node::addChild(v8, v15, a1, a4, a5), (v14 = *(a1 + 24)) != 0))
    {
      if ((v16 = *(*(a1 + 11) + 8 * (v14 - 1)), v17 = v16[8], (v17 - 135) >= 2) && v17 != 69 || (*(a1 + 24) = v14 - 1, swift::Demangle::Node::addChild(v8, v16, a1, a4, a5), (v14 = *(a1 + 24)) != 0))
      {
        v18 = *(*(a1 + 11) + 8 * (v14 - 1));
        if (*(v18 + 8) != 70 || (*(a1 + 24) = v14 - 1, swift::Demangle::Node::addChild(v8, v18, a1, a4, a5), (v14 = *(a1 + 24)) != 0))
        {
          v19 = *(*(a1 + 11) + 8 * (v14 - 1));
          if (v19[8] - 285 > 1 || (*(a1 + 24) = v14 - 1, swift::Demangle::Node::addChild(v8, v19, a1, a4, a5), (v14 = *(a1 + 24)) != 0))
          {
            v20 = *(*(a1 + 11) + 8 * (v14 - 1));
            if (*(v20 + 8) != 68 || (*(a1 + 24) = v14 - 1, swift::Demangle::Node::addChild(v8, v20, a1, a4, a5), (v14 = *(a1 + 24)) != 0))
            {
              v21 = v14 - 1;
              v22 = *(*(a1 + 11) + 8 * v21);
              if (*(v22 + 8) == 284)
              {
                *(a1 + 24) = v21;
                swift::Demangle::Node::addChild(v8, v22, a1, a4, a5);
              }
            }
          }
        }
      }
    }
  }

  v23 = swift::Demangle::Demangler::popFunctionParams(a1, 3, a3, a4, a5);
  if (v23)
  {
    swift::Demangle::Node::addChild(v8, v23, a1, v25, v26);
  }

  else
  {
    v8 = 0;
  }

  v27 = swift::Demangle::Demangler::popFunctionParams(a1, 218, v24, v25, v26);
  v30 = 0;
  if (v8 && v27)
  {
    swift::Demangle::Node::addChild(v8, v27, a1, v28, v29);
    v30 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v30;
    if (!v30 || v30 + 24 > *(a1 + 2))
    {
      v33 = 2 * *(a1 + 4);
      if (v33 <= 0x20)
      {
        v33 = 32;
      }

      *(a1 + 4) = v33;
      v34 = v33 + 8;
      v35 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
      v36 = v35 + v34;
      *v35 = *(a1 + 3);
      v30 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v36;
      *(a1 + 3) = v35;
    }

    *(a1 + 1) = v30 + 24;
    *(v30 + 16) = 243;
    *(v30 + 18) = 0;
    swift::Demangle::Node::addChild(v30, v8, a1, v31, v32);
  }

  return v30;
}

unsigned int *swift::Demangle::Demangler::demangleFunctionEntity(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 9);
  if (v5 >= *(this + 8))
  {
    return 0;
  }

  result = 0;
  *(this + 9) = v5 + 1;
  v8 = *(*(this + 7) + v5) - 65;
  v9 = 0;
  v10 = 0;
  v11 = 72;
  v12 = 32;
  v13 = 0;
  v14 = 0;
  switch(v8)
  {
    case 0:
      result = swift::Demangle::Demangler::demangleIndexAsNode(this);
      v13 = 0;
      v14 = 0;
      v10 = 3;
      v12 = 34;
      goto LABEL_36;
    case 2:
      goto LABEL_25;
    case 3:
      goto LABEL_36;
    case 4:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 106;
      goto LABEL_36;
    case 12:

      return swift::Demangle::Demangler::demangleMacroExpansion(this, a2, a3, a4, a5);
    case 15:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 188;
      goto LABEL_36;
    case 20:
      goto LABEL_15;
    case 22:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 189;
      goto LABEL_36;
    case 25:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 133;
      goto LABEL_36;
    case 34:
      v9 = 30;
LABEL_25:
      v12 = v9;
      v19 = *(this + 24);
      if (v19)
      {
        v20 = v19 - 1;
        v21 = *(this + 11);
        v22 = *(v21 + 8 * (v19 - 1));
        if (*(v22 + 16) == 186)
        {
          *(this + 24) = v20;
          if (v19 == 1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v22 = 0;
          v20 = *(this + 24);
        }

        v23 = v20 - 1;
        v13 = *(v21 + 8 * v23);
        if (*(v13 + 8) == 243)
        {
          *(this + 24) = v23;
          goto LABEL_35;
        }
      }

      else
      {
        v22 = 0;
      }

LABEL_34:
      v13 = 0;
LABEL_35:
      v14 = swift::Demangle::Demangler::popFunctionParamLabels(this, v13, a3, a4, a5);
      v10 = 1;
      result = v22;
LABEL_36:
      v24 = result;
      v25 = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
      if (v25)
      {
        v28 = v25;
        v29 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v29;
        if (!v29 || v29 + 24 > *(this + 2))
        {
          v30 = 2 * *(this + 4);
          if (v30 <= 0x20)
          {
            v30 = 32;
          }

          *(this + 4) = v30;
          v31 = v30 + 8;
          v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
          v33 = v32 + v31;
          *v32 = *(this + 3);
          v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v33;
          *(this + 3) = v32;
        }

        *(this + 1) = v29 + 24;
        *(v29 + 16) = v12;
        *(v29 + 18) = 0;
        swift::Demangle::Node::addChild(v29, v28, this, v26, v27);
        if (v10 <= 1)
        {
LABEL_43:
          if (!v10)
          {
            return v29;
          }

          if (v14 && v29)
          {
            swift::Demangle::Node::addChild(v29, v14, this, v26, v27);
          }

          result = 0;
          if (v13 && v29)
          {
            swift::Demangle::Node::addChild(v29, v13, this, v26, v27);
            if (!v24)
            {
              return v29;
            }

            goto LABEL_60;
          }

          return result;
        }
      }

      else
      {
        v29 = 0;
        if (v10 <= 1)
        {
          goto LABEL_43;
        }
      }

      if (v10 == 2)
      {
        result = 0;
        if (v24 && v29)
        {
          swift::Demangle::Node::addChild(v29, v24, this, v26, v27);
          if (!v13)
          {
            return 0;
          }

          v34 = v29;
          v35 = v13;
          goto LABEL_61;
        }
      }

      else
      {
        result = 0;
        if (v24 && v29)
        {
LABEL_60:
          v34 = v29;
          v35 = v24;
LABEL_61:
          swift::Demangle::Node::addChild(v34, v35, this, v26, v27);
          return v29;
        }
      }

      break;
    case 35:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 52;
      goto LABEL_36;
    case 36:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 105;
      goto LABEL_36;
    case 40:
      v10 = 0;
      result = 0;
      v13 = 0;
      v14 = 0;
      v12 = 130;
      goto LABEL_36;
    case 44:
      v15 = this;
      v16 = 147;
      goto LABEL_11;
    case 47:
      v15 = this;
      v16 = 274;
LABEL_11:

      return swift::Demangle::Demangler::demangleEntity(v15, v16, a3, a4, a5);
    case 52:
      v11 = 122;
LABEL_15:
      result = swift::Demangle::Demangler::demangleIndexAsNode(this);
      v17 = *(this + 24);
      if (v17 && (v18 = v17 - 1, v13 = *(*(this + 11) + 8 * v18), *(v13 + 8) == 243))
      {
        v14 = 0;
        *(this + 24) = v18;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v10 = 2;
      v12 = v11;
      goto LABEL_36;
    default:
      return result;
  }

  return result;
}

unint64_t swift::Demangle::Demangler::demangleRetroactiveConformance(swift::Demangle::Demangler *this)
{
  v2 = swift::Demangle::Demangler::demangleIndexAsNode(this);
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = *(*(this + 11) + 8 * v6);
  v8 = v7[8];
  v9 = v8 > 0x33;
  v10 = (1 << v8) & 0xF000018000000;
  if (v9 || v10 == 0)
  {
    return 0;
  }

  *(this + 24) = v6;
  if (!v2)
  {
    return 0;
  }

  v12 = v2;
  v13 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v13;
  if (!v13 || v13 + 24 > *(this + 2))
  {
    v14 = 2 * *(this + 4);
    if (v14 <= 0x20)
    {
      v14 = 32;
    }

    *(this + 4) = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    v17 = v16 + v15;
    *v16 = *(this + 3);
    v13 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v17;
    *(this + 3) = v16;
  }

  *(this + 1) = v13 + 24;
  *(v13 + 16) = 217;
  *(v13 + 18) = 0;
  swift::Demangle::Node::addChild(v13, v12, this, v3, v4);
  swift::Demangle::Node::addChild(v13, v7, this, v18, v19);
  return v13;
}

swift::Demangle::Node *swift::Demangle::Demangler::demangleSubscript(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = *(this + 11);
    v9 = *(v8 + 8 * (v6 - 1));
    if (*(v9 + 8) == 186)
    {
      *(this + 24) = v7;
      if (v6 == 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
      v7 = *(this + 24);
    }

    v10 = v7 - 1;
    v11 = *(v8 + 8 * v10);
    if (*(v11 + 8) == 243)
    {
      *(this + 24) = v10;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
  v11 = 0;
LABEL_10:
  v12 = swift::Demangle::Demangler::popFunctionParamLabels(this, v11, a3, a4, a5);
  v17 = swift::Demangle::Demangler::popContext(this, v13, v14, v15, v16);
  if (!v11)
  {
    return 0;
  }

  v21 = v17;
  v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v22;
  if (!v22 || v22 + 24 > *(this + 2))
  {
    v23 = 2 * *(this + 4);
    if (v23 <= 0x20)
    {
      v23 = 32;
    }

    *(this + 4) = v23;
    v24 = v23 + 8;
    v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
    v26 = v25 + v24;
    *v25 = *(this + 3);
    v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v26;
    *(this + 3) = v25;
  }

  *(this + 1) = v22 + 24;
  *(v22 + 16) = 231;
  *(v22 + 18) = 0;
  if (v21 && v22)
  {
    swift::Demangle::Node::addChild(v22, v21, this, v19, v20);
    if (v12)
    {
      swift::Demangle::Node::addChild(v22, v12, this, v27, v28);
    }

    swift::Demangle::Node::addChild(v22, v11, this, v27, v28);
    if (v9)
    {
      swift::Demangle::Node::addChild(v22, v9, this, v29, v30);
    }

    v31 = *(this + 81);
    v39 = v22;
    v38 = v31;
    __p[0] = 0;
    __p[1] = 0;
    v37 = 0;
    v35[0] = __p;
    v35[1] = &v39;
    v35[2] = &v38;
    setParentForOpaqueReturnTypeNodesImpl(this, v11, llvm::function_ref<llvm::StringRef ()(void)>::callback_fn<setParentForOpaqueReturnTypeNodes(swift::Demangle::Demangler &,swift::Demangle::Node *,swift::Demangle::Node *,swift::Mangle::ManglingFlavor)::$_0>, v35);
    v32 = v39;
    if (SHIBYTE(v37) < 0)
    {
      v33 = v39;
      operator delete(__p[0]);
      v32 = v33;
    }
  }

  else
  {
    v32 = 0;
  }

  return swift::Demangle::Demangler::demangleAccessor(this, v32, v18, v19, v20);
}

int8x16_t *swift::Demangle::Demangler::demangleGenericSignature(swift::Demangle::Demangler *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v7;
  if (!v7 || (v8 = *(this + 2), &v7[1].u64[1] > v8))
  {
    v9 = 2 * *(this + 4);
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    *(this + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    v8 = v11 + v10;
    *v11 = *(this + 3);
    v7 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v8;
    *(this + 3) = v11;
  }

  *(this + 1) = v7 + 24;
  v7[1].i16[0] = 44;
  v7[1].i8[2] = 0;
  if (!a2)
  {
    v25 = (&v7[1].u64[1] + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v25;
    if (v25)
    {
      v26 = v25 + 24 > v8;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      v27 = 2 * *(this + 4);
      if (v27 <= 0x20)
      {
        v27 = 32;
      }

      *(this + 4) = v27;
      v28 = v27 + 8;
      v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
      *v29 = *(this + 3);
      v25 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v29 + v28;
      *(this + 3) = v29;
    }

    *(this + 1) = v25 + 24;
    *(v25 + 16) = 38;
    *(v25 + 18) = 4;
    *v25 = 1;
    swift::Demangle::Node::addChild(v7, v25, this, a4, a5);
LABEL_39:
    v30 = v7[1].u8[2];
    v31 = v30;
    if (v30 != 1)
    {
      if (v30 != 5)
      {
        if (v30 == 2)
        {
          v31 = 2;
          v32 = *(this + 24);
          if (!v32)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v31 = 0;
          v32 = *(this + 24);
          if (!v32)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_49;
      }

      v31 = v7->u32[2];
    }

    v32 = *(this + 24);
    if (!v32)
    {
LABEL_57:
      if (v30 == 5)
      {
        v37 = v7->u32[2];
        if (v31 != v37)
        {
          v38 = v7->i64[0] + 8 * v31;
          v39 = (v7->i64[0] + 8 * v37 - 8);
          if (v39 > v38)
          {
            v40 = v38 + 8;
            do
            {
              v41 = *(v40 - 8);
              *(v40 - 8) = *v39;
              *v39-- = v41;
              v42 = v40 >= v39;
              v40 += 8;
            }

            while (!v42);
          }
        }
      }

      else if (v30 == 2 && !v31)
      {
        *v7 = vextq_s8(*v7, *v7, 8uLL);
      }

      return v7;
    }

    do
    {
LABEL_49:
      v33 = v32 - 1;
      v34 = *(*(this + 11) + 8 * (v32 - 1));
      v35 = v34[8];
      v36 = v35 > 0x2B || ((1 << v35) & 0xF2000000000) == 0;
      if (v36 && v35 != 370 && v35 != 367)
      {
        break;
      }

      *(this + 24) = v33;
      swift::Demangle::Node::addChild(v7, v34, this, a4, a5);
      v32 = *(this + 24);
    }

    while (v32);
    LODWORD(v30) = v7[1].u8[2];
    goto LABEL_57;
  }

  v13 = *(this + 8);
  v12 = *(this + 9);
  if (v12 < v13)
  {
    while (1)
    {
      v14 = *(this + 7);
      v15 = *(v14 + v12);
      switch(v15)
      {
        case '_':
          *(this + 9) = v12 + 1;
          v19 = 1;
          break;
        case 'z':
          v19 = 0;
          *(this + 9) = v12 + 1;
          break;
        case 'l':
          *(this + 9) = v12 + 1;
          goto LABEL_39;
        default:
          if ((v15 - 48) > 9)
          {
            return 0;
          }

          v16 = 0;
          while (1)
          {
            v17 = *(v14 + v12);
            if ((v17 - 48) > 9)
            {
              break;
            }

            v18 = v17 + 10 * v16 - 48;
            if (v18 >= v16)
            {
              *(this + 9) = ++v12;
              v16 = v18;
              if (v13 != v12)
              {
                continue;
              }
            }

            return 0;
          }

          result = 0;
          if (v16 < 0 || v12 >= v13 || v17 != 95)
          {
            return result;
          }

          *(this + 9) = v12 + 1;
          v19 = (v16 + 2);
          break;
      }

      v21 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v21;
      if (!v21 || v21 + 24 > *(this + 2))
      {
        v22 = 2 * *(this + 4);
        if (v22 <= 0x20)
        {
          v22 = 32;
        }

        *(this + 4) = v22;
        v23 = v22 + 8;
        v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
        *v24 = *(this + 3);
        v21 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v24 + v23;
        *(this + 3) = v24;
      }

      *(this + 1) = v21 + 24;
      *(v21 + 16) = 38;
      *(v21 + 18) = 4;
      *v21 = v19;
      swift::Demangle::Node::addChild(v7, v21, this, a4, a5);
      result = 0;
      v13 = *(this + 8);
      v12 = *(this + 9);
      if (v12 >= v13)
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t swift::Demangle::Demangler::demangleOperatorIdentifier(swift::Demangle::Demangler *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  v4 = *(*(this + 11) + 8 * (v1 - 1));
  if (*(v4 + 8) != 103)
  {
    return 0;
  }

  *(this + 24) = v3;
  v5 = v4[1];
  if (!v5)
  {
    v20 = 0;
    v7 = 0;
    goto LABEL_30;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v4;
  v30 = *v4;
  do
  {
    v10 = *(v9 + v6);
    if ((v10 & 0x80000000) == 0)
    {
      if (v10 - 97) > 0x19 || ((0x17007A2uLL >> (v10 - 97)))
      {
        return 0;
      }

      LOBYTE(v10) = swift::Demangle::Demangler::demangleOperatorIdentifier(void)::op_char_table[(v10 - 97)];
    }

    if (v6 >= v8)
    {
      v11 = *(this + 1);
      if (&v7[v8] == v11)
      {
        v12 = *(this + 2);
        if ((v11 + 1) <= v12)
        {
          *(this + 1) = v11 + 1;
          LODWORD(v13) = 1;
LABEL_6:
          v8 += v13;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = *(this + 2);
      }

      if (2 * v8 <= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = 2 * v8;
      }

      v14 = v13 + v8;
      if (!v11 || &v11[v14] > v12)
      {
        v15 = 2 * *(this + 4);
        if (v15 <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        *(this + 4) = v15;
        v16 = v15 + 8;
        v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
        v18 = v17 + v16;
        *v17 = *(this + 3);
        v11 = (v17 + 1);
        *(this + 2) = v18;
        *(this + 3) = v17;
      }

      *(this + 1) = &v11[v14];
      if (v8)
      {
        memcpy(v11, v7, v8);
      }

      v7 = v11;
      v9 = v30;
      goto LABEL_6;
    }

LABEL_7:
    v7[v6++] = v10;
  }

  while (v5 != v6);
  v20 = v6;
LABEL_30:
  v21 = *(this + 9);
  if (v21 >= *(this + 8))
  {
    return 0;
  }

  *(this + 9) = v21 + 1;
  v22 = *(*(this + 7) + v21);
  if (v22 == 80)
  {
    v23 = (this + 8);
    result = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = result;
    if (!result)
    {
      v26 = 183;
      goto LABEL_46;
    }

    v24 = result + 24;
    v25 = *(this + 2);
    v26 = 183;
    goto LABEL_41;
  }

  if (v22 == 112)
  {
    v23 = (this + 8);
    result = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = result;
    if (!result)
    {
      v26 = 185;
      goto LABEL_46;
    }

    v24 = result + 24;
    v25 = *(this + 2);
    v26 = 185;
LABEL_41:
    if (v24 > v25)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  if (v22 != 105)
  {
    return 0;
  }

  v23 = (this + 8);
  result = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = result;
  if (result)
  {
    v24 = result + 24;
    v25 = *(this + 2);
    v26 = 129;
    goto LABEL_41;
  }

  v26 = 129;
LABEL_46:
  v27 = 2 * *(this + 4);
  if (v27 <= 0x20)
  {
    v27 = 32;
  }

  *(this + 4) = v27;
  v28 = v27 + 8;
  v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
  *v29 = *(this + 3);
  result = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(this + 2) = v29 + v28;
  *(this + 3) = v29;
LABEL_49:
  *v23 = result + 24;
  *(result + 16) = v26;
  *(result + 18) = 3;
  *result = v7;
  *(result + 8) = v20;
  return result;
}

unint64_t swift::Demangle::Demangler::demangleProtocolListType(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = swift::Demangle::Demangler::demangleProtocolList(this, a2, a3, a4, a5);
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v10;
  if (!v10 || v10 + 24 > *(this + 2))
  {
    v11 = 2 * *(this + 4);
    if (v11 <= 0x20)
    {
      v11 = 32;
    }

    *(this + 4) = v11;
    v12 = v11 + 8;
    v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
    v14 = v13 + v12;
    *v13 = *(this + 3);
    v10 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v14;
    *(this + 3) = v13;
  }

  *(this + 1) = v10 + 24;
  *(v10 + 16) = 243;
  *(v10 + 18) = 0;
  swift::Demangle::Node::addChild(v10, v9, this, v7, v8);
  return v10;
}

unint64_t swift::Demangle::Demangler::demangleGenericParamIndex(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v6 >= v5)
  {
LABEL_17:
    v12 = -999;
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v7 = *(this + 7);
  v8 = *(v7 + v6);
  if (v8 <= 0x72)
  {
    if (v8 == 95)
    {
      *(this + 9) = v6 + 1;
      v12 = 1;
      goto LABEL_18;
    }

    if (v8 == 100)
    {
      v9 = v6 + 1;
      *(this + 9) = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_35;
      }

      v10 = *(v7 + v9);
      if (v10 == 95)
      {
        v9 = v6 + 2;
        *(this + 9) = v6 + 2;
        v11 = 1;
        goto LABEL_36;
      }

      if ((v10 - 48) > 9)
      {
LABEL_35:
        v11 = -999;
      }

      else
      {
        v22 = 0;
        while (1)
        {
          v23 = *(v7 + v9);
          if ((v23 - 48) > 9)
          {
            break;
          }

          v24 = v23 + 10 * v22 - 48;
          if (v24 < v22)
          {
            goto LABEL_35;
          }

          *(this + 9) = ++v9;
          v22 = v24;
          if (v5 == v9)
          {
            v12 = -1000;
            v11 = -999;
            goto LABEL_19;
          }
        }

        v11 = -999;
        if ((v22 & 0x80000000) == 0 && v9 < v5 && v23 == 95)
        {
          *(this + 9) = ++v9;
          v11 = v22 + 2;
        }
      }

LABEL_36:
      if (v9 < v5)
      {
        v25 = *(v7 + v9);
        if (v25 == 95)
        {
          v12 = 0;
          *(this + 9) = v9 + 1;
          goto LABEL_19;
        }

        if ((v25 - 48) <= 9)
        {
          v26 = 0;
          while (1)
          {
            v27 = *(v7 + v9);
            if ((v27 - 48) > 9)
            {
              break;
            }

            v28 = v27 + 10 * v26 - 48;
            if (v28 >= v26)
            {
              *(this + 9) = ++v9;
              v26 = v28;
              if (v5 != v9)
              {
                continue;
              }
            }

            goto LABEL_44;
          }

          v12 = -1000;
          if ((v26 & 0x80000000) == 0 && v9 < v5 && v27 == 95)
          {
            *(this + 9) = v9 + 1;
            v12 = v26 + 1;
          }

          goto LABEL_19;
        }
      }

LABEL_44:
      v12 = -1000;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (v8 != 115)
  {
    if (v8 == 122)
    {
      *(this + 9) = v6 + 1;
      v11 = 0;
      v12 = 0;
LABEL_19:

      return swift::Demangle::Demangler::getDependentGenericParamType(this, v11, v12, a4, a5);
    }

LABEL_11:
    if (v8 - 48 <= 9)
    {
      v13 = 0;
      v12 = -999;
      while (1)
      {
        v14 = *(v7 + v6);
        if ((v14 - 48) > 9)
        {
          break;
        }

        v15 = v14 + 10 * v13 - 48;
        if (v15 < v13)
        {
          goto LABEL_17;
        }

        *(this + 9) = ++v6;
        v13 = v15;
        if (v5 == v6)
        {
          goto LABEL_18;
        }
      }

      v12 = -999;
      if ((v13 & 0x80000000) == 0 && v6 < v5 && v14 == 95)
      {
        *(this + 9) = v6 + 1;
        v12 = v13 + 2;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(this + 9) = v6 + 1;
  v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v17;
  if (!v17 || v17 + 24 > *(this + 2))
  {
    v18 = 2 * *(this + 4);
    if (v18 <= 0x20)
    {
      v18 = 32;
    }

    *(this + 4) = v18;
    v19 = v18 + 8;
    v20 = this;
    v21 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    this = v20;
    *v21 = *(v20 + 3);
    v17 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v20 + 2) = v21 + v19;
    *(v20 + 3) = v21;
  }

  *(this + 1) = v17 + 24;
  *(v17 + 16) = 87;
  *(v17 + 18) = 0;
  return v17;
}

unint64_t swift::Demangle::Demangler::popTuple(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v6;
  if (!v6 || &v6[1].u64[1] > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = *(this + 3);
    v6 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v10;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  v6[1].i16[0] = 234;
  v6[1].i8[2] = 0;
  v11 = *(this + 24);
  if (v11 && (v12 = v11 - 1, *(*(*(this + 11) + 8 * v12) + 16) == 287))
  {
    *(this + 24) = v12;
  }

  else
  {
    do
    {
      v18 = *(this + 24);
      if (v18 && *(*(*(this + 11) + 8 * (v18 - 1)) + 16) == 288)
      {
        v19 = 0;
        *(this + 24) = --v18;
      }

      else
      {
        v19 = 1;
      }

      v20 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v20;
      if (!v20 || v20 + 24 > *(this + 2))
      {
        v21 = 2 * *(this + 4);
        if (v21 <= 0x20)
        {
          v21 = 32;
        }

        *(this + 4) = v21;
        v22 = v21 + 8;
        v23 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
        v24 = v23 + v22;
        *v23 = *(this + 3);
        v20 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v24;
        *(this + 3) = v23;
        v18 = *(this + 24);
      }

      *(this + 1) = v20 + 24;
      *(v20 + 16) = 235;
      *(v20 + 18) = 0;
      if (!v18)
      {
        return 0;
      }

      v25 = *(*(this + 11) + 8 * (v18 - 1));
      if (*(v25 + 8) == 289)
      {
        *(this + 24) = v18 - 1;
        swift::Demangle::Node::addChild(v20, v25, this, a4, a5);
        v18 = *(this + 24);
        if (!v18)
        {
          return 0;
        }
      }

      v26 = *(*(this + 11) + 8 * (v18 - 1));
      if (*(v26 + 8) == 103)
      {
        *(this + 24) = v18 - 1;
        v27 = *v26;
        v28 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v28;
        if (!v28 || v28 + 24 > *(this + 2))
        {
          v29 = 2 * *(this + 4);
          if (v29 <= 0x20)
          {
            v29 = 32;
          }

          *(this + 4) = v29;
          v30 = v29 + 8;
          v43 = v27;
          v31 = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
          v27 = v43;
          *v31 = *(this + 3);
          v28 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v31 + v30;
          *(this + 3) = v31;
        }

        *(this + 1) = v28 + 24;
        *(v28 + 16) = 236;
        *(v28 + 18) = 3;
        *v28 = v27;
        swift::Demangle::Node::addChild(v20, v28, this, a4, a5);
        v18 = *(this + 24);
        if (!v18)
        {
          return 0;
        }
      }

      v32 = v18 - 1;
      v33 = *(*(this + 11) + 8 * v32);
      if (*(v33 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v32;
      swift::Demangle::Node::addChild(v20, v33, this, a4, a5);
      swift::Demangle::Node::addChild(v6, v20, this, v34, v35);
    }

    while ((v19 & 1) != 0);
    v36 = v6[1].u8[2];
    if (v36 == 5)
    {
      v38 = v6->u32[2];
      if (v38)
      {
        v39 = (v6->i64[0] + 8 * v38 - 8);
        if (v39 > v6->i64[0])
        {
          v40 = v6->i64[0] + 8;
          do
          {
            v41 = *(v40 - 8);
            *(v40 - 8) = *v39;
            *v39-- = v41;
            v42 = v40 >= v39;
            v40 += 8;
          }

          while (!v42);
        }
      }
    }

    else if (v36 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  v13 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v13;
  if (!v13 || v13 + 24 > *(this + 2))
  {
    v14 = 2 * *(this + 4);
    if (v14 <= 0x20)
    {
      v14 = 32;
    }

    *(this + 4) = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    v17 = v16 + v15;
    *v16 = *(this + 3);
    v13 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v17;
    *(this + 3) = v16;
  }

  *(this + 1) = v13 + 24;
  *(v13 + 16) = 243;
  *(v13 + 18) = 0;
  swift::Demangle::Node::addChild(v13, v6, this, a4, a5);
  return v13;
}

unint64_t swift::Demangle::Demangler::demangleGenericType(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = *(this + 11);
  v8 = *(v7 + 8 * (v5 - 1));
  v9 = v8[8];
  if (v9 == 243)
  {
    *(this + 24) = v6;
    return 0;
  }

  if (v9 != 44)
  {
    return 0;
  }

  *(this + 24) = v6;
  if (v5 == 1)
  {
    return 0;
  }

  v10 = v5 - 2;
  v11 = *(v7 + 8 * v10);
  if (*(v11 + 8) != 243)
  {
    return 0;
  }

  *(this + 24) = v10;
  v12 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v12;
  v13 = this;
  if (!v12 || v12 + 24 > *(this + 2))
  {
    v14 = 2 * *(this + 4);
    if (v14 <= 0x20)
    {
      v14 = 32;
    }

    *(this + 4) = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    this = v13;
    v17 = v16 + v15;
    *v16 = *(v13 + 3);
    v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v13 + 2) = v17;
    *(v13 + 3) = v16;
  }

  *(this + 1) = v12 + 24;
  *(v12 + 16) = 45;
  *(v12 + 18) = 0;
  swift::Demangle::Node::addChild(v12, v8, v13, a4, a5);
  swift::Demangle::Node::addChild(v12, v11, v13, v18, v19);
  v22 = v13;
  v23 = (*(v13 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v13 + 1) = v23;
  if (!v23 || v23 + 24 > *(v13 + 2))
  {
    v24 = 2 * *(v13 + 4);
    if (v24 <= 0x20)
    {
      v24 = 32;
    }

    *(v13 + 4) = v24;
    v25 = v24 + 8;
    v26 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
    v22 = v13;
    *v26 = *(v13 + 3);
    v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v13 + 2) = v26 + v25;
    *(v13 + 3) = v26;
  }

  *(v22 + 1) = v23 + 24;
  *(v23 + 16) = 243;
  *(v23 + 18) = 0;
  v27 = v23;
  swift::Demangle::Node::addChild(v23, v12, v22, v20, v21);
  return v27;
}

swift::Demangle::Node *swift::Demangle::Demangler::demangleVariable(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = swift::Demangle::Demangler::demangleEntity(this, 266, a3, a4, a5);

  return swift::Demangle::Demangler::demangleAccessor(this, v6, v7, v8, v9);
}

unint64_t swift::Demangle::Demangler::demangleValueWitness(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(this + 8);
  v6 = *(this + 9);
  if (v6 >= v7)
  {
    v8 = 0;
  }

  else
  {
    *(this + 9) = v6 + 1;
    v8 = *(*(this + 7) + v6++);
  }

  LOBYTE(v27) = v8;
  if (v6 >= v7)
  {
    v9 = 0;
  }

  else
  {
    *(this + 9) = v6 + 1;
    v9 = *(*(this + 7) + v6);
  }

  HIBYTE(v27) = v9;
  switch(v27)
  {
    case 0x6C61u:
      v10 = 0;
      break;
    case 0x6163u:
      v10 = 1;
      break;
    case 0x6174u:
      v10 = 2;
      break;
    case 0x6564u:
      v10 = 3;
      break;
    case 0x7878u:
      v10 = 4;
      break;
    case 0x5858u:
      v10 = 5;
      break;
    case 0x7858u:
      v10 = 6;
      break;
    case 0x5043u:
      v10 = 7;
      break;
    case 0x7043u:
      v10 = 8;
      break;
    case 0x7063u:
      v10 = 9;
      break;
    case 0x6B54u:
      v10 = 10;
      break;
    case 0x6B74u:
      v10 = 11;
      break;
    case 0x7270u:
      v10 = 12;
      break;
    case 0x4B54u:
      v10 = 13;
      break;
    case 0x6343u:
      v10 = 14;
      break;
    case 0x7454u:
      v10 = 15;
      break;
    case 0x5474u:
      v10 = 16;
      break;
    case 0x7378u:
      v10 = 17;
      break;
    case 0x6778u:
      v10 = 18;
      break;
    case 0x6775u:
      v10 = 19;
      break;
    case 0x7075u:
      v10 = 20;
      break;
    case 0x6975u:
      v10 = 21;
      break;
    case 0x7465u:
      v10 = 22;
      break;
    default:
      if (bswap32(v27) >> 16 != 29556)
      {
        return 0;
      }

      v10 = 23;
      break;
  }

  v11 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v11;
  if (!v11 || (v12 = *(this + 2), v11 + 24 > v12))
  {
    v13 = 2 * *(this + 4);
    if (v13 <= 0x20)
    {
      v13 = 32;
    }

    *(this + 4) = v13;
    v14 = v13 + 8;
    v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
    v12 = v15 + v14;
    *v15 = *(this + 3);
    v11 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v12;
    *(this + 3) = v15;
  }

  *(v11 + 16) = 264;
  *(v11 + 18) = 0;
  v16 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v16;
  if (v16)
  {
    v17 = v16 + 24 > v12;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 2 * *(this + 4);
    if (v18 <= 0x20)
    {
      v18 = 32;
    }

    *(this + 4) = v18;
    v19 = v18 + 8;
    v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    *v20 = *(this + 3);
    v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v20 + v19;
    *(this + 3) = v20;
  }

  *(this + 1) = v16 + 24;
  *(v16 + 16) = 104;
  *(v16 + 18) = 4;
  *v16 = v10;
  swift::Demangle::Node::addChild(v11, v16, this, a4, a5);
  v23 = *(this + 24);
  if (!v23)
  {
    return 0;
  }

  v24 = v23 - 1;
  v25 = *(*(this + 11) + 8 * v24);
  if (*(v25 + 8) != 243)
  {
    return 0;
  }

  *(this + 24) = v24;
  swift::Demangle::Node::addChild(v11, v25, this, v21, v22);
  return v11;
}

unint64_t swift::Demangle::Demangler::getDependentGenericParamType(swift::Demangle::Demangler *this, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (((a3 | a2) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v8;
  if (!v8 || (v9 = *(this + 2), v8 + 24 > v9))
  {
    v10 = 2 * *(this + 4);
    if (v10 <= 0x20)
    {
      v10 = 32;
    }

    *(this + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    v9 = v12 + v11;
    *v12 = *(this + 3);
    v8 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v9;
    *(this + 3) = v12;
  }

  *(v8 + 16) = 39;
  *(v8 + 18) = 0;
  v13 = a2;
  v14 = (v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v14;
  if (v14)
  {
    v15 = v14 + 24 > v9;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 2 * *(this + 4);
    if (v16 <= 0x20)
    {
      v16 = 32;
    }

    *(this + 4) = v16;
    v17 = v16 + 8;
    v18 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
    *v18 = *(this + 3);
    v14 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v18 + v17;
    *(this + 3) = v18;
  }

  *(this + 1) = v14 + 24;
  *(v14 + 16) = 104;
  *(v14 + 18) = 4;
  *v14 = v13;
  swift::Demangle::Node::addChild(v8, v14, this, a4, a5);
  v21 = a3;
  v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v22;
  if (!v22 || v22 + 24 > *(this + 2))
  {
    v23 = 2 * *(this + 4);
    if (v23 <= 0x20)
    {
      v23 = 32;
    }

    *(this + 4) = v23;
    v24 = v23 + 8;
    v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
    *v25 = *(this + 3);
    v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v25 + v24;
    *(this + 3) = v25;
  }

  *(this + 1) = v22 + 24;
  *(v22 + 16) = 104;
  *(v22 + 18) = 4;
  *v22 = v21;
  swift::Demangle::Node::addChild(v8, v22, this, v19, v20);
  return v8;
}

unint64_t swift::Demangle::Demangler::demangleIntegerType(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 8);
  v7 = *(this + 9);
  if (v7 < v6)
  {
    v8 = *(this + 7);
    v9 = *(v8 + v7);
    if (v9 == 95)
    {
      v12 = 0;
      *(this + 9) = v7 + 1;
      goto LABEL_14;
    }

    if (v9 == 110)
    {
      v10 = v7 + 1;
      *(this + 9) = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *(v8 + v10);
        if (v11 == 95)
        {
          v12 = 0;
          *(this + 9) = v7 + 2;
          goto LABEL_33;
        }

        if ((v11 - 48) <= 9)
        {
          v28 = 0;
          v12 = 1000;
          while (1)
          {
            v29 = *(v8 + v10);
            if ((v29 - 48) > 9)
            {
              break;
            }

            v30 = v29 + 10 * v28 - 48;
            if (v30 >= v28)
            {
              *(this + 9) = ++v10;
              v28 = v30;
              if (v6 != v10)
              {
                continue;
              }
            }

            goto LABEL_33;
          }

          v12 = 1000;
          if ((v28 & 0x80000000) == 0 && v10 < v6 && v29 == 95)
          {
            *(this + 9) = v10 + 1;
            v12 = ~v28;
          }

          goto LABEL_33;
        }
      }

      v12 = 1000;
LABEL_33:
      v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v16;
      if (!v16 || v16 + 24 > *(this + 2))
      {
        v31 = 2 * *(this + 4);
        if (v31 <= 0x20)
        {
          v31 = 32;
        }

        *(this + 4) = v31;
        v32 = v31 + 8;
        v33 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
        v34 = v33 + v32;
        *v33 = *(this + 3);
        v16 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v34;
        *(this + 3) = v33;
      }

      *(this + 1) = v16 + 24;
      v21 = 369;
      goto LABEL_20;
    }

    if ((v9 - 48) <= 9)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v8 + v7);
        if ((v14 - 48) > 9)
        {
          break;
        }

        v15 = v14 + 10 * v13 - 48;
        if (v15 >= v13)
        {
          *(this + 9) = ++v7;
          v13 = v15;
          if (v6 != v7)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v12 = -1000;
      if ((v13 & 0x80000000) == 0 && v7 < v6 && v14 == 95)
      {
        *(this + 9) = v7 + 1;
        v12 = (v13 + 1);
      }

      goto LABEL_14;
    }
  }

LABEL_13:
  v12 = -1000;
LABEL_14:
  v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v16;
  if (!v16 || v16 + 24 > *(this + 2))
  {
    v17 = 2 * *(this + 4);
    if (v17 <= 0x20)
    {
      v17 = 32;
    }

    *(this + 4) = v17;
    v18 = v17 + 8;
    v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
    v20 = v19 + v18;
    *v19 = *(this + 3);
    v16 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v20;
    *(this + 3) = v19;
  }

  *(this + 1) = v16 + 24;
  v21 = 368;
LABEL_20:
  *(v16 + 16) = v21;
  *(v16 + 18) = 4;
  *v16 = v12;
  v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v22;
  if (!v22 || v22 + 24 > *(this + 2))
  {
    v23 = 2 * *(this + 4);
    if (v23 <= 0x20)
    {
      v23 = 32;
    }

    *(this + 4) = v23;
    v24 = v23 + 8;
    v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
    v26 = v25 + v24;
    *v25 = *(this + 3);
    v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v26;
    *(this + 3) = v25;
  }

  *(this + 1) = v22 + 24;
  *(v22 + 16) = 243;
  *(v22 + 18) = 0;
  swift::Demangle::Node::addChild(v22, v16, this, a4, a5);
  return v22;
}

uint64_t swift::Demangle::Demangler::demangleNatural(swift::Demangle::Demangler *this)
{
  v2 = *(this + 8);
  v1 = *(this + 9);
  if (v1 >= v2)
  {
    return 4294966296;
  }

  v3 = *(this + 7);
  if (*(v3 + v1) - 48 > 9)
  {
    return 4294966296;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v3 + v1);
    if ((v5 - 48) > 9)
    {
      break;
    }

    v6 = (v5 + 10 * v4 - 48);
    if (v6 < v4)
    {
      return 4294966296;
    }

    *(this + 9) = ++v1;
    v4 = v6;
    if (v2 == v1)
    {
      return v6;
    }
  }

  return v4;
}

uint64_t swift::Demangle::Demangler::demangleIndex(swift::Demangle::Demangler *this)
{
  v2 = *(this + 8);
  v1 = *(this + 9);
  if (v1 >= v2)
  {
    return 4294966296;
  }

  v3 = *(this + 7);
  v4 = *(v3 + v1);
  if (v4 == 95)
  {
    *(this + 9) = v1 + 1;
    return 0;
  }

  if ((v4 - 48) > 9)
  {
    return 4294966296;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v3 + v1);
    if ((v7 - 48) > 9)
    {
      break;
    }

    v8 = v7 + 10 * v6 - 48;
    if (v8 < v6)
    {
      return 4294966296;
    }

    *(this + 9) = ++v1;
    v6 = v8;
    if (v2 == v1)
    {
      v1 = v2;
      v6 = v8;
      break;
    }
  }

  if (v6 < 0 || v1 >= v2 || *(v3 + v1) != 95)
  {
    return 4294966296;
  }

  *(this + 9) = v1 + 1;
  return (v6 + 1);
}

unint64_t swift::Demangle::Demangler::demangleIndexAsNode(swift::Demangle::Demangler *this)
{
  v2 = *(this + 8);
  v1 = *(this + 9);
  if (v1 >= v2)
  {
    return 0;
  }

  v3 = *(this + 7);
  v4 = *(v3 + v1);
  if (v4 == 95)
  {
    v5 = 0;
    *(this + 9) = v1 + 1;
LABEL_4:
    v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v6;
    if (!v6 || v6 + 24 > *(this + 2))
    {
      v7 = 2 * *(this + 4);
      if (v7 <= 0x20)
      {
        v7 = 32;
      }

      *(this + 4) = v7;
      v8 = v7 + 8;
      v9 = this;
      v10 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
      this = v9;
      *v10 = *(v9 + 3);
      v6 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v9 + 2) = v10 + v8;
      *(v9 + 3) = v10;
    }

    *(this + 1) = v6 + 24;
    *(v6 + 16) = 171;
    *(v6 + 18) = 4;
    *v6 = v5;
    return v6;
  }

  if ((v4 - 48) <= 9)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(v3 + v1);
      if ((v13 - 48) > 9)
      {
        break;
      }

      v14 = v13 + 10 * v12 - 48;
      if (v14 >= v12)
      {
        *(this + 9) = ++v1;
        v12 = v14;
        if (v2 != v1)
        {
          continue;
        }
      }

      return 0;
    }

    v6 = 0;
    if (v12 < 0 || v1 >= v2 || v13 != 95)
    {
      return v6;
    }

    *(this + 9) = v1 + 1;
    v5 = (v12 + 1);
    goto LABEL_4;
  }

  return 0;
}

uint64_t swift::Demangle::Demangler::pushMultiSubstitutions(swift::Demangle::Demangler *this, int a2, unint64_t a3)
{
  v3 = 0;
  if (a2 <= 2048 && *(this + 28) > a3)
  {
    v3 = *(*(this + 13) + 8 * a3);
    if (a2 >= 2)
    {
      v5 = a2 + 1;
      do
      {
        v7 = v3;
        swift::Demangle::Vector<swift::Demangle::Node *>::push_back(this + 11, &v7, this);
        --v5;
      }

      while (v5 > 2);
    }
  }

  return v3;
}

unint64_t swift::Demangle::Demangler::createSwiftType(swift::Demangle::NodeFactory *a1, __int16 a2, const char *a3)
{
  Node = swift::Demangle::NodeFactory::createNode(a1, 163, "Swift", 5uLL);
  v9 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v9;
  if (!v9 || v9 + 24 > *(a1 + 2))
  {
    v10 = 2 * *(a1 + 4);
    if (v10 <= 0x20)
    {
      v10 = 32;
    }

    *(a1 + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    v13 = v12 + v11;
    *v12 = *(a1 + 3);
    v9 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v13;
    *(a1 + 3) = v12;
  }

  *(a1 + 1) = v9 + 24;
  if (a3)
  {
    v14 = strlen(a3);
  }

  else
  {
    v14 = 0;
  }

  *(v9 + 16) = 103;
  *(v9 + 18) = 3;
  *v9 = a3;
  *(v9 + 8) = v14;
  if (!Node)
  {
    return 0;
  }

  v15 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v15;
  if (!v15 || v15 + 24 > *(a1 + 2))
  {
    v16 = 2 * *(a1 + 4);
    if (v16 <= 0x20)
    {
      v16 = 32;
    }

    *(a1 + 4) = v16;
    v17 = v16 + 8;
    v18 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
    v19 = v18 + v17;
    *v18 = *(a1 + 3);
    v15 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v19;
    *(a1 + 3) = v18;
  }

  *(a1 + 1) = v15 + 24;
  *(v15 + 16) = a2;
  *(v15 + 18) = 0;
  swift::Demangle::Node::addChild(v15, Node, a1, v6, v7);
  swift::Demangle::Node::addChild(v15, v9, a1, v20, v21);
  v24 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v24;
  if (!v24 || v24 + 24 > *(a1 + 2))
  {
    v25 = 2 * *(a1 + 4);
    if (v25 <= 0x20)
    {
      v25 = 32;
    }

    *(a1 + 4) = v25;
    v26 = v25 + 8;
    v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
    v28 = v27 + v26;
    *v27 = *(a1 + 3);
    v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v28;
    *(a1 + 3) = v27;
  }

  *(a1 + 1) = v24 + 24;
  *(v24 + 16) = 243;
  *(v24 + 18) = 0;
  swift::Demangle::Node::addChild(v24, v15, a1, v22, v23);
  return v24;
}

unint64_t swift::Demangle::Demangler::createStandardSubstitution(swift::Demangle::Demangler *this, int a2, int a3)
{
  if (a2 == 65 && a3 != 1)
  {
    v3 = "AutoreleasingUnsafeMutablePointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 97 && (a3 & 1) == 0)
  {
    v3 = "Array";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 98 && (a3 & 1) == 0)
  {
    v3 = "Bool";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 68 && (a3 & 1) == 0)
  {
    v3 = "Dictionary";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 100 && (a3 & 1) == 0)
  {
    v3 = "Double";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v6 = a3;
  if (a2 == 102)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    v3 = "Float";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 != 104)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v3 = "Set";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v8 = a3;
  if (a2 == 73)
  {
    v9 = a3;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v3 = "DefaultIndices";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 != 105)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = "Int";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v10 = a3;
  if (a2 != 74)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v3 = "Character";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 78 && (a3 & 1) == 0)
  {
    v3 = "ClosedRange";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 110 && (a3 & 1) == 0)
  {
    v3 = "Range";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 79 && (a3 & 1) == 0)
  {
    v3 = "ObjectIdentifier";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v11 = a3;
  if (a2 != 80)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v3 = "UnsafePointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 112 && (a3 & 1) == 0)
  {
    v3 = "UnsafeMutablePointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 82 && (a3 & 1) == 0)
  {
    v3 = "UnsafeBufferPointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 114 && (a3 & 1) == 0)
  {
    v3 = "UnsafeMutableBufferPointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v12 = a3;
  if (a2 == 83)
  {
    v13 = a3;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v3 = "String";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 != 115)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v3 = "Substring";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 117 && (a3 & 1) == 0)
  {
    v3 = "UInt";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 86 && (a3 & 1) == 0)
  {
    v3 = "UnsafeRawPointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 118 && (a3 & 1) == 0)
  {
    v3 = "UnsafeMutableRawPointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 87 && (a3 & 1) == 0)
  {
    v3 = "UnsafeRawBufferPointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 119 && (a3 & 1) == 0)
  {
    v3 = "UnsafeMutableRawBufferPointer";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 113 && (a3 & 1) == 0)
  {
    v3 = "Optional";
    v4 = 63;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 66 && (a3 & 1) == 0)
  {
    v3 = "BinaryFloatingPoint";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v14 = a3;
  if (a2 == 69)
  {
    v15 = a3;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v3 = "Encodable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 != 101)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v3 = "Decodable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v16 = a3;
  if (a2 == 70)
  {
    v17 = a3;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v3 = "FloatingPoint";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 != 71)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v3 = "RandomNumberGenerator";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 72 && (a3 & 1) == 0)
  {
    v3 = "Hashable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 106 && (a3 & 1) == 0)
  {
    v3 = "Numeric";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 75 && (a3 & 1) == 0)
  {
    v3 = "BidirectionalCollection";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 107 && (a3 & 1) == 0)
  {
    v3 = "RandomAccessCollection";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 76 && (a3 & 1) == 0)
  {
    v3 = "Comparable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 108 && (a3 & 1) == 0)
  {
    v3 = "Collection";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v18 = a3;
  if (a2 != 77)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v3 = "MutableCollection";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 109 && (a3 & 1) == 0)
  {
    v3 = "RangeReplaceableCollection";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 81 && (a3 & 1) == 0)
  {
    v3 = "Equatable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  v19 = a3;
  if (a2 == 84)
  {
    v20 = a3;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v3 = "Sequence";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 != 116)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v3 = "IteratorProtocol";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 85 && (a3 & 1) == 0)
  {
    v3 = "UnsignedInteger";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 88 && (a3 & 1) == 0)
  {
    v3 = "RangeExpression";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 120 && (a3 & 1) == 0)
  {
    v3 = "Strideable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 89 && (a3 & 1) == 0)
  {
    v3 = "RawRepresentable";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 121 && (a3 & 1) == 0)
  {
    v3 = "StringProtocol";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 90 && (a3 & 1) == 0)
  {
    v3 = "SignedInteger";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 122 && (a3 & 1) == 0)
  {
    v3 = "BinaryInteger";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 65 && a3)
  {
    v3 = "Actor";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 67 && a3)
  {
    v3 = "CheckedContinuation";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 99 && a3)
  {
    v3 = "UnsafeContinuation";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 69 && a3)
  {
    v3 = "CancellationError";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 101 && a3)
  {
    v3 = "UnownedSerialExecutor";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 70 && a3)
  {
    v3 = "Executor";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 102 && a3)
  {
    v3 = "SerialExecutor";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 71 && a3)
  {
    v3 = "TaskGroup";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 103 && a3)
  {
    v3 = "ThrowingTaskGroup";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 104 && a3)
  {
    v3 = "TaskExecutor";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 73 && a3)
  {
    v3 = "AsyncIteratorProtocol";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 105 && a3)
  {
    v3 = "AsyncSequence";
    v4 = 190;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 74 && a3)
  {
    v3 = "UnownedJob";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 77 && a3)
  {
    v3 = "MainActor";
    v4 = 25;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 80 && a3)
  {
    v3 = "TaskPriority";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 83 && a3)
  {
    v3 = "AsyncStream";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 115 && a3)
  {
    v3 = "AsyncThrowingStream";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 84 && a3)
  {
    v3 = "Task";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  if (a2 == 116 && a3)
  {
    v3 = "UnsafeCurrentTask";
    v4 = 230;
    return swift::Demangle::Demangler::createSwiftType(this, v4, v3);
  }

  return 0;
}

unsigned int *swift::Demangle::Vector<char>::push_back(unsigned int *result, char *a2, void *a3)
{
  v4 = result;
  v5 = result[2];
  v6 = result[3];
  v7 = *result;
  if (v5 >= v6)
  {
    v8 = a3[1];
    if (&v7[v6] == v8)
    {
      v9 = a3[2];
      if ((v8 + 1) <= v9)
      {
        a3[1] = v8 + 1;
        LODWORD(v10) = 1;
LABEL_16:
        *(v4 + 3) = v6 + v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = a3[2];
    }

    if ((2 * v6) <= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = (2 * v6);
    }

    v11 = v10 + v6;
    if (!v8 || &v8[v11] > v9)
    {
      v12 = 2 * a3[4];
      if (v12 <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      a3[4] = v12;
      v13 = v12 + 8;
      v14 = a3;
      result = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      a3 = v14;
      v15 = result + v13;
      *result = v14[3];
      v8 = (result + 2);
      v14[2] = v15;
      v14[3] = result;
    }

    a3[1] = &v8[v11];
    if (v6)
    {
      result = memcpy(v8, *v4, v6);
    }

    *v4 = v8;
    v7 = v8;
    v5 = *(v4 + 2);
    LODWORD(v6) = *(v4 + 3);
    goto LABEL_16;
  }

LABEL_17:
  v16 = *a2;
  *(v4 + 2) = v5 + 1;
  v7[v5] = v16;
  return result;
}

BOOL anonymous namespace::isDeclName(int a1)
{
  result = 1;
  if (((a1 - 183) > 0x3D || ((1 << (a1 + 73)) & 0x200000020000010DLL) == 0) && ((a1 - 103) > 0x2B || ((1 << (a1 - 103)) & 0x80004000001) == 0))
  {
    return a1 == 361;
  }

  return result;
}

unint64_t swift::Demangle::Demangler::popModule(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = *(*(this + 11) + 8 * v6);
  v8 = *(v7 + 16);
  if (v8 != 163)
  {
    if (v8 == 103)
    {
      *(this + 24) = v6;
      return swift::Demangle::Demangler::changeKind(this, v7, 163, a4, a5);
    }

    return 0;
  }

  *(this + 24) = v6;
  return v7;
}

unint64_t swift::Demangle::Demangler::popContext(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = *(*(this + 11) + 8 * (v5 - 1));
  v8 = *(v7 + 16);
  if (v8 == 103)
  {
    *(this + 24) = v6;
    v10 = this;
    v7 = swift::Demangle::Demangler::changeKind(this, v7, 163, a4, a5);
    if (v7)
    {
      return v7;
    }

    this = v10;
    v5 = *(v10 + 24);
    if (!v5)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v8 != 163)
  {
LABEL_8:
    v11 = v5 - 1;
    v12 = *(*(this + 11) + 8 * (v5 - 1));
    if (*(v12 + 8) == 243)
    {
      *(this + 24) = v11;
      v13 = *(v12 + 18);
      if (v13 == 1)
      {
        goto LABEL_13;
      }

      if (v13 == 5 && *(v12 + 2) == 1)
      {
        v12 = *v12;
LABEL_13:
        v14 = *v12;
        v15 = *(*v12 + 16);
        if (swift::Demangle::isContext())
        {
          return v14;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v16 = this;
      v17 = *(*(this + 11) + 8 * v11);
      v18 = *(v12 + 8);
      if (swift::Demangle::isContext())
      {
        *(v16 + 24) = v11;
        return v17;
      }
    }

    return 0;
  }

  *(this + 24) = v6;
  return v7;
}

uint64_t *swift::Demangle::Demangler::popTypeAndGetAnyGeneric(swift::Demangle::Demangler *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = v1 - 1;
  v3 = *(*(this + 11) + 8 * (v1 - 1));
  if (*(v3 + 8) != 243)
  {
    return 0;
  }

  *(this + 24) = v2;
  v4 = *(v3 + 18);
  if (v4 != 1)
  {
    if (v4 != 5 || *(v3 + 2) != 1)
    {
      return 0;
    }

    v3 = *v3;
  }

  v5 = *v3;
  if (!v5)
  {
    return 0;
  }

  result = 0;
  v7 = *(v5 + 8);
  if (v7 > 0xBD)
  {
    v8 = v7 - 190 > 0x37 || ((1 << (v7 + 66)) & 0xC0010000000003) == 0;
    if (v8 && v7 != 361)
    {
      return result;
    }

    return v5;
  }

  v9 = v7 > 0x3F || ((1 << v7) & 0x8000000002200000) == 0;
  if (!v9 || v7 == 177)
  {
    return v5;
  }

  return result;
}

uint64_t anonymous namespace::isAnyGeneric(int a1)
{
  result = 1;
  if (a1 <= 189)
  {
    if ((a1 > 0x3F || ((1 << a1) & 0x8000000002200000) == 0) && a1 != 177)
    {
      return 0;
    }
  }

  else if (((a1 - 190) > 0x37 || ((1 << (a1 + 66)) & 0xC0010000000003) == 0) && a1 != 361)
  {
    return 0;
  }

  return result;
}

unint64_t swift::Demangle::Demangler::demangleClangType(swift::Demangle::Demangler *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v2 >= v1)
  {
    return 0;
  }

  v3 = *(this + 7);
  if (*(v3 + v2) - 48 > 9)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v3 + v2);
    if ((v5 - 48) > 9)
    {
      break;
    }

    v6 = v5 + 10 * v4 - 48;
    if (v6 < v4)
    {
      return 0;
    }

    *(this + 9) = ++v2;
    v4 = v6;
    if (v1 == v2)
    {
      v2 = v1;
      v4 = v6;
      break;
    }
  }

  if (v4 < 1)
  {
    return 0;
  }

  v7 = v4;
  if (v2 + v4 > v1)
  {
    return 0;
  }

  v9 = *(this + 1);
  v10 = this;
  if (v9)
  {
    if (v4 <= 4uLL)
    {
      v11 = 4;
    }

    else
    {
      v11 = v4;
    }

    if (&v9[v11] <= *(this + 2))
    {
LABEL_24:
      v16 = &v9[v11];
      goto LABEL_25;
    }

LABEL_21:
    v12 = 2 * *(this + 4);
    if (v12 <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    *(this + 4) = v12;
    v13 = v12 + 8;
    v14 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    this = v10;
    v15 = v14 + v13;
    *v14 = *(v10 + 3);
    v9 = (v14 + 1);
    *(v10 + 2) = v15;
    *(v10 + 3) = v14;
    goto LABEL_24;
  }

  if (v4 > *(this + 2))
  {
    if (v4 <= 4uLL)
    {
      v11 = 4;
    }

    else
    {
      v11 = v4;
    }

    goto LABEL_21;
  }

  v9 = 0;
  v16 = v4;
LABEL_25:
  *(this + 1) = v16;
  memcpy(v9, (v3 + v2), v7);
  v17 = v10;
  *(v10 + 9) += v7;
  result = (*(v10 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v10 + 1) = result;
  if (!result || result + 24 > *(v10 + 2))
  {
    v18 = 2 * *(v10 + 4);
    if (v18 <= 0x20)
    {
      v18 = 32;
    }

    *(v10 + 4) = v18;
    v19 = v18 + 8;
    v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    v17 = v10;
    *v20 = *(v10 + 3);
    result = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v10 + 2) = v20 + v19;
    *(v10 + 3) = v20;
  }

  *(v17 + 1) = result + 24;
  *(result + 16) = 24;
  *(result + 18) = 3;
  *result = v9;
  *(result + 8) = v7;
  return result;
}

unint64_t swift::Demangle::Demangler::popFunctionParams(swift::Demangle::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v8 = v5 - 1;
  v9 = *(*(a1 + 11) + 8 * v8);
  v10 = *(v9 + 16);
  if (v10 != 243)
  {
    if (v10 == 287)
    {
      *(a1 + 24) = v8;
      v11 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 1) = v11;
      if (!v11 || (v12 = *(a1 + 2), v11 + 24 > v12))
      {
        v13 = 2 * *(a1 + 4);
        if (v13 <= 0x20)
        {
          v13 = 32;
        }

        *(a1 + 4) = v13;
        v14 = v13 + 8;
        v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
        v12 = v15 + v14;
        *v15 = *(a1 + 3);
        v11 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 2) = v15 + v14;
        *(a1 + 3) = v15;
      }

      *(v11 + 16) = 234;
      *(v11 + 18) = 0;
      v9 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 1) = v9;
      if (v9)
      {
        v16 = v9 + 24 > v12;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = 2 * *(a1 + 4);
        if (v17 <= 0x20)
        {
          v17 = 32;
        }

        *(a1 + 4) = v17;
        v18 = v17 + 8;
        v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
        v20 = v19 + v18;
        *v19 = *(a1 + 3);
        v9 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 2) = v20;
        *(a1 + 3) = v19;
      }

      *(a1 + 1) = v9 + 24;
      *(v9 + 16) = 243;
      *(v9 + 18) = 0;
      swift::Demangle::Node::addChild(v9, v11, a1, a4, a5);
      goto LABEL_20;
    }

    return 0;
  }

  *(a1 + 24) = v8;
LABEL_20:
  v21 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v21;
  if (!v21 || v21 + 24 > *(a1 + 2))
  {
    v22 = 2 * *(a1 + 4);
    if (v22 <= 0x20)
    {
      v22 = 32;
    }

    *(a1 + 4) = v22;
    v23 = v22 + 8;
    v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
    v25 = v24 + v23;
    *v24 = *(a1 + 3);
    v21 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v25;
    *(a1 + 3) = v24;
  }

  *(a1 + 1) = v21 + 24;
  *(v21 + 16) = a2;
  *(v21 + 18) = 0;
  swift::Demangle::Node::addChild(v21, v9, a1, a4, a5);
  return v21;
}

unint64_t swift::Demangle::Demangler::popPack(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v6;
  if (!v6 || &v6[1].u64[1] > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = *(this + 3);
    v6 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v10;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  v6[1].i16[0] = 237;
  v6[1].i8[2] = 0;
  v11 = *(this + 24);
  if (v11 && (v12 = v11 - 1, *(*(*(this + 11) + 8 * v12) + 16) == 287))
  {
    *(this + 24) = v12;
  }

  else
  {
    do
    {
      v18 = *(this + 24);
      if (!v18)
      {
        return 0;
      }

      v19 = v18 - 1;
      v20 = *(this + 11);
      v21 = *(*(v20 + 8 * (v18 - 1)) + 16);
      if (v21 == 288)
      {
        *(this + 24) = v19;
        --v18;
        if (!v19)
        {
          return 0;
        }
      }

      v22 = v18 - 1;
      v23 = *(v20 + 8 * v22);
      if (*(v23 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v22;
      swift::Demangle::Node::addChild(v6, v23, this, a4, a5);
    }

    while (v21 != 288);
    v24 = v6[1].u8[2];
    if (v24 == 5)
    {
      v26 = v6->u32[2];
      if (v26)
      {
        v27 = (v6->i64[0] + 8 * v26 - 8);
        if (v27 > v6->i64[0])
        {
          v28 = v6->i64[0] + 8;
          do
          {
            v29 = *(v28 - 8);
            *(v28 - 8) = *v27;
            *v27-- = v29;
            v30 = v28 >= v27;
            v28 += 8;
          }

          while (!v30);
        }
      }
    }

    else if (v24 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  v13 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v13;
  if (!v13 || v13 + 24 > *(this + 2))
  {
    v14 = 2 * *(this + 4);
    if (v14 <= 0x20)
    {
      v14 = 32;
    }

    *(this + 4) = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    v17 = v16 + v15;
    *v16 = *(this + 3);
    v13 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v17;
    *(this + 3) = v16;
  }

  *(this + 1) = v13 + 24;
  *(v13 + 16) = 243;
  *(v13 + 18) = 0;
  swift::Demangle::Node::addChild(v13, v6, this, a4, a5);
  return v13;
}

unint64_t swift::Demangle::Demangler::popSILPack(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 9);
  if (v5 >= *(this + 8))
  {
    return 0;
  }

  *(this + 9) = v5 + 1;
  v7 = *(*(this + 7) + v5);
  if (v7 == 105)
  {
    v8 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
    *(this + 1) = v8;
    if (v8)
    {
      v9 = 239;
      if (&v8[1].u64[1] <= *(this + 2))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 239;
    }
  }

  else
  {
    if (v7 != 100)
    {
      return 0;
    }

    v8 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
    *(this + 1) = v8;
    if (v8)
    {
      v9 = 238;
      if (&v8[1].u64[1] <= *(this + 2))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 238;
    }
  }

  v11 = 2 * *(this + 4);
  if (v11 <= 0x20)
  {
    v11 = 32;
  }

  *(this + 4) = v11;
  v12 = v11 + 8;
  v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
  v14 = v13 + v12;
  *v13 = *(this + 3);
  v8 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(this + 2) = v14;
  *(this + 3) = v13;
LABEL_16:
  *(this + 1) = v8 + 24;
  v8[1].i16[0] = v9;
  v8[1].i8[2] = 0;
  v15 = *(this + 24);
  if (!v15 || (v16 = v15 - 1, *(*(*(this + 11) + 8 * v16) + 16) != 287))
  {
    while (1)
    {
      v22 = *(this + 24);
      if (!v22)
      {
        return 0;
      }

      v23 = v22 - 1;
      v24 = *(this + 11);
      v25 = *(*(v24 + 8 * (v22 - 1)) + 16);
      if (v25 == 288)
      {
        *(this + 24) = v23;
        --v22;
        if (!v23)
        {
          return 0;
        }
      }

      v26 = v22 - 1;
      v27 = *(v24 + 8 * v26);
      if (*(v27 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v26;
      swift::Demangle::Node::addChild(v8, v27, this, a4, a5);
      if (v25 == 288)
      {
        v28 = v8[1].u8[2];
        if (v28 == 5)
        {
          v29 = v8->u32[2];
          if (v29)
          {
            v30 = (v8->i64[0] + 8 * v29 - 8);
            if (v30 > v8->i64[0])
            {
              v31 = v8->i64[0] + 8;
              do
              {
                v32 = *(v31 - 8);
                *(v31 - 8) = *v30;
                *v30-- = v32;
                v33 = v31 >= v30;
                v31 += 8;
              }

              while (!v33);
            }
          }
        }

        else if (v28 == 2)
        {
          *v8 = vextq_s8(*v8, *v8, 8uLL);
        }

        goto LABEL_19;
      }
    }
  }

  *(this + 24) = v16;
LABEL_19:
  v17 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v17;
  if (!v17 || v17 + 24 > *(this + 2))
  {
    v18 = 2 * *(this + 4);
    if (v18 <= 0x20)
    {
      v18 = 32;
    }

    *(this + 4) = v18;
    v19 = v18 + 8;
    v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    v21 = v20 + v19;
    *v20 = *(this + 3);
    v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v21;
    *(this + 3) = v20;
  }

  *(this + 1) = v17 + 24;
  *(v17 + 16) = 243;
  *(v17 + 18) = 0;
  swift::Demangle::Node::addChild(v17, v8, this, a4, a5);
  return v17;
}

int8x16_t *swift::Demangle::Demangler::popTypeList(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v6;
  if (!v6 || &v6[1].u64[1] > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = *(this + 3);
    v6 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v10;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  v6[1].i16[0] = 246;
  v6[1].i8[2] = 0;
  v11 = *(this + 24);
  if (v11 && (v12 = v11 - 1, *(*(*(this + 11) + 8 * v12) + 16) == 287))
  {
    *(this + 24) = v12;
  }

  else
  {
    do
    {
      v13 = *(this + 24);
      if (!v13)
      {
        return 0;
      }

      v14 = v13 - 1;
      v15 = *(this + 11);
      v16 = *(*(v15 + 8 * (v13 - 1)) + 16);
      if (v16 == 288)
      {
        *(this + 24) = v14;
        --v13;
        if (!v14)
        {
          return 0;
        }
      }

      v17 = v13 - 1;
      v18 = *(v15 + 8 * v17);
      if (*(v18 + 8) != 243)
      {
        return 0;
      }

      *(this + 24) = v17;
      swift::Demangle::Node::addChild(v6, v18, this, a4, a5);
    }

    while (v16 != 288);
    v19 = v6[1].u8[2];
    if (v19 == 5)
    {
      v21 = v6->u32[2];
      if (v21)
      {
        v22 = (v6->i64[0] + 8 * v21 - 8);
        if (v22 > v6->i64[0])
        {
          v23 = v6->i64[0] + 8;
          do
          {
            v24 = *(v23 - 8);
            *(v23 - 8) = *v22;
            *v22-- = v24;
            v25 = v23 >= v22;
            v23 += 8;
          }

          while (!v25);
        }
      }
    }

    else if (v19 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  return v6;
}

int8x16_t *swift::Demangle::Demangler::popAnyProtocolConformanceList(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v6;
  if (!v6 || &v6[1].u64[1] > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = *(this + 3);
    v6 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v10;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  v6[1].i16[0] = 2;
  v6[1].i8[2] = 0;
  v11 = *(this + 24);
  if (v11 && (v12 = v11 - 1, *(*(*(this + 11) + 8 * v12) + 16) == 287))
  {
    *(this + 24) = v12;
  }

  else
  {
    do
    {
      v16 = *(this + 24);
      if (!v16)
      {
        return 0;
      }

      v17 = v16 - 1;
      v18 = *(this + 11);
      v19 = *(*(v18 + 8 * (v16 - 1)) + 16);
      if (v19 == 288)
      {
        *(this + 24) = v17;
        --v16;
        if (!v17)
        {
          return 0;
        }
      }

      v13 = v16 - 1;
      v14 = *(v18 + 8 * v13);
      v15 = v14[8];
      if ((v15 - 48) >= 4 && (v15 - 27) > 1)
      {
        return 0;
      }

      *(this + 24) = v13;
      swift::Demangle::Node::addChild(v6, v14, this, a4, a5);
    }

    while (v19 != 288);
    v21 = v6[1].u8[2];
    if (v21 == 5)
    {
      v22 = v6->u32[2];
      if (v22)
      {
        v23 = (v6->i64[0] + 8 * v22 - 8);
        if (v23 > v6->i64[0])
        {
          v24 = v6->i64[0] + 8;
          do
          {
            v25 = *(v24 - 8);
            *(v24 - 8) = *v23;
            *v23-- = v25;
            v26 = v24 >= v23;
            v24 += 8;
          }

          while (!v26);
        }
      }
    }

    else if (v21 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  return v6;
}

uint64_t swift::Demangle::Demangler::popAnyProtocolConformance(swift::Demangle::Demangler *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  result = *(*(this + 11) + 8 * v3);
  v5 = *(result + 16);
  v6 = v5 > 0x33;
  v7 = (1 << v5) & 0xF000018000000;
  if (v6 || v7 == 0)
  {
    return 0;
  }

  *(this + 24) = v3;
  return result;
}

unint64_t swift::Demangle::Demangler::demangleRetroactiveProtocolConformanceRef(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 24);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6 - 1;
  v8 = *(*(this + 11) + 8 * v7);
  v9 = *(v8 + 16);
  if (v9 == 163)
  {
    *(this + 24) = v7;
    goto LABEL_7;
  }

  if (v9 == 103)
  {
    *(this + 24) = v7;
    v8 = swift::Demangle::Demangler::changeKind(this, v8, 163, a4, a5);
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:
  v10 = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
  v13 = 0;
  if (v8)
  {
    v14 = v10;
    if (v10)
    {
      v13 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v13;
      if (!v13 || v13 + 24 > *(this + 2))
      {
        v15 = 2 * *(this + 4);
        if (v15 <= 0x20)
        {
          v15 = 32;
        }

        *(this + 4) = v15;
        v16 = v15 + 8;
        v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
        v18 = v17 + v16;
        *v17 = *(this + 3);
        v13 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v18;
        *(this + 3) = v17;
      }

      *(this + 1) = v13 + 24;
      *(v13 + 16) = 195;
      *(v13 + 18) = 0;
      swift::Demangle::Node::addChild(v13, v14, this, v11, v12);
      swift::Demangle::Node::addChild(v13, v8, this, v19, v20);
    }
  }

  return v13;
}

uint64_t swift::Demangle::Demangler::popDependentProtocolConformance(swift::Demangle::Demangler *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  result = *(*(this + 11) + 8 * v3);
  if (*(result + 16) - 48 > 2)
  {
    return 0;
  }

  *(this + 24) = v3;
  return result;
}

unint64_t swift::Demangle::Demangler::demangleDependentConformanceIndex(swift::Demangle::Demangler *this)
{
  v2 = *(this + 8);
  v1 = *(this + 9);
  if (v1 >= v2)
  {
    return 0;
  }

  v3 = *(this + 7);
  v4 = *(v3 + v1);
  if (v4 == 95)
  {
    v5 = 0;
    *(this + 9) = v1 + 1;
  }

  else if ((v4 - 48) > 9)
  {
    return 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = *(v3 + v1);
      if ((v8 - 48) > 9)
      {
        break;
      }

      v9 = v8 + 10 * v7 - 48;
      if (v9 >= v7)
      {
        *(this + 9) = ++v1;
        v7 = v9;
        if (v2 != v1)
        {
          continue;
        }
      }

      return 0;
    }

    v5 = 0;
    if ((v7 & 0x80000000) == 0 && v1 < v2 && v8 == 95)
    {
      *(this + 9) = v1 + 1;
      if (v7)
      {
        v10 = (v7 - 1);
        v5 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v5;
        if (!v5 || v5 + 24 > *(this + 2))
        {
          v11 = 2 * *(this + 4);
          if (v11 <= 0x20)
          {
            v11 = 32;
          }

          *(this + 4) = v11;
          v12 = v11 + 8;
          v13 = this;
          v14 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
          this = v13;
          *v14 = *(v13 + 3);
          v5 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v13 + 2) = v14 + v12;
          *(v13 + 3) = v14;
        }

        *(this + 1) = v5 + 24;
        *(v5 + 16) = 104;
        *(v5 + 18) = 4;
        *v5 = v10;
      }

      else
      {
        v5 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v5;
        if (!v5 || v5 + 24 > *(this + 2))
        {
          v15 = 2 * *(this + 4);
          if (v15 <= 0x20)
          {
            v15 = 32;
          }

          *(this + 4) = v15;
          v16 = v15 + 8;
          v17 = this;
          v18 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
          this = v17;
          *v18 = *(v17 + 3);
          v5 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(v17 + 2) = v18 + v16;
          *(v17 + 3) = v18;
        }

        *(this + 1) = v5 + 24;
        *(v5 + 16) = 258;
        *(v5 + 18) = 0;
      }
    }
  }

  return v5;
}

unint64_t swift::Demangle::Demangler::popDependentAssociatedConformance(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  result = swift::Demangle::Demangler::popProtocol(this, a2, a3, a4, a5);
  v9 = *(this + 24);
  if (!v9)
  {
    return 0;
  }

  v10 = v9 - 1;
  v11 = *(*(this + 11) + 8 * v10);
  if (*(v11 + 8) != 243)
  {
    return 0;
  }

  *(this + 24) = v10;
  if (result)
  {
    v12 = result;
    v13 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v13;
    if (!v13 || v13 + 24 > *(this + 2))
    {
      v14 = 2 * *(this + 4);
      if (v14 <= 0x20)
      {
        v14 = 32;
      }

      *(this + 4) = v14;
      v15 = v14 + 8;
      v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
      v17 = v16 + v15;
      *v16 = *(this + 3);
      v13 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v17;
      *(this + 3) = v16;
    }

    *(this + 1) = v13 + 24;
    *(v13 + 16) = 35;
    *(v13 + 18) = 0;
    swift::Demangle::Node::addChild(v13, v11, this, v7, v8);
    swift::Demangle::Node::addChild(v13, v12, this, v18, v19);
    return v13;
  }

  return result;
}

int8x16_t *swift::Demangle::Demangler::popRetroactiveConformances(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v14 = v5 - 1;
    v12 = *(*(this + 11) + 8 * v14);
    if (*(v12 + 8) != 217)
    {
      break;
    }

    *(this + 24) = v14;
    if (!v7)
    {
      v7 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
      *(this + 1) = v7;
      if (!v7 || &v7[1].u64[1] > *(this + 2))
      {
        v8 = 2 * *(this + 4);
        if (v8 <= 0x20)
        {
          v8 = 32;
        }

        *(this + 4) = v8;
        v9 = v8 + 8;
        v10 = v12;
        v11 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
        v12 = v10;
        v13 = v11 + v9;
        *v11 = *(this + 3);
        v7 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
        *(this + 2) = v13;
        *(this + 3) = v11;
      }

      *(this + 1) = v7 + 24;
      v7[1].i16[0] = 246;
      v7[1].i8[2] = 0;
    }

    swift::Demangle::Node::addChild(v7, v12, this, a4, a5);
    v5 = *(this + 24);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    return v7;
  }

LABEL_15:
  v15 = v7[1].u8[2];
  if (v15 == 5)
  {
    v16 = v7->u32[2];
    if (v16)
    {
      v17 = (v7->i64[0] + 8 * v16 - 8);
      if (v17 > v7->i64[0])
      {
        v18 = v7->i64[0] + 8;
        do
        {
          v19 = *(v18 - 8);
          *(v18 - 8) = *v17;
          *v17-- = v19;
          v20 = v18 >= v17;
          v18 += 8;
        }

        while (!v20);
      }
    }
  }

  else if (v15 == 2)
  {
    *v7 = vextq_s8(*v7, *v7, 8uLL);
  }

  return v7;
}

uint64_t swift::Demangle::Demangler::demangleBoundGenerics(uint64_t a1, const void **a2, int8x16_t **a3, uint64_t a4, const char *a5)
{
  *a3 = swift::Demangle::Demangler::popRetroactiveConformances(a1, a2, a3, a4, a5);
  while (1)
  {
    v7 = (*(a1 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 8) = v7;
    if (!v7 || v7 + 24 > *(a1 + 16))
    {
      v8 = 2 * *(a1 + 32);
      if (v8 <= 0x20)
      {
        v8 = 32;
      }

      *(a1 + 32) = v8;
      v9 = v8 + 8;
      v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
      *v10 = *(a1 + 24);
      v7 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 16) = v10 + v9;
      *(a1 + 24) = v10;
    }

    *(a1 + 8) = v7 + 24;
    *(v7 + 16) = 246;
    *(v7 + 18) = 0;
    v26 = v7;
    swift::Demangle::Vector<swift::Demangle::Node *>::push_back(a2, &v26, a1);
    for (i = *(a1 + 96); i; i = *(a1 + 96))
    {
      v14 = *(*(a1 + 88) + 8 * (i - 1));
      if (*(v14 + 8) != 243)
      {
        break;
      }

      *(a1 + 96) = i - 1;
      swift::Demangle::Node::addChild(v26, v14, a1, v11, v12);
    }

    v15 = *(v26 + 18);
    if (v15 == 5)
    {
      v16 = *v26;
      v17 = *(v26 + 2);
      v18 = (*v26 + 8 * v17 - 8);
      if (v17 && v18 > v16)
      {
        v20 = v16 + 8;
        do
        {
          v21 = *(v20 - 8);
          *(v20 - 8) = *v18;
          *v18-- = v21;
          v22 = v20 >= v18;
          v20 += 8;
        }

        while (!v22);
      }
    }

    else if (v15 == 2)
    {
      *v26 = vextq_s8(*v26, *v26, 8uLL);
    }

    if (!i)
    {
      break;
    }

    v23 = i - 1;
    v24 = *(*(*(a1 + 88) + 8 * v23) + 16);
    if (v24 != 288)
    {
      if (v24 == 287)
      {
        *(a1 + 96) = v23;
        return 1;
      }

      return 0;
    }

    *(a1 + 96) = v23;
  }

  return 0;
}

const void **swift::Demangle::Vector<swift::Demangle::Node *>::push_back(const void **result, uint64_t *a2, void *a3)
{
  v4 = result;
  v5 = *(result + 2);
  v6 = *(result + 3);
  v7 = *result;
  if (v5 >= v6)
  {
    v8 = a3[1];
    if (&v7[8 * v6] == v8)
    {
      v9 = a3[2];
      if ((v8 + 8) <= v9)
      {
        a3[1] = v8 + 8;
        LODWORD(v10) = 1;
LABEL_16:
        *(v4 + 3) = v6 + v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = a3[2];
    }

    if ((2 * v6) <= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = (2 * v6);
    }

    v11 = 8 * (v10 + v6);
    v7 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    a3[1] = v7;
    if (!v7 || &v7[v11] > v9)
    {
      v12 = 2 * a3[4];
      if (v12 <= v11 + 8)
      {
        v12 = v11 + 8;
      }

      a3[4] = v12;
      v13 = v12 + 8;
      v14 = a3;
      result = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      a3 = v14;
      v15 = result + v13;
      *result = v14[3];
      v7 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      v14[2] = v15;
      v14[3] = result;
    }

    a3[1] = &v7[v11];
    if (v6)
    {
      result = memcpy(v7, *v4, 8 * v6);
    }

    *v4 = v7;
    v5 = *(v4 + 2);
    LODWORD(v6) = *(v4 + 3);
    goto LABEL_16;
  }

LABEL_17:
  v16 = *a2;
  *(v4 + 2) = v5 + 1;
  *&v7[8 * v5] = v16;
  return result;
}

unint64_t swift::Demangle::Demangler::demangleBoundGenericArgs(swift::Demangle::NodeFactory *a1, unint64_t a2, uint64_t a3, unint64_t a4, const char *a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a4;
  v7 = *(a3 + 8);
  if (v7 <= a4)
  {
    return 0;
  }

  v9 = *(a2 + 16);
  v10 = a2;
  if (v9 != 244 && v9 != 191)
  {
    v42 = *(a2 + 18);
    v43 = a2;
    if ((v42 - 1) >= 2)
    {
      if (v42 != 5 || !*(a2 + 8))
      {
        return 0;
      }

      v43 = *a2;
    }

    v44 = 0;
    if (*(a2 + 16) <= 0xBBu)
    {
      if (((v9 - 72) > 0x3A || ((1 << (v9 - 72)) & 0x404000000000001) == 0) && v9 != 34)
      {
        goto LABEL_66;
      }
    }

    else if (((v9 - 229) > 0x25 || ((1 << (v9 + 27)) & 0x2000000005) == 0) && (v9 - 188) >= 2)
    {
LABEL_66:
      ++a4;
      v44 = 1;
    }

    v45 = *(*a3 + 8 * v5);
    if (a4 < v7)
    {
      v46 = *v43;
      if (*(*v43 + 16) != 73)
      {
        v50 = swift::Demangle::Demangler::demangleBoundGenericArgs(a1, *v43, a3);
        v53 = v10;
        v54 = v50;
LABEL_80:
        if (v54)
        {
LABEL_81:
          v62 = *(v53 + 8);
          v63 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(a1 + 1) = v63;
          if (!v63 || v63 + 24 > *(a1 + 2))
          {
            v64 = 2 * *(a1 + 4);
            if (v64 <= 0x20)
            {
              v64 = 32;
            }

            *(a1 + 4) = v64;
            v65 = v64 + 8;
            v66 = malloc_type_malloc(v64 + 8, 0x2004093837F09uLL);
            v67 = v66 + v65;
            *v66 = *(a1 + 3);
            v63 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
            *(a1 + 2) = v67;
            *(a1 + 3) = v66;
          }

          *(a1 + 1) = v63 + 24;
          *(v63 + 16) = v62;
          *(v63 + 18) = 0;
          swift::Demangle::Node::addChild(v63, v54, a1, v51, v52);
          v68 = 1;
          v69 = v10;
          while (1)
          {
            v70 = *(v69 + 18);
            switch(v70)
            {
              case 1:
                v71 = *(v69 + 18);
                break;
              case 5:
                v71 = *(v69 + 2);
                break;
              case 2:
                v71 = 2;
                break;
              default:
                goto LABEL_107;
            }

            v72 = v68;
            if (v71 <= v68)
            {
LABEL_107:
              a2 = v63;
              goto LABEL_108;
            }

            v73 = v70 - 1;
            if (v70 != 1)
            {
              if (v70 == 5)
              {
                if (*(v69 + 2) <= v72)
                {
                  goto LABEL_89;
                }

                goto LABEL_103;
              }

              v70 = 2;
            }

            if (v70 <= v72)
            {
              goto LABEL_89;
            }

LABEL_103:
            v74 = v69;
            if (v73 >= 2)
            {
              v74 = *v69;
            }

            v75 = *(v74 + v72);
            if (v75)
            {
              swift::Demangle::Node::addChild(v63, v75, a1, a4, a5);
              v69 = v10;
            }

LABEL_89:
            v68 = v72 + 1;
          }
        }

        return 0;
      }

      v47 = *(v46 + 18);
      v48 = v46;
      if (v47 != 2)
      {
        if (v47 != 5 || *(v46 + 8) < 2u)
        {
          v49 = 0;
LABEL_68:
          v55 = swift::Demangle::Demangler::demangleBoundGenericArgs(a1, v49, a3);
          v57 = *(v46 + 18);
          v58 = v46;
          if ((v57 - 1) >= 2)
          {
            if (v57 != 5 || !*(v46 + 8))
            {
              v59 = 0;
LABEL_74:
              v60 = swift::Demangle::Demangler::createWithChildren(a1, 73, v59, v55, v56);
              v54 = v60;
              if (*(v46 + 18) == 5)
              {
                v53 = v10;
                if (*(v46 + 8) == 3)
                {
                  if (v60)
                  {
                    v61 = *(*v46 + 16);
                    if (v61)
                    {
                      swift::Demangle::Node::addChild(v60, v61, a1, v51, v52);
                      v53 = v10;
                      goto LABEL_81;
                    }
                  }
                }
              }

              else
              {
                v53 = v10;
              }

              goto LABEL_80;
            }

            v58 = *v46;
          }

          v59 = *v58;
          goto LABEL_74;
        }

        v48 = *v46;
      }

      v49 = *(v48 + 1);
      goto LABEL_68;
    }

LABEL_108:
    if (!v44)
    {
      return a2;
    }

    v76 = *(v45 + 18);
    if ((v76 - 1) >= 2 && (v76 != 5 || !*(v45 + 8)))
    {
      return a2;
    }

    result = 0;
    v77 = *(a2 + 16);
    if (v77 > 0xB0)
    {
      if (*(a2 + 16) > 0xE5u)
      {
        if (v77 == 245)
        {
          v78 = 18;
        }

        else
        {
          if (v77 != 230)
          {
            return result;
          }

          v78 = 15;
        }
      }

      else if (v77 == 177)
      {
        v78 = 17;
      }

      else
      {
        if (v77 != 190)
        {
          return result;
        }

        v78 = 16;
      }
    }

    else if (*(a2 + 16) > 0x3Eu)
    {
      if (v77 != 63)
      {
        if (v77 != 78)
        {
          return result;
        }

LABEL_124:
        v79 = a1;
        Type = a2;
        v81 = 19;
LABEL_133:

        return swift::Demangle::Demangler::createWithChildren(v79, v81, Type, v45, a5);
      }

      v78 = 14;
    }

    else
    {
      if (v77 != 25)
      {
        if (v77 != 30)
        {
          return result;
        }

        goto LABEL_124;
      }

      v78 = 13;
    }

    Type = swift::Demangle::Demangler::createType(a1, a2, a3, a4, a5);
    v79 = a1;
    v81 = v78;
    goto LABEL_133;
  }

  v11 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v11;
  if (!v11 || v11 + 24 > *(a1 + 2))
  {
    v12 = 2 * *(a1 + 4);
    if (v12 <= 0x20)
    {
      v12 = 32;
    }

    *(a1 + 4) = v12;
    v13 = v12 + 8;
    v14 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    v15 = v14 + v13;
    *v14 = *(a1 + 3);
    v11 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v15;
    *(a1 + 3) = v14;
    LODWORD(v7) = *(a3 + 8);
  }

  v16 = v11 + 24;
  *(a1 + 1) = v11 + 24;
  *(v11 + 16) = 246;
  *(v11 + 18) = 0;
  v17 = (v7 - 1);
  v18 = v7 != 0;
  if (v17 >= v5 && v18)
  {
    while (1)
    {
      v20 = *(*a3 + 8 * v17);
      v21 = *(v20 + 18);
      v22 = v20;
      if ((v21 - 1) >= 2)
      {
        if (v21 == 5)
        {
          v23 = *v20;
          v22 = *v20;
          goto LABEL_22;
        }

        v22 = 0;
      }

      if (v21 == 1)
      {
        v24 = (v20 + 8);
        goto LABEL_27;
      }

      if (v21 == 2)
      {
        v24 = (v20 + 16);
        goto LABEL_27;
      }

      if (v21 != 5)
      {
        v24 = 0;
        goto LABEL_27;
      }

      v23 = *v20;
LABEL_22:
      v24 = (v23 + 8 * *(v20 + 8));
LABEL_27:
      while (v22 != v24)
      {
        v25 = *v22++;
        swift::Demangle::Node::addChild(v11, v25, a1, a4, a5);
      }

      v17 = (v17 - 1);
      if (v17 < v5 || *(a3 + 8) <= v17)
      {
        v16 = *(a1 + 1);
        break;
      }
    }
  }

  v27 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v27;
  if (!v27 || v27 + 24 > *(a1 + 2))
  {
    v28 = 2 * *(a1 + 4);
    if (v28 <= 0x20)
    {
      v28 = 32;
    }

    *(a1 + 4) = v28;
    v29 = v28 + 8;
    v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
    v31 = v30 + v29;
    *v30 = *(a1 + 3);
    v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v31;
    *(a1 + 3) = v30;
  }

  *(a1 + 1) = v27 + 24;
  *(v27 + 16) = 243;
  *(v27 + 18) = 0;
  swift::Demangle::Node::addChild(v27, v10, a1, a4, a5);
  result = 0;
  if (v11 && v27)
  {
    v35 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v35;
    if (!v35 || v35 + 24 > *(a1 + 2))
    {
      v36 = 2 * *(a1 + 4);
      if (v36 <= 0x20)
      {
        v36 = 32;
      }

      *(a1 + 4) = v36;
      v37 = v36 + 8;
      v38 = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
      v39 = v38 + v37;
      *v38 = *(a1 + 3);
      v35 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v39;
      *(a1 + 3) = v38;
    }

    *(a1 + 1) = v35 + 24;
    *(v35 + 16) = 17;
    *(v35 + 18) = 0;
    swift::Demangle::Node::addChild(v35, v27, a1, v32, v33);
    swift::Demangle::Node::addChild(v35, v11, a1, v40, v41);
    return v35;
  }

  return result;
}