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
        Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 73);
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
        swift::Demangle::Node::addChild(Node, v24, v23[5], v26, v27);
        swift::Demangle::Node::addChild(Node, v28, v23[5], v29, v30);
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

      return swift::Demangle::NodeFactory::createNodeWithAllocatedText(v31, 163, v32, 5);
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
        Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 73);
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
        swift::Demangle::Node::addChild(Node, v13, v12[5], v14, v15);
        v19 = v12[5];
        v20 = Node;
        v21 = v16;
LABEL_37:
        swift::Demangle::Node::addChild(v20, v21, v19, v17, v18);
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

        Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 171, v6);
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
            v19 = swift::Demangle::NodeFactory::createNode(v13, v14);
            swift::Demangle::Node::addChild(v19, v9, *(v12 + 5), v20, v21);
            swift::Demangle::Node::addChild(v19, v11, *(v12 + 5), v22, v23);
            return v19;
          }
        }
      }

      return 0;
    }
  }
}

void std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](uint64_t a1, void *a2)
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
      std::string::__throw_out_of_range[abi:nn200100]();
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

      std::string::__throw_out_of_range[abi:nn200100]();
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
      std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](this, &v13);
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

      return swift::Demangle::NodeFactory::createNodeWithAllocatedText(v4, 163, v5, 5);
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
      Node = swift::Demangle::NodeFactory::createNode(*(v13 + 5), v8);
      swift::Demangle::Node::addChild(Node, v12, *v24, v26, v27);
      if (v19)
      {
        swift::Demangle::Node::addChild(Node, v19, *v24, v28, v29);
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
      v31 = swift::Demangle::NodeFactory::createNode(*v24, 243);
      swift::Demangle::Node::addChild(v31, v30, *v24, v32, v33);
      if (v31)
      {
        v36 = *v24;
        v37 = Node;
        v38 = v31;
LABEL_115:
        swift::Demangle::Node::addChild(v37, v38, v36, v34, v35);
LABEL_116:
        if (v5 != 90)
        {
          return Node;
        }

        v63 = swift::Demangle::NodeFactory::createNode(*v24, 229);
        swift::Demangle::Node::addChild(v63, Node, *v24, v64, v65);
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
      v40 = swift::Demangle::NodeFactory::createNode(*(this + 5), v21);
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
            v50 = swift::Demangle::NodeFactory::createNode(*v24, 266);
            swift::Demangle::Node::addChild(v50, v12, *v24, v51, v52);
            swift::Demangle::Node::addChild(v50, v20, *v24, v53, v54);
            v55 = 0;
            goto LABEL_108;
          }

          v44 = *v20;
        }

        v45 = *(v44 + 8);
        if (v45[1] != 9)
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
        v20 = swift::Demangle::NodeFactory::createNode(*v24, 186);
        swift::Demangle::Node::addChild(v20, v66, *v24, v67, v68);
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
      v50 = swift::Demangle::NodeFactory::createNode(*v24, 231);
      swift::Demangle::Node::addChild(v50, v12, *v24, v69, v70);
      v55 = 1;
LABEL_108:
      if (result)
      {
        v56 = result;
        v57 = swift::Demangle::NodeFactory::createNode(*v24, 243);
        swift::Demangle::Node::addChild(v57, v56, *v24, v58, v59);
        if (v57)
        {
          swift::Demangle::Node::addChild(v50, v57, *v24, v60, v61);
          v62 = v55 ^ 1;
          if (!v20)
          {
            v62 = 1;
          }

          if ((v62 & 1) == 0)
          {
            swift::Demangle::Node::addChild(v50, v20, *v24, v34, v35);
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
        size = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v19, v7, v20, size);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_69:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }

    v15 = a1;
    if (swift::Punycode::decodePunycodeUTF8(p_p, size, &__p))
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
      return swift::Demangle::NodeFactory::createNode(*(a1 + 40), 171, v5);
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
        return swift::Demangle::NodeFactory::createNode(*(a1 + 40), 171, v5);
      }
    }
  }

  return 0;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleBoundGenericArgs(swift::Demangle::NodeFactory **this, swift::Demangle::Node *a2, int a3)
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
  Node = swift::Demangle::NodeFactory::createNode(this[5], *(v4 + 8));
  swift::Demangle::Node::addChild(Node, v11, this[5], v13, v14);
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
    swift::Demangle::Node::addChild(Node, v18, this[5], v15, v16);
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
  v22 = swift::Demangle::NodeFactory::createNode(this[5], 246);
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
      v27 = swift::Demangle::NodeFactory::createNode(this[5], 243);
      swift::Demangle::Node::addChild(v27, v26, this[5], v28, v29);
      if (v27)
      {
        swift::Demangle::Node::addChild(v22, v27, this[5], v30, v31);
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
    v34 = swift::Demangle::NodeFactory::createNode(this[5], 243);
    swift::Demangle::Node::addChild(v34, v4, this[5], v35, v36);
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

    v4 = swift::Demangle::NodeFactory::createNode(this[5], v38);
    swift::Demangle::Node::addChild(v4, v34, this[5], v39, v40);
    swift::Demangle::Node::addChild(v4, v22, this[5], v41, v42);
  }

  return v4;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolNameGivenContext(swift::Demangle::NodeFactory **this, swift::Demangle::Node *a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::NodeFactory::createNode(this[5], 190);
    swift::Demangle::Node::addChild(Node, a2, this[5], v6, v7);
    swift::Demangle::Node::addChild(Node, v5, this[5], v8, v9);
    std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](this, &Node);
    return Node;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolName(swift::Demangle::NodeFactory **this, unsigned int a2)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Node = swift::Demangle::NodeFactory::createNode(this[5], 243);
  swift::Demangle::Node::addChild(Node, v4, this[5], v6, v7);
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
        v8 = 1;
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
            Node = swift::Demangle::NodeFactory::createNode(v6[5], 190);
            swift::Demangle::Node::addChild(Node, v8, v6[5], v10, v11);
            v14 = v6[5];
            v15 = Node;
            v16 = v9;
LABEL_25:
            swift::Demangle::Node::addChild(v15, v16, v14, v12, v13);
            std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](v6, &Node);
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
  NodeWithAllocatedText = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v17, 163, v18, 5);
  if (result)
  {
    v25 = result;
    Node = swift::Demangle::NodeFactory::createNode(v6[5], 190);
    swift::Demangle::Node::addChild(Node, NodeWithAllocatedText, v6[5], v26, v27);
    v14 = v6[5];
    v15 = Node;
    v16 = v25;
    goto LABEL_25;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleDependentMemberTypeName(_anonymous_namespace_::OldDemangler *this, swift::Demangle::Node *a2, int a3)
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
      Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 46);
      swift::Demangle::Node::addChild(Node, a2, *(this + 5), v17, v18);
      swift::Demangle::Node::addChild(Node, v24, *(this + 5), v19, v20);
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
  v9 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::Node::addChild(v9, v21, *(this + 5), v22, v23);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if (result)
  {
    v10 = result;
    result = swift::Demangle::NodeFactory::createNode(*(this + 5), 36);
    v24 = result;
    if (result)
    {
      v13 = result;
      swift::Demangle::Node::addChild(result, v10, *(this + 5), v11, v12);
      if (v9)
      {
        swift::Demangle::Node::addChild(v13, v9, *(this + 5), v14, v15);
      }

      std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](this, &v24);
      goto LABEL_13;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::createSwiftType(uint64_t a1, __int16 a2, const void *a3, size_t a4)
{
  Node = swift::Demangle::NodeFactory::createNode(*(a1 + 40), a2);
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
  NodeWithAllocatedText = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v8, 163, v9, 5);
  swift::Demangle::Node::addChild(Node, NodeWithAllocatedText, *(a1 + 40), v16, v17);
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

  v26 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v18, 103, v19, a4);
  swift::Demangle::Node::addChild(Node, v26, *(a1 + 40), v27, v28);
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
        v9 = qword_299ACB318[a2];
        return off_29F2835D8[a2];
      }

      if (v5 == 105)
      {
        *(a1 + 24) = v4 + 1;
        *(a1 + 32) = v2 - 1;
        v7 = qword_299ACB330[a2];
        return qword_29F2835F0[a2];
      }

      return 0;
    }

    if (v5 != 108)
    {
      if (v5 == 111)
      {
        *(a1 + 24) = v4 + 1;
        *(a1 + 32) = v2 - 1;
        v8 = qword_299ACB348[a2];
        return (&off_29F283608)[a2];
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
      v10 = qword_299ACB300[a2];
      return off_29F2835C0[a2];
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
  Node = swift::Demangle::NodeFactory::createNode(*(a1 + 40), 243);
  swift::Demangle::Node::addChild(Node, v14, *(a1 + 40), v16, v17);
  if (!Node)
  {
    return 0;
  }

  v18 = swift::Demangle::NodeFactory::createNode(*(a1 + 40), v8);
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
  NodeWithAllocatedText = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v19, 108, v20, v12);
  swift::Demangle::Node::addChild(v18, NodeWithAllocatedText, *(a1 + 40), v27, v28);
  swift::Demangle::Node::addChild(v18, Node, *(a1 + 40), v29, v30);
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

uint64_t anonymous namespace::OldDemangler::demangleReabstractSignature(_anonymous_namespace_::OldDemangler *this, swift::Demangle::Node *a2, int a3)
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

      swift::Demangle::Node::addChild(a2, result, *(this + 5), v9, v10);
    }
  }

  if (result)
  {
    v11 = result;
    Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::Node::addChild(Node, v11, *(this + 5), v13, v14);
    if (!Node)
    {
      return 0;
    }

    swift::Demangle::Node::addChild(a2, Node, *(this + 5), v15, v16);
    if (!result)
    {
      return result;
    }

    v17 = result;
    v18 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::Node::addChild(v18, v17, *(this + 5), v19, v20);
    if (v18)
    {
      swift::Demangle::Node::addChild(a2, v18, *(this + 5), v21, v22);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t swift::Punycode::decodePunycode(char *a1, unint64_t a2, std::vector<unsigned int> *this)
{
  v4 = a2;
  v5 = a1;
  begin = this->__begin_;
  this->__end_ = this->__begin_;
  if (a2 > this->__end_cap_.__value_ - begin)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::string::__throw_out_of_range[abi:nn200100]();
  }

  v7 = 0;
  __x = 128;
  v8 = a1;
  do
  {
    if (a2 == v7)
    {
      goto LABEL_11;
    }

    v9 = v8[a2 - 1];
    ++v7;
    --v8;
  }

  while (v9 != 95);
  v10 = a2 - v7;
  if (a2 != v7)
  {
    while ((*v5 & 0x80000000) == 0)
    {
      v35 = *v5;
      std::vector<unsigned int>::push_back[abi:nn200100](this, &v35);
      ++v5;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  v5 = &v8[v4 + 1];
  v4 = v7 - 1;
LABEL_11:
  if (v4)
  {
    v11 = 0;
    v12 = 72;
LABEL_13:
    v13 = 0;
    v14 = 36;
    v15 = 1;
    v16 = v11;
    while (1)
    {
      v17 = v5[v13];
      v18 = v17 - 97;
      if ((v17 - 97) > 0x19)
      {
        if ((v17 - 65) > 9)
        {
          return 0;
        }

        v18 = v17 - 39;
      }

      if (v18 < 0 || v18 > (v16 ^ 0x7FFFFFFF) / v15)
      {
        return 0;
      }

      v16 += v18 * v15;
      v19 = v14 - v12;
      if (v14 >= v12 + 26)
      {
        v19 = 26;
      }

      if (v14 <= v12)
      {
        v19 = 1;
      }

      if (v18 < v19)
      {
        v20 = v16 - v11;
        v21 = this->__begin_;
        v22 = this->__end_ - this->__begin_;
        if (v11)
        {
          v23 = 2;
        }

        else
        {
          v23 = 700;
        }

        v24 = v20 / v23 / (v22 + 1) + v20 / v23;
        if (v24 < 456)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v26 = v24;
          do
          {
            v24 = v26 / 0x23;
            v25 += 36;
            v27 = v26 >> 3;
            v26 /= 0x23u;
          }

          while (v27 > 0x7CA);
        }

        v28 = v22 + 1;
        v29 = v16 / v28;
        v30 = __x;
        if (v29 > (__x ^ 0x7FFFFFFF))
        {
          return 0;
        }

        __x += v29;
        if (v30 + v29 < 0x80)
        {
          return 0;
        }

        v34 = v4 - 1;
        v4 += ~v13;
        v5 += v13 + 1;
        v12 = 36 * v24 / (v24 + 38) + v25;
        v31 = v16 % v28;
        v32.__i_ = &v21[v31];
        std::vector<unsigned int>::insert(this, v32, &__x);
        v11 = v31 + 1;
        result = 1;
        if (v34 != v13)
        {
          goto LABEL_13;
        }

        return result;
      }

      if (v15 <= 0x7FFFFFFF / (36 - v19))
      {
        v15 *= 36 - v19;
        v14 += 36;
        if (v4 != ++v13)
        {
          continue;
        }
      }

      return 0;
    }
  }

  return 1;
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_out_of_range[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::string::__throw_out_of_range[abi:nn200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
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

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::string::__throw_out_of_range[abi:nn200100]();
    }

    v12 = value - begin;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v27 = this;
    if (v13)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      std::string::__throw_out_of_range[abi:nn200100]();
    }

    v24 = 0;
    v25 = 4 * (__position.__i_ - begin);
    v26 = v25;
    std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(&v24, __x);
    v14.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v15 = this->__begin_;
    v16 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v17 = i - v15;
    v18 = (v16 - (i - v15));
    memcpy(v18, v15, v17);
    v19 = this->__begin_;
    this->__begin_ = v18;
    v20 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v19;
    *(&v26 + 1) = v20;
    v24 = v19;
    v25 = v19;
    if (v19)
    {
      operator delete(v19);
    }

    return v14;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v21 = v9 <= __x || i > __x;
    v22 = 1;
    if (v21)
    {
      v22 = 0;
    }

    *i = __x[v22];
  }

  return i;
}

BOOL swift::Punycode::encodePunycode(unsigned int **a1, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      if (*v4 <= 0x7F)
      {
        ++v6;
        std::string::push_back(this, v7);
      }

      else if (v7 >> 7 >= 0x1B1 && v7 - 57344 >= 0x102000)
      {
        result = 0;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          *this->__r_.__value_.__l.__data_ = 0;
          this->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          this->__r_.__value_.__s.__data_[0] = 0;
          *(&this->__r_.__value_.__s + 23) = 0;
        }

        return result;
      }

      ++v4;
    }

    while (v4 != v5);
    if (v6)
    {
      std::string::push_back(this, 95);
    }
  }

  v10 = *a1;
  v9 = a1[1];
  if (v6 >= v9 - *a1)
  {
    return 1;
  }

  v35 = a1;
  v11 = 0;
  v12 = 72;
  v13 = 128;
  v14 = v6;
  v36 = v6;
  do
  {
    v15 = 1114111;
    v16 = v10;
    while (v16 != v9)
    {
      v18 = *v16++;
      v17 = v18;
      if (v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      if (v17 >= v13)
      {
        v15 = v19;
      }
    }

    v20 = v15 - v13;
    v21 = (v11 ^ 0x7FFFFFFFu) / (v14 + 1);
    result = v21 >= v20;
    if (v21 < v20)
    {
      break;
    }

    v22 = v11 + v20 * (v14 + 1);
    if (v10 != v9)
    {
      v37 = v9;
      while (1)
      {
        if (*v10 < v15)
        {
          if (v22 == 0x7FFFFFFF)
          {
            return 0;
          }

          ++v22;
        }

        if (*v10 == v15)
        {
          v38 = v14;
          v24 = 36 - v12;
          if (v12 <= 10)
          {
            v24 = 26;
          }

          if (v12 >= 36)
          {
            v24 = 1;
          }

          v25 = v22;
          if (v22 >= v24)
          {
            v26 = 72;
            v25 = v22;
            do
            {
              v27 = v25 - v24;
              v25 = (v25 - v24) / (36 - v24);
              v28 = v27 - v25 * (36 - v24) + v24;
              if (v28 >= 26)
              {
                v29 = 39;
              }

              else
              {
                v29 = 97;
              }

              std::string::push_back(this, v29 + v28);
              if (v26 - 26 >= v12)
              {
                v24 = 26;
              }

              else
              {
                v24 = v26 - v12;
              }

              if (v26 <= v12)
              {
                v24 = 1;
              }

              v26 += 36;
            }

            while (v25 >= v24);
          }

          if (v25 >= 26)
          {
            v30 = 39;
          }

          else
          {
            v30 = 97;
          }

          std::string::push_back(this, v30 + v25);
          if (v38 == v36)
          {
            v31 = 700;
          }

          else
          {
            v31 = 2;
          }

          v32 = v22 / v31 / (v38 + 1) + v22 / v31;
          if (v32 < 456)
          {
            v23 = 0;
            v9 = v37;
          }

          else
          {
            v23 = 0;
            v33 = v32;
            v9 = v37;
            do
            {
              v32 = v33 / 0x23;
              v23 += 36;
              v34 = v33 >> 3;
              v33 /= 0x23u;
            }

            while (v34 > 0x7CA);
          }

          v22 = 0;
          v12 = 36 * v32 / (v32 + 38) + v23;
          v14 = v38 + 1;
        }

        if (++v10 == v9)
        {
          v10 = *v35;
          v9 = v35[1];
          break;
        }
      }
    }

    v11 = v22 + 1;
    v13 = v15 + 1;
    result = 1;
  }

  while (v14 < v9 - v10);
  return result;
}

uint64_t swift::Punycode::decodePunycodeUTF8(char *a1, unint64_t a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  if (!swift::Punycode::decodePunycode(a1, a2, &__p))
  {
    v14 = 0;
    begin = __p.__begin_;
    if (!__p.__begin_)
    {
      return v14;
    }

    goto LABEL_24;
  }

  v4 = __p.__begin_;
  end = __p.__end_;
  if (__p.__begin_ == __p.__end_)
  {
LABEL_20:
    v14 = 1;
    begin = __p.__begin_;
    if (!__p.__begin_)
    {
      return v14;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v7 = *v4;
    if (*v4 >> 7 >= 0x1B1 && v7 - 57344 >= 0x102000)
    {
      break;
    }

    if ((v7 & 0x1FFF80) == 0xD800)
    {
      v7 -= 55296;
    }

    if (v7 < 0x80)
    {
      v6 = v7;
    }

    else
    {
      v6 = v7 & 0x3F | 0x80;
      if (v7 >= 0x800)
      {
        v10 = (v7 >> 6) & 0x3F | 0xFFFFFF80;
        if (v7 >= 0x10000)
        {
          v13 = (v7 >> 12) & 0x3F | 0xFFFFFF80;
          std::string::push_back(a3, (v7 >> 18) | 0xF0);
          v12 = a3;
          LOBYTE(v11) = v13;
        }

        else
        {
          v11 = (v7 >> 12) | 0xFFFFFFE0;
          v12 = a3;
        }

        std::string::push_back(v12, v11);
        v9 = a3;
        LOBYTE(v8) = v10;
      }

      else
      {
        v8 = (v7 >> 6) | 0xFFFFFFC0;
        v9 = a3;
      }

      std::string::push_back(v9, v8);
    }

    std::string::push_back(a3, v6);
    if (++v4 == end)
    {
      goto LABEL_20;
    }
  }

  if (*(a3 + 23) < 0)
  {
    v14 = 0;
    **a3 = 0;
    *(a3 + 8) = 0;
    begin = __p.__begin_;
    if (!__p.__begin_)
    {
      return v14;
    }

    goto LABEL_24;
  }

  v14 = 0;
  *a3 = 0;
  *(a3 + 23) = 0;
  begin = __p.__begin_;
  if (__p.__begin_)
  {
LABEL_24:
    __p.__end_ = begin;
    operator delete(begin);
  }

  return v14;
}

BOOL swift::Punycode::encodePunycodeUTF8(int a1, unint64_t a2, std::string *this)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::string::__throw_out_of_range[abi:nn200100]();
  }

  v3 = swift::Punycode::encodePunycode(&__p, this);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void *std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(void *result, _DWORD *a2)
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
        v11 = &v4[-*result] >> 1;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }

      std::string::__throw_out_of_range[abi:nn200100]();
    }

    v7 = ((v6 >> 2) + 1) / 2;
    v8 = ((v6 >> 2) + 1) / -2;
    v9 = &v5[-4 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

BOOL swift::Demangle::SubstitutionEntry::identifierEquals(swift::Demangle::SubstitutionEntry *this, swift::Demangle::Node *a2, swift::Demangle::Node *a3)
{
  v3 = *(this + 1);
  v4 = *(a2 + 1);
  if (v4 != v3)
  {
    return 0;
  }

  if (*(this + 8) == *(a2 + 8))
  {
    if (v3 == v4)
    {
      if (v3)
      {
        return memcmp(*this, *a2, v3) == 0;
      }

      return 1;
    }

    return 0;
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    v8 = 0;
    v9 = v3 - 1;
    do
    {
      if (*(this + 8) - 129 > 0x38 || ((1 << (*(this + 8) + 127)) & 0x140000000000001) == 0)
      {
        v13 = *(*this + v8);
      }

      else
      {
        v13 = swift::Mangle::translateOperatorChar(*(*this + v8));
      }

      if (*(a2 + 8) - 129 <= 0x38 && ((1 << (*(a2 + 8) + 127)) & 0x140000000000001) != 0)
      {
        v10 = swift::Mangle::translateOperatorChar(*(*a2 + v8));
      }

      else
      {
        v10 = *(*a2 + v8);
      }

      v11 = v13 == v10;
      result = v11;
      v11 = !v11 || v9 == v8++;
    }

    while (!v11);
  }

  return result;
}

uint64_t swift::Demangle::SubstitutionEntry::deepEquals(swift::Demangle::SubstitutionEntry *this, swift::Demangle::Node *a2, swift::Demangle::Node *a3)
{
  v3 = a2 + 16;
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v4 = a3;
  v5 = *(a2 + 18);
  if (v5 != *(a3 + 18))
  {
    return 0;
  }

  if (*(a2 + 18) <= 3u)
  {
    v7 = a2;
    if ((v5 - 1) < 2)
    {
      goto LABEL_16;
    }

    if (v5 != 3 || (v8 = *(a2 + 1), v8 == *(v4 + 1)) && (!v8 || (v9 = a2, v10 = memcmp(*a2, *v4, v8), a2 = v9, !v10)))
    {
LABEL_15:
      v7 = 0;
LABEL_16:
      if ((v5 - 1) >= 2)
      {
        v4 = 0;
      }

      if (v5 != 2)
      {
        v3 = v5 == 1 ? a2 + 8 : 0;
        if (v7 == v3)
        {
          return 1;
        }
      }

      goto LABEL_26;
    }

    return 0;
  }

  if (v5 == 4)
  {
    if (*a2 == *a3)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v5 != 5)
  {
    goto LABEL_15;
  }

  if (*(a2 + 2) != *(a3 + 2))
  {
    return 0;
  }

  v7 = *a2;
  v4 = *a3;
  v3 = (*a2 + 8 * *(a2 + 2));
  if (v7 == v3)
  {
    return 1;
  }

LABEL_26:
  v12 = v7 + 8;
  do
  {
    v13 = *v4;
    v4 = (v4 + 8);
    result = swift::Demangle::SubstitutionEntry::deepEquals(this, *(v12 - 1), v13);
    if (result)
    {
      v14 = v12 == v3;
    }

    else
    {
      v14 = 1;
    }

    v12 += 8;
  }

  while (!v14);
  return result;
}

uint64_t swift::Demangle::RemanglerBase::hashForNode(swift::Demangle::RemanglerBase *this, swift::Demangle::Node *a2, _BOOL4 a3)
{
  v3 = a3;
  v6 = (a2 + 16);
  v5 = *(a2 + 8);
  if (a3)
  {
    if ((v5 - 129) <= 0x38 && ((1 << (v5 + 127)) & 0x140000000000001) != 0)
    {
      v8 = *(a2 + 1);
      if (!v8)
      {
        return 103;
      }

      v9 = *a2;
      v5 = 103;
      do
      {
        v10 = *v9++;
        v5 = 33 * v5 + swift::Mangle::translateOperatorChar(v10);
        --v8;
      }

      while (v8);
      return v5;
    }

    v5 = 103;
  }

  v11 = *(a2 + 18);
  if (v11 == 3)
  {
    v12 = *(a2 + 1);
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = *a2;
    do
    {
      v14 = *v13++;
      v5 = 33 * v5 + v14;
      --v12;
    }

    while (v12);
  }

  else if (v11 == 4)
  {
    v5 = *a2 + 33 * v5;
    goto LABEL_23;
  }

  if ((v11 - 1) < 2)
  {
    v15 = a2;
    if (v11 != 1)
    {
      goto LABEL_24;
    }

LABEL_20:
    v6 = (a2 + 8);
    goto LABEL_30;
  }

  if (v11 == 5)
  {
    v16 = *a2;
    v15 = *a2;
LABEL_27:
    v6 = (v16 + 8 * *(a2 + 2));
    goto LABEL_30;
  }

LABEL_23:
  v15 = 0;
  if (v11 == 1)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (v11 == 2)
  {
    goto LABEL_30;
  }

  if (v11 == 5)
  {
    v16 = *a2;
    goto LABEL_27;
  }

  v6 = 0;
LABEL_30:
  while (v15 != v6)
  {
    v17 = *v15++;
    swift::Demangle::RemanglerBase::entryForNode(v19, this, v17, v3);
    v5 = v19[1] + 33 * v5;
  }

  return v5;
}

__n128 swift::Demangle::RemanglerBase::entryForNode@<Q0>(uint64_t *__return_ptr a1@<X8>, swift::Demangle::RemanglerBase *this@<X0>, swift::Demangle::Node *a3@<X1>, int a4@<W2>)
{
  v5 = 4;
  if (!a4)
  {
    v5 = 0;
  }

  v6 = v5 + ((2043 * a3) >> 12);
  v7 = this + 8;
  v8 = (this + 24 * (v6 & 0x1FF) + 8);
  result = *v8;
  *a1 = *v8;
  a1[2] = v8[1].n128_i64[0];
  if (!*a1)
  {
    goto LABEL_30;
  }

  if (*a1 != a3 || *(a1 + 16) != a4)
  {
    v8 = &v7[24 * ((v6 + 1) & 0x1FF)];
    result = *v8;
    *a1 = *v8;
    a1[2] = v8[1].n128_i64[0];
    if (*a1)
    {
      if (*a1 == a3 && *(a1 + 16) == a4)
      {
        return result;
      }

      v8 = &v7[24 * ((v6 + 2) & 0x1FF)];
      result = *v8;
      *a1 = *v8;
      a1[2] = v8[1].n128_i64[0];
      if (*a1)
      {
        if (*a1 == a3 && *(a1 + 16) == a4)
        {
          return result;
        }

        v8 = &v7[24 * ((v6 + 3) & 0x1FF)];
        result = *v8;
        *a1 = *v8;
        a1[2] = v8[1].n128_i64[0];
        if (*a1)
        {
          if (*a1 == a3 && *(a1 + 16) == a4)
          {
            return result;
          }

          v8 = &v7[24 * ((v6 + 4) & 0x1FF)];
          result = *v8;
          *a1 = *v8;
          a1[2] = v8[1].n128_i64[0];
          if (*a1)
          {
            if (*a1 == a3 && *(a1 + 16) == a4)
            {
              return result;
            }

            v8 = &v7[24 * ((v6 + 5) & 0x1FF)];
            result = *v8;
            *a1 = *v8;
            a1[2] = v8[1].n128_i64[0];
            if (*a1)
            {
              if (*a1 == a3 && *(a1 + 16) == a4)
              {
                return result;
              }

              v8 = &v7[24 * ((v6 + 6) & 0x1FF)];
              result = *v8;
              *a1 = *v8;
              a1[2] = v8[1].n128_i64[0];
              if (*a1)
              {
                if (*a1 == a3 && *(a1 + 16) == a4)
                {
                  return result;
                }

                v8 = &v7[24 * ((v6 + 7) & 0x1FF)];
                result = *v8;
                *a1 = *v8;
                a1[2] = v8[1].n128_i64[0];
                if (*a1)
                {
                  if (*a1 != a3 || *(a1 + 16) != a4)
                  {
                    v12 = a4;
                    v13 = swift::Demangle::RemanglerBase::hashForNode(this, a3, a4);
                    *(a1 + 16) = v12;
                    *a1 = a3;
                    a1[1] = v13;
                  }

                  return result;
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    v15 = a4;
    v16 = swift::Demangle::RemanglerBase::hashForNode(this, a3, a4);
    *(a1 + 16) = v15;
    *a1 = a3;
    a1[1] = v16;
    v8[1].n128_u8[0] = v15;
    result = *a1;
    *v8 = *a1;
  }

  return result;
}

uint64_t swift::Demangle::RemanglerBase::findSubstitution(swift::Demangle::RemanglerBase *this, swift::Demangle::Node **a2)
{
  v4 = (this + 12296);
  v5 = *(this + 1585);
  if (v5)
  {
    v6 = 24 * v5;
    v7 = v4 + 24 * v5;
    v8 = (this + 12296);
    do
    {
      if (*(v8 + 1) == a2[1] && *(v8 + 16) == *(a2 + 16))
      {
        v9 = *a2;
        if (*(v8 + 16))
        {
          if (swift::Demangle::SubstitutionEntry::identifierEquals(*v8, *a2, v9))
          {
            goto LABEL_11;
          }
        }

        else if (swift::Demangle::SubstitutionEntry::deepEquals(v8, *v8, v9))
        {
          goto LABEL_11;
        }
      }

      v8 = (v8 + 24);
      v6 -= 24;
    }

    while (v6);
    v8 = v7;
LABEL_11:
    v5 = *(this + 1585);
  }

  else
  {
    v8 = (this + 12296);
  }

  if (v8 != (v4 + 24 * v5))
  {
    return -1431655765 * ((v8 - v4) >> 3);
  }

  v11 = std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::find<swift::Demangle::SubstitutionEntry>(this + 1586, a2);
  if (v11)
  {
    return *(v11 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *swift::Demangle::RemanglerBase::addSubstitution(uint64_t *this, const swift::Demangle::SubstitutionEntry *a2)
{
  v4 = this[1585];
  if (v4 > 0xF)
  {
    v11 = v2;
    v12 = v3;
    v7 = *(this + 3178) + 16;
    v8 = *a2;
    v9 = *(a2 + 2);
    v10 = v7;
    return std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &v8);
  }

  else
  {
    this[1585] = v4 + 1;
    v5 = &this[3 * v4 + 1537];
    v6 = *a2;
    *(v5 + 16) = *(a2 + 16);
    *v5 = v6;
  }

  return this;
}

size_t *swift::Demangle::mangleNode()
{
  return swift::Demangle::mangleNode();
}

{
  result = MEMORY[0x2A1C7C4A8]();
  v5 = v4;
  if (!result)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = 0;
    return result;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = result;
  v63 = &unk_2A2008340;
  v64 = 0;
  v65 = 0u;
  v67 = 0;
  v68 = 0;
  v19 = &v63;
  memset(&v20[12312], 0, 17);
  v21 = 0u;
  v22 = 0;
  v24 = 0;
  v23 = 0u;
  v25 = 0u;
  v26 = 0;
  v28 = 0;
  v27 = 0u;
  v30 = 0;
  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v33 = 0u;
  v34 = 0;
  v36 = 0;
  v35 = 0u;
  v37 = 0u;
  v38 = 0;
  v40 = 0;
  v39 = 0u;
  v41 = 0u;
  v42 = 0;
  v44 = 0;
  v43 = 0u;
  v45 = 0u;
  v46 = 0;
  v48 = 0;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  bzero(v20, 0x3011uLL);
  v52 = 1065353216;
  v55 = &v63;
  v66 = 4800;
  v10 = malloc_type_malloc(0x12C8uLL, 0x2004093837F09uLL);
  *v10 = *(&v65 + 1);
  *&v65 = v10 + 601;
  *(&v65 + 1) = v10;
  v64 = v10 + 5;
  __src = v10 + 1;
  __len = 0x2000000000;
  v56 = v6;
  v57 = 1;
  v58 = 0u;
  v59 = 0u;
  memset(v60, 0, sizeof(v60));
  v61 = v8;
  v62 = v7;
  if (!v17)
  {
    if (__src)
    {
      v14 = __len;
      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v16) = __len;
      if (__len)
      {
        memmove(&v15, __src, __len);
      }

      *(&v15 + v14) = 0;
    }

    else
    {
      v15 = 0uLL;
      v16 = 0;
    }

    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = v15;
    *(v5 + 40) = v16;
    v11 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *v5 = v17;
  *(v5 + 16) = v18;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v11 = *(&v50 + 1);
  if (*(&v50 + 1))
  {
    do
    {
LABEL_4:
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_5:
  v13 = *(&v49 + 1);
  *(&v49 + 1) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v63 = &unk_2A2008340;
  result = swift::Demangle::NodeFactory::freeSlabs(*(&v65 + 1));
  if (v67)
  {
    *(v67 + 48) = 0;
  }

  return result;
}

void anonymous namespace::Remangler::mangle(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_::Remangler *this@<X0>, size_t *a3@<X1>, unint64_t a4@<X2>)
{
  if (a4 <= 0x400)
  {
    while (2)
    {
      v5 = 0;
      switch(*(a3 + 8))
      {
        case 0:
          v19 = a4 + 1;
          v20 = 67;
          goto LABEL_159;
        case 1:

          return;
        case 2:

          return;
        case 3:
          goto LABEL_410;
        case 4:
          *a1 = 7;
          a1[1] = a3;
          v4 = 738;
          goto LABEL_3;
        case 5:

          return;
        case 6:

          return;
        case 7:

          return;
        case 8:

          return;
        case 9:

          return;
        case 0xA:

          return;
        case 0xB:

          return;
        case 0xC:

          return;
        case 0xD:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x19:
        case 0x3F:
        case 0xB1:
        case 0xE6:
        case 0xF5:
          v10 = a4 + 1;

          return;
        case 0xE:

          return;
        case 0x13:

          return;
        case 0x14:

          return;
        case 0x15:
          v16 = *(this + 1593);
          v18 = "BT";
          goto LABEL_874;
        case 0x16:

          return;
        case 0x17:

          return;
        case 0x18:

          return;
        case 0x1A:

          return;
        case 0x1B:

          return;
        case 0x1C:

          return;
        case 0x1D:

          return;
        case 0x1E:
          v19 = a4;
          v20 = 99;
LABEL_159:

          return;
        case 0x1F:

          return;
        case 0x20:

          return;
        case 0x21:
        case 0xF3:
          v13 = a4 + 1;

          return;
        case 0x22:

          return;
        case 0x23:

          return;
        case 0x24:

          return;
        case 0x25:

          return;
        case 0x26:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1165;
          goto LABEL_3;
        case 0x27:

          return;
        case 0x28:

          return;
        case 0x29:

          return;
        case 0x2A:

          return;
        case 0x2B:

          return;
        case 0x2C:
          goto LABEL_894;
        case 0x2D:

          return;
        case 0x2E:

          return;
        case 0x2F:
          LODWORD(a4) = a4 + 1;
LABEL_894:

          return;
        case 0x30:

          return;
        case 0x31:

          return;
        case 0x32:

          return;
        case 0x33:

          return;
        case 0x34:

          return;
        case 0x35:

          return;
        case 0x36:

          return;
        case 0x37:
          v16 = *(this + 1593);
          v18 = "TE";
          goto LABEL_874;
        case 0x38:
          v16 = *(this + 1593);
          v18 = "TF";
          goto LABEL_874;
        case 0x39:
          v16 = *(this + 1593);
          v18 = "TD";
          goto LABEL_874;
        case 0x3A:
          v16 = *(this + 1593);
          v18 = "Td";
          goto LABEL_874;
        case 0x3B:

          return;
        case 0x3C:
          v16 = *(this + 1593);
          v18 = "TI";
          goto LABEL_874;
        case 0x3D:
          v16 = *(this + 1593);
          v18 = "Tx";
          goto LABEL_874;
        case 0x3E:
          v16 = *(this + 1593);
          v18 = "TX";
          goto LABEL_874;
        case 0x40:

          return;
        case 0x41:
          v16 = *(this + 1593);
          v18 = "Xe";
          goto LABEL_874;
        case 0x42:

          return;
        case 0x43:

          return;
        case 0x44:
          v16 = *(this + 1593);
          v18 = "Yb";
          goto LABEL_874;
        case 0x45:

          return;
        case 0x46:

          return;
        case 0x47:

          return;
        case 0x48:

          return;
        case 0x49:

          return;
        case 0x4A:

          return;
        case 0x4B:

          return;
        case 0x4C:

          return;
        case 0x4D:

          return;
        case 0x4E:

          return;
        case 0x4F:

          return;
        case 0x50:
        case 0x51:

          return;
        case 0x52:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1661;
          goto LABEL_3;
        case 0x53:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1668;
          goto LABEL_3;
        case 0x54:

          goto LABEL_56;
        case 0x55:

          return;
        case 0x56:

          return;
        case 0x57:
          v16 = *(this + 1593);
          v18 = "s";
          v17 = (this + 12728);
          v15 = 1;
          goto LABEL_875;
        case 0x58:
          goto LABEL_137;
        case 0x59:
          LODWORD(a4) = a4 + 1;
LABEL_137:

          return;
        case 0x5A:

          return;
        case 0x5B:

          return;
        case 0x5C:

          return;
        case 0x5D:
          v21 = a4 + 1;
          v22 = 103;
          goto LABEL_856;
        case 0x5E:
          v21 = a4 + 1;
          v22 = 71;
          goto LABEL_856;
        case 0x5F:
          v21 = a4 + 1;
          v22 = 66;
          goto LABEL_856;
        case 0x60:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1786;
          goto LABEL_3;
        case 0x61:
          v21 = a4 + 1;
          v22 = 115;
          goto LABEL_856;
        case 0x62:
          v21 = a4 + 1;
          v22 = 105;
LABEL_856:

          return;
        case 0x63:

          return;
        case 0x64:

          return;
        case 0x65:

          return;
        case 0x66:

          return;
        case 0x67:
        case 0xEC:
          v14 = a1;
          goto LABEL_876;
        case 0x68:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1880;
          goto LABEL_3;
        case 0x69:

          return;
        case 0x6A:

          return;
        case 0x6B:
          v12 = (this + 12728);
          v11 = 101;
          goto LABEL_832;
        case 0x6C:

          return;
        case 0x6D:
        case 0x14F:
          v11 = *a3;
          v12 = (this + 12728);
          goto LABEL_832;
        case 0x6E:
          v12 = (this + 12728);
          v11 = 65;
          goto LABEL_832;
        case 0x6F:
          v12 = (this + 12728);
          v11 = 84;
          goto LABEL_832;
        case 0x70:

          return;
        case 0x71:

          return;
        case 0x72:

          return;
        case 0x73:

          return;
        case 0x74:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1989;
          goto LABEL_3;
        case 0x75:

          return;
        case 0x76:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2019;
          goto LABEL_3;
        case 0x77:

          return;
        case 0x78:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2042;
          goto LABEL_3;
        case 0x79:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2030;
          goto LABEL_3;
        case 0x7A:

          return;
        case 0x7B:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2268;
          goto LABEL_3;
        case 0x7C:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2036;
          goto LABEL_3;
        case 0x7D:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2273;
          goto LABEL_3;
        case 0x7E:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2278;
          goto LABEL_3;
        case 0x7F:
          *a1 = 7;
          a1[1] = a3;
          v4 = 2283;
          goto LABEL_3;
        case 0x80:

          return;
        case 0x81:

          return;
        case 0x82:

          return;
        case 0x83:

          return;
        case 0x84:

          return;
        case 0x85:

          return;
        case 0x86:

          return;
        case 0x87:
          v16 = *(this + 1593);
          v18 = "YA";
          goto LABEL_874;
        case 0x88:
          v16 = *(this + 1593);
          v18 = "YC";
          goto LABEL_874;
        case 0x89:
          v16 = *(this + 1593);
          v18 = "YT";
          goto LABEL_874;
        case 0x8A:
          v23 = "TK";
          goto LABEL_866;
        case 0x8B:
          v23 = "Tk";
          goto LABEL_866;
        case 0x8C:
          v24 = "Tkmu";
          goto LABEL_791;
        case 0x8D:
          v24 = "TkMA";
LABEL_791:
          v29 = a4 + 1;
          v30 = v24;
          v31 = 4;
          goto LABEL_867;
        case 0x8E:
          v23 = "TH";
          goto LABEL_866;
        case 0x8F:
          v23 = "Th";
LABEL_866:
          v29 = a4 + 1;
          v30 = v23;
          v31 = 2;
LABEL_867:

          return;
        case 0x90:

          return;
        case 0x91:

          return;
        case 0x92:

          return;
        case 0x93:

          return;
        case 0x94:

          return;
        case 0x95:

          return;
        case 0x96:

          return;
        case 0x97:

          return;
        case 0x98:

          return;
        case 0x99:
          v16 = *(this + 1593);
          v18 = "Tm";
          goto LABEL_874;
        case 0x9A:

          return;
        case 0x9B:

          return;
        case 0x9C:

          return;
        case 0x9D:

          return;
        case 0x9E:

          return;
        case 0x9F:

          return;
        case 0xA0:

          return;
        case 0xA1:

          return;
        case 0xA2:

          return;
        case 0xA3:

          return;
        case 0xA4:

          return;
        case 0xA5:

          return;
        case 0xA6:

          return;
        case 0xA7:

          return;
        case 0xA8:

          return;
        case 0xA9:

          return;
        case 0xAA:
          v16 = *(this + 1593);
          v18 = "TO";
          goto LABEL_874;
        case 0xAB:
        case 0xF2:
          v14 = a1;
          goto LABEL_876;
        case 0xAC:

          return;
        case 0xAD:

          return;
        case 0xAE:
          v16 = *(this + 1593);
          v18 = "To";
          goto LABEL_874;
        case 0xAF:

          return;
        case 0xB0:

          return;
        case 0xB2:

          return;
        case 0xB3:

          return;
        case 0xB4:

          return;
        case 0xB5:

          return;
        case 0xB6:

          return;
        case 0xB7:

          return;
        case 0xB8:

          return;
        case 0xB9:

          return;
        case 0xBA:

          return;
        case 0xBB:

          return;
        case 0xBC:

          return;
        case 0xBD:

          return;
        case 0xBE:

          return;
        case 0xBF:
        case 0xF4:
        case 0x13B:
          goto LABEL_7;
        case 0xC0:

          return;
        case 0xC1:

          return;
        case 0xC2:

          return;
        case 0xC3:

          return;
        case 0xC4:

          return;
        case 0xC5:

          return;
        case 0xC6:

          return;
        case 0xC7:

          return;
        case 0xC8:

          return;
        case 0xC9:

          return;
        case 0xCA:

          return;
        case 0xCB:

          return;
        case 0xCC:

          return;
        case 0xCD:

          return;
        case 0xCE:

          return;
        case 0xCF:

          return;
        case 0xD0:

          return;
        case 0xD1:

          return;
        case 0xD2:

          return;
        case 0xD3:

          return;
        case 0xD4:

          return;
        case 0xD5:

          return;
        case 0xD6:

          return;
        case 0xD7:

          return;
        case 0xD8:

          return;
        case 0xD9:

          return;
        case 0xDA:
          LODWORD(a4) = a4 + 1;
LABEL_410:

          return;
        case 0xDB:

          return;
        case 0xDC:

          return;
        case 0xDD:

          return;
        case 0xDE:

          return;
        case 0xDF:
          *a1 = 7;
          a1[1] = a3;
          v4 = 3792;
          goto LABEL_3;
        case 0xE0:
          *a1 = 7;
          a1[1] = a3;
          v4 = 3797;
          goto LABEL_3;
        case 0xE1:
          *a1 = 7;
          a1[1] = a3;
          v4 = 3803;
          goto LABEL_3;
        case 0xE2:

          return;
        case 0xE3:
          v14 = a1;
          swift::Demangle::CharVector::append(this + 3182, *a3, *(this + 1593));
          goto LABEL_876;
        case 0xE4:
          v12 = (this + 12728);
          v11 = 113;
          goto LABEL_832;
        case 0xE5:

          return;
        case 0xE7:
        case 0x10A:

          return;
        case 0xE8:
        case 0x155:
          v15 = a3[1];
          v16 = *(this + 1593);
          v17 = (this + 12728);
          v18 = *a3;
          goto LABEL_875;
        case 0xE9:

          return;
        case 0xEA:

          return;
        case 0xEB:
          v28 = a4 + 1;

          return;
        case 0xED:

          return;
        case 0xEE:

          return;
        case 0xEF:

          return;
        case 0xF0:

          return;
        case 0xF1:

          return;
        case 0xF6:

          return;
        case 0xF7:

          return;
        case 0xF8:

          return;
        case 0xF9:

          return;
        case 0xFA:

          return;
        case 0xFB:

          return;
        case 0xFC:

          return;
        case 0xFD:

          return;
        case 0xFE:

          return;
        case 0xFF:

          return;
        case 0x100:

          return;
        case 0x101:

LABEL_56:
          return;
        case 0x102:
          *a1 = 7;
          a1[1] = a3;
          v4 = 1885;
          goto LABEL_3;
        case 0x103:

          return;
        case 0x104:

          return;
        case 0x105:

          return;
        case 0x106:

          return;
        case 0x107:

          return;
        case 0x108:

          return;
        case 0x109:

          return;
        case 0x10B:

          return;
        case 0x10C:
          *a1 = 7;
          a1[1] = a3;
          v4 = 3417;
          goto LABEL_3;
        case 0x10D:

          return;
        case 0x10E:

          return;
        case 0x10F:

          return;
        case 0x110:

          return;
        case 0x111:

          return;
        case 0x112:

          return;
        case 0x113:

          return;
        case 0x114:

          return;
        case 0x115:

          return;
        case 0x116:

          return;
        case 0x117:

          return;
        case 0x118:

          return;
        case 0x119:

          return;
        case 0x11A:

          return;
        case 0x11B:

          return;
        case 0x11C:
          v16 = *(this + 1593);
          v18 = "Ya";
          goto LABEL_874;
        case 0x11D:
          v12 = (this + 12728);
          v11 = 75;
          goto LABEL_832;
        case 0x11E:

          return;
        case 0x11F:
          v12 = (this + 12728);
          v11 = 121;
          goto LABEL_832;
        case 0x120:
          v12 = (this + 12728);
          v11 = 95;
          goto LABEL_832;
        case 0x121:
          v12 = (this + 12728);
          v11 = 100;
          goto LABEL_832;
        case 0x122:

          return;
        case 0x123:

          return;
        case 0x124:

          return;
        case 0x125:

          return;
        case 0x126:

          return;
        case 0x127:

          return;
        case 0x128:

          return;
        case 0x129:

          return;
        case 0x12A:

          return;
        case 0x12B:

          return;
        case 0x12C:

          return;
        case 0x12D:

          return;
        case 0x12E:

          return;
        case 0x12F:

          return;
        case 0x130:

          return;
        case 0x131:

          return;
        case 0x132:

          return;
        case 0x133:

          return;
        case 0x134:

          return;
        case 0x135:

          return;
        case 0x136:

          return;
        case 0x137:

          return;
        case 0x138:

          return;
        case 0x139:
          *a1 = 7;
          a1[1] = a3;
          v4 = 3958;
          goto LABEL_3;
        case 0x13A:

          return;
        case 0x13C:

          return;
        case 0x13D:

          return;
        case 0x13E:

          return;
        case 0x13F:

          return;
        case 0x140:

          return;
        case 0x141:

          return;
        case 0x142:

          return;
        case 0x143:

          return;
        case 0x144:

          return;
        case 0x145:

          return;
        case 0x146:

          return;
        case 0x147:

          return;
        case 0x148:

          return;
        case 0x149:

          return;
        case 0x14A:

          return;
        case 0x14B:

          return;
        case 0x14C:

          return;
        case 0x14D:
          v16 = *(this + 1593);
          v18 = "Tu";
          goto LABEL_874;
        case 0x14E:
          v25 = a4 + 1;
          v26 = "TJ";
          v27 = 2;
          goto LABEL_373;
        case 0x150:

          return;
        case 0x151:

          return;
        case 0x152:
          v25 = a4 + 1;
          v26 = "TJV";
          v27 = 3;
LABEL_373:

          return;
        case 0x153:

          return;
        case 0x154:

          return;
        case 0x156:

          return;
        case 0x157:

          return;
        case 0x158:
          v16 = *(this + 1593);
          v18 = "HF";
LABEL_874:
          v17 = (this + 12728);
          v15 = 2;
          goto LABEL_875;
        case 0x159:

          return;
        case 0x15A:
          v16 = *(this + 1593);
          v18 = "Twb";
          goto LABEL_616;
        case 0x15B:
          v16 = *(this + 1593);
          v18 = "TwB";
          goto LABEL_616;
        case 0x15C:

          return;
        case 0x15D:

          return;
        case 0x15E:
          *a1 = 7;
          a1[1] = a3;
          v4 = 4097;
          goto LABEL_3;
        case 0x15F:
          *a1 = 7;
          a1[1] = a3;
          v4 = 4103;
          goto LABEL_3;
        case 0x160:

          return;
        case 0x161:

          return;
        case 0x162:
          v16 = *(this + 1593);
          v18 = "TwS";
          goto LABEL_616;
        case 0x163:
        case 0x164:
          *a1 = 11;
          a1[1] = 0;
          *(a1 + 4) = 0;
          return;
        case 0x165:

          return;
        case 0x166:

          return;
        case 0x167:

          return;
        case 0x168:
          v12 = (this + 12728);
          v11 = 97;
LABEL_832:
          v14 = a1;
          swift::Demangle::RemanglerBuffer::operator<<(v12, v11);
          goto LABEL_876;
        case 0x169:
          v5 = 4;
LABEL_7:
          v6 = this;
          v7 = a4;
          v8 = a1;
          v9 = (*(this + 1603))(*(this + 1604), v5, *a3);
          a1 = v8;
          a3 = v9;
          this = v6;
          a4 = (v7 + 1);
          if (v7 == 1024)
          {
            goto LABEL_2;
          }

          continue;
        case 0x16A:

          return;
        case 0x16B:

          return;
        case 0x16C:

          return;
        case 0x16D:

          return;
        case 0x16E:

          return;
        case 0x16F:

          return;
        case 0x170:

          return;
        case 0x171:

          return;
        case 0x172:

          return;
        case 0x173:
          v16 = *(this + 1593);
          v18 = "Twc";
          goto LABEL_616;
        case 0x174:
          v16 = *(this + 1593);
          v18 = "Twd";
LABEL_616:
          v17 = (this + 12728);
          v15 = 3;
LABEL_875:
          v14 = a1;
          swift::Demangle::CharVector::append(v17, v18, v15, v16);
LABEL_876:
          *v14 = 0;
          v14[1] = 0;
          *(v14 + 4) = 0;
          break;
        case 0x175:

          break;
        default:
          *a1 = 4;
          a1[1] = a3;
          v4 = 406;
          goto LABEL_3;
      }

      break;
    }
  }

  else
  {
LABEL_2:
    *a1 = 3;
    a1[1] = a3;
    v4 = 397;
LABEL_3:
    *(a1 + 4) = v4;
  }
}

void swift::Demangle::mangleNode()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v6 = v5;
  if (!v0)
  {
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return;
  }

  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = v1;
  v11 = v0;
  memset(&v25[12312], 0, 17);
  v26 = 0u;
  v27 = 0;
  v29 = 0;
  v28 = 0u;
  v30 = 0u;
  v31 = 0;
  v33 = 0;
  v32 = 0u;
  v35 = 0;
  v34 = 0u;
  v37 = 0;
  v36 = 0u;
  v38 = 0u;
  v39 = 0;
  v41 = 0;
  v40 = 0u;
  v42 = 0u;
  v43 = 0;
  v45 = 0;
  v44 = 0u;
  v46 = 0u;
  v47 = 0;
  v49 = 0;
  v48 = 0u;
  v50 = 0u;
  v51 = 0;
  v53 = 0;
  v52 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = v3;
  v56 = 0;
  bzero(v25, 0x3011uLL);
  v57 = 1065353216;
  v60 = v8;
  v12 = v8[1];
  if (!v12 || (v12 + 4) > v8[2])
  {
    v13 = 2 * v8[4];
    if (v13 <= 0x21)
    {
      v13 = 33;
    }

    v8[4] = v13;
    v14 = v13 + 8;
    v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
    *v15 = v8[3];
    v12 = v15 + 1;
    v8[2] = v15 + v14;
    v8[3] = v15;
  }

  v8[1] = v12 + 4;
  v58 = v12;
  v59 = 0x2000000000;
  v61 = v7;
  v62 = 1;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v66 = v10;
  v67 = v9;
  if (v22)
  {
    *v6 = v22;
    v16 = v23;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = v16;
    v17 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = v58;
    v21 = v59;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = v20;
    *(v6 + 32) = v21;
    v17 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      do
      {
LABEL_9:
        v18 = *v17;
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }
  }

  v19 = *(&v54 + 1);
  *(&v54 + 1) = 0;
  if (v19)
  {
    operator delete(v19);
  }
}

uint64_t swift::Demangle::isSpecialized(swift::Demangle *this, swift::Demangle::Node *a2)
{
  if (this)
  {
    while (2)
    {
      v2 = 1;
      switch(*(this + 8))
      {
        case 0:
        case 0x19:
        case 0x1E:
        case 0x22:
        case 0x34:
        case 0x35:
        case 0x3F:
        case 0x48:
        case 0x4E:
        case 0x64:
        case 0x7A:
        case 0x82:
        case 0xA1:
        case 0xB1:
        case 0xBC:
        case 0xBD:
        case 0xBE:
        case 0xD6:
        case 0xE2:
        case 0xE5:
        case 0xE6:
        case 0xE7:
        case 0xF5:
        case 0x106:
        case 0x107:
        case 0x10A:
        case 0x10D:
          v4 = *(this + 18);
          if ((v4 - 1) < 2)
          {
            goto LABEL_5;
          }

          if (v4 != 5)
          {
            return 0;
          }

          v2 = *(this + 2);
          if (!v2)
          {
            return v2;
          }

          this = *this;
LABEL_5:
          this = *this;
          if (this)
          {
            continue;
          }

          return 0;
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x55:
          return v2;
        case 0x49:
          v5 = *(this + 18);
          if (v5 == 2)
          {
            goto LABEL_4;
          }

          if (v5 != 5 || *(this + 2) < 2u)
          {
            return 0;
          }

          this = *this;
LABEL_4:
          this = (this + 8);
          goto LABEL_5;
        default:
          return 0;
      }
    }
  }

  return 0;
}

uint64_t swift::Demangle::getUnspecialized@<X0>(uint64_t this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this;
  while (2)
  {
    v7 = *(v5 + 16);
    if ((v7 - 13) < 6)
    {
      v8 = *(v5 + 18);
      if ((v8 - 1) >= 2)
      {
        if (v8 != 5 || !*(v5 + 8))
        {
          *a3 = 1;
          *(a3 + 8) = v5;
          v13 = 4285;
          goto LABEL_72;
        }

        v5 = *v5;
      }

      v9 = *v5;
      if (*(*v5 + 16) != 243)
      {
        *a3 = 1;
        *(a3 + 8) = v9;
        v13 = 4287;
        goto LABEL_72;
      }

      v10 = *(v9 + 18);
      if ((v10 - 1) >= 2)
      {
        if (v10 != 5 || !*(v9 + 8))
        {
          *a3 = 1;
          *(a3 + 8) = v9;
          v13 = 4288;
          goto LABEL_72;
        }

        v9 = *v9;
      }

      v5 = *v9;
      goto LABEL_13;
    }

    switch(*(v5 + 16))
    {
      case 0:
      case 0x1E:
      case 0x22:
      case 0x34:
      case 0x35:
      case 0x48:
      case 0x4E:
      case 0x64:
      case 0x7A:
      case 0x82:
      case 0xA1:
      case 0xBC:
      case 0xBD:
      case 0xD6:
      case 0xE2:
      case 0xE5:
      case 0xE7:
      case 0x106:
      case 0x107:
      case 0x10A:
      case 0x10D:
        v14 = *(v5 + 18);
        if (v14 != 1)
        {
          if (v14 == 5)
          {
            v14 = *(v5 + 8);
          }

          else if (v14 == 2)
          {
            v14 = 2;
          }

          else
          {
            v14 = 0;
          }
        }

        goto LABEL_31;
      case 0x13:
        v11 = *(v5 + 18);
        if ((v11 - 1) < 2)
        {
          goto LABEL_20;
        }

        if (v11 == 5 && *(v5 + 8))
        {
          v5 = *v5;
LABEL_20:
          v5 = *v5;
          v12 = *(v5 + 16);
          if (v12 != 30 && v12 != 78)
          {
            *a3 = 1;
            *(a3 + 8) = v5;
            v13 = 4308;
            goto LABEL_72;
          }

LABEL_13:
          this = swift::Demangle::isSpecialized(v5, v7);
          if ((this & 1) == 0)
          {
LABEL_66:
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = v5;
            return this;
          }

          continue;
        }

        *a3 = 1;
        *(a3 + 8) = v5;
        v13 = 4303;
LABEL_72:
        *(a3 + 16) = v13;
        return this;
      case 0x19:
      case 0x3F:
      case 0xB1:
      case 0xE6:
      case 0xF5:
        v14 = 2;
LABEL_31:
        this = swift::Demangle::NodeFactory::createNode(a2, v7);
        v16 = this;
        v17 = *(v5 + 18);
        v18 = v5;
        if ((v17 - 1) < 2)
        {
          goto LABEL_35;
        }

        if (v17 != 5 || !*(v5 + 8))
        {
          *a3 = 1;
          *(a3 + 8) = v5;
          v13 = 4264;
          goto LABEL_72;
        }

        v18 = *v5;
LABEL_35:
        v19 = *v18;
        if (swift::Demangle::isSpecialized(*v18, v15))
        {
          this = (swift::Demangle::getUnspecialized)(v19, a2, v20);
          if (*a3)
          {
            return this;
          }

          v19 = *(a3 + 24);
        }

        this = swift::Demangle::Node::addChild(v16, v19, a2, v21, v22);
        if (v14 < 2)
        {
LABEL_82:
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = v16;
          return this;
        }

        v25 = v14;
        v26 = 1;
        while (1)
        {
          v28 = *(v5 + 18);
          if (v28 == 2)
          {
            if (v28 > v26)
            {
              goto LABEL_47;
            }
          }

          else if (v28 == 5 && *(v5 + 8) > v26)
          {
LABEL_47:
            v29 = v28 - 1;
            v30 = v5;
            if (v29 >= 2)
            {
              v30 = *v5;
            }

            v27 = *(v30 + 8 * v26);
            goto LABEL_41;
          }

          v27 = 0;
LABEL_41:
          this = swift::Demangle::Node::addChild(v16, v27, a2, v23, v24);
          if (v25 == ++v26)
          {
            goto LABEL_82;
          }
        }

      case 0x49:
        v33 = *(v5 + 18);
        v34 = v5;
        if (v33 == 2)
        {
          goto LABEL_63;
        }

        if (v33 != 5 || *(v5 + 8) <= 1u)
        {
          *a3 = 1;
          *(a3 + 8) = v5;
          v13 = 4315;
          goto LABEL_72;
        }

        v34 = *v5;
LABEL_63:
        v35 = *(v34 + 8);
        this = swift::Demangle::isSpecialized(v35, v7);
        if ((this & 1) == 0)
        {
          goto LABEL_66;
        }

        this = swift::Demangle::getUnspecialized(&v47, v35, a2, v36);
        if (v47)
        {
          *a3 = v47;
          *(a3 + 16) = v48;
          return this;
        }

        Node = swift::Demangle::NodeFactory::createNode(a2, 73);
        v16 = Node;
        v40 = *(v5 + 18);
        v41 = v5;
        if ((v40 - 1) < 2)
        {
          goto LABEL_77;
        }

        if (v40 == 5 && *(v5 + 8))
        {
          v41 = *v5;
LABEL_77:
          v42 = *v41;
        }

        else
        {
          v42 = 0;
        }

        swift::Demangle::Node::addChild(Node, v42, a2, v38, v39);
        this = swift::Demangle::Node::addChild(v16, v49, a2, v43, v44);
        if (*(v5 + 18) == 5 && *(v5 + 8) == 3)
        {
          this = swift::Demangle::Node::addChild(v16, *(*v5 + 16), a2, v45, v46);
        }

        goto LABEL_82;
      case 0x55:
        v31 = *(v5 + 18);
        if ((v31 - 1) < 2)
        {
          goto LABEL_57;
        }

        if (v31 == 5 && *(v5 + 8))
        {
          v5 = *v5;
LABEL_57:
          v32 = *v5;
          if (*(*v5 + 16) == 243)
          {
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = v32;
            return this;
          }

          *a3 = 1;
          *(a3 + 8) = v32;
          v13 = 4298;
        }

        else
        {
          *a3 = 1;
          *(a3 + 8) = v5;
          v13 = 4296;
        }

        goto LABEL_72;
      default:
        *a3 = 5;
        *(a3 + 8) = v5;
        v13 = 4332;
        goto LABEL_72;
    }
  }
}

uint64_t anonymous namespace::Remangler::mangleAnonymousContext@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_12;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v11 = *a2;
LABEL_12:
    if (*a4)
    {
      return result;
    }

    if (*(a2 + 18) != 5)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) >= 3u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_36;
  }

LABEL_19:
  v12 = *(this + 3184);
  v13 = *(this + 3185);
  v14 = this[1591];
  if (v12 >= v13)
  {
    v15 = this[1593];
    v16 = v15[1];
    if (&v14[v13] == v16)
    {
      v17 = v15[2];
      if ((v16 + 1) <= v17)
      {
        v15[1] = v16 + 1;
        LODWORD(v18) = 1;
LABEL_34:
        *(this + 3185) = v13 + v18;
        goto LABEL_35;
      }
    }

    else
    {
      v17 = v15[2];
    }

    if ((2 * v13) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v13);
    }

    v19 = v18 + v13;
    if (!v16 || &v16[v19] > v17)
    {
      v20 = 2 * v15[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v15[4] = v20;
      v21 = v20 + 8;
      v22 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v23 = v22 + v21;
      *v22 = v15[3];
      v16 = (v22 + 1);
      v15[2] = v23;
      v15[3] = v22;
    }

    v15[1] = &v16[v19];
    if (v13)
    {
      memcpy(v16, this[1591], v13);
    }

    this[1591] = v16;
    LODWORD(v13) = *(this + 3185);
    v14 = v16;
    v12 = *(this + 3184);
    goto LABEL_34;
  }

LABEL_35:
  *(this + 3184) = v12 + 1;
  v14[v12] = 121;
LABEL_36:
  result = swift::Demangle::CharVector::append(this + 1591, "XZ", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleAnyProtocolConformanceList@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v13 = 1;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
      goto LABEL_9;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = (a2 + 8);
      if (v8 != (a2 + 8))
      {
        goto LABEL_14;
      }

LABEL_18:
      v12 = 1;
LABEL_19:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    case 2:
      v10 = (a2 + 16);
      if (v8 != (a2 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    case 5:
      v9 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      if (v8 != v10)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
  }

  v10 = 0;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_14:
  while (1)
  {
    if (*a4)
    {
      return result;
    }

    v8 = (v8 + 8);
    if (v8 == v10)
    {
      v12 = v13;
      goto LABEL_19;
    }
  }
}

uint64_t *anonymous namespace::Remangler::mangleArgumentTuple@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if ((v5 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v5 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v6 = *a2;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  if (*(v6 + 8) == 243)
  {
    v7 = *(v6 + 18);
    if ((v7 - 1) >= 2)
    {
      if (v7 != 5 || !*(v6 + 2))
      {
        v6 = 0;
        goto LABEL_14;
      }

      v6 = *v6;
    }

    v6 = *v6;
  }

LABEL_14:
  if (*(v6 + 8) == 234)
  {
    v8 = *(v6 + 18);
    if ((v8 - 1) >= 2 && (v8 != 5 || !*(v6 + 2)))
    {
      v10 = *(this + 3184);
      v11 = *(this + 3185);
      v12 = this[1591];
      if (v10 < v11)
      {
LABEL_37:
        *(this + 3184) = v10 + 1;
        v12[v10] = 121;
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return this;
      }

      v13 = this[1593];
      v14 = v13[1];
      if (&v12[v11] == v14)
      {
        v15 = v13[2];
        if ((v14 + 1) <= v15)
        {
          v13[1] = v14 + 1;
          LODWORD(v16) = 1;
LABEL_36:
          *(this + 3185) = v11 + v16;
          goto LABEL_37;
        }
      }

      else
      {
        v15 = v13[2];
      }

      if ((2 * v11) <= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = (2 * v11);
      }

      v17 = v16 + v11;
      if (!v14 || &v14[v17] > v15)
      {
        v18 = 2 * v13[4];
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        v13[4] = v18;
        v19 = v18 + 8;
        v20 = this;
        v21 = a4;
        v22 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        a4 = v21;
        v23 = v22;
        this = v20;
        v24 = v23 + v19;
        *v23 = v13[3];
        v14 = (v23 + 1);
        v13[2] = v24;
        v13[3] = v23;
      }

      v13[1] = &v14[v17];
      if (v11)
      {
        v25 = this;
        v26 = v11;
        v27 = a4;
        memcpy(v14, this[1591], v26);
        this = v25;
        a4 = v27;
      }

      this[1591] = v14;
      LODWORD(v11) = *(this + 3185);
      v12 = v14;
      v10 = *(this + 3184);
      goto LABEL_36;
    }
  }

  v9 = a3 + 1;
}

uint64_t anonymous namespace::Remangler::mangleAssociatedTypeRef@<X0>(char **this@<X0>, uint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  if ((result & 1) == 0)
  {
    v9 = *(a2 + 18);
    v10 = a2;
    if ((v9 - 1) >= 2)
    {
      if (v9 == 5)
      {
        v11 = *a2;
        v10 = *a2;
LABEL_10:
        v12 = &v11[*(a2 + 2)];
        goto LABEL_16;
      }

      v10 = 0;
    }

    switch(v9)
    {
      case 1:
        v12 = (a2 + 1);
        goto LABEL_16;
      case 2:
        v12 = (a2 + 2);
        goto LABEL_16;
      case 5:
        v11 = *a2;
        goto LABEL_10;
    }

    v12 = 0;
LABEL_16:
    while (v10 != v12)
    {
      if (*a4)
      {
        return result;
      }

      ++v10;
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    result = swift::Demangle::CharVector::append(this + 1591, "Qa", 2uLL, this[1593]);
    v13 = this[1585];
    if (v13 > 0xF)
    {
      v15 = *(this + 3178) + 16;
      v18 = v16;
      v19 = v17;
      v20 = v15;
      result = std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &v18);
    }

    else
    {
      this[1585] = (v13 + 1);
      v14 = &this[3 * v13 + 1537];
      *v14 = v16;
      *(v14 + 16) = v17;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeMetadataAccessor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "Wt", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDefaultAssociatedTypeMetadataAccessor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "TM", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAccessorAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::CharVector::append(this + 1591, "fMa", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "WT", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleBaseWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "Wb", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAutoClosureType@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (v8 != 5)
  {
    if (v8 == 2)
    {
      i = 1;
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v8 = *(a2 + 2);
  if (v8)
  {
LABEL_6:
    for (i = v8 - 1; i != -1; --i)
    {
LABEL_9:
      v10 = *(a2 + 18);
      v11 = v10 - 1;
      if (v10 != 1)
      {
        if (v10 == 5)
        {
          v10 = *(a2 + 2);
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_7;
          }

          v10 = 2;
        }
      }

      if (v10 <= i)
      {
LABEL_7:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        continue;
      }

      v12 = a2;
      if (v11 >= 2)
      {
        v12 = *a2;
      }

      if (*a4)
      {
        return result;
      }
    }
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "XK", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleBodyAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::CharVector::append(this + 1591, "fMb", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleBoundGenericEnum@<X0>(uint64_t this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  v7 = a2;
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    v7 = *a2;
LABEL_5:
    v8 = *v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = *(v8 + 18);
  if ((v9 - 1) < 2)
  {
LABEL_11:
    v10 = *v8;
    goto LABEL_13;
  }

  if (v9 == 5 && *(v8 + 2))
  {
    v8 = *v8;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  if (*(v10 + 8) != 63)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 848;
    return this;
  }

  v11 = *(v10 + 18);
  v12 = v10;
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5)
    {
      v13 = 0;
      if (v11 == 2)
      {
LABEL_25:
        v14 = v10[1];
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (!*(v10 + 2))
    {
      v13 = 0;
      goto LABEL_27;
    }

    v12 = *v10;
  }

  v13 = *v12;
  if (v11 == 2)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v11 == 5 && *(v10 + 2) >= 2u)
  {
    v10 = *v10;
    goto LABEL_25;
  }

LABEL_27:
  v14 = 0;
LABEL_28:
  if (*(v13 + 8) == 163 && v13[1] == 5)
  {
    v15 = *v13;
    v16 = *v15;
    v17 = *(v15 + 4);
    v18 = v16 == 1718187859 && v17 == 116;
    if (v18 && *(v14 + 16) == 103 && *(v14 + 8) == 8 && **v14 == 0x6C616E6F6974704FLL)
    {
      v31 = v4;
      v32 = v5;
      v29[0] = 0;
      v29[1] = 0;
      v30 = 0;
      v22 = this;
      if (this)
      {
LABEL_52:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return this;
      }

      v24 = a2;
      v25 = *(a2 + 18);
      if (v25 == 2)
      {
        v26 = v22;
        v27 = a3;
      }

      else
      {
        v18 = v25 == 5;
        v26 = v22;
        v27 = a3;
        if (!v18 || *(a2 + 2) < 2u)
        {
          v28 = 0;
LABEL_50:
          if (*a4)
          {
            return this;
          }

          swift::Demangle::CharVector::append((v22 + 12728), "Sg", 2uLL, *(v22 + 12744));
          this = swift::Demangle::RemanglerBase::addSubstitution(v22, v29);
          goto LABEL_52;
        }

        v24 = *a2;
      }

      v28 = *(v24 + 1);
      goto LABEL_50;
    }
  }

  v19 = a3 + 1;
}

void *anonymous namespace::Remangler::mangleBoundGenericFunction@<X0>(const void **this@<X0>, uint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  if (result)
  {
    goto LABEL_2;
  }

  result = swift::Demangle::getUnspecialized(a2, *this, &v24);
  if (v24)
  {
    *a4 = v24;
    *(a4 + 16) = v25;
    return result;
  }

  if (!*a4)
  {
    v23 = 121;
    if (!*a4)
    {
      v9 = *(this + 3184);
      v10 = *(this + 3185);
      v11 = this[1591];
      if (v9 < v10)
      {
        goto LABEL_24;
      }

      v12 = this[1593];
      v13 = v12[1];
      if (&v11[v10] == v13)
      {
        v14 = v12[2];
        if ((v13 + 1) <= v14)
        {
          v12[1] = v13 + 1;
          LODWORD(v15) = 1;
LABEL_23:
          *(this + 3185) = v10 + v15;
LABEL_24:
          *(this + 3184) = v9 + 1;
          v11[v9] = 71;
          v20 = this[1585];
          if (v20 > 0xF)
          {
            v22 = *(this + 3178) + 16;
            v29 = v27;
            v30 = v28;
            v31 = v22;
            result = std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &v29);
          }

          else
          {
            this[1585] = (v20 + 1);
            v21 = &this[3 * v20 + 1537];
            *v21 = v27;
            *(v21 + 16) = v28;
          }

LABEL_2:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          return result;
        }
      }

      else
      {
        v14 = v12[2];
      }

      if ((2 * v10) <= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = (2 * v10);
      }

      v16 = v15 + v10;
      if (!v13 || &v13[v16] > v14)
      {
        v17 = 2 * v12[4];
        if (v17 <= v16 + 1)
        {
          v17 = v16 + 1;
        }

        v12[4] = v17;
        v18 = v17 + 8;
        result = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
        v19 = result + v18;
        *result = v12[3];
        v13 = (result + 1);
        v12[2] = v19;
        v12[3] = result;
      }

      v12[1] = &v13[v16];
      if (v10)
      {
        result = memcpy(v13, this[1591], v10);
      }

      this[1591] = v13;
      LODWORD(v10) = *(this + 3185);
      v11 = v13;
      v9 = *(this + 3184);
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t anonymous namespace::Remangler::mangleBuiltinTypeName@<X0>(uint64_t this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = *(this + 12736);
  v7 = *(this + 12740);
  v8 = *(this + 12728);
  if (v6 >= v7)
  {
    v9 = *(this + 12744);
    v10 = v9[1];
    if (&v8[v7] == v10)
    {
      v11 = v9[2];
      if ((v10 + 1) <= v11)
      {
        v9[1] = v10 + 1;
        LODWORD(v12) = 1;
LABEL_19:
        *(v4 + 12740) = v7 + v12;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v9[2];
    }

    if ((2 * v7) <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = (2 * v7);
    }

    v13 = v12 + v7;
    if (v10)
    {
      v14 = &v10[v12 + v7] > v11;
    }

    else
    {
      v14 = 1;
    }

    v8 = v9[1];
    if (v14)
    {
      v15 = 2 * v9[4];
      if (v15 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      v9[4] = v15;
      v16 = v15 + 8;
      this = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
      v17 = this + v16;
      *this = v9[3];
      v8 = (this + 8);
      v9[2] = v17;
      v9[3] = this;
    }

    v9[1] = &v8[v13];
    if (v7)
    {
      this = memcpy(v8, *(v4 + 12728), v7);
    }

    *(v4 + 12728) = v8;
    LODWORD(v7) = *(v4 + 12740);
    v6 = *(v4 + 12736);
    goto LABEL_19;
  }

LABEL_20:
  *(v4 + 12736) = v6 + 1;
  v8[v6] = 66;
  v18 = *a2;
  v19 = *(a2 + 1);
  if (v19 <= 19)
  {
    if (v19 <= 15)
    {
      if (v19 == 11)
      {
        if (*v18 == 0x2E6E69746C697542 && *(v18 + 3) == 0x626F4A2E6E69746CLL)
        {
          v33 = (v4 + 12728);
          v34 = 106;
          goto LABEL_188;
        }
      }

      else
      {
        if (v19 != 12)
        {
          goto LABEL_165;
        }

        this = memcmp(*a2, "Builtin.Word", 0xCuLL);
        if (!this)
        {
          v33 = (v4 + 12728);
          v34 = 119;
          goto LABEL_188;
        }
      }

      if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x746E492E6E69746CLL)
      {
LABEL_175:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x6365562E6E69746CLL)
        {
          goto LABEL_179;
        }

        v79 = (v18 + 11);
        v80 = v19 - 11;
        if (v19 == 11)
        {
          v81 = -1;
        }

        else
        {
          this = memchr(v79, 120, v19 - 11);
          v81 = this - v79;
          if (!this)
          {
            v81 = -1;
          }
        }

        if (v80 >= v81)
        {
          v82 = v81;
        }

        else
        {
          v82 = v19 - 11;
        }

        if (v80 <= v81)
        {
          v83 = v79 + v82;
        }

        else
        {
          v83 = v79 + v82 + 1;
        }

        v84 = (__PAIR128__(v80, v81) - __PAIR128__(v82, v80)) >> 64;
        if (v84 == 10)
        {
          if (*v83 == 0x746E696F50776152 && *(v83 + 8) == 29285)
          {
            v86 = (v4 + 12728);
            v87 = 112;
LABEL_228:
            swift::Demangle::RemanglerBuffer::operator<<(v86, v87);
            swift::Demangle::CharVector::append((v4 + 12728), "Bv", 2uLL, *(v4 + 12744));
            swift::Demangle::CharVector::append((v4 + 12728), v79, v82, *(v4 + 12744));
            v33 = (v4 + 12728);
            goto LABEL_187;
          }
        }

        else if (v84 < 6)
        {
          if (v84 < 3)
          {
LABEL_215:
            v72 = 956;
            v73 = 8;
            goto LABEL_189;
          }

          goto LABEL_211;
        }

        if (*v83 == 1162432582 && *(v83 + 4) == 17733)
        {
          v102 = v84 - 6;
          v103 = swift::Demangle::RemanglerBuffer::operator<<((v4 + 12728), 102);
          v104 = v103;
          v105 = v103[2];
          v106 = (v83 + 6);
LABEL_227:
          swift::Demangle::CharVector::append(v103, v106, v102, v105);
          v86 = v104;
          v87 = 95;
          goto LABEL_228;
        }

LABEL_211:
        if (*v83 != 28233 || *(v83 + 2) != 116)
        {
          goto LABEL_215;
        }

        v102 = v84 - 3;
        v103 = swift::Demangle::RemanglerBuffer::operator<<((v4 + 12728), 105);
        v104 = v103;
        v105 = v103[2];
        v106 = (v83 + 3);
        goto LABEL_227;
      }

      goto LABEL_180;
    }

    if (v19 == 16)
    {
      if (*v18 == 0x2E6E69746C697542 && *(v18 + 8) == 0x726F747563657845)
      {
        v33 = (v4 + 12728);
        v34 = 101;
        goto LABEL_188;
      }

      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x6E656B6F544C4953)
      {
        goto LABEL_166;
      }

      v33 = (v4 + 12728);
      v34 = 116;
      goto LABEL_188;
    }

    if (v19 == 17)
    {
      this = memcmp(*a2, "Builtin.PackIndex", 0x11uLL);
      if (!this)
      {
        v33 = (v4 + 12728);
        v34 = 80;
        goto LABEL_188;
      }

      if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x746E492E6E69746CLL)
      {
LABEL_171:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 6) != 0x4545454950462E6ELL)
        {
          goto LABEL_175;
        }

        v74 = v19 - 14;
        v75 = swift::Demangle::RemanglerBuffer::operator<<((v4 + 12728), 102);
        v76 = v75;
        v77 = v75[2];
        v78 = (v18 + 14);
LABEL_186:
        swift::Demangle::CharVector::append(v75, v78, v74, v77);
        v33 = v76;
LABEL_187:
        v34 = 95;
        goto LABEL_188;
      }

LABEL_180:
      v74 = v19 - 11;
      v75 = swift::Demangle::RemanglerBuffer::operator<<((v4 + 12728), 105);
      v76 = v75;
      v77 = v75[2];
      v78 = (v18 + 11);
      goto LABEL_186;
    }

    if (v19 != 18)
    {
      goto LABEL_165;
    }

    if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x746E696F50776152 || *(v18 + 16) != 29285)
    {
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x726574694C746E49 || *(v18 + 16) != 27745)
      {
        goto LABEL_166;
      }

      v33 = (v4 + 12728);
      v34 = 73;
      goto LABEL_188;
    }

    v90 = *(v4 + 12736);
    v91 = *(v4 + 12740);
    v92 = *(v4 + 12728);
    if (v90 < v91)
    {
LABEL_256:
      v73 = 0;
      a2 = 0;
      v72 = 0;
      *(v4 + 12736) = v90 + 1;
      v92[v90] = 112;
      goto LABEL_189;
    }

    v93 = *(v4 + 12744);
    v94 = v93[1];
    if (&v92[v91] == v94)
    {
      v95 = v93[2];
      if ((v94 + 1) <= v95)
      {
        v93[1] = v94 + 1;
        LODWORD(v112) = 1;
LABEL_255:
        *(v4 + 12740) = v91 + v112;
        goto LABEL_256;
      }
    }

    else
    {
      v95 = v93[2];
    }

    if ((2 * v91) <= 4)
    {
      v112 = 4;
    }

    else
    {
      v112 = (2 * v91);
    }

    v113 = v112 + v91;
    if (!v94 || &v94[v113] > v95)
    {
      v114 = 2 * v93[4];
      if (v114 <= v113 + 1)
      {
        v114 = v113 + 1;
      }

      v93[4] = v114;
      v115 = v114 + 8;
      this = malloc_type_malloc(v114 + 8, 0x2004093837F09uLL);
      v116 = this + v115;
      *this = v93[3];
      v94 = (this + 8);
      v93[2] = v116;
      v93[3] = this;
    }

    v93[1] = &v94[v113];
    if (v91)
    {
      this = memcpy(v94, *(v4 + 12728), v91);
    }

    *(v4 + 12728) = v94;
    LODWORD(v91) = *(v4 + 12740);
    v92 = v94;
    v90 = *(v4 + 12736);
    goto LABEL_255;
  }

  if (v19 > 26)
  {
    switch(v19)
    {
      case 27:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x41746C7561666544 || *(v18 + 16) != 0x726F7453726F7463 || *(v18 + 19) != 0x656761726F745372)
        {
          goto LABEL_166;
        }

        v33 = (v4 + 12728);
        v34 = 68;
        break;
      case 29:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x6661736E55776152 || *(v18 + 16) != 0x756E69746E6F4365 || *(v18 + 21) != 0x6E6F697461756E69)
        {
          goto LABEL_166;
        }

        v33 = (v4 + 12728);
        v34 = 99;
        break;
      case 41:
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x75616665446E6F4ELL || *(v18 + 16) != 0x697274736944746CLL || *(v18 + 24) != 0x7463416465747562 || *(v18 + 32) != 0x6761726F7453726FLL || *(v18 + 40) != 101)
        {
LABEL_166:
          if (*v18 != 0x2E6E69746C697542 || *(v18 + 3) != 0x746E492E6E69746CLL)
          {
            if (v19 < 0xE)
            {
              goto LABEL_175;
            }

            goto LABEL_171;
          }

          goto LABEL_180;
        }

        v33 = (v4 + 12728);
        v34 = 100;
        break;
      default:
        goto LABEL_165;
    }

LABEL_188:
    this = swift::Demangle::RemanglerBuffer::operator<<(v33, v34);
    v73 = 0;
    a2 = 0;
    v72 = 0;
    goto LABEL_189;
  }

  switch(v19)
  {
    case 20:
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x624F656764697242 || *(v18 + 16) != 1952671082)
      {
        if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x624F65766974614ELL || *(v18 + 16) != 1952671082)
        {
          goto LABEL_166;
        }

        v60 = *(v4 + 12736);
        v61 = *(v4 + 12740);
        v62 = *(v4 + 12728);
        if (v60 < v61)
        {
LABEL_298:
          v73 = 0;
          a2 = 0;
          v72 = 0;
          *(v4 + 12736) = v60 + 1;
          v62[v60] = 111;
          goto LABEL_189;
        }

        v63 = *(v4 + 12744);
        v64 = v63[1];
        if (&v62[v61] == v64)
        {
          v65 = v63[2];
          if ((v64 + 1) <= v65)
          {
            v63[1] = v64 + 1;
            LODWORD(v127) = 1;
LABEL_297:
            *(v4 + 12740) = v61 + v127;
            goto LABEL_298;
          }
        }

        else
        {
          v65 = v63[2];
        }

        if ((2 * v61) <= 4)
        {
          v127 = 4;
        }

        else
        {
          v127 = (2 * v61);
        }

        v128 = v127 + v61;
        if (!v64 || &v64[v128] > v65)
        {
          v129 = 2 * v63[4];
          if (v129 <= v128 + 1)
          {
            v129 = v128 + 1;
          }

          v63[4] = v129;
          v130 = v129 + 8;
          this = malloc_type_malloc(v129 + 8, 0x2004093837F09uLL);
          v131 = this + v130;
          *this = v63[3];
          v64 = (this + 8);
          v63[2] = v131;
          v63[3] = this;
        }

        v63[1] = &v64[v128];
        if (v61)
        {
          this = memcpy(v64, *(v4 + 12728), v61);
        }

        *(v4 + 12728) = v64;
        LODWORD(v61) = *(v4 + 12740);
        v62 = v64;
        v60 = *(v4 + 12736);
        goto LABEL_297;
      }

      v96 = *(v4 + 12736);
      v97 = *(v4 + 12740);
      v98 = *(v4 + 12728);
      if (v96 < v97)
      {
LABEL_284:
        v73 = 0;
        a2 = 0;
        v72 = 0;
        *(v4 + 12736) = v96 + 1;
        v98[v96] = 98;
        goto LABEL_189;
      }

      v99 = *(v4 + 12744);
      v100 = v99[1];
      if (&v98[v97] == v100)
      {
        v101 = v99[2];
        if ((v100 + 1) <= v101)
        {
          v99[1] = v100 + 1;
          LODWORD(v122) = 1;
LABEL_283:
          *(v4 + 12740) = v97 + v122;
          goto LABEL_284;
        }
      }

      else
      {
        v101 = v99[2];
      }

      if ((2 * v97) <= 4)
      {
        v122 = 4;
      }

      else
      {
        v122 = (2 * v97);
      }

      v123 = v122 + v97;
      if (!v100 || &v100[v123] > v101)
      {
        v124 = 2 * v99[4];
        if (v124 <= v123 + 1)
        {
          v124 = v123 + 1;
        }

        v99[4] = v124;
        v125 = v124 + 8;
        this = malloc_type_malloc(v124 + 8, 0x2004093837F09uLL);
        v126 = this + v125;
        *this = v99[3];
        v100 = (this + 8);
        v99[2] = v126;
        v99[3] = this;
      }

      v99[1] = &v100[v123];
      if (v97)
      {
        this = memcpy(v100, *(v4 + 12728), v97);
      }

      *(v4 + 12728) = v100;
      LODWORD(v97) = *(v4 + 12740);
      v98 = v100;
      v96 = *(v4 + 12736);
      goto LABEL_283;
    case 21:
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x4F6E776F6E6B6E55 || *(v18 + 13) != 0x7463656A624F6E77)
      {
        goto LABEL_166;
      }

      v45 = *(v4 + 12736);
      v46 = *(v4 + 12740);
      v47 = *(v4 + 12728);
      if (v45 < v46)
      {
LABEL_242:
        v73 = 0;
        a2 = 0;
        v72 = 0;
        *(v4 + 12736) = v45 + 1;
        v47[v45] = 79;
        goto LABEL_189;
      }

      v48 = *(v4 + 12744);
      v49 = v48[1];
      if (&v47[v46] == v49)
      {
        v50 = v48[2];
        if ((v49 + 1) <= v50)
        {
          v48[1] = v49 + 1;
          LODWORD(v107) = 1;
LABEL_241:
          *(v4 + 12740) = v46 + v107;
          goto LABEL_242;
        }
      }

      else
      {
        v50 = v48[2];
      }

      if ((2 * v46) <= 4)
      {
        v107 = 4;
      }

      else
      {
        v107 = (2 * v46);
      }

      v108 = v107 + v46;
      if (!v49 || &v49[v108] > v50)
      {
        v109 = 2 * v48[4];
        if (v109 <= v108 + 1)
        {
          v109 = v108 + 1;
        }

        v48[4] = v109;
        v110 = v109 + 8;
        this = malloc_type_malloc(v109 + 8, 0x2004093837F09uLL);
        v111 = this + v110;
        *this = v48[3];
        v49 = (this + 8);
        v48[2] = v111;
        v48[3] = this;
      }

      v48[1] = &v49[v108];
      if (v46)
      {
        this = memcpy(v49, *(v4 + 12728), v46);
      }

      *(v4 + 12728) = v49;
      LODWORD(v46) = *(v4 + 12740);
      v47 = v49;
      v45 = *(v4 + 12736);
      goto LABEL_241;
    case 25:
      if (*v18 != 0x2E6E69746C697542 || *(v18 + 8) != 0x6156656661736E55 || *(v18 + 16) != 0x656666754265756CLL || *(v18 + 24) != 114)
      {
        goto LABEL_166;
      }

      v23 = *(v4 + 12736);
      v24 = *(v4 + 12740);
      v25 = *(v4 + 12728);
      if (v23 < v24)
      {
LABEL_270:
        v73 = 0;
        a2 = 0;
        v72 = 0;
        *(v4 + 12736) = v23 + 1;
        v25[v23] = 66;
        goto LABEL_189;
      }

      v26 = *(v4 + 12744);
      v27 = v26[1];
      if (&v25[v24] == v27)
      {
        v28 = v26[2];
        if ((v27 + 1) <= v28)
        {
          v26[1] = v27 + 1;
          LODWORD(v117) = 1;
LABEL_269:
          *(v4 + 12740) = v24 + v117;
          goto LABEL_270;
        }
      }

      else
      {
        v28 = v26[2];
      }

      if ((2 * v24) <= 4)
      {
        v117 = 4;
      }

      else
      {
        v117 = (2 * v24);
      }

      v118 = v117 + v24;
      if (!v27 || &v27[v118] > v28)
      {
        v119 = 2 * v26[4];
        if (v119 <= v118 + 1)
        {
          v119 = v118 + 1;
        }

        v26[4] = v119;
        v120 = v119 + 8;
        this = malloc_type_malloc(v119 + 8, 0x2004093837F09uLL);
        v121 = this + v120;
        *this = v26[3];
        v27 = (this + 8);
        v26[2] = v121;
        v26[3] = this;
      }

      v26[1] = &v27[v118];
      if (v24)
      {
        this = memcpy(v27, *(v4 + 12728), v24);
      }

      *(v4 + 12728) = v27;
      LODWORD(v24) = *(v4 + 12740);
      v25 = v27;
      v23 = *(v4 + 12736);
      goto LABEL_269;
  }

LABEL_165:
  if (v19 >= 0xB)
  {
    goto LABEL_166;
  }

LABEL_179:
  v72 = 960;
  v73 = 9;
LABEL_189:
  *a3 = v73;
  *(a3 + 8) = a2;
  *(a3 + 16) = v72;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleBuiltinFixedArray@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "BV", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleCFunctionPointer@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
LABEL_5:
    if (*(*v9 + 16) == 24)
    {
      switch(v8)
      {
        case 1:
          goto LABEL_10;
        case 2:
          v11 = 1;
          goto LABEL_41;
        case 5:
          v10 = *(a2 + 2);
          v11 = v10 - 1;
          if (v10 != 1)
          {
            goto LABEL_41;
          }

LABEL_10:
          swift::Demangle::CharVector::append(this + 1591, "XzC", 3uLL, *(this + 1593));
          v12 = *(v5 + 18);
          if ((v12 - 1) >= 2)
          {
            if (v12 != 5 || !*(v5 + 2))
            {
              v13 = 0;
              goto LABEL_35;
            }

            v5 = *v5;
          }

          v13 = *v5;
LABEL_35:
          swift::Demangle::CharVector::append(this + 3182, *(v13 + 1), *(this + 1593));
          result = swift::Demangle::CharVector::append(this + 1591, *v13, *(v13 + 1), *(this + 1593));
          *a4 = 0;
          *(a4 + 8) = 0;
          v19 = (a4 + 16);
          goto LABEL_36;
      }

      v11 = -1;
      while (1)
      {
LABEL_41:
        v20 = *(v5 + 18);
        v21 = v20 - 1;
        if (v20 != 1)
        {
          if (v20 == 5)
          {
            v20 = *(v5 + 2);
          }

          else
          {
            if (v20 != 2)
            {
              goto LABEL_39;
            }

            v20 = 2;
          }
        }

        if (v20 <= v11)
        {
LABEL_39:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_40;
        }

        v22 = v5;
        if (v21 >= 2)
        {
          v22 = *v5;
        }

        if (*a4)
        {
          return result;
        }

LABEL_40:
        if (!--v11)
        {
          goto LABEL_10;
        }
      }
    }

    goto LABEL_15;
  }

  if (v8 == 5)
  {
    if (!*(a2 + 2))
    {
      goto LABEL_33;
    }

    v9 = *a2;
    goto LABEL_5;
  }

LABEL_15:
  switch(v8)
  {
    case 1:
LABEL_20:
      v14 = v8 - 1;
      while (1)
      {
        v15 = *(v5 + 18);
        v16 = v15 - 1;
        if (v15 != 1)
        {
          if (v15 == 5)
          {
            v15 = *(v5 + 2);
          }

          else
          {
            if (v15 != 2)
            {
              goto LABEL_21;
            }

            v15 = 2;
          }
        }

        if (v15 <= v14)
        {
LABEL_21:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          goto LABEL_22;
        }

        v17 = v5;
        if (v16 >= 2)
        {
          v17 = *v5;
        }

        if (*a4)
        {
          return result;
        }

LABEL_22:
        if (--v14 == -1)
        {
          goto LABEL_33;
        }
      }

    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_20;
      }

      break;
    case 2:
      v8 = 2;
      goto LABEL_20;
  }

LABEL_33:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v19 = (a4 + 16);
  result = swift::Demangle::CharVector::append(this + 1591, "XC", 2uLL, *(this + 1593));
  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_36:
  *v19 = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleClangType@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  swift::Demangle::CharVector::append(this + 3182, *(a2 + 1), *(this + 1593));
  result = swift::Demangle::CharVector::append(this + 1591, *a2, *(a2 + 1), *(this + 1593));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleClassMetadataBaseOffset@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 != 5 || *(a2 + 2) != 1)
    {
      v8 = 322;
      v7 = 10;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  v6 = this;
  if (*a4)
  {
    return this;
  }

  this = swift::Demangle::CharVector::append(v6 + 1591, "Mo", 2uLL, *(v6 + 1593));
  v7 = 0;
  a2 = 0;
  v8 = 0;
LABEL_8:
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  return this;
}

_anonymous_namespace_::Remangler *anonymous namespace::Remangler::mangleConcreteProtocolConformance@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = *(v10 + 18);
  if (v11 != 1)
  {
    if (v11 != 5 || *(v10 + 2) != 1)
    {
      v15 = 322;
      v16 = 10;
LABEL_18:
      *a4 = v16;
      *(a4 + 8) = v10;
      *(a4 + 16) = v15;
      return this;
    }

    v10 = *v10;
  }

  if (*a4)
  {
    return this;
  }

  v12 = *(a2 + 18);
  v13 = a2;
  if (v12 == 2)
  {
    goto LABEL_16;
  }

  if (v12 == 5 && *(a2 + 2) >= 2u)
  {
    v13 = *a2;
LABEL_16:
    v14 = *(v13 + 1);
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  if (!*a4)
  {
    if (*(a2 + 18) != 5 || *(a2 + 2) < 3u)
    {
      swift::Demangle::CharVector::append(v6 + 1591, "y", 1uLL, *(v6 + 1593));
LABEL_27:
      this = swift::Demangle::CharVector::append(v6 + 1591, "HC", 2uLL, *(v6 + 1593));
      v16 = 0;
      v10 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    if (!*a4)
    {
      goto LABEL_27;
    }
  }

  return this;
}

uint64_t anonymous namespace::Remangler::manglePackProtocolConformance@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 5 && *(a2 + 2))
  {
    a2 = *a2;
LABEL_5:
    v7 = *a2;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (!*a4)
  {
    result = swift::Demangle::CharVector::append(this + 1591, "HX", 2uLL, this[1593]);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleConformanceAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  v8 = *(a2 + 18);
LABEL_8:
  v11 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (v8 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v11 = *a2;
  }

  if (*a4)
  {
    return result;
  }

  if (*(a2 + 18) != 5)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(a2 + 2) > 2u)
  {
    if (*a4)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_20:
  result = swift::Demangle::CharVector::append(this + 1591, "fMc", 3uLL, this[1593]);
  if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
  {
    v12 = *(*a2 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleCoroutineContinuationPrototype@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "TC", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDeallocator@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_9:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      goto LABEL_15;
    case 2:
      v10 = a2 + 2;
      goto LABEL_15;
    case 5:
      v9 = *a2;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_15:
  while (v8 != v10)
  {
    if (*a4)
    {
      return result;
    }

    ++v8;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift::Demangle::CharVector::append(this + 1591, "fD", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDefaultArgumentInitializer@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 != 5 || !*(a2 + 2))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v9 = *a2;
  }

  if (*a4)
  {
    return result;
  }

LABEL_8:
  result = swift::Demangle::CharVector::append(this + 1591, "fA", 2uLL, this[1593]);
  v11 = *(v5 + 18);
  if (v11 != 2)
  {
    if (v11 != 5 || *(v5 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    v5 = *v5;
  }

  v12 = *(v5 + 1);
}

uint64_t anonymous namespace::Remangler::mangleDependentAssociatedConformance@<X0>(uint64_t this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v8 = *a2;
LABEL_5:
    v9 = *v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = *(v9 + 18);
  if (v10 == 1)
  {
    v11 = a2;
LABEL_13:
    if (*a4)
    {
      return this;
    }

    v14 = *(v11 + 18);
    if (v14 != 2)
    {
      if (v14 != 5 || *(v11 + 2) < 2u)
      {
        v15 = 0;
LABEL_20:
        if (*(v15 + 8) == 243)
        {
          v16 = *(v15 + 18);
          if ((v16 - 1) >= 2)
          {
            if (v16 != 5 || !*(v15 + 2))
            {
              v15 = 0;
              goto LABEL_27;
            }

            v15 = *v15;
          }

          v15 = *v15;
        }

LABEL_27:
        if ((this & 1) == 0)
        {
          v17 = *(v15 + 18);
          v18 = v15;
          if ((v17 - 1) >= 2)
          {
            if (v17 == 5)
            {
              v19 = *v15;
              v18 = *v15;
LABEL_36:
              v20 = &v19[*(v15 + 2)];
              goto LABEL_42;
            }

            v18 = 0;
          }

          switch(v17)
          {
            case 1:
              v20 = v15 + 1;
              goto LABEL_42;
            case 2:
              v20 = v15 + 2;
              goto LABEL_42;
            case 5:
              v19 = *v15;
              goto LABEL_36;
          }

          v20 = 0;
LABEL_42:
          while (v18 != v20)
          {
            if (*a4)
            {
              return this;
            }

            ++v18;
          }
        }

        v13 = 0;
        v9 = 0;
        v12 = 0;
        goto LABEL_44;
      }

      v11 = *v11;
    }

    v15 = *(v11 + 1);
    goto LABEL_20;
  }

  if (v10 == 5 && *(v9 + 2) == 1)
  {
    v11 = a2;
    v9 = *v9;
    goto LABEL_13;
  }

  v12 = 322;
  v13 = 10;
LABEL_44:
  *a4 = v13;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  return this;
}

void anonymous namespace::Remangler::mangleDependentAssociatedTypeRef(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v15 = 0uLL;
  LOBYTE(v16) = 0;
  {
    v11 = *(this + 1585);
    if (v11 > 0xF)
    {
      v13 = *(this + 3178) + 16;
      v17 = v15;
      v18 = v16;
      v19 = v13;
      std::__hash_table<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,swift::Demangle::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::SubstitutionEntry,std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::SubstitutionEntry>,swift::Demangle::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::SubstitutionEntry,std::pair<swift::Demangle::SubstitutionEntry const,unsigned int>>(this + 1586, &v17);
    }

    else
    {
      *(this + 1585) = v11 + 1;
      v12 = this + 24 * v11 + 12296;
      *v12 = v15;
      v12[16] = v16;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v14 = *(v5 + 18);
  if (v14 == 2)
  {
    goto LABEL_15;
  }

  if (v14 == 5 && *(v5 + 2) >= 2u)
  {
    v5 = *v5;
LABEL_15:
    return;
  }

  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericConformanceRequirement@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  v9 = a2;
  if (v8 != 2)
  {
    if (v8 != 5 || *(a2 + 2) != 2)
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1075;
      return this;
    }

    v9 = *a2;
  }

  v10 = *(v9 + 1);
  v11 = *(v10 + 18);
  v12 = v10;
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5 || !*(v10 + 2))
    {
      *a4 = 1;
      *(a4 + 8) = v10;
      *(a4 + 16) = 1077;
      return this;
    }

    v12 = *v10;
  }

  if (*(*v12 + 16) != 190)
  {
    if (*a4)
    {
      return this;
    }

    v13 = *(a2 + 18);
    v14 = a2;
    if ((v13 - 1) >= 2)
    {
      if (v13 != 5 || !*(a2 + 2))
      {
        v15 = 0;
LABEL_30:
        if (v28)
        {
LABEL_53:
          *a4 = v28;
          *(a4 + 16) = v29;
          return this;
        }

        v19 = v31;
        if ((v30 & 0x80000000) == 0 && !v31)
        {
          *a4 = 1;
          *(a4 + 8) = a2;
          *(a4 + 16) = 1109;
          return this;
        }

        v24 = v6[1593];
        if (v30 == 1)
        {
          v26 = "Rc";
        }

        else if (v30)
        {
          if (v30 == -1)
          {
            v25 = "RB";
            goto LABEL_65;
          }

          v26 = "RC";
        }

        else
        {
          v26 = "Rb";
        }

        goto LABEL_72;
      }

      v14 = *a2;
    }

    v15 = *v14;
    goto LABEL_30;
  }

  if (*(v10 + 8) != 243)
  {
    goto LABEL_25;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_15;
  }

  if (v11 == 5 && *(v10 + 2))
  {
    v10 = *v10;
LABEL_15:
    v10 = *v10;
    goto LABEL_25;
  }

  v10 = 0;
LABEL_25:
  {
    v16 = *(v10 + 18);
    v17 = v10;
    if ((v16 - 1) >= 2)
    {
      if (v16 == 5)
      {
        v18 = *v10;
        v17 = *v10;
LABEL_39:
        v20 = &v18[*(v10 + 2)];
        goto LABEL_45;
      }

      v17 = 0;
    }

    switch(v16)
    {
      case 1:
        v20 = (v10 + 1);
        goto LABEL_45;
      case 2:
        v20 = (v10 + 2);
        goto LABEL_45;
      case 5:
        v18 = *v10;
        goto LABEL_39;
    }

    v20 = 0;
LABEL_45:
    while (v17 != v20)
    {
      if (*a4)
      {
        return this;
      }

      ++v17;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v21 = *(a2 + 18);
  v22 = a2;
  if ((v21 - 1) < 2)
  {
    goto LABEL_50;
  }

  if (v21 == 5 && *(a2 + 2))
  {
    v22 = *a2;
LABEL_50:
    v23 = *v22;
    goto LABEL_52;
  }

  v23 = 0;
LABEL_52:
  if (v28)
  {
    goto LABEL_53;
  }

  v19 = v31;
  if ((v30 & 0x80000000) == 0 && !v31)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1085;
    return this;
  }

  v24 = v6[1593];
  if (v30 == 1)
  {
    v26 = "Rp";
LABEL_72:
    v27 = 2;
    goto LABEL_73;
  }

  if (!v30)
  {
    v26 = "R";
    v27 = 1;
LABEL_73:
    swift::Demangle::CharVector::append(v6 + 1591, v26, v27, v24);
    goto LABEL_74;
  }

  if (v30 != -1)
  {
    v26 = "RP";
    goto LABEL_72;
  }

  v25 = "RQ";
LABEL_65:
  this = swift::Demangle::CharVector::append(v6 + 1591, v25, 2uLL, v24);
LABEL_74:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

_DWORD *anonymous namespace::Remangler::mangleDependentGenericParamType@<X0>(_DWORD *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 18);
  v5 = a2;
  if ((v4 - 1) >= 2)
  {
    v5 = *a2;
  }

  if (!**v5)
  {
    v6 = a2;
    if (v4 == 5)
    {
      v6 = *a2;
    }

    if (!**(v6 + 1))
    {
      v25 = this[3184];
      v26 = this[3185];
      v27 = *(this + 1591);
      if (v25 < v26)
      {
LABEL_45:
        this[3184] = v25 + 1;
        v27[v25] = 120;
        goto LABEL_27;
      }

      v28 = *(this + 1593);
      v29 = v28[1];
      if (&v27[v26] == v29)
      {
        v30 = v28[2];
        if ((v29 + 1) <= v30)
        {
          v28[1] = v29 + 1;
          LODWORD(v31) = 1;
LABEL_44:
          this[3185] = v26 + v31;
          goto LABEL_45;
        }
      }

      else
      {
        v30 = v28[2];
      }

      if ((2 * v26) <= 4)
      {
        v31 = 4;
      }

      else
      {
        v31 = (2 * v26);
      }

      v32 = v31 + v26;
      if (!v29 || &v29[v32] > v30)
      {
        v33 = 2 * v28[4];
        if (v33 <= v32 + 1)
        {
          v33 = v32 + 1;
        }

        v28[4] = v33;
        v34 = v33 + 8;
        v35 = this;
        v36 = malloc_type_malloc(v33 + 8, 0x2004093837F09uLL);
        this = v35;
        v37 = v36 + v34;
        *v36 = v28[3];
        v29 = (v36 + 1);
        v28[2] = v37;
        v28[3] = v36;
      }

      v28[1] = &v29[v32];
      if (v26)
      {
        v38 = this;
        memcpy(v29, *(this + 1591), v26);
        this = v38;
      }

      *(this + 1591) = v29;
      LODWORD(v26) = this[3185];
      v27 = v29;
      v25 = this[3184];
      goto LABEL_44;
    }
  }

  v7 = this[3184];
  v8 = this[3185];
  v9 = *(this + 1591);
  if (v7 >= v8)
  {
    v10 = *(this + 1593);
    v11 = v10[1];
    if (&v9[v8] == v11)
    {
      v12 = v10[2];
      if ((v11 + 1) <= v12)
      {
        v10[1] = v11 + 1;
        LODWORD(v13) = 1;
LABEL_25:
        this[3185] = v8 + v13;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = v10[2];
    }

    if ((2 * v8) <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = (2 * v8);
    }

    v14 = v13 + v8;
    if (v11)
    {
      v15 = &v11[v13 + v8] > v12;
    }

    else
    {
      v15 = 1;
    }

    v9 = v10[1];
    if (v15)
    {
      v16 = 2 * v10[4];
      if (v16 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      v10[4] = v16;
      v17 = v16 + 8;
      v18 = this;
      v19 = a2;
      v20 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      a2 = v19;
      v21 = v20;
      this = v18;
      v22 = v21 + v17;
      *v21 = v10[3];
      v9 = (v21 + 1);
      v10[2] = v22;
      v10[3] = v21;
    }

    v10[1] = &v9[v14];
    if (v8)
    {
      v23 = this;
      v24 = a2;
      memcpy(v9, *(this + 1591), v8);
      a2 = v24;
      this = v23;
    }

    *(this + 1591) = v9;
    LODWORD(v8) = this[3185];
    v7 = this[3184];
    goto LABEL_25;
  }

LABEL_26:
  this[3184] = v7 + 1;
  v9[v7] = 113;
LABEL_27:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericSameTypeRequirement@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 != 2)
  {
    if (v7 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v8 = *a2;
  }

  v9 = a3;
  if (*a4)
  {
    return result;
  }

  v7 = *(a2 + 18);
  a3 = v9;
LABEL_8:
  v11 = a2;
  if ((v7 - 1) < 2)
  {
LABEL_12:
    v12 = *v11;
    goto LABEL_14;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v11 = *a2;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_14:
  if (v16)
  {
    *a4 = v16;
    *(a4 + 16) = v17;
    return result;
  }

  v13 = v19;
  if ((v18 & 0x80000000) == 0 && !v19)
  {
    *a4 = 1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1189;
    return result;
  }

  v14 = this[1593];
  if (v18 == 1)
  {
    v15 = "Rt";
    goto LABEL_26;
  }

  if (!v18)
  {
    v15 = "Rs";
LABEL_26:
    swift::Demangle::CharVector::append(this + 1591, v15, 2uLL, v14);
    goto LABEL_27;
  }

  if (v18 != -1)
  {
    v15 = "RT";
    goto LABEL_26;
  }

  result = swift::Demangle::CharVector::append(this + 1591, "RS", 2uLL, v14);
LABEL_27:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericSameShapeRequirement@<X0>(char **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 18);
  v8 = a2;
  if (v7 != 2)
  {
    if (v7 != 5 || *(a2 + 2) < 2u)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_8;
    }

    v8 = *a2;
  }

  v9 = a3;
  if (*a4)
  {
    return result;
  }

  v7 = *(a2 + 18);
  a3 = v9;
LABEL_8:
  v11 = a2;
  if ((v7 - 1) < 2)
  {
LABEL_12:
    v12 = *v11;
    goto LABEL_14;
  }

  if (v7 == 5 && *(a2 + 2))
  {
    v11 = *a2;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_14:
  if (v14)
  {
    *a4 = v14;
    *(a4 + 16) = v15;
  }

  else
  {
    v13 = v17;
    if (v16 < 0 || v17)
    {
      if (v16)
      {
        *a4 = 1;
      }

      else
      {
        swift::Demangle::CharVector::append(this + 1591, "Rh", 2uLL, this[1593]);
        *a4 = 0;
      }

      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
    }

    else
    {
      *a4 = 1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1217;
    }
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericLayoutRequirement@<X0>(char **this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v8 == 5 && *(a2 + 2))
  {
    v9 = *a2;
LABEL_5:
    v10 = *v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  if (v33)
  {
    *a4 = v33;
    a4[2] = v34;
    return result;
  }

  v12 = v36;
  if ((v35 & 0x80000000) == 0 && !v36)
  {
    *a4 = 1;
    a4[1] = a2;
    *(a4 + 4) = 1237;
    return result;
  }

  v13 = this[1593];
  if (v35 == -1)
  {
    result = swift::Demangle::CharVector::append(this + 1591, "RL", 2uLL, v13);
  }

  else
  {
    v14 = "RM";
    if (v35 == 1)
    {
      v14 = "Rm";
    }

    if (v35)
    {
      v15 = v14;
    }

    else
    {
      v15 = "Rl";
    }

    swift::Demangle::CharVector::append(this + 1591, v15, 2uLL, v13);
  }

  if (*(a2 + 18) != 5)
  {
    v18 = a2[1];
    if (*(v18 + 8) == 103)
    {
      v19 = *(v18 + 1);
      v16 = a2;
      if (v19 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_29:
    *a4 = 1;
    a4[1] = a2;
    *(a4 + 4) = 1248;
    return result;
  }

  v16 = *a2;
  v17 = *(*a2 + 1);
  if (*(v17 + 16) != 103)
  {
    goto LABEL_29;
  }

  if (*(v17 + 8) != 1)
  {
LABEL_23:
    *a4 = 1;
    a4[1] = a2;
    *(a4 + 4) = 1249;
    return result;
  }

LABEL_26:
  v20 = ***(v16 + 1);
  v21 = *(this + 3184);
  v22 = *(this + 3185);
  v23 = this[1591];
  if (v21 >= v22)
  {
    v24 = this[1593];
    v25 = *(v24 + 1);
    if (&v23[v22] == v25)
    {
      v26 = *(v24 + 2);
      if ((v25 + 1) <= v26)
      {
        *(v24 + 1) = v25 + 1;
        LODWORD(v27) = 1;
LABEL_42:
        *(this + 3185) = v22 + v27;
        goto LABEL_43;
      }
    }

    else
    {
      v26 = *(v24 + 2);
    }

    v32 = v20;
    if ((2 * v22) <= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = (2 * v22);
    }

    v28 = v27 + v22;
    if (!v25 || &v25[v28] > v26)
    {
      v29 = 2 * *(v24 + 4);
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      *(v24 + 4) = v29;
      v30 = v29 + 8;
      result = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
      v31 = result + v30;
      *result = *(v24 + 3);
      v25 = (result + 1);
      *(v24 + 2) = v31;
      *(v24 + 3) = result;
    }

    *(v24 + 1) = &v25[v28];
    if (v22)
    {
      result = memcpy(v25, this[1591], v22);
    }

    this[1591] = v25;
    LODWORD(v22) = *(this + 3185);
    v23 = v25;
    v21 = *(this + 3184);
    v20 = v32;
    goto LABEL_42;
  }

LABEL_43:
  *(this + 3184) = v21 + 1;
  v23[v21] = v20;
  {
    *a4 = 0;
    a4[1] = 0;
    *(a4 + 4) = 0;
  }

  return result;
}

_DWORD *anonymous namespace::Remangler::mangleDependentGenericParamPackMarker@<X0>(_DWORD *this@<X0>, swift::Demangle::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if (v3 != 1)
  {
    if (v3 != 5 || *(a2 + 2) != 1)
    {
      v11 = 1292;
      v12 = 1;
      goto LABEL_23;
    }

    v4 = *a2;
  }

  if (*(*v4 + 16) == 243)
  {
    v5 = a3;
    v6 = this;
    v7 = a2;
    swift::Demangle::CharVector::append(this + 1591, "Rv", 2uLL, *(this + 1593));
    v8 = v7;
    v9 = *(v7 + 18);
    if ((v9 - 1) < 2)
    {
      v10 = v6;
LABEL_13:
      v13 = *v8;
      goto LABEL_16;
    }

    if (v9 == 5)
    {
      v10 = v6;
      if (*(v7 + 2))
      {
        v8 = *v7;
        goto LABEL_13;
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
      v10 = v6;
    }

LABEL_16:
    v14 = *(v13 + 18);
    if ((v14 - 1) >= 2)
    {
      if (v14 != 5 || !*(v13 + 2))
      {
        v15 = 0;
        goto LABEL_22;
      }

      v13 = *v13;
    }

    v15 = *v13;
LABEL_22:
    v12 = 0;
    a2 = 0;
    v11 = 0;
    a3 = v5;
    goto LABEL_23;
  }

  v11 = 1293;
  v12 = 1;
LABEL_23:
  *a3 = v12;
  *(a3 + 8) = a2;
  *(a3 + 16) = v11;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericSignature@<X0>(uint64_t *this@<X0>, swift::Demangle::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    v8 = *(a2 + 2);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_31:
    v9 = 0;
    goto LABEL_33;
  }

  if (v8 != 2)
  {
    goto LABEL_31;
  }

  v8 = 2;
LABEL_6:
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    v11 = *(a2 + 18);
    if ((v11 - 1) >= 2)
    {
      v12 = 0;
      v13 = *a2;
    }

    else
    {
      v12 = 1;
      v13 = a2;
    }

    if (*(*(v13 + i) + 16) == 38)
    {
      v9 = i + 1;
      continue;
    }

    if (v11 == 1)
    {
      goto LABEL_17;
    }

    if (v11 != 5)
    {
      if (v11 != 2)
      {
        goto LABEL_23;
      }

      v11 = 2;
LABEL_17:
      if (v11 <= i)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (*(a2 + 2) <= i)
    {
LABEL_23:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      continue;
    }

LABEL_18:
    v14 = a2;
    if ((v12 & 1) == 0)
    {
      v14 = *a2;
    }

    if (*a4)
    {
      return this;
    }
  }

  if (v9 != 1)
  {
    goto LABEL_33;
  }

  v15 = a2;
  if (*(a2 + 18) - 1 >= 2)
  {
    v15 = *a2;
  }

  if (**v15 != 1)
  {
    v9 = 1;
LABEL_33:
    v16 = (v6 + 12736);
    v23 = *(v6 + 12736);
    v24 = *(v6 + 12740);
    v25 = *(v6 + 12728);
    if (v23 < v24)
    {
      goto LABEL_49;
    }

    v26 = *(v6 + 12744);
    v27 = v26[1];
    if (&v25[v24] == v27)
    {
      v28 = v26[2];
      if ((v27 + 1) <= v28)
      {
        v26[1] = v27 + 1;
        LODWORD(v29) = 1;
LABEL_48:
        *(v6 + 12740) = v24 + v29;
LABEL_49:
        *v16 = v23 + 1;
        v25[v23] = 114;
        if (v9)
        {
          v34 = 0;
          v74 = a4;
          do
          {
            v36 = a2;
            if (*(a2 + 18) - 1 >= 2)
            {
              v36 = *a2;
            }

            v37 = **(v36 + v34);
            if (v37)
            {
              if (v37 != 1)
              {
                this = swift::Demangle::CharVector::append((v6 + 12728), v37 - 2, *(v6 + 12744));
              }

              v38 = *(v6 + 12736);
              v39 = *(v6 + 12740);
              v40 = *(v6 + 12728);
              if (v38 >= v39)
              {
                v41 = *(v6 + 12744);
                v42 = v41[1];
                if (&v40[v39] != v42)
                {
                  v43 = v41[2];
                  goto LABEL_66;
                }

                v43 = v41[2];
                if ((v42 + 1) <= v43)
                {
                  v41[1] = v42 + 1;
                  LODWORD(v48) = 1;
                  v42 = v40;
                }

                else
                {
LABEL_66:
                  if ((2 * v39) <= 4)
                  {
                    v48 = 4;
                  }

                  else
                  {
                    v48 = (2 * v39);
                  }

                  v49 = v48 + v39;
                  if (!v42 || &v42[v49] > v43)
                  {
                    v50 = 2 * v41[4];
                    if (v50 <= v49 + 1)
                    {
                      v50 = v49 + 1;
                    }

                    v41[4] = v50;
                    v51 = v50 + 8;
                    this = malloc_type_malloc(v50 + 8, 0x2004093837F09uLL);
                    *this = v41[3];
                    v42 = (this + 1);
                    v41[2] = this + v51;
                    v41[3] = this;
                  }

                  v41[1] = &v42[v49];
                  if (v39)
                  {
                    this = memcpy(v42, *(v6 + 12728), v39);
                  }

                  *(v6 + 12728) = v42;
                  LODWORD(v39) = *(v6 + 12740);
                  v38 = *(v6 + 12736);
                  v16 = (v6 + 12736);
                }

                v52 = v39 + v48;
                v35 = 95;
                v40 = v42;
                a4 = v74;
LABEL_94:
                *(v6 + 12740) = v52;
                goto LABEL_52;
              }

              v35 = 95;
            }

            else
            {
              v38 = *(v6 + 12736);
              v44 = *(v6 + 12740);
              v40 = *(v6 + 12728);
              if (v38 >= v44)
              {
                v45 = *(v6 + 12744);
                v46 = v45[1];
                if (&v40[v44] != v46)
                {
                  v47 = v45[2];
                  goto LABEL_79;
                }

                v47 = v45[2];
                if ((v46 + 1) <= v47)
                {
                  v45[1] = v46 + 1;
                  LODWORD(v53) = 1;
                }

                else
                {
LABEL_79:
                  if ((2 * v44) <= 4)
                  {
                    v53 = 4;
                  }

                  else
                  {
                    v53 = (2 * v44);
                  }

                  v54 = v53 + v44;
                  if (v46)
                  {
                    v55 = &v46[v53 + v44] > v47;
                  }

                  else
                  {
                    v55 = 1;
                  }

                  v40 = v45[1];
                  if (v55)
                  {
                    v56 = 2 * v45[4];
                    if (v56 <= v54 + 1)
                    {
                      v56 = v54 + 1;
                    }

                    v45[4] = v56;
                    v57 = v56 + 8;
                    this = malloc_type_malloc(v56 + 8, 0x2004093837F09uLL);
                    v58 = this + v57;
                    *this = v45[3];
                    v40 = (this + 1);
                    v45[2] = v58;
                    v45[3] = this;
                  }

                  v45[1] = &v40[v54];
                  if (v44)
                  {
                    this = memcpy(v40, *(v6 + 12728), v44);
                  }

                  *(v6 + 12728) = v40;
                  LODWORD(v44) = *(v6 + 12740);
                  v38 = *(v6 + 12736);
                  v16 = (v6 + 12736);
                }

                v52 = v44 + v53;
                v35 = 122;
                goto LABEL_94;
              }

              v35 = 122;
            }

LABEL_52:
            *v16 = v38 + 1;
            v40[v38] = v35;
            ++v34;
          }

          while (v9 != v34);
        }

        v17 = *(v6 + 12736);
        v59 = *(v6 + 12740);
        v19 = *(v6 + 12728);
        if (v17 < v59)
        {
          goto LABEL_114;
        }

        v60 = *(v6 + 12744);
        v61 = v60[1];
        if (&v19[v59] == v61)
        {
          v62 = v60[2];
          if ((v61 + 1) <= v62)
          {
            v60[1] = v61 + 1;
            LODWORD(v63) = 1;
LABEL_112:
            v68 = v59 + v63;
            goto LABEL_113;
          }
        }

        else
        {
          v62 = v60[2];
        }

        if ((2 * v59) <= 4)
        {
          v63 = 4;
        }

        else
        {
          v63 = (2 * v59);
        }

        v64 = v63 + v59;
        if (!v61 || &v61[v64] > v62)
        {
          v65 = 2 * v60[4];
          if (v65 <= v64 + 1)
          {
            v65 = v64 + 1;
          }

          v60[4] = v65;
          v66 = v65 + 8;
          this = malloc_type_malloc(v65 + 8, 0x2004093837F09uLL);
          v67 = this + v66;
          *this = v60[3];
          v61 = (this + 1);
          v60[2] = v67;
          v60[3] = this;
        }

        v60[1] = &v61[v64];
        if (v59)
        {
          this = memcpy(v61, *(v6 + 12728), v59);
        }

        *(v6 + 12728) = v61;
        LODWORD(v59) = *(v6 + 12740);
        v19 = v61;
        v17 = *(v6 + 12736);
        v16 = (v6 + 12736);
        goto LABEL_112;
      }
    }

    else
    {
      v28 = v26[2];
    }

    if ((2 * v24) <= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = (2 * v24);
    }

    v30 = v29 + v24;
    if (!v27 || &v27[v30] > v28)
    {
      v31 = 2 * v26[4];
      if (v31 <= v30 + 1)
      {
        v31 = v30 + 1;
      }

      v26[4] = v31;
      v32 = v31 + 8;
      this = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
      v33 = this + v32;
      *this = v26[3];
      v27 = (this + 1);
      v26[2] = v33;
      v26[3] = this;
    }

    v26[1] = &v27[v30];
    if (v24)
    {
      this = memcpy(v27, *(v6 + 12728), v24);
    }

    *(v6 + 12728) = v27;
    LODWORD(v24) = *(v6 + 12740);
    v25 = v27;
    v23 = *(v6 + 12736);
    goto LABEL_48;
  }

  v16 = (v6 + 12736);
  v17 = *(v6 + 12736);
  v18 = *(v6 + 12740);
  v19 = *(v6 + 12728);
  if (v17 >= v18)
  {
    v20 = *(v6 + 12744);
    v21 = v20[1];
    if (&v19[v18] != v21)
    {
      v22 = v20[2];
      goto LABEL_118;
    }

    v22 = v20[2];
    if ((v21 + 1) <= v22)
    {
      v20[1] = v21 + 1;
      LODWORD(v69) = 1;
    }

    else
    {
LABEL_118:
      if ((2 * v18) <= 4)
      {
        v69 = 4;
      }

      else
      {
        v69 = (2 * v18);
      }

      v70 = v69 + v18;
      if (!v21 || &v21[v70] > v22)
      {
        v71 = 2 * v20[4];
        if (v71 <= v70 + 1)
        {
          v71 = v70 + 1;
        }

        v20[4] = v71;
        v72 = v71 + 8;
        this = malloc_type_malloc(v71 + 8, 0x2004093837F09uLL);
        v73 = this + v72;
        *this = v20[3];
        v21 = (this + 1);
        v20[2] = v73;
        v20[3] = this;
      }

      v20[1] = &v21[v70];
      if (v18)
      {
        this = memcpy(v21, *(v6 + 12728), v18);
      }

      *(v6 + 12728) = v21;
      LODWORD(v18) = *(v6 + 12740);
      v19 = v21;
      v17 = *(v6 + 12736);
    }

    v68 = v18 + v69;
LABEL_113:
    *(v6 + 12740) = v68;
  }

LABEL_114:
  *v16 = v17 + 1;
  v19[v17] = 108;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

uint64_t *anonymous namespace::Remangler::mangleDependentGenericType@<X0>(uint64_t *this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = this;
  v8 = *(a2 + 18);
  switch(v8)
  {
    case 1:
      goto LABEL_6;
    case 5:
      v8 = *(a2 + 2);
      if (v8)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      v8 = 2;
LABEL_6:
      for (i = v8 - 1; i != -1; --i)
      {
        v10 = *(a2 + 18);
        v11 = v10 - 1;
        if (v10 != 1)
        {
          if (v10 == 5)
          {
            v10 = *(a2 + 2);
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_7;
            }

            v10 = 2;
          }
        }

        if (v10 <= i)
        {
LABEL_7:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          continue;
        }

        v12 = a2;
        if (v11 >= 2)
        {
          v12 = *a2;
        }

        if (*a4)
        {
          return this;
        }
      }

      break;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v13 = *(v6 + 12736);
  v14 = *(v6 + 12740);
  v15 = *(v6 + 12728);
  if (v13 >= v14)
  {
    v16 = *(v6 + 12744);
    v17 = v16[1];
    if (&v15[v14] == v17)
    {
      v18 = v16[2];
      if ((v17 + 1) <= v18)
      {
        v16[1] = v17 + 1;
        LODWORD(v19) = 1;
LABEL_34:
        *(v6 + 12740) = v14 + v19;
        goto LABEL_35;
      }
    }

    else
    {
      v18 = v16[2];
    }

    if ((2 * v14) <= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = (2 * v14);
    }

    v20 = v19 + v14;
    if (!v17 || &v17[v20] > v18)
    {
      v21 = 2 * v16[4];
      if (v21 <= v20 + 1)
      {
        v21 = v20 + 1;
      }

      v16[4] = v21;
      v22 = v21 + 8;
      this = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
      v23 = this + v22;
      *this = v16[3];
      v17 = (this + 1);
      v16[2] = v23;
      v16[3] = this;
    }

    v16[1] = &v17[v20];
    if (v14)
    {
      this = memcpy(v17, *(v6 + 12728), v14);
    }

    *(v6 + 12728) = v17;
    LODWORD(v14) = *(v6 + 12740);
    v15 = v17;
    v13 = *(v6 + 12736);
    goto LABEL_34;
  }

LABEL_35:
  *(v6 + 12736) = v13 + 1;
  v15[v13] = 117;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return this;
}

void *anonymous namespace::Remangler::mangleDependentMemberType@<X0>(const void **this@<X0>, swift::Demangle::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (v52)
  {
    *a4 = v52;
    *(a4 + 16) = v53;
    return result;
  }

  if (v54 == -1)
  {
    goto LABEL_80;
  }

  v8 = v55;
  if (v54 != 1)
  {
    if (!v54)
    {
      *a4 = 12;
      *(a4 + 8) = a2;
      *(a4 + 16) = 1316;
      return result;
    }

    v15 = *(this + 3184);
    v16 = *(this + 3185);
    v17 = this[1591];
    if (v15 < v16)
    {
LABEL_44:
      *(this + 3184) = v15 + 1;
      v17[v15] = 81;
      if (v8)
      {
        goto LABEL_80;
      }

      v26 = *(this + 3184);
      v37 = *(this + 3185);
      v28 = this[1591];
      if (v26 < v37)
      {
        goto LABEL_78;
      }

      v38 = this[1593];
      v39 = v38[1];
      if (&v28[v37] == v39)
      {
        v40 = v38[2];
        if ((v39 + 1) <= v40)
        {
          v38[1] = v39 + 1;
          LODWORD(v47) = 1;
LABEL_77:
          *(this + 3185) = v37 + v47;
LABEL_78:
          *(this + 3184) = v26 + 1;
          v46 = 88;
          goto LABEL_79;
        }
      }

      else
      {
        v40 = v38[2];
      }

      if ((2 * v37) <= 4)
      {
        v47 = 4;
      }

      else
      {
        v47 = (2 * v37);
      }

      v48 = v47 + v37;
      if (!v39 || &v39[v48] > v40)
      {
        v49 = 2 * v38[4];
        if (v49 <= v48 + 1)
        {
          v49 = v48 + 1;
        }

        v38[4] = v49;
        v50 = v49 + 8;
        result = malloc_type_malloc(v49 + 8, 0x2004093837F09uLL);
        v51 = result + v50;
        *result = v38[3];
        v39 = (result + 1);
        v38[2] = v51;
        v38[3] = result;
      }

      v38[1] = &v39[v48];
      if (v37)
      {
        result = memcpy(v39, this[1591], v37);
      }

      this[1591] = v39;
      LODWORD(v37) = *(this + 3185);
      v28 = v39;
      v26 = *(this + 3184);
      goto LABEL_77;
    }

    v18 = this[1593];
    v19 = v18[1];
    if (&v17[v16] == v19)
    {
      v20 = v18[2];
      if ((v19 + 1) <= v20)
      {
        v18[1] = v19 + 1;
        LODWORD(v32) = 1;
LABEL_43:
        *(this + 3185) = v16 + v32;
        goto LABEL_44;
      }
    }

    else
    {
      v20 = v18[2];
    }

    if ((2 * v16) <= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = (2 * v16);
    }

    v33 = v32 + v16;
    if (!v19 || &v19[v33] > v20)
    {
      v34 = 2 * v18[4];
      if (v34 <= v33 + 1)
      {
        v34 = v33 + 1;
      }

      v18[4] = v34;
      v35 = v34 + 8;
      result = malloc_type_malloc(v34 + 8, 0x2004093837F09uLL);
      v36 = result + v35;
      *result = v18[3];
      v19 = (result + 1);
      v18[2] = v36;
      v18[3] = result;
    }

    v18[1] = &v19[v33];
    if (v16)
    {
      result = memcpy(v19, this[1591], v16);
    }

    this[1591] = v19;
    LODWORD(v16) = *(this + 3185);
    v17 = v19;
    v15 = *(this + 3184);
    goto LABEL_43;
  }

  v9 = *(this + 3184);
  v10 = *(this + 3185);
  v11 = this[1591];
  if (v9 >= v10)
  {
    v12 = this[1593];
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v21) = 1;
LABEL_25:
        *(this + 3185) = v10 + v21;
        goto LABEL_26;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = (2 * v10);
    }

    v22 = v21 + v10;
    if (!v13 || &v13[v22] > v14)
    {
      v23 = 2 * v12[4];
      if (v23 <= v22 + 1)
      {
        v23 = v22 + 1;
      }

      v12[4] = v23;
      v24 = v23 + 8;
      result = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
      v25 = result + v24;
      *result = v12[3];
      v13 = (result + 1);
      v12[2] = v25;
      v12[3] = result;
    }

    v12[1] = &v13[v22];
    if (v10)
    {
      result = memcpy(v13, this[1591], v10);
    }

    this[1591] = v13;
    LODWORD(v10) = *(this + 3185);
    v11 = v13;
    v9 = *(this + 3184);
    goto LABEL_25;
  }

LABEL_26:
  *(this + 3184) = v9 + 1;
  v11[v9] = 81;
  if (!v8)
  {
    v26 = *(this + 3184);
    v27 = *(this + 3185);
    v28 = this[1591];
    if (v26 < v27)
    {
LABEL_64:
      *(this + 3184) = v26 + 1;
      v46 = 120;
LABEL_79:
      v28[v26] = v46;
      goto LABEL_80;
    }

    v29 = this[1593];
    v30 = v29[1];
    if (&v28[v27] == v30)
    {
      v31 = v29[2];
      if ((v30 + 1) <= v31)
      {
        v29[1] = v30 + 1;
        LODWORD(v41) = 1;
LABEL_63:
        *(this + 3185) = v27 + v41;
        goto LABEL_64;
      }
    }

    else
    {
      v31 = v29[2];
    }

    if ((2 * v27) <= 4)
    {
      v41 = 4;
    }

    else
    {
      v41 = (2 * v27);
    }

    v42 = v41 + v27;
    if (!v30 || &v30[v42] > v31)
    {
      v43 = 2 * v29[4];
      if (v43 <= v42 + 1)
      {
        v43 = v42 + 1;
      }

      v29[4] = v43;
      v44 = v43 + 8;
      result = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
      v45 = result + v44;
      *result = v29[3];
      v30 = (result + 1);
      v29[2] = v45;
      v29[3] = result;
    }

    v29[1] = &v30[v42];
    if (v27)
    {
      result = memcpy(v30, this[1591], v27);
    }

    this[1591] = v30;
    LODWORD(v27) = *(this + 3185);
    v28 = v30;
    v26 = *(this + 3184);
    goto LABEL_63;
  }

LABEL_80:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}