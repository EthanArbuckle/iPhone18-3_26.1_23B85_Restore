void md::VKMRenderResourcesStore::resetV2(md::VKMRenderResourcesStore *this)
{
  v213 = *MEMORY[0x1E69E9840];
  v2 = this + 12288;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 1791);
  v3 = ++v2[1688];
  *(v2 + 1016) = 0;
  if (!(v3 % v2[1689]))
  {
    v2[1688] = 0;
    v211 = 0uLL;
    *&v212 = 0;
    v4 = *(this + 1720);
    v5 = *(this + 1721);
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        v7 = *(*(this + 1723) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v6 & 0x3F);
        if ((*(v7 + 17) & 1) != 0 || *v7 != 0)
        {
          *v7 = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v4);
        }

        ++v4;
        ++v6;
      }

      while (v4 != v5);
      v8 = v211;
      if (v211 != *(&v211 + 1))
      {
        v174 = v211;
        do
        {
          md::release_data_for_handle(this + 1716, v174++);
        }

        while (v174 != *(&v8 + 1));
      }

      if (v8)
      {
        operator delete(v8);
      }
    }

    v211 = 0uLL;
    *&v212 = 0;
    v9 = *(this + 1694);
    v10 = *(this + 1695);
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        v12 = *(*(this + 1697) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v11 & 0x3F);
        if ((*(v12 + 17) & 1) != 0 || *v12 != 0)
        {
          *v12 = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v9);
        }

        ++v9;
        ++v11;
      }

      while (v9 != v10);
      v13 = v211;
      if (v211 != *(&v211 + 1))
      {
        v175 = v211;
        do
        {
          md::release_data_for_handle(this + 1690, v175++);
        }

        while (v175 != *(&v13 + 1));
      }

      if (v13)
      {
        operator delete(v13);
      }
    }

    v211 = 0uLL;
    *&v212 = 0;
    v14 = *(this + 907);
    v15 = *(this + 908);
    if (v14 != v15)
    {
      v16 = 0;
      do
      {
        v17 = *(*(this + 910) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v16 & 0x3F);
        if ((*(v17 + 17) & 1) != 0 || *v17 != 0)
        {
          *v17 = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v14);
        }

        ++v14;
        ++v16;
      }

      while (v14 != v15);
      v18 = v211;
      if (v211 != *(&v211 + 1))
      {
        v176 = v211;
        do
        {
          md::release_data_for_handle(this + 903, v176++);
        }

        while (v176 != *(&v18 + 1));
      }

      if (v18)
      {
        operator delete(v18);
      }
    }

    v19 = *(this + 1642);
    v20 = *(this + 1643);
    if (v19 != v20)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = *(*(this + 1645) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v22 & 0x3F);
        if ((*(v23 + 17) & 1) == 0 && *v23 == 0)
        {
          *v23 = 0;
          *(v23 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v23 = 0;
        ++v22;
        v21 += 8;
      }

      while (v19 + v21 != v20);
    }

    v24 = *(this + 1752);
    v25 = *(this + 1753);
    if (v24 != v25)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(*(this + 1755) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v27 & 0x3F);
        if ((*(v28 + 17) & 1) == 0 && *v28 == 0)
        {
          *v28 = 0;
          *(v28 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v28 = 0;
        ++v27;
        v26 += 8;
      }

      while (v24 + v26 != v25);
    }

    md::resetV4(this + 1313);
    md::resetV4(this + 991);
    md::resetV4(this + 1135);
    md::resetV4(this + 1063);
    md::resetV4(this + 955);
    md::resetV4(this + 1099);
    md::resetV4(this + 1027);
    v29 = *(this + 1564);
    v30 = *(this + 1565);
    if (v29 != v30)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = *(*(this + 1567) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v32 & 0x3F);
        if ((*(v33 + 17) & 1) == 0 && *v33 == 0)
        {
          *v33 = 0;
          *(v33 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v33 = 0;
        ++v32;
        v31 += 8;
      }

      while (v29 + v31 != v30);
    }

    md::resetV4(this + 1447);
    md::resetV4(this + 771);
    md::resetV4(this + 877);
    md::resetV4(this + 1501);
    v34 = *(this + 39);
    v35 = *(this + 40);
    if (v34 != v35)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(*(this + 42) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v37 & 0x3F);
        if ((*(v38 + 17) & 1) == 0 && *v38 == 0)
        {
          *v38 = 0;
          *(v38 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v38 = 0;
        ++v37;
        v36 += 8;
      }

      while (v34 + v36 != v35);
    }

    v39 = *(this + 75);
    v40 = *(this + 76);
    if (v39 != v40)
    {
      v41 = 0;
      v42 = 0;
      do
      {
        v43 = *(*(this + 78) + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v42 & 0x3F);
        if ((*(v43 + 17) & 1) == 0 && *v43 == 0)
        {
          *v43 = 0;
          *(v43 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v43 = 0;
        ++v42;
        v41 += 8;
      }

      while (v39 + v41 != v40);
    }

    md::resetV4(this + 555);
    md::resetV4(this + 609);
    v211 = 0uLL;
    *&v212 = 0;
    v44 = *(this + 1201);
    v45 = *(this + 1202);
    if (v44 != v45)
    {
      v46 = 0;
      do
      {
        v47 = *(*(this + 1204) + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v46 & 0x3F);
        if ((*(v47 + 17) & 1) != 0 || *v47 != 0)
        {
          *v47 = 0;
        }

        else
        {
          *v47 = 0;
          *(v47 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v44);
        }

        ++v44;
        ++v46;
      }

      while (v44 != v45);
      v48 = v211;
      if (v211 != *(&v211 + 1))
      {
        v177 = v211;
        do
        {
          md::release_data_for_handle(this + 1197, v177++);
        }

        while (v177 != *(&v48 + 1));
      }

      if (v48)
      {
        operator delete(v48);
      }
    }

    *&v212 = 0;
    v49 = 0uLL;
    v211 = 0u;
    v50 = *(this + 1371);
    v51 = *(this + 1372);
    if (v50 != v51)
    {
      v178 = 0;
      do
      {
        v179 = *(*(this + 1374) + ((v178 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v178 & 0x3F);
        if ((*(v179 + 17) & 1) != 0 || *v179 != 0)
        {
          *v179 = 0;
        }

        else
        {
          *v179 = 0;
          *(v179 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v50);
        }

        ++v50;
        ++v178;
      }

      while (v50 != v51);
      v49 = v211;
    }

    v52 = v49;
    if (v49 != *(&v49 + 1))
    {
      v53 = v49;
      do
      {
        v54 = *(this + 1374);
        v55 = (*(*(*(this + 1368) + 8 * (*v53 >> 6)) + 16 * (*v53 & 0x3F) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
        v56 = 3 * (*(*(*(this + 1368) + 8 * (*v53 >> 6)) + 16 * (*v53 & 0x3F) + 8) & 0x3FLL);
        v57 = *(v54 + v55) + 24 * (*(*(*(this + 1368) + 8 * (*v53 >> 6)) + 16 * (*v53 & 0x3F) + 8) & 0x3FLL);
        v58 = ((*(this + 1372) - *(this + 1371)) >> 3) - 1;
        v59 = *(v54 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v58 & 0x3F);
        v60 = *v57;
        v61 = *(v57 + 16);
        v62 = *(v59 + 16);
        *v57 = *v59;
        *(v57 + 16) = v62;
        *(v59 + 16) = v61;
        *v59 = v60;
        v63 = *(this + 1380);
        v64 = *(v63 + v55) + 8 * v56;
        v65 = ((*(this + 1372) - *(this + 1371)) >> 3) - 1;
        v66 = *(v63 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v65 & 0x3F);
        v67 = *v64;
        v68 = *(v64 + 16);
        *(v64 + 8) = 0;
        *(v64 + 16) = 0;
        *v64 = *v66;
        v69 = *(v66 + 8);
        *(v66 + 8) = 0;
        *(v66 + 16) = 0;
        v70 = *(v64 + 16);
        *(v64 + 8) = v69;
        if (v70)
        {
          *__src = v67;
          std::__shared_weak_count::__release_shared[abi:nn200100](v70);
          v67 = *__src;
        }

        *v66 = v67;
        v71 = *(v66 + 16);
        *(v66 + 16) = v68;
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v71);
          v68 = *(v66 + 16);
        }

        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v68);
        }

        v72 = *v53;
        v73 = *v53 >> 6;
        v74 = *(this + 1368);
        if (v73 < (*(this + 1369) - v74) >> 3)
        {
          v75 = *(v74 + 8 * v73);
          if (v75)
          {
            if (*(v75 + 16 * (*v53 & 0x3F)) == HIDWORD(*v53))
            {
              ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(this + 1367, (*(this + 1371) + 8 * *(v75 + 16 * (*v53 & 0x3F) + 8)));
              v72 = *v53;
            }
          }
        }

        v76 = *(this + 1390);
        if (v72 < ((*(this + 1391) - v76) >> 3))
        {
          v77 = *(v76 + 8 * v72);
          if (!((v77 ^ v72) >> 32))
          {
            v210[0] = v72;
            *(v76 + 8 * v72) = v77 + 0x100000000;
            std::vector<unsigned long>::push_back[abi:nn200100](this + 11096, v210);
          }
        }

        ++v53;
      }

      while (v53 != *(&v52 + 1));
    }

    if (v52)
    {
      operator delete(v52);
    }

    v211 = 0uLL;
    *&v212 = 0;
    v78 = *(this + 1616);
    v79 = *(this + 1617);
    if (v78 != v79)
    {
      v80 = 0;
      do
      {
        v81 = *(*(this + 1619) + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v80 & 0x3F);
        if ((*(v81 + 17) & 1) != 0 || *v81 != 0)
        {
          *v81 = 0;
        }

        else
        {
          *v81 = 0;
          *(v81 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v78);
        }

        ++v78;
        ++v80;
      }

      while (v78 != v79);
      v82 = v211;
      if (v211 != *(&v211 + 1))
      {
        v180 = v211;
        do
        {
          md::release_data_for_handle(this + 1612, v180++);
        }

        while (v180 != *(&v82 + 1));
      }

      if (v82)
      {
        operator delete(v82);
      }
    }

    *&v212 = 0;
    v83 = 0uLL;
    v211 = 0u;
    v84 = *(this + 101);
    v85 = *(this + 102);
    if (v84 != v85)
    {
      v86 = 0;
      do
      {
        v87 = *(*(this + 104) + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v86 & 0x3F);
        if ((*(v87 + 17) & 1) != 0 || *v87 != 0)
        {
          *v87 = 0;
        }

        else
        {
          *v87 = 0;
          *(v87 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v84);
        }

        ++v84;
        ++v86;
      }

      while (v84 != v85);
      v83 = v211;
    }

    v88 = v83;
    if (v83 != *(&v83 + 1))
    {
      v89 = v83;
      do
      {
        md::release_data_for_handle(this + 97, v89++);
      }

      while (v89 != *(&v88 + 1));
    }

    if (v88)
    {
      operator delete(v88);
    }

    v211 = 0uLL;
    *&v212 = 0;
    v90 = *(this + 933);
    v91 = *(this + 934);
    if (v90 != v91)
    {
      v92 = 0;
      do
      {
        v93 = *(*(this + 936) + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v92 & 0x3F);
        if ((*(v93 + 17) & 1) != 0 || *v93 != 0)
        {
          *v93 = 0;
        }

        else
        {
          *v93 = 0;
          *(v93 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v90);
        }

        ++v90;
        ++v92;
      }

      while (v90 != v91);
      v94 = v211;
      if (v211 != *(&v211 + 1))
      {
        v181 = v211;
        do
        {
          md::release_data_for_handle(this + 929, v181++);
        }

        while (v181 != *(&v94 + 1));
      }

      if (v94)
      {
        operator delete(v94);
      }
    }

    *&v212 = 0;
    v95 = 0uLL;
    v211 = 0u;
    v96 = *(this + 1237);
    v97 = *(this + 1238);
    if (v96 != v97)
    {
      v182 = 0;
      do
      {
        v183 = *(*(this + 1240) + ((v182 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v182 & 0x3F);
        if ((*(v183 + 17) & 1) != 0 || *v183 != 0)
        {
          *v183 = 0;
        }

        else
        {
          *v183 = 0;
          *(v183 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v96);
        }

        ++v96;
        ++v182;
      }

      while (v96 != v97);
      v95 = v211;
    }

    v98 = v95;
    if (v95 != *(&v95 + 1))
    {
      v99 = v95;
      do
      {
        v100 = *(this + 1240);
        v101 = (*(*(*(this + 1234) + 8 * (*v99 >> 6)) + 16 * (*v99 & 0x3F) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
        v102 = 3 * (*(*(*(this + 1234) + 8 * (*v99 >> 6)) + 16 * (*v99 & 0x3F) + 8) & 0x3FLL);
        v103 = *(v100 + v101) + 24 * (*(*(*(this + 1234) + 8 * (*v99 >> 6)) + 16 * (*v99 & 0x3F) + 8) & 0x3FLL);
        v104 = ((*(this + 1238) - *(this + 1237)) >> 3) - 1;
        v105 = *(v100 + ((v104 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v104 & 0x3F);
        v106 = *v103;
        v107 = *(v103 + 16);
        v108 = *(v105 + 16);
        *v103 = *v105;
        *(v103 + 16) = v108;
        *(v105 + 16) = v107;
        *v105 = v106;
        v109 = *(this + 1246);
        v110 = *(v109 + v101) + 8 * v102;
        v111 = ((*(this + 1238) - *(this + 1237)) >> 3) - 1;
        v112 = *(v109 + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v111 & 0x3F);
        v113 = *v110;
        v114 = *(v110 + 16);
        *(v110 + 8) = 0;
        *(v110 + 16) = 0;
        *v110 = *v112;
        v115 = *(v112 + 8);
        *(v112 + 8) = 0;
        *(v112 + 16) = 0;
        v116 = *(v110 + 16);
        *(v110 + 8) = v115;
        if (v116)
        {
          *__srca = v113;
          std::__shared_weak_count::__release_shared[abi:nn200100](v116);
          v113 = *__srca;
        }

        *v112 = v113;
        v117 = *(v112 + 16);
        *(v112 + 16) = v114;
        if (v117)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v117);
          v114 = *(v112 + 16);
        }

        if (v114)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v114);
        }

        v118 = *v99;
        v119 = *v99 >> 6;
        v120 = *(this + 1234);
        if (v119 < (*(this + 1235) - v120) >> 3)
        {
          v121 = *(v120 + 8 * v119);
          if (v121)
          {
            if (*(v121 + 16 * (*v99 & 0x3F)) == HIDWORD(*v99))
            {
              ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(this + 1233, (*(this + 1237) + 8 * *(v121 + 16 * (*v99 & 0x3F) + 8)));
              v118 = *v99;
            }
          }
        }

        v122 = *(this + 1256);
        if (v118 < ((*(this + 1257) - v122) >> 3))
        {
          v123 = *(v122 + 8 * v118);
          if (!((v123 ^ v118) >> 32))
          {
            v210[0] = v118;
            *(v122 + 8 * v118) = v123 + 0x100000000;
            std::vector<unsigned long>::push_back[abi:nn200100](this + 10024, v210);
          }
        }

        ++v99;
      }

      while (v99 != *(&v98 + 1));
    }

    if (v98)
    {
      operator delete(v98);
    }

    v211 = 0uLL;
    *&v212 = 0;
    v124 = *(this + 1175);
    v125 = *(this + 1176);
    if (v124 != v125)
    {
      v126 = 0;
      do
      {
        v127 = *(*(this + 1178) + ((v126 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v126 & 0x3F);
        if ((*(v127 + 17) & 1) != 0 || *v127 != 0)
        {
          *v127 = 0;
        }

        else
        {
          *v127 = 0;
          *(v127 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v124);
        }

        ++v124;
        ++v126;
      }

      while (v124 != v125);
      v128 = v211;
      if (v211 != *(&v211 + 1))
      {
        v184 = v211;
        do
        {
          md::release_data_for_handle(this + 1171, v184++);
        }

        while (v184 != *(&v128 + 1));
      }

      if (v128)
      {
        operator delete(v128);
      }
    }

    v129 = *(this + 1263);
    v130 = *(this + 1264);
    if (v129 != v130)
    {
      v131 = 0;
      v132 = 0;
      do
      {
        v133 = *(*(this + 1266) + ((v132 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v132 & 0x3F);
        if ((*(v133 + 17) & 1) == 0 && *v133 == 0)
        {
          *v133 = 0;
          *(v133 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v133 = 0;
        ++v132;
        v131 += 8;
      }

      while (v129 + v131 != v130);
    }

    v134 = *(this + 127);
    v135 = *(this + 128);
    if (v134 != v135)
    {
      v136 = 0;
      v137 = 0;
      do
      {
        v138 = *(*(this + 130) + ((v137 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v137 & 0x3F);
        if ((*(v138 + 17) & 1) == 0 && *v138 == 0)
        {
          *v138 = 0;
          *(v138 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v138 = 0;
        ++v137;
        v136 += 8;
      }

      while (v134 + v136 != v135);
    }

    v211 = 0uLL;
    *&v212 = 0;
    v139 = *(this + 181);
    v140 = *(this + 182);
    if (v139 != v140)
    {
      v141 = 0;
      do
      {
        v142 = *(*(this + 184) + ((v141 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v141 & 0x3F);
        if ((*(v142 + 17) & 1) != 0 || *v142 != 0)
        {
          *v142 = 0;
        }

        else
        {
          *v142 = 0;
          *(v142 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v139);
        }

        ++v139;
        ++v141;
      }

      while (v139 != v140);
      v143 = v211;
      if (v211 != *(&v211 + 1))
      {
        v144 = v211;
        do
        {
          md::release_data_for_handle(this + 177, v144++);
        }

        while (v144 != *(&v143 + 1));
      }

      if (v143 != *(&v143 + 1))
      {
        v193 = v143;
        do
        {
          v194 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 226, *v193);
          if (v194)
          {
            v195 = v194;
            std::__hash_table<std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>>>::__erase_unique<unsigned long>(this + 221, v194[3]);
            std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 226, v195[2]);
          }

          ++v193;
        }

        while (v193 != *(&v143 + 1));
      }

      if (v143)
      {
        *(&v211 + 1) = v143;
        operator delete(v143);
      }
    }

    *&v212 = 0;
    v145 = 0uLL;
    v211 = 0u;
    v146 = *(this + 235);
    v147 = *(this + 236);
    if (v146 != v147)
    {
      v185 = 0;
      do
      {
        v186 = *(*(this + 238) + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v185 & 0x3F);
        if ((*(v186 + 17) & 1) != 0 || *v186 != 0)
        {
          *v186 = 0;
        }

        else
        {
          *v186 = 0;
          *(v186 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v146);
        }

        ++v146;
        ++v185;
      }

      while (v146 != v147);
      v145 = v211;
    }

    v149 = *(&v145 + 1);
    v148 = v145;
    if (v145 != *(&v145 + 1))
    {
      v150 = v145;
      do
      {
        md::release_data_for_handle(this + 231, v150++);
      }

      while (v150 != v149);
      v149 = *(&v211 + 1);
    }

    if (v148 != v149)
    {
      v196 = v148;
      do
      {
        v197 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 280, *v196);
        if (v197)
        {
          v198 = v197;
          std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::__erase_unique<md::StyleSSAOKey>(this + 275, (v197 + 3));
          std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 280, v198[2]);
        }

        ++v196;
      }

      while (v196 != v149);
    }

    if (v148)
    {
      operator delete(v148);
    }

    *&v212 = 0;
    v151 = 0uLL;
    v211 = 0u;
    v152 = *(this + 289);
    v153 = *(this + 290);
    if (v152 != v153)
    {
      v187 = 0;
      do
      {
        v188 = *(*(this + 292) + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v187 & 0x3F);
        if ((*(v188 + 17) & 1) != 0 || *v188 != 0)
        {
          *v188 = 0;
        }

        else
        {
          *v188 = 0;
          *(v188 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v152);
        }

        ++v152;
        ++v187;
      }

      while (v152 != v153);
      v151 = v211;
    }

    v155 = *(&v151 + 1);
    v154 = v151;
    if (v151 != *(&v151 + 1))
    {
      v156 = v151;
      do
      {
        md::release_data_for_handle(this + 285, v156++);
      }

      while (v156 != v155);
      v155 = *(&v211 + 1);
    }

    if (v154 != v155)
    {
      v199 = v154;
      do
      {
        v200 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 334, *v199);
        if (v200)
        {
          v201 = v200;
          std::__hash_table<std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::handle<md::CachedKey<md::StyleCacheKey>>>>>::__erase_unique<unsigned long>(this + 329, v200[3]);
          std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 334, v201[2]);
        }

        ++v199;
      }

      while (v199 != v155);
    }

    if (v154)
    {
      operator delete(v154);
    }

    *&v212 = 0;
    v157 = 0uLL;
    v211 = 0u;
    v158 = *(this + 451);
    v159 = *(this + 452);
    if (v158 != v159)
    {
      v189 = 0;
      do
      {
        v190 = *(*(this + 454) + ((v189 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v189 & 0x3F);
        if ((*(v190 + 17) & 1) != 0 || *v190 != 0)
        {
          *v190 = 0;
        }

        else
        {
          *v190 = 0;
          *(v190 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v158);
        }

        ++v158;
        ++v189;
      }

      while (v158 != v159);
      v157 = v211;
    }

    v161 = *(&v157 + 1);
    v160 = v157;
    if (v157 != *(&v157 + 1))
    {
      v162 = v157;
      do
      {
        md::release_data_for_handle(this + 447, v162++);
      }

      while (v162 != v161);
      v161 = *(&v211 + 1);
    }

    if (v160 != v161)
    {
      v202 = v160;
      do
      {
        v203 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 496, *v202);
        if (v203)
        {
          v204 = v203;
          std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::__erase_unique<md::StyleEmissiveColorCacheKey>(this + 491, (v203 + 3));
          std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 496, v204[2]);
        }

        ++v202;
      }

      while (v202 != v161);
    }

    if (v160)
    {
      operator delete(v160);
    }

    *&v212 = 0;
    v163 = 0uLL;
    v211 = 0u;
    v164 = *(this + 505);
    v165 = *(this + 506);
    if (v164 != v165)
    {
      v191 = 0;
      do
      {
        v192 = *(*(this + 508) + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v191 & 0x3F);
        if ((*(v192 + 17) & 1) != 0 || *v192 != 0)
        {
          *v192 = 0;
        }

        else
        {
          *v192 = 0;
          *(v192 + 8) = 0;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v211, v164);
        }

        ++v164;
        ++v191;
      }

      while (v164 != v165);
      v163 = v211;
    }

    v167 = *(&v163 + 1);
    v166 = v163;
    if (v163 != *(&v163 + 1))
    {
      v168 = v163;
      do
      {
        md::release_data_for_handle(this + 501, v168++);
      }

      while (v168 != v167);
      v167 = *(&v211 + 1);
    }

    if (v166 != v167)
    {
      v205 = v166;
      do
      {
        v206 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 550, *v205);
        if (v206)
        {
          v207 = v206;
          std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 545, v206[3]);
          std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 550, v207[2]);
        }

        ++v205;
      }

      while (v205 != v167);
    }

    if (v166)
    {
      operator delete(v166);
    }

    md::resetV4(this + 663);
    md::resetV4(this + 717);
    md::resetV4(this + 1393);
    md::resetV4(this + 339);
    md::resetV4(this + 393);
    v169 = *(this + 1590);
    v170 = *(this + 1591);
    if (v169 != v170)
    {
      v171 = 0;
      v172 = 0;
      do
      {
        v173 = *(*(this + 1593) + ((v172 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v172 & 0x3F);
        if ((*(v173 + 17) & 1) == 0 && *v173 == 0)
        {
          *v173 = 0;
          *(v173 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
        }

        *v173 = 0;
        ++v172;
        v171 += 8;
      }

      while (v169 + v171 != v170);
    }

    md::resetV4(this + 825);

    md::resetV4(this + 851);
  }
}

void sub_1B2A7F0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::ita::PrepareSlices::operator()(uint64_t **a1)
{
  v23 = *MEMORY[0x1E69E9840];
  +[VKDebugSettings sharedSettings];
  v22 = [objc_claimAutoreleasedReturnValue() daVinciRenderLineGeometry];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = (**v2)(v2);
  v8 = md::LayoutContext::get<md::LightingLogicContext>(*(v7 + 8));
  if (v8)
  {
    if (*(v8 + 256))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  v21 = v9;
  v20 = &v22;
  v10 = a1[3];
  if (!v10)
  {
    v11 = **a1;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_19;
    }

    while (*v12 != 0x4EDAD23DFB014132)
    {
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_19;
      }
    }

    if (v12 == v13)
    {
LABEL_19:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v14 = v12[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }
    }

    a1[3] = v10;
  }

  v19 = v10;
  v15 = md::LayoutContext::get<md::ElevationContext>(*(v7 + 8));
  if (*(v15 + 4) <= 0.01)
  {
    v16 = *(v15 + 3);
  }

  else
  {
    v16 = 0;
  }

  v18 = v16 & 1;
  v17 = *v15;
  operator new();
}

void md::resetV4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      if ((*(v5 + 17) & 1) == 0 && *v5 == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v5 = 0;
      ++v4;
      v3 += 8;
    }

    while (v1 + v3 != v2);
  }
}

void sub_1B2A800C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingDeletion>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingDeletion>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[23];
}

void sub_1B2A804FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::ita::KeepMaterialAlbedoTextureAlive::operator()(void *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(a1, a2);
  v5 = (**v4)(v4);
  md::LayoutContext::frameState(v5);
  v21 = *(v6 + 624);
  v22[0] = &unk_1F2A07470;
  v22[1] = &v21;
  v23 = v22;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(*(a3 + 8));
  v8 = v7[4];
  v9 = v7[5];
  v10 = _ZTWN4ecs27Runtime11_localStateE();
  v11 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v8 == v9)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *(v7[7] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v10 + 104 * *v11 + 24) = *v8;
      if (!v23)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v23 + 48))(v23, v13 + 32 * (v12++ & 0x3F));
      ++v8;
    }

    while (v8 != v9);
    if (v12)
    {
      v14 = *(a3 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
      *(v14 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata) = *(v14 + 4096);
    }
  }

  *(v10 + 104 * *v11 + 24) = -65536;
  v15 = v10 + 104 * *v11;
  v16 = *(v15 + 92);
  *(v15 + 92) = v16 + 1;
  *(v15 + 4 * v16 + 28) = v12;
  v17 = v10 + 104 * *v11;
  v19 = *(v17 + 92);
  v18 = (v17 + 92);
  if (v19 >= 0x10)
  {
    *v18 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::UniqueMaterialAlbedoTexture &)>::~__value_func[abi:nn200100](v22);
}

void sub_1B2A806F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialAlbedoTexture &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::KeepMaterialAlbedoTextureAlive>,std::allocator<ecs2::ForwardToExecute<md::ita::KeepMaterialAlbedoTextureAlive>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void ***a2)
{
  *(a1 + 8) = a2;
  result = md::ita::KeepMaterialAlbedoTextureAlive::operator()(**a2, (*a2)[1], a2);
  *(a1 + 8) = 0;
  return result;
}

void sub_1B2A80AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15PendingDeletionEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A4D8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void sub_1B2A80F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15PendingDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A4D8;
  a2[1] = v2;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::PrepareShadowBounds,md::ls::AppliedWantsDynamicShadowBounds const&,md::BoundData const&,md::ls::SharedRenderableDataHandle &>(uint64_t a1, uint64_t **a2)
{
  v49[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedWantsDynamicShadowBounds>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::BoundData>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedRenderableDataHandle>(v3);
  v49[0] = v4;
  v49[1] = v5;
  v49[2] = v6;
  v7 = 1;
  v8 = v4;
  v9 = v49;
  do
  {
    if (*(v49[v7] + 40) - *(v49[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v49[v7];
      v9 = &v49[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v44 = v10;
  v45 = v11;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v10, v10[1]))
  {
    v10 += 2;
    v44 = v10;
  }

  v12 = v44;
  if (v44 == v11)
  {
    v35 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v41 = a1;
    v13 = v47;
    v14 = v48;
    v43 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v45;
    do
    {
      v18 = v12[1];
      v19 = v18 & 0x3F;
      v20 = (v18 >> 3) & 0x1FF8;
      v21 = *(*(*(v13 + 8) + v20) + 4 * v19 + 2);
      v22 = (*(*(v13 + 56) + ((v21 >> 3) & 0x1FF8)) + 24 * (v21 & 0x3F));
      v23 = *(*(*(v14 + 8) + v20) + 4 * v19 + 2);
      v24 = v23 & 0x3F;
      v25 = *(*(v14 + 56) + ((v23 >> 3) & 0x1FF8));
      v26 = v15;
      *(v43 + 104 * *v15 + 24) = *v12;
      v27 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v28 = (md::VKMRenderResourcesStore::getRenderableData(v27, *(v25 + 8 * v24)) + 268);
      v29 = 3;
      do
      {
        *(v28 - 3) = fminf(*v22, *(v28 - 3));
        *v28 = fmaxf(*v28, v22[3]);
        ++v28;
        ++v22;
        --v29;
      }

      while (v29);
      ++v16;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v44 = v30;
        if (v30 == v17)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_18;
        }
      }

      v32 = v17;
LABEL_18:
      v15 = v26;
    }

    while (v32 != v11);
    v33 = *(v41 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>();
    result = v26;
    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata) = *(v33 + 4096);
    v35 = v43;
  }

  *(v35 + 104 * *result + 24) = -65536;
  v36 = v35 + 104 * *result;
  v37 = *(v36 + 92);
  *(v36 + 92) = v37 + 1;
  *(v36 + 4 * v37 + 28) = v16;
  v38 = v35 + 104 * *result;
  v40 = *(v38 + 92);
  v39 = (v38 + 92);
  if (v40 >= 0x10)
  {
    *v39 = 0;
  }

  return result;
}

void sub_1B2A81614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *gdc::Context::get<md::SkyLogicContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x7C7EC6C7C111B0D0uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x7C7EC6C7C111B0D0)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1B2A81A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2A81DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMaterialData>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMaterialData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[415];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22RenderableMaterialDataEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42B38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

char *ecs2::Runtime::_entities<md::ita::CreateDepthPrePassRenderItems,md::ls::SliceAssignmentT<(md::SliceType)5> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::PendingProcessingDepthPrePass const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ElevationHandle const*,md::ls::PrepassShadowConstantDataHandle const&,md::ls::PrepassConstantDataHandle const&,md::ls::PreserveHeight const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::InstanceCount const*>(uint64_t a1, uint64_t **a2)
{
  v92[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v57 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingDepthPrePass>(v3);
  v67 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v64 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v63 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v62 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v60 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v59 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v56 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v55 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassShadowConstantDataHandle>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v3);
  v13 = v6;
  *buf = v4;
  *&buf[8] = v5;
  *&buf[16] = v57;
  *&buf[24] = v6;
  v14 = buf;
  v15 = 8;
  v16 = v4;
  *&v82 = v7;
  *(&v82 + 1) = v8;
  do
  {
    if (*(*&buf[v15] + 40) - *(*&buf[v15] + 32) < *(v16 + 40) - *(v16 + 32))
    {
      v16 = *&buf[v15];
      v14 = &buf[v15];
    }

    v15 += 8;
  }

  while (v15 != 48);
  v17 = *v14;
  v19 = *(v17 + 32);
  v18 = *(v17 + 40);
  *buf = v19;
  *&buf[8] = v18;
  *&buf[16] = v4;
  *&buf[24] = v5;
  *&v82 = v57;
  *(&v82 + 1) = v13;
  *&v83 = v67;
  *(&v83 + 1) = HasMesh;
  *&v84 = v64;
  *(&v84 + 1) = v63;
  *&v85 = v62;
  *(&v85 + 1) = v61;
  *&v86 = v60;
  *(&v86 + 1) = v59;
  *&v87 = v58;
  *(&v87 + 1) = v56;
  *&v88 = v55;
  *(&v88 + 1) = v7;
  *&v89 = v8;
  *(&v89 + 1) = v9;
  *&v90 = v10;
  *(&v90 + 1) = v11;
  *&v91 = v12;
  v66 = v18;
  while (v19 != v18 && !ecs2::ViewIterator<void,std::tuple<md::ls::SliceAssignmentT<(md::SliceType)5> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::PendingProcessingDepthPrePass const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ElevationHandle const*,md::ls::PrepassShadowConstantDataHandle const&,md::ls::PrepassConstantDataHandle const&,md::ls::PreserveHeight const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::InstanceCount const*>,std::tuple<>>::containsAll<md::ls::SliceAssignmentT<(md::SliceType)5> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::PendingProcessingDepthPrePass const,md::ls::PrepassShadowConstantDataHandle const,md::ls::PrepassConstantDataHandle const>(buf, *v19, v19[1]))
  {
    v19 += 2;
    *buf = v19;
    v18 = v66;
  }

  v75 = v88;
  v76 = v89;
  v77 = v90;
  v78 = v91;
  v71 = v84;
  v72 = v85;
  v73 = v86;
  v74 = v87;
  v69[0] = *buf;
  v69[1] = *&buf[16];
  v69[2] = v82;
  v70 = v83;
  v20 = *buf;
  if (*buf == v66)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v45 = 0;
  }

  else
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v68 = 0;
    v54 = v70;
    v52 = v21;
    v53 = v22;
    do
    {
      v23 = v20[1];
      v24 = v23 >> 6;
      v25 = v23 & 0x3F;
      v26 = *v20;
      v27 = v54[1];
      if (v24 < (v54[2] - v27) >> 3 && (v28 = *(v27 + 8 * v24)) != 0 && *(v28 + 4 * v25) == v26)
      {
        v29 = *(v28 + 4 * v25 + 2);
        v30 = *(v54[7] + ((v29 >> 3) & 0x1FF8)) + 24 * (v29 & 0x3F);
      }

      else
      {
        v30 = 0;
      }

      v31 = *(v78 + 8);
      if (v24 < (*(v78 + 16) - v31) >> 3 && (v32 = *(v31 + 8 * v24)) != 0 && *(v32 + 4 * v25) == v26)
      {
        v33 = v30;
      }

      else
      {
        v33 = v30;
      }

      *(v21 + 104 * *v22 + 24) = *v20;
      v34 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v35 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      v36 = ecs2::ExecutionTaskContext::currentEntity(v35);
      v92[0] = &unk_1F2A52E78;
      v92[1] = v36 << 32;
      v92[3] = v92;
      *&buf[24] = buf;
      *buf = &unk_1F2A52E78;
      *&buf[8] = v36 << 32;
      LODWORD(v82) = 0;
      ecs2::Runtime::queueCommand();
      if (v82 != -1)
      {
        (off_1F2A4F020[v82])(&v79, buf);
      }

      LODWORD(v82) = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v92);
      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v33)
      {
        createRenderItemForEntity(&v79, Entity, v34, v33);
        if (v80 != 1)
        {
          if (!v80)
          {
            *buf = v79;
            *&buf[16] = 7412;
            ecs2::addComponent<md::ls::RenderItemID>(*a2, Entity, buf);
          }

          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v79) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v38 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = "";
        if (v79 <= 2uLL)
        {
          v39 = off_1E7B3D650[v79];
        }

        *buf = 136315906;
        *&buf[4] = v39;
        *&buf[12] = 2080;
        *&buf[14] = "false";
        *&buf[22] = 2080;
        *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        LOWORD(v82) = 1024;
        *(&v82 + 2) = 705;
        _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_ERROR, "Failed to create depth prepass render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      ++v68;
      v40 = *(&v69[0] + 1);
      v41 = v20 + 2;
      v21 = v52;
      while (1)
      {
        v20 = v41;
        *&v69[0] = v41;
        if (v41 == v40)
        {
          break;
        }

        v42 = ecs2::ViewIterator<void,std::tuple<md::ls::SliceAssignmentT<(md::SliceType)5> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::PendingProcessingDepthPrePass const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ElevationHandle const*,md::ls::PrepassShadowConstantDataHandle const&,md::ls::PrepassConstantDataHandle const&,md::ls::PreserveHeight const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::InstanceCount const*>,std::tuple<>>::containsAll<md::ls::SliceAssignmentT<(md::SliceType)5> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::PendingProcessingDepthPrePass const,md::ls::PrepassShadowConstantDataHandle const,md::ls::PrepassConstantDataHandle const>(v69, *v41, v41[1]);
        v41 = v20 + 2;
        if (v42)
        {
          v40 = v20;
          break;
        }
      }

      v22 = v53;
    }

    while (v40 != v66);
    v43 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
    result = v53;
    *(v43 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v43 + 4096);
    v45 = v68;
  }

  *(v21 + 104 * *result + 24) = -65536;
  v46 = v21 + 104 * *result;
  v47 = *(v46 + 92);
  *(v46 + 92) = v47 + 1;
  *(v46 + 4 * v47 + 28) = v45;
  v48 = v21 + 104 * *result;
  v50 = *(v48 + 92);
  v49 = (v48 + 92);
  if (v50 >= 0x10)
  {
    *v49 = 0;
  }

  return result;
}

void sub_1B2A8385C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22RenderableMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42B38;
  a2[1] = v2;
  return result;
}

void sub_1B2A841B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::RenderLayerProviderWrapper::addCommandBuffer(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v72[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v8 = v7[6];
  __p[0] = a4;
  v9 = v7[7] - v8;
  v10 = v7[1];
  if (*v7 == v10)
  {
    v67 = (v9 >> 3) | 0x100000000;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v7 + 3), &v67);
    v12 = *(v7[4] - 8);
  }

  else
  {
    v11 = *(v10 - 8);
    v7[1] = v10 - 8;
    *(v7[3] + 8 * v11) = v9 >> 3;
    *(v7[3] + 8 * v11 + 4) = ((*(v7[3] + 8 * v11 + 4) << 32) + 0x100000000) >> 32;
    v12 = v11 | (*(v7[3] + 8 * v11 + 4) << 32);
  }

  std::vector<md::TransitConnectedNode *>::push_back[abi:nn200100]((v7 + 6), __p);
  v67 = v12;
  std::vector<unsigned long>::push_back[abi:nn200100]((v7 + 9), &v67);
  v66 = v12;
  v13 = *(a1 + 8);
  v14 = v13[12];
  v15 = (a2 << 6) + a3;
  v16 = v15 >> 7;
  if (v15 >> 7 < (v13[13] - v14) >> 3 && (v17 = *(v14 + 8 * v16)) != 0 && (v18 = *(v17 + 2 * (v15 & 0x7F)), v20 = v13 + 16, v19 = v13[16], v21 = v13[15], v18 < (v19 - v21) >> 4) && (v40 = v21 + 16 * v18, v15 == *(v40 + 8) + (*v40 << 6)))
  {
    if (v19 != v40)
    {
      v41 = v13[18] + 24 * v18;
      if (v41 != v13[19])
      {
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v41, &v66);
        return;
      }
    }
  }

  else
  {
    v20 = v13 + 16;
  }

  v72[0] = v12;
  std::vector<unsigned long>::vector[abi:nn200100](__p, v72, 1uLL);
  v63 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v65 = 0;
  v22 = v13[12];
  if (v16 >= (v13[13] - v22) >> 3)
  {
    v24 = v13[15];
    v25 = v13[16];
    v23 = v13 + 15;
    std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::resize((v13 + 12), v16 + 1);
    v26 = (v25 - v24) >> 4;
    v27 = v15 & 0x7F;
    if (*(v13[12] + 8 * v16))
    {
LABEL_9:
      *(*(v13[12] + 8 * v16) + 2 * v27) = v26;
      v28 = v13[16];
      v29 = v13[17];
      if (v28 < v29)
      {
        *v28 = a2;
        *(v28 + 8) = a3;
        *(v28 + 9) = 0;
        *(v28 + 12) = 0;
        v35 = v28 + 16;
        *v20 = v28 + 16;
      }

      else
      {
        v30 = (v28 - *v23) >> 4;
        v31 = v30 + 1;
        if ((v30 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v32 = v29 - *v23;
        if (v32 >> 3 > v31)
        {
          v31 = v32 >> 3;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF0)
        {
          v33 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(v33);
        }

        v34 = 16 * v30;
        *v34 = a2;
        *(v34 + 8) = a3;
        *(v34 + 9) = 0;
        *(v34 + 12) = 0;
        v35 = 16 * v30 + 16;
        v36 = v13[15];
        v37 = v13[16] - v36;
        v38 = (16 * v30 - v37);
        memcpy(v38, v36, v37);
        v39 = v13[15];
        v13[15] = v38;
        v13[16] = v35;
        v13[17] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      v13[16] = v35;
      v43 = v13[19];
      v42 = v13[20];
      if (v43 >= v42)
      {
        v46 = v13[18];
        v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v46) >> 3);
        if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v46) >> 3);
        v49 = 2 * v48;
        if (2 * v48 <= v47 + 1)
        {
          v49 = v47 + 1;
        }

        if (v48 >= 0x555555555555555)
        {
          v50 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v50 = v49;
        }

        v71 = v13 + 18;
        if (v50)
        {
          if (v50 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v51 = 24 * v47;
        v67 = 0;
        v68 = v51;
        v69 = 24 * v47;
        v70 = 0;
        *(v51 + 8) = 0;
        *(v51 + 16) = 0;
        *v51 = 0;
        v44 = v63;
        if (*(&v63 + 1) != v63)
        {
          std::vector<gdc::Entity>::__vallocate[abi:nn200100](v51, (*(&v63 + 1) - v63) >> 3);
        }

        v45 = (v51 + 24);
        v52 = v13[18];
        v53 = v13[19] - v52;
        v54 = (v51 - v53);
        memcpy(v54, v52, v53);
        v55 = v13[18];
        v13[18] = v54;
        v13[19] = v45;
        v56 = v13[20];
        v13[20] = v70;
        v69 = v55;
        v70 = v56;
        v67 = v55;
        v68 = v55;
        std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&v67);
      }

      else
      {
        *v43 = 0;
        v43[1] = 0;
        v43[2] = 0;
        v44 = v63;
        if (*(&v63 + 1) != v63)
        {
          std::vector<gdc::Entity>::__vallocate[abi:nn200100](v43, (*(&v63 + 1) - v63) >> 3);
        }

        v45 = v43 + 3;
        v13[19] = v45;
      }

      v13[19] = v45;
      goto LABEL_30;
    }

LABEL_58:
    operator new();
  }

  v57 = *(v22 + 8 * v16);
  if (!v57)
  {
    goto LABEL_58;
  }

  v27 = v15 & 0x7F;
  v58 = *(v57 + 2 * v27);
  v60 = v13[15];
  v59 = v13[16];
  v23 = v13 + 15;
  if (v58 >= (v59 - v60) >> 4 || ((v61 = v60 + 16 * v58, v15 == *(v61 + 8) + (*v61 << 6)) ? (v62 = v59 == v61) : (v62 = 1), v62))
  {
    v26 = (v59 - v60) >> 4;
    goto LABEL_9;
  }

  v44 = v63;
LABEL_30:
  if (v44)
  {
    operator delete(v44);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B2A8473C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(&a15);
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B2A84B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RampMaterialData>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RampMaterialData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[15];
}

uint64_t std::__function::__value_func<void ()(md::ls::InView const&,md::ls::RenderableMaterialData const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::ita::PrepareMaterialStyleConstantDataHandle::operator()(uint64_t **a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0x41D4E9297E100630)
    {
      v2 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v9 = v4[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }

LABEL_6:
    a1[1] = v2;
  }

  v12 = v2;
  v11 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::MaterialResourceStore>(a1);
  v6 = *ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(a1);
  v7 = (*v6)();
  v8 = md::LayoutContext::get<md::CameraContext>(*(v7 + 8));
  v10 = fmaxf(*(v8 + 3080) + *(v8 + 3076), 1.0);
  operator new();
}

void sub_1B2A85868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16RampMaterialDataEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A43468;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RampMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A43468;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorDataHandle>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[30];
}

void sub_1B2A862B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15ColorDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50E30;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15ColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50E30;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialAlbedoTexture>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::Runtime::_entities<md::ita::ProcessRenderableForFlyoverClip,md::ls::FlyoverClipConstantDataHandle &,md::BoundData const&,md::ls::TileType const&,md::ls::FlyoverClipPlaneData const&,md::ls::ModelTransformData const&>(uint64_t a1, uint64_t **a2)
{
  v209 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = COERCE_DOUBLE(ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(v3));
  v5 = ecs2::BasicRegistry<void>::storage<md::BoundData>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipPlaneData>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(v3);
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v207[0] = v4;
  *&v207[1] = v5;
  *&v207[2] = v6;
  *&v207[3] = v7;
  v12 = 1;
  v13 = v4;
  v14 = v207;
  *&v207[4] = v8;
  do
  {
    if (*(*&v207[v12] + 40) - *(*&v207[v12] + 32) < *(*&v13 + 40) - *(*&v13 + 32))
    {
      v13 = v207[v12];
      v14 = &v207[v12];
    }

    ++v12;
  }

  while (v12 != 5);
  v15 = *(*v14 + 32);
  v16 = *(*v14 + 40);
  if (v15 != v16)
  {
    v17 = *(*&v4 + 8);
    v18 = *(v5 + 8);
    v19 = *(v9 + 8);
    v20 = *(v10 + 8);
    v21 = *(v8 + 8);
    v22 = (*(v8 + 16) - v21) >> 3;
    do
    {
      v23 = v15[1];
      v24 = v23 >> 6;
      if (v23 >> 6 < (*(*&v4 + 16) - v17) >> 3)
      {
        v25 = *(v17 + 8 * v24);
        if (v25)
        {
          v26 = *v15;
          v27 = 4 * (v23 & 0x3F);
          if (*(v25 + v27) == v26 && v24 < (*(v5 + 16) - v18) >> 3)
          {
            v29 = *(v18 + 8 * v24);
            if (v29)
            {
              if (*(v29 + v27) == v26 && v24 < (*(v9 + 16) - v19) >> 3)
              {
                v31 = *(v19 + 8 * v24);
                if (v31)
                {
                  if (*(v31 + v27) == v26 && v24 < (*(v10 + 16) - v20) >> 3)
                  {
                    v33 = *(v20 + 8 * v24);
                    if (v33)
                    {
                      if (*(v33 + v27) == v26 && v24 < v22)
                      {
                        v35 = *(v21 + 8 * v24);
                        if (v35)
                        {
                          if (*(v35 + v27) == v26)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v15 += 2;
    }

    while (v15 != v16);
  }

  if (v15 == v16)
  {
    v36 = _ZTWN4ecs27Runtime11_localStateE();
    v40 = _ZTWN4ecs27Runtime11_stackIndexE();
    v41 = 0;
  }

  else
  {
    v36 = _ZTWN4ecs27Runtime11_localStateE();
    v40 = _ZTWN4ecs27Runtime11_stackIndexE();
    v41 = 0;
    v181 = v4;
    v182 = a1;
    v179 = v37;
    v180 = v38;
    v177 = v36;
    v178 = v40;
    do
    {
      v185 = v41;
      v42 = v15[1];
      v43 = v42 & 0x3F;
      v44 = (v42 >> 3) & 0x1FF8;
      v45 = *(*(*(*&v4 + 8) + v44) + 4 * v43 + 2);
      v46 = *(*(*&v4 + 56) + ((v45 >> 3) & 0x1FF8));
      v171 = *(*(*(v38 + 8) + v44) + 4 * v43 + 2);
      v170 = *(*(v38 + 56) + ((v171 >> 3) & 0x1FF8));
      v183 = *(*(*(v39 + 8) + v44) + 4 * v43 + 2);
      v184 = *(*(v39 + 56) + ((v183 >> 3) & 0x1FF8));
      v176 = *(*(*(v37 + 8) + v44) + 4 * v43 + 2);
      v175 = *(*(v37 + 56) + ((v176 >> 3) & 0x1FF8));
      v169 = *(*(v11[1] + v44) + 4 * v43 + 2);
      v168 = *(v11[7] + ((v169 >> 3) & 0x1FF8));
      *(v36 + 104 * *v40 + 24) = *v15;
      v47 = a2;
      v48 = a2[1];
      if (!v48)
      {
        v49 = **a2;
        v50 = *v49;
        v51 = *(v49 + 8);
        if (v50 == v51)
        {
          goto LABEL_39;
        }

        while (*v50 != 0x41D4E9297E100630)
        {
          v50 += 5;
          if (v50 == v51)
          {
            goto LABEL_39;
          }
        }

        if (v50 == v51)
        {
LABEL_39:
          v48 = 0;
        }

        else
        {
          v48 = v50[3];
          v52 = v50[4];
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            v53 = v39;
            v172 = v46;
            std::__shared_weak_count::__release_shared[abi:nn200100](v52);
            v46 = v172;
            v39 = v53;
            v47 = a2;
            v36 = v177;
          }
        }

        v47[1] = v48;
      }

      v54 = v39;
      v55 = v47[2];
      if (!v55)
      {
        v56 = v46;
        v57 = gdc::ServiceLocator::resolve<md::ConfigSettingProvider>(***v47, *(**v47 + 8));
        v46 = v56;
        v55 = v57;
        a2[2] = v57;
      }

      v58 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v48 + 991, *(v46 + 8 * (v45 & 0x3F)));
      if (v58 == v48[996])
      {
        v59 = 0;
        v4 = v181;
      }

      else
      {
        v173 = v54;
        v60 = ((v58 - v48[995]) >> 3) & 0x3F;
        v61 = (((v58 - v48[995]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
        v62 = *(v48[1004] + v61);
        v63 = *(v48[1010] + v61);
        ++*(*(v48[998] + v61) + 24 * v60);
        v64 = v48[1026];
        if (!v64)
        {
          v167 = std::__throw_bad_function_call[abi:nn200100]();
          _Unwind_Resume(v167);
        }

        v59 = (*(*v64 + 48))(v64);
        v65 = *(v63 + 8 * v60);
        *(v63 + 8 * v60) = v59;
        v4 = v181;
        if (v65)
        {
          (*(*v65 + 8))(v65);
          v59 = *(v63 + 8 * v60);
        }

        *(v62 + 24 * v60) = v59;
        v54 = v173;
        v36 = v177;
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v205, v59);
      v66 = *(v184 + (v183 & 0x3F));
      if (v66 == 255)
      {
        v67 = (v175 + 240 * (v176 & 0x3F));
        v68 = v185;
        v69 = 0;
        if (*(v67 + 104) == 1)
        {
          v198 = *v67;
          v70 = v168 + 48 * (v169 & 0x3F);
          v199 = *(v67 + 2);
          v200 = *(v67 + 24);
          v201 = *(v67 + 5);
          v202 = *(v67 + 6);
          v203[0] = *(v67 + 56);
          v203[1] = *(v67 + 72);
          v203[2] = *(v67 + 88);
          v71 = v188;
          v204 = 1;
          v40 = v178;
          do
          {
            v72 = 0;
            v73 = v71;
            do
            {
              *v73 = *(v70 + v72);
              v73 += 4;
              v72 += 12;
            }

            while (v72 != 48);
            ++v69;
            v71 += 4;
            v70 += 4;
          }

          while (v69 != 3);
          v74 = 0;
          v189 = 0;
          v190 = 0;
          v75 = v193;
          v191 = 0;
          v192 = 1065353216;
          do
          {
            v76 = *&v188[v74];
            *v75 = vcvtq_f64_f32(*v76.f32);
            v75[1] = vcvt_hight_f64_f32(v76);
            v75 += 2;
            v74 += 16;
          }

          while (v74 != 64);
          v77 = 0;
          v78 = (v67 + 7);
          do
          {
            v79 = 0;
            v80 = v193;
            do
            {
              v81 = 0;
              v82 = 0.0;
              v83 = v78;
              do
              {
                v84 = *v83;
                v83 += 4;
                v82 = v82 + *&v80[v81] * v84;
                v81 += 2;
              }

              while (v81 != 8);
              *(&v194 + 4 * v79++ + v77) = v82;
              v80 += 8;
            }

            while (v79 != 4);
            ++v77;
            ++v78;
          }

          while (v77 != 4);
          v85 = v207;
          gm::Matrix<double,4,4>::inverted<int,void>(v207, &v194);
          geo::RigidTransform<double,double>::toMatrix(v187, &v198);
          for (i = 0; i != 4; ++i)
          {
            v87 = 0;
            v88 = v187;
            do
            {
              v89 = 0;
              v90 = 0.0;
              v91 = v85;
              do
              {
                v92 = *v91;
                v91 += 4;
                v90 = v90 + *&v88[v89] * v92;
                v89 += 2;
              }

              while (v89 != 8);
              v197[4 * v87++ + i] = v90;
              v88 += 8;
            }

            while (v87 != 4);
            ++v85;
          }

          v174 = v54;
          gm::Box<double,3>::operator*(&v194, v203, 1.05);
          gm::Box<double,3>::corners(&v194, v207);
          for (j = 0; j != 24; j += 3)
          {
            v94 = &v207[j];
            v95 = v207[j + 2];
            v194 = *&v207[j];
            v195 = v95;
            v196 = 0x3FF0000000000000;
            *v94 = gm::operator*<double,4,4,1>(v197, &v194);
            *(v94 + 1) = v96;
            *(v94 + 2) = v97;
          }

          for (k = 0; k != 3; ++k)
          {
            v99 = v207[k + 21];
            v193[k] = v99;
          }

          v100 = 0;
          v68 = v185;
          do
          {
            v101 = v207[v100 + 15];
            v187[v100++] = v101;
          }

          while (v100 != 3);
          for (m = 0; m != 3; ++m)
          {
            v103 = v207[m + 3];
            *&v188[4 * m] = v103;
          }

          gm::Plane3<float>::Plane3(&v194, v193, v187, v188);
          v104 = 0;
          v208[0] = v194;
          do
          {
            v105 = v207[v104 + 15];
            v193[v104++] = v105;
          }

          while (v104 != 3);
          v106 = 0;
          v54 = v174;
          v36 = v177;
          do
          {
            v107 = v207[v106 + 12];
            v187[v106++] = v107;
          }

          while (v106 != 3);
          for (n = 0; n != 3; ++n)
          {
            v109 = v207[n];
            *&v188[4 * n] = v109;
          }

          gm::Plane3<float>::Plane3(&v194, v193, v187, v188);
          v110 = 0;
          v208[1] = v194;
          do
          {
            v111 = v207[v110 + 12];
            v193[v110++] = v111;
          }

          while (v110 != 3);
          for (ii = 0; ii != 3; ++ii)
          {
            v113 = v207[ii + 18];
            v187[ii] = v113;
          }

          for (jj = 0; jj != 3; ++jj)
          {
            v115 = v207[jj + 6];
            *&v188[4 * jj] = v115;
          }

          gm::Plane3<float>::Plane3(&v194, v193, v187, v188);
          v116 = 0;
          v208[2] = v194;
          do
          {
            v117 = v207[v116 + 18];
            v193[v116++] = v117;
          }

          while (v116 != 3);
          for (kk = 0; kk != 3; ++kk)
          {
            v119 = v207[kk + 21];
            v187[kk] = v119;
          }

          for (mm = 0; mm != 3; ++mm)
          {
            v121 = v207[mm + 9];
            *&v188[4 * mm] = v121;
          }

          gm::Plane3<float>::Plane3(&v194, v193, v187, v188);
          v122 = 0;
          v208[3] = v194;
          do
          {
            v123 = v207[v122 + 9];
            v193[v122++] = v123;
          }

          while (v122 != 3);
          for (nn = 0; nn != 3; ++nn)
          {
            v125 = v207[nn + 3];
            v187[nn] = v125;
          }

          for (i1 = 0; i1 != 3; ++i1)
          {
            v127 = v207[i1];
            *&v188[4 * i1] = v127;
          }

          gm::Plane3<float>::Plane3(&v194, v193, v187, v188);
          v128 = 0;
          v208[4] = v194;
          do
          {
            v129 = v207[v128 + 21];
            v193[v128++] = v129;
          }

          while (v128 != 3);
          for (i2 = 0; i2 != 3; ++i2)
          {
            v131 = v207[i2 + 18];
            v187[i2] = v131;
          }

          for (i3 = 0; i3 != 3; ++i3)
          {
            v133 = v207[i3 + 12];
            *&v188[4 * i3] = v133;
          }

          gm::Plane3<float>::Plane3(&v194, v193, v187, v188);
          v208[5] = v194;
        }

        else
        {
          v137 = v170 + 24 * (v171 & 0x3F);
          v40 = v178;
          do
          {
            v207[v69] = *(v137 + 4 * v69);
            ++v69;
          }

          while (v69 != 3);
          do
          {
            v207[v69] = *(v137 + 4 * v69);
            ++v69;
          }

          while (v69 != 6);
          altitude::util::computeLocalClipPlanes(v207, v208, 1.05);
        }

        v138 = 0;
        v139 = v206;
        do
        {
          *&v139[v138 / 8] = v208[v138 / 0x10];
          v138 += 16;
        }

        while (v138 != 96);
      }

      else
      {
        v134 = *(v55 + 160);
        v68 = v185;
        if (v66 == 2)
        {
          v135 = v206;
          *v206 = 0;
          *(v135 + 2) = 1065353216;
          *(v135 + 3) = -v134;
          v136 = 1;
          v40 = v178;
        }

        else
        {
          v40 = v178;
          if (v66 == 5)
          {
            v135 = v206;
            *v206 = 0;
            *(v135 + 2) = -1082130432;
            *(v135 + 3) = -v134;
            v136 = 1;
          }

          else
          {
            v136 = 0;
            v135 = v206;
          }
        }

        v140 = (16 * v136);
        v141 = (6 - v136);
        v142 = (v135 + v140);
        do
        {
          *v142++ = xmmword_1B33B0720;
          --v141;
        }

        while (v141);
      }

      ggl::BufferMemory::~BufferMemory(v205);
      v41 = v68 + 1;
      v15 += 2;
      v37 = v179;
      v38 = v180;
      v39 = v54;
      if (v15 == v16)
      {
        break;
      }

      v143 = *(*&v4 + 8);
      v144 = *(v180 + 8);
      v145 = *(v54 + 8);
      v146 = *(v179 + 8);
      v147 = v11[1];
      while (1)
      {
        v148 = v15[1];
        v149 = v148 >> 6;
        if (v148 >> 6 < (*(*&v4 + 16) - v143) >> 3)
        {
          v150 = *(v143 + 8 * v149);
          if (v150)
          {
            v151 = *v15;
            v152 = 4 * (v148 & 0x3F);
            if (*(v150 + v152) == v151 && v149 < (*(v180 + 16) - v144) >> 3)
            {
              v154 = *(v144 + 8 * v149);
              if (v154)
              {
                if (*(v154 + v152) == v151 && v149 < (*(v54 + 16) - v145) >> 3)
                {
                  v156 = *(v145 + 8 * v149);
                  if (v156)
                  {
                    if (*(v156 + v152) == v151 && v149 < (*(v179 + 16) - v146) >> 3)
                    {
                      v158 = *(v146 + 8 * v149);
                      if (v158)
                      {
                        if (*(v158 + v152) == v151 && v149 < (v11[2] - v147) >> 3)
                        {
                          v160 = *(v147 + 8 * v149);
                          if (v160)
                          {
                            if (*(v160 + v152) == v151)
                            {
                              break;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v15 += 2;
        if (v15 == v16)
        {
          goto LABEL_154;
        }
      }
    }

    while (v15 != v16);
LABEL_154:
    v161 = *(v182 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
    *(v161 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata) = *(v161 + 4096);
  }

  *(v36 + 104 * *v40 + 24) = -65536;
  v162 = v36 + 104 * *v40;
  v163 = *(v162 + 92);
  *(v162 + 92) = v163 + 1;
  *(v162 + 4 * v163 + 28) = v41;
  v164 = v36 + 104 * *v40;
  v166 = *(v164 + 92);
  v165 = (v164 + 92);
  if (v166 >= 0x10)
  {
    *v165 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForFlyoverClip>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForFlyoverClip>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::ProcessRenderableForFlyoverClip,md::ls::FlyoverClipConstantDataHandle &,md::BoundData const&,md::ls::TileType const&,md::ls::FlyoverClipPlaneData const&,md::ls::ModelTransformData const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialVisibilityOptionsHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[235];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls37UniqueMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41740;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls37UniqueMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41740;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SupportsDepthPrePass>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

char *ecs2::Runtime::_entities<md::ita::ApplyPositionScaleInfo,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderablePositionScaleInfo const&>(uint64_t a1, uint64_t **a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderablePositionScaleInfo>(a1);
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v7 = 8;
  v8 = v4;
  v9 = &v44;
  do
  {
    if (*(*(&v44 + v7) + 40) - *(*(&v44 + v7) + 32) < v8[1].__shared_weak_owners_ - v8[1].__shared_owners_)
    {
      v8 = *(&v44 + v7);
      v9 = &v44 + v7;
    }

    v7 += 8;
  }

  while (v7 != 24);
  v11 = *(*v9 + 32);
  v10 = *(*v9 + 40);
  *&v44 = v11;
  *(&v44 + 1) = v10;
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v42 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    *&v44 = v11;
    v10 = v42;
  }

  v43 = v47;
  v12 = v44;
  if (v44 != v42)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v41 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = *(*(v43->__shared_owners_ + ((*(v12 + 2) >> 3) & 0x1FF8)) + 4 * (*(v12 + 2) & 0x3FLL) + 2);
    v14 = v13 & 0x3F;
    v15 = *(v43[2].__shared_owners_ + ((v13 >> 3) & 0x1FF8));
    *(v16 + 104 * *v41 + 24) = *v12;
    v17 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
    v18 = v17;
    if (*(v15 + 4 * v14) < 0.0)
    {
      v19 = v17[1783];
      if (!v19)
      {
        operator new();
      }

      *&v44 = v19;
      BYTE8(v44) = 1;
      v20 = *a2;
      v21 = ecs2::ExecutionTaskContext::currentEntity(v19);
      ecs2::addComponent<md::ls::PositionScaleInfoConstantDataHandle>(v20, v21, &v44);
    }

    v44 = 0uLL;
    v45 = 0;
    v22 = md::addToStorage((v17 + 1197), &v44, 0);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v23 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v18 + 1197, v22);
    if (v23 == v18[1202])
    {
      v24 = 0;
    }

    else
    {
      v25 = ((v23 - v18[1201]) >> 3) & 0x3F;
      v26 = (((v23 - v18[1201]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
      v27 = *(v18[1210] + v26);
      v28 = *(v18[1216] + v26);
      ++*(*(v18[1204] + v26) + 24 * v25);
      v29 = v18[1232];
      if (!v29)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v24 = (*(*v29 + 48))(v29);
      v30 = *(v28 + 8 * v25);
      *(v28 + 8 * v25) = v24;
      if (v30)
      {
        (*(*v30 + 8))(v30);
        v24 = *(v28 + 8 * v25);
      }

      *(v27 + 24 * v25) = v24;
    }

    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v44, v24);
    *v48 = *(v15 + 4 * v14);
    ggl::BufferMemory::~BufferMemory(&v44);
    *&v44 = v22;
    BYTE8(v44) = 0;
    v31 = *a2;
    v33 = ecs2::ExecutionTaskContext::currentEntity(v32);
    ecs2::addComponent<md::ls::PositionScaleInfoConstantDataHandle>(v31, v33, &v44);
  }

  _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  *(v35 + 104 * *result + 24) = -65536;
  v36 = v35 + 104 * *result;
  v37 = *(v36 + 92);
  *(v36 + 92) = v37 + 1;
  *(v36 + 4 * v37 + 28) = 0;
  v38 = v35 + 104 * *result;
  v40 = *(v38 + 92);
  v39 = (v38 + 92);
  if (v40 > 0xF)
  {
    *v39 = 0;
  }

  return result;
}

void sub_1B2A87B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ecs2::Runtime::_entities<md::ita::UpdateClippingConstants,md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>(uint64_t a1, uint64_t **a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::LayerDataReference>(v4);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsFragmentClip>(v4);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(v4);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::TileClippingConstantDataHandle>(v4);
  *&v69 = v5;
  *(&v69 + 1) = v6;
  *&v70 = v7;
  *(&v70 + 1) = v8;
  v10 = 8;
  v11 = v5;
  v12 = &v69;
  *&v71 = v9;
  do
  {
    if (*(*(&v69 + v10) + 40) - *(*(&v69 + v10) + 32) < *(v11 + 40) - *(v11 + 32))
    {
      v11 = *(&v69 + v10);
      v12 = &v69 + v10;
    }

    v10 += 8;
  }

  while (v10 != 40);
  v14 = *(*v12 + 32);
  v13 = *(*v12 + 40);
  *&v69 = v14;
  *(&v69 + 1) = v13;
  *&v70 = v5;
  *(&v70 + 1) = v6;
  *&v71 = v7;
  *(&v71 + 1) = v8;
  *&v72 = v9;
  v63 = v13;
  while (v14 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v69, *v14, v14[1]))
  {
    v14 += 2;
    *&v69 = v14;
    v13 = v63;
  }

  v66[0] = v69;
  v66[1] = v70;
  v67 = v71;
  v68 = v72;
  v15 = v69;
  if (v69 != v63)
  {
    v61 = v68;
    v62 = *(&v67 + 1);
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = *(&v66[0] + 1);
    v59 = v17;
    v60 = v16;
    while (1)
    {
      v65 = v18;
      v20 = v15[1];
      v21 = (v20 >> 3) & 0x1FF8;
      v22 = v20 & 0x3F;
      v23 = *(*(*(v62 + 8) + v21) + 4 * v22 + 2);
      v24 = *(*(v62 + 56) + ((v23 >> 3) & 0x1FF8));
      v25 = *(*(*(v61 + 8) + v21) + 4 * v22 + 2);
      v64 = *(*(v61 + 56) + ((v25 >> 3) & 0x1FF8));
      *(v16 + 104 * *v17 + 24) = *v15;
      v26 = a2[1];
      if (!v26)
      {
        v27 = **a2;
        v28 = *v27;
        v29 = *(v27 + 8);
        while (1)
        {
          if (v28 == v29)
          {
            goto LABEL_48;
          }

          if (*v28 == 0x22D45F5AAD4BF408)
          {
            break;
          }

          v28 += 5;
        }

        if (v28 == v29)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_19;
        }

        v26 = v28[3];
        v30 = v28[4];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v30);
        }

LABEL_19:
        a2[1] = v26;
      }

      v31 = (**v26)(v26);
      v32 = md::LayoutContext::get<md::SceneContext>(*(v31 + 8));
      v33 = a2[2];
      if (!v33)
      {
        v34 = **a2;
        v35 = *v34;
        v36 = *(v34 + 8);
        if (v35 == v36)
        {
          goto LABEL_22;
        }

        while (*v35 != 0x41D4E9297E100630)
        {
          v33 = 0;
          v35 += 5;
          if (v35 == v36)
          {
            goto LABEL_25;
          }
        }

        if (v35 == v36)
        {
LABEL_22:
          v33 = 0;
        }

        else
        {
          v33 = v35[3];
          v51 = v35[4];
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v51);
          }
        }

LABEL_25:
        a2[2] = v33;
      }

      v37 = v23 & 0x3F;
      v38 = *(v24 + 8 * v37);
      v39 = *(v38 + 392);
      v40 = *(v38 + 400);
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        v41 = *(*(v24 + 8 * v37) + 56);
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        v42 = md::SceneContext::subtileClipMask(*v32, v39, v41);
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
        if (!v42)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v42 = md::SceneContext::subtileClipMask(*v32, v39, *(v38 + 56));
        if (!v42)
        {
LABEL_32:
          v43 = 0;
          goto LABEL_33;
        }
      }

      if (v42[4] == v42[3] * v42[3])
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

LABEL_33:
      md::BaseMapTileDataRenderable::setSubtileClipMask(*(v24 + 8 * v37), v43);
      v44 = *(v64 + 8 * (v25 & 0x3F));
      v45 = *(*(v24 + 8 * v37) + 256);
      v46 = md::VKMRenderResourcesStore::getConstantDataStorage<ggl::Tile::Clipping>(v33, v44);
      if (v46)
      {
        v47 = v46[2];
        *v46 = v45;
        v46[1] = 0;
        v46[2] = 0;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v47);
        }
      }

      v17 = v59;
      v16 = v60;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
      }

      v18 = v65 + 1;
      v48 = v15 + 2;
      while (1)
      {
        v15 = v48;
        *&v66[0] = v48;
        if (v48 == v19)
        {
          break;
        }

        v49 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(v66, *v48, v48[1]);
        v48 = v15 + 2;
        if (v49)
        {
          v50 = v15;
          goto LABEL_43;
        }
      }

      v50 = v19;
LABEL_43:
      if (v50 == v63)
      {
        v52 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
        *(v52 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata) = *(v52 + 4096);
        v53 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>();
        *(v53 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata) = *(v53 + 4096);
        goto LABEL_50;
      }
    }
  }

  v16 = _ZTWN4ecs27Runtime11_localStateE();
  v17 = _ZTWN4ecs27Runtime11_stackIndexE();
  v18 = 0;
LABEL_50:
  *(v16 + 104 * *v17 + 24) = -65536;
  v54 = v16 + 104 * *v17;
  v55 = *(v54 + 92);
  *(v54 + 92) = v55 + 1;
  *(v54 + 4 * v55 + 28) = v18;
  v56 = v16 + 104 * *v17;
  v58 = *(v56 + 92);
  v57 = (v56 + 92);
  if (v58 >= 0x10)
  {
    *v57 = 0;
  }
}

void sub_1B2A88074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialZIndexHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialZIndexHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[354];
}

uint64_t md::ita::PrepareShadowPass::operator()(uint64_t **a1)
{
  v2 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(a1);
  result = (*(*v2 + 8))(v2);
  if (result)
  {
    result = md::FrameGraph::renderQueueForPass(*(result + 8), 0);
    if (result)
    {
      v4 = a1[2];
      if (!v4)
      {
        v5 = **a1;
        v6 = *v5;
        v7 = *(v5 + 8);
        if (v6 == v7)
        {
          goto LABEL_7;
        }

        while (*v6 != 0x22D45F5AAD4BF408)
        {
          v6 += 5;
          if (v6 == v7)
          {
            goto LABEL_7;
          }
        }

        if (v6 == v7)
        {
LABEL_7:
          v4 = 0;
        }

        else
        {
          v4 = v6[3];
          v8 = v6[4];
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }
        }

        a1[2] = v4;
      }

      v9 = (**v4)(v4);
      result = md::LayoutContext::get<md::LightingLogicContext>(*(v9 + 8));
      if (result && (*(result + 261) & 1) == 0)
      {
        Entity = ecs2::ExecutionTaskContext::createEntity((*a1)[1]);
        ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(*a1, Entity, 512);
        v11 = ecs2::ExecutionTaskContext::createEntity((*a1)[1]);
        ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(*a1, v11, 768);
        v12 = ecs2::ExecutionTaskContext::createEntity((*a1)[1]);
        v13 = *a1;

        return ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(v13, v12, 1024);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowPass>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareShadowPass::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26UniqueMaterialZIndexHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41268;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26UniqueMaterialZIndexHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41268;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B2A88CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2A8962C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueColorDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueColorDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[426];
}

void sub_1B2A89FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::ita::DeletePendingDeletion::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = &unk_1F2A1AB48;
  v27 = a1;
  v28 = &v26;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(*(a2 + 8));
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = _ZTWN4ecs27Runtime11_localStateE();
  v9 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v6 != v7)
  {
    v10 = 0;
    while (1)
    {
      *(v8 + 104 * *v9 + 24) = *v6;
      if (!v28)
      {
        break;
      }

      (*(*v28 + 6))(v28, v6);
      ++v10;
      if (++v6 == v7)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v10 = 0;
LABEL_7:
  *(v8 + 104 * *v9 + 24) = -65536;
  v11 = v8 + 104 * *v9;
  v12 = *(v11 + 92);
  *(v11 + 92) = v12 + 1;
  *(v11 + 4 * v12 + 28) = v10;
  v13 = v8 + 104 * *v9;
  v15 = *(v13 + 92);
  v14 = (v13 + 92);
  if (v15 >= 0x10)
  {
    *v14 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&)>::~__value_func[abi:nn200100](&v26);
  v26 = &unk_1F2A1AB90;
  v27 = a1;
  v28 = &v26;
  v16 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemPendingDeletion>(*(a3 + 8));
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  if (v17 != v18)
  {
    v19 = 0;
    while (1)
    {
      *(v8 + 104 * *v9 + 24) = *v17;
      if (!v28)
      {
        goto LABEL_18;
      }

      (*(*v28 + 6))(v28, v17);
      ++v19;
      if (++v17 == v18)
      {
        goto LABEL_15;
      }
    }
  }

  v19 = 0;
LABEL_15:
  *(v8 + 104 * *v9 + 24) = -65536;
  v20 = v8 + 104 * *v9;
  v21 = *(v20 + 92);
  *(v20 + 92) = v21 + 1;
  *(v20 + 4 * v21 + 28) = v19;
  v22 = v8 + 104 * *v9;
  v24 = *(v22 + 92);
  v23 = (v22 + 92);
  if (v24 >= 0x10)
  {
    *v23 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::RenderItemPendingDeletion const&)>::~__value_func[abi:nn200100](&v26);
}

void sub_1B2A8A238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::ls::RenderItemPendingDeletion const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2A8AC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21UniqueColorDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A415A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SupportsFragmentClip>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21UniqueColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A415A8;
  a2[1] = v2;
  return result;
}

void sub_1B2A8B890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B2A8BC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2A8BFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueGradientMaskDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueGradientMaskDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[283];
}

void md::MaterialResourceStore::reset(md::MaterialResourceStore *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(this + 9) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v7 & 0x3F);
      if ((*(v8 + 17) & 1) != 0 || *v8 != 0)
      {
        *v8 = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 8) = 0;
        v9 = (v6 - v4) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (-v4 >> 2 > v10)
        {
          v10 = -v4 >> 2;
        }

        if (-v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v11);
        }

        v12 = (8 * v9);
        v13 = (8 * v9 - (v5 - v4));
        *v12 = *v2;
        v6 = v12 + 1;
        memcpy(v13, v4, v5 - v4);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = v13;
        v5 = v6;
      }

      ++v2;
      ++v7;
    }

    while (v2 != v3);
    if (v4 != v6)
    {
      v14 = v4;
      do
      {
        md::release_data_for_handle(this + 2, v14++);
      }

      while (v14 != v6);
      v6 = v5;
    }

    if (v4 != v6)
    {
      v15 = v4;
      do
      {
        v16 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 51, *v15);
        if (v16)
        {
          v17 = v16;
          std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::__erase_unique<md::MaterialKey>(this + 46, (v16 + 3));
          std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(this + 51, v17[2]);
        }

        ++v15;
      }

      while (v15 != v6);
    }

    if (v4)
    {
      operator delete(v4);
    }
  }

  md::resetV4(this + 56);
  md::resetV4(this + 110);
  md::resetV4(this + 164);
  md::resetV4(this + 218);
  md::resetV4(this + 272);

  md::resetV4(this + 326);
}

uint64_t std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28UniqueGradientMaskDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41630;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28UniqueGradientMaskDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41630;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::CommandBufferDescriptionCreation>(uint64_t a1, unint64_t a2, __int16 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata;
  v60 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::CommandBufferDescriptionCreation>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v54 = *a3;
    v55 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 3 * (v14 & 0x3F);
    *(v55 + 2) = *(a3 + 2);
    *v55 = v54;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v59 = a3;
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v58;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v50 = *(v31 + 8 * v29) + 3 * (v28 & 0x3F);
  v51 = *v59;
  *(v50 + 2) = *(v59 + 2);
  *v50 = v51;
  v52 = *(v8 + 152);
  v53 = *(v8 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), a2);
    v52 += 32;
  }

LABEL_54:
  v56 = *(v60 + 41016) + (WORD1(a2) << 6);
  *(v56 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata) = *(v60 + 4096);
}

uint64_t *md::RenderLayerProviderWrapper::resetAllResources(md::RenderLayerProviderWrapper *this)
{
  v2 = *(this + 1);
  *(v2 + 128) = *(v2 + 120);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::clear[abi:nn200100]((v2 + 144));
  v3 = *(v2 + 72);
  for (i = *(v2 + 80); i != v3; v3 = *(v2 + 72))
  {
    v6 = *(i - 8);
    i -= 8;
    v5 = v6;
    v7 = *(v2 + 24);
    v8 = *(v2 + 32) - v7;
    v9 = v7 + 8 * v6;
    v10 = *(v9 + 4) << 32;
    *(v9 + 4) = (v10 + 0x100000000) >> 32;
    *(*(v2 + 24) + 8 * v6) = v10 & 0xFFFFFFFF00000000 | (v8 >> 3);
    v12 = *(v2 + 8);
    v11 = *(v2 + 16);
    if (v12 >= v11)
    {
      v14 = *v2;
      v15 = v12 - *v2;
      v16 = v15 >> 3;
      v17 = (v15 >> 3) + 1;
      if (v17 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v11 - v14;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v19);
      }

      *(8 * v16) = v5;
      v13 = 8 * v16 + 8;
      memcpy(0, v14, v15);
      v20 = *v2;
      *v2 = 0;
      *(v2 + 8) = v13;
      *(v2 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v12 = v5;
      v13 = (v12 + 1);
    }

    *(v2 + 8) = v13;
  }

  *(v2 + 80) = v3;
  *(v2 + 56) = *(v2 + 48);
  md::DaVinciGroundRenderResources::resetPools((v2 + 168));
  md::FlyoverRenderResources::resetPools((v2 + 3072));
  ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::pushAll(*(v2 + 4448));
  result = md::RenderItemPool::reset((v2 + 4472));
  *(this + 5) = *(this + 4);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31UniqueColorCorrectionDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A416B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledSlice>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareCulledSlice::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t *md::FlyoverRenderResources::resetPools(md::FlyoverRenderResources *this)
{
  v2 = *(this + 140);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  if (v3 != v4)
  {
    do
    {
      v30 = *v3++;
      v39 = v30;
      std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v2, &v39);
    }

    while (v3 != v4);
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);
  }

  if (v3 != v4)
  {
    *(v2 + 5) = v3;
  }

  v5 = *(this + 143);
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  if (v6 != v7)
  {
    do
    {
      v31 = *v6++;
      v39 = v31;
      std::vector<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::Flyover::FlyoverPolarPipelineSetup * const&>(v5, &v39);
    }

    while (v6 != v7);
    v6 = *(v5 + 4);
    v7 = *(v5 + 5);
  }

  if (v6 != v7)
  {
    *(v5 + 5) = v6;
  }

  v8 = *(this + 146);
  v9 = *(v8 + 4);
  v10 = *(v8 + 5);
  if (v9 != v10)
  {
    do
    {
      v32 = *v9++;
      v39 = v32;
      std::vector<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v8, &v39);
    }

    while (v9 != v10);
    v9 = *(v8 + 4);
    v10 = *(v8 + 5);
  }

  if (v9 != v10)
  {
    *(v8 + 5) = v9;
  }

  v11 = *(this + 149);
  v12 = *(v11 + 4);
  v13 = *(v11 + 5);
  if (v12 != v13)
  {
    do
    {
      v33 = *v12++;
      v39 = v33;
      std::vector<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::FlyoverNight::FlyoverPolarPipelineSetup * const&>(v11, &v39);
    }

    while (v12 != v13);
    v12 = *(v11 + 4);
    v13 = *(v11 + 5);
  }

  if (v12 != v13)
  {
    *(v11 + 5) = v12;
  }

  v14 = *(this + 152);
  v15 = *(v14 + 4);
  v16 = *(v14 + 5);
  if (v15 != v16)
  {
    do
    {
      v34 = *v15++;
      v39 = v34;
      std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v14, &v39);
    }

    while (v15 != v16);
    v15 = *(v14 + 4);
    v16 = *(v14 + 5);
  }

  if (v15 != v16)
  {
    *(v14 + 5) = v15;
  }

  v17 = *(this + 153);
  v18 = *(v17 + 4);
  v19 = *(v17 + 5);
  if (v18 != v19)
  {
    do
    {
      v35 = *v18++;
      v39 = v35;
      std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * const&>(v17, &v39);
    }

    while (v18 != v19);
    v18 = *(v17 + 4);
    v19 = *(v17 + 5);
  }

  if (v18 != v19)
  {
    *(v17 + 5) = v18;
  }

  v20 = *(this + 154);
  v21 = *(v20 + 4);
  v22 = *(v20 + 5);
  if (v21 != v22)
  {
    do
    {
      v36 = *v21++;
      v39 = v36;
      std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v20, &v39);
    }

    while (v21 != v22);
    v21 = *(v20 + 4);
    v22 = *(v20 + 5);
  }

  if (v21 != v22)
  {
    *(v20 + 5) = v21;
  }

  v23 = *(this + 155);
  v24 = *(v23 + 4);
  v25 = *(v23 + 5);
  if (v24 != v25)
  {
    do
    {
      v37 = *v24++;
      v39 = v37;
      std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v23, &v39);
    }

    while (v24 != v25);
    v24 = *(v23 + 4);
    v25 = *(v23 + 5);
  }

  if (v24 != v25)
  {
    *(v23 + 5) = v24;
  }

  v26 = *(this + 156);
  v27 = *(v26 + 4);
  v28 = *(v26 + 5);
  if (v27 != v28)
  {
    do
    {
      v38 = *v27++;
      v39 = v38;
      std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v26, &v39);
    }

    while (v27 != v28);
    v27 = *(v26 + 4);
    v28 = *(v26 + 5);
  }

  if (v27 != v28)
  {
    *(v26 + 5) = v27;
  }

  return md::RenderItemPool::reset(this);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::pushAll(ggl::zone_mallocator *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      v5 = v4;
      result = std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v1, &v5);
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

void md::ita::PrepareShadowSlice::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v119 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (!v6)
  {
    v7 = **a1;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v8 == v9)
    {
      goto LABEL_5;
    }

    while (*v8 != 0x22D45F5AAD4BF408)
    {
      v8 += 5;
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    if (v8 == v9)
    {
LABEL_5:
      v6 = 0;
    }

    else
    {
      v6 = v8[3];
      v10 = v8[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

    a1[1] = v6;
  }

  v11 = (**v6)(v6);
  v12 = a1[2];
  if (!v12)
  {
    v13 = **a1;
    v14 = *v13;
    v15 = *(v13 + 8);
    if (v14 == v15)
    {
      goto LABEL_12;
    }

    while (*v14 != 0x41D4E9297E100630)
    {
      v12 = 0;
      v14 += 5;
      if (v14 == v15)
      {
        goto LABEL_15;
      }
    }

    if (v14 == v15)
    {
LABEL_12:
      v12 = 0;
    }

    else
    {
      v12 = v14[3];
      v96 = v14[4];
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v96);
      }
    }

LABEL_15:
    a1[2] = v12;
  }

  LODWORD(v111) = 3;
  v115 = &v111;
  v16 = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v12 + 1555, 3u);
  v17 = md::LayoutContext::get<md::LightingLogicContext>(*(v11 + 8));
  if (v17)
  {
    v18 = v17;
    if ((*(v17 + 261) & 1) == 0)
    {
      v19 = +[VKDebugSettings sharedSettings];
      if ([v19 daVinciAdvancedLightingEnabled] && *(v18 + 257) == 1)
      {
        if (*(md::LayoutContext::get<md::ElevationContext>(*(v11 + 8)) + 1))
        {
          v111 = &unk_1F2A33870;
          v112 = a1;
          v113 = v16 + 3;
          v114 = &v111;
          v20 = *(a3 + 8);
          v21 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v20);
          v22 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v20);
          CanCast = ecs2::BasicRegistry<void>::storage<md::ls::CanCastShadow>(v20);
          v24 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(v20);
          v115 = v21;
          v116 = v22;
          v25 = 1;
          v26 = v21;
          v27 = &v115;
          v117 = CanCast;
          v118 = v24;
          do
          {
            if ((&v115)[v25][5] - (&v115)[v25][4] < (v26[5] - v26[4]))
            {
              v26 = (&v115)[v25];
              v27 = &(&v115)[v25];
            }

            ++v25;
          }

          while (v25 != 4);
          v28 = (*v27)[4];
          v29 = (*v27)[5];
          v105 = v28;
          v106 = v29;
          v107 = v21;
          v108 = v22;
          v109 = CanCast;
          v110 = v24;
          while (v28 != v29 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v105, *v28, v28[1]))
          {
            v28 += 2;
            v105 = v28;
          }

          v40 = v105;
          if (v105 == v29)
          {
            v45 = _ZTWN4ecs27Runtime11_localStateE();
            v46 = _ZTWN4ecs27Runtime11_stackIndexE();
            v47 = 0;
          }

          else
          {
            v97 = v19;
            v41 = v107;
            v42 = v108;
            v43 = v109;
            v44 = v110;
            v45 = _ZTWN4ecs27Runtime11_localStateE();
            v46 = _ZTWN4ecs27Runtime11_stackIndexE();
            v47 = 0;
            v48 = v106;
            do
            {
              v49 = v40[1];
              v50 = (v49 >> 3) & 0x1FF8;
              v51 = v49 & 0x3F;
              v52 = *(*(*(v41 + 8) + v50) + 4 * v51 + 2);
              v53 = *(*(v41 + 56) + ((v52 >> 3) & 0x1FF8));
              v54 = *(*(*(v42 + 8) + v50) + 4 * v51 + 2);
              v55 = *(*(v42 + 56) + ((v54 >> 3) & 0x1FF8));
              v56 = *(v43 + 32);
              v57 = *(*(*(v43 + 8) + v50) + 4 * v51 + 2);
              v58 = *(v44 + 32);
              v59 = *(*(*(v44 + 8) + v50) + 4 * v51 + 2);
              *(v45 + 104 * *v46 + 24) = *v40;
              if (!v114)
              {
                goto LABEL_70;
              }

              (*(*v114 + 6))(v114, v53 + 8 * (v52 & 0x3F), v55 + 16 * (v54 & 0x3F), v56 + 4 * v57, v58 + 4 * v59);
              ++v47;
              v60 = v40 + 2;
              while (1)
              {
                v40 = v60;
                v105 = v60;
                if (v60 == v48)
                {
                  break;
                }

                v61 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v105, *v60, v60[1]);
                v60 = v40 + 2;
                if (v61)
                {
                  v62 = v40;
                  goto LABEL_45;
                }
              }

              v62 = v48;
LABEL_45:
              ;
            }

            while (v62 != v29);
            v19 = v97;
          }

          *(v45 + 104 * *v46 + 24) = -65536;
          v86 = v45 + 104 * *v46;
          v87 = *(v86 + 92);
          *(v86 + 92) = v87 + 1;
          *(v86 + 4 * v87 + 28) = v47;
          v88 = v45 + 104 * *v46;
          v90 = *(v88 + 92);
          v89 = (v88 + 92);
          if (v90 > 0xF)
          {
            *v89 = 0;
          }

          std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::~__value_func[abi:nn200100](&v111);
        }

        else
        {
          v111 = &unk_1F2A336E8;
          v112 = a1;
          v113 = v16 + 3;
          v114 = &v111;
          v30 = *(a2 + 8);
          v31 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v30);
          v32 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v30);
          v33 = ecs2::BasicRegistry<void>::storage<md::ls::CanCastShadow>(v30);
          v34 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(v30);
          v115 = v31;
          v116 = v32;
          v35 = 1;
          v36 = v31;
          v37 = &v115;
          v117 = v33;
          v118 = v34;
          do
          {
            if ((&v115)[v35][5] - (&v115)[v35][4] < (v36[5] - v36[4]))
            {
              v36 = (&v115)[v35];
              v37 = &(&v115)[v35];
            }

            ++v35;
          }

          while (v35 != 4);
          v38 = (*v37)[4];
          v39 = (*v37)[5];
          v99 = v38;
          v100 = v39;
          v101 = v31;
          v102 = v32;
          v103 = v33;
          v104 = v34;
          while (v38 != v39 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v99, *v38, v38[1]))
          {
            v38 += 2;
            v99 = v38;
          }

          v63 = v99;
          if (v99 == v39)
          {
            v68 = _ZTWN4ecs27Runtime11_localStateE();
            v69 = _ZTWN4ecs27Runtime11_stackIndexE();
            v70 = 0;
          }

          else
          {
            v98 = v19;
            v64 = v101;
            v65 = v102;
            v66 = v103;
            v67 = v104;
            v68 = _ZTWN4ecs27Runtime11_localStateE();
            v69 = _ZTWN4ecs27Runtime11_stackIndexE();
            v70 = 0;
            v71 = v100;
            do
            {
              v72 = v63[1];
              v73 = (v72 >> 3) & 0x1FF8;
              v74 = v72 & 0x3F;
              v75 = *(*(*(v64 + 8) + v73) + 4 * v74 + 2);
              v76 = *(*(v64 + 56) + ((v75 >> 3) & 0x1FF8));
              v77 = *(*(*(v65 + 8) + v73) + 4 * v74 + 2);
              v78 = *(*(v65 + 56) + ((v77 >> 3) & 0x1FF8));
              v79 = *(v66 + 32);
              v80 = *(*(*(v66 + 8) + v73) + 4 * v74 + 2);
              v81 = *(v67 + 32);
              v82 = *(*(*(v67 + 8) + v73) + 4 * v74 + 2);
              *(v68 + 104 * *v69 + 24) = *v63;
              if (!v114)
              {
LABEL_70:
                std::__throw_bad_function_call[abi:nn200100]();
              }

              (*(*v114 + 6))(v114, v76 + 8 * (v75 & 0x3F), v78 + 16 * (v77 & 0x3F), v79 + 4 * v80, v81 + 4 * v82);
              ++v70;
              v83 = v63 + 2;
              while (1)
              {
                v63 = v83;
                v99 = v83;
                if (v83 == v71)
                {
                  break;
                }

                v84 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v99, *v83, v83[1]);
                v83 = v63 + 2;
                if (v84)
                {
                  v85 = v63;
                  goto LABEL_55;
                }
              }

              v85 = v71;
LABEL_55:
              ;
            }

            while (v85 != v39);
            v19 = v98;
          }

          *(v68 + 104 * *v69 + 24) = -65536;
          v91 = v68 + 104 * *v69;
          v92 = *(v91 + 92);
          *(v91 + 92) = v92 + 1;
          *(v91 + 4 * v92 + 28) = v70;
          v93 = v68 + 104 * *v69;
          v95 = *(v93 + 92);
          v94 = (v93 + 92);
          if (v95 > 0xF)
          {
            *v94 = 0;
          }

          std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](&v111);
        }
      }
    }
  }
}

void sub_1B2A8DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

ecs2::ExecutionTaskContext *ecs2::Runtime::_entities<CleanupEntities,md::ls::MarkForEntityDeletion const&>(uint64_t a1, uint64_t *a2)
{
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::MarkForEntityDeletion>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v8 = result;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v4++;
      *(v6 + 104 * *v8 + 24) = v10;
      v11 = ecs2::ExecutionTaskContext::currentEntity(result);
      result = ecs2::ExecutionTaskContext::destroyEntity(*a2, v11);
      ++v9;
    }

    while (v4 != v5);
  }

  *(v6 + 104 * *v8 + 24) = -65536;
  v12 = v6 + 104 * *v8;
  v13 = *(v12 + 92);
  *(v12 + 92) = v13 + 1;
  *(v12 + 4 * v13 + 28) = v9;
  v14 = v6 + 104 * *v8;
  v16 = *(v14 + 92);
  v15 = (v14 + 92);
  if (v16 >= 0x10)
  {
    *v15 = 0;
  }

  return result;
}

ecs2::ExecutionTaskContext *std::__function::__func<ecs2::ForwardToExecute<CleanupEntities>,std::allocator<ecs2::ForwardToExecute<CleanupEntities>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<CleanupEntities,md::ls::MarkForEntityDeletion const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::ita::UpdateCameraStyleLight::operator()(uint64_t **a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v44 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v4 = a1[2];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_3;
    }

    while (*v6 != 0x22D45F5AAD4BF408)
    {
      v4 = 0;
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (v6 == v7)
    {
LABEL_3:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v41 = v6[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }
    }

LABEL_6:
    a1[2] = v4;
  }

  v8 = (**v4)(v4);
  v9 = md::LayoutContext::get<md::CameraContext>(*(v8 + 8));
  v10 = gdc::CameraView::position(v9);
  v11 = *(v10 + 16);
  v42 = *v10;
  v43 = v11;
  v52[0] = &unk_1F2A1F678;
  v52[1] = &v44;
  v52[2] = &v42;
  v53 = v52;
  v12 = *(a2 + 8);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(v12);
  v14 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleCameraConstantDataHandle>(v12);
  v15 = v14;
  if (*(v14 + 40) - *(v14 + 32) >= *(v13 + 40) - *(v13 + 32))
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(v16 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v49, *(v16 + 32), v17, v13, v14);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v48, v17, v17, v13, v15);
  v18 = v49;
  v47 = v51;
  v45 = v49;
  v46 = v50;
  v19 = v48;
  if (v49 == v48)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v20 = v50;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = *(&v49 + 1);
    do
    {
      v25 = v18[1];
      v26 = (v25 >> 3) & 0x1FF8;
      v27 = v25 & 0x3F;
      v28 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
      v29 = *(*(v20 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(*(&v20 + 1) + 8) + v26) + 4 * v27 + 2);
      v31 = *(*(*(&v20 + 1) + 56) + ((v30 >> 3) & 0x1FF8));
      *(v21 + 104 * *v22 + 24) = *v18;
      if (!v53)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v53 + 48))(v53, v29 + 8 * (v28 & 0x3F), v31 + 8 * (v30 & 0x3F));
      ++v23;
      v32 = v18 + 2;
      do
      {
        v18 = v32;
        *&v49 = v32;
        if (v32 == v24)
        {
          break;
        }

        v33 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v49, *v32, v32[1]);
        v32 = v18 + 2;
      }

      while (!v33);
    }

    while (v18 != v19);
    v34 = *(a2 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>();
    *(v34 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata) = *(v34 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v35 = v21 + 104 * *v22;
  v36 = *(v35 + 92);
  *(v35 + 92) = v36 + 1;
  *(v35 + 4 * v36 + 28) = v23;
  v37 = v21 + 104 * *v22;
  v39 = *(v37 + 92);
  v38 = (v37 + 92);
  if (v39 >= 0x10)
  {
    *v38 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &)>::~__value_func[abi:nn200100](v52);
}

ecs2::ExecutionTaskContext *ecs2::Runtime::_entities<CleanupCommandBufferDescriptionCreation,md::ls::CommandBufferDescriptionCreation const&>(uint64_t a1, uint64_t *a2)
{
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::CommandBufferDescriptionCreation>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v8 = result;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v4++;
      *(v6 + 104 * *v8 + 24) = v10;
      v11 = ecs2::ExecutionTaskContext::currentEntity(result);
      result = ecs2::ExecutionTaskContext::destroyEntity(*a2, v11);
      ++v9;
    }

    while (v4 != v5);
  }

  *(v6 + 104 * *v8 + 24) = -65536;
  v12 = v6 + 104 * *v8;
  v13 = *(v12 + 92);
  *(v12 + 92) = v13 + 1;
  *(v12 + 4 * v13 + 28) = v9;
  v14 = v6 + 104 * *v8;
  v16 = *(v14 + 92);
  v15 = (v14 + 92);
  if (v16 >= 0x10)
  {
    *v15 = 0;
  }

  return result;
}

ecs2::ExecutionTaskContext *std::__function::__func<ecs2::ForwardToExecute<CleanupCommandBufferDescriptionCreation>,std::allocator<ecs2::ForwardToExecute<CleanupCommandBufferDescriptionCreation>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<CleanupCommandBufferDescriptionCreation,md::ls::CommandBufferDescriptionCreation const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CommandBufferDescriptionCreation>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CommandBufferDescriptionCreation>();
    *algn_1EB83BB58 = 0x7C0654221E3B4567;
    qword_1EB83BB60 = "md::ls::CommandBufferDescriptionCreation]";
    qword_1EB83BB68 = 40;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PreviousResourceStamp>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreviousResourceStamp>();
    *algn_1EB83CC88 = 0xE0E0BD7780EC271BLL;
    qword_1EB83CC90 = "md::ls::PreviousResourceStamp]";
    qword_1EB83CC98 = 29;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PreviousResourceStamp>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v21 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v21 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PreviousResourceStamp>(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PositionScaleInfoConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PositionScaleInfoConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[240];
}

uint64_t SetLegacyStencilOffsetAndBucketCount::operator()(uint64_t **a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v2;
  }

  v3 = (**v2)(v2);
  v4 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  v5 = (*(*v4 + 48))(v4);
  LODWORD(v3) = ggl::StencilManager::reserveStencilValues(*(v3 + 24), 9, (v5 + 2752), 0);
  *((*(*v4 + 48))(v4) + 2764) = v3;
  result = (*(*v4 + 48))(v4);
  *(result + 2768) = v3 + 1;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls35PositionScaleInfoConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A507B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectFlyoverMeshRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectFlyoverMeshRenderables>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::CollectFlyoverMeshRenderables::operator()((a1 + 8));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35PositionScaleInfoConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A507B0;
  a2[1] = v2;
  return result;
}

void sub_1B2A8ECF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t md::ita::LegacyLayoutTask::operator()(uint64_t **a1)
{
  v2 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(a1);
  v3 = (*(*v2 + 16))(v2);
  v4 = *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(a1);
  v5 = (*v4)();
  v6 = *(*v3 + 64);

  return v6(v3, v5);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::LegacyLayoutTask::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[238];
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::FrameGraphRenderResourcesRegistry>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderResourcesRegistry>();
    unk_1EB82F400 = 0x5D2A68BC4355A70CLL;
    qword_1EB82F408 = "md::ls::FrameGraphRenderResourcesRegistry]";
    qword_1EB82F410 = 41;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderResourcesRegistry>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderResourcesRegistry>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v21 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v21 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphRenderResourcesRegistry>(a1);
}

void md::ita::CreateTileClearRenderItemsForDepthPrePass::operator()(uint64_t **a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v2 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  if (!*((*(*v2 + 48))(v2) + 2856))
  {
    v3 = (*(*v2 + 48))(v2);
    md::DaVinciGroundRenderResources::buildShadowPlane(v3);
  }

  v4 = 0;
  operator new();
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls36StyleRouteLineMaskConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A710;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::CartographicRenderer::layoutRenderLayers(md::CartographicRenderer *this, md::LayoutContext *a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F29E5750;
  v2[1] = this;
  v2[2] = a2;
  v2[3] = v2;
  std::allocate_shared[abi:nn200100]<geo::Task,std::allocator<geo::Task>,std::function<void ()(void)> &,0>();
}

void sub_1B2A8F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls36StyleRouteLineMaskConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A710;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfNeedsDepthPeel>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfNeedsDepthPeel>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::CheckIfNeedsDepthPeel::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassSSAOConfiguration>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassSSAOConfiguration>();
    *algn_1EB83CCC8 = 0x73C8822C1D168C4;
    qword_1EB83CCD0 = "md::ls::PassSSAOConfiguration]";
    qword_1EB83CCD8 = 29;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAOConfiguration>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAOConfiguration>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v21 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v21 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassSSAOConfiguration>(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleConstantHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleConstantHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[475];
}

void *md::LayoutContext::get<md::MaterialContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xD2404CDD1F9A6950);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xD2404CDD1F9A6950)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void md::ita::PrepareColorCorrectionFactorsConstantHandle::operator()(uint64_t **a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v13 = v2;
  v7 = a1[2];
  if (!v7)
  {
    v8 = **a1;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v9 == v10)
    {
      goto LABEL_14;
    }

    while (*v9 != 0x41D4E9297E100630)
    {
      v9 += 5;
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    if (v9 == v10)
    {
LABEL_14:
      v7 = 0;
    }

    else
    {
      v7 = v9[3];
      v11 = v9[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    a1[2] = v7;
  }

  v12 = v7;
  operator new();
}

void sub_1B2A8FF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const&,md::ls::SharedColorCorrectionDataHandle const&,md::ls::ColorCorrectionDataKeyHandle *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19StyleConstantHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A798;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19StyleConstantHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A798;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedColorCorrectionDataHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassDOFConfiguration>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDOFConfiguration>();
    unk_1EB82F490 = 0x860C7F11DE38DFC9;
    qword_1EB82F498 = "md::ls::PassDOFConfiguration]";
    qword_1EB82F4A0 = 28;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDOFConfiguration>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassDOFConfiguration>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v20 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v20 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassDOFConfiguration>(a1);
}

void md::ita::CheckIfOpaque::operator()(uint64_t **a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v2;
  }

  v3 = (**v2)(v2);
  md::LayoutContext::get<md::CameraContext>(*(v3 + 8));
  if (!a1[2])
  {
    v4 = **a1;
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == v6)
    {
      goto LABEL_7;
    }

    while (*v5 != 0x4EDAD23DFB014132)
    {
      v5 += 5;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    if (v5 == v6)
    {
LABEL_7:
      v7 = 0;
    }

    else
    {
      v7 = v5[3];
      v8 = v5[4];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    a1[2] = v7;
  }

  v9 = a1[3];
  if (!v9)
  {
    v10 = **a1;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (v11 == v12)
    {
      goto LABEL_16;
    }

    while (*v11 != 0xC94DD89A7B09BE9CLL)
    {
      v11 += 5;
      if (v11 == v12)
      {
        goto LABEL_16;
      }
    }

    if (v11 == v12)
    {
LABEL_16:
      v9 = 0;
    }

    else
    {
      v9 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }
    }

    a1[3] = v9;
  }

  (*(*v9 + 48))(v9);
  operator new();
}

void sub_1B2A90A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LandCoverSettingsConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LandCoverSettingsConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[242];
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassRoutelineMaskConfiguration>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassRoutelineMaskConfiguration>();
    unk_1EB83BC90 = 0xCDD99CCED5CBB5CBLL;
    qword_1EB83BC98 = "md::ls::PassRoutelineMaskConfiguration]";
    qword_1EB83BCA0 = 38;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRoutelineMaskConfiguration>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassRoutelineMaskConfiguration>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v21 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v21 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassRoutelineMaskConfiguration>(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls35LandCoverSettingsConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A5BEB8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35LandCoverSettingsConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5BEB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialAlbedoTexture &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::AlbedoTintColor>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void md::ita::ProcessRenderableForStyleRouteLineMask::operator()(uint64_t **a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x41D4E9297E100630)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v13 = v2;
  v7 = a1[3];
  if (!v7)
  {
    v8 = **a1;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v9 == v10)
    {
      goto LABEL_14;
    }

    while (*v9 != 0x4EDAD23DFB014132)
    {
      v9 += 5;
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    if (v9 == v10)
    {
LABEL_14:
      v7 = 0;
    }

    else
    {
      v7 = v9[3];
      v11 = v9[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    a1[3] = v7;
  }

  v12 = v7;
  operator new();
}

void sub_1B2A91460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassDeviceCapabilities>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDeviceCapabilities>();
    *algn_1EB83CB38 = 0x6738F9098C50E08CLL;
    qword_1EB83CB40 = "md::ls::PassDeviceCapabilities]";
    qword_1EB83CB48 = 30;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassDeviceCapabilities>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v20 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v20 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassDeviceCapabilities>(a1);
}

uint64_t *ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::MaterialResourceStore>(uint64_t **a1)
{
  v1 = a1[2];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v1 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v7 = v4[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

LABEL_4:
    a1[2] = v1;
  }

  return v1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleGroundOcclusionConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleGroundOcclusionConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[231];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls38StyleGroundOcclusionConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A56240;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t *ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(uint64_t **a1)
{
  v1 = a1[3];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v1 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v7 = v4[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

LABEL_4:
    a1[3] = v1;
  }

  return v1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls38StyleGroundOcclusionConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A56240;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareRasterOverlayDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareRasterOverlayDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareRasterOverlayDataHandle,md::ls::RasterOverlayConstantDataHandle &,md::ls::MercatorBounds const&,md::ls::InView const&,md::ls::RenderableMaterialData const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassMapEngineCapabilities>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassMapEngineCapabilities>();
    unk_1EB83C720 = 0xC5E1935BF25B6EDALL;
    qword_1EB83C728 = "md::ls::PassMapEngineCapabilities]";
    qword_1EB83C730 = 33;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassMapEngineCapabilities>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v20 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v20 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassMapEngineCapabilities>(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorRampDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorRampDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[482];
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveRenderableAlbedoTextureFallbacks>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveRenderableAlbedoTextureFallbacks>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void ***a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  v3 = ecs2::ExecutionTask<>::service<md::RenderLayerProvider>(**a2, (*a2)[1]);
  v4 = ecs2::ExecutionTask<>::service<mre::GGLResourceStore>(***v2, (**v2)[1]);
  (*(*v3 + 48))(v3);
  operator new();
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19ColorRampDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52110;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(uint64_t **a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v66 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v4 = a1[2];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_3;
    }

    while (*v6 != 0x22D45F5AAD4BF408)
    {
      v4 = 0;
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (v6 == v7)
    {
LABEL_3:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v51 = v6[4];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      }
    }

LABEL_6:
    a1[2] = v4;
  }

  v8 = (**v4)(v4);
  v9 = md::LayoutContext::get<md::CameraContext>(*(v8 + 8));
  v10 = 0;
  v59 = 0u;
  v61 = 0;
  v64 = 0u;
  v63 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0x415854A640000000;
  *&v59 = 0x415854A640000000;
  v11 = (v9 + 3160);
  v65 = 0x3FF0000000000000;
  v62 = 0x41583FC4141C97D0;
  do
  {
    v12 = 0;
    v13 = &v56;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = v11;
      do
      {
        v17 = *v16;
        v16 += 4;
        v15 = v15 + *&v13[v14++] * v17;
      }

      while (v14 != 4);
      *(&v52[2 * v12++] + v10) = v15;
      v13 += 4;
    }

    while (v12 != 4);
    ++v10;
    ++v11;
  }

  while (v10 != 4);
  v18 = 0;
  v19 = v52;
  do
  {
    v21 = *v19;
    v20 = v19[1];
    v19 += 2;
    *&v55[v18] = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v20);
    v18 += 16;
  }

  while (v18 != 64);
  v70[0] = &unk_1F2A1D598;
  v70[1] = &v66;
  v70[2] = v55;
  v71 = v70;
  v22 = *(a2 + 8);
  v23 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(v22);
  v24 = ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(v22);
  v25 = v24;
  if (*(v24 + 40) - *(v24 + 32) >= *(v23 + 40) - *(v23 + 32))
  {
    v26 = v23;
  }

  else
  {
    v26 = v24;
  }

  v27 = *(v26 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v67, *(v26 + 32), v27, v23, v24);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v54, v27, v27, v23, v25);
  v28 = v67;
  v53 = v69;
  v52[0] = v67;
  v52[1] = v68;
  v29 = v54;
  if (v67 == v54)
  {
    v31 = _ZTWN4ecs27Runtime11_localStateE();
    v32 = _ZTWN4ecs27Runtime11_stackIndexE();
    v33 = 0;
  }

  else
  {
    v30 = v68;
    v31 = _ZTWN4ecs27Runtime11_localStateE();
    v32 = _ZTWN4ecs27Runtime11_stackIndexE();
    v33 = 0;
    v34 = *(&v67 + 1);
    do
    {
      v35 = v28[1];
      v36 = (v35 >> 3) & 0x1FF8;
      v37 = v35 & 0x3F;
      v38 = *(*(*(v30 + 8) + v36) + 4 * v37 + 2);
      v39 = *(*(v30 + 56) + ((v38 >> 3) & 0x1FF8));
      v40 = *(*(*(*(&v30 + 1) + 8) + v36) + 4 * v37 + 2);
      v41 = *(*(*(&v30 + 1) + 56) + ((v40 >> 3) & 0x1FF8));
      *(v31 + 104 * *v32 + 24) = *v28;
      if (!v71)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v71 + 48))(v71, v39 + 8 * (v38 & 0x3F), v41 + 8 * (v40 & 0x3F));
      ++v33;
      v42 = v28 + 2;
      do
      {
        v28 = v42;
        *&v67 = v42;
        if (v42 == v34)
        {
          break;
        }

        v43 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v67, *v42, v42[1]);
        v42 = v28 + 2;
      }

      while (!v43);
    }

    while (v28 != v29);
    v44 = *(a2 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
    *(v44 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata) = *(v44 + 4096);
  }

  *(v31 + 104 * *v32 + 24) = -65536;
  v45 = v31 + 104 * *v32;
  v46 = *(v45 + 92);
  *(v45 + 92) = v46 + 1;
  *(v45 + 4 * v46 + 28) = v33;
  v47 = v31 + 104 * *v32;
  v49 = *(v47 + 92);
  v48 = (v47 + 92);
  if (v49 >= 0x10)
  {
    *v48 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::~__value_func[abi:nn200100](v70);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipPlaneData>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19ColorRampDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52110;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::FrameBufferDesc>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameBufferDesc>();
    *algn_1EB83D6E8 = 0xD7B05696AE714D71;
    qword_1EB83D6F0 = "md::ls::FrameBufferDesc]";
    qword_1EB83D6F8 = 23;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameBufferDesc>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameBufferDesc>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v14 & 0x3F));
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F);
        v18 = *v17;
        *v17 = *v16;
        *(v17 + 4) = v16[1];
        *v16 = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v19 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v19 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::FrameBufferDesc>(a1);
}

void *md::ita::PrepareShadowPassCommandBuffers::operator()(uint64_t **a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_5;
    }

    while (*v6 != 0x22D45F5AAD4BF408)
    {
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    if (v6 == v7)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v8 = v6[4];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    a1[1] = v4;
  }

  v9 = (**v4)(v4);
  result = md::LayoutContext::get<md::LightingLogicContext>(*(v9 + 8));
  if (result)
  {
    v12 = *(result + 261) ^ 1;
    v11 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
    v13[0] = &unk_1F29EEEB8;
    v13[1] = &v12;
    v13[2] = &v11;
    v13[3] = v13;
    ecs2::Runtime::_entities<std::function<void ()(md::ls::PassToCommandBuffers &)>,md::ls::PassToCommandBuffers &>(a2, v13);
    return std::__function::__value_func<void ()(md::ls::PassToCommandBuffers &)>::~__value_func[abi:nn200100](v13);
  }

  return result;
}

void sub_1B2A92B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(md::ls::PassToCommandBuffers &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainPassCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainPassCommandBuffers>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareMainPassCommandBuffers::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NormalsHandle>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NormalsHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[53];
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_12:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_12;
  }

  return v6;
}

void sub_1B2A92E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13NormalsHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A510A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13NormalsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A510A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::remove<md::ls::PassCount>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassCount>();
    unk_1EB83B8B0 = 0x256170776297ADC7;
    qword_1EB83B8B8 = "md::ls::PassCount]";
    qword_1EB83B8C0 = 17;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassCount>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), a2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LODWORD(v16) = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, WORD1(a2));
      }
    }
  }

  v20 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v20 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowSlice>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareShadowSlice::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareUnflattenedCulledSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareUnflattenedCulledSlice>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareUnflattenedCulledSlice::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UVsHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UVsHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[219];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls9UVsHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51240;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::AppliedWantsDynamicShadowBounds>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IgnoreCulling>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9UVsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51240;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::MarkForEntityDeletion>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>();
    unk_1EB83CCF0 = 0xC3545FB0365E4B12;
    qword_1EB83CCF8 = "md::ls::MarkForEntityDeletion]";
    qword_1EB83CD00 = 29;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MarkForEntityDeletion>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>();
    unk_1EB83CCF0 = 0xC3545FB0365E4B12;
    qword_1EB83CCF8 = "md::ls::MarkForEntityDeletion]";
    qword_1EB83CD00 = 29;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::BoundData const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::WantsCulledSlices const&,md::ls::IntendedSceneLayer const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::RenderableVisibilityOptions const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ecs2::BasicRegistry<void>::remove<md::ls::CommandBufferDescriptionCreation>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CommandBufferDescriptionCreation>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 3 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 3 * (v14 & 0x3F);
        LOBYTE(v16) = *(v18 + 2);
        v19 = *v18;
        v20 = *(v17 + 2);
        *v18 = *v17;
        *(v18 + 2) = v20;
        *v17 = v19;
        *(v17 + 2) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v21 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v21 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevationHandle>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevationHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[28];
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CommandBufferDescriptionCreation>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CommandBufferDescriptionCreation>();
    *algn_1EB83BB58 = 0x7C0654221E3B4567;
    qword_1EB83BB60 = "md::ls::CommandBufferDescriptionCreation]";
    qword_1EB83BB68 = 40;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls15ElevationHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51310;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15ElevationHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51310;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MarketMask>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialVisibilityOptionsHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PrimitiveType>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::PassToCommandBuffers>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassToCommandBuffers>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 8 * v19);
        *(v20 + 8 * v19) = *(v18 + 8 * v16);
        *(v18 + 8 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassToCommandBuffers>();
    unk_1EB83CF20 = 0xA7E255916A50AFB1;
    qword_1EB83CF28 = "md::ls::PassToCommandBuffers]";
    qword_1EB83CF30 = 28;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceTransformHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceTransformHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[408];
}

uint64_t std::__function::__func<ecs2::ClearComponent::ClearComponent<md::ls::CanEnableTexture>(std::type_identity<md::ls::CanEnableTexture>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::ClearComponent::ClearComponent<md::ls::CanEnableTexture>(std::type_identity<md::ls::CanEnableTexture>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::operator()(uint64_t a1, uint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>();
  v3 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata;
  CanEnable = ecs2::BasicRegistry<void>::storage<md::ls::CanEnableTexture>(a2);
  v5 = *(CanEnable + 32);
  v6 = *(CanEnable + 40);
  if (v5 != v6)
  {
    v7 = *(a2 + 41016) + 4 * (v3 >> 5);
    do
    {
      *(v7 + (*(v5 + 2) << 6)) &= ~(1 << v3);
      v5 += 4;
    }

    while (v5 != v6);
  }

  v8 = ecs2::BasicRegistry<void>::storage<md::ls::CanEnableTexture>(a2);
  result = ecs2::signal<>::publish(v8[37], v8[38]);
  v10 = v8[4];
  if (v8[5] != v10)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v10);
      v10 = result;
    }

    while (v8[5] != result);
  }

  *(a2 + 8 * v3) = *(a2 + 4096);
  return result;
}

void ecs2::Runtime::_entities<md::ita::UpdateFlyoverTileViewMatrix,md::ls::MeshRenderableID const&,md::ls::GlobeMatrix const&,md::ls::TileViewMatrix &>(uint64_t a1, uint64_t **a2)
{
  v66[109] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(v4);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewMatrix>(v4);
  v65[0] = v5;
  v65[1] = v6;
  v65[2] = v7;
  v8 = 1;
  v9 = v5;
  v10 = v65;
  do
  {
    if (*(v65[v8] + 40) - *(v65[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v65[v8];
      v10 = &v65[v8];
    }

    ++v8;
  }

  while (v8 != 3);
  v12 = *(*v10 + 32);
  v11 = *(*v10 + 40);
  v58 = v12;
  v59 = v11;
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v57 = v11;
  while (v12 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v58, *v12, v12[1]))
  {
    v12 += 2;
    v58 = v12;
    v11 = v57;
  }

  v13 = v58;
  v56 = _ZTWN4ecs27Runtime11_localStateE();
  v55 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v13 == v57)
  {
    v14 = 0;
  }

  else
  {
    v54 = a1;
    v14 = 0;
    do
    {
      v15 = v13[1];
      v16 = v15 & 0x3F;
      v17 = (v15 >> 3) & 0x1FF8;
      v18 = *(*(*(v61 + 8) + v17) + 4 * v16 + 2);
      v19 = *(*(v61 + 56) + ((v18 >> 3) & 0x1FF8));
      v20 = *(*(*(v62 + 8) + v17) + 4 * v16 + 2);
      v21 = *(*(v62 + 56) + ((v20 >> 3) & 0x1FF8));
      *(v56 + 104 * *v55 + 24) = *v13;
      v22 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v23 = a2[2];
      if (!v23)
      {
        v24 = **a2;
        v25 = *v24;
        v26 = *(v24 + 8);
        if (v25 == v26)
        {
          goto LABEL_13;
        }

        while (*v25 != 0x22D45F5AAD4BF408)
        {
          v23 = 0;
          v25 += 5;
          if (v25 == v26)
          {
            goto LABEL_16;
          }
        }

        if (v25 == v26)
        {
LABEL_13:
          v23 = 0;
        }

        else
        {
          v23 = v25[3];
          v47 = v25[4];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
          }
        }

LABEL_16:
        a2[2] = v23;
      }

      v27 = (**v23)(v23);
      v28 = v18 & 0x3F;
      v29 = md::LayoutContext::camera(v27);
      gdc::CameraView::geocentricCameraView(v65, v29);
      geo::RigidTransform<double,double>::inverse(v63, v66);
      v30 = v64;
      geo::RigidTransform<double,double>::toMatrix(v64, v63);
      TileMatrix = md::VKMRenderResourcesStore::getTileMatrix(v22, *(v21 + 8 * (v20 & 0x3F)));
      GlobeMatrix = md::VKMRenderResourcesStore::getGlobeMatrix(v22, *(v19 + 8 * v28));
      for (i = 0; i != 4; ++i)
      {
        v34 = 0;
        v35 = GlobeMatrix;
        do
        {
          v36 = 0;
          v37 = 0.0;
          v38 = v30;
          do
          {
            v39 = *v38;
            v38 += 4;
            v37 = v37 + *(v35 + v36) * v39;
            v36 += 8;
          }

          while (v36 != 32);
          *(&v63[2 * v34++] + i) = v37;
          v35 += 32;
        }

        while (v34 != 4);
        ++v30;
      }

      v40 = v63[5];
      TileMatrix[4] = v63[4];
      TileMatrix[5] = v40;
      v41 = v63[7];
      TileMatrix[6] = v63[6];
      TileMatrix[7] = v41;
      v42 = v63[1];
      *TileMatrix = v63[0];
      TileMatrix[1] = v42;
      v43 = v63[3];
      TileMatrix[2] = v63[2];
      TileMatrix[3] = v43;
      ++v14;
      v44 = v59;
      v45 = v58 + 2;
      while (1)
      {
        v13 = v45;
        v58 = v45;
        if (v45 == v44)
        {
          break;
        }

        v46 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v58, *v45, v45[1]);
        v45 = v13 + 2;
        if (v46)
        {
          v44 = v13;
          break;
        }
      }
    }

    while (v44 != v57);
    v48 = *(v54 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>();
    *(v48 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata) = *(v48 + 4096);
  }

  *(v56 + 104 * *v55 + 24) = -65536;
  v49 = v56 + 104 * *v55;
  v50 = *(v49 + 92);
  *(v49 + 92) = v50 + 1;
  *(v49 + 4 * v50 + 28) = v14;
  v51 = v56 + 104 * *v55;
  v53 = *(v51 + 92);
  v52 = (v51 + 92);
  if (v53 >= 0x10)
  {
    *v52 = 0;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23InstanceTransformHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A51170;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PassToCommandBuffers>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassToCommandBuffers>();
    unk_1EB83CF20 = 0xA7E255916A50AFB1;
    qword_1EB83CF28 = "md::ls::PassToCommandBuffers]";
    qword_1EB83CF30 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23InstanceTransformHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51170;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileViewMatrix>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderablePositionScaleInfo>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t CleanupServices::operator()(void ****a1)
{
  v2 = gdc::ServiceLocator::resolve<md::CallbackGraphService>(***a1, (**a1)[1]);
  (*(*v2 + 64))(v2);
  if (gdc::ServiceLocator::resolve<md::SwapchainProvider>(***a1, (**a1)[1]))
  {
    v3 = gdc::ServiceLocator::resolve<md::SwapchainProvider>(***a1, (**a1)[1]);
    (*(*v3 + 32))(v3);
  }

  v4 = *(*ecs2::service<md::FrameService>(***a1, (**a1)[1]) + 80);

  return v4();
}

uint64_t std::__function::__value_func<void ()(md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<CleanupServices>,std::allocator<ecs2::ForwardToExecute<CleanupServices>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = CleanupServices::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

void md::MapEngineCallbackGraphService::cleanup(md::MapEngineCallbackGraphService *this)
{
  std::__shared_mutex_base::lock((this + 8));
  v2 = *(this + 34);
  if (v2 != *(this + 35))
  {
    do
    {
      v3 = atomic_load(*v2 + 3);
      if (v3 > 0 || (v4 = atomic_load(*v2 + 2)) != 0)
      {
        atomic_store(0, *v2 + 2);
        v6 = v2 + 2;
      }

      else
      {
        v5 = **v2;
        if (v5 && *(this + 24))
        {
          std::unique_ptr<geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>>::~unique_ptr[abi:nn200100](v5 + 10);
          v7 = v5[7];
          if (v7)
          {
            v5[8] = v7;
            operator delete(v7);
          }

          std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>>>::~__hash_table((v5 + 2));
          *v5 = *(this + 27);
          *(this + 27) = v5;
        }

        v6 = *(this + 35);
        if (v2 != v6)
        {
          v8 = v2 - *(this + 34);
          v9 = *(*(this + 37) + (v8 >> 1));
          v10 = v9;
          v11 = *(this + 31);
          if (v9 < ((*(this + 32) - v11) >> 3))
          {
            v12 = *(v11 + 8 * v9);
            v13 = *(v11 + 8 * v10);
            v14 = (v13 ^ v12) >> 32;
            if (v13 && v14 == 0)
            {
              v17 = *(this + 29);
              v16 = *(this + 30);
              if (v17 < v16)
              {
                *v17 = v10;
                v26 = v17 + 8;
                *(this + 29) = v26;
              }

              else
              {
                v18 = *(this + 28);
                v19 = v17 - v18;
                v20 = (v17 - v18) >> 3;
                v21 = v20 + 1;
                if ((v20 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v22 = v16 - v18;
                if (v22 >> 2 > v21)
                {
                  v21 = v22 >> 2;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v23 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v23);
                }

                v42 = (v17 - v18) >> 3;
                v24 = (8 * v20);
                v25 = (8 * v20 - 8 * v42);
                *v24 = v10;
                v26 = v24 + 1;
                memcpy(v25, v18, v19);
                v27 = *(this + 28);
                *(this + 28) = v25;
                *(this + 29) = v26;
                *(this + 30) = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              *(this + 29) = v26;
              v28 = *(*(this + 31) + 8 * v10);
              v29 = *(this + 34);
              v30 = *(this + 35);
              v31 = *(*(this + 37) + ((v30 - v29) >> 1) - 8);
              v32 = (v29 + 16 * v28);
              v33 = *v32;
              *v32 = 0;
              *(v32 + 1) = 0;
              v34 = *(v30 - 16);
              *(v30 - 16) = 0;
              *(v30 - 8) = 0;
              v35 = *(v32 + 1);
              *v32 = v34;
              if (v35)
              {
                v43 = v33;
                std::__shared_weak_count::__release_shared[abi:nn200100](v35);
                v33 = v43;
              }

              v36 = *(v30 - 8);
              *(v30 - 16) = v33;
              if (v36)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v36);
              }

              *(*(this + 31) + 8 * v31) = v28;
              v38 = *(this + 37);
              v37 = *(this + 38);
              v39 = *(v38 + 8 * v28);
              *(v38 + 8 * v28) = *(v37 - 8);
              *(v37 - 8) = v39;
              v40 = *(this + 35);
              v41 = *(v40 - 8);
              if (v41)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v41);
                v37 = *(this + 38);
              }

              *(this + 35) = v40 - 16;
              *(this + 38) = v37 - 8;
              *(*(this + 31) + 8 * v10 + 4) = ((*(*(this + 31) + 8 * v10 + 4) << 32) + 0x100000000) >> 32;
              *(*(this + 31) + 8 * v10) = (*(this + 32) - *(this + 31)) >> 3;
              v6 = (v8 + *(this + 34));
            }
          }
        }
      }

      v2 = v6;
    }

    while (v6 != *(this + 35));
  }

  std::__shared_mutex_base::unlock((this + 8));
}

uint64_t md::ita::UpdateDynamicRenderables::operator()(uint64_t **a1, uint64_t a2)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  if (!v3)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_3;
    }

    while (*v6 != 0x41D4E9297E100630)
    {
      v3 = 0;
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (v6 == v7)
    {
LABEL_3:
      v3 = 0;
    }

    else
    {
      v3 = v6[3];
      v55 = v6[4];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }
    }

LABEL_6:
    a1[2] = v3;
  }

  v58 = v3;
  v66[0] = &unk_1F2A27980;
  v66[1] = &v58;
  v67 = v66;
  v8 = *(a2 + 8);
  IsDynamic = ecs2::BasicRegistry<void>::storage<md::ls::IsDynamicRenderable>(v8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableTransformConstantDataHandle>(v8);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(v8);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableVisibilityOptions>(v8);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::GeocentricBounds>(v8);
  v68[0] = IsDynamic;
  v68[1] = v10;
  v14 = 1;
  v15 = IsDynamic;
  v16 = v68;
  v68[2] = v11;
  v68[3] = v12;
  do
  {
    if (*(v68[v14] + 40) - *(v68[v14] + 32) < *(v15 + 40) - *(v15 + 32))
    {
      v15 = v68[v14];
      v16 = &v68[v14];
    }

    ++v14;
  }

  while (v14 != 4);
  v17 = *(*v16 + 32);
  v18 = *(*v16 + 40);
  v59 = v17;
  v60 = v18;
  v61 = IsDynamic;
  v62 = v10;
  v63 = v11;
  v64 = v12;
  v65 = v13;
  while (v17 != v18 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v59, *v17, v17[1]))
  {
    v17 += 2;
    v59 = v17;
  }

  v19 = v59;
  if (v59 != v18)
  {
    v56 = a2;
    v20 = v61;
    v21 = v62;
    v22 = v63;
    v23 = v64;
    v24 = v65;
    v57 = _ZTWN4ecs27Runtime11_localStateE();
    v25 = _ZTWN4ecs27Runtime11_stackIndexE();
    v26 = 0;
    v27 = v60;
    while (1)
    {
      v28 = v19[1];
      v29 = v28 >> 6;
      v30 = v28 & 0x3F;
      v31 = v24[1];
      if (v29 >= (v24[2] - v31) >> 3)
      {
        goto LABEL_21;
      }

      v32 = *(v31 + 8 * v29);
      if (!v32)
      {
        goto LABEL_22;
      }

      if (*(v32 + 4 * v30) == *v19)
      {
        v33 = *(v32 + 4 * v30 + 2);
        v32 = *(v24[7] + ((v33 >> 3) & 0x1FF8)) + 36 * (v33 & 0x3F);
      }

      else
      {
LABEL_21:
        v32 = 0;
      }

LABEL_22:
      v34 = *(*(*(v20 + 8) + 8 * v29) + 4 * v30 + 2);
      v35 = *(*(v20 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(*(*(v21 + 8) + 8 * v29) + 4 * v30 + 2);
      v37 = *(*(v21 + 56) + ((v36 >> 3) & 0x1FF8));
      v38 = *(*(*(v22 + 8) + 8 * v29) + 4 * v30 + 2);
      v39 = *(*(v22 + 56) + ((v38 >> 3) & 0x1FF8));
      v40 = *(*(*(v23 + 8) + 8 * v29) + 4 * v30 + 2);
      v41 = *(*(v23 + 56) + ((v40 >> 3) & 0x1FF8));
      *(v57 + 104 * *v25 + 24) = *v19;
      v68[0] = v32;
      if (!v67)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v67 + 48))(v67, v35 + 8 * (v34 & 0x3F), v37 + 8 * (v36 & 0x3F), v39 + 24 * (v38 & 0x3F), v41 + 4 * (v40 & 0x3F), v68);
      ++v26;
      v42 = v19 + 2;
      while (1)
      {
        v19 = v42;
        v59 = v42;
        if (v42 == v27)
        {
          break;
        }

        v43 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v59, *v42, v42[1]);
        v42 = v19 + 2;
        if (v43)
        {
          v44 = v19;
          goto LABEL_28;
        }
      }

      v44 = v27;
LABEL_28:
      if (v44 == v18)
      {
        v45 = *(v56 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
        *(v45 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata) = *(v45 + 4096);
        v46 = *(v56 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>();
        *(v46 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata) = *(v46 + 4096);
        v47 = *(v56 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
        *(v47 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata) = *(v47 + 4096);
        v48 = v57;
        goto LABEL_31;
      }
    }
  }

  _ZTWN4ecs27Runtime11_localStateE();
  v25 = _ZTWN4ecs27Runtime11_stackIndexE();
  v26 = 0;
LABEL_31:
  *(v48 + 104 * *v25 + 24) = -65536;
  v49 = v48 + 104 * *v25;
  v50 = *(v49 + 92);
  *(v49 + 92) = v50 + 1;
  *(v49 + 4 * v50 + 28) = v26;
  v51 = v48 + 104 * *v25;
  v53 = *(v51 + 92);
  v52 = (v51 + 92);
  if (v53 >= 0x10)
  {
    *v52 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *)>::~__value_func[abi:nn200100](v66);
}

void sub_1B2A95C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueStyleEmissiveDataKeyHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[245];
}

uint64_t geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>::~Pool(uint64_t a1)
{
  v27 = 0;
  v28 = 0;
  v26 = &v27;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v26, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v28;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = v11 + 152 * v10;
          v13 = v27;
          if (!v27)
          {
            goto LABEL_20;
          }

          v14 = &v27;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v27)
          {
            goto LABEL_20;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_20:
            v18 = *(v12 + 128);
            if (v18)
            {
              *(v12 + 136) = v18;
              operator delete(v18);
            }

            v19 = *(v12 + 104);
            if (v19)
            {
              *(v12 + 112) = v19;
              operator delete(v19);
            }

            if (*(v12 + 95) < 0)
            {
              operator delete(*(v12 + 72));
            }

            v20 = *(v12 + 64);
            if (v20 != -1)
            {
              (off_1F2A217A8[v20])(&v29, v11 + 152 * v10);
            }

            *(v12 + 64) = -1;
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v21 = v6[1];
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
          v22 = v6[2];
          v8 = *v22 == v6;
          v6 = v22;
        }

        while (!v8);
      }

      v6 = v22;
    }

    while (v22 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v24 = v6[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v6[2];
          v8 = *v25 == v6;
          v6 = v25;
        }

        while (!v8);
      }

      v6 = v25;
    }

    while (v25 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v27);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2A95F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a10);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 8));
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls32UniqueStyleEmissiveDataKeyHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1E290;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t *std::unique_ptr<geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>::~Pool(v2);
    MEMORY[0x1B8C62190](v3, 0x1020C407A7143E5);
  }

  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>,std::allocator<ecs2::ForwardToExecute<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  *&v44 = &unk_1F29F5AE8;
  *(&v45 + 1) = &v44;
  *(&v41 + 1) = &v40;
  *&v40 = &unk_1F29F5AE8;
  LODWORD(v42) = 4;
  ecs2::Runtime::queueCommand();
  if (v42 != -1)
  {
    (off_1F29F5B20[v42])(v38, &v40);
  }

  LODWORD(v42) = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v44);
  v4 = **(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v5 == v6)
  {
    goto LABEL_6;
  }

  while (*v5 != 0x41D4E9297E100630)
  {
    v5 += 5;
    if (v5 == v6)
    {
      goto LABEL_6;
    }
  }

  if (v5 == v6)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v7 = v5[3];
    v8 = v5[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  v37 = v7;
  v38[0] = &unk_1F29F5B58;
  v38[1] = &v37;
  v39 = v38;
  v9 = *(a2 + 8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v9);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v9);
  v12 = v11;
  if (*(v11 + 40) - *(v11 + 32) >= *(v10 + 40) - *(v10 + 32))
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v13 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v44, *(v13 + 32), v14, v10, v11);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v43, v14, v14, v10, v12);
  v15 = v44;
  v42 = v46;
  v40 = v44;
  v41 = v45;
  v16 = v43;
  if (v44 == v43)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v17 = v45;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = *(&v44 + 1);
    do
    {
      v22 = v15[1];
      v23 = (v22 >> 3) & 0x1FF8;
      v24 = v22 & 0x3F;
      v25 = *(*(*(v17 + 8) + v23) + 4 * v24 + 2);
      v26 = *(*(v17 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(*(&v17 + 1) + 8) + v23) + 4 * v24 + 2);
      v28 = *(*(*(&v17 + 1) + 56) + ((v27 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v15;
      if (!v39)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v39 + 48))(v39, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v20;
      v29 = v15 + 2;
      do
      {
        v15 = v29;
        *&v44 = v29;
        if (v29 == v21)
        {
          break;
        }

        v30 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v44, *v29, v29[1]);
        v29 = v15 + 2;
      }

      while (!v30);
    }

    while (v15 != v16);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v31 = v18 + 104 * *v19;
  v32 = *(v31 + 92);
  *(v31 + 92) = v32 + 1;
  *(v31 + 4 * v32 + 28) = v20;
  v33 = v18 + 104 * *v19;
  v35 = *(v33 + 92);
  v34 = (v33 + 92);
  if (v35 > 0xF)
  {
    *v34 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)>::~__value_func[abi:nn200100](v38);
  *(a1 + 8) = 0;
  return result;
}

void sub_1B2A963C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls32UniqueStyleEmissiveDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1E290;
  a2[1] = v2;
  return result;
}

uint64_t std::__shared_ptr_pointer<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource *,std::shared_ptr<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource>::__shared_ptr_default_delete<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource,md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource>,std::allocator<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void MDDisplayLayerSwapchainProvider::cleanup(MDDisplayLayerSwapchainProvider *this)
{
  v2 = *(this + 31);
  for (i = *(this + 32); i != v2; v2 = *(this + 31))
  {
    v5 = *(i - 8);
    i -= 8;
    v4 = v5;
    v6 = *(this + 25);
    v7 = *(this + 26) - v6;
    v8 = v6 + 8 * v5;
    v9 = *(v8 + 4) << 32;
    *(v8 + 4) = (v9 + 0x100000000) >> 32;
    *(*(this + 25) + 8 * v5) = v9 & 0xFFFFFFFF00000000 | (v7 >> 3);
    v11 = *(this + 23);
    v10 = *(this + 24);
    if (v11 >= v10)
    {
      v13 = *(this + 22);
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v18);
      }

      v22 = (v11 - v13) >> 3;
      v19 = (8 * v15);
      v20 = (8 * v15 - 8 * v22);
      *v19 = v4;
      v12 = v19 + 1;
      memcpy(v20, v13, v14);
      v21 = *(this + 22);
      *(this + 22) = v20;
      *(this + 23) = v12;
      *(this + 24) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v11 = v4;
      v12 = v11 + 8;
    }

    *(this + 23) = v12;
  }

  *(this + 32) = v2;

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 28);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleSSAODataKeyHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleSSAODataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[411];
}

uint64_t *ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(uint64_t **a1)
{
  v1 = a1[4];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x348A0B0E758C07C2)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[4] = v1;
  }

  return v1;
}

void md::ita::ResolveMaterialDiffuseTexture::operator()(uint64_t **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v2;
  }

  v3 = (**v2)(v2);
  v4 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  v5 = md::LayoutContext::get<md::CameraContext>(*(v3 + 1));
  v10 = fmaxf(*(v5 + 3080) + *(v5 + 3076), 1.0);
  v9 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<md::MaterialResourceStore>(a1);
  v8 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(a1);
  (*(*v4 + 48))(v4);
  md::LayoutContext::frameState(v3);
  v7 = *(v6 + 624);
  operator new();
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22StyleSSAODataKeyHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50BC0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22StyleSSAODataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50BC0;
  a2[1] = v2;
  return result;
}

void ggl::MetalSwapchainDrawableRef::~MetalSwapchainDrawableRef(ggl::MetalSwapchainDrawableRef *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A5C200;
  v2 = *(this + 1);
  if (v2)
  {
    std::mutex::lock(*(this + 1));
    v3 = *(v2 + 128);
    if (v3)
    {
      v4 = v3 - 1;
      *(v2 + 128) = v4;
      if (!v4)
      {
        atomic_exchange((v2 + 132), 0);
        v5 = *(v2 + 120);
        *(v2 + 112) = 0;
        *(v2 + 120) = 0;
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }
      }
    }

    else
    {
      v6 = GEOGetGeoGLMetalSwapchainLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = 136315650;
        v9 = "false";
        v10 = 2080;
        v11 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalSwapchainDrawable.mm";
        v12 = 1024;
        v13 = 178;
        _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_FAULT, "Attempting to set to negative ref count on drawable: Assertion with expression - %s : Failed in file - %s line - %i", &v8, 0x1Cu);
      }
    }

    std::mutex::unlock(v2);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

{
  ggl::MetalSwapchainDrawableRef::~MetalSwapchainDrawableRef(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateGradientMaskData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateGradientMaskData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateGradientMaskData::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__shared_ptr_pointer<ggl::MetalSurfaceDrawable *,std::shared_ptr<ggl::MetalSurfaceDrawable>::__shared_ptr_default_delete<ggl::MetalSurfaceDrawable,ggl::MetalSurfaceDrawable>,std::allocator<ggl::MetalSurfaceDrawable>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskDataKeyHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskDataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[253];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialsForUpdatedStyle>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialsForUpdatedStyle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::ProcessMaterialsForUpdatedStyle::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::CheckIfMaterialRequiresEmissiveColor,md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>(uint64_t a1, uint64_t **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v2);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= v3[5] - v3[4])
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v9 = v7[4];
  v8 = v7[5];
  if (v9 != v8)
  {
    v10 = v3[1];
    v11 = v3[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v10, v11, v6, *v9, v9[1]))
      {
        break;
      }

      v9 += 2;
    }

    while (v9 != v8);
  }

  if (v9 == v8)
  {
    v23 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v43 = v4;
    v45 = v12;
LABEL_10:
    v15 = v9[1];
    v16 = v15 >> 6;
    v17 = v4[1];
    v46 = v14;
    if (v15 >> 6 < (v4[2] - v17) >> 3 && (v18 = *(v17 + 8 * v16)) != 0 && *(v18 + 4 * (v15 & 0x3F)) == *v9)
    {
      v19 = *(v18 + 4 * (v15 & 0x3F) + 2);
      v20 = (*(v4[7] + ((v19 >> 3) & 0x1FF8)) + 16 * (v19 & 0x3F));
    }

    else
    {
      v20 = 0;
    }

    v21 = *(*(*(v6 + 8) + 8 * v16) + 4 * (v15 & 0x3F) + 2);
    v22 = (*(*(v6 + 56) + ((v21 >> 3) & 0x1FF8)) + 24 * (v21 & 0x3F));
    v23 = v13;
    *(v13 + 104 * *v12 + 24) = *v9;
    v24 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
    v25 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a2);
    md::MaterialResourceStore::getMaterial(&v48, v25, *v22);
    v26 = v48;
    v27 = (*(*v48 + 984))(v48);
    v28 = (*(*v26 + 176))(v26);
    if ((v27 | v28))
    {
      if (!v20)
      {
        v54 = v22[1];
        v51 = v54;
        v29 = md::VKMRenderResourcesStore::addKey<md::StyleEmissiveColorCacheKey>(v24, &v54, &v51);
        ecs2::ExecutionTaskContext::currentEntity(v29);
        operator new();
      }
    }

    else if (v20)
    {
      v30 = ecs2::ExecutionTaskContext::currentEntity(v28);
      v51 = &unk_1F2A1E208;
      v52 = v30;
      v53 = &v51;
      v56 = &v54;
      v54 = &unk_1F2A1E208;
      v55 = v30;
      v57 = 2;
      ecs2::Runtime::queueCommand();
      if (v57 != -1)
      {
        (off_1F2A1E2C8[v57])(&v50, &v54);
      }

      v57 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v51);
      md::updateRetainedCounter(v24 + 501, *v20);
      v31 = v20[1];
      if (v31)
      {
        md::updateRetainedCounter(v24 + 447, v31);
      }
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v49);
    }

    v14 = v46 + 1;
    v32 = v3[1];
    v33 = v3[2];
    v34 = v9 + 2;
    while (v34 != v8)
    {
      v9 = v34;
      v35 = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v32, v33, v6, *v34, v34[1]);
      v34 = v9 + 2;
      if (v35)
      {
        v4 = v43;
        v13 = v23;
        v12 = v45;
        goto LABEL_10;
      }
    }

    v36 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(v36 + 4096);
    result = v45;
  }

  *(v23 + 104 * *result + 24) = -65536;
  v38 = v23 + 104 * *result;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v14;
  v40 = v23 + 104 * *result;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return result;
}