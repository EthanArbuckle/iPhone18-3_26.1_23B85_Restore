std::string *swift::Demangle::__runtime::NodePrinter::printChildren(std::string *this, swift::Demangle::__runtime::Node **a2, int a3, const char *a4)
{
  if (!a2)
  {
    return this;
  }

  v6 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_10:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_17;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      break;
    case 2:
      v10 = a2 + 2;
      break;
    case 5:
      v9 = *a2;
      goto LABEL_10;
    default:
      v10 = 0;
      break;
  }

LABEL_17:
  while (v8 != v10)
  {
    v11 = *v8++;
    this = swift::Demangle::__runtime::NodePrinter::print(v6, v11, a3 + 1, 0);
    if (a4)
    {
      if (v8 != v10)
      {
        v12 = strlen(a4);
        this = std::string::append((v6 + 8), a4, v12);
      }
    }
  }

  return this;
}

uint64_t swift::Demangle::__runtime::NodePrinter::getFirstChildOfKind(uint64_t a1, uint64_t *a2, int a3)
{
  if (a2)
  {
    v3 = *(a2 + 18);
    v4 = a2;
    if ((v3 - 1) >= 2)
    {
      if (v3 == 5)
      {
        v5 = *a2;
        v4 = *a2;
LABEL_10:
        v6 = (v5 + 8 * *(a2 + 2));
        goto LABEL_15;
      }

      v4 = 0;
    }

    switch(v3)
    {
      case 1:
        v6 = a2 + 1;
        goto LABEL_15;
      case 2:
        v6 = a2 + 2;
        goto LABEL_15;
      case 5:
        v5 = *a2;
        goto LABEL_10;
    }

    v6 = 0;
LABEL_15:
    while (v4 != v6)
    {
      result = *v4;
      if (*v4 && *(result + 16) == a3)
      {
        return result;
      }

      ++v4;
    }
  }

  return 0;
}

std::string *swift::Demangle::__runtime::NodePrinter::printBoundGenericNoSugar(std::string *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v4 = this;
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    if (v5 != 5 || *(a2 + 2) < 2u)
    {
      return this;
    }

    a2 = *a2;
  }

  v6 = *(a2 + 1);
  swift::Demangle::__runtime::NodePrinter::print(this, *a2, a3 + 1, 0);
  std::string::append(&v4->__r_.__value_.__r.__words[1], "<", 1uLL);
  if (v6)
  {
    v7 = *(v6 + 18);
    v8 = v6;
    if ((v7 - 1) >= 2)
    {
      if (v7 == 5)
      {
        v9 = *v6;
        v8 = *v6;
        goto LABEL_15;
      }

      v8 = 0;
    }

    switch(v7)
    {
      case 1:
        v10 = (v6 + 8);
        if (v8 == (v6 + 8))
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      case 2:
        v10 = (v6 + 16);
        if (v8 == (v6 + 16))
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      case 5:
        v9 = *v6;
LABEL_15:
        v10 = (v9 + 8 * *(v6 + 8));
        if (v8 == v10)
        {
          goto LABEL_24;
        }

LABEL_22:
        v12 = *v8;
        v11 = v8 + 1;
        swift::Demangle::__runtime::NodePrinter::print(v4, v12, a3 + 1, 0);
        while (v11 != v10)
        {
          std::string::append(&v4->__r_.__value_.__r.__words[1], ", ", 2uLL);
          v13 = *v11++;
          swift::Demangle::__runtime::NodePrinter::print(v4, v13, a3 + 1, 0);
        }

        goto LABEL_24;
    }

    v10 = 0;
    if (v8)
    {
      goto LABEL_22;
    }
  }

LABEL_24:

  return std::string::append(&v4->__r_.__value_.__r.__words[1], ">", 1uLL);
}

std::string *swift::Demangle::__runtime::NodePrinter::printOptionalIndex(std::string *this, swift::Demangle::__runtime::Node *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a2 + 18) == 4)
  {
    v3 = this;
    std::string::append(&this->__r_.__value_.__r.__words[1], "#", 1uLL);
    snprintf(__str, 0x20uLL, "%llu", *a2);
    std::string::append(&v3->__r_.__value_.__r.__words[1], __str);
    return std::string::append(&v3->__r_.__value_.__r.__words[1], " ", 1uLL);
  }

  return this;
}

uint64_t swift::Demangle::__runtime::NodePrinter::printContext(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2)
{
  if (*(this + 33) != 1)
  {
    return 0;
  }

  if (*(a2 + 8) != 163)
  {
    return 1;
  }

  v2 = *a2;
  v3 = *(a2 + 1);
  if (v3 == 3)
  {
    if (*v2 == 24415 && v2[2] == 67)
    {
      LOBYTE(v8) = *(this + 50);
      return v8 & 1;
    }

    if (*(this + 8) != 3)
    {
      goto LABEL_27;
    }
  }

  else if (v3 == 5)
  {
    if (*v2 == 1718187859 && v2[4] == 116)
    {
      LOBYTE(v8) = *(this + 49);
      return v8 & 1;
    }

    if (*(this + 8) != 5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v3 != *(this + 8))
    {
LABEL_22:
      if (v3 >= 0xC && *v2 == 0x655F62646C6C5F5FLL && *(v2 + 2) == 1601335416)
      {
        LOBYTE(v8) = *(this + 48);
        return v8 & 1;
      }

LABEL_27:
      LOBYTE(v8) = 1;
      return v8 & 1;
    }

    if (!v3)
    {
      LOBYTE(v8) = 0;
      return v8 & 1;
    }
  }

  v7 = this;
  v8 = memcmp(v2, *(this + 7), v3);
  this = v7;
  if (v8)
  {
    goto LABEL_22;
  }

  return v8 & 1;
}

BOOL swift::Demangle::__runtime::NodePrinter::isSimpleType(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2)
{
  while (2)
  {
    v2 = a2;
    result = 0;
    switch(*(a2 + 8))
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 6:
      case 7:
      case 8:
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
      case 0x17:
      case 0x18:
      case 0x1A:
      case 0x1B:
      case 0x1C:
      case 0x1D:
      case 0x1E:
      case 0x1F:
      case 0x20:
      case 0x21:
      case 0x22:
      case 0x23:
      case 0x24:
      case 0x25:
      case 0x26:
      case 0x28:
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2F:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:
      case 0x3A:
      case 0x3C:
      case 0x3D:
      case 0x3E:
      case 0x40:
      case 0x42:
      case 0x43:
      case 0x44:
      case 0x45:
      case 0x46:
      case 0x48:
      case 0x49:
      case 0x4A:
      case 0x4B:
      case 0x4C:
      case 0x4D:
      case 0x4E:
      case 0x4F:
      case 0x50:
      case 0x51:
      case 0x52:
      case 0x53:
      case 0x54:
      case 0x55:
      case 0x58:
      case 0x59:
      case 0x5A:
      case 0x5B:
      case 0x5C:
      case 0x5D:
      case 0x5E:
      case 0x5F:
      case 0x60:
      case 0x61:
      case 0x62:
      case 0x63:
      case 0x64:
      case 0x65:
      case 0x66:
      case 0x67:
      case 0x68:
      case 0x69:
      case 0x6A:
      case 0x6B:
      case 0x6C:
      case 0x6D:
      case 0x6E:
      case 0x6F:
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
      case 0x74:
      case 0x75:
      case 0x76:
      case 0x77:
      case 0x78:
      case 0x79:
      case 0x7A:
      case 0x7B:
      case 0x7C:
      case 0x7D:
      case 0x7E:
      case 0x7F:
      case 0x80:
      case 0x81:
      case 0x82:
      case 0x83:
      case 0x84:
      case 0x85:
      case 0x86:
      case 0x87:
      case 0x88:
      case 0x89:
      case 0x8A:
      case 0x8B:
      case 0x8C:
      case 0x8D:
      case 0x8E:
      case 0x8F:
      case 0x90:
      case 0x91:
      case 0x92:
      case 0x93:
      case 0x94:
      case 0x95:
      case 0x96:
      case 0x97:
      case 0x98:
      case 0x99:
      case 0x9C:
      case 0x9D:
      case 0x9E:
      case 0x9F:
      case 0xA0:
      case 0xA1:
      case 0xA2:
      case 0xA4:
      case 0xA5:
      case 0xA6:
      case 0xA7:
      case 0xA8:
      case 0xA9:
      case 0xAA:
      case 0xAB:
      case 0xAC:
      case 0xAD:
      case 0xAE:
      case 0xAF:
      case 0xB0:
      case 0xB2:
      case 0xB3:
      case 0xB4:
      case 0xB5:
      case 0xB6:
      case 0xB7:
      case 0xB8:
      case 0xB9:
      case 0xBA:
      case 0xBB:
      case 0xBC:
      case 0xBD:
      case 0xC0:
      case 0xC1:
      case 0xC2:
      case 0xC3:
      case 0xC4:
      case 0xC5:
      case 0xC6:
      case 0xC7:
      case 0xC9:
      case 0xCB:
      case 0xCC:
      case 0xCD:
      case 0xCE:
      case 0xCF:
      case 0xD0:
      case 0xD1:
      case 0xD2:
      case 0xD3:
      case 0xD4:
      case 0xD5:
      case 0xD6:
      case 0xD7:
      case 0xD8:
      case 0xD9:
      case 0xDB:
      case 0xDC:
      case 0xDF:
      case 0xE0:
      case 0xE1:
      case 0xE2:
      case 0xE3:
      case 0xE4:
      case 0xE5:
      case 0xE7:
      case 0xE8:
      case 0xE9:
      case 0xEB:
      case 0xF0:
      case 0xF1:
      case 0xF2:
      case 0xF7:
      case 0xF8:
      case 0xF9:
      case 0xFA:
      case 0xFB:
      case 0xFC:
      case 0xFD:
      case 0xFE:
      case 0xFF:
      case 0x100:
      case 0x101:
      case 0x102:
      case 0x103:
      case 0x104:
      case 0x105:
      case 0x106:
      case 0x107:
      case 0x108:
      case 0x109:
      case 0x10A:
      case 0x10B:
      case 0x10C:
      case 0x10D:
      case 0x10E:
      case 0x10F:
      case 0x110:
      case 0x111:
      case 0x112:
      case 0x113:
      case 0x114:
      case 0x115:
      case 0x116:
      case 0x117:
      case 0x118:
      case 0x119:
      case 0x11A:
      case 0x11B:
      case 0x11C:
      case 0x11D:
      case 0x11E:
      case 0x11F:
      case 0x120:
      case 0x121:
      case 0x122:
      case 0x123:
      case 0x124:
      case 0x125:
      case 0x126:
      case 0x127:
      case 0x128:
      case 0x129:
      case 0x12A:
      case 0x12B:
      case 0x12C:
      case 0x12D:
      case 0x12E:
      case 0x130:
      case 0x131:
      case 0x132:
      case 0x133:
      case 0x139:
      case 0x13A:
      case 0x13B:
      case 0x13C:
      case 0x13D:
      case 0x13E:
      case 0x13F:
      case 0x140:
      case 0x141:
      case 0x142:
      case 0x143:
      case 0x144:
      case 0x145:
      case 0x146:
      case 0x147:
      case 0x148:
      case 0x149:
      case 0x14A:
      case 0x14B:
      case 0x14C:
      case 0x14D:
      case 0x14E:
      case 0x14F:
      case 0x150:
      case 0x151:
      case 0x152:
      case 0x153:
      case 0x154:
      case 0x155:
      case 0x156:
      case 0x157:
      case 0x158:
      case 0x159:
      case 0x15A:
      case 0x15B:
      case 0x15C:
      case 0x15D:
      case 0x15E:
      case 0x15F:
      case 0x160:
      case 0x161:
      case 0x162:
      case 0x163:
      case 0x164:
      case 0x165:
      case 0x166:
      case 0x167:
      case 0x168:
      case 0x169:
      case 0x16A:
      case 0x16B:
      case 0x16C:
      case 0x16D:
      case 0x16E:
      case 0x16F:
      case 0x172:
      case 0x173:
      case 0x174:
      case 0x175:
        return result;
      case 4:
      case 5:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x19:
      case 0x27:
      case 0x2D:
      case 0x2E:
      case 0x3B:
      case 0x3F:
      case 0x41:
      case 0x47:
      case 0x56:
      case 0x57:
      case 0x9A:
      case 0x9B:
      case 0xA3:
      case 0xB1:
      case 0xBE:
      case 0xBF:
      case 0xDA:
      case 0xDD:
      case 0xDE:
      case 0xE6:
      case 0xEA:
      case 0xEC:
      case 0xED:
      case 0xEE:
      case 0xEF:
      case 0xF4:
      case 0xF5:
      case 0xF6:
      case 0x12F:
      case 0x134:
      case 0x135:
      case 0x136:
      case 0x137:
      case 0x138:
      case 0x170:
      case 0x171:
        return 1;
      case 0xC8:
        v5 = *(a2 + 18);
        if ((v5 - 1) < 2)
        {
          goto LABEL_11;
        }

        if (v5 == 5 && *(a2 + 2))
        {
          v2 = *a2;
LABEL_11:
          v6 = *v2;
        }

        else
        {
          v6 = 0;
        }

        v9 = *(v6 + 18);
        if (v9 == 5)
        {
          return *(v6 + 2) < 2u;
        }

        else
        {
          return v9 != 2;
        }

      case 0xCA:
        v7 = *(a2 + 18);
        if ((v7 - 1) < 2)
        {
          goto LABEL_16;
        }

        if (v7 == 5 && *(a2 + 2))
        {
          v2 = *a2;
LABEL_16:
          v8 = *v2;
        }

        else
        {
          v8 = 0;
        }

        v10 = *(v8 + 18);
        if ((v10 - 1) < 2)
        {
          goto LABEL_25;
        }

        if (v10 == 5 && *(v8 + 2))
        {
          v8 = *v8;
LABEL_25:
          v11 = *v8;
        }

        else
        {
          v11 = 0;
        }

        v12 = *(v11 + 18);
        if ((v12 - 1) < 2)
        {
          return 0;
        }

        if (v12 == 5)
        {
          return *(v11 + 2) == 0;
        }

        return 1;
      case 0xF3:
        v4 = *(a2 + 18);
        if ((v4 - 1) < 2)
        {
          goto LABEL_6;
        }

        a2 = 0;
        if (v4 == 5)
        {
          a2 = 0;
          if (*(v2 + 2))
          {
            v2 = *v2;
LABEL_6:
            a2 = *v2;
          }
        }

        continue;
      default:
        printer_unreachable("bad node kind");
    }
  }
}

std::string *swift::Demangle::__runtime::NodePrinter::printWithParens(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  if (swift::Demangle::__runtime::NodePrinter::isSimpleType(this, a2))
  {

    return swift::Demangle::__runtime::NodePrinter::print(this, a2, a3 + 1, 0);
  }

  else
  {
    std::string::append((this + 8), "(", 1uLL);
    swift::Demangle::__runtime::NodePrinter::print(this, a2, a3 + 1, 0);

    return std::string::append((this + 8), ")", 1uLL);
  }
}

uint64_t swift::Demangle::__runtime::NodePrinter::findSugar(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2)
{
  while (1)
  {
    v2 = a2;
    v3 = *(a2 + 18);
    if (v3 != 1)
    {
      if (v3 != 5)
      {
        if (v3 == 2)
        {
          goto LABEL_18;
        }

        return 0;
      }

      v4 = *(a2 + 2);
      if (v4 != 1)
      {
        goto LABEL_16;
      }
    }

    if (*(a2 + 8) != 243)
    {
      break;
    }

    if ((v3 - 1) < 2)
    {
LABEL_4:
      a2 = *v2;
    }

    else
    {
      a2 = 0;
      if (v3 == 5)
      {
        a2 = 0;
        if (*(v2 + 2))
        {
          v2 = *v2;
          goto LABEL_4;
        }
      }
    }
  }

  if (v3 != 5)
  {
    return 0;
  }

  v4 = *(a2 + 2);
LABEL_16:
  if (v4 != 2)
  {
    return 0;
  }

  v3 = 5;
LABEL_18:
  v5 = *(a2 + 8);
  if ((v5 & 0xFFFE) != 0xE)
  {
    return 0;
  }

  v6 = a2;
  if (v3 == 2)
  {
    goto LABEL_22;
  }

  if (*(a2 + 2))
  {
    v6 = *a2;
LABEL_22:
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 18);
  if ((v8 - 1) < 2)
  {
LABEL_28:
    v9 = *v7;
    if (v3 != 2)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (v8 == 5 && *(v7 + 2))
  {
    v7 = *v7;
    goto LABEL_28;
  }

  v9 = 0;
  if (v3 == 2)
  {
LABEL_33:
    v10 = *(v2 + 1);
    goto LABEL_35;
  }

LABEL_31:
  if (*(a2 + 2) >= 2u)
  {
    v2 = *a2;
    goto LABEL_33;
  }

  v10 = 0;
LABEL_35:
  v11 = *(v9 + 18);
  if (v5 != 14)
  {
    v14 = v9;
    if (v11 != 2)
    {
      if (v11 != 5 || *(v9 + 2) < 2u)
      {
        v15 = 0;
LABEL_56:
        if (*(v15 + 8) != 103 || v15[1] != 5)
        {
          goto LABEL_62;
        }

        v18 = *v15;
        v19 = *v18;
        v20 = *(v18 + 4);
        if (v19 != 1634890305 || v20 != 121)
        {
          goto LABEL_62;
        }

        v42 = *(v10 + 18);
        if (v42 != 1 && (v42 != 5 || *(v10 + 8) != 1))
        {
          goto LABEL_62;
        }

        v43 = v9;
        if ((v11 - 1) >= 2)
        {
          if (v11 != 5 || !*(v9 + 2))
          {
            v44 = 0;
LABEL_131:
            if (*(v44 + 8) == 163 && v44[1] == 5)
            {
              v51 = *v44;
              v52 = *v51;
              v53 = *(v51 + 4);
              if (v52 == 1718187859 && v53 == 116)
              {
                return 3;
              }
            }

LABEL_62:
            v22 = v9;
            if (v11 != 2)
            {
              if (v11 != 5 || *(v9 + 2) < 2u)
              {
                v23 = 0;
LABEL_90:
                if (*(v23 + 8) != 103 || v23[1] != 10)
                {
                  return 0;
                }

                v34 = *v23;
                v35 = *v34;
                v36 = *(v34 + 4);
                if (v35 != 0x616E6F6974636944 || v36 != 31090)
                {
                  return 0;
                }

                v45 = *(v10 + 18);
                if (v45 != 2 && (v45 != 5 || *(v10 + 8) != 2))
                {
                  return 0;
                }

                if ((v11 - 1) >= 2)
                {
                  if (v11 != 5 || !*(v9 + 2))
                  {
                    v46 = 0;
                    goto LABEL_149;
                  }

                  v9 = *v9;
                }

                v46 = *v9;
LABEL_149:
                if (*(v46 + 8) != 163 || v46[1] != 5)
                {
                  return 0;
                }

                v59 = *v46;
                v60 = *v59;
                v61 = *(v59 + 4);
                if (v60 != 1718187859 || v61 != 116)
                {
                  return 0;
                }

                return 4;
              }

              v22 = *v9;
            }

            v23 = v22[1];
            goto LABEL_90;
          }

          v43 = *v9;
        }

        v44 = *v43;
        goto LABEL_131;
      }

      v14 = *v9;
    }

    v15 = v14[1];
    goto LABEL_56;
  }

  v12 = v9;
  if (v11 == 2)
  {
    goto LABEL_40;
  }

  if (v11 == 5 && *(v9 + 2) >= 2u)
  {
    v12 = *v9;
LABEL_40:
    v13 = v12[1];
  }

  else
  {
    v13 = 0;
  }

  if (*(v13 + 16) != 103)
  {
    goto LABEL_50;
  }

  if (*(v13 + 8) != 8)
  {
    goto LABEL_50;
  }

  if (**v13 != 0x6C616E6F6974704FLL)
  {
    goto LABEL_50;
  }

  v39 = *(v10 + 18);
  if (v39 != 1 && (v39 != 5 || *(v10 + 8) != 1))
  {
    goto LABEL_50;
  }

  v40 = v9;
  if ((v11 - 1) < 2)
  {
    goto LABEL_104;
  }

  if (v11 == 5 && *(v9 + 2))
  {
    v40 = *v9;
LABEL_104:
    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  if (*(v41 + 8) == 163 && v41[1] == 5)
  {
    v47 = *v41;
    v48 = *v47;
    v49 = *(v47 + 4);
    if (v48 == 1718187859 && v49 == 116)
    {
      return 1;
    }
  }

LABEL_50:
  v16 = v9;
  if (v11 == 2)
  {
    goto LABEL_54;
  }

  if (v11 == 5 && *(v9 + 2) >= 2u)
  {
    v16 = *v9;
LABEL_54:
    v17 = v16[1];
  }

  else
  {
    v17 = 0;
  }

  if (*(v17 + 16) != 103 || *(v17 + 8) != 27)
  {
    return 0;
  }

  v24 = *v17;
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = *(v24 + 19);
  v29 = v25 == 0x746963696C706D49 && v26 == 0x706172776E55796CLL;
  v30 = v29 && v27 == 0x6F6974704F646570;
  if (!v30 || v28 != 0x6C616E6F6974704FLL)
  {
    return 0;
  }

  v32 = *(v10 + 18);
  if (v32 != 1 && (v32 != 5 || *(v10 + 8) != 1))
  {
    return 0;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_88;
  }

  if (v11 == 5 && *(v9 + 2))
  {
    v9 = *v9;
LABEL_88:
    v33 = *v9;
  }

  else
  {
    v33 = 0;
  }

  if (*(v33 + 8) != 163 || v33[1] != 5)
  {
    return 0;
  }

  v55 = *v33;
  v56 = *v55;
  v57 = *(v55 + 4);
  if (v56 != 1718187859 || v57 != 116)
  {
    return 0;
  }

  return 2;
}

std::string *swift::Demangle::__runtime::NodePrinter::printBoundGeneric(std::string *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v4 = this;
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    if (v5 != 5)
    {
      return this;
    }

    v6 = *(a2 + 2);
    if (v6 < 2)
    {
      return this;
    }

    if (v6 != 2)
    {
      goto LABEL_9;
    }
  }

  if (this[1].__r_.__value_.__s.__data_[8] != 1)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  if (v7 != 16)
  {
    if (v7 == 13)
    {
LABEL_9:

      return swift::Demangle::__runtime::NodePrinter::printBoundGenericNoSugar(this, a2, a3);
    }

    v14 = a2;
    Sugar = swift::Demangle::__runtime::NodePrinter::findSugar(this, a2);
    v16 = Sugar;
    if (Sugar <= 2)
    {
      if ((Sugar - 1) >= 2)
      {
        this = v4;
        a2 = v14;
        goto LABEL_9;
      }

      if (v5 != 2)
      {
        if (*(v14 + 2) < 2u)
        {
          v17 = 0;
LABEL_36:
          v21 = *(v17 + 18);
          if ((v21 - 1) >= 2)
          {
            if (v21 != 5 || !*(v17 + 2))
            {
              v22 = 0;
LABEL_42:
              swift::Demangle::__runtime::NodePrinter::printWithParens(v4, v22, a3);
              if (v16 == 1)
              {
                v23 = "?";
              }

              else
              {
                v23 = "!";
              }

              goto LABEL_79;
            }

            v17 = *v17;
          }

          v22 = *v17;
          goto LABEL_42;
        }

        v14 = *v14;
      }

      v17 = *(v14 + 1);
      goto LABEL_36;
    }

    if (Sugar == 3)
    {
      if (v5 != 2)
      {
        if (*(v14 + 2) < 2u)
        {
          v18 = 0;
LABEL_46:
          v24 = *(v18 + 18);
          if ((v24 - 1) >= 2)
          {
            if (v24 != 5 || !*(v18 + 2))
            {
              v25 = 0;
              goto LABEL_64;
            }

            v18 = *v18;
          }

          v25 = *v18;
LABEL_64:
          std::string::append(&v4->__r_.__value_.__r.__words[1], "[", 1uLL);
          v29 = a3 + 1;
          v30 = v4;
          v31 = v25;
LABEL_78:
          swift::Demangle::__runtime::NodePrinter::print(v30, v31, v29, 0);
          v23 = "]";
LABEL_79:

          return std::string::append(&v4->__r_.__value_.__r.__words[1], v23, 1uLL);
        }

        v14 = *v14;
      }

      v18 = *(v14 + 1);
      goto LABEL_46;
    }

    v19 = v14;
    if (v5 != 2)
    {
      if (*(v14 + 2) < 2u)
      {
        v20 = 0;
LABEL_52:
        v26 = *(v20 + 18);
        if ((v26 - 1) >= 2)
        {
          if (v26 != 5 || !*(v20 + 2))
          {
            v27 = 0;
LABEL_66:
            if (v5 != 2)
            {
              if (*(v14 + 2) < 2u)
              {
                v32 = 0;
LABEL_71:
                v33 = *(v32 + 18);
                if (v33 != 2)
                {
                  if (v33 != 5 || *(v32 + 2) < 2u)
                  {
                    v34 = 0;
                    goto LABEL_77;
                  }

                  v32 = *v32;
                }

                v34 = v32[1];
LABEL_77:
                std::string::append(&v4->__r_.__value_.__r.__words[1], "[", 1uLL);
                swift::Demangle::__runtime::NodePrinter::print(v4, v27, a3 + 1, 0);
                std::string::append(&v4->__r_.__value_.__r.__words[1], " : ", 3uLL);
                v29 = a3 + 1;
                v30 = v4;
                v31 = v34;
                goto LABEL_78;
              }

              v14 = *v14;
            }

            v32 = *(v14 + 1);
            goto LABEL_71;
          }

          v20 = *v20;
        }

        v27 = *v20;
        goto LABEL_66;
      }

      v19 = *v14;
    }

    v20 = *(v19 + 1);
    goto LABEL_52;
  }

  v8 = a2;
  v9 = a2;
  if (v5 != 2)
  {
    if (*(a2 + 2) < 2u)
    {
      goto LABEL_87;
    }

    v9 = *a2;
  }

  v10 = *(v9 + 1);
  if (v10)
  {
    v11 = *(v10 + 18);
    v12 = v10;
    if ((v11 - 1) >= 2)
    {
      if (v11 == 5)
      {
        v13 = *v10;
        v12 = *v10;
LABEL_62:
        v28 = (v13 + 8 * *(v10 + 8));
        goto LABEL_86;
      }

      v12 = 0;
    }

    switch(v11)
    {
      case 1:
        v28 = (v10 + 8);
        break;
      case 2:
        v28 = (v10 + 16);
        break;
      case 5:
        v13 = *v10;
        goto LABEL_62;
      default:
        v28 = 0;
        break;
    }

LABEL_86:
    while (v12 != v28)
    {
      v35 = *v12++;
      swift::Demangle::__runtime::NodePrinter::print(v4, v35, a3 + 1, 0);
    }
  }

LABEL_87:
  std::string::append(&v4->__r_.__value_.__r.__words[1], " as ", 4uLL);
  v36 = *(v8 + 18);
  if ((v36 - 1) >= 2)
  {
    if (v36 != 5 || !*(v8 + 2))
    {
      v37 = 0;
      goto LABEL_93;
    }

    v8 = *v8;
  }

  v37 = *v8;
LABEL_93:

  return swift::Demangle::__runtime::NodePrinter::print(v4, v37, a3 + 1, 0);
}

uint64_t swift::Demangle::__runtime::NodePrinter::getChildIf(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if ((v3 - 1) >= 2)
  {
    if (v3 == 5)
    {
      v5 = *a2;
      v4 = *a2;
      goto LABEL_9;
    }

    v4 = 0;
  }

  if (v3 == 1)
  {
    v6 = a2 + 1;
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v6 = a2 + 2;
    goto LABEL_15;
  }

  if (v3 != 5)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v5 = *a2;
LABEL_9:
  v6 = (v5 + 8 * *(a2 + 2));
LABEL_15:
  while (v4 != v6 && *(*v4 + 16) != a3)
  {
    ++v4;
  }

  if (v3 == 5)
  {
    if (v4 != (*a2 + 8 * *(a2 + 2)))
    {
      return *v4;
    }
  }

  else
  {
    v7 = a2 + 1;
    if (v3 != 1)
    {
      v7 = 0;
    }

    if (v3 == 2)
    {
      v8 = a2 + 2;
    }

    else
    {
      v8 = v7;
    }

    if (v4 != v8)
    {
      return *v4;
    }
  }

  return 0;
}

void swift::Demangle::__runtime::NodePrinter::printFunctionParameters(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::Node *a3, int a4, int a5)
{
  v29 = a2;
  v28 = a4;
  v27 = a5;
  if (*(a3 + 8) != 3)
  {
    *(this + 105) = 0;
    return;
  }

  v6 = *(a3 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_6;
  }

  if (v6 == 5 && *(a3 + 2))
  {
    a3 = *a3;
LABEL_6:
    v7 = *a3;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v8 = *(v7 + 18);
  if ((v8 - 1) < 2)
  {
LABEL_13:
    v9 = *v7;
    goto LABEL_15;
  }

  if (v8 == 5 && *(v7 + 2))
  {
    v7 = *v7;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_15:
  v10 = (v9 + 2);
  if (*(v9 + 8) == 234)
  {
    v26 = &v29;
    v25 = 0;
    if (!a2)
    {
      goto LABEL_28;
    }

    v11 = *(a2 + 18);
    if ((v11 - 1) < 2)
    {
      v12 = 1;
      goto LABEL_29;
    }

    if (v11 == 5)
    {
      v12 = *(a2 + 2) != 0;
    }

    else
    {
LABEL_28:
      v12 = 0;
    }

LABEL_29:
    v24 = v12;
    std::string::push_back((this + 8), 40);
    v15 = *(v9 + 18);
    v16 = v9;
    if ((v15 - 1) >= 2)
    {
      if (v15 == 5)
      {
        v17 = *v9;
        v16 = *v9;
LABEL_37:
        v10 = (v17 + 8 * *(v9 + 2));
        goto LABEL_40;
      }

      v16 = 0;
    }

    switch(v15)
    {
      case 1:
        v10 = (v9 + 1);
        break;
      case 2:
        break;
      case 5:
        v17 = *v9;
        goto LABEL_37;
      default:
        v10 = 0;
        break;
    }

LABEL_40:
    v23[0] = &v24;
    v23[1] = this;
    v23[2] = &v26;
    v23[3] = &v25;
    v23[4] = &v27;
    v23[5] = &v28;
    if (v16 != v10)
    {
      v19 = *v16;
      v18 = v16 + 1;
      swift::Demangle::__runtime::NodePrinter::printFunctionParameters(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,unsigned int,BOOL)::$_1::operator()(v23, v19);
      while (v18 != v10)
      {
        if (v27)
        {
          v20 = ", ";
        }

        else
        {
          v20 = "";
        }

        if (v27)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        std::string::append((this + 8), v20, v21);
        v22 = *v18++;
        swift::Demangle::__runtime::NodePrinter::printFunctionParameters(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,unsigned int,BOOL)::$_1::operator()(v23, v22);
      }
    }

    std::string::push_back((this + 8), 41);
    return;
  }

  if (a5)
  {
    std::string::push_back((this + 8), 40);
    swift::Demangle::__runtime::NodePrinter::print(this, v9, (a4 + 1), 0);

    std::string::push_back((this + 8), 41);
  }

  else
  {
    v14 = (this + 8);

    std::string::append(v14, "(_:)", 4uLL);
  }
}

uint64_t swift::Demangle::__runtime::NodePrinter::printFunctionType(uint64_t this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::Node *a3, uint64_t a4)
{
  v5 = a3;
  v7 = this;
  v8 = *(a3 + 18);
  if (v8 != 2 && (v8 != 5 || *(a3 + 2) <= 1u))
  {
    *(this + 105) = 0;
    return this;
  }

  v58[0] = this;
  v58[1] = a3;
  v59 = a4;
  v9 = *(a3 + 8);
  if (v9 <= 0xAE)
  {
    if (v9 == 11)
    {
LABEL_9:
      std::string::append((this + 8), "@autoclosure ", 0xDuLL);
      goto LABEL_18;
    }

    if (v9 != 23)
    {
      if (v9 != 66)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v10 = "c";
    goto LABEL_17;
  }

  switch(v9)
  {
    case 0xAFu:
LABEL_16:
      v10 = "block";
LABEL_17:
      swift::Demangle::__runtime::NodePrinter::printFunctionType(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,unsigned int)::$_0::operator()(v58, v10);
      break;
    case 0xB0u:
      std::string::append((this + 8), "@escaping ", 0xAuLL);
      goto LABEL_16;
    case 0xE9u:
      std::string::append((this + 8), "@convention(thin) ", 0x12uLL);
      break;
  }

LABEL_18:
  v11 = *(v5 + 18);
  if (v11 == 1)
  {
    v12 = *(*v5 + 16) == 24;
    v14 = 1;
    v13 = -1;
    goto LABEL_22;
  }

  if (v11 == 2)
  {
    v12 = *(*v5 + 16) == 24;
    v13 = 0;
    v14 = 2;
LABEL_22:
    v57 = *(*(v5 + v12) + 16) == 137;
    if (*(*(v5 + v12) + 16) == 137)
    {
      v15 = (v12 + 1);
    }

    else
    {
      v15 = v12;
    }

    v16 = 1;
    v17 = v5;
    goto LABEL_32;
  }

  v14 = *(v5 + 2);
  v13 = v14 - 2;
  if (v14)
  {
    v18 = **v5 + 16;
  }

  else
  {
    v18 = 16;
  }

  v16 = 0;
  v19 = *v18 == 24;
  v17 = *v5;
  v57 = *(*(*v5 + 8 * v19) + 16) == 137;
  if (*(*(*v5 + 8 * v19) + 16) == 137)
  {
    v15 = (v19 + 1);
  }

  else
  {
    v15 = v19;
  }

LABEL_32:
  if (*(*(v17 + v15) + 16) != 135)
  {
    goto LABEL_44;
  }

  if (v11 != 1)
  {
    if (v11 == 5)
    {
      if (*(v5 + 2) > v15)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    if (v11 != 2)
    {
      goto LABEL_42;
    }

    v11 = 2;
  }

  if (v11 > v15)
  {
LABEL_38:
    v20 = v5;
    if ((v16 & 1) == 0)
    {
      v20 = *v5;
    }

    v21 = *(v20 + v15);
    goto LABEL_43;
  }

LABEL_42:
  v21 = 0;
LABEL_43:
  swift::Demangle::__runtime::NodePrinter::print(v7, v21, a4 + 1, 0);
  v15 = (v15 + 1);
  LODWORD(v11) = *(v5 + 18);
LABEL_44:
  if ((v11 - 1) >= 2)
  {
    v22 = 0;
    v23 = *v5;
  }

  else
  {
    v22 = 1;
    v23 = v5;
  }

  v24 = *(*(v23 + v15) + 16);
  v25 = v11;
  if (v24 == 136)
  {
    if (v11 == 1)
    {
      if (v11 > v15)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v11 != 5)
      {
        if (v11 != 2 || v15 >= 2)
        {
          goto LABEL_60;
        }

LABEL_56:
        v28 = v5;
        if ((v22 & 1) == 0)
        {
          v28 = *v5;
        }

        v26 = *(v28 + v15);
LABEL_61:
        v15 = (v15 + 1);
        v27 = v5;
        if (v22)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (*(v5 + 2) > v15)
      {
        goto LABEL_56;
      }
    }

LABEL_60:
    v26 = 0;
    goto LABEL_61;
  }

  v26 = 0;
  v27 = v5;
  if ((v22 & 1) == 0)
  {
LABEL_62:
    v27 = *v5;
  }

LABEL_63:
  if (*(*(v27 + v15) + 16) != 69)
  {
    goto LABEL_75;
  }

  if (v11 != 1)
  {
    if (v11 == 5)
    {
      if (*(v5 + 2) > v15)
      {
        goto LABEL_69;
      }

      goto LABEL_73;
    }

    if (v11 != 2)
    {
      goto LABEL_73;
    }

    v25 = 2;
  }

  if (v25 > v15)
  {
LABEL_69:
    v29 = v5;
    if ((v22 & 1) == 0)
    {
      v29 = *v5;
    }

    v30 = *(v29 + v15);
    goto LABEL_74;
  }

LABEL_73:
  v30 = 0;
LABEL_74:
  swift::Demangle::__runtime::NodePrinter::print(v7, v30, a4 + 1, 0);
  v15 = (v15 + 1);
  LODWORD(v11) = *(v5 + 18);
LABEL_75:
  if ((v11 - 1) >= 2)
  {
    v31 = 0;
    v32 = *v5;
  }

  else
  {
    v31 = 1;
    v32 = v5;
  }

  if (*(*(v32 + v15) + 16) != 70)
  {
    v35 = -100;
    v36 = v5;
    if (v31)
    {
      goto LABEL_85;
    }

LABEL_84:
    v36 = *v5;
    goto LABEL_85;
  }

  v33 = v5;
  if ((v31 & 1) == 0)
  {
    v33 = *v5;
  }

  v34 = **(v33 + v15);
  v15 = (v15 + 1);
  v35 = v34 - 100;
  v36 = v5;
  if ((v31 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_85:
  if (*(*(v36 + v15) + 16) == 285)
  {
    goto LABEL_89;
  }

  v37 = v5;
  if ((v31 & 1) == 0)
  {
    v37 = *v5;
  }

  if (*(*(v37 + v15) + 16) == 286)
  {
LABEL_89:
    if (v11 == 1)
    {
      if (!v15)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 5)
      {
        if (v11 != 2 || v15 >= 2)
        {
          goto LABEL_101;
        }

LABEL_97:
        v40 = v5;
        if ((v31 & 1) == 0)
        {
          v40 = *v5;
        }

        v38 = *(v40 + v15);
LABEL_102:
        v15 = (v15 + 1);
        v39 = v5;
        if (v31)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      if (*(v5 + 2) > v15)
      {
        goto LABEL_97;
      }
    }

LABEL_101:
    v38 = 0;
    goto LABEL_102;
  }

  v38 = 0;
  v39 = v5;
  if ((v31 & 1) == 0)
  {
LABEL_103:
    v39 = *v5;
  }

LABEL_104:
  v41 = *(*(v39 + v15) + 16);
  if (v41 == 68)
  {
    v42 = v15 + 1;
  }

  else
  {
    v42 = v15;
  }

  v43 = v5;
  if ((v31 & 1) == 0)
  {
    v43 = *v5;
  }

  v44 = *(*(v43 + v42) + 16);
  v45 = ((v35 >> 1) | (v35 << 7));
  if (v45 > 3)
  {
    if (v45 == 4)
    {
      v46 = "@differentiable(_linear) ";
    }

    else
    {
      if (v45 != 7)
      {
        goto LABEL_120;
      }

      v46 = "@differentiable(reverse) ";
    }

    v47 = (v7 + 8);
    v48 = 25;
  }

  else if ((v35 >> 1) | (v35 << 7))
  {
    if (v45 != 1)
    {
      goto LABEL_120;
    }

    v46 = "@differentiable(_forward) ";
    v47 = (v7 + 8);
    v48 = 26;
  }

  else
  {
    v46 = "@differentiable ";
    v47 = (v7 + 8);
    v48 = 16;
  }

  std::string::append(v47, v46, v48);
LABEL_120:
  if (v26)
  {
    swift::Demangle::__runtime::NodePrinter::print(v7, v26, a4 + 1, 0);
  }

  if (v41 == 68)
  {
    std::string::append((v7 + 8), "@Sendable ", 0xAuLL);
  }

  v49 = *(v5 + 18);
  v50 = v49 - 1;
  if (v49 != 1)
  {
    if (v49 == 5)
    {
      v49 = *(v5 + 2);
    }

    else
    {
      if (v49 != 2)
      {
LABEL_133:
        v52 = 0;
        goto LABEL_134;
      }

      v49 = 2;
    }
  }

  if (v49 <= v13)
  {
    goto LABEL_133;
  }

  v51 = v5;
  if (v50 >= 2)
  {
    v51 = *v5;
  }

  v52 = *(v51 + v13);
LABEL_134:
  this = (*(*v7 + 24))(v7, a2, v52, a4, *(v7 + 47));
  if (*(v7 + 47) != 1)
  {
    return this;
  }

  if (v44 == 284)
  {
    std::string::append((v7 + 8), " async", 6uLL);
  }

  if (v38)
  {
    swift::Demangle::__runtime::NodePrinter::print(v7, v38, a4 + 1, 0);
  }

  std::string::append((v7 + 8), " -> ", 4uLL);
  if (v57)
  {
    std::string::append((v7 + 8), "sending ", 8uLL);
  }

  v53 = *(v5 + 18);
  v54 = v53 - 1;
  if (v53 != 1)
  {
    if (v53 == 5)
    {
      v53 = *(v5 + 2);
    }

    else
    {
      if (v53 != 2)
      {
        goto LABEL_150;
      }

      v53 = 2;
    }
  }

  v55 = (v14 - 1);
  if (v53 > v55)
  {
    if (v54 >= 2)
    {
      v5 = *v5;
    }

    v56 = *(v5 + v55);
    return swift::Demangle::__runtime::NodePrinter::print(v7, v56, a4 + 1, 0);
  }

LABEL_150:
  v56 = 0;
  return swift::Demangle::__runtime::NodePrinter::print(v7, v56, a4 + 1, 0);
}

std::string *swift::Demangle::__runtime::NodePrinter::printFunctionType(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,unsigned int)::$_0::operator()(uint64_t *a1, const char *a2)
{
  v4 = *a1;
  std::string::append((*a1 + 8), "@convention(", 0xCuLL);
  if (a2)
  {
    v5 = strlen(a2);
  }

  else
  {
    v5 = 0;
  }

  std::string::append((v4 + 8), a2, v5);
  v6 = a1[1];
  if (v6[18] - 1 >= 2)
  {
    v6 = *v6;
  }

  if (*(*v6 + 16) == 24)
  {
    std::string::append((v4 + 8), ", mangledCType: ", 0x11uLL);
    v7 = a1[1];
    v8 = *(v7 + 18);
    if ((v8 - 1) >= 2)
    {
      if (v8 != 5 || !*(v7 + 2))
      {
        v9 = 0;
        goto LABEL_13;
      }

      v7 = *v7;
    }

    v9 = *v7;
LABEL_13:
    swift::Demangle::__runtime::NodePrinter::print(v4, v9, *(a1 + 4) + 1, 0);
    std::string::push_back((v4 + 8), 34);
  }

  return std::string::append((v4 + 8), ") ", 2uLL);
}

void swift::Demangle::__runtime::NodePrinter::printImplFunctionType(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v32 = a3;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28[0] = &v29;
  v28[1] = &v31;
  v28[2] = this;
  v28[3] = &v32;
  v28[4] = &v30;
  v4 = *(a2 + 18);
  v5 = a2;
  if ((v4 - 1) >= 2)
  {
    if (v4 == 5)
    {
      v6 = *a2;
      v5 = *a2;
      goto LABEL_9;
    }

    v5 = 0;
  }

  switch(v4)
  {
    case 1:
      v7 = (a2 + 8);
      if (v5 == (a2 + 8))
      {
        goto LABEL_34;
      }

      goto LABEL_14;
    case 2:
      v7 = (a2 + 16);
      if (v5 == (a2 + 16))
      {
        goto LABEL_34;
      }

      goto LABEL_14;
    case 5:
      v6 = *a2;
LABEL_9:
      v7 = (v6 + 8 * *(a2 + 2));
      if (v5 == v7)
      {
        goto LABEL_34;
      }

      goto LABEL_14;
  }

  v7 = 0;
  if (v5)
  {
LABEL_14:
    v8 = 0;
    while (1)
    {
      v9 = *(*v5 + 16);
      if (v9 <= 0x7B)
      {
        if (v9 != 111)
        {
          if (v9 == 121)
          {
            v8 = *v5;
            goto LABEL_16;
          }

          if (v9 != 123)
          {
LABEL_31:
            swift::Demangle::__runtime::NodePrinter::print(this, *v5, v32 + 1, 0);
            std::string::push_back((this + 8), 32);
            goto LABEL_16;
          }

          if (v29 == 1)
          {
            std::string::append((this + 8), ", ", 2uLL);
          }

          v10 = 1;
          goto LABEL_28;
        }

        v30 = *v5;
      }

      else
      {
        if (v9 - 125 < 3)
        {
          if (v29 == 2)
          {
            std::string::append((this + 8), ", ", 2uLL);
          }

          v10 = 2;
LABEL_28:
          swift::Demangle::__runtime::NodePrinter::printImplFunctionType(swift::Demangle::__runtime::Node *,unsigned int)::$_0::operator()(v28, v10);
          swift::Demangle::__runtime::NodePrinter::print(this, *v5, v32 + 1, 0);
          goto LABEL_16;
        }

        if (v9 != 124)
        {
          goto LABEL_31;
        }

        v31 = *v5;
      }

LABEL_16:
      v5 = (v5 + 8);
      if (v5 == v7)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v8 = 0;
LABEL_35:
  swift::Demangle::__runtime::NodePrinter::printImplFunctionType(swift::Demangle::__runtime::Node *,unsigned int)::$_0::operator()(v28, 2);
  std::string::push_back((this + 8), 41);
  if (v31)
  {
    std::string::append((this + 8), " for <", 6uLL);
    v11 = v31;
    v12 = *(v31 + 18);
    if (v12 != 2)
    {
      if (v12 != 5 || *(v31 + 2) < 2u)
      {
        goto LABEL_56;
      }

      v11 = *v31;
    }

    v13 = *(v11 + 1);
    if (v13)
    {
      v14 = *(v13 + 18);
      v15 = v13;
      if ((v14 - 1) >= 2)
      {
        if (v14 == 5)
        {
          v16 = *v13;
          v15 = *v13;
LABEL_49:
          v17 = (v16 + 8 * *(v13 + 8));
          goto LABEL_53;
        }

        v15 = 0;
      }

      switch(v14)
      {
        case 1:
          v17 = (v13 + 8);
          break;
        case 2:
          v17 = (v13 + 16);
          break;
        case 5:
          v16 = *v13;
          goto LABEL_49;
        default:
          v17 = 0;
          break;
      }

LABEL_53:
      if (v15 != v17)
      {
        v18 = v32;
        do
        {
          v19 = *v15++;
          swift::Demangle::__runtime::NodePrinter::print(this, v19, v18 + 1, 0);
        }

        while (v15 != v17);
      }
    }

LABEL_56:
    std::string::push_back((this + 8), 62);
  }

  if (!v8)
  {
    return;
  }

  std::string::append((this + 8), " for <", 6uLL);
  v20 = *(v8 + 18);
  if ((v20 - 1) >= 2)
  {
    if (v20 != 5 || !*(v8 + 2))
    {
      goto LABEL_78;
    }

    v8 = *v8;
  }

  v21 = *v8;
  if (*v8)
  {
    v22 = *(v21 + 18);
    v23 = *v8;
    if ((v22 - 1) >= 2)
    {
      if (v22 == 5)
      {
        v24 = *v21;
        v23 = *v21;
LABEL_71:
        v25 = &v24[*(v21 + 2)];
        goto LABEL_75;
      }

      v23 = 0;
    }

    switch(v22)
    {
      case 1:
        v25 = (v21 + 8);
        break;
      case 2:
        v25 = (v21 + 16);
        break;
      case 5:
        v24 = *v21;
        goto LABEL_71;
      default:
        v25 = 0;
        break;
    }

LABEL_75:
    if (v23 != v25)
    {
      v26 = v32;
      do
      {
        v27 = *v23++;
        swift::Demangle::__runtime::NodePrinter::print(this, v27, v26 + 1, 0);
      }

      while (v23 != v25);
    }
  }

LABEL_78:
  std::string::push_back((this + 8), 62);
}

void swift::Demangle::__runtime::NodePrinter::printImplFunctionType(swift::Demangle::__runtime::Node *,unsigned int)::$_0::operator()(int **a1, int a2)
{
  v2 = **a1;
  if (v2 != a2)
  {
    v5 = a1[2];
    while (1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          if (v2 == 2)
          {
            printer_unreachable("no state after Results");
          }

          printer_unreachable("bad state");
        }

        std::string::append((v5 + 2), ") -> ", 5uLL);
        v8 = *a1[4];
        if (v8)
        {
          swift::Demangle::__runtime::NodePrinter::print(v5, v8, *a1[3] + 1, 0);
          std::string::append((v5 + 2), " ", 1uLL);
        }

        std::string::append((v5 + 2), "(", 1uLL);
        goto LABEL_9;
      }

      if (*a1[1])
      {
        break;
      }

LABEL_8:
      std::string::push_back((v5 + 2), 40);
LABEL_9:
      v2 = ++**a1;
      if (v2 == a2)
      {
        return;
      }
    }

    std::string::append((v5 + 2), "@substituted ", 0xDuLL);
    v6 = *a1[1];
    v9 = *(v6 + 18);
    if ((v9 - 1) >= 2)
    {
      if (v9 != 5 || !*(v6 + 2))
      {
        v7 = 0;
        goto LABEL_7;
      }

      v6 = *v6;
    }

    v7 = *v6;
LABEL_7:
    swift::Demangle::__runtime::NodePrinter::print(v5, v7, *a1[3] + 1, 0);
    std::string::push_back((v5 + 2), 32);
    goto LABEL_8;
  }
}

void swift::Demangle::__runtime::NodePrinter::printGenericSignature(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  std::string::push_back((this + 8), 60);
  v5 = *(a2 + 18);
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v7 = 1;
    goto LABEL_28;
  }

  if (v5 != 5)
  {
    if (v5 == 2)
    {
      v7 = 2;
      goto LABEL_28;
    }

LABEL_152:
    std::string::push_back((this + 8), 62);
    return;
  }

  v7 = *(a2 + 2);
  if (v7)
  {
LABEL_28:
    for (i = 0; i != v7; ++i)
    {
      v14 = a2;
      if (v6 >= 2)
      {
        v14 = *a2;
      }

      if (*(*(v14 + i) + 16) != 38)
      {
        goto LABEL_7;
      }
    }

    LODWORD(v66) = v7;
    LODWORD(i) = v7;
    goto LABEL_35;
  }

  LODWORD(i) = 0;
LABEL_7:
  LODWORD(v66) = i;
  v9 = v7 - i;
  if (v7 > i)
  {
    v66 = i;
    do
    {
      v10 = *(a2 + 18);
      if (v5 != 1)
      {
        if (v5 == 5)
        {
          v10 = *(a2 + 2);
        }

        else
        {
          v10 = 2;
        }
      }

      if (v10 <= v66)
      {
        v12 = 0;
      }

      else
      {
        v11 = a2;
        if (v6 >= 2)
        {
          v11 = *a2;
        }

        v12 = *(v11 + v66);
      }

      v13 = *(v12 + 8);
      if (v13 == 243)
      {
        if (*(v12 + 18) - 1 >= 2)
        {
          v12 = *v12;
        }

        v13 = *(*v12 + 16);
      }

      if (v13 != 370 && v13 != 43)
      {
        goto LABEL_25;
      }

      ++v66;
      --v9;
    }

    while (v9);
    LODWORD(v66) = v7;
    if (i)
    {
      goto LABEL_35;
    }

LABEL_138:
    if (v66 == v7)
    {
      goto LABEL_152;
    }

    if (*(this + 39) != 1)
    {
      goto LABEL_152;
    }

    std::string::append((this + 8), " where ", 7uLL);
    if (v66 >= v7)
    {
      goto LABEL_152;
    }

    v52 = *(a2 + 18);
    v53 = v52 - 1;
    if (v52 != 1)
    {
      if (v52 == 2)
      {
        if (v66 < 2uLL)
        {
          goto LABEL_146;
        }

        goto LABEL_150;
      }

      if (v52 != 5)
      {
        goto LABEL_150;
      }

      v52 = *(a2 + 2);
    }

    if (v52 > v66)
    {
LABEL_146:
      v54 = a2;
      if (v53 >= 2)
      {
        v54 = *a2;
      }

      v55 = *(v54 + v66);
      goto LABEL_151;
    }

LABEL_150:
    v55 = 0;
LABEL_151:
    swift::Demangle::__runtime::NodePrinter::print(this, v55, (a3 + 1), 0);
    v56 = v66 + 1;
    if (v7 == v66 + 1)
    {
      goto LABEL_152;
    }

    v57 = ~v66 + v7;
    while (1)
    {
      if (v56 > v66)
      {
        std::string::append((this + 8), ", ", 2uLL);
      }

      v59 = *(a2 + 18);
      if (v59 == 2)
      {
        if (v59 > v56)
        {
          goto LABEL_163;
        }
      }

      else if (v59 == 5 && *(a2 + 2) > v56)
      {
LABEL_163:
        v60 = v59 - 1;
        v61 = a2;
        if (v60 >= 2)
        {
          v61 = *a2;
        }

        v58 = *(v61 + v56);
        goto LABEL_155;
      }

      v58 = 0;
LABEL_155:
      swift::Demangle::__runtime::NodePrinter::print(this, v58, (a3 + 1), 0);
      ++v56;
      if (!--v57)
      {
        goto LABEL_152;
      }
    }
  }

LABEL_25:
  if (!i)
  {
    goto LABEL_138;
  }

LABEL_35:
  v15 = 0;
  v16 = i;
  v17 = v66 - i;
  while (1)
  {
    if (v15)
    {
      std::string::append((this + 8), "><", 2uLL);
    }

    v18 = a2;
    if (*(a2 + 18) - 1 >= 2)
    {
      v18 = *a2;
    }

    v19 = *(v18 + v15);
    v20 = *v19;
    if (!*v19)
    {
      goto LABEL_37;
    }

    v21 = 0;
LABEL_45:
    if (!v21)
    {
      break;
    }

    std::string::append((this + 8), ", ", 2uLL);
    if (v21 < 0x80)
    {
      break;
    }

    std::string::append((this + 8), "...", 3uLL);
LABEL_37:
    if (++v15 == v16)
    {
      goto LABEL_138;
    }
  }

  if (v16 >= v66)
  {
LABEL_124:
    v45 = 0;
    v48 = 1;
    goto LABEL_125;
  }

  v22 = *(a2 + 18);
  v23 = v22 - 1;
  v24 = 1;
  v25 = v17;
  v26 = v16;
  while (1)
  {
    v27 = *(a2 + 18);
    if (v22 == 1)
    {
      goto LABEL_55;
    }

    if (v22 != 5)
    {
      if (v22 != 2)
      {
        goto LABEL_60;
      }

      v27 = 2;
LABEL_55:
      if (v27 <= v26)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    if (*(a2 + 2) <= v26)
    {
LABEL_60:
      v29 = 0;
      goto LABEL_61;
    }

LABEL_56:
    v28 = a2;
    if ((v22 - 1) >= 2u)
    {
      v28 = *a2;
    }

    v29 = *(v28 + v26);
LABEL_61:
    if (*(v29 + 8) == 43)
    {
      break;
    }

LABEL_50:
    v24 = ++v26 < v66;
    if (!--v25)
    {
      goto LABEL_81;
    }
  }

  v30 = *(v29 + 18);
  if ((v30 - 1) < 2)
  {
    goto LABEL_66;
  }

  if (v30 == 5 && *(v29 + 2))
  {
    v29 = *v29;
LABEL_66:
    v31 = *v29;
  }

  else
  {
    v31 = 0;
  }

  if (*(v31 + 8) != 243)
  {
    goto LABEL_50;
  }

  v32 = *(v31 + 18);
  if ((v32 - 1) < 2)
  {
    goto LABEL_73;
  }

  if (v32 == 5 && *(v31 + 2))
  {
    v31 = *v31;
LABEL_73:
    v33 = *v31;
  }

  else
  {
    v33 = 0;
  }

  if (*(v33 + 8) != 39)
  {
    goto LABEL_50;
  }

  v34 = *(v33 + 18);
  v35 = v33;
  if ((v34 - 1) >= 2)
  {
    v35 = *v33;
  }

  if (**v35 != v21)
  {
    goto LABEL_50;
  }

  if (v34 == 5)
  {
    v33 = *v33;
  }

  if (*v33[1] != v15)
  {
    goto LABEL_50;
  }

LABEL_81:
  if (v24)
  {
    std::string::append((this + 8), "each ", 5uLL);
    v22 = *(a2 + 18);
    v23 = v22 - 1;
  }

  v36 = v17;
  v37 = v16;
  while (2)
  {
    if (v22 == 1)
    {
      if (v37)
      {
        goto LABEL_96;
      }
    }

    else if (v22 == 5)
    {
      if (*(a2 + 2) <= v37)
      {
        goto LABEL_96;
      }
    }

    else if (v22 != 2 || v37 >= 2)
    {
LABEL_96:
      v39 = 0;
      goto LABEL_97;
    }

    v38 = a2;
    if (v23 >= 2u)
    {
      v38 = *a2;
    }

    v39 = *(v38 + v37);
LABEL_97:
    if (*(v39 + 8) != 370)
    {
      goto LABEL_85;
    }

    v40 = *(v39 + 18);
    if ((v40 - 1) < 2)
    {
      goto LABEL_102;
    }

    if (v40 == 5 && *(v39 + 2))
    {
      v39 = *v39;
LABEL_102:
      v41 = *v39;
    }

    else
    {
      v41 = 0;
    }

    if (*(v41 + 8) != 243)
    {
      goto LABEL_85;
    }

    v42 = *(v41 + 18);
    v43 = v41;
    if ((v42 - 1) < 2)
    {
      goto LABEL_109;
    }

    if (v42 != 5)
    {
      v44 = 0;
      if (v42 == 2)
      {
        goto LABEL_115;
      }

      goto LABEL_112;
    }

    if (!*(v41 + 2))
    {
      v44 = 0;
LABEL_117:
      v45 = 0;
      goto LABEL_118;
    }

    v43 = *v41;
LABEL_109:
    v44 = *v43;
    if (v42 != 2)
    {
LABEL_112:
      if (v42 == 5 && *(v41 + 2) >= 2u)
      {
        v41 = *v41;
        goto LABEL_115;
      }

      goto LABEL_117;
    }

LABEL_115:
    v45 = v41[1];
LABEL_118:
    if (*(v44 + 8) != 39)
    {
      goto LABEL_85;
    }

    v46 = *(v44 + 18);
    v47 = v44;
    if ((v46 - 1) >= 2)
    {
      v47 = *v44;
    }

    if (**v47 != v21)
    {
      goto LABEL_85;
    }

    if (v46 == 5)
    {
      v44 = *v44;
    }

    if (*v44[1] != v15)
    {
LABEL_85:
      ++v37;
      if (!--v36)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  std::string::append((this + 8), "let ", 4uLL);
  v48 = v45 == 0;
LABEL_125:
  v69 = v21;
  v70 = v15;
  v49 = *(this + 12);
  if (v49)
  {
    (*(*v49 + 48))(__p);
    if (v68 >= 0)
    {
      v50 = __p;
    }

    else
    {
      v50 = __p[0];
    }

    if (v68 >= 0)
    {
      v51 = v68;
    }

    else
    {
      v51 = __p[1];
    }

    std::string::append((this + 8), v50, v51);
    if (v68 < 0)
    {
      operator delete(__p[0]);
      if (!v48)
      {
        goto LABEL_136;
      }
    }

    else if (!v48)
    {
LABEL_136:
      std::string::append((this + 8), ": ", 2uLL);
      swift::Demangle::__runtime::NodePrinter::print(this, v45, (a3 + 1), 0);
    }

    if (++v21 == v20)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  swift::Demangle::__runtime::NodePrinter::printFunctionSigSpecializationParams(v62, v63, v64);
}

std::string *swift::Demangle::__runtime::NodePrinter::printFunctionSigSpecializationParams(std::string *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v5 = this;
  v93[4] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 18);
  if (v6 != 1)
  {
    if (v6 == 5)
    {
      v6 = *(a2 + 2);
      if (!v6)
      {
        return this;
      }
    }

    else if (v6 != 2)
    {
      return this;
    }
  }

  LODWORD(v7) = 0;
  while (1)
  {
    v9 = *(a2 + 18);
    if ((v9 - 1) >= 2)
    {
      v10 = 0;
      v11 = *a2;
    }

    else
    {
      v10 = 1;
      v11 = a2;
    }

    v12 = v7;
    v13 = **(v11 + v7);
    if (v13 <= 4)
    {
      break;
    }

    if ((v13 - 6) < 3)
    {
      if (v9 != 1)
      {
        if (v9 == 5)
        {
          goto LABEL_67;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v13 != 5)
    {
      if (v13 == 9)
      {
        LODWORD(v7) = v7 + 4;
        if (v12 + 4 > v6)
        {
          return this;
        }

        std::string::append((v5 + 8), "[", 1uLL);
        v20 = *(a2 + 18);
        v21 = v20 - 1;
        switch(v20)
        {
          case 1:
LABEL_42:
            if (v20 <= v12)
            {
              goto LABEL_95;
            }

            break;
          case 5:
            if (*(a2 + 2) <= v12)
            {
              goto LABEL_95;
            }

            break;
          case 2:
            v20 = 2;
            goto LABEL_42;
          default:
LABEL_95:
            v23 = 0;
LABEL_96:
            swift::Demangle::__runtime::NodePrinter::print(v5, v23, a3 + 1, 0);
            std::string::append((v5 + 8), " : ", 3uLL);
            v46 = *(a2 + 18);
            if (v46 != 2)
            {
              if (v46 == 5)
              {
                v47 = *(a2 + 2);
                goto LABEL_100;
              }

              goto LABEL_104;
            }

            v47 = *(a2 + 18);
LABEL_100:
            v48 = (v12 + 1);
            if (v47 <= v48)
            {
LABEL_104:
              v51 = 0;
            }

            else
            {
              v49 = v46 - 1;
              v50 = a2;
              if (v49 >= 2)
              {
                v50 = *a2;
              }

              v51 = *(v50 + v48);
            }

            swift::Demangle::__runtime::NodePrinter::print(v5, v51, a3 + 1, 0);
            std::string::append((v5 + 8), "<", 1uLL);
            v52 = *(a2 + 18);
            v53 = v52 - 1;
            if (v52 != 1)
            {
              if (v52 != 5)
              {
                if (v52 == 2)
                {
                  v52 = 2;
                  goto LABEL_110;
                }

LABEL_114:
                v56 = 0;
                goto LABEL_115;
              }

              v52 = *(a2 + 2);
            }

LABEL_110:
            v54 = (v12 + 2);
            if (v52 <= v54)
            {
              goto LABEL_114;
            }

            v55 = a2;
            if (v53 >= 2)
            {
              v55 = *a2;
            }

            v56 = *(v55 + v54);
LABEL_115:
            swift::Demangle::__runtime::NodePrinter::print(v5, v56, a3 + 1, 0);
            std::string::append((v5 + 8), ",", 1uLL);
            v57 = *(a2 + 18);
            v58 = v57 - 1;
            if (v57 != 1)
            {
              if (v57 != 5)
              {
                if (v57 == 2)
                {
                  v57 = 2;
                  goto LABEL_120;
                }

LABEL_124:
                v61 = 0;
                goto LABEL_125;
              }

              v57 = *(a2 + 2);
            }

LABEL_120:
            v59 = (v12 + 3);
            if (v57 <= v59)
            {
              goto LABEL_124;
            }

            v60 = a2;
            if (v58 >= 2)
            {
              v60 = *a2;
            }

            v61 = *(v60 + v59);
LABEL_125:
            swift::Demangle::__runtime::NodePrinter::print(v5, v61, a3 + 1, 0);
            this = std::string::append((v5 + 8), ">]", 2uLL);
            goto LABEL_10;
        }

        v22 = a2;
        if (v21 >= 2)
        {
          v22 = *a2;
        }

        v23 = *(v22 + v12);
        goto LABEL_96;
      }

LABEL_65:
      if (v9 != 1)
      {
        if (v9 == 5)
        {
LABEL_67:
          if (*(a2 + 2) <= v7)
          {
LABEL_68:
            v19 = 0;
LABEL_69:
            LODWORD(v7) = v7 + 1;
            this = swift::Demangle::__runtime::NodePrinter::print(v5, v19, a3 + 1, 0);
            goto LABEL_10;
          }

LABEL_32:
          v18 = a2;
          if ((v10 & 1) == 0)
          {
            v18 = *a2;
          }

          v19 = *(v18 + v7);
          goto LABEL_69;
        }

LABEL_29:
        if (v9 != 2)
        {
          goto LABEL_68;
        }

        v9 = 2;
      }

LABEL_31:
      if (v9 <= v7)
      {
        goto LABEL_68;
      }

      goto LABEL_32;
    }

    v7 = (v7 + 2);
    if (v7 > v6)
    {
      return this;
    }

    std::string::append((v5 + 8), "[", 1uLL);
    v32 = *(a2 + 18);
    v33 = v32 - 1;
    if (v32 == 1)
    {
      goto LABEL_75;
    }

    if (v32 != 5)
    {
      if (v32 != 2)
      {
        goto LABEL_127;
      }

      v32 = 2;
LABEL_75:
      if (v32 <= v12)
      {
        goto LABEL_127;
      }

      goto LABEL_76;
    }

    if (*(a2 + 2) <= v12)
    {
LABEL_127:
      v35 = 0;
      goto LABEL_128;
    }

LABEL_76:
    v34 = a2;
    if (v33 >= 2)
    {
      v34 = *a2;
    }

    v35 = *(v34 + v12);
LABEL_128:
    swift::Demangle::__runtime::NodePrinter::print(v5, v35, a3 + 1, 0);
    std::string::append((v5 + 8), " : ", 3uLL);
    v62 = *(a2 + 18);
    if (v62 == 2)
    {
      v63 = *(a2 + 18);
    }

    else
    {
      if (v62 != 5)
      {
        goto LABEL_136;
      }

      v63 = *(a2 + 2);
    }

    v64 = (v12 + 1);
    if (v63 > v64)
    {
      v65 = v62 - 1;
      v66 = a2;
      if (v65 >= 2)
      {
        v66 = *a2;
      }

      v67 = *(v66 + v64);
      goto LABEL_137;
    }

LABEL_136:
    v67 = 0;
LABEL_137:
    swift::Demangle::__runtime::NodePrinter::print(v5, v67, a3 + 1, 0);
    std::string::append((v5 + 8), ", Argument Types : [", 0x14uLL);
    v68 = *(a2 + 18);
    switch(v68)
    {
      case 1u:
        goto LABEL_140;
      case 5u:
        v68 = *(a2 + 2);
        if (v7 < v68)
        {
          while (1)
          {
LABEL_145:
            v69 = a2;
            if (*(a2 + 18) - 1 >= 2)
            {
              v69 = *a2;
            }

            v70 = *(v69 + v7);
            if (*(v70 + 8) != 243)
            {
              break;
            }

            swift::Demangle::__runtime::NodePrinter::print(v5, v70, a3 + 1, 0);
            if (v7 + 1 < v68)
            {
              v71 = a2;
              if (*(a2 + 18) - 1 >= 2)
              {
                v71 = *a2;
              }

              if (*(*(v71 + (v7 + 1)) + 18) == 3)
              {
                std::string::append((v5 + 8), ", ", 2uLL);
              }
            }

            if (v68 == ++v7)
            {
              LODWORD(v7) = v68;
              goto LABEL_9;
            }
          }
        }

        break;
      case 2u:
LABEL_140:
        if (v7 < v68)
        {
          goto LABEL_145;
        }

        break;
    }

LABEL_9:
    this = std::string::append((v5 + 8), "]", 1uLL);
LABEL_10:
    if (v7 >= v6)
    {
      return this;
    }
  }

  if (v13 >= 2)
  {
    if ((v13 - 2) >= 2)
    {
      if (v13 != 4)
      {
        goto LABEL_65;
      }

      LODWORD(v7) = v7 + 3;
      if (v12 + 3 > v6)
      {
        return this;
      }

      std::string::append((v5 + 8), "[", 1uLL);
      v28 = *(a2 + 18);
      v29 = v28 - 1;
      switch(v28)
      {
        case 1:
LABEL_61:
          if (v28 <= v12)
          {
            goto LABEL_154;
          }

          break;
        case 5:
          if (*(a2 + 2) <= v12)
          {
            goto LABEL_154;
          }

          break;
        case 2:
          v28 = 2;
          goto LABEL_61;
        default:
LABEL_154:
          v31 = 0;
LABEL_155:
          swift::Demangle::__runtime::NodePrinter::print(v5, v31, a3 + 1, 0);
          std::string::append((v5 + 8), " : ", 3uLL);
          v72 = *(a2 + 18);
          if (v72 != 2)
          {
            if (v72 == 5)
            {
              v73 = *(a2 + 2);
              goto LABEL_159;
            }

            goto LABEL_163;
          }

          v73 = *(a2 + 18);
LABEL_159:
          v74 = (v12 + 1);
          if (v73 <= v74)
          {
LABEL_163:
            v77 = 0;
          }

          else
          {
            v75 = v72 - 1;
            v76 = a2;
            if (v75 >= 2)
            {
              v76 = *a2;
            }

            v77 = *(v76 + v74);
          }

          swift::Demangle::__runtime::NodePrinter::print(v5, v77, a3 + 1, 0);
          std::string::append((v5 + 8), "'", 1uLL);
          v78 = *(a2 + 18);
          v79 = v78 - 1;
          if (v78 != 1)
          {
            if (v78 != 5)
            {
              if (v78 == 2)
              {
                v78 = 2;
                goto LABEL_169;
              }

LABEL_173:
              v82 = 0;
              goto LABEL_174;
            }

            v78 = *(a2 + 2);
          }

LABEL_169:
          v80 = (v12 + 2);
          if (v78 <= v80)
          {
            goto LABEL_173;
          }

          v81 = a2;
          if (v79 >= 2)
          {
            v81 = *a2;
          }

          v82 = *(v81 + v80);
LABEL_174:
          swift::Demangle::__runtime::NodePrinter::print(v5, v82, a3 + 1, 0);
          std::string::append((v5 + 8), "'", 1uLL);
          goto LABEL_9;
      }

      v30 = a2;
      if (v29 >= 2)
      {
        v30 = *a2;
      }

      v31 = *(v30 + v12);
      goto LABEL_155;
    }

    LODWORD(v7) = v7 + 2;
    if (v12 + 2 > v6)
    {
      return this;
    }

    std::string::append((v5 + 8), "[", 1uLL);
    v14 = *(a2 + 18);
    v15 = v14 - 1;
    switch(v14)
    {
      case 1:
LABEL_22:
        if (v14 <= v12)
        {
          goto LABEL_85;
        }

        break;
      case 5:
        if (*(a2 + 2) <= v12)
        {
          goto LABEL_85;
        }

        break;
      case 2:
        v14 = 2;
        goto LABEL_22;
      default:
LABEL_85:
        v17 = 0;
LABEL_86:
        swift::Demangle::__runtime::NodePrinter::print(v5, v17, a3 + 1, 0);
        std::string::append((v5 + 8), " : ", 3uLL);
        v41 = *(a2 + 18);
        if (v41 != 2)
        {
          if (v41 == 5)
          {
            v42 = *(a2 + 2);
            goto LABEL_90;
          }

          goto LABEL_7;
        }

        v42 = *(a2 + 18);
LABEL_90:
        v43 = (v12 + 1);
        if (v42 <= v43)
        {
LABEL_7:
          v8 = 0;
        }

        else
        {
          v44 = v41 - 1;
          v45 = a2;
          if (v44 >= 2)
          {
            v45 = *a2;
          }

          v8 = *(v45 + v43);
        }

        swift::Demangle::__runtime::NodePrinter::print(v5, v8, a3 + 1, 0);
        goto LABEL_9;
    }

    v16 = a2;
    if (v15 >= 2)
    {
      v16 = *a2;
    }

    v17 = *(v16 + v12);
    goto LABEL_86;
  }

  if (v7 + 2 <= v6)
  {
    std::string::append((v5 + 8), "[", 1uLL);
    v24 = *(a2 + 18);
    v25 = v24 - 1;
    switch(v24)
    {
      case 1:
        goto LABEL_51;
      case 5:
        if (*(a2 + 2) > v7)
        {
          goto LABEL_52;
        }

        break;
      case 2:
        v24 = 2;
LABEL_51:
        if (v24 > v7)
        {
LABEL_52:
          v26 = a2;
          if (v25 >= 2)
          {
            v26 = *a2;
          }

          v27 = *(v26 + v7);
LABEL_81:
          swift::Demangle::__runtime::NodePrinter::print(v5, v27, a3 + 1, 0);
          std::string::append((v5 + 8), " : ", 3uLL);
          v37 = a2;
          if (*(a2 + 18) - 1 >= 2)
          {
            v37 = *a2;
          }

          v38 = *(v37 + (v7 + 1));
          v39 = *v38;
          v40 = *(v38 + 8);
          v83 = 0;
          v84 = 0x101010101010101;
          v85 = 1;
          v86 = 0;
          v87 = 16843009;
          v88 = 1;
          v89 = 256;
          v90 = 1;
          v91 = 0;
          v92 = 0;
          v93[0] = &unk_1EEEAA698;
          v93[1] = swift::Demangle::__runtime::genericParameterName;
          v93[3] = v93;
          swift::Demangle::__runtime::demangleSymbolAsString(v39, v40, &v83, v36);
        }

        break;
    }

    v27 = 0;
    goto LABEL_81;
  }

  return this;
}

void swift::Demangle::__runtime::DemangleOptions::~DemangleOptions(swift::Demangle::__runtime::DemangleOptions *this)
{
  v1 = this + 40;
  v2 = *(this + 8);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

std::string *swift::Demangle::__runtime::NodePrinter::printSpecializationPrefix(std::string *result, uint64_t *a2, const std::string::value_type *a3, std::string::size_type a4, int a5, const std::string::value_type *a6, std::string::size_type a7)
{
  v7 = result;
  v28 = *MEMORY[0x1E69E9840];
  if (result[1].__r_.__value_.__s.__data_[13])
  {
    std::string::append(&result->__r_.__value_.__r.__words[1], a3, a4);
    std::string::append(&v7->__r_.__value_.__r.__words[1], " <", 2uLL);
    v12 = *(a2 + 18);
    v13 = a2;
    if ((v12 - 1) >= 2)
    {
      if (v12 == 5)
      {
        v14 = *a2;
        v13 = *a2;
LABEL_12:
        v15 = &v14[*(a2 + 2)];
        if (v13 == v15)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        goto LABEL_19;
      }

      v13 = 0;
    }

    switch(v12)
    {
      case 1:
        v15 = a2 + 1;
        if (v13 == v15)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        break;
      case 2:
        v15 = a2 + 2;
        if (v13 == v15)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        break;
      case 5:
        v14 = *a2;
        goto LABEL_12;
      default:
        v15 = 0;
        if (!v13)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        break;
    }

LABEL_19:
    v16 = 0;
    v17 = "";
    while (1)
    {
      v21 = *v13;
      v22 = *(*v13 + 16);
      if (v22 == 227 || v22 == 353)
      {
        goto LABEL_24;
      }

      if (v22 == 228)
      {
        if (v17)
        {
          v23 = strlen(v17);
        }

        else
        {
          v23 = 0;
        }

        std::string::append(&v7->__r_.__value_.__r.__words[1], v17, v23);
        swift::Demangle::__runtime::NodePrinter::print(v7, v21, a5 + 1, 0);
        v17 = ", ";
        goto LABEL_24;
      }

      v24 = *(v21 + 18);
      if ((v24 - 1) < 2 || v24 == 5 && *(v21 + 8))
      {
        break;
      }

LABEL_23:
      ++v16;
LABEL_24:
      if (++v13 == v15)
      {
        return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
      }
    }

    if (v17)
    {
      v25 = strlen(v17);
    }

    else
    {
      v25 = 0;
    }

    std::string::append(&v7->__r_.__value_.__r.__words[1], v17, v25);
    std::string::append(&v7->__r_.__value_.__r.__words[1], a6, a7);
    v26 = *(v21 + 16);
    if (v26 == 81)
    {
      v18 = &v7->__r_.__value_.__r.__words[1];
      v19 = "Return = ";
      v20 = 9;
    }

    else
    {
      if (v26 != 80)
      {
        swift::Demangle::__runtime::NodePrinter::print(v7, v21, a5 + 1, 0);
        goto LABEL_22;
      }

      std::string::append(&v7->__r_.__value_.__r.__words[1], "Arg[", 4uLL);
      snprintf(__str, 0x20uLL, "%lld", v16);
      std::string::append(&v7->__r_.__value_.__r.__words[1], __str);
      v18 = &v7->__r_.__value_.__r.__words[1];
      v19 = "] = ";
      v20 = 4;
    }

    std::string::append(v18, v19, v20);
    swift::Demangle::__runtime::NodePrinter::printFunctionSigSpecializationParams(v7, v21, a5);
LABEL_22:
    v17 = ", ";
    goto LABEL_23;
  }

  if ((result[4].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    result = std::string::append(&result->__r_.__value_.__r.__words[1], "specialized ", 0xCuLL);
    v7[4].__r_.__value_.__s.__data_[8] = 1;
  }

  return result;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::NodePrinter::printEntity(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, int a5, uint64_t a6, void *__s, size_t __n, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a2;
  v63[0] = __s;
  v63[1] = __n;
  v62[0] = a10;
  v62[1] = a11;
  if (*(a2 + 8) != 19)
  {
    v17 = 0;
    if (!__n)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v17 = 0;
  v18 = *(a2 + 18);
  if (v18 == 1)
  {
    goto LABEL_12;
  }

  v19 = a2;
  if (v18 != 2)
  {
    if (v18 != 5)
    {
      goto LABEL_8;
    }

    v20 = a2[2];
    if (v20 < 2)
    {
      v17 = 0;
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_21:
      v15 = 0;
      if (!__n)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v19 = *a2;
  }

  v17 = *(v19 + 1);
LABEL_8:
  if (v18 == 2)
  {
    goto LABEL_12;
  }

  if (v18 != 5 || !a2[2])
  {
    goto LABEL_21;
  }

LABEL_11:
  v15 = *a2;
LABEL_12:
  v15 = *v15;
  if (!__n)
  {
LABEL_22:
    v23 = 0;
    if (a6)
    {
      goto LABEL_23;
    }

LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v22 = memchr(__s, 32, __n);
  if (v22)
  {
    v23 = v22 - __s != -1;
  }

  else
  {
    v23 = 0;
  }

  if (!a6)
  {
    goto LABEL_27;
  }

LABEL_23:
  v24 = v15;
  if (*(v15 + 18) == 5)
  {
    v24 = *v15;
  }

  if (*(*(v24 + 1) + 16) != 146)
  {
    goto LABEL_27;
  }

  v23 |= *(a1 + 41);
  v25 = 1;
LABEL_28:
  if (a4 && (a5 != 0) | v23 & 1)
  {
    return v15;
  }

  v26 = *(v15 + 18);
  v27 = v15;
  if ((v26 - 1) < 2)
  {
    goto LABEL_34;
  }

  if (v26 == 5 && *(v15 + 2))
  {
    v27 = *v15;
LABEL_34:
    v28 = *v27;
    goto LABEL_36;
  }

  v28 = 0;
LABEL_36:
  v29 = swift::Demangle::__runtime::NodePrinter::printContext(a1, v28);
  v61 = v23;
  v30 = v23 | ~v29;
  if (v29)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if ((v30 & 1) == 0)
  {
    v32 = a4;
    a4 = v25;
    v33 = v17;
    if (*(a1 + 31) >= 0)
    {
      v34 = *(a1 + 31);
    }

    else
    {
      v34 = *(a1 + 16);
    }

    v35 = swift::Demangle::__runtime::NodePrinter::print(a1, v28, a3 + 1, 1);
    v36 = *(a1 + 31);
    if ((v36 & 0x80u) != 0)
    {
      v36 = *(a1 + 16);
    }

    if (v36 != v34)
    {
      std::string::push_back((a1 + 8), 46);
    }

    v17 = v33;
    v25 = a4;
    LOBYTE(a4) = v32;
    v31 = v35;
  }

  (*(*a1 + 40))(a1, a6, v62, v63, v61 & 1, &a9, v15, a3);
  if (!a5)
  {
    goto LABEL_126;
  }

  v37 = *(v15 + 18);
  v38 = v15;
  if ((v37 - 1) >= 2)
  {
    if (v37 == 5)
    {
      v39 = *v15;
      v38 = *v15;
      goto LABEL_57;
    }

    v38 = 0;
  }

  if (v37 == 1)
  {
    v40 = (v15 + 8);
    goto LABEL_63;
  }

  if (v37 == 2)
  {
    v40 = (v15 + 16);
    goto LABEL_63;
  }

  if (v37 != 5)
  {
    v40 = 0;
    goto LABEL_63;
  }

  v39 = *v15;
LABEL_57:
  v40 = (v39 + 8 * *(v15 + 2));
LABEL_63:
  while (v38 != v40 && *(*v38 + 16) != 243)
  {
    v38 = (v38 + 8);
  }

  if (v37 == 5)
  {
    if (v38 == (*v15 + 8 * *(v15 + 2)))
    {
LABEL_80:
      v15 = 0;
      *(a1 + 105) = 0;
      return v15;
    }
  }

  else
  {
    v41 = (v15 + 8);
    if (v37 != 1)
    {
      v41 = 0;
    }

    if (v37 == 2)
    {
      v42 = (v15 + 16);
    }

    else
    {
      v42 = v41;
    }

    if (v38 == v42)
    {
      goto LABEL_80;
    }
  }

  v43 = *v38;
  if (!v43)
  {
    goto LABEL_80;
  }

  v44 = *(v43 + 18);
  if ((v44 - 1) >= 2)
  {
    if (v44 != 5 || !*(v43 + 2))
    {
      v45 = 0;
      if (a5 == 1)
      {
        goto LABEL_109;
      }

      goto LABEL_82;
    }

    v43 = *v43;
  }

  v45 = *v43;
  if (a5 == 1)
  {
    goto LABEL_109;
  }

LABEL_82:
  if (a5 != 2)
  {
    goto LABEL_104;
  }

  v46 = v45;
  while (1)
  {
    v48 = *(v46 + 8);
    if (v48 != 45)
    {
      break;
    }

    v49 = *(v46 + 18);
    if (v49 != 2)
    {
      if (v49 != 5 || *(v46 + 2) < 2u)
      {
        v47 = 0;
        goto LABEL_94;
      }

      v46 = *v46;
    }

    v47 = *(v46 + 1);
LABEL_94:
    v50 = *(v47 + 18);
    if ((v50 - 1) < 2)
    {
LABEL_86:
      v46 = *v47;
    }

    else
    {
      v46 = 0;
      if (v50 == 5)
      {
        v46 = 0;
        if (*(v47 + 2))
        {
          v47 = *v47;
          goto LABEL_86;
        }
      }
    }
  }

  v51 = (v48 - 23) > 0x3D || ((1 << (v48 - 23)) & 0x2000100000000001) == 0;
  if (!v51 || v48 == 233 || v48 == 257)
  {
LABEL_104:
    v52 = *(v15 + 8);
    if ((v52 == 122 || v52 == 72) && *(a1 + 53) != 1)
    {
      goto LABEL_126;
    }

    if (v61)
    {
      goto LABEL_108;
    }

    v53 = v45;
    while (1)
    {
LABEL_115:
      v54 = v53;
      v55 = *(v53 + 8);
      if (v55 != 243)
      {
        v57 = (v55 - 45) > 0x27 || ((1 << (v55 - 45)) & 0x8000400001) == 0;
        if (!v57 || v55 == 257)
        {
LABEL_125:
          swift::Demangle::__runtime::NodePrinter::printEntityType(a1, v15, v45, v17, a3);
          goto LABEL_126;
        }

LABEL_108:
        std::string::push_back((a1 + 8), 32);
        goto LABEL_125;
      }

      v56 = *(v54 + 18);
      if ((v56 - 1) < 2)
      {
        goto LABEL_114;
      }

      v53 = 0;
      if (v56 == 5)
      {
        v53 = 0;
        if (*(v54 + 2))
        {
          break;
        }
      }
    }

    v54 = *v54;
LABEL_114:
    v53 = *v54;
    goto LABEL_115;
  }

LABEL_109:
  if (*(a1 + 40) == 1)
  {
    std::string::append((a1 + 8), " : ", 3uLL);
    goto LABEL_125;
  }

LABEL_126:
  if ((a4 & 1) != 0 || !v31 || v25 && *(a1 + 41) != 1)
  {
    return v31;
  }

  v58 = *(v15 + 8);
  v59 = " of ";
  if (((v58 - 130) > 0x3B || ((1 << (v58 + 126)) & 0xC00000000000001) == 0) && v58 != 34)
  {
    v59 = " in ";
  }

  std::string::append((a1 + 8), v59, 4uLL);
  swift::Demangle::__runtime::NodePrinter::print(a1, v31, a3 + 1, 0);
  return 0;
}

void swift::Demangle::__runtime::nodeToString(swift::Demangle::__runtime *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, const swift::Demangle::__runtime::DemangleOptions *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    *(a4 + 23) = 0;
    *a4 = 0;
    return;
  }

  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 4);
  v6 = *(a2 + 8);
  if (v6)
  {
    if (v6 == (a2 + 40))
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10, a3);
      v6 = v11;
    }

    else
    {
      v6 = (*(*v6 + 16))(v6);
      v11 = v6;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = &unk_1EEEADBB8;
  __p = 0uLL;
  v14 = 0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  if (v6)
  {
    if (v6 == v10)
    {
      v19 = v18;
      (*(*v6 + 24))(v6, v18);
    }

    else
    {
      v19 = (*(*v6 + 16))(v6);
    }

    v20 = 256;
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }
  }

  else
  {
    v19 = 0;
    v20 = 256;
  }

  v12[2](&v12, this);
  if (HIBYTE(v20) == 1)
  {
    *a4 = __p;
    *(a4 + 16) = v14;
    v14 = 0;
    __p = 0uLL;
  }

  else
  {
    *(a4 + 23) = 0;
    *a4 = 0;
  }

  v12 = &unk_1EEEADBB8;
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(__p);
    return;
  }

  if (v19)
  {
    (*(*v19 + 40))();
  }

  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_26;
  }
}

std::string *anonymous namespace::operator<<(std::string *a1, uint64_t a2)
{
  std::string::push_back(a1, 34);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  while (v6)
  {
    v9 = *v5;
    if (*v5 > 0xCu)
    {
      switch(v9)
      {
        case 0xD:
          v7 = a1;
          v8 = "\\r";
          break;
        case 0x22:
          v7 = a1;
          v8 = "\\"";
          break;
        case 0x5C:
          v7 = a1;
          v8 = "\\\";
          break;
        default:
LABEL_22:
          if ((v9 - 127) > 0xA0u)
          {
            v10 = *v5;
          }

          else
          {
            std::string::append(a1, "\\x", 2uLL);
          }

          std::string::push_back(a1, v10);
          goto LABEL_11;
      }
    }

    else if (*v5)
    {
      if (v9 == 9)
      {
        v7 = a1;
        v8 = "\\t";
      }

      else
      {
        if (v9 != 10)
        {
          goto LABEL_22;
        }

        v7 = a1;
        v8 = "\\n";
      }
    }

    else
    {
      v7 = a1;
      v8 = "\\0";
    }

    std::string::append(v7, v8, 2uLL);
LABEL_11:
    ++v5;
    --v6;
  }

  std::string::push_back(a1, 34);
  return a1;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::NodePrinter::printAbstractStorage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, size_t a6)
{
  v6 = *(a2 + 16);
  if (v6 == 231)
  {
    LODWORD(v8) = -1;
    return swift::Demangle::__runtime::NodePrinter::printEntity(a1, a2, a3, a4, 1, 0, a5, a6, v8, "subscript", 9);
  }

  else
  {
    if (v6 != 266)
    {
      printer_unreachable("Not an abstract storage node");
    }

    LODWORD(v8) = -1;
    return swift::Demangle::__runtime::NodePrinter::printEntity(a1, a2, a3, a4, 1, 1, a5, a6, v8, "", 0);
  }
}

uint64_t swift::Demangle::__runtime::NodePrinter::printEntityType(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::Node *a3, unint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *a2;
      v9 = *a2;
      goto LABEL_9;
    }

    v9 = 0;
  }

  if (v8 == 1)
  {
    v11 = (a2 + 8);
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v11 = (a2 + 16);
    goto LABEL_15;
  }

  if (v8 != 5)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v10 = *a2;
LABEL_9:
  v11 = (v10 + 8 * *(a2 + 2));
LABEL_15:
  while (v9 != v11 && *(*v9 + 16) != 303)
  {
    v9 = (v9 + 8);
  }

  if (v8 == 5)
  {
    if (v9 != (*a2 + 8 * *(a2 + 2)))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = (a2 + 8);
    if (v8 != 1)
    {
      v12 = 0;
    }

    if (v8 == 2)
    {
      v13 = (a2 + 16);
    }

    else
    {
      v13 = v12;
    }

    if (v9 != v13)
    {
LABEL_23:
      v14 = *v9;
      if (a4 | *v9)
      {
        goto LABEL_24;
      }

LABEL_30:

      return swift::Demangle::__runtime::NodePrinter::print(this, a3, a5 + 1, 0);
    }
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (!a4)
  {
    if (*(a3 + 8) != 45)
    {
      goto LABEL_84;
    }

    v20 = *(a3 + 18);
    v21 = a3;
    if ((v20 - 1) >= 2)
    {
      if (v20 != 5 || !*(a3 + 2))
      {
        v22 = 0;
        goto LABEL_56;
      }

      v21 = *a3;
    }

    v22 = *v21;
LABEL_56:
    swift::Demangle::__runtime::NodePrinter::print(this, v22, a5 + 1, 0);
    goto LABEL_57;
  }

  std::string::append((this + 8), "<", 1uLL);
  v16 = *(a4 + 18);
  v17 = a4;
  if ((v16 - 1) >= 2)
  {
    if (v16 == 5)
    {
      v18 = *a4;
      v17 = *a4;
      goto LABEL_44;
    }

    v17 = 0;
  }

  switch(v16)
  {
    case 1:
      v23 = (a4 + 8);
      if (v17 == (a4 + 8))
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    case 2:
      v23 = (a4 + 16);
      if (v17 == (a4 + 16))
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    case 5:
      v18 = *a4;
LABEL_44:
      v23 = v18 + 8 * *(a4 + 8);
      if (v17 == v23)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
  }

  v23 = 0;
  if (!v17)
  {
    goto LABEL_53;
  }

LABEL_51:
  v25 = *v17;
  v24 = (v17 + 8);
  swift::Demangle::__runtime::NodePrinter::print(this, v25, a5 + 1, 0);
  while (v24 != v23)
  {
    std::string::append((this + 8), ", ", 2uLL);
    v26 = *v24++;
    swift::Demangle::__runtime::NodePrinter::print(this, v26, a5 + 1, 0);
  }

LABEL_53:
  std::string::append((this + 8), ">", 1uLL);
  if (*(v6 + 8) != 45)
  {
    goto LABEL_84;
  }

LABEL_57:
  v27 = *(v6 + 18);
  if (v27 != 2)
  {
    if (v27 != 5 || *(v6 + 2) < 2u)
    {
      v28 = 0;
      goto LABEL_63;
    }

    v6 = *v6;
  }

  v28 = *(v6 + 1);
LABEL_63:
  v29 = v28;
  while (1)
  {
    v30 = v29;
    v31 = *(v29 + 8);
    if (v31 != 243)
    {
      break;
    }

    v32 = *(v30 + 18);
    if ((v32 - 1) < 2)
    {
LABEL_66:
      v29 = *v30;
    }

    else
    {
      v29 = 0;
      if (v32 == 5)
      {
        v29 = 0;
        if (*(v30 + 2))
        {
          v30 = *v30;
          goto LABEL_66;
        }
      }
    }
  }

  v33 = (v31 - 45) > 0x27 || ((1 << (v31 - 45)) & 0x8000400001) == 0;
  if (v33 && v31 != 257)
  {
    std::string::push_back((this + 8), 32);
  }

  v34 = *(v28 + 18);
  if ((v34 - 1) < 2)
  {
LABEL_82:
    v6 = *v28;
  }

  else
  {
    if (v34 == 5 && *(v28 + 2))
    {
      v28 = *v28;
      goto LABEL_82;
    }

    v6 = 0;
  }

LABEL_84:

  return swift::Demangle::__runtime::NodePrinter::printFunctionType(this, v14, v6, a5);
}

void swift::Demangle::__runtime::NodePrinter::printFunctionName(swift::Demangle::__runtime::NodePrinter *this, char a2, __swift::__runtime::llvm::StringRef *a3, __swift::__runtime::llvm::StringRef *a4, int a5, unsigned int *a6, swift::Demangle::__runtime::Node *a7, int a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 1);
  if ((a2 & 1) == 0 && !v11)
  {
    goto LABEL_22;
  }

  if (*(a4 + 1))
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = a3;
    v14 = a7;
    v15 = a8;
    std::string::append((this + 8), *a4, *(a4 + 1));
    if ((*a6 & 0x80000000) == 0)
    {
      snprintf(__str, 0x20uLL, "%lld", *a6);
      std::string::append((this + 8), __str);
    }

    std::string::append((this + 8), " of ", 4uLL);
    *a4 = "";
    *(a4 + 1) = 0;
    *a6 = -1;
    a3 = v13;
    v11 = *(v13 + 1);
    a8 = v15;
    a7 = v14;
  }

  if (*(this + 31) >= 0)
  {
    v16 = *(this + 31);
  }

  else
  {
    v16 = *(this + 2);
  }

  if (!v11)
  {
    v20 = *(a7 + 18);
    v21 = a7;
    if (v20 == 5)
    {
      v21 = *a7;
    }

    v22 = *(v21 + 1);
    if (*(v22 + 8) != 186)
    {
      v23 = a8;
      v24 = a7;
      swift::Demangle::__runtime::NodePrinter::print(this, v22, (a8 + 1), 0);
      a7 = v24;
      a8 = v23;
      v20 = v24[18];
    }

    v25 = a7;
    if ((v20 - 1) >= 2)
    {
      if (v20 == 5)
      {
        v26 = *a7;
        v25 = *a7;
        goto LABEL_38;
      }

      v25 = 0;
    }

    if (v20 == 1)
    {
      v27 = (a7 + 8);
      goto LABEL_44;
    }

    if (v20 == 2)
    {
      v27 = (a7 + 16);
      goto LABEL_44;
    }

    if (v20 != 5)
    {
      v27 = 0;
      goto LABEL_44;
    }

    v26 = *a7;
LABEL_38:
    v27 = (v26 + 8 * *(a7 + 2));
LABEL_44:
    while (v25 != v27 && *(*v25 + 8) != 186)
    {
      ++v25;
    }

    if (v20 == 5)
    {
      if (v25 == (*a7 + 8 * *(a7 + 2)))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v28 = (a7 + 8);
      if (v20 != 1)
      {
        v28 = 0;
      }

      if (v20 == 2)
      {
        v29 = (a7 + 16);
      }

      else
      {
        v29 = v28;
      }

      if (v25 == v29)
      {
        goto LABEL_15;
      }
    }

    if (*v25)
    {
      swift::Demangle::__runtime::NodePrinter::print(this, *v25, (a8 + 1), 0);
    }

    goto LABEL_15;
  }

  std::string::append((this + 8), *a3, v11);
LABEL_15:
  v17 = *(this + 31);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(this + 2);
  }

  if (v17 != v16 && *(a4 + 1) != 0)
  {
    std::string::push_back((this + 8), 46);
  }

LABEL_22:
  v19 = *(a4 + 1);
  if (v19)
  {
    std::string::append((this + 8), *a4, v19);
    if ((*a6 & 0x80000000) == 0)
    {
      snprintf(__str, 0x20uLL, "%lld", *a6);
      std::string::append((this + 8), __str);
    }
  }
}

uint64_t **matchSequenceOfKinds(uint64_t **result, void *a2)
{
  if (result)
  {
    v2 = ((a2[1] - *a2) >> 4) + 1;
    for (i = (*a2 + 8); ; i += 2)
    {
      if (!--v2)
      {
        return result;
      }

      v4 = *(i - 4);
      v5 = *i;
      v6 = *(result + 18);
      v7 = v6 - 1;
      if (v6 != 1)
      {
        if (v6 == 5)
        {
          if (*(result + 2) <= v5)
          {
            return 0;
          }

          goto LABEL_11;
        }

        if (v6 != 2)
        {
          return 0;
        }

        v6 = 2;
      }

      if (v6 <= v5)
      {
        return 0;
      }

LABEL_11:
      if (v7 >= 2)
      {
        result = *result;
      }

      result = result[v5];
      if (!result)
      {
        return result;
      }

      if (*(result + 8) != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void swift::Demangle::__runtime::keyPathSourceString(swift::Demangle::__runtime *this, const char *a2)
{
  v4 = 3;
  LODWORD(v3) = 2112095;
  swift::Demangle::__runtime::Context::Context(v2);
}

void swift::Demangle::__runtime::keyPathSourceString(char const*,unsigned long)::$_1::operator()(uint64_t **a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 == 146)
  {
    if (*(a1 + 18) == 5)
    {
      a1 = *a1;
    }

    v6 = a1[1];
    v7 = v6[1];
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_32;
    }

    v8 = *v6;
    v9 = **a1;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v6[1];
    if (v7)
    {
      memmove(&__dst, v8, v7);
    }

    __dst.__r_.__value_.__s.__data_[v7] = 0;
    v10 = std::string::append(&__dst, " #");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v9 + 1);
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

    v14 = std::string::append(&v17, p_p, size);
    *a2 = *v14;
    v14->__r_.__value_.__r.__words[0] = 0;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_31;
      }
    }

    else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  if (v3 != 103)
  {
    a2[23] = 9;
    strcpy(a2, "<unknown>");
    return;
  }

  v4 = a1[1];
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_32:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *a1;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v5, v4);
  }

  a2[v4] = 0;
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *this@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::insert(this, 0, v5, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void swift::Demangle::__runtime::keyPathSourceString(char const*,unsigned long)::$_0::operator()(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **a1;
  if (0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v3) >> 3) <= a2)
  {
    *(a3 + 23) = 9;
    strcpy(a3, "<unknown>");
  }

  else
  {
    v4 = (v3 + 24 * a2);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      *(a3 + 16) = *(v4 + 2);
      *a3 = v5;
    }
  }
}

_BYTE *std::string::basic_string<__swift::__runtime::llvm::StringRef,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

uint64_t swift::Demangle::__runtime::nodeToString(uint64_t this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::NodePrinter *a3)
{
  if (this)
  {
    return (*(*a2 + 16))(a2, this);
  }

  return this;
}

void swift::Demangle::__runtime::NodePrinter::~NodePrinter(swift::Demangle::__runtime::NodePrinter *this)
{
  *this = &unk_1EEEADBB8;
  v2 = this + 72;
  v3 = *(this + 12);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 1));
    return;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_1EEEADBB8;
  v2 = this + 72;
  v3 = *(this + 12);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_5:

      JUMPOUT(0x1865C92E0);
    }
  }

  operator delete(*(this + 1));
  goto LABEL_5;
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void swift::Demangle::__runtime::NodePrinter::printFunctionParameters(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,unsigned int,BOOL)::$_1::operator()(uint64_t a1, swift::Demangle::__runtime::Node *a2)
{
  v4 = *(a1 + 8);
  if (**a1 != 1)
  {
    if (**(a1 + 32))
    {
      goto LABEL_60;
    }

    v10 = *(a2 + 18);
    v11 = a2;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *a2;
        v11 = *a2;
        goto LABEL_40;
      }

      v11 = 0;
    }

    if (v10 == 1)
    {
      v19 = (a2 + 8);
      goto LABEL_46;
    }

    if (v10 == 2)
    {
      v19 = (a2 + 16);
      goto LABEL_46;
    }

    if (v10 != 5)
    {
      v19 = 0;
      goto LABEL_46;
    }

    v12 = *a2;
LABEL_40:
    v19 = (v12 + 8 * *(a2 + 2));
LABEL_46:
    while (v11 != v19 && *(*v11 + 16) != 236)
    {
      v11 = (v11 + 8);
    }

    if (v10 == 5)
    {
      if (v11 == (*a2 + 8 * *(a2 + 2)))
      {
        goto LABEL_58;
      }
    }

    else
    {
      v20 = (a2 + 8);
      if (v10 != 1)
      {
        v20 = 0;
      }

      if (v10 == 2)
      {
        v21 = (a2 + 16);
      }

      else
      {
        v21 = v20;
      }

      if (v11 == v21)
      {
        goto LABEL_58;
      }
    }

    v22 = *v11;
    if (v22)
    {
      std::string::append((v4 + 8), *v22, *(v22 + 8));
      v23 = ":";
      v24 = (v4 + 8);
      v25 = 1;
LABEL_59:
      std::string::append(v24, v23, v25);
      goto LABEL_60;
    }

LABEL_58:
    v23 = "_:";
    v24 = (v4 + 8);
    v25 = 2;
    goto LABEL_59;
  }

  v5 = **(a1 + 24);
  v6 = ***(a1 + 16);
  v7 = *(v6 + 18);
  v8 = v7 - 1;
  if (v7 != 1)
  {
    if (v7 == 5)
    {
      if (*(v6 + 2) > v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (v7 != 2)
    {
      goto LABEL_15;
    }

    v7 = 2;
  }

  if (v7 > v5)
  {
LABEL_7:
    if (v8 >= 2)
    {
      v6 = *v6;
    }

    v9 = v6[v5];
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  if (*(v9 + 8) == 103)
  {
    v13 = *v9;
    if (*v9)
    {
      v14 = v9[1];
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v29) = v9[1];
      if (v14)
      {
        memmove(&__dst, v13, v14);
      }

      *(&__dst + v14) = 0;
      v15 = HIBYTE(v29);
      v16 = v28;
    }

    else
    {
      v16 = 0;
      v15 = 0;
      __dst = 0;
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {
    v15 = 1;
    HIBYTE(v29) = 1;
    v16 = 95;
    LOWORD(__dst) = 95;
  }

  if ((v15 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v15 & 0x80u) == 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  std::string::append((v4 + 8), p_dst, v18);
  std::string::push_back((v4 + 8), 58);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst);
  }

LABEL_60:
  if (**a1 == 1 && **(a1 + 32) == 1)
  {
    std::string::push_back((v4 + 8), 32);
  }

  v26 = *(a1 + 32);
  ++**(a1 + 24);
  if (*v26 == 1)
  {
    swift::Demangle::__runtime::NodePrinter::print(v4, a2, (**(a1 + 40) + 1), 0);
  }
}

uint64_t std::__function::__value_func<std::string ()(unsigned long long,unsigned long long)>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    return std::vector<std::string>::emplace_back<std::string>();
  }
}

uint64_t std::vector<std::string>::emplace_back<std::string>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

uint64_t swift::Punycode::__runtime::decodePunycode(char *a1, unint64_t a2, std::vector<unsigned int> *this)
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

    std::string::__throw_length_error[abi:nn200100]();
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
      std::string::__throw_length_error[abi:nn200100]();
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

      std::string::__throw_length_error[abi:nn200100]();
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

BOOL swift::Punycode::__runtime::encodePunycode(unsigned int **a1, std::string *this)
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

uint64_t swift::Punycode::__runtime::decodePunycodeUTF8(char *a1, unint64_t a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  if (!swift::Punycode::__runtime::decodePunycode(a1, a2, &__p))
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

BOOL swift::Punycode::__runtime::encodePunycodeUTF8(int a1, unint64_t a2, std::string *this)
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = swift::Punycode::__runtime::encodePunycode(&__p, this);
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

      std::string::__throw_length_error[abi:nn200100]();
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

BOOL swift::Demangle::__runtime::SubstitutionEntry::identifierEquals(swift::Demangle::__runtime::SubstitutionEntry *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::Node *a3)
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
        v13 = swift::Mangle::__runtime::translateOperatorChar(*(*this + v8));
      }

      if (*(a2 + 8) - 129 <= 0x38 && ((1 << (*(a2 + 8) + 127)) & 0x140000000000001) != 0)
      {
        v10 = swift::Mangle::__runtime::translateOperatorChar(*(*a2 + v8));
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

uint64_t swift::Demangle::__runtime::SubstitutionEntry::deepEquals(swift::Demangle::__runtime::SubstitutionEntry *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::Node *a3)
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
    result = swift::Demangle::__runtime::SubstitutionEntry::deepEquals(this, *(v12 - 1), v13);
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

uint64_t swift::Demangle::__runtime::RemanglerBase::hashForNode(swift::Demangle::__runtime::RemanglerBase *this, swift::Demangle::__runtime::Node *a2, _BOOL4 a3)
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
        v5 = 33 * v5 + swift::Mangle::__runtime::translateOperatorChar(v10);
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
    swift::Demangle::__runtime::RemanglerBase::entryForNode(v19, this, v17, v3);
    v5 = v19[1] + 33 * v5;
  }

  return v5;
}

__n128 swift::Demangle::__runtime::RemanglerBase::entryForNode@<Q0>(uint64_t *__return_ptr a1@<X8>, swift::Demangle::__runtime::RemanglerBase *this@<X0>, swift::Demangle::__runtime::Node *a3@<X1>, int a4@<W2>)
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
                    v13 = swift::Demangle::__runtime::RemanglerBase::hashForNode(this, a3, a4);
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
    v16 = swift::Demangle::__runtime::RemanglerBase::hashForNode(this, a3, a4);
    *(a1 + 16) = v15;
    *a1 = a3;
    a1[1] = v16;
    v8[1].n128_u8[0] = v15;
    result = *a1;
    *v8 = *a1;
  }

  return result;
}

uint64_t swift::Demangle::__runtime::RemanglerBase::findSubstitution(swift::Demangle::__runtime::RemanglerBase *this, swift::Demangle::__runtime::Node **a2)
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
          if (swift::Demangle::__runtime::SubstitutionEntry::identifierEquals(*v8, *a2, v9))
          {
            goto LABEL_11;
          }
        }

        else if (swift::Demangle::__runtime::SubstitutionEntry::deepEquals(v8, *v8, v9))
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

  v11 = std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::find<swift::Demangle::__runtime::SubstitutionEntry>(this + 1586, a2);
  if (v11)
  {
    return *(v11 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *swift::Demangle::__runtime::RemanglerBase::addSubstitution(uint64_t *this, const swift::Demangle::__runtime::SubstitutionEntry *a2)
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
    return std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v8);
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

size_t *swift::Demangle::__runtime::mangleNode(uint64_t a1)
{
  return swift::Demangle::__runtime::mangleNode(a1);
}

{
  result = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  if (!result)
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = 0;
    return result;
  }

  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = result;
  v64 = &unk_1EEEADB68;
  v65 = 0;
  v66 = 0u;
  v68 = 0;
  v69 = 0;
  v20 = &v64;
  memset(&v21[12312], 0, 17);
  v22 = 0u;
  v23 = 0;
  v25 = 0;
  v24 = 0u;
  v26 = 0u;
  v27 = 0;
  v29 = 0;
  v28 = 0u;
  v31 = 0;
  v30 = 0u;
  v33 = 0;
  v32 = 0u;
  v34 = 0u;
  v35 = 0;
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
  v51 = 0u;
  v52 = 0;
  bzero(v21, 0x3011uLL);
  v53 = 1065353216;
  v56 = &v64;
  v67 = 4800;
  v11 = malloc_type_malloc(0x12C8uLL, 0x2004093837F09uLL);
  *v11 = *(&v66 + 1);
  *&v66 = v11 + 601;
  *(&v66 + 1) = v11;
  v65 = v11 + 5;
  __src = v11 + 1;
  __len = 0x2000000000;
  v57 = v7;
  v58 = 1;
  v59 = 0u;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v62 = v9;
  v63 = v8;
  if (!v18)
  {
    if (__src)
    {
      v15 = __len;
      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v17) = __len;
      if (__len)
      {
        memmove(&v16, __src, __len);
      }

      *(&v16 + v15) = 0;
    }

    else
    {
      v16 = 0uLL;
      v17 = 0;
    }

    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = v16;
    *(v6 + 40) = v17;
    v12 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *v6 = v18;
  *(v6 + 16) = v19;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v12 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    do
    {
LABEL_4:
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

LABEL_5:
  v14 = *(&v50 + 1);
  *(&v50 + 1) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v64 = &unk_1EEEADB68;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(*(&v66 + 1));
  if (v68)
  {
    *(v68 + 48) = 0;
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
          swift::Demangle::__runtime::CharVector::append(this + 3182, *a3, *(this + 1593));
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
          swift::Demangle::__runtime::RemanglerBuffer::operator<<(v12, v11);
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
          swift::Demangle::__runtime::CharVector::append(v17, v18, v15, v16);
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

void swift::Demangle::__runtime::mangleNode(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  if (!v1)
  {
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    return;
  }

  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = v1;
  memset(&v26[12312], 0, 17);
  v27 = 0u;
  v28 = 0;
  v30 = 0;
  v29 = 0u;
  v31 = 0u;
  v32 = 0;
  v34 = 0;
  v33 = 0u;
  v36 = 0;
  v35 = 0u;
  v38 = 0;
  v37 = 0u;
  v39 = 0u;
  v40 = 0;
  v42 = 0;
  v41 = 0u;
  v43 = 0u;
  v44 = 0;
  v46 = 0;
  v45 = 0u;
  v47 = 0u;
  v48 = 0;
  v50 = 0;
  v49 = 0u;
  v51 = 0u;
  v52 = 0;
  v54 = 0;
  v53 = 0u;
  v55 = 0u;
  v56 = 0u;
  v25 = v4;
  v57 = 0;
  bzero(v26, 0x3011uLL);
  v58 = 1065353216;
  v61 = v9;
  v13 = v9[1];
  if (!v13 || (v13 + 4) > v9[2])
  {
    v14 = 2 * v9[4];
    if (v14 <= 0x21)
    {
      v14 = 33;
    }

    v9[4] = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    *v16 = v9[3];
    v13 = v16 + 1;
    v9[2] = v16 + v15;
    v9[3] = v16;
  }

  v9[1] = v13 + 4;
  v59 = v13;
  v60 = 0x2000000000;
  v62 = v8;
  v63 = 1;
  v64 = 0u;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v67 = v11;
  v68 = v10;
  if (v23)
  {
    *v7 = v23;
    v17 = v24;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 16) = v17;
    v18 = *(&v56 + 1);
    if (*(&v56 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = v59;
    v22 = v60;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = v21;
    *(v7 + 32) = v22;
    v18 = *(&v56 + 1);
    if (*(&v56 + 1))
    {
      do
      {
LABEL_9:
        v19 = *v18;
        operator delete(v18);
        v18 = v19;
      }

      while (v19);
    }
  }

  v20 = *(&v55 + 1);
  *(&v55 + 1) = 0;
  if (v20)
  {
    operator delete(v20);
  }
}

uint64_t swift::Demangle::__runtime::isSpecialized(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2)
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

uint64_t swift::Demangle::__runtime::getUnspecialized@<X0>(uint64_t this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, uint64_t a3@<X8>)
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
          this = swift::Demangle::__runtime::isSpecialized(v5, v7);
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
        this = swift::Demangle::__runtime::NodeFactory::createNode(a2, v7);
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
        if (swift::Demangle::__runtime::isSpecialized(*v18, v15))
        {
          this = (swift::Demangle::__runtime::getUnspecialized)(v19, a2, v20);
          if (*a3)
          {
            return this;
          }

          v19 = *(a3 + 24);
        }

        this = swift::Demangle::__runtime::Node::addChild(v16, v19, a2, v21, v22);
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
          this = swift::Demangle::__runtime::Node::addChild(v16, v27, a2, v23, v24);
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
        this = swift::Demangle::__runtime::isSpecialized(v35, v7);
        if ((this & 1) == 0)
        {
          goto LABEL_66;
        }

        this = swift::Demangle::__runtime::getUnspecialized(&v47, v35, a2, v36);
        if (v47)
        {
          *a3 = v47;
          *(a3 + 16) = v48;
          return this;
        }

        Node = swift::Demangle::__runtime::NodeFactory::createNode(a2, 73);
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

        swift::Demangle::__runtime::Node::addChild(Node, v42, a2, v38, v39);
        this = swift::Demangle::__runtime::Node::addChild(v16, v49, a2, v43, v44);
        if (*(v5 + 18) == 5 && *(v5 + 8) == 3)
        {
          this = swift::Demangle::__runtime::Node::addChild(v16, *(*v5 + 16), a2, v45, v46);
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

uint64_t anonymous namespace::Remangler::mangleAnonymousContext@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XZ", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t anonymous namespace::Remangler::mangleAnyProtocolConformanceList@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t *anonymous namespace::Remangler::mangleArgumentTuple@<X0>(uint64_t *this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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

uint64_t anonymous namespace::Remangler::mangleAssociatedTypeRef@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
        v12 = (v11 + 8 * *(a2 + 2));
        goto LABEL_16;
      }

      v10 = 0;
    }

    switch(v9)
    {
      case 1:
        v12 = (a2 + 8);
        goto LABEL_16;
      case 2:
        v12 = (a2 + 16);
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
    result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Qa", 2uLL, this[1593]);
    v13 = this[1585];
    if (v13 > 0xF)
    {
      v15 = *(this + 3178) + 16;
      v18 = v16;
      v19 = v17;
      v20 = v15;
      result = std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(this + 1586, &v18);
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

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeMetadataAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wt", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleDefaultAssociatedTypeMetadataAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "TM", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAccessorAttachedMacroExpansion@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "fMa", 3uLL, this[1593]);
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

uint64_t *anonymous namespace::Remangler::mangleAssociatedTypeWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "WT", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleBaseWitnessTableAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wb", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAutoClosureType@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
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
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "XK", 2uLL, this[1593]);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}