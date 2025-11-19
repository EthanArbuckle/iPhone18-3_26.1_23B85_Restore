void webrtc::SdpSerializeCandidate(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void webrtc::BuildCandidate(uint64_t a1, uint64_t a2, int a3, std::string *a4)
{
  memset(&v286, 0, sizeof(v286));
  if (a1 != a2)
  {
    v5 = a1 + 208;
    v6 = "typ";
    while (1)
    {
      __p = 0;
      v284 = 0;
      v285 = 0;
      v9 = *v5;
      if (*v5 > 1)
      {
        if (v9 != 2)
        {
          if (v9 != 3)
          {
            goto LABEL_5;
          }

          HIBYTE(v285) = 5;
          LODWORD(__p) = 1634493810;
          v11 = &__p + 5;
          v12 = 121;
          goto LABEL_19;
        }

        HIBYTE(v285) = 5;
        v10 = 29296;
      }

      else
      {
        if (!v9)
        {
          HIBYTE(v285) = 4;
          LODWORD(__p) = 1953722216;
          v11 = &__p + 4;
          goto LABEL_20;
        }

        if (v9 != 1)
        {
          goto LABEL_5;
        }

        HIBYTE(v285) = 5;
        v10 = 29299;
      }

      LODWORD(__p) = v10 | 0x6C660000;
      v11 = &__p + 5;
      v12 = 120;
LABEL_19:
      BYTE4(__p) = v12;
LABEL_20:
      *v11 = 0;
      webrtc::InitLine(97, "candidate", 9uLL, &v286);
      size = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v286.__r_.__value_.__l.__size_;
      }

      if (v16 == size)
      {
        std::string::__grow_by_and_replace(&v286, v16, 1uLL, v16, v16, 0, 1uLL, ":");
        v17 = *(v5 + 71);
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v286;
        }

        else
        {
          v20 = v286.__r_.__value_.__r.__words[0];
        }

        v21 = v20 + size;
        if (v20 + size <= ":" && v21 + 1 > ":")
        {
          goto LABEL_805;
        }

        *v21 = 58;
        v22 = size + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v22;
          v20->__r_.__value_.__s.__data_[v22] = 0;
          v17 = *(v5 + 71);
          if ((v17 & 0x8000000000000000) == 0)
          {
LABEL_27:
            v18 = (v5 + 48);
            v19 = v17 == 0;
            goto LABEL_37;
          }
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v22 & 0x7F;
          v20->__r_.__value_.__s.__data_[v22] = 0;
          v17 = *(v5 + 71);
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      v18 = *(v5 + 48);
      v17 = *(v5 + 56);
      v19 = v17 == 0;
      if (!v18 && v17)
      {
        goto LABEL_805;
      }

LABEL_37:
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = 22;
      }

      else
      {
        v23 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v286.__r_.__value_.__l.__size_;
      }

      if (v23 - v24 >= v17)
      {
        if (!v19)
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v286;
          }

          else
          {
            v25 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v26 = v25 + v24;
          if (v25 + v24 <= v18 && &v26[v17] > v18)
          {
            goto LABEL_805;
          }

          v27 = v17;
          memmove(v26, v18, v17);
          v28 = v24 + v27;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v24 + v27;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v28 & 0x7F;
          }

          v25->__r_.__value_.__s.__data_[v28] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v23, v24 + v17 - v23, v24, v24, 0, v17, v18);
      }

      v29 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = 22;
      }

      else
      {
        v30 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = v286.__r_.__value_.__l.__size_;
      }

      if (v30 == v29)
      {
        std::string::__grow_by_and_replace(&v286, v30, 1uLL, v30, v30, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v286;
        }

        else
        {
          v31 = v286.__r_.__value_.__r.__words[0];
        }

        v32 = v31 + v29;
        if (v31 + v29 <= " " && v32 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v32 = 32;
        v33 = v29 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v33;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v33 & 0x7F;
        }

        v31->__r_.__value_.__s.__data_[v33] = 0;
      }

      v34 = webrtc::StringBuilder::operator<<(&v286, *(v5 - 184), v14);
      v36 = v34;
      v37 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
      v38 = v37;
      if ((v37 & 0x80u) == 0)
      {
        v39 = 22;
      }

      else
      {
        v39 = (v34->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v37 & 0x80u) != 0)
      {
        v37 = v34->__r_.__value_.__l.__size_;
      }

      if (v39 == v37)
      {
        std::string::__grow_by_and_replace(v34, v39, 1uLL, v39, v39, 0, 1uLL, " ");
        v40 = (v5 - 176);
        v41 = *(v5 - 153);
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v38 >= 0)
        {
          v44 = v34;
        }

        else
        {
          v44 = v34->__r_.__value_.__r.__words[0];
        }

        v45 = v44 + v37;
        if (v44 + v37 <= " " && v45 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v45 = 32;
        v46 = v37 + 1;
        if (SHIBYTE(v34->__r_.__value_.__r.__words[2]) < 0)
        {
          v34->__r_.__value_.__l.__size_ = v46;
          v44->__r_.__value_.__s.__data_[v46] = 0;
          v40 = (v5 - 176);
          v41 = *(v5 - 153);
          if ((v41 & 0x8000000000000000) == 0)
          {
LABEL_81:
            v42 = v41 == 0;
            v43 = v40;
            goto LABEL_91;
          }
        }

        else
        {
          *(&v34->__r_.__value_.__s + 23) = v46 & 0x7F;
          v44->__r_.__value_.__s.__data_[v46] = 0;
          v40 = (v5 - 176);
          v41 = *(v5 - 153);
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }
        }
      }

      v43 = *(v5 - 176);
      v41 = *(v5 - 168);
      v42 = v41 == 0;
      if (!v43 && v41)
      {
        goto LABEL_805;
      }

LABEL_91:
      v47 = v6;
      v48 = SHIBYTE(v36->__r_.__value_.__r.__words[2]);
      if (v48 >= 0)
      {
        v49 = 22;
      }

      else
      {
        v49 = (v36->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v48 >= 0)
      {
        v50 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v36->__r_.__value_.__l.__size_;
      }

      if (v49 - v50 >= v41)
      {
        if (!v42)
        {
          if (v48 >= 0)
          {
            v51 = v36;
          }

          else
          {
            v51 = v36->__r_.__value_.__r.__words[0];
          }

          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v52 = v51 + v50;
          if (v51 + v50 <= v43 && &v52[v41] > v43)
          {
            goto LABEL_805;
          }

          memmove(v52, v43, v41);
          v53 = v50 + v41;
          if (SHIBYTE(v36->__r_.__value_.__r.__words[2]) < 0)
          {
            v36->__r_.__value_.__l.__size_ = v53;
          }

          else
          {
            *(&v36->__r_.__value_.__s + 23) = v53 & 0x7F;
          }

          v51->__r_.__value_.__s.__data_[v53] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(v36, v49, v50 + v41 - v49, v50, v50, 0, v41, v43);
      }

      v54 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      v55 = v54;
      if ((v54 & 0x80u) == 0)
      {
        v56 = 22;
      }

      else
      {
        v56 = (v36->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v54 & 0x80u) != 0)
      {
        v54 = v36->__r_.__value_.__l.__size_;
      }

      if (v56 == v54)
      {
        std::string::__grow_by_and_replace(v36, v56, 1uLL, v56, v56, 0, 1uLL, " ");
        v6 = v47;
      }

      else
      {
        if (v55 >= 0)
        {
          v57 = v36;
        }

        else
        {
          v57 = v36->__r_.__value_.__r.__words[0];
        }

        v58 = v57 + v54;
        v6 = v47;
        if (v57 + v54 <= " " && v58 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v58 = 32;
        v59 = v54 + 1;
        if (SHIBYTE(v36->__r_.__value_.__r.__words[2]) < 0)
        {
          v36->__r_.__value_.__l.__size_ = v59;
        }

        else
        {
          *(&v36->__r_.__value_.__s + 23) = v59 & 0x7F;
        }

        v57->__r_.__value_.__s.__data_[v59] = 0;
      }

      v60 = webrtc::StringBuilder::operator<<(v36, *(v5 - 56), v35);
      v61 = v60;
      v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
      v63 = v62;
      if ((v62 & 0x80u) == 0)
      {
        v64 = 22;
      }

      else
      {
        v64 = (v60->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v62 & 0x80u) != 0)
      {
        v62 = v60->__r_.__value_.__l.__size_;
      }

      if (v64 == v62)
      {
        std::string::__grow_by_and_replace(v60, v64, 1uLL, v64, v64, 0, 1uLL, " ");
        if (!*(v5 - 96))
        {
          goto LABEL_143;
        }
      }

      else
      {
        if (v63 >= 0)
        {
          v65 = v60;
        }

        else
        {
          v65 = v60->__r_.__value_.__r.__words[0];
        }

        v66 = v65 + v62;
        if (v65 + v62 <= " " && v66 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v66 = 32;
        v67 = v62 + 1;
        if (SHIBYTE(v60->__r_.__value_.__r.__words[2]) < 0)
        {
          v60->__r_.__value_.__l.__size_ = v67;
          v65->__r_.__value_.__s.__data_[v67] = 0;
          if (!*(v5 - 96))
          {
LABEL_143:
            if (*(v5 - 105) < 0)
            {
              std::string::__init_copy_ctor_external(&v282, *(v5 - 128), *(v5 - 120));
            }

            else
            {
              v282 = *(v5 - 128);
            }

            goto LABEL_148;
          }
        }

        else
        {
          *(&v60->__r_.__value_.__s + 23) = v67 & 0x7F;
          v65->__r_.__value_.__s.__data_[v67] = 0;
          if (!*(v5 - 96))
          {
            goto LABEL_143;
          }
        }
      }

      webrtc::IPAddress::ToString(v5 - 104, &v282);
LABEL_148:
      if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v282;
      }

      else
      {
        v68 = v282.__r_.__value_.__r.__words[0];
      }

      if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(v282.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = v282.__r_.__value_.__l.__size_;
      }

      if (!v68 && v69)
      {
        goto LABEL_805;
      }

      v70 = SHIBYTE(v61->__r_.__value_.__r.__words[2]);
      if (v70 >= 0)
      {
        v71 = 22;
      }

      else
      {
        v71 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v70 >= 0)
      {
        v72 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v61->__r_.__value_.__l.__size_;
      }

      if (v71 - v72 >= v69)
      {
        if (v69)
        {
          if (v70 >= 0)
          {
            v73 = v61;
          }

          else
          {
            v73 = v61->__r_.__value_.__r.__words[0];
          }

          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v74 = v73 + v72;
          if ((v73 + v72) <= v68 && &v74[v69] > v68)
          {
            goto LABEL_805;
          }

          v75 = v69;
          memmove(v74, v68, v69);
          v76 = v72 + v75;
          if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
          {
            v61->__r_.__value_.__l.__size_ = v76;
          }

          else
          {
            *(&v61->__r_.__value_.__s + 23) = v76 & 0x7F;
          }

          v6 = v47;
          v73->__r_.__value_.__s.__data_[v76] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(v61, v71, v72 + v69 - v71, v72, v72, 0, v69, v68);
      }

      v77 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      v78 = v77;
      if ((v77 & 0x80u) == 0)
      {
        v79 = 22;
      }

      else
      {
        v79 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v77 & 0x80u) != 0)
      {
        v77 = v61->__r_.__value_.__l.__size_;
      }

      if (v79 == v77)
      {
        std::string::__grow_by_and_replace(v61, v79, 1uLL, v79, v79, 0, 1uLL, " ");
      }

      else
      {
        if (v78 >= 0)
        {
          v80 = v61;
        }

        else
        {
          v80 = v61->__r_.__value_.__r.__words[0];
        }

        v81 = v80 + v77;
        if (v80 + v77 <= " " && v81 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v81 = 32;
        v82 = v77 + 1;
        if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
        {
          v61->__r_.__value_.__l.__size_ = v82;
        }

        else
        {
          *(&v61->__r_.__value_.__s + 23) = v82 & 0x7F;
        }

        v80->__r_.__value_.__s.__data_[v82] = 0;
      }

      std::to_string(&v281, *(v5 - 72));
      if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v281;
      }

      else
      {
        v84 = v281.__r_.__value_.__r.__words[0];
      }

      if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = HIBYTE(v281.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v85 = v281.__r_.__value_.__l.__size_;
      }

      if (!v84 && v85)
      {
        goto LABEL_805;
      }

      v86 = SHIBYTE(v61->__r_.__value_.__r.__words[2]);
      if (v86 >= 0)
      {
        v87 = 22;
      }

      else
      {
        v87 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v86 >= 0)
      {
        v88 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = v61->__r_.__value_.__l.__size_;
      }

      if (v87 - v88 >= v85)
      {
        if (v85)
        {
          if (v86 >= 0)
          {
            v89 = v61;
          }

          else
          {
            v89 = v61->__r_.__value_.__r.__words[0];
          }

          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v90 = v89 + v88;
          if ((v89 + v88) <= v84 && &v90[v85] > v84)
          {
            goto LABEL_805;
          }

          v91 = v85;
          memmove(v90, v84, v85);
          v92 = v88 + v91;
          if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
          {
            v61->__r_.__value_.__l.__size_ = v92;
          }

          else
          {
            *(&v61->__r_.__value_.__s + 23) = v92 & 0x7F;
          }

          v6 = v47;
          v89->__r_.__value_.__s.__data_[v92] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(v61, v87, v88 + v85 - v87, v88, v88, 0, v85, v84);
      }

      v93 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      v94 = v93;
      if ((v93 & 0x80u) == 0)
      {
        v95 = 22;
      }

      else
      {
        v95 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v93 & 0x80u) != 0)
      {
        v93 = v61->__r_.__value_.__l.__size_;
      }

      if (v95 == v93)
      {
        std::string::__grow_by_and_replace(v61, v95, 1uLL, v95, v95, 0, 1uLL, " ");
      }

      else
      {
        if (v94 >= 0)
        {
          v96 = v61;
        }

        else
        {
          v96 = v61->__r_.__value_.__r.__words[0];
        }

        v97 = v96 + v93;
        if (v96 + v93 <= " " && v97 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v97 = 32;
        v98 = v93 + 1;
        if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
        {
          v61->__r_.__value_.__l.__size_ = v98;
        }

        else
        {
          *(&v61->__r_.__value_.__s + 23) = v98 & 0x7F;
        }

        v96->__r_.__value_.__s.__data_[v98] = 0;
      }

      v99 = SHIBYTE(v61->__r_.__value_.__r.__words[2]);
      if (v99 >= 0)
      {
        v100 = 22;
      }

      else
      {
        v100 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v99 >= 0)
      {
        v101 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v61->__r_.__value_.__l.__size_;
      }

      if (v100 - v101 >= 3)
      {
        if (v99 >= 0)
        {
          v102 = v61;
        }

        else
        {
          v102 = v61->__r_.__value_.__r.__words[0];
        }

        v103 = v102 + v101;
        if (v102 + v101 <= v6 && v103 + 3 > v6)
        {
          goto LABEL_805;
        }

        *(v103 + 2) = 112;
        *v103 = 31092;
        v104 = v101 + 3;
        if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
        {
          v61->__r_.__value_.__l.__size_ = v104;
        }

        else
        {
          *(&v61->__r_.__value_.__s + 23) = v104 & 0x7F;
        }

        v102->__r_.__value_.__s.__data_[v104] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(v61, v100, v101 - v100 + 3, v101, v101, 0, 3uLL, v6);
      }

      v105 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      v106 = v105;
      if ((v105 & 0x80u) == 0)
      {
        v107 = 22;
      }

      else
      {
        v107 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v105 & 0x80u) != 0)
      {
        v105 = v61->__r_.__value_.__l.__size_;
      }

      if (v107 == v105)
      {
        std::string::__grow_by_and_replace(v61, v107, 1uLL, v107, v107, 0, 1uLL, " ");
      }

      else
      {
        if (v106 >= 0)
        {
          v108 = v61;
        }

        else
        {
          v108 = v61->__r_.__value_.__r.__words[0];
        }

        v109 = v108 + v105;
        if (v108 + v105 <= " " && v109 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v109 = 32;
        v110 = v105 + 1;
        if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
        {
          v61->__r_.__value_.__l.__size_ = v110;
        }

        else
        {
          *(&v61->__r_.__value_.__s + 23) = v110 & 0x7F;
        }

        v108->__r_.__value_.__s.__data_[v110] = 0;
      }

      if (v285 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v285 >= 0)
      {
        v112 = HIBYTE(v285);
      }

      else
      {
        v112 = v284;
      }

      if (!p_p && v112)
      {
        goto LABEL_805;
      }

      v113 = SHIBYTE(v61->__r_.__value_.__r.__words[2]);
      if (v113 >= 0)
      {
        v114 = 22;
      }

      else
      {
        v114 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v113 >= 0)
      {
        v115 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v115 = v61->__r_.__value_.__l.__size_;
      }

      if (v114 - v115 >= v112)
      {
        if (v112)
        {
          if (v113 >= 0)
          {
            v116 = v61;
          }

          else
          {
            v116 = v61->__r_.__value_.__r.__words[0];
          }

          if ((v112 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v117 = v116 + v115;
          if (v116 + v115 <= p_p && &v117[v112] > p_p)
          {
            goto LABEL_805;
          }

          v118 = v112;
          memmove(v117, p_p, v112);
          v119 = v115 + v118;
          if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
          {
            v61->__r_.__value_.__l.__size_ = v119;
          }

          else
          {
            *(&v61->__r_.__value_.__s + 23) = v119 & 0x7F;
          }

          v6 = v47;
          v116->__r_.__value_.__s.__data_[v119] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(v61, v114, v115 + v112 - v114, v115, v115, 0, v112, p_p);
      }

      v120 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
      v121 = v120;
      if ((v120 & 0x80u) == 0)
      {
        v122 = 22;
      }

      else
      {
        v122 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v120 & 0x80u) != 0)
      {
        v120 = v61->__r_.__value_.__l.__size_;
      }

      if (v122 == v120)
      {
        std::string::__grow_by_and_replace(v61, v122, 1uLL, v122, v122, 0, 1uLL, " ");
        if ((SHIBYTE(v281.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_301;
        }
      }

      else
      {
        if (v121 >= 0)
        {
          v124 = v61;
        }

        else
        {
          v124 = v61->__r_.__value_.__r.__words[0];
        }

        v125 = v124 + v120;
        if (v124 + v120 <= " " && v125 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v125 = 32;
        v126 = v120 + 1;
        if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
        {
          v61->__r_.__value_.__l.__size_ = v126;
          v124->__r_.__value_.__s.__data_[v126] = 0;
          if ((SHIBYTE(v281.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_301:
            if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_302;
            }

            goto LABEL_315;
          }
        }

        else
        {
          *(&v61->__r_.__value_.__s + 23) = v126 & 0x7F;
          v124->__r_.__value_.__s.__data_[v126] = 0;
          if ((SHIBYTE(v281.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_301;
          }
        }
      }

      operator delete(v281.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_302:
        v123 = *(v5 + 95);
        if (v123 < 0)
        {
          goto LABEL_316;
        }

        goto LABEL_303;
      }

LABEL_315:
      operator delete(v282.__r_.__value_.__l.__data_);
      v123 = *(v5 + 95);
      if (v123 < 0)
      {
LABEL_316:
        if (*(v5 + 80))
        {
          goto LABEL_319;
        }

        goto LABEL_317;
      }

LABEL_303:
      if (v123)
      {
        goto LABEL_319;
      }

LABEL_317:
      if (!*(v5 + 104) && !*(v5 + 128))
      {
LABEL_463:
        v170 = *(v5 - 153);
        if (v170 < 0)
        {
          goto LABEL_477;
        }

        goto LABEL_464;
      }

LABEL_319:
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v127 = 22;
      }

      else
      {
        v127 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v128 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v128 = v286.__r_.__value_.__l.__size_;
      }

      if (v127 - v128 >= 5)
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v129 = &v286;
        }

        else
        {
          v129 = v286.__r_.__value_.__r.__words[0];
        }

        v130 = v129 + v128;
        if (v129 + v128 <= "raddr" && v130 + 5 > "raddr")
        {
          goto LABEL_805;
        }

        v130[4] = 114;
        *v130 = 1684300146;
        v131 = v128 + 5;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v128 + 5;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v131 & 0x7F;
        }

        v129->__r_.__value_.__s.__data_[v131] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v127, v128 - v127 + 5, v128, v128, 0, 5uLL, "raddr");
      }

      v132 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = 22;
      }

      else
      {
        v133 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v132 = v286.__r_.__value_.__l.__size_;
      }

      if (v133 == v132)
      {
        std::string::__grow_by_and_replace(&v286, v133, 1uLL, v133, v133, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v134 = &v286;
        }

        else
        {
          v134 = v286.__r_.__value_.__r.__words[0];
        }

        v135 = v134 + v132;
        if (v134 + v132 <= " " && v135 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v135 = 32;
        v136 = v132 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v136;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v136 & 0x7F;
        }

        v134->__r_.__value_.__s.__data_[v136] = 0;
      }

      webrtc::IPAddress::ToString(v5 + 96, &v282);
      if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v137 = &v282;
      }

      else
      {
        v137 = v282.__r_.__value_.__r.__words[0];
      }

      if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v138 = HIBYTE(v282.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v138 = v282.__r_.__value_.__l.__size_;
      }

      if (!v137 && v138)
      {
        goto LABEL_805;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = 22;
      }

      else
      {
        v139 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v140 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v140 = v286.__r_.__value_.__l.__size_;
      }

      if (v139 - v140 >= v138)
      {
        if (v138)
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v141 = &v286;
          }

          else
          {
            v141 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v138 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v142 = v141 + v140;
          if ((v141 + v140) <= v137 && &v142[v138] > v137)
          {
            goto LABEL_805;
          }

          v143 = v138;
          memmove(v142, v137, v138);
          v144 = v140 + v143;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v140 + v143;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v144 & 0x7F;
          }

          v141->__r_.__value_.__s.__data_[v144] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v139, v140 + v138 - v139, v140, v140, 0, v138, v137);
      }

      v145 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = 22;
      }

      else
      {
        v146 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v145 = v286.__r_.__value_.__l.__size_;
      }

      if (v146 == v145)
      {
        std::string::__grow_by_and_replace(&v286, v146, 1uLL, v146, v146, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v147 = &v286;
        }

        else
        {
          v147 = v286.__r_.__value_.__r.__words[0];
        }

        v148 = v147 + v145;
        if (v147 + v145 <= " " && v148 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v148 = 32;
        v149 = v145 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v149;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v149 & 0x7F;
        }

        v147->__r_.__value_.__s.__data_[v149] = 0;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v150 = 22;
      }

      else
      {
        v150 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v151 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v151 = v286.__r_.__value_.__l.__size_;
      }

      if (v150 - v151 >= 5)
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v152 = &v286;
        }

        else
        {
          v152 = v286.__r_.__value_.__r.__words[0];
        }

        v153 = v152 + v151;
        if (v152 + v151 <= "rport" && v153 + 5 > "rport")
        {
          goto LABEL_805;
        }

        v153[4] = 116;
        *v153 = 1919905906;
        v154 = v151 + 5;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v151 + 5;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v154 & 0x7F;
        }

        v152->__r_.__value_.__s.__data_[v154] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v150, v151 - v150 + 5, v151, v151, 0, 5uLL, "rport");
      }

      v155 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = 22;
      }

      else
      {
        v156 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v155 = v286.__r_.__value_.__l.__size_;
      }

      if (v156 == v155)
      {
        std::string::__grow_by_and_replace(&v286, v156, 1uLL, v156, v156, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v157 = &v286;
        }

        else
        {
          v157 = v286.__r_.__value_.__r.__words[0];
        }

        v158 = v157 + v155;
        if (v157 + v155 <= " " && v158 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v158 = 32;
        v159 = v155 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v159;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v159 & 0x7F;
        }

        v157->__r_.__value_.__s.__data_[v159] = 0;
      }

      std::to_string(&v281, *(v5 + 128));
      if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v160 = &v281;
      }

      else
      {
        v160 = v281.__r_.__value_.__r.__words[0];
      }

      if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v161 = HIBYTE(v281.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v161 = v281.__r_.__value_.__l.__size_;
      }

      if (!v160 && v161)
      {
        goto LABEL_805;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v162 = 22;
      }

      else
      {
        v162 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v163 = v286.__r_.__value_.__l.__size_;
      }

      if (v162 - v163 >= v161)
      {
        if (v161)
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v164 = &v286;
          }

          else
          {
            v164 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v161 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v165 = v164 + v163;
          if ((v164 + v163) <= v160 && &v165[v161] > v160)
          {
            goto LABEL_805;
          }

          v166 = v161;
          memmove(v165, v160, v161);
          v167 = v163 + v166;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v163 + v166;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v167 & 0x7F;
          }

          v164->__r_.__value_.__s.__data_[v167] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v162, v163 + v161 - v162, v163, v163, 0, v161, v160);
      }

      v168 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v169 = 22;
      }

      else
      {
        v169 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v168 = v286.__r_.__value_.__l.__size_;
      }

      if (v169 == v168)
      {
        std::string::__grow_by_and_replace(&v286, v169, 1uLL, v169, v169, 0, 1uLL, " ");
        if ((SHIBYTE(v281.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_462;
        }
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v171 = &v286;
        }

        else
        {
          v171 = v286.__r_.__value_.__r.__words[0];
        }

        v172 = v171 + v168;
        if (v171 + v168 <= " " && v172 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v172 = 32;
        v173 = v168 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v173;
          v171->__r_.__value_.__s.__data_[v173] = 0;
          if ((SHIBYTE(v281.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_462:
            if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_463;
            }

            goto LABEL_476;
          }
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v173 & 0x7F;
          v171->__r_.__value_.__s.__data_[v173] = 0;
          if ((SHIBYTE(v281.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_462;
          }
        }
      }

      operator delete(v281.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_463;
      }

LABEL_476:
      operator delete(v282.__r_.__value_.__l.__data_);
      v170 = *(v5 - 153);
      if (v170 < 0)
      {
LABEL_477:
        if (*(v5 - 168) != 3)
        {
          goto LABEL_483;
        }

        v40 = *v40;
        goto LABEL_479;
      }

LABEL_464:
      if (v170 != 3)
      {
        goto LABEL_483;
      }

LABEL_479:
      if (*v40 != webrtc::TCP_PROTOCOL_NAME || v40[2] != 112)
      {
        goto LABEL_483;
      }

      if ((*(v5 + 167) & 0x8000000000000000) != 0)
      {
        if (!*(v5 + 152))
        {
          goto LABEL_483;
        }
      }

      else if (!*(v5 + 167))
      {
        goto LABEL_483;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v192 = 22;
      }

      else
      {
        v192 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v193 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v193 = v286.__r_.__value_.__l.__size_;
      }

      if (v192 - v193 >= 7)
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v194 = &v286;
        }

        else
        {
          v194 = v286.__r_.__value_.__r.__words[0];
        }

        v195 = (v194 + v193);
        if (v194 + v193 <= "tcptype" && v195 + 7 > "tcptype")
        {
          goto LABEL_805;
        }

        *(v195 + 3) = 1701869940;
        *v195 = 1953522548;
        v196 = v193 + 7;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v193 + 7;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v196 & 0x7F;
        }

        v194->__r_.__value_.__s.__data_[v196] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v192, v193 - v192 + 7, v193, v193, 0, 7uLL, "tcptype");
      }

      v260 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v261 = 22;
      }

      else
      {
        v261 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v260 = v286.__r_.__value_.__l.__size_;
      }

      if (v261 == v260)
      {
        std::string::__grow_by_and_replace(&v286, v261, 1uLL, v261, v261, 0, 1uLL, " ");
        v262 = *(v5 + 167);
        if ((v262 & 0x8000000000000000) != 0)
        {
          goto LABEL_763;
        }
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v265 = &v286;
        }

        else
        {
          v265 = v286.__r_.__value_.__r.__words[0];
        }

        v266 = v265 + v260;
        if (v265 + v260 <= " " && v266 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v266 = 32;
        v267 = v260 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v267;
          v265->__r_.__value_.__s.__data_[v267] = 0;
          v262 = *(v5 + 167);
          if ((v262 & 0x8000000000000000) != 0)
          {
LABEL_763:
            v263 = *(v5 + 144);
            v262 = *(v5 + 152);
            v264 = v262 == 0;
            if (!v263 && v262)
            {
              goto LABEL_805;
            }

            goto LABEL_765;
          }
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v267 & 0x7F;
          v265->__r_.__value_.__s.__data_[v267] = 0;
          v262 = *(v5 + 167);
          if ((v262 & 0x8000000000000000) != 0)
          {
            goto LABEL_763;
          }
        }
      }

      v263 = (v5 + 144);
      v264 = v262 == 0;
LABEL_765:
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v268 = 22;
      }

      else
      {
        v268 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v269 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v269 = v286.__r_.__value_.__l.__size_;
      }

      if (v268 - v269 >= v262)
      {
        if (!v264)
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v270 = &v286;
          }

          else
          {
            v270 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v262 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v271 = v270 + v269;
          if (v270 + v269 <= v263 && &v271[v262] > v263)
          {
            goto LABEL_805;
          }

          v272 = v262;
          memmove(v271, v263, v262);
          v273 = v269 + v272;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v269 + v272;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v273 & 0x7F;
          }

          v270->__r_.__value_.__s.__data_[v273] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v268, v269 + v262 - v268, v269, v269, 0, v262, v263);
      }

      v274 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v275 = 22;
      }

      else
      {
        v275 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v274 = v286.__r_.__value_.__l.__size_;
      }

      if (v275 == v274)
      {
        std::string::__grow_by_and_replace(&v286, v275, 1uLL, v275, v275, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v276 = &v286;
        }

        else
        {
          v276 = v286.__r_.__value_.__r.__words[0];
        }

        v277 = v276 + v274;
        if (v276 + v274 <= " " && v277 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v277 = 32;
        v278 = v274 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v278;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v278 & 0x7F;
        }

        v276->__r_.__value_.__s.__data_[v278] = 0;
      }

LABEL_483:
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v175 = 22;
      }

      else
      {
        v175 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v176 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v176 = v286.__r_.__value_.__l.__size_;
      }

      if (v175 - v176 >= 0xA)
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v177 = &v286;
        }

        else
        {
          v177 = v286.__r_.__value_.__r.__words[0];
        }

        v178 = v177 + v176;
        if (v177 + v176 <= "generation" && v178 + 10 > "generation")
        {
          goto LABEL_805;
        }

        *(v178 + 4) = 28271;
        *v178 = *"generation";
        v179 = v176 + 10;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v176 + 10;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v179 & 0x7F;
        }

        v177->__r_.__value_.__s.__data_[v179] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v175, v176 - v175 + 10, v176, v176, 0, 0xAuLL, "generation");
      }

      v180 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v181 = 22;
      }

      else
      {
        v181 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v180 = v286.__r_.__value_.__l.__size_;
      }

      if (v181 == v180)
      {
        std::string::__grow_by_and_replace(&v286, v181, 1uLL, v181, v181, 0, 1uLL, " ");
        webrtc::StringBuilder::operator<<(&v286, *(v5 + 40), v182);
        if (!a3)
        {
          goto LABEL_611;
        }
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v184 = &v286;
        }

        else
        {
          v184 = v286.__r_.__value_.__r.__words[0];
        }

        v185 = v184 + v180;
        if (v184 + v180 <= " " && v185 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v185 = 32;
        v186 = v180 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v186;
          v184->__r_.__value_.__s.__data_[v186] = 0;
          webrtc::StringBuilder::operator<<(&v286, *(v5 + 40), v83);
          if (!a3)
          {
            goto LABEL_611;
          }
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v186 & 0x7F;
          v184->__r_.__value_.__s.__data_[v186] = 0;
          webrtc::StringBuilder::operator<<(&v286, *(v5 + 40), v83);
          if (!a3)
          {
            goto LABEL_611;
          }
        }
      }

      if ((*(v5 - 25) & 0x8000000000000000) != 0)
      {
        if (!*(v5 - 40))
        {
          goto LABEL_611;
        }
      }

      else if (!*(v5 - 25))
      {
        goto LABEL_611;
      }

      v187 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v188 = 22;
      }

      else
      {
        v188 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v187 = v286.__r_.__value_.__l.__size_;
      }

      if (v188 == v187)
      {
        std::string::__grow_by_and_replace(&v286, v188, 1uLL, v188, v188, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v189 = &v286;
        }

        else
        {
          v189 = v286.__r_.__value_.__r.__words[0];
        }

        v190 = v189 + v187;
        if (v189 + v187 <= " " && v190 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v190 = 32;
        v191 = v187 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v191;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v191 & 0x7F;
        }

        v189->__r_.__value_.__s.__data_[v191] = 0;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v197 = 22;
      }

      else
      {
        v197 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v198 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v198 = v286.__r_.__value_.__l.__size_;
      }

      if (v197 - v198 >= 5)
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v199 = &v286;
        }

        else
        {
          v199 = v286.__r_.__value_.__r.__words[0];
        }

        v200 = v199 + v198;
        if (v199 + v198 <= "ufrag" && v200 + 5 > "ufrag")
        {
          goto LABEL_805;
        }

        v200[4] = 103;
        *v200 = 1634887285;
        v201 = v198 + 5;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v198 + 5;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v201 & 0x7F;
        }

        v199->__r_.__value_.__s.__data_[v201] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v197, v198 - v197 + 5, v198, v198, 0, 5uLL, "ufrag");
      }

      v202 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v203 = 22;
      }

      else
      {
        v203 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v202 = v286.__r_.__value_.__l.__size_;
      }

      if (v203 == v202)
      {
        std::string::__grow_by_and_replace(&v286, v203, 1uLL, v203, v203, 0, 1uLL, " ");
        v204 = *(v5 - 25);
        if ((v204 & 0x8000000000000000) == 0)
        {
          goto LABEL_580;
        }
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v207 = &v286;
        }

        else
        {
          v207 = v286.__r_.__value_.__r.__words[0];
        }

        v208 = v207 + v202;
        if (v207 + v202 <= " " && v208 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v208 = 32;
        v209 = v202 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v209;
          v207->__r_.__value_.__s.__data_[v209] = 0;
          v204 = *(v5 - 25);
          if ((v204 & 0x8000000000000000) == 0)
          {
LABEL_580:
            v205 = (v5 - 48);
            v206 = v204 == 0;
            goto LABEL_590;
          }
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v209 & 0x7F;
          v207->__r_.__value_.__s.__data_[v209] = 0;
          v204 = *(v5 - 25);
          if ((v204 & 0x8000000000000000) == 0)
          {
            goto LABEL_580;
          }
        }
      }

      v205 = *(v5 - 48);
      v204 = *(v5 - 40);
      v206 = v204 == 0;
      if (!v205 && v204)
      {
        goto LABEL_805;
      }

LABEL_590:
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v210 = 22;
      }

      else
      {
        v210 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v211 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v211 = v286.__r_.__value_.__l.__size_;
      }

      if (v210 - v211 >= v204)
      {
        if (!v206)
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v212 = &v286;
          }

          else
          {
            v212 = v286.__r_.__value_.__r.__words[0];
          }

          if ((v204 & 0x8000000000000000) != 0)
          {
            goto LABEL_805;
          }

          v213 = v212 + v211;
          if (v212 + v211 <= v205 && &v213[v204] > v205)
          {
            goto LABEL_805;
          }

          v214 = v204;
          memmove(v213, v205, v204);
          v215 = v211 + v214;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v211 + v214;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v215 & 0x7F;
          }

          v212->__r_.__value_.__s.__data_[v215] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v210, v211 + v204 - v210, v211, v211, 0, v204, v205);
      }

LABEL_611:
      v216 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      v217 = v286.__r_.__value_.__l.__size_;
      if (!*(v5 + 192))
      {
        if (!*(v5 + 194))
        {
          goto LABEL_712;
        }

LABEL_663:
        v232 = v216;
        if ((v216 & 0x80u) == 0)
        {
          v233 = 22;
        }

        else
        {
          v233 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v216 & 0x80u) == 0)
        {
          v217 = v216;
        }

        if (v233 == v217)
        {
          std::string::__grow_by_and_replace(&v286, v233, 1uLL, v233, v233, 0, 1uLL, " ");
        }

        else
        {
          v234 = v286.__r_.__value_.__r.__words[0];
          if (v232 >= 0)
          {
            v234 = &v286;
          }

          v235 = v234 + v217;
          if (v234 + v217 <= " " && v235 + 1 > " ")
          {
            goto LABEL_805;
          }

          *v235 = 32;
          v236 = v217 + 1;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v236;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v236 & 0x7F;
          }

          v234->__r_.__value_.__s.__data_[v236] = 0;
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v237 = 22;
        }

        else
        {
          v237 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v238 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v238 = v286.__r_.__value_.__l.__size_;
        }

        if (v237 - v238 >= 0xC)
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v239 = &v286;
          }

          else
          {
            v239 = v286.__r_.__value_.__r.__words[0];
          }

          v240 = v239 + v238;
          if (v239 + v238 <= "network-cost" && v240 + 12 > "network-cost")
          {
            goto LABEL_805;
          }

          *(v240 + 2) = 1953722211;
          *v240 = *"network-cost";
          v241 = v238 + 12;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v238 + 12;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v241 & 0x7F;
          }

          v239->__r_.__value_.__s.__data_[v241] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v286, v237, v238 - v237 + 12, v238, v238, 0, 0xCuLL, "network-cost");
        }

        v242 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v243 = 22;
        }

        else
        {
          v243 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v242 = v286.__r_.__value_.__l.__size_;
        }

        if (v243 == v242)
        {
          std::string::__grow_by_and_replace(&v286, v243, 1uLL, v243, v243, 0, 1uLL, " ");
        }

        else
        {
          if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v244 = &v286;
          }

          else
          {
            v244 = v286.__r_.__value_.__r.__words[0];
          }

          v245 = v244 + v242;
          if (v244 + v242 <= " " && v245 + 1 > " ")
          {
            goto LABEL_805;
          }

          *v245 = 32;
          v246 = v242 + 1;
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            v286.__r_.__value_.__l.__size_ = v246;
          }

          else
          {
            *(&v286.__r_.__value_.__s + 23) = v246 & 0x7F;
          }

          v244->__r_.__value_.__s.__data_[v246] = 0;
        }

        webrtc::StringBuilder::operator<<(&v286, *(v5 + 194), v183);
        v216 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
        v217 = v286.__r_.__value_.__l.__size_;
        goto LABEL_712;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v218 = 22;
      }

      else
      {
        v218 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v217 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      if (v218 == v217)
      {
        std::string::__grow_by_and_replace(&v286, v218, 1uLL, v218, v218, 0, 1uLL, " ");
      }

      else
      {
        v219 = v286.__r_.__value_.__r.__words[0];
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v219 = &v286;
        }

        v220 = v219 + v217;
        if (v219 + v217 <= " " && v220 + 1 > " ")
        {
LABEL_805:
          __break(1u);
          return;
        }

        *v220 = 32;
        v221 = v217 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v221;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v221 & 0x7F;
        }

        v219->__r_.__value_.__s.__data_[v221] = 0;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v222 = 22;
      }

      else
      {
        v222 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v223 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v223 = v286.__r_.__value_.__l.__size_;
      }

      if (v222 - v223 >= 0xA)
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v224 = &v286;
        }

        else
        {
          v224 = v286.__r_.__value_.__r.__words[0];
        }

        v225 = v224 + v223;
        if (v224 + v223 <= "network-id" && v225 + 10 > "network-id")
        {
          goto LABEL_805;
        }

        *(v225 + 4) = 25705;
        *v225 = *"network-id";
        v226 = v223 + 10;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v223 + 10;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v226 & 0x7F;
        }

        v224->__r_.__value_.__s.__data_[v226] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v286, v222, v223 - v222 + 10, v223, v223, 0, 0xAuLL, "network-id");
      }

      v227 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v228 = 22;
      }

      else
      {
        v228 = (v286.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v227 = v286.__r_.__value_.__l.__size_;
      }

      if (v228 == v227)
      {
        std::string::__grow_by_and_replace(&v286, v228, 1uLL, v228, v228, 0, 1uLL, " ");
      }

      else
      {
        if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v229 = &v286;
        }

        else
        {
          v229 = v286.__r_.__value_.__r.__words[0];
        }

        v230 = v229 + v227;
        if (v229 + v227 <= " " && v230 + 1 > " ")
        {
          goto LABEL_805;
        }

        *v230 = 32;
        v231 = v227 + 1;
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          v286.__r_.__value_.__l.__size_ = v231;
        }

        else
        {
          *(&v286.__r_.__value_.__s + 23) = v231 & 0x7F;
        }

        v229->__r_.__value_.__s.__data_[v231] = 0;
      }

      webrtc::StringBuilder::operator<<(&v286, *(v5 + 192), v183);
      v216 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
      v217 = v286.__r_.__value_.__l.__size_;
      if (*(v5 + 194))
      {
        goto LABEL_663;
      }

LABEL_712:
      if ((v216 & 0x80u) == 0)
      {
        v247 = &v286;
      }

      else
      {
        v247 = v286.__r_.__value_.__r.__words[0];
      }

      if ((v216 & 0x80u) == 0)
      {
        v248 = v216;
      }

      else
      {
        v248 = v217;
      }

      if (!a4)
      {
        goto LABEL_5;
      }

      if (!v247 && v248)
      {
        goto LABEL_805;
      }

      v249 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if (v249 < 0)
      {
        v251 = a4->__r_.__value_.__l.__size_;
        v250 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v250 - v251 >= v248)
        {
LABEL_725:
          if (v248)
          {
            v252 = a4;
            if ((v249 & 0x80000000) != 0)
            {
              v252 = a4->__r_.__value_.__r.__words[0];
            }

            if ((v248 & 0x8000000000000000) != 0)
            {
              goto LABEL_805;
            }

            v253 = v252 + v251;
            if ((v252 + v251) <= v247 && &v253[v248] > v247)
            {
              goto LABEL_805;
            }

            v254 = v248;
            memmove(v253, v247, v248);
            v255 = v251 + v254;
            if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
            {
              a4->__r_.__value_.__l.__size_ = v255;
            }

            else
            {
              *(&a4->__r_.__value_.__s + 23) = v255 & 0x7F;
            }

            v252->__r_.__value_.__s.__data_[v255] = 0;
          }

          goto LABEL_735;
        }
      }

      else
      {
        v250 = 22;
        v251 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
        if (22 - v249 >= v248)
        {
          goto LABEL_725;
        }
      }

      std::string::__grow_by_and_replace(a4, v250, v248 - v250 + v251, v251, v251, 0, v248, v247);
LABEL_735:
      v256 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v256 & 0x8000000000000000) != 0)
      {
        v256 = a4->__r_.__value_.__l.__size_;
        v7 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v7 - v256 >= 2)
        {
          v257 = a4->__r_.__value_.__r.__words[0];
          v258 = (a4->__r_.__value_.__r.__words[0] + v256);
          if (v258 <= "\r\n")
          {
            goto LABEL_741;
          }

          goto LABEL_742;
        }
      }

      else
      {
        if (v256 - 21 >= 2)
        {
          v257 = a4;
          v258 = a4 + v256;
          if (a4 + v256 <= "\r\n")
          {
LABEL_741:
            if (v258 + 2 > "\r\n")
            {
              goto LABEL_805;
            }
          }

LABEL_742:
          *v258 = 2573;
          v259 = v256 + 2;
          if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
          {
            a4->__r_.__value_.__l.__size_ = v259;
          }

          else
          {
            *(&a4->__r_.__value_.__s + 23) = v259 & 0x7F;
          }

          v257->__r_.__value_.__s.__data_[v259] = 0;
          goto LABEL_5;
        }

        v7 = 22;
      }

      std::string::__grow_by_and_replace(a4, v7, v256 - v7 + 2, v256, v256, 0, 2uLL, "\r\n");
LABEL_5:
      if (SHIBYTE(v285) < 0)
      {
        operator delete(__p);
        v13 = v5 + 224;
        v5 += 432;
        if (v13 == a2)
        {
LABEL_802:
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v286.__r_.__value_.__l.__data_);
          }

          return;
        }
      }

      else
      {
        v8 = v5 + 224;
        v5 += 432;
        if (v8 == a2)
        {
          goto LABEL_802;
        }
      }
    }
  }
}

void webrtc::SdpDeserialize()
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  webrtc::TransportDescription::TransportDescription(v12, "", 0, "", 0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = &unk_28828CE50;
  v8 = 0;
  v18 = 0;
  __p[1] = 0;
  v19 = 0;
  v4 = 0;
  v5 = 0u;
  v6 = 0;
  v7 = 0;
  operator new();
}

uint64_t webrtc::SdpDeserializeCandidate(unsigned __int8 *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v19[2] = 0;
  {
    v20 = 1;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v26 = &unk_28828CE50;
    v31 = 0;
    v27 = 0;
    v28 = 0u;
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v36 = 0;
    v39 = 0;
    v38 = 0u;
    v37 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v43 = &unk_28828CE50;
    v48 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v44 = 0;
    v45 = 0u;
    v46 = 0;
    v47 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v12 = webrtc::ParseCandidate(a1, a2, v19, a4, 1);
    if (v12)
    {
      webrtc::Candidate::operator=(a3 + 40, v19);
    }

    webrtc::Candidate::~Candidate(v19);
    return v12;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v8, v9, v10, v11, v19[0]);
    return webrtc::ParseCandidate(v14, v15, v16, v17, v18);
  }
}

uint64_t webrtc::ParseCandidate(unsigned __int8 *a1, _BYTE *__n, uint64_t a3, uint64_t a4, int a5)
{
  v9 = __n;
  v10 = a1;
  if (!__n)
  {
    goto LABEL_11;
  }

  v11 = memchr(a1, 10, __n);
  if (!v11 || v11 - v10 == -1)
  {
LABEL_7:
    v9 -= v9[v10 - 1] == 13;
    if (v9 >= 2 && *v10 == 97 && v10[1] == 61)
    {
      v10 += 2;
      v9 -= 2;
    }

LABEL_11:
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    if (!webrtc::tokenize_first(v10, v9, 58, &v77, &v74))
    {
      goto LABEL_21;
    }

    if (SHIBYTE(v79) < 0)
    {
      if (v78 != 9)
      {
        goto LABEL_21;
      }

      v12 = v77;
    }

    else
    {
      if (SHIBYTE(v79) != 9)
      {
        goto LABEL_21;
      }

      v12 = &v77;
    }

    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = v13 == 0x74616469646E6163 && v14 == 101;
    if (v15)
    {
      if (v76 >= 0)
      {
        v20 = &v74;
      }

      else
      {
        v20 = v74;
      }

      if (v76 >= 0)
      {
        v21 = HIBYTE(v76);
      }

      else
      {
        v21 = v75;
      }

      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*(v20 + i) == 32)
          {
            operator new();
          }
        }
      }

      operator new();
    }

LABEL_21:
    if (a5)
    {
      v60.__r_.__value_.__r.__words[2] = 0x1600000000000000;
      v16 = &v60;
      v17 = &v60.__r_.__value_.__s.__data_[13];
      if (&v60 <= "Expect line: " && &v60.__r_.__value_.__r.__words[1] + 5 > "Expect line: " || (qmemcpy(&v60, "Expect line: ", 13), &v60.__r_.__value_.__r.__words[1] + 5 <= "candidate") && (v16 = &v60.__r_.__value_.__r.__words[2] + 6, &v60.__r_.__value_.__r.__words[2] + 6 > "candidate"))
      {
        while (1)
        {
LABEL_106:
          __break(1u);
          __s = *(v16 + 16);
          __na = *(v16 + 24);
          if (__na == 2)
          {
            v16 = *__s;
            if (v16 != *"so")
            {
              goto LABEL_115;
            }
          }

          else
          {
            if (__na == 7)
            {
              v42 = *__s;
              v43 = *"passive";
              v44 = *(__s + 3);
              v16 = *"sive";
            }

            else
            {
              if (__na != 6)
              {
                goto LABEL_115;
              }

              v42 = *__s;
              v43 = *"active";
              v44 = *(__s + 2);
              v16 = *"ve";
            }

            if (v42 != v43 || v44 != v16)
            {
LABEL_115:
              std::string::basic_string[abi:sn200100]<0>(v64, "Invalid TCP candidate type.");
              webrtc::ParseFailed(v56, v58, v64, v57);
              if ((v65 & 0x80000000) == 0)
              {
LABEL_116:
                v18 = 0;
                goto LABEL_104;
              }

              v46 = v64[0];
LABEL_118:
              operator delete(v46);
              v18 = 0;
LABEL_104:
              if (SHIBYTE(v67) < 0)
              {
                operator delete(v66);
              }

              if (SHIBYTE(v69) < 0)
              {
                operator delete(v68);
              }

              operator delete(v9);
LABEL_37:
              if (SHIBYTE(v76) < 0)
              {
                operator delete(v74);
                if ((SHIBYTE(v79) & 0x80000000) == 0)
                {
                  return v18;
                }
              }

              else if ((SHIBYTE(v79) & 0x80000000) == 0)
              {
                return v18;
              }

              operator delete(v77);
              return v18;
            }
          }

          if ((v17 & 1) == 0)
          {
            std::string::basic_string[abi:sn200100]<0>(v62, "Invalid non-TCP candidate");
            webrtc::ParseFailed(v56, v58, v62, v57);
            if ((v63 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }

            v46 = *v62;
            goto LABEL_118;
          }

          v61 = 0;
          if (v6 + 1 >= v5)
          {
            v39 = 0;
            v40 = 0;
            v23 = 0;
            v24 = 0;
            __src = 0;
            v50 = 0;
            v51 = 0;
LABEL_102:
            v41 = strlen(*(&webrtc::PROTO_NAMES + (v54 & 3)));
            webrtc::Candidate::Candidate(&v60, v71, *(&webrtc::PROTO_NAMES + (v54 & 3)), v41, &v68, v70, v51, v50, __src, v24, v47, v40, v53, v59, v39, v23);
            webrtc::Candidate::operator=(__dst, &v60);
            webrtc::Candidate::~Candidate(&v60.__r_.__value_.__l.__data_);
            webrtc::SocketAddress::operator=((__dst + 280), &v66);
            LOBYTE(v17) = __s;
            if (__s)
            {
              std::string::__assign_external((__dst + 352), __s, __na);
              v18 = 1;
              goto LABEL_104;
            }
          }

          else
          {
            v23 = 0;
            v50 = 0;
            v51 = 0;
            __src = 0;
            v24 = 0;
            v17 = &v9[16 * v6];
            v25 = (v17 + 24);
            while (v5 > v6)
            {
              v26 = *(v25 - 3);
              v16 = *(v25 - 2);
              if (v16 > 9)
              {
                if (v16 == 12)
                {
                  v36 = *v26;
                  v37 = *(v26 + 2);
                  v15 = v36 == 0x2D6B726F7774656ELL;
                  v16 = 1953722211;
                  if (v15 && v37 == 1953722211)
                  {
                    if (!webrtc::GetValueFromString<unsigned short>(v56, v58, *(v25 - 1), *v25, &v61, v57))
                    {
                      goto LABEL_116;
                    }

                    v16 = 999;
                    if (v61 >= 0x3E7u)
                    {
                      v23 = 999;
                    }

                    else
                    {
                      v23 = v61;
                    }

                    LOWORD(v61) = v23;
                  }
                }

                else if (v16 == 10)
                {
                  if (*v26 == 0x69746172656E6567 && v26[4] == 28271)
                  {
                    if ((webrtc::GetValueFromString<unsigned int>(v56, v58, *(v25 - 1), *v25, &v61 + 1, v57) & 1) == 0)
                    {
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v31 = *v26;
                    v32 = v26[4];
                    v15 = v31 == 0x2D6B726F7774656ELL;
                    v16 = 25705;
                    v33 = v15 && v32 == 25705;
                    if (v33 && (webrtc::GetValueFromString<unsigned short>(v56, v58, *(v25 - 1), *v25, &v61 + 1, v57) & 1) == 0)
                    {
                      goto LABEL_116;
                    }
                  }
                }
              }

              else if (v16 == 3)
              {
                v16 = *v26;
                v34 = *(v26 + 2);
                if (v16 == 30576 && v34 == 100)
                {
                  v24 = *v25;
                  __src = *(v25 - 1);
                }
              }

              else if (v16 == 5)
              {
                v27 = *v26;
                v28 = *(v26 + 4);
                v15 = v27 == 1634887285;
                v16 = 103;
                if (v15 && v28 == 103)
                {
                  v16 = *(v25 - 1);
                  v50 = *v25;
                  v51 = v16;
                }
              }

              v17 = (v6 + 3);
              v6 += 2;
              v25 += 4;
              if (v17 >= v5)
              {
                v40 = HIDWORD(v61);
                v39 = WORD1(v61);
                goto LABEL_102;
              }
            }
          }
        }
      }

      v60.__r_.__value_.__s.__data_[21] = 101;
      *(&v60.__r_.__value_.__r.__words[1] + 5) = *"candidate";
      std::string::__grow_by_and_replace(&v60, 0x16uLL, 0x10uLL, 0x16uLL, 0x16uLL, 0, 0x10uLL, ":<candidate-str>");
      v72 = *&v60.__r_.__value_.__l.__data_;
      v73 = v60.__r_.__value_.__r.__words[2];
      memset(&v60, 0, sizeof(v60));
      webrtc::ParseFailed(v10, v9, 0, &v72, a4);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72.n128_u64[0]);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_35:
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      webrtc::ParseFailedExpectLine(v10, v9, 0, 0x61u, "candidate", 9uLL, a4);
    }

    v18 = 0;
    goto LABEL_37;
  }

  if ((v11 - v10 + 1) == v9)
  {
    v9 = (v11 - v10);
    if (v10 == v11)
    {
      v9 = 0;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v80[1].n128_u8[7] = 20;
  v17 = "Expect one line only";
  if (v80 <= "Expect one line only")
  {
    v16 = v80[1].n128_i64 + 4;
    if (&v80[1].n128_u8[4] > "Expect one line only")
    {
      goto LABEL_106;
    }
  }

  strcpy(v80, "Expect one line only");
  webrtc::ParseFailed(v10, v9, 0, v80, a4);
  v18 = 0;
  if (v80[1].n128_i8[7] < 0)
  {
    operator delete(v80[0].n128_u64[0]);
    return 0;
  }

  return v18;
}

__n128 webrtc::ParseFailed(uint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4, uint64_t a5)
{
  v10 = a2 - a3;
  if (a2 <= a3 || (v11 = memchr((a1 + a3), 10, v10)) == 0 || (v12 = &v11[-a1], &v11[-a1] == -1))
  {
    if (a2 < a3)
    {
      goto LABEL_23;
    }

    v22 = (a1 + a3);
    v23 = a2 - a3;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v12)
  {
    if (a2 <= (v12 - 1))
    {
      goto LABEL_23;
    }

    if (*(v11 - 1) == 13)
    {
      --v12;
    }
  }

  v13 = &v12[-a3];
  if (v10 < v13)
  {
    v13 = v10;
  }

  v22 = (a1 + a3);
  v23 = v13;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
LABEL_14:
    webrtc::webrtc_logging_impl::Log("\r\t\v\t\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
  }

LABEL_15:
  if (!a5)
  {
    return result;
  }

  if (!v22 && v23)
  {
    __break(1u);
LABEL_23:
    abort();
  }

  std::string::__assign_external(a5, v22, v23);
  if (*(a5 + 47) < 0)
  {
    operator delete(*(a5 + 24));
  }

  result = *a4;
  *(a5 + 40) = a4[1].n128_u64[0];
  *(a5 + 24) = result;
  a4[1].n128_u8[7] = 0;
  a4->n128_u8[0] = 0;
  return result;
}

void webrtc::ParseFailedExpectLine(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4, const std::string::value_type *__src, size_t __len, uint64_t a7)
{
  v16.__r_.__value_.__r.__words[2] = 0;
  if (&v16 <= "Expect line: " && &v16.__r_.__value_.__r.__words[1] + 5 > "Expect line: ")
  {
    goto LABEL_26;
  }

  qmemcpy(&v16, "Expect line: ", 13);
  v15 = 1;
  LOWORD(__p[0]) = a4;
  if (&v16.__r_.__value_.__r.__words[1] + 5 <= __p && &v16.__r_.__value_.__r.__words[1] + 6 > __p)
  {
    goto LABEL_26;
  }

  v16.__r_.__value_.__s.__data_[13] = a4;
  if (&v16.__r_.__value_.__r.__words[1] + 6 <= "=" && &v16.__r_.__value_.__r.__words[1] + 7 > "=")
  {
    goto LABEL_26;
  }

  HIWORD(v16.__r_.__value_.__r.__words[1]) = 61;
  *(&v16.__r_.__value_.__s + 23) = 15;
  if (!__src)
  {
    if (__len)
    {
      goto LABEL_26;
    }
  }

  if (__len > 7)
  {
    std::string::__grow_by_and_replace(&v16, 0x16uLL, __len - 7, 0xFuLL, 0xFuLL, 0, __len, __src);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_21;
  }

  if (!__len)
  {
    goto LABEL_21;
  }

  if (&v16.__r_.__value_.__r.__words[1] + 7 <= __src && &v16.__r_.__value_.__r.__words[1] + __len + 7 > __src)
  {
LABEL_26:
    __break(1u);
    return;
  }

  memmove(&v16.__r_.__value_.__r.__words[1] + 7, __src, __len);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v16.__r_.__value_.__l.__size_ = __len + 15;
  }

  else
  {
    *(&v16.__r_.__value_.__s + 23) = __len + 15;
  }

  v16.__r_.__value_.__s.__data_[__len + 15] = 0;
LABEL_21:
  v13 = v16;
  memset(&v16, 0, sizeof(v16));
  webrtc::ParseFailed(a1, a2, a3, &v13, a7);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void webrtc::ParseFailedExpectMinFieldNum(uint64_t a1, unint64_t a2, absl::numbers_internal *this, uint64_t a4)
{
  v15.__r_.__value_.__r.__words[2] = 0x1100000000000000;
  if (&v15 <= "Expects at least " && &v15.__r_.__value_.__r.__words[2] + 1 > "Expects at least ")
  {
    goto LABEL_27;
  }

  v15.__r_.__value_.__s.__data_[16] = 32;
  *&v15.__r_.__value_.__l.__data_ = *"Expects at least ";
  v7 = webrtc::StringBuilder::operator<<(&v15, this, this);
  v8 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (v7->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v8 >= 0)
  {
    size = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v7->__r_.__value_.__l.__size_;
  }

  if (v9 - size < 8)
  {
    std::string::__grow_by_and_replace(v7, v9, size - v9 + 8, size, size, 0, 8uLL, " fields.");
    goto LABEL_22;
  }

  v11 = v8 >= 0 ? v7 : v7->__r_.__value_.__r.__words[0];
  if (v11 + size <= " fields." && &v11->__r_.__value_.__r.__words[1] + size > " fields.")
  {
LABEL_27:
    __break(1u);
    return;
  }

  *(v11->__r_.__value_.__r.__words + size) = 0x2E73646C65696620;
  v13 = size + 8;
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    v7->__r_.__value_.__l.__size_ = v13;
  }

  else
  {
    *(&v7->__r_.__value_.__s + 23) = v13 & 0x7F;
  }

  v11->__r_.__value_.__s.__data_[v13] = 0;
LABEL_22:
  *__p = *&v15.__r_.__value_.__l.__data_;
  *&__p[15] = *(&v15.__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  memset(&v15, 0, sizeof(v15));
  v17 = v14;
  webrtc::ParseFailed(a1, a2, 0, __p, a4);
  if ((v17 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(*__p);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

unint64_t webrtc::GetValueFromString<int>(uint64_t a1, unint64_t a2, void **__src, size_t __len, _DWORD *a5, uint64_t a6)
{
  v12 = webrtc::string_to_number_internal::ParseSigned(__src, __len, 0xAuLL);
  if ((v13 & ((v12 + 0x80000000) >> 32 == 0)) != 0)
  {
    v14 = v12 | 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = HIDWORD(v14);
  if (!HIDWORD(v14))
  {
    v25.__r_.__value_.__r.__words[2] = 0xF00000000000000;
    if (&v25 <= "Invalid value: " && &v25.__r_.__value_.__r.__words[1] + 7 > "Invalid value: ")
    {
      goto LABEL_42;
    }

    strcpy(&v25, "Invalid value: ");
    if (!__src)
    {
      if (__len)
      {
        goto LABEL_42;
      }
    }

    if (__len > 7)
    {
      if (__len - 0x7FFFFFFFFFFFFFE8 > 0x800000000000001ELL)
      {
        operator new();
      }

LABEL_43:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (__len)
    {
      if (&v25.__r_.__value_.__r.__words[1] + 7 <= __src && &v25.__r_.__value_.__r.__words[1] + __len + 7 > __src)
      {
        goto LABEL_42;
      }

      memmove(&v25.__r_.__value_.__r.__words[1] + 7, __src, __len);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        v25.__r_.__value_.__l.__size_ = __len + 15;
      }

      else
      {
        *(&v25.__r_.__value_.__s + 23) = __len + 15;
      }

      v25.__r_.__value_.__s.__data_[__len + 15] = 0;
      v16 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = 15;
    }

    v17 = v16;
    if ((v16 & 0x80u) == 0)
    {
      v18 = 22;
    }

    else
    {
      v18 = (v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v16 & 0x80u) == 0)
    {
      size = v16;
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    if (v18 == size)
    {
      std::string::__grow_by_and_replace(&v25, v18, 1uLL, v18, v18, 0, 1uLL, ".");
      goto LABEL_37;
    }

    v20 = v25.__r_.__value_.__r.__words[0];
    if (v17 >= 0)
    {
      v20 = &v25;
    }

    v21 = v20 + size;
    if (v20 + size > "." || v21 + 1 <= ".")
    {
      *v21 = 46;
      v22 = size + 1;
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        v25.__r_.__value_.__l.__size_ = v22;
      }

      else
      {
        *(&v25.__r_.__value_.__s + 23) = v22 & 0x7F;
      }

      v20->__r_.__value_.__s.__data_[v22] = 0;
LABEL_37:
      *__p = *&v25.__r_.__value_.__l.__data_;
      *&__p[15] = *(&v25.__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      memset(&v25, 0, sizeof(v25));
      v27 = v23;
      webrtc::ParseFailed(a1, a2, 0, __p, a6);
      if (v27 < 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v15;
        }
      }

      else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v15;
      }

      operator delete(v25.__r_.__value_.__l.__data_);
      return v15;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *a5 = v14;
  return v15;
}

unint64_t webrtc::GetValueFromString<unsigned int>(uint64_t a1, unint64_t a2, void **__src, size_t __len, _DWORD *a5, uint64_t a6)
{
  v12 = webrtc::string_to_number_internal::ParseUnsigned(__src, __len, 0xAuLL);
  if ((v13 & (HIDWORD(v12) == 0)) != 0)
  {
    v14 = v12 | 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = HIDWORD(v14);
  if (!HIDWORD(v14))
  {
    v25.__r_.__value_.__r.__words[2] = 0xF00000000000000;
    if (&v25 <= "Invalid value: " && &v25.__r_.__value_.__r.__words[1] + 7 > "Invalid value: ")
    {
      goto LABEL_42;
    }

    strcpy(&v25, "Invalid value: ");
    if (!__src)
    {
      if (__len)
      {
        goto LABEL_42;
      }
    }

    if (__len > 7)
    {
      if (__len - 0x7FFFFFFFFFFFFFE8 > 0x800000000000001ELL)
      {
        operator new();
      }

LABEL_43:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (__len)
    {
      if (&v25.__r_.__value_.__r.__words[1] + 7 <= __src && &v25.__r_.__value_.__r.__words[1] + __len + 7 > __src)
      {
        goto LABEL_42;
      }

      memmove(&v25.__r_.__value_.__r.__words[1] + 7, __src, __len);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        v25.__r_.__value_.__l.__size_ = __len + 15;
      }

      else
      {
        *(&v25.__r_.__value_.__s + 23) = __len + 15;
      }

      v25.__r_.__value_.__s.__data_[__len + 15] = 0;
      v16 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = 15;
    }

    v17 = v16;
    if ((v16 & 0x80u) == 0)
    {
      v18 = 22;
    }

    else
    {
      v18 = (v25.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v16 & 0x80u) == 0)
    {
      size = v16;
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    if (v18 == size)
    {
      std::string::__grow_by_and_replace(&v25, v18, 1uLL, v18, v18, 0, 1uLL, ".");
      goto LABEL_37;
    }

    v20 = v25.__r_.__value_.__r.__words[0];
    if (v17 >= 0)
    {
      v20 = &v25;
    }

    v21 = v20 + size;
    if (v20 + size > "." || v21 + 1 <= ".")
    {
      *v21 = 46;
      v22 = size + 1;
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        v25.__r_.__value_.__l.__size_ = v22;
      }

      else
      {
        *(&v25.__r_.__value_.__s + 23) = v22 & 0x7F;
      }

      v20->__r_.__value_.__s.__data_[v22] = 0;
LABEL_37:
      *__p = *&v25.__r_.__value_.__l.__data_;
      *&__p[15] = *(&v25.__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      memset(&v25, 0, sizeof(v25));
      v27 = v23;
      webrtc::ParseFailed(a1, a2, 0, __p, a6);
      if (v27 < 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v15;
        }
      }

      else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v15;
      }

      operator delete(v25.__r_.__value_.__l.__data_);
      return v15;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *a5 = v14;
  return v15;
}

void webrtc::ParseFailed(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *__p = *a3;
  v5 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  webrtc::ParseFailed(a1, a2, 0, __p, a4);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t webrtc::GetValueFromString<unsigned short>(uint64_t a1, unint64_t a2, void **__src, size_t __len, _WORD *a5, uint64_t a6)
{
  v12 = webrtc::string_to_number_internal::ParseUnsigned(__src, __len, 0xAuLL);
  v14 = v13 & (v12 < 0x10000);
  if (v14 != 1)
  {
    v24.__r_.__value_.__r.__words[2] = 0xF00000000000000;
    if (&v24 <= "Invalid value: " && &v24.__r_.__value_.__r.__words[1] + 7 > "Invalid value: ")
    {
      goto LABEL_39;
    }

    strcpy(&v24, "Invalid value: ");
    if (!__src)
    {
      if (__len)
      {
        goto LABEL_39;
      }
    }

    if (__len > 7)
    {
      if (__len - 0x7FFFFFFFFFFFFFE8 > 0x800000000000001ELL)
      {
        operator new();
      }

LABEL_40:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (__len)
    {
      if (&v24.__r_.__value_.__r.__words[1] + 7 <= __src && &v24.__r_.__value_.__r.__words[1] + __len + 7 > __src)
      {
        goto LABEL_39;
      }

      memmove(&v24.__r_.__value_.__r.__words[1] + 7, __src, __len);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        v24.__r_.__value_.__l.__size_ = __len + 15;
      }

      else
      {
        *(&v24.__r_.__value_.__s + 23) = __len + 15;
      }

      v24.__r_.__value_.__s.__data_[__len + 15] = 0;
      v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = 15;
    }

    v16 = v15;
    if ((v15 & 0x80u) == 0)
    {
      v17 = 22;
    }

    else
    {
      v17 = (v24.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v15 & 0x80u) == 0)
    {
      size = v15;
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    if (v17 == size)
    {
      std::string::__grow_by_and_replace(&v24, v17, 1uLL, v17, v17, 0, 1uLL, ".");
      goto LABEL_34;
    }

    v19 = v24.__r_.__value_.__r.__words[0];
    if (v16 >= 0)
    {
      v19 = &v24;
    }

    v20 = v19 + size;
    if (v19 + size > "." || v20 + 1 <= ".")
    {
      *v20 = 46;
      v21 = size + 1;
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        v24.__r_.__value_.__l.__size_ = v21;
      }

      else
      {
        *(&v24.__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      v19->__r_.__value_.__s.__data_[v21] = 0;
LABEL_34:
      *__p = *&v24.__r_.__value_.__l.__data_;
      *&__p[15] = *(&v24.__r_.__value_.__r.__words[1] + 7);
      v22 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      memset(&v24, 0, sizeof(v24));
      v26 = v22;
      webrtc::ParseFailed(a1, a2, 0, __p, a6);
      if (v26 < 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v14;
        }
      }

      else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v14;
      }

      operator delete(v24.__r_.__value_.__l.__data_);
      return v14;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *a5 = v12;
  return v14;
}

void webrtc::ParseSctpPort(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 58)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

void webrtc::ParseSctpMaxMessageSize(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v2 = 0;
      do
      {
        if (*(a1 + 2 + v2) == 58)
        {
          operator new();
        }

        ++v2;
      }

      while (v2 != a2 - 2);
    }

    operator new();
  }

  abort();
}

void webrtc::WriteFmtpParameters(void *a1, std::string *a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    v5 = "";
    do
    {
      v6 = (v3 + 4);
      v7 = *(v3 + 55);
      if (v7 < 0)
      {
        v8 = v3[4];
        v7 = v3[5];
        if (v7 == 8)
        {
LABEL_15:
          if (*v8 == *"maxptime")
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v8 = v3 + 4;
        if (v7 == 8)
        {
          goto LABEL_15;
        }
      }

      if (v7 == 5)
      {
        v9 = *v8;
        v10 = *(v8 + 4);
        v11 = v9 == *"ptime" && v10 == webrtc::kCodecParamPTime[4];
        if (v11)
        {
LABEL_12:
          v12 = v3[1];
          if (v12)
          {
            goto LABEL_94;
          }

          goto LABEL_96;
        }
      }

LABEL_16:
      if (!v5)
      {
        goto LABEL_101;
      }

      v13 = strlen(v5);
      v14 = v13;
      v15 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v15 < 0)
      {
        size = a2->__r_.__value_.__l.__size_;
        v16 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v16 - size < v13)
        {
LABEL_19:
          std::string::__grow_by_and_replace(a2, v16, v13 - v16 + size, size, size, 0, v13, v5);
          v18 = *(v3 + 55);
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v16 = 22;
        size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (22 - v15 < v13)
        {
          goto LABEL_19;
        }
      }

      if (!v13)
      {
        goto LABEL_30;
      }

      v19 = a2;
      if ((v15 & 0x80000000) != 0)
      {
        v19 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v13 & 0x8000000000000000) != 0 || (v20 = v19 + size, v19 + size <= v5) && &v20[v14] > v5)
      {
LABEL_101:
        __break(1u);
        return;
      }

      memcpy(v20, v5, v14);
      v21 = size + v14;
      if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&a2->__r_.__value_.__s + 23) = v21 & 0x7F;
        v19->__r_.__value_.__s.__data_[v21] = 0;
LABEL_30:
        v18 = *(v3 + 55);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_49;
      }

      a2->__r_.__value_.__l.__size_ = v21;
      v19->__r_.__value_.__s.__data_[v21] = 0;
      v18 = *(v3 + 55);
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v22 = *(v3 + 79);
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_50;
      }

LABEL_49:
      v6 = v3[4];
      v18 = v3[5];
      v22 = *(v3 + 79);
      if ((v22 & 0x8000000000000000) == 0)
      {
LABEL_32:
        v23 = (v3 + 7);
        if (!v18)
        {
          goto LABEL_51;
        }

        goto LABEL_33;
      }

LABEL_50:
      v23 = v3[7];
      v22 = v3[8];
      if (!v18)
      {
LABEL_51:
        if (!v23 && v22)
        {
          goto LABEL_101;
        }

        v32 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (v32 < 0)
        {
          v34 = a2->__r_.__value_.__l.__size_;
          v33 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v33 - v34 < v22)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v33 = 22;
          v34 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
          if (22 - v32 < v22)
          {
            goto LABEL_80;
          }
        }

        if (!v22)
        {
          goto LABEL_81;
        }

        v35 = a2;
        if ((v32 & 0x80000000) != 0)
        {
          v35 = a2->__r_.__value_.__r.__words[0];
        }

        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }

        v36 = v35 + v34;
        if (v35 + v34 <= v23 && &v36[v22] > v23)
        {
          goto LABEL_101;
        }

        memmove(v36, v23, v22);
        v37 = v34 + v22;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v37;
          v35->__r_.__value_.__s.__data_[v37] = 0;
          v5 = ";";
          v12 = v3[1];
          if (v12)
          {
            goto LABEL_94;
          }

          goto LABEL_96;
        }

LABEL_91:
        *(&a2->__r_.__value_.__s + 23) = v37 & 0x7F;
        v35->__r_.__value_.__s.__data_[v37] = 0;
        v5 = ";";
        v12 = v3[1];
        if (v12)
        {
          goto LABEL_94;
        }

        goto LABEL_96;
      }

LABEL_33:
      if (!v6)
      {
        goto LABEL_101;
      }

      v24 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v24 & 0x8000000000000000) != 0)
      {
        v24 = a2->__r_.__value_.__l.__size_;
        v26 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v26 - v24 < v18)
        {
LABEL_39:
          std::string::__grow_by_and_replace(a2, v26, v24 + v18 - v26, v24, v24, 0, v18, v6);
          v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        }

        v25 = a2->__r_.__value_.__r.__words[0];
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v25 = a2;
        v26 = 22;
        if (22 - v24 < v18)
        {
          goto LABEL_39;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }
      }

      v28 = v25 + v24;
      if (v25 + v24 <= v6 && &v28[v18] > v6)
      {
        goto LABEL_101;
      }

      memmove(v28, v6, v18);
      v29 = v24 + v18;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v29;
        v25->__r_.__value_.__s.__data_[v29] = 0;
        v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((v27 & 0x8000000000000000) != 0)
        {
LABEL_67:
          v27 = a2->__r_.__value_.__l.__size_;
          v31 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v31 == v27)
          {
            goto LABEL_68;
          }

          v30 = a2->__r_.__value_.__r.__words[0];
          goto LABEL_71;
        }
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v29 & 0x7F;
        v25->__r_.__value_.__s.__data_[v29] = 0;
        v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

LABEL_46:
      v30 = a2;
      if (v27 == 22)
      {
        v31 = 22;
LABEL_68:
        std::string::__grow_by_and_replace(a2, v31, 1uLL, v31, v31, 0, 1uLL, "=");
        if (v23)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

LABEL_71:
      v38 = v30 + v27;
      if (v30 + v27 <= "=" && v38 + 1 > "=")
      {
        goto LABEL_101;
      }

      *v38 = 61;
      v39 = v27 + 1;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v39;
        v30->__r_.__value_.__s.__data_[v39] = 0;
        if (v23)
        {
          goto LABEL_78;
        }
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v39 & 0x7F;
        v30->__r_.__value_.__s.__data_[v39] = 0;
        if (v23)
        {
          goto LABEL_78;
        }
      }

LABEL_77:
      if (v22)
      {
        goto LABEL_101;
      }

LABEL_78:
      v40 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v40 < 0)
      {
        v34 = a2->__r_.__value_.__l.__size_;
        v33 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v33 - v34 < v22)
        {
LABEL_80:
          std::string::__grow_by_and_replace(a2, v33, v22 - v33 + v34, v34, v34, 0, v22, v23);
LABEL_81:
          v5 = ";";
          v12 = v3[1];
          if (v12)
          {
            goto LABEL_94;
          }

          goto LABEL_96;
        }
      }

      else
      {
        v33 = 22;
        v34 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (22 - v40 < v22)
        {
          goto LABEL_80;
        }
      }

      if (!v22)
      {
        goto LABEL_81;
      }

      v35 = a2;
      if ((v40 & 0x80000000) != 0)
      {
        v35 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      v41 = v35 + v34;
      if (v35 + v34 <= v23 && &v41[v22] > v23)
      {
        goto LABEL_101;
      }

      memmove(v41, v23, v22);
      v37 = v34 + v22;
      if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_91;
      }

      a2->__r_.__value_.__l.__size_ = v37;
      v35->__r_.__value_.__s.__data_[v37] = 0;
      v5 = ";";
      v12 = v3[1];
      if (v12)
      {
        do
        {
LABEL_94:
          v42 = v12;
          v12 = *v12;
        }

        while (v12);
        goto LABEL_3;
      }

      do
      {
LABEL_96:
        v42 = v3[2];
        v11 = *v42 == v3;
        v3 = v42;
      }

      while (!v11);
LABEL_3:
      v3 = v42;
    }

    while (v42 != v2);
  }
}

void webrtc::AddFmtpLine(uint64_t a1, std::string *a2)
{
  memset(&v33, 0, sizeof(v33));
  v4 = *(a1 + 12);
  webrtc::InitLine(97, "fmtp", 4uLL, &v33);
  size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
    v7 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 == v33.__r_.__value_.__l.__size_)
    {
      goto LABEL_5;
    }

    v8 = v33.__r_.__value_.__r.__words[0];
    v9 = (v33.__r_.__value_.__r.__words[0] + v33.__r_.__value_.__l.__size_);
    if (v33.__r_.__value_.__r.__words[0] + v33.__r_.__value_.__l.__size_ > ":")
    {
      goto LABEL_10;
    }

LABEL_9:
    if (v9 + 1 > ":")
    {
      goto LABEL_70;
    }

    goto LABEL_10;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) == 22)
  {
    v7 = 22;
LABEL_5:
    std::string::__grow_by_and_replace(&v33, v7, 1uLL, v7, v7, 0, 1uLL, ":");
    goto LABEL_14;
  }

  v8 = &v33;
  v9 = &v33 + SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  if (v9 <= ":")
  {
    goto LABEL_9;
  }

LABEL_10:
  *v9 = 58;
  v10 = size + 1;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    v33.__r_.__value_.__l.__size_ = v10;
  }

  else
  {
    *(&v33.__r_.__value_.__s + 23) = v10 & 0x7F;
  }

  v8->__r_.__value_.__s.__data_[v10] = 0;
LABEL_14:
  webrtc::StringBuilder::operator<<(&v33, v4, v5);
  v11 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = 22;
  }

  else
  {
    v12 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v33.__r_.__value_.__l.__size_;
  }

  if (v12 == v11)
  {
    std::string::__grow_by_and_replace(&v33, v12, 1uLL, v12, v12, 0, 1uLL, " ");
    webrtc::WriteFmtpParameters((a1 + 168), &v33);
    if (!v13)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v33;
    }

    else
    {
      v14 = v33.__r_.__value_.__r.__words[0];
    }

    v15 = v14 + v11;
    if (v14 + v11 <= " " && v15 + 1 > " ")
    {
      goto LABEL_70;
    }

    *v15 = 32;
    v16 = v11 + 1;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      v33.__r_.__value_.__l.__size_ = v16;
      v14->__r_.__value_.__s.__data_[v16] = 0;
      webrtc::WriteFmtpParameters((a1 + 168), &v33);
      if (!v18)
      {
        goto LABEL_64;
      }
    }

    else
    {
      *(&v33.__r_.__value_.__s + 23) = v16 & 0x7F;
      v14->__r_.__value_.__s.__data_[v16] = 0;
      webrtc::WriteFmtpParameters((a1 + 168), &v33);
      if (!v17)
      {
        goto LABEL_64;
      }
    }
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v33;
  }

  else
  {
    v19 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v33.__r_.__value_.__l.__size_;
  }

  if (!a2)
  {
LABEL_64:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_59:
    operator delete(v33.__r_.__value_.__l.__data_);
    return;
  }

  if (!v19 && v20)
  {
    goto LABEL_70;
  }

  v21 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v21 < 0)
  {
    v23 = a2->__r_.__value_.__l.__size_;
    v22 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v22 - v23 < v20)
    {
LABEL_42:
      std::string::__grow_by_and_replace(a2, v22, v20 - v22 + v23, v23, v23, 0, v20, v19);
      v24 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

LABEL_56:
      if (v24 - 21 >= 2)
      {
        v26 = a2;
        v27 = a2 + v24;
        if (a2 + v24 > "\r\n")
        {
          goto LABEL_62;
        }

LABEL_61:
        if (v27 + 2 <= "\r\n")
        {
          goto LABEL_62;
        }

LABEL_70:
        __break(1u);
        return;
      }

      v25 = 22;
LABEL_58:
      std::string::__grow_by_and_replace(a2, v25, v24 - v25 + 2, v24, v24, 0, 2uLL, "\r\n");
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v22 = 22;
    v23 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (22 - v21 < v20)
    {
      goto LABEL_42;
    }
  }

  if (v20)
  {
    v28 = a2;
    if ((v21 & 0x80000000) != 0)
    {
      v28 = a2->__r_.__value_.__r.__words[0];
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    v29 = v28 + v23;
    if ((v28 + v23) <= v19 && &v29[v20] > v19)
    {
      goto LABEL_70;
    }

    v30 = v20;
    memmove(v29, v19, v20);
    v31 = v23 + v30;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = v31;
      v28->__r_.__value_.__s.__data_[v31] = 0;
      v24 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_43;
    }

    *(&a2->__r_.__value_.__s + 23) = v31 & 0x7F;
    v28->__r_.__value_.__s.__data_[v31] = 0;
  }

  v24 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v24 & 0x8000000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_43:
  v24 = a2->__r_.__value_.__l.__size_;
  v25 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v25 - v24 < 2)
  {
    goto LABEL_58;
  }

  v26 = a2->__r_.__value_.__r.__words[0];
  v27 = (a2->__r_.__value_.__r.__words[0] + v24);
  if (v27 <= "\r\n")
  {
    goto LABEL_61;
  }

LABEL_62:
  *v27 = 2573;
  v32 = v24 + 2;
  if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&a2->__r_.__value_.__s + 23) = v32 & 0x7F;
    v26->__r_.__value_.__s.__data_[v32] = 0;
    goto LABEL_64;
  }

  a2->__r_.__value_.__l.__size_ = v32;
  v26->__r_.__value_.__s.__data_[v32] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_59;
  }
}

void webrtc::AddRtcpFbLines(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 192);
  v3 = *(a1 + 200);
  if (v2 != v3)
  {
    while (1)
    {
      memset(&v60, 0, sizeof(v60));
      v7 = *(a1 + 12);
      webrtc::InitLine(97, "rtcp-fb", 7uLL, &v60);
      size = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = v60.__r_.__value_.__l.__size_;
        v10 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v10 == v60.__r_.__value_.__l.__size_)
        {
          goto LABEL_11;
        }

        v11 = v60.__r_.__value_.__r.__words[0];
        v12 = (v60.__r_.__value_.__r.__words[0] + v60.__r_.__value_.__l.__size_);
        if (v60.__r_.__value_.__r.__words[0] + v60.__r_.__value_.__l.__size_ <= ":")
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) == 22)
        {
          v10 = 22;
LABEL_11:
          std::string::__grow_by_and_replace(&v60, v10, 1uLL, v10, v10, 0, 1uLL, ":");
          if (v7 != -1)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }

        v11 = &v60;
        v12 = &v60 + SHIBYTE(v60.__r_.__value_.__r.__words[2]);
        if (v12 <= ":")
        {
LABEL_18:
          if (v12 + 1 > ":")
          {
            goto LABEL_151;
          }
        }
      }

      *v12 = 58;
      v13 = size + 1;
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        v60.__r_.__value_.__l.__size_ = v13;
        v11->__r_.__value_.__s.__data_[v13] = 0;
        if (v7 != -1)
        {
LABEL_12:
          webrtc::StringBuilder::operator<<(&v60, v7, v8);
          goto LABEL_36;
        }
      }

      else
      {
        *(&v60.__r_.__value_.__s + 23) = v13 & 0x7F;
        v11->__r_.__value_.__s.__data_[v13] = 0;
        if (v7 != -1)
        {
          goto LABEL_12;
        }
      }

LABEL_21:
      v14 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v14 = v60.__r_.__value_.__l.__size_;
        v15 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v15 == v60.__r_.__value_.__l.__size_)
        {
          goto LABEL_27;
        }

        v16 = v60.__r_.__value_.__r.__words[0];
        v17 = (v60.__r_.__value_.__r.__words[0] + v60.__r_.__value_.__l.__size_);
        if (v60.__r_.__value_.__r.__words[0] + v60.__r_.__value_.__l.__size_ <= "*")
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) == 22)
        {
          v15 = 22;
LABEL_27:
          std::string::__grow_by_and_replace(&v60, v15, 1uLL, v15, v15, 0, 1uLL, "*");
          goto LABEL_36;
        }

        v16 = &v60;
        v17 = &v60 + SHIBYTE(v60.__r_.__value_.__r.__words[2]);
        if (v17 <= "*")
        {
LABEL_31:
          if (v17 + 1 > "*")
          {
            goto LABEL_151;
          }
        }
      }

      *v17 = 42;
      v18 = v14 + 1;
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        v60.__r_.__value_.__l.__size_ = v18;
      }

      else
      {
        *(&v60.__r_.__value_.__s + 23) = v18 & 0x7F;
      }

      v16->__r_.__value_.__s.__data_[v18] = 0;
LABEL_36:
      v19 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = 22;
      }

      else
      {
        v20 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v60.__r_.__value_.__l.__size_;
      }

      if (v20 == v19)
      {
        std::string::__grow_by_and_replace(&v60, v20, 1uLL, v20, v20, 0, 1uLL, " ");
        v21 = v2[23];
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v60;
        }

        else
        {
          v24 = v60.__r_.__value_.__r.__words[0];
        }

        v25 = v24 + v19;
        if (v24 + v19 <= " " && v25 + 1 > " ")
        {
          goto LABEL_151;
        }

        *v25 = 32;
        v26 = v19 + 1;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v60.__r_.__value_.__l.__size_ = v26;
          v24->__r_.__value_.__s.__data_[v26] = 0;
          v21 = v2[23];
          if ((v21 & 0x8000000000000000) == 0)
          {
LABEL_43:
            v22 = v21 == 0;
            v23 = v2;
            goto LABEL_53;
          }
        }

        else
        {
          *(&v60.__r_.__value_.__s + 23) = v26 & 0x7F;
          v24->__r_.__value_.__s.__data_[v26] = 0;
          v21 = v2[23];
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }
        }
      }

      v23 = *v2;
      v21 = *(v2 + 1);
      v22 = v21 == 0;
      if (!*v2 && v21)
      {
        goto LABEL_151;
      }

LABEL_53:
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = 22;
      }

      else
      {
        v27 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v60.__r_.__value_.__l.__size_;
      }

      if (v27 - v28 >= v21)
      {
        if (!v22)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v60;
          }

          else
          {
            v29 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_151;
          }

          v30 = v29 + v28;
          if (v29 + v28 <= v23 && &v30[v21] > v23)
          {
            goto LABEL_151;
          }

          v31 = v21;
          memmove(v30, v23, v21);
          v32 = v28 + v31;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            v60.__r_.__value_.__l.__size_ = v28 + v31;
          }

          else
          {
            *(&v60.__r_.__value_.__s + 23) = v32 & 0x7F;
          }

          v29->__r_.__value_.__s.__data_[v32] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v27, v28 + v21 - v27, v28, v28, 0, v21, v23);
      }

      if ((v2[47] & 0x8000000000000000) != 0)
      {
        if (!*(v2 + 4))
        {
          goto LABEL_116;
        }
      }

      else if (!v2[47])
      {
        goto LABEL_116;
      }

      v33 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = 22;
      }

      else
      {
        v34 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v60.__r_.__value_.__l.__size_;
      }

      if (v34 == v33)
      {
        std::string::__grow_by_and_replace(&v60, v34, 1uLL, v34, v34, 0, 1uLL, " ");
        v35 = v2[47];
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v60;
        }

        else
        {
          v38 = v60.__r_.__value_.__r.__words[0];
        }

        v39 = v38 + v33;
        if (v38 + v33 <= " " && v39 + 1 > " ")
        {
          goto LABEL_151;
        }

        *v39 = 32;
        v40 = v33 + 1;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v60.__r_.__value_.__l.__size_ = v40;
          v38->__r_.__value_.__s.__data_[v40] = 0;
          v35 = v2[47];
          if ((v35 & 0x8000000000000000) == 0)
          {
LABEL_85:
            v36 = v2 + 24;
            v37 = v35 == 0;
            goto LABEL_95;
          }
        }

        else
        {
          *(&v60.__r_.__value_.__s + 23) = v40 & 0x7F;
          v38->__r_.__value_.__s.__data_[v40] = 0;
          v35 = v2[47];
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }
        }
      }

      v36 = *(v2 + 3);
      v35 = *(v2 + 4);
      v37 = v35 == 0;
      if (!v36 && v35)
      {
        goto LABEL_151;
      }

LABEL_95:
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = 22;
      }

      else
      {
        v41 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v60.__r_.__value_.__l.__size_;
      }

      if (v41 - v42 >= v35)
      {
        if (!v37)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v60;
          }

          else
          {
            v43 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_151;
          }

          v44 = v43 + v42;
          if (v43 + v42 <= v36 && &v44[v35] > v36)
          {
            goto LABEL_151;
          }

          v45 = v35;
          memmove(v44, v36, v35);
          v46 = v42 + v45;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            v60.__r_.__value_.__l.__size_ = v42 + v45;
          }

          else
          {
            *(&v60.__r_.__value_.__s + 23) = v46 & 0x7F;
          }

          v43->__r_.__value_.__s.__data_[v46] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v41, v42 + v35 - v41, v42, v42, 0, v35, v36);
      }

LABEL_116:
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v60;
      }

      else
      {
        v47 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v60.__r_.__value_.__l.__size_;
      }

      if (!a2)
      {
        goto LABEL_5;
      }

      if (!v47 && v48)
      {
        goto LABEL_151;
      }

      v49 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v49 < 0)
      {
        v51 = a2->__r_.__value_.__l.__size_;
        v50 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v50 - v51 < v48)
        {
LABEL_127:
          std::string::__grow_by_and_replace(a2, v50, v48 - v50 + v51, v51, v51, 0, v48, v47);
          goto LABEL_139;
        }
      }

      else
      {
        v50 = 22;
        v51 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (22 - v49 < v48)
        {
          goto LABEL_127;
        }
      }

      if (v48)
      {
        v52 = a2;
        if ((v49 & 0x80000000) != 0)
        {
          v52 = a2->__r_.__value_.__r.__words[0];
        }

        if ((v48 & 0x8000000000000000) != 0 || (v53 = v52 + v51, (v52 + v51) <= v47) && &v53[v48] > v47)
        {
LABEL_151:
          __break(1u);
          return;
        }

        v54 = v48;
        memmove(v53, v47, v48);
        v55 = v51 + v54;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v55;
        }

        else
        {
          *(&a2->__r_.__value_.__s + 23) = v55 & 0x7F;
        }

        v52->__r_.__value_.__s.__data_[v55] = 0;
      }

LABEL_139:
      v56 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v56 & 0x8000000000000000) != 0)
      {
        v56 = a2->__r_.__value_.__l.__size_;
        v6 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v6 - v56 >= 2)
        {
          v57 = a2->__r_.__value_.__r.__words[0];
          v58 = (a2->__r_.__value_.__r.__words[0] + v56);
          if (v58 <= "\r\n")
          {
            goto LABEL_145;
          }

          goto LABEL_146;
        }
      }

      else
      {
        if (v56 - 21 >= 2)
        {
          v57 = a2;
          v58 = a2 + v56;
          if (a2 + v56 <= "\r\n")
          {
LABEL_145:
            if (v58 + 2 > "\r\n")
            {
              goto LABEL_151;
            }
          }

LABEL_146:
          *v58 = 2573;
          v59 = v56 + 2;
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            a2->__r_.__value_.__l.__size_ = v59;
          }

          else
          {
            *(&a2->__r_.__value_.__s + 23) = v59 & 0x7F;
          }

          v57->__r_.__value_.__s.__data_[v59] = 0;
          goto LABEL_5;
        }

        v6 = 22;
      }

      std::string::__grow_by_and_replace(a2, v6, v56 - v6 + 2, v56, v56, 0, 2uLL, "\r\n");
LABEL_5:
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
        v2 += 48;
        if (v2 == v3)
        {
          return;
        }
      }

      else
      {
        v2 += 48;
        if (v2 == v3)
        {
          return;
        }
      }
    }
  }
}

uint64_t webrtc::ParseConnectionData(unsigned __int8 *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if ((webrtc::tokenize_first(a1, a2, 61, &v23, &v20) & 1) == 0)
  {
    operator new();
  }

  if (v22 >= 0)
  {
    v8 = &v20;
  }

  else
  {
    v8 = v20;
  }

  if (v22 >= 0)
  {
    v9 = HIBYTE(v22);
  }

  else
  {
    v9 = v21;
  }

  if (!webrtc::tokenize_first(v8, v9, 32, &v23, &v20))
  {
    goto LABEL_16;
  }

  if (SHIBYTE(v25) < 0)
  {
    if (v24 == 2 && *v23 == 20041)
    {
      goto LABEL_22;
    }

LABEL_16:
    operator new();
  }

  if (SHIBYTE(v25) != 2 || v23 != 20041)
  {
    goto LABEL_16;
  }

LABEL_22:
  v11 = &v20;
  if (v22 >= 0)
  {
    v12 = &v20;
  }

  else
  {
    v12 = v20;
  }

  if (v22 >= 0)
  {
    v13 = HIBYTE(v22);
  }

  else
  {
    v13 = v21;
  }

  if ((webrtc::tokenize_first(v12, v13, 32, &v23, &v20) & 1) == 0)
  {
    operator new();
  }

  if (v22 >= 0)
  {
    v14 = HIBYTE(v22);
  }

  else
  {
    v14 = v21;
  }

  if (v22 < 0)
  {
    v11 = v20;
  }

  if (v14)
  {
    v15 = memchr(v11, 47, v14);
    if (v15)
    {
      if (v15 - v11 != -1)
      {
        operator new();
      }
    }
  }

  webrtc::SocketAddress::SetIP(a3, v11, v14);
  v16 = *(a3 + 32);
  if (v16 == 2)
  {
    if (!std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "IP4"))
    {
      goto LABEL_45;
    }

    v16 = *(a3 + 32);
  }

  if (v16 != 30 || std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "IP6"))
  {
    v17 = 1;
    goto LABEL_17;
  }

LABEL_45:
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  *(a3 + 64) = 0;
  memset(v26, 0, sizeof(v26));
  *(a3 + 32) = 0;
  *(a3 + 36) = *&v26[4];
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  std::string::basic_string[abi:sn200100]<0>(v18, "Failed to parse the connection data. The address type is mismatching.");
  webrtc::ParseFailed(a1, a2, v18, a4);
  v17 = 0;
  if (v19 < 0)
  {
    operator delete(v18[0]);
    v17 = 0;
  }

LABEL_17:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_21:
    operator delete(v23);
    return v17;
  }

  if (SHIBYTE(v25) < 0)
  {
    goto LABEL_21;
  }

  return v17;
}

uint64_t webrtc::HasDuplicateMsidLines(webrtc *this, webrtc::SessionDescription *a2)
{
  v74[0] = 0;
  v74[1] = 0;
  v73 = v74;
  if (this == a2)
  {
LABEL_152:
    v62 = 0;
    goto LABEL_153;
  }

  while (1)
  {
    v65 = this;
    v2 = *(this + 4);
    v4 = *(v2 + 96);
    v3 = *(v2 + 104);
    v69 = v3;
LABEL_7:
    if (v4 != v3)
    {
      break;
    }

    this = (v65 + 40);
    if ((v65 + 40) == a2)
    {
      goto LABEL_152;
    }
  }

  v5 = *(v4 + 12);
  if (v5 == *(v4 + 13))
  {
    *(&v70.__r_.__value_.__s + 23) = 0;
    v70.__r_.__value_.__s.__data_[0] = 0;
  }

  else if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v70.__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&v70.__r_.__value_.__l.__data_ = v6;
  }

  v71 = v70;
  memset(&v70, 0, sizeof(v70));
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
      v8 = v74[0];
      if (!v74[0])
      {
LABEL_145:
        operator new();
      }
    }

    else
    {
      v8 = v74[0];
      if (!v74[0])
      {
        goto LABEL_145;
      }
    }
  }

  else
  {
    v7 = *v4;
    __p.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&__p.__r_.__value_.__l.__data_ = v7;
    v8 = v74[0];
    if (!v74[0])
    {
      goto LABEL_145;
    }
  }

  v67 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v71;
  }

  else
  {
    v9 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  v68 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v66 = __p.__r_.__value_.__r.__words[0];
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
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  v13 = v74;
  v14 = v8;
  do
  {
    while (1)
    {
      v16 = v14;
      v17 = v13;
      v19 = v14 + 32;
      v18 = *(v14 + 32);
      v20 = *(v19 + 23);
      v21 = (v20 >= 0 ? v19 : v18);
      v22 = v20 >= 0 ? *(v19 + 23) : *(v19 + 8);
      v23 = size >= v22 ? v22 : size;
      v24 = memcmp(v21, v9, v23);
      if (!v24)
      {
        break;
      }

LABEL_42:
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_31:
      v15 = 1;
      v13 = v17;
      v14 = *(v16 + 8);
      if (!v14)
      {
        goto LABEL_60;
      }
    }

    if (v22 == size)
    {
      v25 = *(v16 + 79);
      if (v25 >= 0)
      {
        v26 = (v16 + 56);
      }

      else
      {
        v26 = *(v16 + 56);
      }

      if (v25 >= 0)
      {
        v27 = *(v16 + 79);
      }

      else
      {
        v27 = *(v16 + 64);
      }

      if (v12 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v12;
      }

      v24 = memcmp(v26, p_p, v28);
      if (v24)
      {
        goto LABEL_42;
      }

      if (v27 < v12)
      {
        goto LABEL_31;
      }
    }

    else if (v22 < size)
    {
      goto LABEL_31;
    }

LABEL_43:
    v15 = 0;
    v13 = v16;
    v14 = *v16;
  }

  while (*v16);
LABEL_60:
  if (v13 == v74)
  {
    goto LABEL_101;
  }

  v29 = v17 + 4;
  if (v15)
  {
    v30 = v17;
  }

  else
  {
    v30 = v16;
  }

  if (!v15)
  {
    v29 = v19;
  }

  v31 = *(v30 + 55);
  v33 = v30[4];
  v32 = v30[5];
  if ((v31 & 0x80u) == 0)
  {
    v34 = v29;
  }

  else
  {
    v34 = v33;
  }

  if ((v31 & 0x80u) == 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = v32;
  }

  if (v35 >= size)
  {
    v36 = size;
  }

  else
  {
    v36 = v35;
  }

  v37 = memcmp(v9, v34, v36);
  if (v37)
  {
    if (v37 < 0)
    {
      goto LABEL_101;
    }

    goto LABEL_149;
  }

  if (size == v35)
  {
    if (v15)
    {
      v38 = v17;
    }

    else
    {
      v38 = v16;
    }

    v41 = v38[7];
    v39 = v38 + 7;
    v40 = v41;
    v42 = *(v39 + 23);
    if (v42 >= 0)
    {
      v43 = v39;
    }

    else
    {
      v43 = v40;
    }

    if (v42 >= 0)
    {
      v44 = *(v39 + 23);
    }

    else
    {
      v44 = v39[1];
    }

    if (v44 >= v12)
    {
      v45 = v12;
    }

    else
    {
      v45 = v44;
    }

    v46 = memcmp(p_p, v43, v45);
    if (v46)
    {
      if (v46 < 0)
      {
        goto LABEL_101;
      }

      goto LABEL_149;
    }

    if (v12 >= v44)
    {
      goto LABEL_149;
    }

LABEL_101:
    while (2)
    {
      while (2)
      {
        v47 = v8;
        v48 = *(v8 + 55);
        if (v48 >= 0)
        {
          v49 = (v8 + 32);
        }

        else
        {
          v49 = *(v8 + 32);
        }

        if (v48 >= 0)
        {
          v50 = *(v8 + 55);
        }

        else
        {
          v50 = *(v8 + 40);
        }

        if (v50 >= size)
        {
          v51 = size;
        }

        else
        {
          v51 = v50;
        }

        v52 = memcmp(v9, v49, v51);
        if (v52)
        {
LABEL_111:
          if (v52 < 0)
          {
            goto LABEL_100;
          }
        }

        else if (size == v50)
        {
          v54 = *(v47 + 79);
          if (v54 >= 0)
          {
            v55 = (v47 + 56);
          }

          else
          {
            v55 = *(v47 + 56);
          }

          if (v54 >= 0)
          {
            v56 = *(v47 + 79);
          }

          else
          {
            v56 = *(v47 + 64);
          }

          if (v56 >= v12)
          {
            v57 = v12;
          }

          else
          {
            v57 = v56;
          }

          v52 = memcmp(p_p, v55, v57);
          if (v52)
          {
            goto LABEL_111;
          }

          if (v12 < v56)
          {
            goto LABEL_100;
          }
        }

        else if (size < v50)
        {
LABEL_100:
          v8 = *v47;
          if (!*v47)
          {
            goto LABEL_145;
          }

          continue;
        }

        break;
      }

      v53 = memcmp(v49, v9, v51);
      if (v53)
      {
LABEL_113:
        if ((v53 & 0x80000000) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_144;
      }

      if (v50 == size)
      {
        v58 = *(v47 + 79);
        if (v58 >= 0)
        {
          v59 = (v47 + 56);
        }

        else
        {
          v59 = *(v47 + 56);
        }

        if (v58 >= 0)
        {
          v60 = *(v47 + 79);
        }

        else
        {
          v60 = *(v47 + 64);
        }

        if (v12 >= v60)
        {
          v61 = v60;
        }

        else
        {
          v61 = v12;
        }

        v53 = memcmp(v59, p_p, v61);
        if (v53)
        {
          goto LABEL_113;
        }

        if (v60 >= v12)
        {
          goto LABEL_146;
        }

LABEL_144:
        v8 = *(v47 + 8);
        if (!v8)
        {
          goto LABEL_145;
        }

        continue;
      }

      break;
    }

    if (v50 < size)
    {
      goto LABEL_144;
    }

LABEL_146:
    if ((v68 & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_148;
      }
    }

    else if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_148:
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    v4 += 9;
    v3 = v69;
    goto LABEL_7;
  }

  if (size < v35)
  {
    goto LABEL_101;
  }

LABEL_149:
  if (v68 < 0)
  {
    operator delete(v66);
    if ((*(&v71.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_155;
    }
  }

  else
  {
    if ((v67 & 0x80) == 0)
    {
      goto LABEL_151;
    }

LABEL_155:
    operator delete(v71.__r_.__value_.__l.__data_);
  }

LABEL_151:
  v62 = 1;
LABEL_153:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v73, v74[0]);
  return v62;
}

void webrtc::AddOrReplaceCodec(webrtc *this, webrtc::MediaContentDescription *a2, const webrtc::Codec *a3)
{
  v3 = *(this + 35);
  v4 = *(this + 36);
  if (v4 != v3)
  {
    if (0x84BDA12F684BDA13 * ((v4 - v3) >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

LABEL_9:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v4 >= *(this + 37))
  {
    std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(this + 35);
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(this + 36) = webrtc::Codec::Codec(v4, a2) + 216;
}

void webrtc::AddAudioAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *(a4 + 280);
    v4 = *(a4 + 288);
    if (v4 != v5)
    {
      if (0x84BDA12F684BDA13 * ((v4 - v5) >> 3) < 0x12F684BDA12F685)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((a4 + 280), 0, 0, 0);
  }
}

void webrtc::UpdateCodec(int a1, void **a2, size_t a3, unsigned int a4, uint64_t a5, webrtc *a6)
{
  v32[5] = *MEMORY[0x277D85DE8];
  v12 = (*(*a6 + 16))(a6);
  v14 = *(a6 + 35);
  v15 = *(a6 + 36);
  if (v14 != v15)
  {
    while (*(v14 + 3) != a1)
    {
      v14 = (v14 + 216);
      if (v14 == v15)
      {
        goto LABEL_4;
      }
    }

    webrtc::Codec::Codec(&v19, v14);
    goto LABEL_9;
  }

LABEL_4:
  if (v12)
  {
    HIBYTE(v18) = 0;
    LOBYTE(__p[0]) = 0;
    webrtc::CreateVideoCodec(a1, __p, &v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_9:
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_10;
    }

LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v19 = &unk_288291428;
  v20 = 0;
  v21 = a1;
  *&v22 = 0;
  HIBYTE(v23) = 0;
  v24 = 8000;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v32;
  memset(v32, 0, 40);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v18) = a3;
  v16 = (__p + a3);
  if (__p <= a2 && v16 > a2)
  {
    __break(1u);
  }

  if (a3)
  {
    memmove(__p, a2, a3);
  }

  *v16 = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v22 = *__p;
  v23 = v18;
  v24 = a4;
  v25 = a5;
  webrtc::AddOrReplaceCodec(a6, &v19, v13);
  webrtc::Codec::~Codec(&v19);
}

void webrtc::UpdateCodec(int a1, void **a2, size_t a3, webrtc *a4)
{
  v28[5] = *MEMORY[0x277D85DE8];
  v8 = (*(*a4 + 16))(a4);
  v10 = *(a4 + 35);
  v11 = *(a4 + 36);
  if (v10 != v11)
  {
    while (*(v10 + 3) != a1)
    {
      v10 = (v10 + 216);
      if (v10 == v11)
      {
        goto LABEL_4;
      }
    }

    webrtc::Codec::Codec(&v15, v10);
    goto LABEL_9;
  }

LABEL_4:
  if (v8)
  {
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    webrtc::CreateVideoCodec(a1, __p, &v15);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_9:
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_10;
    }

LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = &unk_288291428;
  v16 = 0;
  v17 = a1;
  *&v18 = 0;
  HIBYTE(v19) = 0;
  v20 = 8000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v28;
  memset(v28, 0, 40);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v14) = a3;
  v12 = (__p + a3);
  if (__p <= a2 && v12 > a2)
  {
    __break(1u);
  }

  if (a3)
  {
    memmove(__p, a2, a3);
  }

  *v12 = 0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  v18 = *__p;
  v19 = v14;
  webrtc::AddOrReplaceCodec(a4, &v15, v9);
  webrtc::Codec::~Codec(&v15);
}

void webrtc::BuildRtpContentAttributes(webrtc::MediaContentDescription *a1, int a2, char a3, std::string *a4)
{
  v563 = a4;
  LODWORD(v4) = a2;
  memset(&v565, 0, sizeof(v565));
  v557 = a1;
  if (*(a1 + 50) == 2)
  {
    webrtc::InitLine(97, "extmap-allow-mixed", 0x12uLL, &v565);
    v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
    p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
    size = v565.__r_.__value_.__l.__size_;
    v8 = (p_p & 0x80000000) == 0 ? &v565 : v565.__r_.__value_.__r.__words[0];
    v9 = (p_p & 0x80000000) == 0 ? HIBYTE(v565.__r_.__value_.__r.__words[2]) : v565.__r_.__value_.__l.__size_;
    v10 = v563;
    if (v563)
    {
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9 == 0;
      }

      if (!v11)
      {
        goto LABEL_1855;
      }

      v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      if ((v5 & 0x8000000000000000) != 0)
      {
        v13 = v563->__r_.__value_.__l.__size_;
        v12 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        p_p = v12 - v13;
        if (v12 - v13 < v9)
        {
LABEL_16:
          std::string::__grow_by_and_replace(v563, v12, v9 - v12 + v13, v13, v13, 0, v9, v8);
          v10 = v563;
          v14 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_17;
          }

LABEL_30:
          if (v14 - 21 >= 2)
          {
            v5 = v10;
            p_p = v10 + v14;
            if (v10 + v14 > "\r\n")
            {
LABEL_36:
              *p_p = 2573;
              v22 = v14 + 2;
              if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
              {
                v10->__r_.__value_.__l.__size_ = v22;
                *(v5 + v22) = 0;
                v20 = *(v557 + 8);
                v21 = *(v557 + 9);
                memset(&v567, 0, sizeof(v567));
                if (v20 == v21)
                {
                  goto LABEL_169;
                }

                goto LABEL_39;
              }

              *(&v10->__r_.__value_.__s + 23) = v22 & 0x7F;
              *(v5 + v22) = 0;
              goto LABEL_38;
            }

LABEL_35:
            size = p_p + 2;
            v10 = v563;
            if (p_p + 2 > "\r\n")
            {
              goto LABEL_1855;
            }

            goto LABEL_36;
          }

          v15 = 22;
LABEL_32:
          std::string::__grow_by_and_replace(v10, v15, v14 - v15 + 2, v14, v14, 0, 2uLL, "\r\n");
          v20 = *(v557 + 8);
          v21 = *(v557 + 9);
          memset(&v567, 0, sizeof(v567));
          if (v20 == v21)
          {
            goto LABEL_169;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v12 = 22;
        v13 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
        p_p = 22 - v5;
        if (22 - v5 < v9)
        {
          goto LABEL_16;
        }
      }

      if (v9)
      {
        v16 = v563;
        if ((v5 & 0x80000000) != 0)
        {
          v16 = v563->__r_.__value_.__r.__words[0];
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_1855;
        }

        v17 = v16 + v13;
        if ((v16 + v13) <= v8)
        {
          v5 = &v17[v9];
          if (&v17[v9] > v8)
          {
            goto LABEL_1855;
          }
        }

        v18 = v9;
        memmove(v17, v8, v9);
        v19 = v13 + v18;
        v10 = v563;
        if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
        {
          v563->__r_.__value_.__l.__size_ = v19;
          v16->__r_.__value_.__s.__data_[v19] = 0;
          v14 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_17;
        }

        *(&v563->__r_.__value_.__s + 23) = v19 & 0x7F;
        v16->__r_.__value_.__s.__data_[v19] = 0;
      }

      v14 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_17:
      v14 = v10->__r_.__value_.__l.__size_;
      v15 = (v10->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 - v14 >= 2)
      {
        v5 = v10->__r_.__value_.__r.__words[0];
        p_p = v10->__r_.__value_.__r.__words[0] + v14;
        if (p_p > "\r\n")
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      goto LABEL_32;
    }
  }

LABEL_38:
  v20 = *(v557 + 8);
  v21 = *(v557 + 9);
  memset(&v567, 0, sizeof(v567));
  if (v20 == v21)
  {
    goto LABEL_169;
  }

LABEL_39:
  LODWORD(v562) = v4;
  v4 = " ";
  do
  {
    webrtc::InitLine(97, "extmap", 6uLL, &v567);
    p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = 22;
    }

    else
    {
      v25 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = v567.__r_.__value_.__l.__size_;
    }

    if (v25 == p_p)
    {
      std::string::__grow_by_and_replace(&v567, v25, 1uLL, v25, v25, 0, 1uLL, ":");
      webrtc::StringBuilder::operator<<(&v567, *(v20 + 6), v26);
      if (*(v20 + 28) != 1)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v567;
      }

      else
      {
        v5 = v567.__r_.__value_.__r.__words[0];
      }

      size = v5 + p_p + 1;
      if (v5 + p_p <= ":" && size > ":")
      {
        goto LABEL_1855;
      }

      *(v5 + p_p) = 58;
      v28 = p_p + 1;
      if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
      {
        v567.__r_.__value_.__l.__size_ = v28;
      }

      else
      {
        *(&v567.__r_.__value_.__s + 23) = v28 & 0x7F;
      }

      *(v5 + v28) = 0;
      webrtc::StringBuilder::operator<<(&v567, *(v20 + 6), v24);
      if (*(v20 + 28) != 1)
      {
        goto LABEL_95;
      }
    }

    p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = 22;
    }

    else
    {
      v29 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = v567.__r_.__value_.__l.__size_;
    }

    if (v29 == p_p)
    {
      std::string::__grow_by_and_replace(&v567, v29, 1uLL, v29, v29, 0, 1uLL, " ");
    }

    else
    {
      if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v567;
      }

      else
      {
        v5 = v567.__r_.__value_.__r.__words[0];
      }

      v30 = (v5 + p_p);
      if (v5 + p_p <= " ")
      {
        size = (v30 + 1);
        if (v30 + 1 > " ")
        {
          goto LABEL_1855;
        }
      }

      *v30 = 32;
      v31 = p_p + 1;
      if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
      {
        v567.__r_.__value_.__l.__size_ = v31;
      }

      else
      {
        *(&v567.__r_.__value_.__s + 23) = v31 & 0x7F;
      }

      *(v5 + v31) = 0;
    }

    v5 = v567.__r_.__value_.__r.__words[2];
    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = 22;
    }

    else
    {
      v32 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v567.__r_.__value_.__l.__size_;
    }

    if (v32 - v33 >= 0x22)
    {
      if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &v567;
      }

      else
      {
        p_p = v567.__r_.__value_.__r.__words[0];
      }

      v34 = (p_p + v33);
      if (p_p + v33 <= "urn:ietf:params:rtp-hdrext:encrypt")
      {
        size = (v34 + 34);
        if (v34 + 34 > "urn:ietf:params:rtp-hdrext:encrypt")
        {
          goto LABEL_1855;
        }
      }

      qmemcpy(v34, "urn:ietf:params:rtp-hdrext:encrypt", 34);
      v35 = v33 + 34;
      if ((v5 & 0x8000000000000000) != 0)
      {
        v567.__r_.__value_.__l.__size_ = v33 + 34;
      }

      else
      {
        *(&v567.__r_.__value_.__s + 23) = v35 & 0x7F;
      }

      *(p_p + v35) = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v567, v32, v33 - v32 + 34, v33, v33, 0, 0x22uLL, "urn:ietf:params:rtp-hdrext:encrypt");
    }

LABEL_95:
    p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = 22;
    }

    else
    {
      v36 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = v567.__r_.__value_.__l.__size_;
    }

    if (v36 == p_p)
    {
      std::string::__grow_by_and_replace(&v567, v36, 1uLL, v36, v36, 0, 1uLL, " ");
      v37 = *(v20 + 23);
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v567;
      }

      else
      {
        v5 = v567.__r_.__value_.__r.__words[0];
      }

      v39 = (v5 + p_p);
      if (v5 + p_p <= " ")
      {
        size = (v39 + 1);
        if (v39 + 1 > " ")
        {
          goto LABEL_1855;
        }
      }

      size = 32;
      *v39 = 32;
      ++p_p;
      if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
      {
        v567.__r_.__value_.__l.__size_ = p_p;
        *(v5 + p_p) = 0;
        v37 = *(v20 + 23);
        if ((v37 & 0x8000000000000000) == 0)
        {
LABEL_102:
          LOBYTE(v5) = v37 == 0;
          v38 = v20;
          goto LABEL_112;
        }
      }

      else
      {
        *(&v567.__r_.__value_.__s + 23) = p_p & 0x7F;
        *(v5 + p_p) = 0;
        v37 = *(v20 + 23);
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_102;
        }
      }
    }

    v38 = *v20;
    v37 = v20[1];
    v5 = v37 == 0;
    if (!*v20 && v37)
    {
      goto LABEL_1855;
    }

LABEL_112:
    p_p = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
    size = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((p_p & 0x80000000) == 0)
    {
      v40 = 22;
    }

    else
    {
      v40 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((p_p & 0x80000000) == 0)
    {
      v41 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = v567.__r_.__value_.__l.__size_;
    }

    if (v40 - v41 >= v37)
    {
      if ((v5 & 1) == 0)
      {
        v5 = v567.__r_.__value_.__r.__words[0];
        if ((p_p & 0x80000000) == 0)
        {
          v42 = &v567;
        }

        else
        {
          v42 = v567.__r_.__value_.__r.__words[0];
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_1855;
        }

        v43 = v42 + v41;
        if (v42 + v41 <= v38)
        {
          v5 = &v43[v37];
          if (&v43[v37] > v38)
          {
            goto LABEL_1855;
          }
        }

        v44 = v37;
        memmove(v43, v38, v37);
        v45 = v41 + v44;
        if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
        {
          v567.__r_.__value_.__l.__size_ = v41 + v44;
        }

        else
        {
          *(&v567.__r_.__value_.__s + 23) = v45 & 0x7F;
        }

        v42->__r_.__value_.__s.__data_[v45] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v567, v40, v41 + v37 - v40, v41, v41, 0, v37, v38);
    }

    v5 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    p_p = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
    size = v567.__r_.__value_.__l.__size_;
    if ((p_p & 0x80000000) == 0)
    {
      v46 = &v567;
    }

    else
    {
      v46 = v567.__r_.__value_.__r.__words[0];
    }

    if ((p_p & 0x80000000) == 0)
    {
      v47 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = v567.__r_.__value_.__l.__size_;
    }

    v48 = v563;
    if (v563)
    {
      if (!v46 && v47)
      {
        goto LABEL_1855;
      }

      v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      if ((v5 & 0x8000000000000000) != 0)
      {
        v50 = v563->__r_.__value_.__l.__size_;
        v49 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        p_p = v49 - v50;
        if (v49 - v50 >= v47)
        {
          goto LABEL_146;
        }

LABEL_144:
        std::string::__grow_by_and_replace(v563, v49, v47 - v49 + v50, v50, v50, 0, v47, v46);
        v48 = v563;
      }

      else
      {
        v49 = 22;
        v50 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
        p_p = 22 - v5;
        if (22 - v5 < v47)
        {
          goto LABEL_144;
        }

LABEL_146:
        if (v47)
        {
          v51 = v563;
          if ((v5 & 0x80000000) != 0)
          {
            v51 = v563->__r_.__value_.__r.__words[0];
          }

          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_1855;
          }

          v52 = v51 + v50;
          if ((v51 + v50) <= v46)
          {
            v5 = &v52[v47];
            if (&v52[v47] > v46)
            {
              goto LABEL_1855;
            }
          }

          v53 = v47;
          memmove(v52, v46, v47);
          v48 = v563;
          v54 = v50 + v53;
          if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
          {
            v563->__r_.__value_.__l.__size_ = v54;
          }

          else
          {
            *(&v563->__r_.__value_.__s + 23) = v54 & 0x7F;
          }

          v51->__r_.__value_.__s.__data_[v54] = 0;
        }
      }

      v55 = SHIBYTE(v48->__r_.__value_.__r.__words[2]);
      if ((v55 & 0x8000000000000000) != 0)
      {
        v55 = v48->__r_.__value_.__l.__size_;
        v23 = (v48->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v55 < 2)
        {
          goto LABEL_41;
        }

        v5 = v48->__r_.__value_.__r.__words[0];
        p_p = v48->__r_.__value_.__r.__words[0] + v55;
        if (p_p <= "\r\n")
        {
          goto LABEL_162;
        }
      }

      else
      {
        if (v55 - 21 < 2)
        {
          v23 = 22;
LABEL_41:
          std::string::__grow_by_and_replace(v48, v23, v55 - v23 + 2, v55, v55, 0, 2uLL, "\r\n");
          goto LABEL_42;
        }

        v5 = v48;
        p_p = v48 + v55;
        if (v48 + v55 > "\r\n")
        {
          goto LABEL_163;
        }

LABEL_162:
        if (p_p + 2 > "\r\n")
        {
          goto LABEL_1855;
        }
      }

LABEL_163:
      *p_p = 2573;
      v56 = v55 + 2;
      if (SHIBYTE(v48->__r_.__value_.__r.__words[2]) < 0)
      {
        v48->__r_.__value_.__l.__size_ = v56;
      }

      else
      {
        *(&v48->__r_.__value_.__s + 23) = v56 & 0x7F;
      }

      *(v5 + v56) = 0;
    }

LABEL_42:
    v20 += 4;
  }

  while (v20 != v21);
  LODWORD(v4) = v562;
  if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v567.__r_.__value_.__l.__data_);
  }

LABEL_169:
  v57 = *(v557 + 31);
  if (v57 > 2)
  {
    if ((v57 - 3) >= 2)
    {
      goto LABEL_176;
    }

    v58 = "inactive";
  }

  else
  {
    switch(v57)
    {
      case 0:
        goto LABEL_176;
      case 1:
        v58 = "sendonly";
        break;
      case 2:
        v58 = "recvonly";
        break;
      default:
LABEL_176:
        v58 = "sendrecv";
        break;
    }
  }

  webrtc::InitLine(97, v58, 8uLL, &v565);
  v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
  if ((p_p & 0x80000000) == 0)
  {
    v59 = &v565;
  }

  else
  {
    v59 = v565.__r_.__value_.__r.__words[0];
  }

  if ((p_p & 0x80000000) == 0)
  {
    v60 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v565.__r_.__value_.__l.__size_;
  }

  size = v563;
  if (!v563)
  {
    goto LABEL_211;
  }

  if (!v59 && v60)
  {
    goto LABEL_1855;
  }

  v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v62 = v563->__r_.__value_.__l.__size_;
    v61 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    p_p = v61 - v62;
    if (v61 - v62 >= v60)
    {
      goto LABEL_194;
    }

LABEL_189:
    std::string::__grow_by_and_replace(v563, v61, v60 - v61 + v62, v62, v62, 0, v60, v59);
    size = v563;
    v63 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
    if ((v63 & 0x8000000000000000) != 0)
    {
      goto LABEL_190;
    }

    goto LABEL_203;
  }

  v61 = 22;
  v62 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
  p_p = 22 - v5;
  if (22 - v5 < v60)
  {
    goto LABEL_189;
  }

LABEL_194:
  if (!v60)
  {
LABEL_202:
    v63 = *(size + 23);
    if ((v63 & 0x8000000000000000) != 0)
    {
      goto LABEL_190;
    }

    goto LABEL_203;
  }

  v65 = v563;
  if ((v5 & 0x80000000) != 0)
  {
    v65 = v563->__r_.__value_.__r.__words[0];
  }

  if ((v60 & 0x8000000000000000) != 0)
  {
    goto LABEL_1855;
  }

  v66 = v65 + v62;
  if ((v65 + v62) <= v59)
  {
    v5 = &v66[v60];
    if (&v66[v60] > v59)
    {
      goto LABEL_1855;
    }
  }

  v67 = v60;
  memmove(v66, v59, v60);
  v68 = v62 + v67;
  size = v563;
  if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v563->__r_.__value_.__s + 23) = v68 & 0x7F;
    v65->__r_.__value_.__s.__data_[v68] = 0;
    goto LABEL_202;
  }

  v563->__r_.__value_.__l.__size_ = v68;
  v65->__r_.__value_.__s.__data_[v68] = 0;
  v63 = *(size + 23);
  if ((v63 & 0x8000000000000000) == 0)
  {
LABEL_203:
    if (v63 - 21 < 2)
    {
      v64 = 22;
      goto LABEL_205;
    }

    v5 = size;
    p_p = size + v63;
    if (size + v63 > "\r\n")
    {
      goto LABEL_209;
    }

LABEL_208:
    size = v563;
    if (p_p + 2 > "\r\n")
    {
      goto LABEL_1855;
    }

LABEL_209:
    *p_p = 2573;
    v70 = v63 + 2;
    if (*(size + 23) < 0)
    {
      *(size + 8) = v70;
      *(v5 + v70) = 0;
      v69 = v557;
      if ((a3 & 1) == 0)
      {
        goto LABEL_212;
      }

LABEL_229:
      v77 = *(v69 + 12);
      v78 = *(v69 + 13) - v77;
      if (v78 == 144)
      {
        memset(&v567, 0, sizeof(v567));
        v79 = v77[12];
        v80 = v77[13];
        if (v80 != v79)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(&v566.__r_.__value_.__s + 23) = 1;
        p_p = "-";
        if (&v566 <= "-")
        {
          v5 = v566.__r_.__value_.__r.__words + 1;
          if (&v566.__r_.__value_.__l.__data_ + 1 > "-")
          {
            goto LABEL_1855;
          }
        }

        LOWORD(v566.__r_.__value_.__l.__data_) = 45;
        std::vector<std::string>::push_back[abi:sn200100](&v567, &v566);
        if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v566.__r_.__value_.__l.__data_);
        }

        v81 = v567.__r_.__value_.__l.__size_;
        v82 = v567.__r_.__value_.__r.__words[0];
        size = v563;
        if (v567.__r_.__value_.__r.__words[0] != v567.__r_.__value_.__l.__size_)
        {
          LODWORD(v562) = v4;
          v4 = ":";
          while (1)
          {
            webrtc::InitLine(97, "msid", 4uLL, &v565);
            p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = 22;
            }

            else
            {
              v84 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = v565.__r_.__value_.__l.__size_;
            }

            if (v84 == p_p)
            {
              std::string::__grow_by_and_replace(&v565, v84, 1uLL, v84, v84, 0, 1uLL, ":");
              v85 = *(v82 + 23);
              if ((v85 & 0x8000000000000000) == 0)
              {
                goto LABEL_249;
              }
            }

            else
            {
              if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v5 = &v565;
              }

              else
              {
                v5 = v565.__r_.__value_.__r.__words[0];
              }

              size = v5 + p_p + 1;
              if (v5 + p_p <= ":" && size > ":")
              {
                goto LABEL_1855;
              }

              size = 58;
              *(v5 + p_p++) = 58;
              if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
              {
                v565.__r_.__value_.__l.__size_ = p_p;
                *(v5 + p_p) = 0;
                v85 = *(v82 + 23);
                if ((v85 & 0x8000000000000000) == 0)
                {
LABEL_249:
                  LOBYTE(v5) = v85 == 0;
                  v86 = v82;
                  goto LABEL_261;
                }
              }

              else
              {
                *(&v565.__r_.__value_.__s + 23) = p_p & 0x7F;
                *(v5 + p_p) = 0;
                v85 = *(v82 + 23);
                if ((v85 & 0x8000000000000000) == 0)
                {
                  goto LABEL_249;
                }
              }
            }

            v86 = *v82;
            v85 = *(v82 + 8);
            v5 = v85 == 0;
            if (!*v82 && v85)
            {
              goto LABEL_1855;
            }

LABEL_261:
            p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
            size = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if ((p_p & 0x80000000) == 0)
            {
              v88 = 22;
            }

            else
            {
              v88 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((p_p & 0x80000000) == 0)
            {
              v89 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = v565.__r_.__value_.__l.__size_;
            }

            if (v88 - v89 >= v85)
            {
              if ((v5 & 1) == 0)
              {
                v5 = v565.__r_.__value_.__r.__words[0];
                if ((p_p & 0x80000000) == 0)
                {
                  v90 = &v565;
                }

                else
                {
                  v90 = v565.__r_.__value_.__r.__words[0];
                }

                if ((v85 & 0x8000000000000000) != 0)
                {
                  goto LABEL_1855;
                }

                v91 = v90 + v89;
                if (v90 + v89 <= v86)
                {
                  v5 = &v91[v85];
                  if (&v91[v85] > v86)
                  {
                    goto LABEL_1855;
                  }
                }

                v92 = v85;
                memmove(v91, v86, v85);
                v93 = v89 + v92;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = v89 + v92;
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = v93 & 0x7F;
                }

                v90->__r_.__value_.__s.__data_[v93] = 0;
              }
            }

            else
            {
              std::string::__grow_by_and_replace(&v565, v88, v89 + v85 - v88, v89, v89, 0, v85, v86);
            }

            p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = 22;
            }

            else
            {
              v94 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = v565.__r_.__value_.__l.__size_;
            }

            if (v94 == p_p)
            {
              std::string::__grow_by_and_replace(&v565, v94, 1uLL, v94, v94, 0, 1uLL, " ");
              v95 = *(v77 + 23);
              if ((v95 & 0x8000000000000000) == 0)
              {
                goto LABEL_289;
              }
            }

            else
            {
              if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v5 = &v565;
              }

              else
              {
                v5 = v565.__r_.__value_.__r.__words[0];
              }

              v97 = (v5 + p_p);
              if (v5 + p_p <= " ")
              {
                size = (v97 + 1);
                if (v97 + 1 > " ")
                {
                  goto LABEL_1855;
                }
              }

              size = 32;
              *v97 = 32;
              ++p_p;
              if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
              {
                v565.__r_.__value_.__l.__size_ = p_p;
                *(v5 + p_p) = 0;
                v95 = *(v77 + 23);
                if ((v95 & 0x8000000000000000) == 0)
                {
LABEL_289:
                  LOBYTE(v5) = v95 == 0;
                  v96 = v77;
                  goto LABEL_299;
                }
              }

              else
              {
                *(&v565.__r_.__value_.__s + 23) = p_p & 0x7F;
                *(v5 + p_p) = 0;
                v95 = *(v77 + 23);
                if ((v95 & 0x8000000000000000) == 0)
                {
                  goto LABEL_289;
                }
              }
            }

            v96 = *v77;
            v95 = v77[1];
            v5 = v95 == 0;
            if (!*v77 && v95)
            {
              goto LABEL_1855;
            }

LABEL_299:
            p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
            size = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if ((p_p & 0x80000000) == 0)
            {
              v98 = 22;
            }

            else
            {
              v98 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((p_p & 0x80000000) == 0)
            {
              v99 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v99 = v565.__r_.__value_.__l.__size_;
            }

            if (v98 - v99 >= v95)
            {
              if ((v5 & 1) == 0)
              {
                v5 = v565.__r_.__value_.__r.__words[0];
                if ((p_p & 0x80000000) == 0)
                {
                  v100 = &v565;
                }

                else
                {
                  v100 = v565.__r_.__value_.__r.__words[0];
                }

                if ((v95 & 0x8000000000000000) != 0)
                {
                  goto LABEL_1855;
                }

                v101 = v100 + v99;
                if (v100 + v99 <= v96)
                {
                  v5 = &v101[v95];
                  if (&v101[v95] > v96)
                  {
                    goto LABEL_1855;
                  }
                }

                v102 = v95;
                memmove(v101, v96, v95);
                v103 = v99 + v102;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = v99 + v102;
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = v103 & 0x7F;
                }

                v100->__r_.__value_.__s.__data_[v103] = 0;
              }
            }

            else
            {
              std::string::__grow_by_and_replace(&v565, v98, v99 + v95 - v98, v99, v99, 0, v95, v96);
            }

            v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
            if ((p_p & 0x80000000) == 0)
            {
              v104 = &v565;
            }

            else
            {
              v104 = v565.__r_.__value_.__r.__words[0];
            }

            if ((p_p & 0x80000000) == 0)
            {
              v105 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v105 = v565.__r_.__value_.__l.__size_;
            }

            size = v563;
            if (!v563)
            {
              goto LABEL_241;
            }

            if (!v104 && v105)
            {
              goto LABEL_1855;
            }

            v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
            if ((v5 & 0x8000000000000000) != 0)
            {
              v107 = v563->__r_.__value_.__l.__size_;
              v106 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              p_p = v106 - v107;
              if (v106 - v107 < v105)
              {
LABEL_331:
                std::string::__grow_by_and_replace(v563, v106, v105 - v106 + v107, v107, v107, 0, v105, v104);
                size = v563;
                v108 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                if ((v108 & 0x8000000000000000) != 0)
                {
                  goto LABEL_332;
                }

                goto LABEL_345;
              }
            }

            else
            {
              v106 = 22;
              v107 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
              p_p = 22 - v5;
              if (22 - v5 < v105)
              {
                goto LABEL_331;
              }
            }

            if (!v105)
            {
              goto LABEL_344;
            }

            v109 = v563;
            if ((v5 & 0x80000000) != 0)
            {
              v109 = v563->__r_.__value_.__r.__words[0];
            }

            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_1855;
            }

            v110 = v109 + v107;
            if ((v109 + v107) <= v104)
            {
              v5 = &v110[v105];
              if (&v110[v105] > v104)
              {
                goto LABEL_1855;
              }
            }

            v111 = v105;
            memmove(v110, v104, v105);
            size = v563;
            v112 = v107 + v111;
            if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              *(&v563->__r_.__value_.__s + 23) = v112 & 0x7F;
              v109->__r_.__value_.__s.__data_[v112] = 0;
LABEL_344:
              v108 = *(size + 23);
              if ((v108 & 0x8000000000000000) != 0)
              {
                goto LABEL_332;
              }

              goto LABEL_345;
            }

            v563->__r_.__value_.__l.__size_ = v112;
            v109->__r_.__value_.__s.__data_[v112] = 0;
            v108 = *(size + 23);
            if ((v108 & 0x8000000000000000) != 0)
            {
LABEL_332:
              v108 = *(size + 8);
              v83 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v83 - v108 >= 2)
              {
                v5 = *size;
                p_p = *size + v108;
                if (p_p <= "\r\n")
                {
LABEL_347:
                  if (p_p + 2 > "\r\n")
                  {
                    goto LABEL_1855;
                  }
                }

LABEL_348:
                *p_p = 2573;
                v113 = v108 + 2;
                if (*(size + 23) < 0)
                {
                  *(size + 8) = v113;
                }

                else
                {
                  *(size + 23) = v113 & 0x7F;
                }

                *(v5 + v113) = 0;
                goto LABEL_241;
              }

              goto LABEL_240;
            }

LABEL_345:
            if (v108 - 21 >= 2)
            {
              v5 = size;
              p_p = size + v108;
              if (size + v108 <= "\r\n")
              {
                goto LABEL_347;
              }

              goto LABEL_348;
            }

            v83 = 22;
LABEL_240:
            std::string::__grow_by_and_replace(size, v83, v108 - v83 + 2, v108, v108, 0, 2uLL, "\r\n");
            size = v563;
LABEL_241:
            v82 += 24;
            if (v82 == v81)
            {
              v82 = v567.__r_.__value_.__r.__words[0];
              LODWORD(v4) = v562;
              break;
            }
          }
        }

        v69 = v557;
        if (!v82)
        {
          goto LABEL_212;
        }

        v129 = v567.__r_.__value_.__l.__size_;
        v130 = v82;
        if (v567.__r_.__value_.__l.__size_ != v82)
        {
          do
          {
            v131 = *(v129 - 1);
            v129 -= 3;
            if (v131 < 0)
            {
              operator delete(*v129);
            }
          }

          while (v129 != v82);
          v130 = v567.__r_.__value_.__r.__words[0];
        }

        v567.__r_.__value_.__l.__size_ = v82;
        operator delete(v130);
        size = v563;
        if (*(v557 + 32) != 1)
        {
          goto LABEL_358;
        }
      }

      else
      {
        v114 = 0x8E38E38E38E38E39 * (v78 >> 4) >= 2;
        v69 = v557;
        if (!v114)
        {
          goto LABEL_212;
        }

        v115 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
        v69 = v557;
        size = v563;
        if (v115)
        {
          goto LABEL_212;
        }

        webrtc::webrtc_logging_impl::Log("\r\t", v116, v117, v118, v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_sdp.cc");
        size = v563;
        if (*(v557 + 32) != 1)
        {
          goto LABEL_358;
        }
      }

LABEL_213:
      webrtc::InitLine(97, "rtcp-mux", 8uLL, &v565);
      v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
      p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
      if ((p_p & 0x80000000) == 0)
      {
        v71 = &v565;
      }

      else
      {
        v71 = v565.__r_.__value_.__r.__words[0];
      }

      if ((p_p & 0x80000000) == 0)
      {
        v72 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v565.__r_.__value_.__l.__size_;
      }

      size = v563;
      if (!v563)
      {
        goto LABEL_358;
      }

      if (!v71 && v72)
      {
        goto LABEL_1855;
      }

      v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      if ((v5 & 0x8000000000000000) != 0)
      {
        v74 = v563->__r_.__value_.__l.__size_;
        v73 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        p_p = v73 - v74;
        if (v73 - v74 < v72)
        {
LABEL_224:
          std::string::__grow_by_and_replace(v563, v73, v72 - v73 + v74, v74, v74, 0, v72, v71);
          size = v563;
          v75 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_225;
          }

LABEL_391:
          if (v75 - 21 >= 2)
          {
            v5 = size;
            p_p = size + v75;
            if (size + v75 > "\r\n")
            {
              goto LABEL_425;
            }

LABEL_424:
            size = v563;
            if (p_p + 2 > "\r\n")
            {
              goto LABEL_1855;
            }

LABEL_425:
            *p_p = 2573;
            v143 = v75 + 2;
            if (*(size + 23) < 0)
            {
              *(size + 8) = v143;
              *(v5 + v143) = 0;
              if (*(v557 + 33) == 1)
              {
                goto LABEL_359;
              }
            }

            else
            {
              *(size + 23) = v143 & 0x7F;
              *(v5 + v143) = 0;
              if (*(v557 + 33) == 1)
              {
                goto LABEL_359;
              }
            }

LABEL_394:
            if (*(v557 + 120) != 1)
            {
              goto LABEL_494;
            }

            goto LABEL_395;
          }

          v76 = 22;
LABEL_393:
          std::string::__grow_by_and_replace(size, v76, v75 - v76 + 2, v75, v75, 0, 2uLL, "\r\n");
          size = v563;
          if (*(v557 + 33) == 1)
          {
            goto LABEL_359;
          }

          goto LABEL_394;
        }
      }

      else
      {
        v73 = 22;
        v74 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
        p_p = 22 - v5;
        if (22 - v5 < v72)
        {
          goto LABEL_224;
        }
      }

      if (v72)
      {
        v132 = v563;
        if ((v5 & 0x80000000) != 0)
        {
          v132 = v563->__r_.__value_.__r.__words[0];
        }

        if ((v72 & 0x8000000000000000) != 0)
        {
          goto LABEL_1855;
        }

        v133 = v132 + v74;
        if ((v132 + v74) <= v71)
        {
          v5 = &v133[v72];
          if (&v133[v72] > v71)
          {
            goto LABEL_1855;
          }
        }

        v134 = v72;
        memmove(v133, v71, v72);
        v135 = v74 + v134;
        size = v563;
        if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
        {
          v563->__r_.__value_.__l.__size_ = v135;
          v132->__r_.__value_.__s.__data_[v135] = 0;
          v75 = *(size + 23);
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_391;
          }

          goto LABEL_225;
        }

        *(&v563->__r_.__value_.__s + 23) = v135 & 0x7F;
        v132->__r_.__value_.__s.__data_[v135] = 0;
      }

      v75 = *(size + 23);
      if ((v75 & 0x8000000000000000) == 0)
      {
        goto LABEL_391;
      }

LABEL_225:
      v75 = *(size + 8);
      v76 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v76 - v75 >= 2)
      {
        v5 = *size;
        p_p = *size + v75;
        if (p_p > "\r\n")
        {
          goto LABEL_425;
        }

        goto LABEL_424;
      }

      goto LABEL_393;
    }

    *(size + 23) = v70 & 0x7F;
    *(v5 + v70) = 0;
LABEL_211:
    v69 = v557;
    if ((a3 & 1) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_229;
  }

LABEL_190:
  v63 = *(size + 8);
  v64 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v64 - v63 >= 2)
  {
    v5 = *size;
    p_p = *size + v63;
    if (p_p > "\r\n")
    {
      goto LABEL_209;
    }

    goto LABEL_208;
  }

LABEL_205:
  std::string::__grow_by_and_replace(size, v64, v63 - v64 + 2, v63, v63, 0, 2uLL, "\r\n");
  size = v563;
  v69 = v557;
  if (a3)
  {
    goto LABEL_229;
  }

LABEL_212:
  if (*(v69 + 32) == 1)
  {
    goto LABEL_213;
  }

LABEL_358:
  if (*(v557 + 33) != 1)
  {
    goto LABEL_394;
  }

LABEL_359:
  webrtc::InitLine(97, "rtcp-rsize", 0xAuLL, &v565);
  v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
  if ((p_p & 0x80000000) == 0)
  {
    v123 = &v565;
  }

  else
  {
    v123 = v565.__r_.__value_.__r.__words[0];
  }

  if ((p_p & 0x80000000) == 0)
  {
    v124 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v124 = v565.__r_.__value_.__l.__size_;
  }

  size = v563;
  if (!v563)
  {
    goto LABEL_394;
  }

  if (!v123 && v124)
  {
    goto LABEL_1855;
  }

  v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v126 = v563->__r_.__value_.__l.__size_;
    v125 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    p_p = v125 - v126;
    if (v125 - v126 >= v124)
    {
      goto LABEL_410;
    }

LABEL_370:
    std::string::__grow_by_and_replace(v563, v125, v124 - v125 + v126, v126, v126, 0, v124, v123);
    size = v563;
    v127 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
    if ((v127 & 0x8000000000000000) != 0)
    {
      goto LABEL_371;
    }

LABEL_419:
    if (v127 - 21 < 2)
    {
      v128 = 22;
      goto LABEL_421;
    }

    v5 = size;
    p_p = size + v127;
    if (size + v127 > "\r\n")
    {
      goto LABEL_430;
    }

LABEL_429:
    size = v563;
    if (p_p + 2 > "\r\n")
    {
      goto LABEL_1855;
    }

LABEL_430:
    *p_p = 2573;
    v144 = v127 + 2;
    if (*(size + 23) < 0)
    {
      *(size + 8) = v144;
      *(v5 + v144) = 0;
      if (*(v557 + 120) != 1)
      {
        goto LABEL_494;
      }
    }

    else
    {
      *(size + 23) = v144 & 0x7F;
      *(v5 + v144) = 0;
      if (*(v557 + 120) != 1)
      {
        goto LABEL_494;
      }
    }

    goto LABEL_395;
  }

  v125 = 22;
  v126 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
  p_p = 22 - v5;
  if (22 - v5 < v124)
  {
    goto LABEL_370;
  }

LABEL_410:
  if (!v124)
  {
LABEL_418:
    v127 = *(size + 23);
    if ((v127 & 0x8000000000000000) != 0)
    {
      goto LABEL_371;
    }

    goto LABEL_419;
  }

  v139 = v563;
  if ((v5 & 0x80000000) != 0)
  {
    v139 = v563->__r_.__value_.__r.__words[0];
  }

  if ((v124 & 0x8000000000000000) != 0)
  {
    goto LABEL_1855;
  }

  v140 = v139 + v126;
  if ((v139 + v126) <= v123)
  {
    v5 = &v140[v124];
    if (&v140[v124] > v123)
    {
      goto LABEL_1855;
    }
  }

  v141 = v124;
  memmove(v140, v123, v124);
  v142 = v126 + v141;
  size = v563;
  if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v563->__r_.__value_.__s + 23) = v142 & 0x7F;
    v139->__r_.__value_.__s.__data_[v142] = 0;
    goto LABEL_418;
  }

  v563->__r_.__value_.__l.__size_ = v142;
  v139->__r_.__value_.__s.__data_[v142] = 0;
  v127 = *(size + 23);
  if ((v127 & 0x8000000000000000) == 0)
  {
    goto LABEL_419;
  }

LABEL_371:
  v127 = *(size + 8);
  v128 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v128 - v127 >= 2)
  {
    v5 = *size;
    p_p = *size + v127;
    if (p_p > "\r\n")
    {
      goto LABEL_430;
    }

    goto LABEL_429;
  }

LABEL_421:
  std::string::__grow_by_and_replace(size, v128, v127 - v128 + 2, v127, v127, 0, 2uLL, "\r\n");
  size = v563;
  if (*(v557 + 120) != 1)
  {
LABEL_494:
    if (*(v557 + 34) == 1)
    {
      goto LABEL_495;
    }

LABEL_761:
    memset(&v566, 0, sizeof(v566));
    if (v4)
    {
      goto LABEL_762;
    }

    goto LABEL_523;
  }

LABEL_395:
  webrtc::InitLine(97, "x-google-flag", 0xDuLL, &v565);
  p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = 22;
  }

  else
  {
    v136 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = v565.__r_.__value_.__l.__size_;
  }

  if (v136 == p_p)
  {
    std::string::__grow_by_and_replace(&v565, v136, 1uLL, v136, v136, 0, 1uLL, ":");
    goto LABEL_438;
  }

  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v565;
  }

  else
  {
    v5 = v565.__r_.__value_.__r.__words[0];
  }

  v137 = (v5 + p_p);
  size = ":";
  if (v5 + p_p > ":" || v137 + 1 <= ":")
  {
    *v137 = 58;
    v138 = p_p + 1;
    if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
    {
      v565.__r_.__value_.__l.__size_ = v138;
    }

    else
    {
      *(&v565.__r_.__value_.__s + 23) = v138 & 0x7F;
    }

    *(v5 + v138) = 0;
LABEL_438:
    if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = 22;
    }

    else
    {
      v145 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v146 = v565.__r_.__value_.__l.__size_;
    }

    if (v145 - v146 >= 0xA)
    {
      v5 = &v565;
      if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v565.__r_.__value_.__r.__words[0];
      }

      p_p = v5 + v146;
      if (v5 + v146 <= "conference")
      {
        size = p_p + 10;
        if (p_p + 10 > "conference")
        {
          goto LABEL_1855;
        }
      }

      *(p_p + 8) = 25955;
      *p_p = *"conference";
      v147 = v146 + 10;
      if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
      {
        v565.__r_.__value_.__l.__size_ = v146 + 10;
      }

      else
      {
        *(&v565.__r_.__value_.__s + 23) = v147 & 0x7F;
      }

      *(v5 + v147) = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v565, v145, v146 - v145 + 10, v146, v146, 0, 0xAuLL, "conference");
    }

    v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
    p_p = &v565;
    if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v148 = &v565;
    }

    else
    {
      v148 = v565.__r_.__value_.__r.__words[0];
    }

    if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v149 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v149 = v565.__r_.__value_.__l.__size_;
    }

    size = v563;
    if (!v563)
    {
      goto LABEL_494;
    }

    if (!v148 && v149)
    {
      goto LABEL_1855;
    }

    v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v151 = v563->__r_.__value_.__l.__size_;
      v150 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      p_p = v150 - v151;
      if (v150 - v151 >= v149)
      {
        goto LABEL_470;
      }

LABEL_465:
      std::string::__grow_by_and_replace(v563, v150, v149 - v150 + v151, v151, v151, 0, v149, v148);
      size = v563;
      v152 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      if ((v152 & 0x8000000000000000) != 0)
      {
        goto LABEL_466;
      }
    }

    else
    {
      v150 = 22;
      v151 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      p_p = 22 - v5;
      if (22 - v5 < v149)
      {
        goto LABEL_465;
      }

LABEL_470:
      if (v149)
      {
        v154 = v563;
        if ((v5 & 0x80000000) != 0)
        {
          v154 = v563->__r_.__value_.__r.__words[0];
        }

        if ((v149 & 0x8000000000000000) != 0)
        {
          goto LABEL_1855;
        }

        v155 = v154 + v151;
        if ((v154 + v151) <= v148)
        {
          v5 = &v155[v149];
          if (&v155[v149] > v148)
          {
            goto LABEL_1855;
          }
        }

        v156 = v149;
        memmove(v155, v148, v149);
        v157 = v151 + v156;
        size = v563;
        if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          *(&v563->__r_.__value_.__s + 23) = v157 & 0x7F;
          v154->__r_.__value_.__s.__data_[v157] = 0;
          goto LABEL_478;
        }

        v563->__r_.__value_.__l.__size_ = v157;
        v154->__r_.__value_.__s.__data_[v157] = 0;
        v152 = *(size + 23);
        if ((v152 & 0x8000000000000000) != 0)
        {
LABEL_466:
          v152 = *(size + 8);
          v153 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v153 - v152 >= 2)
          {
            v5 = *size;
            p_p = *size + v152;
            if (p_p > "\r\n")
            {
              goto LABEL_485;
            }

            goto LABEL_484;
          }

LABEL_481:
          std::string::__grow_by_and_replace(size, v153, v152 - v153 + 2, v152, v152, 0, 2uLL, "\r\n");
          size = v563;
          if (*(v557 + 34) == 1)
          {
            goto LABEL_495;
          }

          goto LABEL_761;
        }
      }

      else
      {
LABEL_478:
        v152 = *(size + 23);
        if ((v152 & 0x8000000000000000) != 0)
        {
          goto LABEL_466;
        }
      }
    }

    if (v152 - 21 < 2)
    {
      v153 = 22;
      goto LABEL_481;
    }

    v5 = size;
    p_p = size + v152;
    if (size + v152 > "\r\n")
    {
      goto LABEL_485;
    }

LABEL_484:
    size = v563;
    if (p_p + 2 > "\r\n")
    {
      goto LABEL_1855;
    }

LABEL_485:
    *p_p = 2573;
    v158 = v152 + 2;
    if ((*(size + 23) & 0x80000000) == 0)
    {
      *(size + 23) = v158 & 0x7F;
      *(v5 + v158) = 0;
      goto LABEL_494;
    }

    *(size + 8) = v158;
    *(v5 + v158) = 0;
    if (*(v557 + 34) != 1)
    {
      goto LABEL_761;
    }

LABEL_495:
    webrtc::InitLine(97, "remote-net-estimate", 0x13uLL, &v565);
    v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
    p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
    if ((p_p & 0x80000000) == 0)
    {
      v159 = &v565;
    }

    else
    {
      v159 = v565.__r_.__value_.__r.__words[0];
    }

    if ((p_p & 0x80000000) == 0)
    {
      v160 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v160 = v565.__r_.__value_.__l.__size_;
    }

    size = v563;
    if (!v563)
    {
      goto LABEL_761;
    }

    if (!v159 && v160)
    {
      goto LABEL_1855;
    }

    v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v162 = v563->__r_.__value_.__l.__size_;
      v161 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      p_p = v161 - v162;
      if (v161 - v162 >= v160)
      {
        goto LABEL_511;
      }

LABEL_506:
      std::string::__grow_by_and_replace(v563, v161, v160 - v161 + v162, v162, v162, 0, v160, v159);
      size = v563;
      v163 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      if ((v163 & 0x8000000000000000) != 0)
      {
        goto LABEL_507;
      }
    }

    else
    {
      v161 = 22;
      v162 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
      p_p = 22 - v5;
      if (22 - v5 < v160)
      {
        goto LABEL_506;
      }

LABEL_511:
      if (v160)
      {
        v165 = v563;
        if ((v5 & 0x80000000) != 0)
        {
          v165 = v563->__r_.__value_.__r.__words[0];
        }

        if ((v160 & 0x8000000000000000) != 0)
        {
          goto LABEL_1855;
        }

        v166 = v165 + v162;
        if ((v165 + v162) <= v159)
        {
          v5 = &v166[v160];
          if (&v166[v160] > v159)
          {
            goto LABEL_1855;
          }
        }

        v167 = v160;
        memmove(v166, v159, v160);
        v168 = v162 + v167;
        size = v563;
        if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          *(&v563->__r_.__value_.__s + 23) = v168 & 0x7F;
          v165->__r_.__value_.__s.__data_[v168] = 0;
          goto LABEL_519;
        }

        v563->__r_.__value_.__l.__size_ = v168;
        v165->__r_.__value_.__s.__data_[v168] = 0;
        v163 = *(size + 23);
        if ((v163 & 0x8000000000000000) != 0)
        {
LABEL_507:
          v163 = *(size + 8);
          v164 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v164 - v163 >= 2)
          {
            v5 = *size;
            p_p = *size + v163;
            if (p_p > "\r\n")
            {
              goto LABEL_758;
            }

            goto LABEL_757;
          }

          goto LABEL_522;
        }
      }

      else
      {
LABEL_519:
        v163 = *(size + 23);
        if ((v163 & 0x8000000000000000) != 0)
        {
          goto LABEL_507;
        }
      }
    }

    if (v163 - 21 >= 2)
    {
      v5 = size;
      p_p = size + v163;
      if (size + v163 > "\r\n")
      {
LABEL_758:
        *p_p = 2573;
        p_p = v163 + 2;
        if (*(size + 23) < 0)
        {
          goto LABEL_1856;
        }

        *(size + 23) = p_p & 0x7F;
        *(v5 + p_p) = 0;
        goto LABEL_761;
      }

LABEL_757:
      size = v563;
      if (p_p + 2 > "\r\n")
      {
        goto LABEL_1855;
      }

      goto LABEL_758;
    }

    v164 = 22;
LABEL_522:
    std::string::__grow_by_and_replace(size, v164, v163 - v164 + 2, v163, v163, 0, 2uLL, "\r\n");
    size = v563;
    memset(&v566, 0, sizeof(v566));
    if (v4)
    {
      goto LABEL_762;
    }

    goto LABEL_523;
  }

  do
  {
LABEL_1855:
    while (2)
    {
      while (2)
      {
        while (2)
        {
          while (2)
          {
            while (2)
            {
              while (2)
              {
                while (2)
                {
                  __break(1u);
LABEL_1856:
                  *(size + 8) = p_p;
                  *(v5 + p_p) = 0;
                  memset(&v566, 0, sizeof(v566));
                  if (v4)
                  {
LABEL_762:
                    if (v4 != 1)
                    {
                      goto LABEL_974;
                    }

                    v250 = *(v557 + 35);
                    v251 = *(v557 + 36);
                    if (v250 == v251)
                    {
                      goto LABEL_974;
                    }

                    v252 = v250 + 80;
                    v4 = &v567;
                    while (1)
                    {
                      if (*(v252 - 17) == -1)
                      {
                        goto LABEL_880;
                      }

                      webrtc::InitLine(97, "rtpmap", 6uLL, &v566);
                      p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v256 = 22;
                      }

                      else
                      {
                        v256 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = v566.__r_.__value_.__l.__size_;
                      }

                      if (v256 == p_p)
                      {
                        std::string::__grow_by_and_replace(&v566, v256, 1uLL, v256, v256, 0, 1uLL, ":");
                      }

                      else
                      {
                        if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v5 = &v566;
                        }

                        else
                        {
                          v5 = v566.__r_.__value_.__r.__words[0];
                        }

                        size = v5 + p_p + 1;
                        if (v5 + p_p <= ":" && size > ":")
                        {
                          goto LABEL_1855;
                        }

                        *(v5 + p_p) = 58;
                        v258 = p_p + 1;
                        if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                        {
                          v566.__r_.__value_.__l.__size_ = v258;
                        }

                        else
                        {
                          *(&v566.__r_.__value_.__s + 23) = v258 & 0x7F;
                        }

                        *(v5 + v258) = 0;
                      }

                      v259 = webrtc::StringBuilder::operator<<(&v566, *(v252 - 17), v255);
                      v261 = v259;
                      p_p = HIBYTE(v259->__r_.__value_.__r.__words[2]);
                      v262 = p_p;
                      if ((p_p & 0x80u) == 0)
                      {
                        v263 = 22;
                      }

                      else
                      {
                        v263 = (v259->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((p_p & 0x80u) != 0)
                      {
                        p_p = v259->__r_.__value_.__l.__size_;
                      }

                      if (v263 == p_p)
                      {
                        std::string::__grow_by_and_replace(v259, v263, 1uLL, v263, v263, 0, 1uLL, " ");
                        v264 = *(v252 - 41);
                        if ((v264 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_796;
                        }
                      }

                      else
                      {
                        if (v262 >= 0)
                        {
                          v5 = v259;
                        }

                        else
                        {
                          v5 = v259->__r_.__value_.__r.__words[0];
                        }

                        size = v5 + p_p + 1;
                        if (v5 + p_p <= " " && size > " ")
                        {
                          goto LABEL_1855;
                        }

                        size = 32;
                        *(v5 + p_p++) = 32;
                        if (SHIBYTE(v259->__r_.__value_.__r.__words[2]) < 0)
                        {
                          v259->__r_.__value_.__l.__size_ = p_p;
                          *(v5 + p_p) = 0;
                          v264 = *(v252 - 41);
                          if ((v264 & 0x8000000000000000) == 0)
                          {
LABEL_796:
                            v265 = v252 - 64;
                            LOBYTE(v5) = v264 == 0;
                            goto LABEL_808;
                          }
                        }

                        else
                        {
                          *(&v259->__r_.__value_.__s + 23) = p_p & 0x7F;
                          *(v5 + p_p) = 0;
                          v264 = *(v252 - 41);
                          if ((v264 & 0x8000000000000000) == 0)
                          {
                            goto LABEL_796;
                          }
                        }
                      }

                      v265 = *(v252 - 8);
                      v264 = *(v252 - 7);
                      v5 = v264 == 0;
                      if (!v265 && v264)
                      {
                        goto LABEL_1855;
                      }

LABEL_808:
                      p_p = SHIBYTE(v261->__r_.__value_.__r.__words[2]);
                      size = (v261->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      if ((p_p & 0x80000000) == 0)
                      {
                        v267 = 22;
                      }

                      else
                      {
                        v267 = (v261->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((p_p & 0x80000000) == 0)
                      {
                        v268 = HIBYTE(v261->__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v268 = v261->__r_.__value_.__l.__size_;
                      }

                      if (v267 - v268 >= v264)
                      {
                        if ((v5 & 1) == 0)
                        {
                          v5 = v261->__r_.__value_.__r.__words[0];
                          if ((p_p & 0x80000000) == 0)
                          {
                            v4 = v261;
                          }

                          else
                          {
                            v4 = v261->__r_.__value_.__r.__words[0];
                          }

                          if ((v264 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_1855;
                          }

                          v269 = (v4 + v268);
                          if (v4 + v268 <= v265)
                          {
                            v5 = &v269[v264];
                            if (&v269[v264] > v265)
                            {
                              goto LABEL_1855;
                            }
                          }

                          v270 = v264;
                          memmove(v269, v265, v264);
                          v271 = v268 + v270;
                          if (SHIBYTE(v261->__r_.__value_.__r.__words[2]) < 0)
                          {
                            v261->__r_.__value_.__l.__size_ = v271;
                          }

                          else
                          {
                            *(&v261->__r_.__value_.__s + 23) = v271 & 0x7F;
                          }

                          *(v4 + v271) = 0;
                          v4 = &v567;
                        }
                      }

                      else
                      {
                        std::string::__grow_by_and_replace(v261, v267, v268 + v264 - v267, v268, v268, 0, v264, v265);
                      }

                      p_p = HIBYTE(v261->__r_.__value_.__r.__words[2]);
                      v272 = p_p;
                      if ((p_p & 0x80u) == 0)
                      {
                        v273 = 22;
                      }

                      else
                      {
                        v273 = (v261->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((p_p & 0x80u) != 0)
                      {
                        p_p = v261->__r_.__value_.__l.__size_;
                      }

                      if (v273 == p_p)
                      {
                        std::string::__grow_by_and_replace(v261, v273, 1uLL, v273, v273, 0, 1uLL, "/");
                      }

                      else
                      {
                        if (v272 >= 0)
                        {
                          v5 = v261;
                        }

                        else
                        {
                          v5 = v261->__r_.__value_.__r.__words[0];
                        }

                        v274 = (v5 + p_p);
                        if (v5 + p_p <= "/")
                        {
                          size = (v274 + 1);
                          if (v274 + 1 > "/")
                          {
                            goto LABEL_1855;
                          }
                        }

                        *v274 = 47;
                        v275 = p_p + 1;
                        if (SHIBYTE(v261->__r_.__value_.__r.__words[2]) < 0)
                        {
                          v261->__r_.__value_.__l.__size_ = v275;
                        }

                        else
                        {
                          *(&v261->__r_.__value_.__s + 23) = v275 & 0x7F;
                        }

                        *(v5 + v275) = 0;
                      }

                      webrtc::StringBuilder::operator<<(v261, 0x15F90, v260);
                      v5 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      p_p = SHIBYTE(v566.__r_.__value_.__r.__words[2]);
                      if ((p_p & 0x80000000) == 0)
                      {
                        v276 = &v566;
                      }

                      else
                      {
                        v276 = v566.__r_.__value_.__r.__words[0];
                      }

                      if ((p_p & 0x80000000) == 0)
                      {
                        v277 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v277 = v566.__r_.__value_.__l.__size_;
                      }

                      size = v563;
                      if (!v563)
                      {
                        goto LABEL_880;
                      }

                      if (!v276 && v277)
                      {
                        goto LABEL_1855;
                      }

                      v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                      if ((v5 & 0x8000000000000000) != 0)
                      {
                        v279 = v563->__r_.__value_.__l.__size_;
                        v278 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        p_p = v278 - v279;
                        if (v278 - v279 < v277)
                        {
LABEL_856:
                          std::string::__grow_by_and_replace(v563, v278, v277 - v278 + v279, v279, v279, 0, v277, v276);
                          size = v563;
                          goto LABEL_868;
                        }
                      }

                      else
                      {
                        v278 = 22;
                        v279 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                        p_p = 22 - v5;
                        if (22 - v5 < v277)
                        {
                          goto LABEL_856;
                        }
                      }

                      if (v277)
                      {
                        v280 = v563;
                        if ((v5 & 0x80000000) != 0)
                        {
                          v280 = v563->__r_.__value_.__r.__words[0];
                        }

                        if ((v277 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_1855;
                        }

                        v281 = v280 + v279;
                        if ((v280 + v279) <= v276)
                        {
                          v5 = &v281[v277];
                          if (&v281[v277] > v276)
                          {
                            goto LABEL_1855;
                          }
                        }

                        v282 = v277;
                        memmove(v281, v276, v277);
                        size = v563;
                        v283 = v279 + v282;
                        if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
                        {
                          v563->__r_.__value_.__l.__size_ = v283;
                        }

                        else
                        {
                          *(&v563->__r_.__value_.__s + 23) = v283 & 0x7F;
                        }

                        v280->__r_.__value_.__s.__data_[v283] = 0;
                      }

LABEL_868:
                      v284 = *(size + 23);
                      if ((v284 & 0x8000000000000000) != 0)
                      {
                        v284 = *(size + 8);
                        v285 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        if (v285 - v284 < 2)
                        {
                          goto LABEL_872;
                        }

                        v5 = *size;
                        p_p = *size + v284;
                        if (p_p <= "\r\n")
                        {
                          goto LABEL_877;
                        }
                      }

                      else
                      {
                        if (v284 - 21 < 2)
                        {
                          v285 = 22;
LABEL_872:
                          std::string::__grow_by_and_replace(size, v285, v284 - v285 + 2, v284, v284, 0, 2uLL, "\r\n");
                          size = v563;
                          v286 = v252 - 24;
                          if (*v252 == 1)
                          {
                            goto LABEL_881;
                          }

                          goto LABEL_769;
                        }

                        v5 = size;
                        p_p = size + v284;
                        if (size + v284 <= "\r\n")
                        {
LABEL_877:
                          if (p_p + 2 > "\r\n")
                          {
                            goto LABEL_1855;
                          }
                        }
                      }

                      *p_p = 2573;
                      v287 = v284 + 2;
                      if ((*(size + 23) & 0x80000000) == 0)
                      {
                        *(size + 23) = v287 & 0x7F;
                        *(v5 + v287) = 0;
LABEL_880:
                        v286 = v252 - 24;
                        if (*v252 == 1)
                        {
                          goto LABEL_881;
                        }

                        goto LABEL_769;
                      }

                      *(size + 8) = v287;
                      *(v5 + v287) = 0;
                      v286 = v252 - 24;
                      if (*v252 == 1)
                      {
LABEL_881:
                        memset(&v567, 0, sizeof(v567));
                        v288 = *(v252 - 17);
                        webrtc::InitLine(97, "packetization", 0xDuLL, &v567);
                        v5 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
                        if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                        {
                          v5 = v567.__r_.__value_.__l.__size_;
                          v290 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                          if (v290 == v567.__r_.__value_.__l.__size_)
                          {
LABEL_885:
                            std::string::__grow_by_and_replace(&v567, v290, 1uLL, v290, v290, 0, 1uLL, ":");
                            goto LABEL_894;
                          }

                          p_p = v567.__r_.__value_.__r.__words[0];
                          v291 = (v567.__r_.__value_.__r.__words[0] + v567.__r_.__value_.__l.__size_);
                          if (v567.__r_.__value_.__r.__words[0] + v567.__r_.__value_.__l.__size_ > ":")
                          {
                            goto LABEL_890;
                          }
                        }

                        else
                        {
                          if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) == 22)
                          {
                            v290 = 22;
                            goto LABEL_885;
                          }

                          p_p = &v567;
                          v291 = &v567 + SHIBYTE(v567.__r_.__value_.__r.__words[2]);
                          if (v291 > ":")
                          {
LABEL_890:
                            *v291 = 58;
                            v292 = v5 + 1;
                            if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                            {
                              v567.__r_.__value_.__l.__size_ = v292;
                            }

                            else
                            {
                              *(&v567.__r_.__value_.__s + 23) = v292 & 0x7F;
                            }

                            *(p_p + v292) = 0;
LABEL_894:
                            webrtc::StringBuilder::operator<<(&v567, v288, v289);
                            p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                            if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v293 = 22;
                            }

                            else
                            {
                              v293 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                            }

                            if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              p_p = v567.__r_.__value_.__l.__size_;
                            }

                            if (v293 == p_p)
                            {
                              std::string::__grow_by_and_replace(&v567, v293, 1uLL, v293, v293, 0, 1uLL, " ");
                              v5 = *v252;
                              if ((v5 & 1) == 0)
                              {
                                goto LABEL_1855;
                              }
                            }

                            else
                            {
                              if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v5 = &v567;
                              }

                              else
                              {
                                v5 = v567.__r_.__value_.__r.__words[0];
                              }

                              v294 = (v5 + p_p);
                              if (v5 + p_p <= " ")
                              {
                                size = (v294 + 1);
                                if (v294 + 1 > " ")
                                {
                                  goto LABEL_1855;
                                }
                              }

                              size = 32;
                              *v294 = 32;
                              ++p_p;
                              if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                              {
                                v567.__r_.__value_.__l.__size_ = p_p;
                                *(v5 + p_p) = 0;
                                v5 = *v252;
                                if ((v5 & 1) == 0)
                                {
                                  goto LABEL_1855;
                                }
                              }

                              else
                              {
                                *(&v567.__r_.__value_.__s + 23) = p_p & 0x7F;
                                *(v5 + p_p) = 0;
                                v5 = *v252;
                                if ((v5 & 1) == 0)
                                {
                                  goto LABEL_1855;
                                }
                              }
                            }

                            v5 = *(v252 - 1);
                            p_p = v5;
                            size = *(v252 - 2);
                            if ((p_p & 0x80000000) == 0)
                            {
                              v295 = v286;
                            }

                            else
                            {
                              v295 = *(v252 - 3);
                            }

                            if ((p_p & 0x80000000) == 0)
                            {
                              v296 = *(v252 - 1);
                            }

                            else
                            {
                              v296 = *(v252 - 2);
                            }

                            if (!v295 && v296)
                            {
                              goto LABEL_1855;
                            }

                            size = v567.__r_.__value_.__l.__size_;
                            if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v297 = 22;
                            }

                            else
                            {
                              v297 = (v567.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                            }

                            if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v298 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v298 = v567.__r_.__value_.__l.__size_;
                            }

                            if (v297 - v298 >= v296)
                            {
                              if (v296)
                              {
                                p_p = v567.__r_.__value_.__r.__words[0];
                                v5 = &v567;
                                if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v4 = &v567;
                                }

                                else
                                {
                                  v4 = v567.__r_.__value_.__r.__words[0];
                                }

                                if ((v296 & 0x8000000000000000) != 0)
                                {
                                  goto LABEL_1855;
                                }

                                v299 = (v4 + v298);
                                if (v4 + v298 <= v295)
                                {
                                  v5 = &v299[v296];
                                  if (&v299[v296] > v295)
                                  {
                                    goto LABEL_1855;
                                  }
                                }

                                v300 = v296;
                                memmove(v299, v295, v296);
                                v301 = v298 + v300;
                                if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  v567.__r_.__value_.__l.__size_ = v298 + v300;
                                }

                                else
                                {
                                  *(&v567.__r_.__value_.__s + 23) = v301 & 0x7F;
                                }

                                *(v4 + v301) = 0;
                                v4 = &v567;
                              }
                            }

                            else
                            {
                              std::string::__grow_by_and_replace(&v567, v297, v298 + v296 - v297, v298, v298, 0, v296, v295);
                            }

                            v5 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                            p_p = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
                            if ((p_p & 0x80000000) == 0)
                            {
                              v302 = &v567;
                            }

                            else
                            {
                              v302 = v567.__r_.__value_.__r.__words[0];
                            }

                            if ((p_p & 0x80000000) == 0)
                            {
                              v303 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v303 = v567.__r_.__value_.__l.__size_;
                            }

                            size = v563;
                            if (v563)
                            {
                              if (!v302 && v303)
                              {
                                goto LABEL_1855;
                              }

                              v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                              if ((v5 & 0x8000000000000000) != 0)
                              {
                                v305 = v563->__r_.__value_.__l.__size_;
                                v304 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                                p_p = v304 - v305;
                                if (v304 - v305 >= v303)
                                {
                                  goto LABEL_953;
                                }

LABEL_951:
                                std::string::__grow_by_and_replace(v563, v304, v303 - v304 + v305, v305, v305, 0, v303, v302);
                                size = v563;
                              }

                              else
                              {
                                v304 = 22;
                                v305 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                                p_p = 22 - v5;
                                if (22 - v5 < v303)
                                {
                                  goto LABEL_951;
                                }

LABEL_953:
                                if (v303)
                                {
                                  v306 = v563;
                                  if ((v5 & 0x80000000) != 0)
                                  {
                                    v306 = v563->__r_.__value_.__r.__words[0];
                                  }

                                  if ((v303 & 0x8000000000000000) != 0)
                                  {
                                    goto LABEL_1855;
                                  }

                                  v307 = v306 + v305;
                                  if ((v306 + v305) <= v302)
                                  {
                                    v5 = &v307[v303];
                                    if (&v307[v303] > v302)
                                    {
                                      goto LABEL_1855;
                                    }
                                  }

                                  v308 = v303;
                                  memmove(v307, v302, v303);
                                  size = v563;
                                  v309 = v305 + v308;
                                  if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    v563->__r_.__value_.__l.__size_ = v309;
                                  }

                                  else
                                  {
                                    *(&v563->__r_.__value_.__s + 23) = v309 & 0x7F;
                                  }

                                  v306->__r_.__value_.__s.__data_[v309] = 0;
                                }
                              }

                              v310 = *(size + 23);
                              if ((v310 & 0x8000000000000000) != 0)
                              {
                                v310 = *(size + 8);
                                v253 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
                                if (v253 - v310 < 2)
                                {
                                  goto LABEL_766;
                                }

                                v5 = *size;
                                p_p = *size + v310;
                                if (p_p > "\r\n")
                                {
                                  goto LABEL_970;
                                }

LABEL_969:
                                if (p_p + 2 > "\r\n")
                                {
                                  goto LABEL_1855;
                                }

LABEL_970:
                                *p_p = 2573;
                                v311 = v310 + 2;
                                if (*(size + 23) < 0)
                                {
                                  *(size + 8) = v311;
                                }

                                else
                                {
                                  *(size + 23) = v311 & 0x7F;
                                }

                                *(v5 + v311) = 0;
                              }

                              else
                              {
                                if (v310 - 21 >= 2)
                                {
                                  v5 = size;
                                  p_p = size + v310;
                                  if (size + v310 > "\r\n")
                                  {
                                    goto LABEL_970;
                                  }

                                  goto LABEL_969;
                                }

                                v253 = 22;
LABEL_766:
                                std::string::__grow_by_and_replace(size, v253, v310 - v253 + 2, v310, v310, 0, 2uLL, "\r\n");
                                size = v563;
                              }
                            }

                            if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v567.__r_.__value_.__l.__data_);
                              size = v563;
                            }

                            goto LABEL_769;
                          }
                        }

                        size = (v291 + 1);
                        if (v291 + 1 > ":")
                        {
                          goto LABEL_1855;
                        }

                        goto LABEL_890;
                      }

LABEL_769:
                      webrtc::AddRtcpFbLines((v252 - 80), size);
                      webrtc::AddFmtpLine((v252 - 80), v563);
                      size = v563;
                      v254 = v252 + 136;
                      v252 += 216;
                      if (v254 == v251)
                      {
                        goto LABEL_974;
                      }
                    }
                  }

LABEL_523:
                  v4 = *(v557 + 35);
                  v562 = *(v557 + 36);
                  if (v4 != v562)
                  {
                    v559 = 0;
                    v556 = 0;
                    v169 = 0;
                    v171 = &v567 <= "minptime" && &v567.__r_.__value_.__r.__words[1] > "minptime";
                    LODWORD(p_size) = v171;
                    v173 = &v567 <= "ptime" && v567.__r_.__value_.__r.__words + 5 > "ptime";
                    LODWORD(v560) = v173;
                    v175 = &v567 <= "maxptime" && &v567.__r_.__value_.__r.__words[1] > "maxptime";
                    LODWORD(v558) = v175;
                    do
                    {
                      webrtc::InitLine(97, "rtpmap", 6uLL, &v566);
                      p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v177 = 22;
                      }

                      else
                      {
                        v177 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = v566.__r_.__value_.__l.__size_;
                      }

                      if (v177 == p_p)
                      {
                        std::string::__grow_by_and_replace(&v566, v177, 1uLL, v177, v177, 0, 1uLL, ":");
                      }

                      else
                      {
                        if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v5 = &v566;
                        }

                        else
                        {
                          v5 = v566.__r_.__value_.__r.__words[0];
                        }

                        size = v5 + p_p + 1;
                        if (v5 + p_p <= ":" && size > ":")
                        {
                          goto LABEL_1855;
                        }

                        *(v5 + p_p) = 58;
                        v179 = p_p + 1;
                        if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                        {
                          v566.__r_.__value_.__l.__size_ = v179;
                        }

                        else
                        {
                          *(&v566.__r_.__value_.__s + 23) = v179 & 0x7F;
                        }

                        *(v5 + v179) = 0;
                      }

                      v180 = webrtc::StringBuilder::operator<<(&v566, *(v4 + 12), v176);
                      p_p = HIBYTE(v180->__r_.__value_.__r.__words[2]);
                      v182 = p_p;
                      if ((p_p & 0x80u) == 0)
                      {
                        v183 = 22;
                      }

                      else
                      {
                        v183 = (v180->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((p_p & 0x80u) != 0)
                      {
                        p_p = v180->__r_.__value_.__l.__size_;
                      }

                      if (v183 == p_p)
                      {
                        std::string::__grow_by_and_replace(v180, v183, 1uLL, v183, v183, 0, 1uLL, " ");
                        v184 = *(v4 + 39);
                        if ((v184 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_569;
                        }
                      }

                      else
                      {
                        if (v182 >= 0)
                        {
                          v5 = v180;
                        }

                        else
                        {
                          v5 = v180->__r_.__value_.__r.__words[0];
                        }

                        size = v5 + p_p + 1;
                        if (v5 + p_p <= " " && size > " ")
                        {
                          goto LABEL_1855;
                        }

                        size = 32;
                        *(v5 + p_p++) = 32;
                        if (SHIBYTE(v180->__r_.__value_.__r.__words[2]) < 0)
                        {
                          v180->__r_.__value_.__l.__size_ = p_p;
                          *(v5 + p_p) = 0;
                          v184 = *(v4 + 39);
                          if ((v184 & 0x8000000000000000) == 0)
                          {
LABEL_569:
                            v185 = (v4 + 16);
                            LOBYTE(v5) = v184 == 0;
                            goto LABEL_581;
                          }
                        }

                        else
                        {
                          *(&v180->__r_.__value_.__s + 23) = p_p & 0x7F;
                          *(v5 + p_p) = 0;
                          v184 = *(v4 + 39);
                          if ((v184 & 0x8000000000000000) == 0)
                          {
                            goto LABEL_569;
                          }
                        }
                      }

                      v185 = *(v4 + 16);
                      v184 = *(v4 + 24);
                      v5 = v184 == 0;
                      if (!v185 && v184)
                      {
                        goto LABEL_1855;
                      }

LABEL_581:
                      p_p = SHIBYTE(v566.__r_.__value_.__r.__words[2]);
                      size = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      if ((p_p & 0x80000000) == 0)
                      {
                        v187 = 22;
                      }

                      else
                      {
                        v187 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((p_p & 0x80000000) == 0)
                      {
                        v188 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v188 = v566.__r_.__value_.__l.__size_;
                      }

                      if (v187 - v188 >= v184)
                      {
                        if ((v5 & 1) == 0)
                        {
                          v5 = v566.__r_.__value_.__r.__words[0];
                          if ((p_p & 0x80000000) == 0)
                          {
                            v189 = &v566;
                          }

                          else
                          {
                            v189 = v566.__r_.__value_.__r.__words[0];
                          }

                          if ((v184 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_1855;
                          }

                          v190 = v189 + v188;
                          if (v189 + v188 <= v185)
                          {
                            v5 = &v190[v184];
                            if (&v190[v184] > v185)
                            {
                              goto LABEL_1855;
                            }
                          }

                          memmove(v190, v185, v184);
                          v191 = v188 + v184;
                          if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                          {
                            v566.__r_.__value_.__l.__size_ = v188 + v184;
                          }

                          else
                          {
                            *(&v566.__r_.__value_.__s + 23) = v191 & 0x7F;
                          }

                          v189->__r_.__value_.__s.__data_[v191] = 0;
                        }
                      }

                      else
                      {
                        std::string::__grow_by_and_replace(&v566, v187, v188 + v184 - v187, v188, v188, 0, v184, v185);
                      }

                      p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v192 = 22;
                      }

                      else
                      {
                        v192 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      }

                      if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = v566.__r_.__value_.__l.__size_;
                      }

                      if (v192 == p_p)
                      {
                        std::string::__grow_by_and_replace(&v566, v192, 1uLL, v192, v192, 0, 1uLL, "/");
                      }

                      else
                      {
                        if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v5 = &v566;
                        }

                        else
                        {
                          v5 = v566.__r_.__value_.__r.__words[0];
                        }

                        v193 = (v5 + p_p);
                        if (v5 + p_p <= "/")
                        {
                          size = (v193 + 1);
                          if (v193 + 1 > "/")
                          {
                            goto LABEL_1855;
                          }
                        }

                        *v193 = 47;
                        v194 = p_p + 1;
                        if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                        {
                          v566.__r_.__value_.__l.__size_ = v194;
                        }

                        else
                        {
                          *(&v566.__r_.__value_.__s + 23) = v194 & 0x7F;
                        }

                        *(v5 + v194) = 0;
                      }

                      webrtc::StringBuilder::operator<<(&v566, *(v4 + 40), v181);
                      v5 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                      p_p = v566.__r_.__value_.__l.__size_;
                      if (*(v4 + 48) != 1)
                      {
                        if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v196 = 22;
                        }

                        else
                        {
                          v196 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        }

                        if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                        }

                        if (v196 == p_p)
                        {
                          std::string::__grow_by_and_replace(&v566, v196, 1uLL, v196, v196, 0, 1uLL, "/");
                        }

                        else
                        {
                          v5 = v566.__r_.__value_.__r.__words[0];
                          if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v5 = &v566;
                          }

                          v197 = (v5 + p_p);
                          if (v5 + p_p <= "/")
                          {
                            size = (v197 + 1);
                            if (v197 + 1 > "/")
                            {
                              goto LABEL_1855;
                            }
                          }

                          *v197 = 47;
                          v198 = p_p + 1;
                          if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                          {
                            v566.__r_.__value_.__l.__size_ = v198;
                          }

                          else
                          {
                            *(&v566.__r_.__value_.__s + 23) = v198 & 0x7F;
                          }

                          *(v5 + v198) = 0;
                        }

                        v199 = *(v4 + 48);
                        v567.__r_.__value_.__r.__words[2] = 0x1600000000000000;
                        *&v567.__r_.__value_.__l.__data_ = 0uLL;
                        v200 = absl::numbers_internal::FastIntToBuffer(v199, &v567, v195);
                        v201 = v200 - &v567;
                        if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                        {
                          if (v567.__r_.__value_.__l.__size_ < v201)
                          {
LABEL_1879:
                            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                          }

                          v202 = v567.__r_.__value_.__r.__words[0];
                          v567.__r_.__value_.__l.__size_ = v200 - &v567;
                        }

                        else
                        {
                          if (v201 > SHIBYTE(v567.__r_.__value_.__r.__words[2]))
                          {
                            goto LABEL_1879;
                          }

                          *(&v567.__r_.__value_.__s + 23) = v200 - &v567;
                          v202 = &v567;
                        }

                        v202->__r_.__value_.__s.__data_[v201] = 0;
                        v5 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                        size = v567.__r_.__value_.__l.__size_;
                        p_p = &v567;
                        if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v203 = &v567;
                        }

                        else
                        {
                          v203 = v567.__r_.__value_.__r.__words[0];
                        }

                        if ((v567.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v204 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v204 = v567.__r_.__value_.__l.__size_;
                        }

                        if (!v203 && v204)
                        {
                          goto LABEL_1855;
                        }

                        v5 = SHIBYTE(v566.__r_.__value_.__r.__words[2]);
                        size = v566.__r_.__value_.__l.__size_;
                        if ((v5 & 0x80000000) == 0)
                        {
                          v205 = 22;
                        }

                        else
                        {
                          v205 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        }

                        if ((v5 & 0x80000000) == 0)
                        {
                          v206 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v206 = v566.__r_.__value_.__l.__size_;
                        }

                        if (v205 - v206 < v204)
                        {
                          std::string::__grow_by_and_replace(&v566, v205, v206 + v204 - v205, v206, v206, 0, v204, v203);
                          if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_655;
                          }

LABEL_666:
                          v5 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                          p_p = v566.__r_.__value_.__l.__size_;
                          goto LABEL_667;
                        }

                        if (v204)
                        {
                          p_p = v566.__r_.__value_.__r.__words[0];
                          if ((v5 & 0x80000000) == 0)
                          {
                            v207 = &v566;
                          }

                          else
                          {
                            v207 = v566.__r_.__value_.__r.__words[0];
                          }

                          if ((v204 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_1855;
                          }

                          v208 = v207 + v206;
                          if ((v207 + v206) <= v203)
                          {
                            v5 = &v208[v204];
                            if (&v208[v204] > v203)
                            {
                              goto LABEL_1855;
                            }
                          }

                          v209 = v204;
                          memmove(v208, v203, v204);
                          v210 = v206 + v209;
                          if ((SHIBYTE(v566.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            *(&v566.__r_.__value_.__s + 23) = v210 & 0x7F;
                            v207->__r_.__value_.__s.__data_[v210] = 0;
                            goto LABEL_665;
                          }

                          v566.__r_.__value_.__l.__size_ = v206 + v209;
                          v207->__r_.__value_.__s.__data_[v210] = 0;
                          if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_666;
                          }
                        }

                        else
                        {
LABEL_665:
                          if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_666;
                          }
                        }

LABEL_655:
                        operator delete(v567.__r_.__value_.__l.__data_);
                        goto LABEL_666;
                      }

LABEL_667:
                      if ((v5 & 0x80u) == 0)
                      {
                        v211 = &v566;
                      }

                      else
                      {
                        v211 = v566.__r_.__value_.__r.__words[0];
                      }

                      if ((v5 & 0x80u) == 0)
                      {
                        v212 = v5;
                      }

                      else
                      {
                        v212 = p_p;
                      }

                      size = v563;
                      if (v563)
                      {
                        if (!v211 && v212)
                        {
                          goto LABEL_1855;
                        }

                        v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                        if ((v5 & 0x8000000000000000) != 0)
                        {
                          v214 = v563->__r_.__value_.__l.__size_;
                          v213 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                          p_p = v213 - v214;
                          if (v213 - v214 >= v212)
                          {
                            goto LABEL_683;
                          }

LABEL_678:
                          std::string::__grow_by_and_replace(v563, v213, v212 - v213 + v214, v214, v214, 0, v212, v211);
                          size = v563;
                          v215 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                          if ((v215 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_679;
                          }
                        }

                        else
                        {
                          v213 = 22;
                          v214 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                          p_p = 22 - v5;
                          if (22 - v5 < v212)
                          {
                            goto LABEL_678;
                          }

LABEL_683:
                          if (v212)
                          {
                            v217 = v563;
                            if ((v5 & 0x80000000) != 0)
                            {
                              v217 = v563->__r_.__value_.__r.__words[0];
                            }

                            if ((v212 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_1855;
                            }

                            v218 = v217 + v214;
                            if ((v217 + v214) <= v211)
                            {
                              v5 = &v218[v212];
                              if (&v218[v212] > v211)
                              {
                                goto LABEL_1855;
                              }
                            }

                            v219 = v212;
                            memmove(v218, v211, v212);
                            size = v563;
                            v220 = v214 + v219;
                            if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              *(&v563->__r_.__value_.__s + 23) = v220 & 0x7F;
                              v217->__r_.__value_.__s.__data_[v220] = 0;
                              goto LABEL_691;
                            }

                            v563->__r_.__value_.__l.__size_ = v220;
                            v217->__r_.__value_.__s.__data_[v220] = 0;
                            v215 = *(size + 23);
                            if ((v215 & 0x8000000000000000) != 0)
                            {
LABEL_679:
                              v215 = *(size + 8);
                              v216 = (*(size + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
                              if (v216 - v215 < 2)
                              {
                                goto LABEL_694;
                              }

                              v5 = *size;
                              p_p = *size + v215;
                              if (p_p > "\r\n")
                              {
                                goto LABEL_697;
                              }

                              goto LABEL_696;
                            }
                          }

                          else
                          {
LABEL_691:
                            v215 = *(size + 23);
                            if ((v215 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_679;
                            }
                          }
                        }

                        if (v215 - 21 < 2)
                        {
                          v216 = 22;
LABEL_694:
                          std::string::__grow_by_and_replace(size, v216, v215 - v216 + 2, v215, v215, 0, 2uLL, "\r\n");
                          size = v563;
                          goto LABEL_701;
                        }

                        v5 = size;
                        p_p = size + v215;
                        if (size + v215 > "\r\n")
                        {
                          goto LABEL_697;
                        }

LABEL_696:
                        if (p_p + 2 > "\r\n")
                        {
                          goto LABEL_1855;
                        }

LABEL_697:
                        *p_p = 2573;
                        v221 = v215 + 2;
                        if (*(size + 23) < 0)
                        {
                          *(size + 8) = v221;
                        }

                        else
                        {
                          *(size + 23) = v221 & 0x7F;
                        }

                        *(v5 + v221) = 0;
                      }

LABEL_701:
                      v222 = size;
                      webrtc::AddRtcpFbLines(v4, size);
                      webrtc::AddFmtpLine(v4, v222);
                      *(&v567.__r_.__value_.__s + 23) = 8;
                      v5 = p_size;
                      if (p_size)
                      {
                        goto LABEL_1855;
                      }

                      strcpy(&v567, "minptime");
                      v223 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v4 + 168, &v567.__r_.__value_.__l.__data_);
                      v224 = (v4 + 176);
                      if ((v4 + 176) == v223)
                      {
                        v227 = 0;
                        LODWORD(v228) = 0;
                        if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_716;
                        }

LABEL_715:
                        operator delete(v567.__r_.__value_.__l.__data_);
                        goto LABEL_716;
                      }

                      v225 = *(v223 + 79);
                      if ((v225 & 0x8000000000000000) != 0)
                      {
                        v229 = v223;
                        v226 = v223[7];
                        v225 = v229[8];
                      }

                      else
                      {
                        v226 = (v223 + 7);
                      }

                      v230 = webrtc::string_to_number_internal::ParseSigned(v226, v225, 0xAuLL);
                      p_p = v230 | 0x100000000;
                      if ((v231 & ((v230 + 0x80000000) >> 32 == 0)) != 0)
                      {
                        v232 = v230 | 0x100000000;
                      }

                      else
                      {
                        v232 = 0;
                      }

                      v228 = HIDWORD(v232);
                      if (HIDWORD(v232))
                      {
                        v227 = v232;
                      }

                      else
                      {
                        v227 = 0;
                      }

                      if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_715;
                      }

LABEL_716:
                      if (v227 <= v169)
                      {
                        v233 = v169;
                      }

                      else
                      {
                        v233 = v227;
                      }

                      if (v228)
                      {
                        v169 = v233;
                      }

                      *(&v567.__r_.__value_.__s + 23) = 5;
                      v5 = v560;
                      if (v560)
                      {
                        goto LABEL_1855;
                      }

                      LODWORD(v567.__r_.__value_.__l.__data_) = *"ptime";
                      WORD2(v567.__r_.__value_.__r.__words[0]) = webrtc::kCodecParamPTime[4];
                      v234 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v4 + 168, &v567.__r_.__value_.__l.__data_);
                      if (v224 == v234)
                      {
                        LODWORD(v237) = 0;
                        if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_726;
                        }
                      }

                      else
                      {
                        v235 = *(v234 + 79);
                        if ((v235 & 0x8000000000000000) != 0)
                        {
                          v238 = v234;
                          v236 = v234[7];
                          v235 = v238[8];
                        }

                        else
                        {
                          v236 = (v234 + 7);
                        }

                        v239 = webrtc::string_to_number_internal::ParseSigned(v236, v235, 0xAuLL);
                        p_p = v239 | 0x100000000;
                        if ((v240 & ((v239 + 0x80000000) >> 32 == 0)) != 0)
                        {
                          v241 = v239 | 0x100000000;
                        }

                        else
                        {
                          v241 = 0;
                        }

                        v237 = HIDWORD(v241);
                        if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                        {
LABEL_726:
                          operator delete(v567.__r_.__value_.__l.__data_);
                          if (v237)
                          {
                            goto LABEL_734;
                          }

                          goto LABEL_736;
                        }
                      }

                      if (v237)
                      {
LABEL_734:
                        v5 = v559;
                        if (!v559)
                        {
                          operator new();
                        }

                        goto LABEL_1855;
                      }

LABEL_736:
                      *(&v567.__r_.__value_.__s + 23) = 8;
                      v5 = v558;
                      if (v558)
                      {
                        goto LABEL_1855;
                      }

                      strcpy(&v567, "maxptime");
                      v242 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v4 + 168, &v567.__r_.__value_.__l.__data_);
                      if (v224 == v242)
                      {
                        LODWORD(v245) = 0;
                        if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_748;
                        }

LABEL_747:
                        operator delete(v567.__r_.__value_.__l.__data_);
                        goto LABEL_748;
                      }

                      v243 = *(v242 + 79);
                      if ((v243 & 0x8000000000000000) != 0)
                      {
                        v246 = v242;
                        v244 = v242[7];
                        v243 = v246[8];
                      }

                      else
                      {
                        v244 = (v242 + 7);
                      }

                      v247 = webrtc::string_to_number_internal::ParseSigned(v244, v243, 0xAuLL);
                      p_p = v247 | 0x100000000;
                      if ((v248 & ((v247 + 0x80000000) >> 32 == 0)) != 0)
                      {
                        v249 = v247 | 0x100000000;
                      }

                      else
                      {
                        v249 = 0;
                      }

                      v245 = HIDWORD(v249);
                      if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_747;
                      }

LABEL_748:
                      if (v245)
                      {
                        v5 = v556;
                        if (!v556)
                        {
                          operator new();
                        }

                        goto LABEL_1855;
                      }

                      v4 += 216;
                    }

                    while (v4 != v562);
                  }

LABEL_974:
                  if (*(v557 + 35) != 1)
                  {
                    goto LABEL_1041;
                  }

                  webrtc::InitLine(97, "rtcp-fb", 7uLL, &v566);
                  p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
                  if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v312 = 22;
                  }

                  else
                  {
                    v312 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  }

                  if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_p = v566.__r_.__value_.__l.__size_;
                  }

                  if (v312 == p_p)
                  {
                    std::string::__grow_by_and_replace(&v566, v312, 1uLL, v312, v312, 0, 1uLL, ":");
                  }

                  else
                  {
                    if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v5 = &v566;
                    }

                    else
                    {
                      v5 = v566.__r_.__value_.__r.__words[0];
                    }

                    v313 = (v5 + p_p);
                    size = ":";
                    if (v5 + p_p <= ":" && v313 + 1 > ":")
                    {
                      continue;
                    }

                    *v313 = 58;
                    v314 = p_p + 1;
                    if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v566.__r_.__value_.__l.__size_ = v314;
                    }

                    else
                    {
                      *(&v566.__r_.__value_.__s + 23) = v314 & 0x7F;
                    }

                    *(v5 + v314) = 0;
                  }

                  break;
                }

                v315 = (v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                v316 = (v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v566.__r_.__value_.__r.__words[2]) : v566.__r_.__value_.__l.__size_;
                if (v315 - v316 >= 0xA)
                {
                  v5 = &v566;
                  if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v5 = v566.__r_.__value_.__r.__words[0];
                  }

                  p_p = v5 + v316;
                  if (v5 + v316 <= "* ack ccfb")
                  {
                    size = p_p + 10;
                    if (p_p + 10 > "* ack ccfb")
                    {
                      continue;
                    }
                  }

                  *(p_p + 8) = 25190;
                  *p_p = *"* ack ccfb";
                  v317 = v316 + 10;
                  if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v566.__r_.__value_.__l.__size_ = v316 + 10;
                  }

                  else
                  {
                    *(&v566.__r_.__value_.__s + 23) = v317 & 0x7F;
                  }

                  *(v5 + v317) = 0;
                }

                else
                {
                  std::string::__grow_by_and_replace(&v566, v315, v316 - v315 + 10, v316, v316, 0, 0xAuLL, "* ack ccfb");
                }

                break;
              }

              v5 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
              size = v566.__r_.__value_.__l.__size_;
              p_p = &v566;
              v318 = (v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v566 : v566.__r_.__value_.__r.__words[0];
              v319 = (v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v566.__r_.__value_.__r.__words[2]) : v566.__r_.__value_.__l.__size_;
              v320 = v563;
              if (!v563)
              {
                goto LABEL_1041;
              }

              if (!v318 && v319)
              {
                continue;
              }

              break;
            }

            v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
            if ((v5 & 0x8000000000000000) != 0)
            {
              v322 = v563->__r_.__value_.__l.__size_;
              v321 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              p_p = v321 - v322;
              if (v321 - v322 < v319)
              {
LABEL_1018:
                std::string::__grow_by_and_replace(v563, v321, v319 - v321 + v322, v322, v322, 0, v319, v318);
                v320 = v563;
                v323 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
                if ((v323 & 0x8000000000000000) != 0)
                {
                  goto LABEL_1019;
                }

                goto LABEL_1032;
              }
            }

            else
            {
              v321 = 22;
              v322 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
              p_p = 22 - v5;
              if (22 - v5 < v319)
              {
                goto LABEL_1018;
              }
            }

            if (!v319)
            {
              goto LABEL_1031;
            }

            v325 = v563;
            if ((v5 & 0x80000000) != 0)
            {
              v325 = v563->__r_.__value_.__r.__words[0];
            }

            if ((v319 & 0x8000000000000000) != 0)
            {
              continue;
            }

            break;
          }

          v326 = v325 + v322;
          if ((v325 + v322) <= v318)
          {
            v5 = &v326[v319];
            if (&v326[v319] > v318)
            {
              continue;
            }
          }

          break;
        }

        v327 = v319;
        memmove(v326, v318, v319);
        v328 = v322 + v327;
        v320 = v563;
        if ((SHIBYTE(v563->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          *(&v563->__r_.__value_.__s + 23) = v328 & 0x7F;
          v325->__r_.__value_.__s.__data_[v328] = 0;
LABEL_1031:
          v323 = SHIBYTE(v320->__r_.__value_.__r.__words[2]);
          if ((v323 & 0x8000000000000000) != 0)
          {
            goto LABEL_1019;
          }

          goto LABEL_1032;
        }

        v563->__r_.__value_.__l.__size_ = v328;
        v325->__r_.__value_.__s.__data_[v328] = 0;
        v323 = SHIBYTE(v320->__r_.__value_.__r.__words[2]);
        if ((v323 & 0x8000000000000000) != 0)
        {
LABEL_1019:
          v323 = v320->__r_.__value_.__l.__size_;
          v324 = (v320->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v324 - v323 < 2)
          {
            goto LABEL_1034;
          }

          v5 = v320->__r_.__value_.__r.__words[0];
          p_p = v320->__r_.__value_.__r.__words[0] + v323;
          if (p_p <= "\r\n")
          {
            goto LABEL_1038;
          }

          break;
        }

LABEL_1032:
        if (v323 - 21 < 2)
        {
          v324 = 22;
LABEL_1034:
          std::string::__grow_by_and_replace(v320, v324, v323 - v324 + 2, v323, v323, 0, 2uLL, "\r\n");
          if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_1035;
          }

          goto LABEL_1042;
        }

        v5 = v320;
        p_p = v320 + v323;
        if (v320 + v323 <= "\r\n")
        {
LABEL_1038:
          size = p_p + 2;
          v320 = v563;
          if (p_p + 2 > "\r\n")
          {
            continue;
          }
        }

        break;
      }

      *p_p = 2573;
      v330 = v323 + 2;
      if ((SHIBYTE(v320->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&v320->__r_.__value_.__s + 23) = v330 & 0x7F;
        *(v5 + v330) = 0;
LABEL_1041:
        if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_1035;
        }

        goto LABEL_1042;
      }

      v320->__r_.__value_.__l.__size_ = v330;
      *(v5 + v330) = 0;
      if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_1035:
        operator delete(v566.__r_.__value_.__l.__data_);
        v329 = *(v557 + 12);
        v551 = *(v557 + 13);
        if (v329 == v551)
        {
          goto LABEL_1688;
        }

        goto LABEL_1043;
      }

LABEL_1042:
      v329 = *(v557 + 12);
      v551 = *(v557 + 13);
      if (v329 == v551)
      {
        goto LABEL_1688;
      }

LABEL_1043:
      p_size = &v567.__r_.__value_.__l.__size_;
      v332 = &__p <= "-" && &__p.__r_.__value_.__l.__data_ + 1 > "-";
      v552 = v332;
      v560 = &v567.__r_.__value_.__s.__data_[2];
      v562 = &v567.__r_.__value_.__s.__data_[1];
      do
      {
        v334 = v329[6];
        v333 = v329[7];
        v558 = v329;
        v556 = v333;
        while (v334 != v333)
        {
          v559 = v334;
          if (*(v334 + 3) == *(v334 + 4))
          {
            goto LABEL_1051;
          }

          webrtc::InitLine(97, "ssrc-group", 0xAuLL, &v565);
          p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          v335 = 22;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v336 = 22;
          }

          else
          {
            v336 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = v565.__r_.__value_.__l.__size_;
          }

          if (v336 == p_p)
          {
            if (v336 != 0x7FFFFFFFFFFFFFF6)
            {
              operator new();
            }

            goto LABEL_1878;
          }

          v5 = &v565;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v5 = v565.__r_.__value_.__r.__words[0];
          }

          size = v5 + p_p + 1;
          if (v5 + p_p <= ":" && size > ":")
          {
            goto LABEL_1855;
          }

          size = 58;
          *(v5 + p_p++) = 58;
          if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
          {
            v565.__r_.__value_.__l.__size_ = p_p;
            v338 = v559;
            *(v5 + p_p) = 0;
            v339 = *(v338 + 23);
            if ((v339 & 0x8000000000000000) == 0)
            {
LABEL_1073:
              LOBYTE(v5) = v339 == 0;
              v340 = v338;
              goto LABEL_1074;
            }
          }

          else
          {
            *(&v565.__r_.__value_.__s + 23) = p_p & 0x7F;
            v338 = v559;
            *(v5 + p_p) = 0;
            v339 = *(v338 + 23);
            if ((v339 & 0x8000000000000000) == 0)
            {
              goto LABEL_1073;
            }
          }

          v340 = *v338;
          v339 = *(v338 + 1);
          v5 = v339 == 0;
          if (!*v338 && v339)
          {
            goto LABEL_1855;
          }

LABEL_1074:
          size = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v341 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v335 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            v341 = v565.__r_.__value_.__l.__size_;
          }

          if (v335 - v341 < v339)
          {
            if (0x7FFFFFFFFFFFFFF6 - v335 >= v341 + v339 - v335)
            {
              operator new();
            }

            goto LABEL_1878;
          }

          if (v5)
          {
            v342 = v338;
            v343 = *(v338 + 3);
            v344 = *(v342 + 4);
            if (v343 != v344)
            {
              goto LABEL_1110;
            }

            goto LABEL_1095;
          }

          v5 = v565.__r_.__value_.__r.__words[0];
          p_p = &v565;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v345 = &v565;
          }

          else
          {
            v345 = v565.__r_.__value_.__r.__words[0];
          }

          if ((v339 & 0x8000000000000000) != 0)
          {
            goto LABEL_1855;
          }

          v346 = v345 + v341;
          if (v345 + v341 <= v340)
          {
            v5 = &v346[v339];
            if (&v346[v339] > v340)
            {
              goto LABEL_1855;
            }
          }

          memmove(v346, v340, v339);
          v347 = v341 + v339;
          if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
          {
            v565.__r_.__value_.__l.__size_ = v341 + v339;
          }

          else
          {
            *(&v565.__r_.__value_.__s + 23) = v347 & 0x7F;
          }

          v345->__r_.__value_.__s.__data_[v347] = 0;
          v348 = v338;
          v343 = *(v338 + 3);
          v344 = *(v348 + 4);
          while (v343 != v344)
          {
LABEL_1110:
            v353 = *v343;
            p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v354 = 22;
            }

            else
            {
              v354 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = v565.__r_.__value_.__l.__size_;
            }

            if (v354 == p_p)
            {
              if (v354 != 0x7FFFFFFFFFFFFFF6)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            v5 = &v565;
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v5 = v565.__r_.__value_.__r.__words[0];
            }

            size = v5 + p_p + 1;
            if (v5 + p_p <= " " && size > " ")
            {
              goto LABEL_1855;
            }

            *(v5 + p_p) = 32;
            v356 = p_p + 1;
            if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
            {
              v565.__r_.__value_.__l.__size_ = v356;
            }

            else
            {
              *(&v565.__r_.__value_.__s + 23) = v356 & 0x7F;
            }

            *(v5 + v356) = 0;
            v567.__r_.__value_.__r.__words[2] = 0x1600000000000000;
            *&v567.__r_.__value_.__l.__data_ = 0uLL;
            if (v353 > 9)
            {
              if (v353 >= 0x5F5E100)
              {
                v364 = (v353 % 0x5F5E100 / 0x2710uLL) | ((v353 % 0x5F5E100 % 0x2710) << 32);
                v365 = (((10486 * v364) >> 20) & 0x7F0000007FLL) + ((v364 - 100 * (((10486 * v364) >> 20) & 0x7F0000007FLL)) << 16);
                LOWORD(v567.__r_.__value_.__l.__data_) = ((((103 * (v353 / 0x5F5E100)) >> 10) | ((v353 / 0x5F5E100 - 10 * ((103 * (v353 / 0x5F5E100)) >> 10)) << 8)) + 12336) >> (((v353 / 0x5F5E100 - 10) >> 8) & 8);
                v366 = &v560[(v353 / 0x5F5E100 - 10) >> 8];
                *v366 = (((103 * v365) >> 10) & 0xF000F000F000FLL) + ((v365 + 0xFFFFFFFFFFFFF6 * (((103 * v365) >> 10) & 0xF000F000F000FLL)) << 8) + 0x3030303030303030;
                v366 += 8;
                *v366 = 0;
                v362 = v366 - &v567;
                v363 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  goto LABEL_1130;
                }
              }

              else
              {
                v357 = (v353 / 0x2710uLL) | ((v353 % 0x2710) << 32);
                v358 = (((10486 * v357) >> 20) & 0x7F0000007FLL) + ((v357 - 100 * (((10486 * v357) >> 20) & 0x7F0000007FLL)) << 16);
                v359 = (((103 * v358) >> 10) & 0xF000F000F000FLL) + ((v358 + 0xFFFFFFFFFFFFF6 * (((103 * v358) >> 10) & 0xF000F000F000FLL)) << 8);
                v360 = __clz(__rbit64(v359));
                v567.__r_.__value_.__r.__words[0] = (v359 + 0x3030303030303030) >> (v360 & 0x38);
                v361 = p_size - (v360 >> 3);
                *v361 = 0;
                v362 = v361 - &v567;
                v363 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  goto LABEL_1130;
                }
              }
            }

            else
            {
              v567.__r_.__value_.__s.__data_[0] = v353 | 0x30;
              v368 = v562;
              *v562 = 0;
              v362 = v368 - &v567;
              v363 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
LABEL_1130:
                if (v567.__r_.__value_.__l.__size_ < v362)
                {
                  goto LABEL_1879;
                }

                v367 = v567.__r_.__value_.__r.__words[0];
                v567.__r_.__value_.__l.__size_ = v362;
                goto LABEL_1137;
              }
            }

            if (v362 > v363)
            {
              goto LABEL_1879;
            }

            *(&v567.__r_.__value_.__s + 23) = v362;
            v367 = &v567;
LABEL_1137:
            v367->__r_.__value_.__s.__data_[v362] = 0;
            p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
            v5 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
            size = v567.__r_.__value_.__l.__size_;
            if ((v5 & 0x80000000) == 0)
            {
              v369 = &v567;
            }

            else
            {
              v369 = v567.__r_.__value_.__r.__words[0];
            }

            if ((v5 & 0x80000000) == 0)
            {
              v370 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v370 = v567.__r_.__value_.__l.__size_;
            }

            if (!v369 && v370)
            {
              goto LABEL_1855;
            }

            size = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v371 = 22;
            }

            else
            {
              v371 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v372 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v372 = v565.__r_.__value_.__l.__size_;
            }

            if (v371 - v372 < v370)
            {
              if (0x7FFFFFFFFFFFFFF6 - v371 >= v372 + v370 - v371)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            if (v370)
            {
              v5 = v565.__r_.__value_.__r.__words[0];
              p_p = &v565;
              if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v373 = &v565;
              }

              else
              {
                v373 = v565.__r_.__value_.__r.__words[0];
              }

              if ((v370 & 0x8000000000000000) != 0)
              {
                goto LABEL_1855;
              }

              v374 = v373 + v372;
              if ((v373 + v372) <= v369)
              {
                v5 = &v374[v370];
                if (&v374[v370] > v369)
                {
                  goto LABEL_1855;
                }
              }

              memmove(v374, v369, v370);
              v375 = v372 + v370;
              if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
              {
                v565.__r_.__value_.__l.__size_ = v372 + v370;
                v373->__r_.__value_.__s.__data_[v375] = 0;
                if ((*(&v567.__r_.__value_.__s + 23) & 0x80) == 0)
                {
                  goto LABEL_1109;
                }
              }

              else
              {
                *(&v565.__r_.__value_.__s + 23) = v375 & 0x7F;
                v373->__r_.__value_.__s.__data_[v375] = 0;
                if ((*(&v567.__r_.__value_.__s + 23) & 0x80) == 0)
                {
                  goto LABEL_1109;
                }
              }
            }

            else if ((*(&v567.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_1109;
            }

            operator delete(v567.__r_.__value_.__l.__data_);
LABEL_1109:
            ++v343;
          }

LABEL_1095:
          v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          p_p = &v565;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v349 = &v565;
          }

          else
          {
            v349 = v565.__r_.__value_.__r.__words[0];
          }

          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v350 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v350 = v565.__r_.__value_.__l.__size_;
          }

          size = v563;
          if (v563)
          {
            if (!v349 && v350)
            {
              goto LABEL_1855;
            }

            v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
            if ((v5 & 0x80000000) != 0)
            {
              v352 = v563->__r_.__value_.__l.__size_;
              v376 = v563->__r_.__value_.__r.__words[2];
              v4 = (v376 & 0x7FFFFFFFFFFFFFFFLL) - 1;
              v351 = HIBYTE(v376);
              p_p = v4 - v352;
              if (v4 - v352 < v350)
              {
LABEL_1106:
                if (0x7FFFFFFFFFFFFFF6 - v4 >= v350 - v4 + v352)
                {
                  operator new();
                }

                goto LABEL_1878;
              }
            }

            else
            {
              v351 = HIBYTE(v563->__r_.__value_.__r.__words[2]);
              v4 = 22;
              v352 = v351;
              p_p = 22 - v351;
              if (22 - v351 < v350)
              {
                goto LABEL_1106;
              }
            }

            if (v350)
            {
              v377 = v563;
              if ((v5 & 0x80000000) != 0)
              {
                v377 = v563->__r_.__value_.__r.__words[0];
              }

              if ((v350 & 0x8000000000000000) != 0)
              {
                goto LABEL_1855;
              }

              v378 = v377 + v352;
              if ((v377 + v352) <= v349)
              {
                v5 = &v378[v350];
                if (&v378[v350] > v349)
                {
                  goto LABEL_1855;
                }
              }

              memmove(v378, v349, v350);
              size = v563;
              v379 = v352 + v350;
              if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
              {
                v563->__r_.__value_.__l.__size_ = v379;
              }

              else
              {
                *(&v563->__r_.__value_.__s + 23) = v379 & 0x7F;
              }

              v377->__r_.__value_.__s.__data_[v379] = 0;
              v351 = *(size + 23);
            }

            if ((v351 & 0x80) != 0)
            {
              v351 = *(size + 8);
              v380 = *(size + 16) & 0x7FFFFFFFFFFFFFFFLL;
              if (v380 - 1 - v351 < 2)
              {
                if (0x7FFFFFFFFFFFFFF7 - v380 < v351 - v380 + 3)
                {
                  goto LABEL_1878;
                }

LABEL_1187:
                operator new();
              }

              v5 = *size;
              p_p = *size + v351;
              if (p_p <= "\r\n")
              {
LABEL_1189:
                if (p_p + 2 > "\r\n")
                {
                  goto LABEL_1855;
                }
              }
            }

            else
            {
              if (v351 - 21 < 2)
              {
                goto LABEL_1187;
              }

              v5 = size;
              p_p = size + v351;
              if (size + v351 <= "\r\n")
              {
                goto LABEL_1189;
              }
            }

            *p_p = 2573;
            v381 = v351 + 2;
            if (*(size + 23) < 0)
            {
              *(size + 8) = v381;
            }

            else
            {
              *(size + 23) = v381 & 0x7F;
            }

            *(v5 + v381) = 0;
          }

LABEL_1051:
          v334 = (v559 + 48);
          v333 = v556;
        }

        v382 = v558;
        v383 = v558[4];
        v559 = v558[3];
        __src = v383;
        if (v559 != v383)
        {
          v553 = (v558 + 9);
          while (2)
          {
            v384 = *(v382 + 95);
            if ((v384 & 0x8000000000000000) != 0)
            {
              v385 = v382[9];
              v384 = v382[10];
            }

            else
            {
              v385 = v553;
            }

            LODWORD(v556) = *v559;
            memset(&v566, 0, sizeof(v566));
            webrtc::InitLine(97, "ssrc", 4uLL, &v566);
            p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v387 = 22;
            }

            else
            {
              v387 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = v566.__r_.__value_.__l.__size_;
            }

            if (v387 == p_p)
            {
              if (v387 != 0x7FFFFFFFFFFFFFF6)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            v5 = &v566;
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v5 = v566.__r_.__value_.__r.__words[0];
            }

            size = v5 + p_p + 1;
            if (v5 + p_p <= ":" && size > ":")
            {
              goto LABEL_1855;
            }

            *(v5 + p_p) = 58;
            v389 = p_p + 1;
            if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
            {
              v566.__r_.__value_.__l.__size_ = v389;
            }

            else
            {
              *(&v566.__r_.__value_.__s + 23) = v389 & 0x7F;
            }

            *(v5 + v389) = 0;
            v567.__r_.__value_.__r.__words[2] = 0x1600000000000000;
            *&v567.__r_.__value_.__l.__data_ = 0uLL;
            v390 = absl::numbers_internal::FastIntToBuffer(v556, &v567, v386);
            v391 = v390 - &v567;
            if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              if (v567.__r_.__value_.__l.__size_ < v391)
              {
                goto LABEL_1879;
              }

              v392 = v567.__r_.__value_.__r.__words[0];
              v567.__r_.__value_.__l.__size_ = v390 - &v567;
            }

            else
            {
              if (v391 > SHIBYTE(v567.__r_.__value_.__r.__words[2]))
              {
                goto LABEL_1879;
              }

              *(&v567.__r_.__value_.__s + 23) = v390 - &v567;
              v392 = &v567;
            }

            v392->__r_.__value_.__s.__data_[v391] = 0;
            p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
            v5 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
            size = v567.__r_.__value_.__l.__size_;
            v393 = (v5 & 0x80000000) == 0 ? &v567 : v567.__r_.__value_.__r.__words[0];
            v394 = (v5 & 0x80000000) == 0 ? HIBYTE(v567.__r_.__value_.__r.__words[2]) : v567.__r_.__value_.__l.__size_;
            if (!v393 && v394)
            {
              goto LABEL_1855;
            }

            size = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v395 = 22;
            }

            else
            {
              v395 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v396 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v396 = v566.__r_.__value_.__l.__size_;
            }

            if (v395 - v396 < v394)
            {
              if (0x7FFFFFFFFFFFFFF6 - v395 >= v396 + v394 - v395)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            if (v394)
            {
              v5 = v566.__r_.__value_.__r.__words[0];
              p_p = &v566;
              if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v398 = &v566;
              }

              else
              {
                v398 = v566.__r_.__value_.__r.__words[0];
              }

              if ((v394 & 0x8000000000000000) != 0)
              {
                goto LABEL_1855;
              }

              v399 = v398 + v396;
              if ((v398 + v396) <= v393)
              {
                v5 = &v399[v394];
                if (&v399[v394] > v393)
                {
                  goto LABEL_1855;
                }
              }

              memmove(v399, v393, v394);
              v400 = v396 + v394;
              if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
              {
                v566.__r_.__value_.__l.__size_ = v396 + v394;
              }

              else
              {
                *(&v566.__r_.__value_.__s + 23) = v400 & 0x7F;
              }

              v398->__r_.__value_.__s.__data_[v400] = 0;
              if ((*(&v567.__r_.__value_.__s + 23) & 0x80) != 0)
              {
LABEL_1240:
                operator delete(v567.__r_.__value_.__l.__data_);
              }
            }

            else if ((*(&v567.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              goto LABEL_1240;
            }

            p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v397 = 22;
            }

            else
            {
              v397 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = v566.__r_.__value_.__l.__size_;
            }

            if (v397 == p_p)
            {
              if (v397 != 0x7FFFFFFFFFFFFFF6)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            v5 = &v566;
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v5 = v566.__r_.__value_.__r.__words[0];
            }

            v401 = (v5 + p_p);
            if (v5 + p_p <= " ")
            {
              size = (v401 + 1);
              if (v401 + 1 > " ")
              {
                goto LABEL_1855;
              }
            }

            *v401 = 32;
            v402 = p_p + 1;
            if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
            {
              v566.__r_.__value_.__l.__size_ = v402;
            }

            else
            {
              *(&v566.__r_.__value_.__s + 23) = v402 & 0x7F;
            }

            *(v5 + v402) = 0;
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v403 = 22;
            }

            else
            {
              v403 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v404 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v404 = v566.__r_.__value_.__l.__size_;
            }

            if (v403 - v404 < 5)
            {
              if (0x7FFFFFFFFFFFFFF6 - v403 >= v404 + 5 - v403)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            v5 = v566.__r_.__value_.__r.__words[0];
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v566;
            }

            p_p = v5 + v404;
            if (v5 + v404 <= "cname")
            {
              size = "cname";
              if (p_p + 5 > "cname")
              {
                goto LABEL_1855;
              }
            }

            *(p_p + 4) = 101;
            *p_p = 1835101795;
            v405 = v404 + 5;
            if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
            {
              v566.__r_.__value_.__l.__size_ = v404 + 5;
            }

            else
            {
              *(&v566.__r_.__value_.__s + 23) = v405 & 0x7F;
            }

            *(v5 + v405) = 0;
            p_p = HIBYTE(v566.__r_.__value_.__r.__words[2]);
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v406 = 22;
            }

            else
            {
              v406 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = v566.__r_.__value_.__l.__size_;
            }

            if (v406 == p_p)
            {
              if (v406 != 0x7FFFFFFFFFFFFFF6)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            v5 = v566.__r_.__value_.__r.__words[0];
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v566;
            }

            v407 = (v5 + p_p);
            if (v5 + p_p <= ":")
            {
              size = (v407 + 1);
              if (v407 + 1 > ":")
              {
                goto LABEL_1855;
              }
            }

            size = 58;
            *v407 = 58;
            ++p_p;
            if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
            {
              v566.__r_.__value_.__l.__size_ = p_p;
              v5 += p_p;
              *v5 = 0;
              if (v385)
              {
                goto LABEL_1300;
              }
            }

            else
            {
              *(&v566.__r_.__value_.__s + 23) = p_p & 0x7F;
              v5 += p_p;
              *v5 = 0;
              if (v385)
              {
                goto LABEL_1300;
              }
            }

            if (v384)
            {
              goto LABEL_1855;
            }

LABEL_1300:
            p_p = v566.__r_.__value_.__r.__words[2];
            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v408 = 22;
            }

            else
            {
              v408 = (v566.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v409 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v409 = v566.__r_.__value_.__l.__size_;
            }

            if (v408 - v409 < v384)
            {
              if (0x7FFFFFFFFFFFFFF6 - v408 >= v409 + v384 - v408)
              {
                operator new();
              }

              goto LABEL_1878;
            }

            size = v563;
            if (v384)
            {
              v5 = &v566;
              if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v410 = &v566;
              }

              else
              {
                v410 = v566.__r_.__value_.__r.__words[0];
              }

              if ((v384 & 0x8000000000000000) != 0)
              {
                goto LABEL_1855;
              }

              v411 = v410 + v409;
              if (v410 + v409 <= v385)
              {
                v5 = &v411[v384];
                if (&v411[v384] > v385)
                {
                  goto LABEL_1855;
                }
              }

              memmove(v411, v385, v384);
              v412 = v409 + v384;
              if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
              {
                v566.__r_.__value_.__l.__size_ = v409 + v384;
              }

              else
              {
                *(&v566.__r_.__value_.__s + 23) = v412 & 0x7F;
              }

              size = v563;
              v410->__r_.__value_.__s.__data_[v412] = 0;
              v5 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
              p_p = &v566;
              if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v413 = &v566;
              }

              else
              {
                v413 = v566.__r_.__value_.__r.__words[0];
              }

              if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v414 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v414 = v566.__r_.__value_.__l.__size_;
              }

              if (size)
              {
LABEL_1340:
                if (!v413 && v414)
                {
                  goto LABEL_1855;
                }

                v5 = *(size + 23);
                if ((v5 & 0x80000000) != 0)
                {
                  v417 = *(size + 8);
                  v418 = *(size + 16);
                  v416 = (v418 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  v415 = HIBYTE(v418);
                  p_p = v416 - v417;
                  if (v416 - v417 < v414)
                  {
LABEL_1344:
                    if (0x7FFFFFFFFFFFFFF6 - v416 >= v414 - v416 + v417)
                    {
                      operator new();
                    }

                    goto LABEL_1878;
                  }
                }

                else
                {
                  v415 = *(size + 23);
                  v416 = 22;
                  v417 = v415;
                  p_p = 22 - v415;
                  if (22 - v415 < v414)
                  {
                    goto LABEL_1344;
                  }
                }

                if (v414)
                {
                  v419 = size;
                  if ((v5 & 0x80000000) != 0)
                  {
                    v419 = *size;
                  }

                  if ((v414 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1855;
                  }

                  v420 = (v419 + v417);
                  if (v419 + v417 <= v413)
                  {
                    v5 = &v420[v414];
                    if (&v420[v414] > v413)
                    {
                      goto LABEL_1855;
                    }
                  }

                  memmove(v420, v413, v414);
                  size = v563;
                  v421 = v417 + v414;
                  if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
                  {
                    v563->__r_.__value_.__l.__size_ = v421;
                  }

                  else
                  {
                    *(&v563->__r_.__value_.__s + 23) = v421 & 0x7F;
                  }

                  *(v419 + v421) = 0;
                  v415 = *(size + 23);
                }

                if ((v415 & 0x80) != 0)
                {
                  v415 = *(size + 8);
                  v422 = *(size + 16) & 0x7FFFFFFFFFFFFFFFLL;
                  if (v422 - 1 - v415 < 2)
                  {
                    if (0x7FFFFFFFFFFFFFF7 - v422 < v415 - (v422 - 1) + 2)
                    {
                      goto LABEL_1878;
                    }

LABEL_1362:
                    operator new();
                  }

                  v5 = *size;
                  p_p = *size + v415;
                  if (p_p <= "\r\n")
                  {
                    goto LABEL_1366;
                  }
                }

                else
                {
                  if (v415 - 21 < 2)
                  {
                    goto LABEL_1362;
                  }

                  v5 = size;
                  p_p = size + v415;
                  if (size + v415 <= "\r\n")
                  {
LABEL_1366:
                    if (p_p + 2 > "\r\n")
                    {
                      goto LABEL_1855;
                    }
                  }
                }

                *p_p = 2573;
                v423 = v415 + 2;
                if (*(size + 23) < 0)
                {
                  *(size + 8) = v423;
                  *(v5 + v423) = 0;
                  if ((*(&v566.__r_.__value_.__s + 23) & 0x80) != 0)
                  {
                    goto LABEL_1371;
                  }
                }

                else
                {
                  *(size + 23) = v423 & 0x7F;
                  *(v5 + v423) = 0;
                  if ((*(&v566.__r_.__value_.__s + 23) & 0x80) != 0)
                  {
LABEL_1371:
                    operator delete(v566.__r_.__value_.__l.__data_);
                    if ((a3 & 2) != 0)
                    {
                      goto LABEL_1372;
                    }

                    goto LABEL_1197;
                  }
                }

LABEL_1310:
                if ((a3 & 2) == 0)
                {
                  goto LABEL_1197;
                }

LABEL_1372:
                v424 = v558[12];
                p_p = v558[13];
                if (v424 == p_p)
                {
                  *(&v566.__r_.__value_.__s + 23) = 0;
                  v566.__r_.__value_.__s.__data_[0] = 0;
                }

                else
                {
                  p_p = *(v424 + 23);
                  if ((p_p & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(&v566, *v424, *(v424 + 1));
                    v426 = SHIBYTE(v566.__r_.__value_.__r.__words[2]);
                    if (SHIBYTE(v566.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_1395;
                    }

LABEL_1375:
                    if (v426)
                    {
                      __p = v566;
                      goto LABEL_1380;
                    }
                  }

                  else
                  {
                    v425 = *v424;
                    v566.__r_.__value_.__r.__words[2] = *(v424 + 2);
                    *&v566.__r_.__value_.__l.__data_ = v425;
                    v426 = SHIBYTE(v566.__r_.__value_.__r.__words[2]);
                    if ((SHIBYTE(v566.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_1375;
                    }

LABEL_1395:
                    if (v566.__r_.__value_.__l.__size_)
                    {
                      std::string::__init_copy_ctor_external(&__p, v566.__r_.__value_.__l.__data_, v566.__r_.__value_.__l.__size_);
                      goto LABEL_1380;
                    }
                  }
                }

                *(&__p.__r_.__value_.__s + 23) = 1;
                v5 = v552;
                if (v552)
                {
                  goto LABEL_1855;
                }

                LOWORD(__p.__r_.__value_.__l.__data_) = 45;
LABEL_1380:
                webrtc::InitLine(97, "ssrc", 4uLL, &v565);
                p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v428 = 22;
                }

                else
                {
                  v428 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = v565.__r_.__value_.__l.__size_;
                }

                if (v428 == p_p)
                {
                  if (v428 != 0x7FFFFFFFFFFFFFF6)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                v5 = &v565;
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v5 = v565.__r_.__value_.__r.__words[0];
                }

                v429 = (v5 + p_p);
                if (v5 + p_p <= ":")
                {
                  size = (v429 + 1);
                  if (v429 + 1 > ":")
                  {
                    goto LABEL_1855;
                  }
                }

                *v429 = 58;
                v430 = p_p + 1;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = v430;
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = v430 & 0x7F;
                }

                *(v5 + v430) = 0;
                v567.__r_.__value_.__r.__words[2] = 0x1600000000000000;
                *&v567.__r_.__value_.__l.__data_ = 0uLL;
                v431 = absl::numbers_internal::FastIntToBuffer(v556, &v567, v427);
                v432 = v431 - &v567;
                if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  if (v567.__r_.__value_.__l.__size_ < v432)
                  {
                    goto LABEL_1879;
                  }

                  v433 = v567.__r_.__value_.__r.__words[0];
                  v567.__r_.__value_.__l.__size_ = v431 - &v567;
                }

                else
                {
                  if (v432 > SHIBYTE(v567.__r_.__value_.__r.__words[2]))
                  {
                    goto LABEL_1879;
                  }

                  *(&v567.__r_.__value_.__s + 23) = v431 - &v567;
                  v433 = &v567;
                }

                v433->__r_.__value_.__s.__data_[v432] = 0;
                p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
                v5 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
                size = v567.__r_.__value_.__l.__size_;
                v434 = (v5 & 0x80000000) == 0 ? &v567 : v567.__r_.__value_.__r.__words[0];
                v435 = (v5 & 0x80000000) == 0 ? HIBYTE(v567.__r_.__value_.__r.__words[2]) : v567.__r_.__value_.__l.__size_;
                if (!v434 && v435)
                {
                  goto LABEL_1855;
                }

                size = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v436 = 22;
                }

                else
                {
                  v436 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v437 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v437 = v565.__r_.__value_.__l.__size_;
                }

                if (v436 - v437 < v435)
                {
                  if (0x7FFFFFFFFFFFFFF6 - v436 >= v437 + v435 - v436)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                if (v435)
                {
                  v5 = v565.__r_.__value_.__r.__words[0];
                  p_p = &v565;
                  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v438 = &v565;
                  }

                  else
                  {
                    v438 = v565.__r_.__value_.__r.__words[0];
                  }

                  if ((v435 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1855;
                  }

                  v439 = v438 + v437;
                  if ((v438 + v437) <= v434)
                  {
                    v5 = &v439[v435];
                    if (&v439[v435] > v434)
                    {
                      goto LABEL_1855;
                    }
                  }

                  memmove(v439, v434, v435);
                  v5 = v437 + v435;
                  if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v565.__r_.__value_.__l.__size_ = v437 + v435;
                  }

                  else
                  {
                    *(&v565.__r_.__value_.__s + 23) = v5 & 0x7F;
                  }

                  v438->__r_.__value_.__s.__data_[v5] = 0;
                  LOBYTE(v5) = *(&v567.__r_.__value_.__s + 23);
                }

                if ((v5 & 0x80) != 0)
                {
                  operator delete(v567.__r_.__value_.__l.__data_);
                }

                p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v440 = 22;
                }

                else
                {
                  v440 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = v565.__r_.__value_.__l.__size_;
                }

                if (v440 == p_p)
                {
                  if (v440 != 0x7FFFFFFFFFFFFFF6)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                v5 = &v565;
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v5 = v565.__r_.__value_.__r.__words[0];
                }

                v441 = (v5 + p_p);
                if (v5 + p_p <= " ")
                {
                  size = (v441 + 1);
                  if (v441 + 1 > " ")
                  {
                    goto LABEL_1855;
                  }
                }

                *v441 = 32;
                v442 = p_p + 1;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = v442;
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = v442 & 0x7F;
                }

                *(v5 + v442) = 0;
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v443 = 22;
                }

                else
                {
                  v443 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v444 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v444 = v565.__r_.__value_.__l.__size_;
                }

                if (v443 - v444 < 4)
                {
                  if (0x7FFFFFFFFFFFFFF6 - v443 >= v444 + 4 - v443)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                v5 = v565.__r_.__value_.__r.__words[0];
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v5 = &v565;
                }

                p_p = v5 + v444;
                if (v5 + v444 <= "msid")
                {
                  size = "msid";
                  if (p_p + 4 > "msid")
                  {
                    goto LABEL_1855;
                  }
                }

                *p_p = 1684632429;
                v445 = v444 + 4;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = v444 + 4;
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = v445 & 0x7F;
                }

                *(v5 + v445) = 0;
                p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v446 = 22;
                }

                else
                {
                  v446 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = v565.__r_.__value_.__l.__size_;
                }

                if (v446 == p_p)
                {
                  if (v446 != 0x7FFFFFFFFFFFFFF6)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                v5 = v565.__r_.__value_.__r.__words[0];
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v5 = &v565;
                }

                v447 = (v5 + p_p);
                if (v5 + p_p <= ":")
                {
                  size = (v447 + 1);
                  if (v447 + 1 > ":")
                  {
                    goto LABEL_1855;
                  }
                }

                *v447 = 58;
                v448 = p_p + 1;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = v448;
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = v448 & 0x7F;
                }

                *(v5 + v448) = 0;
                v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                size = __p.__r_.__value_.__l.__size_;
                p_p = &__p;
                v449 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                v450 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                if (!v449 && v450)
                {
                  goto LABEL_1855;
                }

                v451 = v565.__r_.__value_.__r.__words[2];
                v452 = v565.__r_.__value_.__l.__size_;
                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v453 = 22;
                }

                else
                {
                  v453 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v454 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v454 = v565.__r_.__value_.__l.__size_;
                }

                if (v453 - v454 < v450)
                {
                  if (0x7FFFFFFFFFFFFFF6 - v453 >= v454 + v450 - v453)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                size = v558;
                if (v450)
                {
                  v5 = v565.__r_.__value_.__r.__words[0];
                  p_p = &v565;
                  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v455 = &v565;
                  }

                  else
                  {
                    v455 = v565.__r_.__value_.__r.__words[0];
                  }

                  if ((v450 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1855;
                  }

                  v456 = v455 + v454;
                  if ((v455 + v454) <= v449)
                  {
                    v5 = &v456[v450];
                    if (&v456[v450] > v449)
                    {
                      goto LABEL_1855;
                    }
                  }

                  memmove(v456, v449, v450);
                  v457 = v454 + v450;
                  if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v565.__r_.__value_.__l.__size_ = v454 + v450;
                  }

                  else
                  {
                    *(&v565.__r_.__value_.__s + 23) = v457 & 0x7F;
                  }

                  size = v558;
                  v455->__r_.__value_.__s.__data_[v457] = 0;
                  p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                  v451 = v565.__r_.__value_.__r.__words[2];
                  v452 = v565.__r_.__value_.__l.__size_;
                }

                else
                {
                  p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                }

                v458 = p_p;
                v459 = (v451 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if ((p_p & 0x80u) == 0)
                {
                  v460 = 22;
                }

                else
                {
                  v460 = v459;
                }

                if ((p_p & 0x80u) != 0)
                {
                  p_p = v452;
                }

                if (v460 == p_p)
                {
                  if (v460 != 0x7FFFFFFFFFFFFFF6)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                v5 = v565.__r_.__value_.__r.__words[0];
                if (v458 >= 0)
                {
                  v5 = &v565;
                }

                v461 = (v5 + p_p);
                if (v5 + p_p <= " ")
                {
                  size = v558;
                  if (v461 + 1 > " ")
                  {
                    goto LABEL_1855;
                  }
                }

                *v461 = 32;
                ++p_p;
                if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                {
                  v565.__r_.__value_.__l.__size_ = p_p;
                  *(v5 + p_p) = 0;
                  v462 = *(size + 23);
                  if ((v462 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_1525;
                  }

LABEL_1522:
                  v463 = *size;
                  v462 = *(size + 8);
                  v5 = v462 == 0;
                  if (!*size && v462)
                  {
                    goto LABEL_1855;
                  }
                }

                else
                {
                  *(&v565.__r_.__value_.__s + 23) = p_p & 0x7F;
                  *(v5 + p_p) = 0;
                  v462 = *(size + 23);
                  if ((v462 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1522;
                  }

LABEL_1525:
                  LOBYTE(v5) = v462 == 0;
                  v463 = size;
                }

                p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
                if ((p_p & 0x80000000) == 0)
                {
                  v464 = 22;
                }

                else
                {
                  v464 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((p_p & 0x80000000) == 0)
                {
                  v465 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v465 = v565.__r_.__value_.__l.__size_;
                }

                if (v464 - v465 < v462)
                {
                  if (0x7FFFFFFFFFFFFFF6 - v464 >= v465 + v462 - v464)
                  {
                    operator new();
                  }

                  goto LABEL_1878;
                }

                size = v563;
                if (v5)
                {
                  v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                  p_p = &v565;
                  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v466 = &v565;
                  }

                  else
                  {
                    v466 = v565.__r_.__value_.__r.__words[0];
                  }

                  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v467 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v467 = v565.__r_.__value_.__l.__size_;
                  }

                  if (!v563)
                  {
                    goto LABEL_1593;
                  }
                }

                else
                {
                  v5 = &v565;
                  if ((p_p & 0x80000000) == 0)
                  {
                    v468 = &v565;
                  }

                  else
                  {
                    v468 = v565.__r_.__value_.__r.__words[0];
                  }

                  if ((v462 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1855;
                  }

                  v469 = v468 + v465;
                  if (v468 + v465 <= v463)
                  {
                    v5 = &v469[v462];
                    if (&v469[v462] > v463)
                    {
                      goto LABEL_1855;
                    }
                  }

                  memmove(v469, v463, v462);
                  v470 = v465 + v462;
                  if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v565.__r_.__value_.__l.__size_ = v465 + v462;
                  }

                  else
                  {
                    *(&v565.__r_.__value_.__s + 23) = v470 & 0x7F;
                  }

                  size = v563;
                  v468->__r_.__value_.__s.__data_[v470] = 0;
                  v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                  p_p = &v565;
                  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v466 = &v565;
                  }

                  else
                  {
                    v466 = v565.__r_.__value_.__r.__words[0];
                  }

                  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v467 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v467 = v565.__r_.__value_.__l.__size_;
                  }

                  if (!size)
                  {
                    goto LABEL_1593;
                  }
                }

                if (!v466 && v467)
                {
                  goto LABEL_1855;
                }

                v5 = *(size + 23);
                if ((v5 & 0x80000000) != 0)
                {
                  v473 = *(size + 8);
                  v474 = *(size + 16);
                  v472 = (v474 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  v471 = HIBYTE(v474);
                  p_p = v472 - v473;
                  if (v472 - v473 < v467)
                  {
LABEL_1566:
                    if (0x7FFFFFFFFFFFFFF6 - v472 >= v467 - v472 + v473)
                    {
                      operator new();
                    }

LABEL_1878:
                    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                  }
                }

                else
                {
                  v471 = *(size + 23);
                  v472 = 22;
                  v473 = v471;
                  p_p = 22 - v471;
                  if (22 - v471 < v467)
                  {
                    goto LABEL_1566;
                  }
                }

                if (v467)
                {
                  v475 = size;
                  if ((v5 & 0x80000000) != 0)
                  {
                    v475 = *size;
                  }

                  if ((v467 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_1855;
                  }

                  v476 = (v475 + v473);
                  if (v475 + v473 <= v466)
                  {
                    v5 = &v476[v467];
                    if (&v476[v467] > v466)
                    {
                      goto LABEL_1855;
                    }
                  }

                  memmove(v476, v466, v467);
                  size = v563;
                  v477 = v473 + v467;
                  if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
                  {
                    v563->__r_.__value_.__l.__size_ = v477;
                  }

                  else
                  {
                    *(&v563->__r_.__value_.__s + 23) = v477 & 0x7F;
                  }

                  *(v475 + v477) = 0;
                  v471 = *(size + 23);
                }

                if ((v471 & 0x80) != 0)
                {
                  v471 = *(size + 8);
                  v478 = *(size + 16) & 0x7FFFFFFFFFFFFFFFLL;
                  if (v478 - 1 - v471 < 2)
                  {
                    if (0x7FFFFFFFFFFFFFF7 - v478 < v471 - v478 + 3)
                    {
                      goto LABEL_1878;
                    }

LABEL_1583:
                    operator new();
                  }

                  v5 = *size;
                  p_p = *size + v471;
                  if (p_p <= "\r\n")
                  {
                    goto LABEL_1588;
                  }
                }

                else
                {
                  if (v471 - 21 < 2)
                  {
                    goto LABEL_1583;
                  }

                  v5 = size;
                  p_p = size + v471;
                  if (size + v471 <= "\r\n")
                  {
LABEL_1588:
                    if (p_p + 2 > "\r\n")
                    {
                      goto LABEL_1855;
                    }
                  }
                }

                *p_p = 2573;
                v479 = v471 + 2;
                if (*(size + 23) < 0)
                {
                  *(size + 8) = v479;
                }

                else
                {
                  *(size + 23) = v479 & 0x7F;
                }

                *(v5 + v479) = 0;
LABEL_1593:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v566.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_1197;
                  }
                }

                else if ((SHIBYTE(v566.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_1197;
                }

                operator delete(v566.__r_.__value_.__l.__data_);
LABEL_1197:
                v559 = (v559 + 4);
                v382 = v558;
                if (v559 == __src)
                {
                  goto LABEL_1596;
                }

                continue;
              }
            }

            else
            {
              v5 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
              p_p = &v566;
              if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v413 = &v566;
              }

              else
              {
                v413 = v566.__r_.__value_.__r.__words[0];
              }

              if ((v566.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v414 = HIBYTE(v566.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v414 = v566.__r_.__value_.__l.__size_;
              }

              if (v563)
              {
                goto LABEL_1340;
              }
            }

            break;
          }

          if ((v5 & 0x80) != 0)
          {
            goto LABEL_1371;
          }

          goto LABEL_1310;
        }

LABEL_1596:
        v480 = v382[15];
        v559 = v382[16];
        while (v480 != v559)
        {
          webrtc::InitLine(97, "rid", 3uLL, &v565);
          p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v481 = 22;
          }

          else
          {
            v481 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = v565.__r_.__value_.__l.__size_;
          }

          if (v481 == p_p)
          {
            if (v481 != 0x7FFFFFFFFFFFFFF6)
            {
              operator new();
            }

            goto LABEL_1878;
          }

          v5 = &v565;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v5 = v565.__r_.__value_.__r.__words[0];
          }

          size = v5 + p_p + 1;
          if (v5 + p_p <= ":" && size > ":")
          {
            goto LABEL_1855;
          }

          *(v5 + p_p) = 58;
          v483 = p_p + 1;
          if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
          {
            v565.__r_.__value_.__l.__size_ = v483;
          }

          else
          {
            *(&v565.__r_.__value_.__s + 23) = v483 & 0x7F;
          }

          *(v5 + v483) = 0;
          webrtc::SimulcastSdpSerializer::SerializeRidDescription(v557, v480, &v567);
          p_p = HIBYTE(v567.__r_.__value_.__r.__words[2]);
          v5 = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
          size = v567.__r_.__value_.__l.__size_;
          v484 = (v5 & 0x80000000) == 0 ? &v567 : v567.__r_.__value_.__r.__words[0];
          v485 = (v5 & 0x80000000) == 0 ? HIBYTE(v567.__r_.__value_.__r.__words[2]) : v567.__r_.__value_.__l.__size_;
          if (!v484 && v485)
          {
            goto LABEL_1855;
          }

          size = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v486 = 22;
          }

          else
          {
            v486 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v487 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v487 = v565.__r_.__value_.__l.__size_;
          }

          if (v486 - v487 < v485)
          {
            if (0x7FFFFFFFFFFFFFF6 - v486 >= v487 + v485 - v486)
            {
              operator new();
            }

            goto LABEL_1878;
          }

          if (v485)
          {
            v5 = v565.__r_.__value_.__r.__words[0];
            p_p = &v565;
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v493 = &v565;
            }

            else
            {
              v493 = v565.__r_.__value_.__r.__words[0];
            }

            if ((v485 & 0x8000000000000000) != 0)
            {
              goto LABEL_1855;
            }

            v494 = v493 + v487;
            if ((v493 + v487) <= v484)
            {
              v5 = &v494[v485];
              if (&v494[v485] > v484)
              {
                goto LABEL_1855;
              }
            }

            memmove(v494, v484, v485);
            v495 = v487 + v485;
            if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
            {
              v565.__r_.__value_.__l.__size_ = v487 + v485;
              v493->__r_.__value_.__s.__data_[v495] = 0;
              if ((*(&v567.__r_.__value_.__s + 23) & 0x80) != 0)
              {
LABEL_1634:
                operator delete(v567.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *(&v565.__r_.__value_.__s + 23) = v495 & 0x7F;
              v493->__r_.__value_.__s.__data_[v495] = 0;
              if ((*(&v567.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                goto LABEL_1634;
              }
            }
          }

          else if ((*(&v567.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_1634;
          }

          v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          p_p = &v565;
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v488 = &v565;
          }

          else
          {
            v488 = v565.__r_.__value_.__r.__words[0];
          }

          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v489 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v489 = v565.__r_.__value_.__l.__size_;
          }

          size = v563;
          if (!v563)
          {
            goto LABEL_1599;
          }

          if (!v488 && v489)
          {
            goto LABEL_1855;
          }

          v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
          if ((v5 & 0x80000000) != 0)
          {
            v492 = v563->__r_.__value_.__l.__size_;
            v496 = v563->__r_.__value_.__r.__words[2];
            v491 = (v496 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            v490 = HIBYTE(v496);
            p_p = v491 - v492;
            if (v491 - v492 < v489)
            {
LABEL_1646:
              if (0x7FFFFFFFFFFFFFF6 - v491 >= v489 - v491 + v492)
              {
                operator new();
              }

              goto LABEL_1878;
            }
          }

          else
          {
            v490 = HIBYTE(v563->__r_.__value_.__r.__words[2]);
            v491 = 22;
            v492 = v490;
            p_p = 22 - v490;
            if (22 - v490 < v489)
            {
              goto LABEL_1646;
            }
          }

          if (v489)
          {
            v497 = v563;
            if ((v5 & 0x80000000) != 0)
            {
              v497 = v563->__r_.__value_.__r.__words[0];
            }

            if ((v489 & 0x8000000000000000) != 0)
            {
              goto LABEL_1855;
            }

            v498 = v497 + v492;
            if ((v497 + v492) <= v488)
            {
              v5 = &v498[v489];
              if (&v498[v489] > v488)
              {
                goto LABEL_1855;
              }
            }

            memmove(v498, v488, v489);
            size = v563;
            v499 = v492 + v489;
            if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
            {
              v563->__r_.__value_.__l.__size_ = v499;
            }

            else
            {
              *(&v563->__r_.__value_.__s + 23) = v499 & 0x7F;
            }

            v497->__r_.__value_.__s.__data_[v499] = 0;
            v490 = *(size + 23);
          }

          if ((v490 & 0x80) != 0)
          {
            v490 = *(size + 8);
            v500 = *(size + 16) & 0x7FFFFFFFFFFFFFFFLL;
            if (v500 - 1 - v490 < 2)
            {
              if (0x7FFFFFFFFFFFFFF7 - v500 < v490 - v500 + 3)
              {
                goto LABEL_1878;
              }

LABEL_1681:
              operator new();
            }

            v5 = *size;
            p_p = *size + v490;
            if (p_p <= "\r\n")
            {
LABEL_1683:
              if (p_p + 2 > "\r\n")
              {
                goto LABEL_1855;
              }
            }
          }

          else
          {
            if (v490 - 21 < 2)
            {
              goto LABEL_1681;
            }

            v5 = size;
            p_p = size + v490;
            if (size + v490 <= "\r\n")
            {
              goto LABEL_1683;
            }
          }

          *p_p = 2573;
          v501 = v490 + 2;
          if (*(size + 23) < 0)
          {
            *(size + 8) = v501;
          }

          else
          {
            *(size + 23) = v501 & 0x7F;
          }

          *(v5 + v501) = 0;
LABEL_1599:
          v480 = (v480 + 80);
        }

        v329 = v558 + 18;
      }

      while (v558 + 18 != v551);
LABEL_1688:
      v503 = *(v557 + 32);
      v502 = *(v557 + 33);
      if (v503 != v502)
      {
        v4 = "\r\n";
        do
        {
          webrtc::InitLine(97, "rid", 3uLL, &v565);
          p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v505 = 22;
          }

          else
          {
            v505 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = v565.__r_.__value_.__l.__size_;
          }

          if (v505 == p_p)
          {
            std::string::__grow_by_and_replace(&v565, v505, 1uLL, v505, v505, 0, 1uLL, ":");
          }

          else
          {
            if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v565;
            }

            else
            {
              v5 = v565.__r_.__value_.__r.__words[0];
            }

            size = v5 + p_p + 1;
            if (v5 + p_p <= ":" && size > ":")
            {
              goto LABEL_1855;
            }

            *(v5 + p_p) = 58;
            v507 = p_p + 1;
            if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
            {
              v565.__r_.__value_.__l.__size_ = v507;
            }

            else
            {
              *(&v565.__r_.__value_.__s + 23) = v507 & 0x7F;
            }

            *(v5 + v507) = 0;
          }

          webrtc::SimulcastSdpSerializer::SerializeRidDescription(v557, v503, &v567);
          v5 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
          p_p = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
          size = v567.__r_.__value_.__l.__size_;
          if ((p_p & 0x80000000) == 0)
          {
            v508 = &v567;
          }

          else
          {
            v508 = v567.__r_.__value_.__r.__words[0];
          }

          if ((p_p & 0x80000000) == 0)
          {
            v509 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v509 = v567.__r_.__value_.__l.__size_;
          }

          if (!v508 && v509)
          {
            goto LABEL_1855;
          }

          v5 = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
          size = v565.__r_.__value_.__l.__size_;
          if ((v5 & 0x80000000) == 0)
          {
            v510 = 22;
          }

          else
          {
            v510 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v5 & 0x80000000) == 0)
          {
            v511 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v511 = v565.__r_.__value_.__l.__size_;
          }

          if (v510 - v511 >= v509)
          {
            if (v509)
            {
              p_p = v565.__r_.__value_.__r.__words[0];
              if ((v5 & 0x80000000) == 0)
              {
                v512 = &v565;
              }

              else
              {
                v512 = v565.__r_.__value_.__r.__words[0];
              }

              if ((v509 & 0x8000000000000000) != 0)
              {
                goto LABEL_1855;
              }

              v513 = v512 + v511;
              if ((v512 + v511) <= v508)
              {
                v5 = &v513[v509];
                if (&v513[v509] > v508)
                {
                  goto LABEL_1855;
                }
              }

              v514 = v509;
              memmove(v513, v508, v509);
              v515 = v511 + v514;
              if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
              {
                v565.__r_.__value_.__l.__size_ = v511 + v514;
              }

              else
              {
                *(&v565.__r_.__value_.__s + 23) = v515 & 0x7F;
              }

              v4 = "\r\n";
              v512->__r_.__value_.__s.__data_[v515] = 0;
            }
          }

          else
          {
            std::string::__grow_by_and_replace(&v565, v510, v511 + v509 - v510, v511, v511, 0, v509, v508);
          }

          if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v567.__r_.__value_.__l.__data_);
          }

          v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          p_p = SHIBYTE(v565.__r_.__value_.__r.__words[2]);
          size = v565.__r_.__value_.__l.__size_;
          if ((p_p & 0x80000000) == 0)
          {
            v516 = &v565;
          }

          else
          {
            v516 = v565.__r_.__value_.__r.__words[0];
          }

          if ((p_p & 0x80000000) == 0)
          {
            v517 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v517 = v565.__r_.__value_.__l.__size_;
          }

          v518 = v563;
          if (!v563)
          {
            goto LABEL_1692;
          }

          if (!v516 && v517)
          {
            goto LABEL_1855;
          }

          v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
          if ((v5 & 0x8000000000000000) != 0)
          {
            v520 = v563->__r_.__value_.__l.__size_;
            v519 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            p_p = v519 - v520;
            if (v519 - v520 >= v517)
            {
LABEL_1753:
              if (v517)
              {
                v521 = v563;
                if ((v5 & 0x80000000) != 0)
                {
                  v521 = v563->__r_.__value_.__r.__words[0];
                }

                if ((v517 & 0x8000000000000000) != 0)
                {
                  goto LABEL_1855;
                }

                v522 = v521 + v520;
                if ((v521 + v520) <= v516)
                {
                  v5 = &v522[v517];
                  if (&v522[v517] > v516)
                  {
                    goto LABEL_1855;
                  }
                }

                v523 = v517;
                memmove(v522, v516, v517);
                v518 = v563;
                v524 = v520 + v523;
                if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
                {
                  v563->__r_.__value_.__l.__size_ = v524;
                }

                else
                {
                  *(&v563->__r_.__value_.__s + 23) = v524 & 0x7F;
                }

                v4 = "\r\n";
                v521->__r_.__value_.__s.__data_[v524] = 0;
              }

              goto LABEL_1763;
            }
          }

          else
          {
            v519 = 22;
            v520 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
            p_p = 22 - v5;
            if (22 - v5 >= v517)
            {
              goto LABEL_1753;
            }
          }

          std::string::__grow_by_and_replace(v563, v519, v517 - v519 + v520, v520, v520, 0, v517, v516);
          v518 = v563;
LABEL_1763:
          v525 = SHIBYTE(v518->__r_.__value_.__r.__words[2]);
          if ((v525 & 0x8000000000000000) != 0)
          {
            v525 = v518->__r_.__value_.__l.__size_;
            v504 = (v518->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v504 - v525 >= 2)
            {
              v5 = v518->__r_.__value_.__r.__words[0];
              p_p = v518->__r_.__value_.__r.__words[0] + v525;
              if (p_p <= "\r\n")
              {
                goto LABEL_1769;
              }

              goto LABEL_1770;
            }
          }

          else
          {
            if (v525 - 21 >= 2)
            {
              v5 = v518;
              p_p = v518 + v525;
              if (v518 + v525 <= "\r\n")
              {
LABEL_1769:
                if (p_p + 2 > "\r\n")
                {
                  goto LABEL_1855;
                }
              }

LABEL_1770:
              *p_p = 2573;
              v526 = v525 + 2;
              if (SHIBYTE(v518->__r_.__value_.__r.__words[2]) < 0)
              {
                v518->__r_.__value_.__l.__size_ = v526;
              }

              else
              {
                *(&v518->__r_.__value_.__s + 23) = v526 & 0x7F;
              }

              *(v5 + v526) = 0;
              goto LABEL_1692;
            }

            v504 = 22;
          }

          std::string::__grow_by_and_replace(v518, v504, v525 - v504 + 2, v525, v525, 0, 2uLL, "\r\n");
LABEL_1692:
          v503 = (v503 + 80);
        }

        while (v503 != v502);
      }

      v527 = (v557 + 208);
      if (*(v557 + 26) == *(v557 + 27) && *(v557 + 29) == *(v557 + 30))
      {
        goto LABEL_1852;
      }

      webrtc::InitLine(97, "simulcast", 9uLL, &v565);
      p_p = HIBYTE(v565.__r_.__value_.__r.__words[2]);
      if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v528 = 22;
      }

      else
      {
        v528 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = v565.__r_.__value_.__l.__size_;
      }

      if (v528 == p_p)
      {
        std::string::__grow_by_and_replace(&v565, v528, 1uLL, v528, v528, 0, 1uLL, ":");
      }

      else
      {
        if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v5 = &v565;
        }

        else
        {
          v5 = v565.__r_.__value_.__r.__words[0];
        }

        v529 = (v5 + p_p);
        size = ":";
        if (v5 + p_p <= ":" && v529 + 1 > ":")
        {
          continue;
        }

        *v529 = 58;
        v530 = p_p + 1;
        if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
        {
          v565.__r_.__value_.__l.__size_ = v530;
        }

        else
        {
          *(&v565.__r_.__value_.__s + 23) = v530 & 0x7F;
        }

        *(v5 + v530) = 0;
      }

      break;
    }

    webrtc::SimulcastSdpSerializer::SerializeSimulcastDescription(v527, &v567);
    v5 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    p_p = SHIBYTE(v567.__r_.__value_.__r.__words[2]);
    size = v567.__r_.__value_.__l.__size_;
    if ((p_p & 0x80000000) == 0)
    {
      v531 = &v567;
    }

    else
    {
      v531 = v567.__r_.__value_.__r.__words[0];
    }

    if ((p_p & 0x80000000) == 0)
    {
      v532 = HIBYTE(v567.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v532 = v567.__r_.__value_.__l.__size_;
    }
  }

  while (!v531 && v532);
  size = v565.__r_.__value_.__l.__size_;
  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v533 = 22;
  }

  else
  {
    v533 = (v565.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v534 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v534 = v565.__r_.__value_.__l.__size_;
  }

  if (v533 - v534 < v532)
  {
    std::string::__grow_by_and_replace(&v565, v533, v534 + v532 - v533, v534, v534, 0, v532, v531);
    if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1819;
    }

    goto LABEL_1808;
  }

  if (!v532)
  {
LABEL_1818:
    if ((SHIBYTE(v567.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_1819;
    }

LABEL_1808:
    operator delete(v567.__r_.__value_.__l.__data_);
    goto LABEL_1819;
  }

  p_p = v565.__r_.__value_.__r.__words[0];
  v5 = &v565;
  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v535 = &v565;
  }

  else
  {
    v535 = v565.__r_.__value_.__r.__words[0];
  }

  if ((v532 & 0x8000000000000000) != 0)
  {
    goto LABEL_1855;
  }

  v536 = v535 + v534;
  if ((v535 + v534) <= v531)
  {
    v5 = &v536[v532];
    if (&v536[v532] > v531)
    {
      goto LABEL_1855;
    }
  }

  v537 = v532;
  memmove(v536, v531, v532);
  v538 = v534 + v537;
  if ((SHIBYTE(v565.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v565.__r_.__value_.__s + 23) = v538 & 0x7F;
    v535->__r_.__value_.__s.__data_[v538] = 0;
    goto LABEL_1818;
  }

  v565.__r_.__value_.__l.__size_ = v534 + v537;
  v535->__r_.__value_.__s.__data_[v538] = 0;
  if (SHIBYTE(v567.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_1808;
  }

LABEL_1819:
  v5 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  size = v565.__r_.__value_.__l.__size_;
  p_p = &v565;
  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v539 = &v565;
  }

  else
  {
    v539 = v565.__r_.__value_.__r.__words[0];
  }

  if ((v565.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v540 = HIBYTE(v565.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v540 = v565.__r_.__value_.__l.__size_;
  }

  v541 = v563;
  if (!v563)
  {
LABEL_1852:
    if ((SHIBYTE(v565.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_1853;
  }

  if (!v539 && v540)
  {
    goto LABEL_1855;
  }

  v5 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v542 = 22;
    v543 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
    p_p = 22 - v5;
    if (22 - v5 < v540)
    {
      goto LABEL_1830;
    }

LABEL_1835:
    if (v540)
    {
      v546 = v563;
      if ((v5 & 0x80000000) != 0)
      {
        v546 = v563->__r_.__value_.__r.__words[0];
      }

      if ((v540 & 0x8000000000000000) != 0)
      {
        goto LABEL_1855;
      }

      v547 = v546 + v543;
      if ((v546 + v543) <= v539)
      {
        v5 = &v547[v540];
        if (&v547[v540] > v539)
        {
          goto LABEL_1855;
        }
      }

      v548 = v540;
      memmove(v547, v539, v540);
      v549 = v543 + v548;
      v541 = v563;
      if (SHIBYTE(v563->__r_.__value_.__r.__words[2]) < 0)
      {
        v563->__r_.__value_.__l.__size_ = v549;
        v546->__r_.__value_.__s.__data_[v549] = 0;
        v544 = SHIBYTE(v541->__r_.__value_.__r.__words[2]);
        if ((v544 & 0x8000000000000000) == 0)
        {
          goto LABEL_1844;
        }

LABEL_1831:
        v544 = v541->__r_.__value_.__l.__size_;
        v545 = (v541->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v545 - v544 >= 2)
        {
          v5 = v541->__r_.__value_.__r.__words[0];
          p_p = v541->__r_.__value_.__r.__words[0] + v544;
          if (p_p > "\r\n")
          {
            goto LABEL_1850;
          }

          goto LABEL_1849;
        }

LABEL_1846:
        std::string::__grow_by_and_replace(v541, v545, v544 - v545 + 2, v544, v544, 0, 2uLL, "\r\n");
        if ((SHIBYTE(v565.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_1853;
      }

      *(&v563->__r_.__value_.__s + 23) = v549 & 0x7F;
      v546->__r_.__value_.__s.__data_[v549] = 0;
    }

    v544 = SHIBYTE(v541->__r_.__value_.__r.__words[2]);
    if ((v544 & 0x8000000000000000) == 0)
    {
      goto LABEL_1844;
    }

    goto LABEL_1831;
  }

  v543 = v563->__r_.__value_.__l.__size_;
  v542 = (v563->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  p_p = v542 - v543;
  if (v542 - v543 >= v540)
  {
    goto LABEL_1835;
  }

LABEL_1830:
  std::string::__grow_by_and_replace(v563, v542, v540 - v542 + v543, v543, v543, 0, v540, v539);
  v541 = v563;
  v544 = SHIBYTE(v563->__r_.__value_.__r.__words[2]);
  if ((v544 & 0x8000000000000000) != 0)
  {
    goto LABEL_1831;
  }

LABEL_1844:
  if (v544 - 21 < 2)
  {
    v545 = 22;
    goto LABEL_1846;
  }

  v5 = v541;
  p_p = v541 + v544;
  if (v541 + v544 > "\r\n")
  {
    goto LABEL_1850;
  }

LABEL_1849:
  size = p_p + 2;
  v541 = v563;
  if (p_p + 2 > "\r\n")
  {
    goto LABEL_1855;
  }

LABEL_1850:
  *p_p = 2573;
  v550 = v544 + 2;
  if ((SHIBYTE(v541->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v541->__r_.__value_.__s + 23) = v550 & 0x7F;
    *(v5 + v550) = 0;
    goto LABEL_1852;
  }

  v541->__r_.__value_.__l.__size_ = v550;
  *(v5 + v550) = 0;
  if (SHIBYTE(v565.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_1853:
    operator delete(v565.__r_.__value_.__l.__data_);
  }
}