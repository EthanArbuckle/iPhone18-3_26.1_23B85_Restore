uint64_t _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v48 = a6;
  v44 = a3;
  v45 = a4;
  v10 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  swift_getAssociatedConformanceWitness();
  v42 = type metadata accessor for Range();
  v40 = *(v42 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v19 = &v35 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  v43 = a2;
  v46 = a5;
  dispatch thunk of Collection.index(after:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v26 = v20;
    v27 = *(v20 + 16);
    v27(v16, a1, AssociatedTypeWitness);
    v28 = TupleTypeMetadata2;
    v29 = &v16[*(TupleTypeMetadata2 + 48)];
    v37 = v24;
    v27(v29, v24, AssociatedTypeWitness);
    v30 = v41;
    v31 = v38;
    (*(v41 + 16))(v38, v16, v28);
    v32 = *(v28 + 48);
    v36 = *(v26 + 32);
    v36(v19, v31, AssociatedTypeWitness);
    v33 = *(v26 + 8);
    v33(&v31[v32], AssociatedTypeWitness);
    (*(v30 + 32))(v31, v16, v28);
    v34 = v42;
    v36(&v19[*(v42 + 36)], &v31[*(v28 + 48)], AssociatedTypeWitness);
    v33(v31, AssociatedTypeWitness);
    _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v19, v43, v44, v45, v46, v48, v47);
    (*(v40 + 8))(v19, v34);
    return (v33)(v37, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v211 = a7;
  v201 = a4;
  v202 = a3;
  v8 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v192 = type metadata accessor for PartialRangeUpTo();
  v191 = *(v192 - 8);
  v11 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v190 = &v185 - v12;
  v13 = *(v8 + 8);
  v14 = swift_getAssociatedTypeWitness();
  v213 = *(v14 - 8);
  v15 = v213[8];
  MEMORY[0x28223BE20](v14);
  v210 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v209 = &v185 - v18;
  v214 = v19;
  v20 = type metadata accessor for Optional();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v206 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v205 = (&v185 - v24);
  v25 = swift_getAssociatedTypeWitness();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v197 = &v185 - v27;
  v188 = type metadata accessor for PartialRangeFrom();
  v187 = *(v188 - 8);
  v28 = *(v187 + 64);
  MEMORY[0x28223BE20](v188);
  v186 = &v185 - v29;
  v196 = *(swift_getAssociatedConformanceWitness() + 8);
  v198 = v25;
  v212 = swift_getAssociatedTypeWitness();
  v194 = *(v212 - 8);
  v30 = *(v194 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v207 = &v185 - v33;
  v34 = *(AssociatedTypeWitness - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v185 - v37;
  dispatch thunk of Collection.startIndex.getter();
  v204 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v195 = v34;
  v39 = *(v34 + 8);
  v39(v38, AssociatedTypeWitness);
  v199 = AssociatedConformanceWitness;
  v40 = *(type metadata accessor for Range() + 36);
  v203 = v8;
  dispatch thunk of Collection.startIndex.getter();
  v200 = a1;
  v189 = v40;
  v41 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v42 = v204;
  v39(v38, AssociatedTypeWitness);
  v43 = v41 - v42;
  if (__OFSUB__(v41, v42))
  {
    goto LABEL_157;
  }

  if (v43 < 1)
  {
    return;
  }

  v44 = dispatch thunk of Collection.count.getter();
  v193 = v41 - v42;
  if (__OFSUB__(v44, v43))
  {
    goto LABEL_159;
  }

  if (v42 < (v44 - v43) / 2)
  {
    v45 = v202;
    if (v42 >= specialized static _HashTable.maximumCapacity(forScale:)(*v202 & 0x3FLL) / 3)
    {
      v133 = v201;
      v134 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v45, v201);
      v135 = 0;
      v215 = v45;
      v216 = v133;
      v217 = 0;
      v218 = v134;
      v219 = v136;
      v220 = v137;
      v41 = 64;
      v221 = 0;
      v57 = v193;
      while (1)
      {
        if (v218)
        {
          v142 = v215;
          v143 = ~(-1 << *v215);
          v144 = v215[1] >> 6;
          v145 = v144 + (v218 ^ v143);
          v146 = v145 >= v143 ? ~(-1 << *v215) : 0;
          v147 = v145 - v146;
          if (v147 < v42)
          {
            v63 = __OFADD__(v147, v57);
            v148 = v147 + v57;
            if (v63)
            {
              goto LABEL_155;
            }

            v149 = *v215 & 0x3FLL;
            v150 = ((v143 & ((v148 - v144) >> 63)) + v148 - v144) ^ v143;
            v151 = v150 ^ v218;
            v152 = v149 * v135;
            v153 = (v149 * v135) >> 6;
            v154 = (v149 * v135) & 0x3F;
            v155 = v216;
            *(v216 + 8 * v153) ^= (v150 ^ v218) << v152;
            v156 = *v142 & 0x3FLL;
            if (64 - v154 < v156)
            {
              v157 = v156 << v156;
              v63 = __OFADD__(v157, 64);
              v158 = v157 + 64;
              if (v63)
              {
                __break(1u);
                goto LABEL_124;
              }

              v139 = v158 - 1;
              v138 = v158 < 1;
              v140 = v158 + 62;
              if (!v138)
              {
                v140 = v139;
              }

              if (v153 + 1 == v140 >> 6)
              {
                v141 = 0;
              }

              else
              {
                v141 = v153 + 1;
              }

              *(v155 + 8 * v141) ^= v151 >> (64 - v154);
            }

            v218 = v150;
          }
        }

        _HashTable.BucketIterator.advance()();
        v135 = v217;
        if (!v217)
        {
          goto LABEL_53;
        }
      }
    }

    v46 = *(v199 + 8);
    v47 = v200;
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = v201;
    if ((v48 & 1) == 0)
    {
      goto LABEL_162;
    }

    v50 = v190;
    (*(v195 + 16))(v190, v47, AssociatedTypeWitness);
    v51 = v192;
    swift_getWitnessTable();
    Collection.subscript.getter();
    (*(v191 + 8))(v50, v51);
    dispatch thunk of Sequence.makeIterator()();
    v52 = swift_getAssociatedConformanceWitness();
    v53 = v206;
    v209 = v52;
    dispatch thunk of IteratorProtocol.next()();
    v54 = v214;
    v55 = v213[6];
    v207 = (v213 + 6);
    v205 = v55;
    v56 = v55(v53, 1, v214);
    v57 = v193;
    if (v56 != 1)
    {
      v58 = 0;
      v204 = v213[4];
      v213 += 4;
      v59 = (v213 - 3);
      do
      {
        v204(v210, v53, v54);
        v60 = *v45;
        v61 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v62 = 1 << *v45;
        v63 = __OFSUB__(v62, 1);
        v64 = v62 - 1;
        if (v63)
        {
          goto LABEL_149;
        }

        v65 = v64 & v61;
        v66 = _HashTable.UnsafeHandle._startIterator(bucket:)(v64 & v61, v45, v49);
        v215 = v45;
        v216 = v49;
        v217 = v65;
        v218 = v66;
        v219 = v67;
        v220 = v68;
        v221 = 0;
        v53 = v206;
        if (v66)
        {
          v69 = 1 << *v45;
          v70 = v69 - 1;
          v71 = v45[1] >> 6;
          v72 = v71 + (v66 ^ (v69 - 1));
          if (v72 >= v69 - 1)
          {
            v73 = v69 - 1;
          }

          else
          {
            v73 = 0;
          }

          if (v72 - v73 != v58)
          {
            v74 = 0;
            v75 = *v45 & 0x3FLL;
            v76 = __OFADD__(v75 << v75, 64);
            v77 = (v75 << v75) + 126;
            if ((v75 << v75) + 64 >= 1)
            {
              v77 = (v75 << v75) + 63;
            }

            v78 = v77 >> 6;
            while (1)
            {
              if (++v65 == v69)
              {
                if (v74)
                {
                  goto LABEL_164;
                }

                v65 = 0;
                v74 = 1;
              }

              if (v68 >= v75)
              {
                v63 = __OFSUB__(v68, v75);
                v68 -= v75;
                if (v63)
                {
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                  goto LABEL_146;
                }

                v88 = v67 >> v75;
                v66 = v67 & v70;
                if ((v67 & v70) == 0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                v81 = (v65 * v75) >> 6;
                if (v68)
                {
                  if (v76)
                  {
                    goto LABEL_147;
                  }

                  if (v81 + 1 == v78)
                  {
                    v81 = 0;
                  }

                  else
                  {
                    ++v81;
                  }
                }

                v82 = v75 - v68;
                if (__OFSUB__(v75, v68))
                {
                  goto LABEL_142;
                }

                if (v81 == 2 && v75 == 5)
                {
                  v84 = 32;
                }

                else
                {
                  v84 = 64;
                }

                v63 = __OFSUB__(v84, v82);
                v85 = v84 - v82;
                if (v63)
                {
                  goto LABEL_144;
                }

                v86 = *(v49 + 8 * v81);
                v87 = (v86 << v68) | v67;
                v88 = v86 >> v82;
                v68 = v85;
                v66 = v87 & v70;
                if ((v87 & v70) == 0)
                {
LABEL_47:
                  v67 = v88;
                  goto LABEL_48;
                }
              }

              v79 = v71 + (v66 ^ v70);
              if (v79 >= v70)
              {
                v80 = v69 - 1;
              }

              else
              {
                v80 = 0;
              }

              v67 = v88;
              if (v79 - v80 == v58)
              {
                goto LABEL_47;
              }
            }
          }

          v74 = 0;
LABEL_48:
          v221 = v74;
          v217 = v65;
          v218 = v66;
          v219 = v67;
          v220 = v68;
        }

        if (__OFADD__(v58, v57))
        {
          goto LABEL_151;
        }

        _HashTable.BucketIterator.currentValue.setter(v58 + v57, 0);
        (*v59)(v210, v214);
        v63 = __OFADD__(v58++, 1);
        if (v63)
        {
          goto LABEL_152;
        }

        dispatch thunk of IteratorProtocol.next()();
        v54 = v214;
      }

      while (v205(v53, 1, v214) != 1);
    }

    (*(v194 + 8))(v208, v212);
LABEL_53:
    v89 = v45[1] >> 6;
    if (__OFSUB__(v89, v57))
    {
      goto LABEL_161;
    }

    _HashTable.Header.bias.setter(v89 - v57);
    return;
  }

  v90 = dispatch thunk of Collection.count.getter();
  v45 = v202;
  if (__OFSUB__(v90, v41))
  {
    goto LABEL_160;
  }

  if (v90 - v41 >= specialized static _HashTable.maximumCapacity(forScale:)(*v202 & 0x3FLL) / 3)
  {
LABEL_124:
    v159 = v201;
    v160 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v45, v201);
    v161 = 0;
    v215 = v45;
    v216 = v159;
    v217 = 0;
    v218 = v160;
    v219 = v162;
    v220 = v163;
    v221 = 0;
    v164 = v193;
    while (1)
    {
      if (v218)
      {
        v165 = v215;
        v166 = ~(-1 << *v215);
        v167 = v215[1] >> 6;
        v168 = v167 + (v218 ^ v166);
        v169 = v168 >= v166 ? ~(-1 << *v215) : 0;
        v170 = v168 - v169;
        if (v170 >= v41)
        {
          v63 = __OFSUB__(v170, v164);
          v171 = v170 - v164;
          if (v63)
          {
            goto LABEL_156;
          }

          v172 = *v215 & 0x3FLL;
          v173 = ((v166 & ((v171 - v167) >> 63)) + v171 - v167) ^ v166;
          v174 = v173 ^ v218;
          v175 = v172 * v161;
          v176 = (v172 * v161) >> 6;
          v177 = (v172 * v161) & 0x3F;
          v178 = v216;
          *(v216 + 8 * v176) ^= (v173 ^ v218) << v175;
          v179 = *v165 & 0x3FLL;
          if (64 - v177 < v179)
          {
            v180 = v179 << v179;
            v63 = __OFADD__(v180, 64);
            v181 = v180 + 64;
            if (v63)
            {
              goto LABEL_158;
            }

            v182 = v181 - 1;
            v138 = v181 < 1;
            v183 = v181 + 62;
            if (!v138)
            {
              v183 = v182;
            }

            if (v176 + 1 == v183 >> 6)
            {
              v184 = 0;
            }

            else
            {
              v184 = v176 + 1;
            }

            *(v178 + 8 * v184) ^= v174 >> (64 - v177);
          }

          v218 = v173;
        }
      }

      _HashTable.BucketIterator.advance()();
      v161 = v217;
      if (!v217)
      {
        return;
      }
    }
  }

  v91 = *(v199 + 8);
  v92 = v200;
  v93 = v189;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_163;
  }

  v94 = v92 + v93;
  v95 = v186;
  (*(v195 + 16))(v186, v94, AssociatedTypeWitness);
  v96 = v188;
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(v187 + 8))(v95, v96);
  dispatch thunk of Sequence.makeIterator()();
  v97 = swift_getAssociatedConformanceWitness();
  v98 = v205;
  v210 = v97;
  dispatch thunk of IteratorProtocol.next()();
  v99 = v214;
  v100 = v213[6];
  v208 = (v213 + 6);
  v206 = v100;
  v101 = (v100)(v98, 1, v214);
  v102 = v201;
  v103 = v193;
  if (v101 == 1)
  {
LABEL_103:
    (*(v194 + 8))(v207, v212);
    return;
  }

  v204 = v213[4];
  v213 += 4;
  v104 = (v213 - 3);
  while (1)
  {
    v204(v209, v98, v99);
    v105 = *v45;
    v106 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v107 = 1 << *v45;
    v63 = __OFSUB__(v107, 1);
    v108 = v107 - 1;
    if (v63)
    {
      goto LABEL_150;
    }

    v109 = v108 & v106;
    v110 = _HashTable.UnsafeHandle._startIterator(bucket:)(v108 & v106, v45, v102);
    v215 = v45;
    v216 = v102;
    v217 = v109;
    v218 = v110;
    v219 = v111;
    v220 = v112;
    v221 = 0;
    v98 = v205;
    if (!v110)
    {
      goto LABEL_100;
    }

    v113 = 1 << *v45;
    v114 = v113 - 1;
    v115 = v45[1] >> 6;
    v116 = v115 + (v110 ^ (v113 - 1));
    v117 = v116 >= v113 - 1 ? v113 - 1 : 0;
    if (v116 - v117 != v41)
    {
      break;
    }

    v118 = 0;
LABEL_99:
    v221 = v118;
    v217 = v109;
    v218 = v110;
    v219 = v111;
    v220 = v112;
LABEL_100:
    if (__OFSUB__(v41, v103))
    {
      goto LABEL_153;
    }

    _HashTable.BucketIterator.currentValue.setter(v41 - v103, 0);
    (*v104)(v209, v214);
    v63 = __OFADD__(v41++, 1);
    if (v63)
    {
      goto LABEL_154;
    }

    dispatch thunk of IteratorProtocol.next()();
    v99 = v214;
    if ((v206)(v98, 1, v214) == 1)
    {
      goto LABEL_103;
    }
  }

  v118 = 0;
  v119 = *v45 & 0x3FLL;
  v120 = __OFADD__(v119 << v119, 64);
  v121 = (v119 << v119) + 126;
  if ((v119 << v119) + 64 >= 1)
  {
    v121 = (v119 << v119) + 63;
  }

  v122 = v121 >> 6;
  while (1)
  {
    if (++v109 == v113)
    {
      if (v118)
      {
        goto LABEL_164;
      }

      v109 = 0;
      v118 = 1;
    }

    if (v112 < v119)
    {
      break;
    }

    v63 = __OFSUB__(v112, v119);
    v112 -= v119;
    if (v63)
    {
      goto LABEL_143;
    }

    v132 = v111 >> v119;
    v110 = v111 & v114;
    if ((v111 & v114) == 0)
    {
LABEL_98:
      v111 = v132;
      goto LABEL_99;
    }

LABEL_73:
    v123 = v115 + (v110 ^ v114);
    if (v123 >= v114)
    {
      v124 = v113 - 1;
    }

    else
    {
      v124 = 0;
    }

    v111 = v132;
    if (v123 - v124 == v41)
    {
      goto LABEL_98;
    }
  }

  v125 = (v109 * v119) >> 6;
  if (v112)
  {
    if (v120)
    {
      goto LABEL_148;
    }

    if (v125 + 1 == v122)
    {
      v125 = 0;
    }

    else
    {
      ++v125;
    }
  }

  v126 = v119 - v112;
  if (__OFSUB__(v119, v112))
  {
    goto LABEL_145;
  }

  if (v125 == 2 && v119 == 5)
  {
    v128 = 32;
  }

  else
  {
    v128 = 64;
  }

  v63 = __OFSUB__(v128, v126);
  v129 = v128 - v126;
  if (!v63)
  {
    v130 = *(v102 + 8 * v125);
    v131 = (v130 << v112) | v111;
    v132 = v130 >> v126;
    v112 = v129;
    v110 = v131 & v114;
    if ((v131 & v114) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_73;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall _HashTable.UnsafeHandle.clear()()
{
  v2 = (*v0 & 0x3FLL) << *v0;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4 - 1;
  if (v4 < 1)
  {
    v5 = v4 + 62;
  }

  if (v4 < -62)
  {
    goto LABEL_8;
  }

  if ((v4 + 62) >= 0x7F)
  {
    bzero(v1, 8 * (v5 >> 6));
  }
}

uint64_t _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v87 = a2;
  v85 = a1;
  v8 = *(*(a5 + 8) + 8);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v78 = &v66 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v86 = *(v12 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v66 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v68 = &v66 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = swift_getAssociatedTypeWitness();
  v67 = *(v21 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v66 - v23;
  v80 = v8;
  v81 = a4;
  dispatch thunk of Collection.indices.getter();
  dispatch thunk of Sequence.makeIterator()();
  v25 = v68;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = v24;
  v84 = v21;
  v76 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v27 = v86;
  v74 = *(v86 + 48);
  v75 = v86 + 48;
  if (v74(v25, 1, v12) == 1)
  {
    return (*(v67 + 8))(v83, v84);
  }

  v28 = 0;
  v73 = *(v27 + 32);
  v72 = (v70 + 16);
  v86 = v27 + 32;
  v71 = (v27 + 8);
  v70 += 8;
  v69 = v12;
  while (1)
  {
    v29 = v77;
    v30 = v25;
    v73(v77, v25, v12);
    v31 = dispatch thunk of Collection.subscript.read();
    v33 = v78;
    v32 = AssociatedTypeWitness;
    (*v72)(v78);
    v31(v88, 0);
    (*v71)(v29, v12);
    v34 = v87;
    v35 = *v87;
    v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v37 = 1 << *v34;
    v38 = __OFSUB__(v37, 1);
    v39 = v37 - 1;
    if (v38)
    {
      goto LABEL_40;
    }

    v40 = v39 & v36;
    v41 = _HashTable.UnsafeHandle._startIterator(bucket:)(v39 & v36, v34, a3);
    v42 = v32;
    v44 = v43;
    v45 = v33;
    v47 = v46;
    v88[0] = v34;
    v88[1] = a3;
    v89 = v40;
    v90 = v41;
    v91 = v43;
    v92 = v46;
    v93 = 0;
    (*v70)(v45, v42);
    if (v41)
    {
      break;
    }

LABEL_33:
    _HashTable.BucketIterator.currentValue.setter(v28, 0);
    v38 = __OFADD__(v28++, 1);
    if (v38)
    {
      goto LABEL_41;
    }

    v25 = v30;
    dispatch thunk of IteratorProtocol.next()();
    v12 = v69;
    if (v74(v30, 1, v69) == 1)
    {
      return (*(v67 + 8))(v83, v84);
    }
  }

  v48 = 0;
  v49 = *v87 & 0x3FLL;
  v50 = v93;
  v51 = v49 << *v87;
  v52 = v51 + 64;
  v53 = __OFADD__(v51, 64);
  v55 = v52 - 1;
  v54 = v52 < 1;
  v56 = v52 + 62;
  if (!v54)
  {
    v56 = v55;
  }

  v57 = v56 >> 6;
  while (1)
  {
    if (++v40 == 1 << *v87)
    {
      if (v48)
      {
        goto LABEL_42;
      }

      v40 = 0;
      v50 = 1;
      v48 = 1;
    }

    if (v47 >= v49)
    {
      break;
    }

    v58 = (v40 * v49) >> 6;
    if (v47)
    {
      if (v53)
      {
        goto LABEL_39;
      }

      if (v58 + 1 == v57)
      {
        v58 = 0;
      }

      else
      {
        ++v58;
      }
    }

    v59 = v49 - v47;
    if (__OFSUB__(v49, v47))
    {
      goto LABEL_37;
    }

    if (v58 == 2 && v49 == 5)
    {
      v61 = 32;
    }

    else
    {
      v61 = 64;
    }

    v38 = __OFSUB__(v61, v59);
    v62 = v61 - v59;
    if (v38)
    {
      goto LABEL_38;
    }

    v63 = *(a3 + 8 * v58);
    v64 = (v63 << v47) | v44;
    v44 = v63 >> v59;
    v47 = v62;
LABEL_11:
    if ((v64 & ((1 << *v87) - 1)) == 0)
    {
      v93 = v50;
      v91 = v44;
      v92 = v47;
      v89 = v40;
      v90 = 0;
      goto LABEL_33;
    }
  }

  v38 = __OFSUB__(v47, v49);
  v47 -= v49;
  if (!v38)
  {
    v64 = v44;
    v44 >>= v49;
    goto LABEL_11;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = a7;
  v74 = a4;
  v78 = a3;
  v93 = a2;
  v69 = a1;
  v83 = a6;
  v8 = *(*(a6 + 8) + 8);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v91 = swift_getAssociatedTypeWitness();
  v79 = *(v91 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v91);
  v81 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v92 = &v66 - v21;
  v22 = type metadata accessor for Optional();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v66 - v24;
  v95 = v8;
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v28 = *(swift_getAssociatedConformanceWitness() + 8);
  v29 = swift_getAssociatedTypeWitness();
  v68 = *(v29 - 8);
  v30 = *(v68 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v66 - v31;
  v90 = a5;
  v33 = v78;
  dispatch thunk of Collection.indices.getter();
  v34 = v79;
  dispatch thunk of Sequence.makeIterator()();
  v35 = v91;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = v32;
  v77 = v29;
  v72 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v37 = *(v34 + 48);
  v71 = v34 + 48;
  v70 = v37;
  if (v37(v25, 1, v35) == 1)
  {
LABEL_2:
    (*(v68 + 8))(v76, v77);
    dispatch thunk of Collection.endIndex.getter();
    return 1;
  }

  else
  {
    v39 = 0;
    v41 = *(v34 + 32);
    v40 = v34 + 32;
    v73 = v41;
    v42 = v87;
    v87 += 8;
    v88 = (v42 + 16);
    v86 = (v40 - 24);
    v79 = v40;
    v67 = v25;
    v94 = v15;
    while (1)
    {
      v73(v92, v25, v35);
      v43 = dispatch thunk of Collection.subscript.read();
      v85 = *v88;
      v85(v15);
      v43(v96, 0);
      v44 = *v33;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v45 = 1 << *v33;
      v46 = __OFSUB__(v45, 1);
      v47 = v45 - 1;
      if (v46)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }

      v75 = v39;
      v48 = v47 & result;
      v49 = v74;
      v50 = _HashTable.UnsafeHandle._startIterator(bucket:)(v47 & result, v33, v74);
      v97 = v33;
      v98 = v49;
      v99 = v48;
      v100 = v50;
      v101 = v51;
      v102 = v52;
      v103 = 0;
      v84 = *v87;
      v84(v15, AssociatedTypeWitness);
      if (v100)
      {
        break;
      }

LABEL_8:
      v64 = v75;
      _HashTable.BucketIterator.currentValue.setter(v75, 0);
      v35 = v91;
      result = (*v86)(v92, v91);
      v46 = __OFADD__(v64, 1);
      v39 = v64 + 1;
      if (v46)
      {
        goto LABEL_13;
      }

      v25 = v67;
      dispatch thunk of IteratorProtocol.next()();
      v65 = v70(v25, 1, v35);
      v33 = v78;
      if (v65 == 1)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v53 = -1 << *v97;
      v97[1];
      v54 = v81;
      dispatch thunk of Collection.startIndex.getter();
      v55 = v80;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v56 = *v86;
      v57 = v91;
      (*v86)(v54, v91);
      v58 = dispatch thunk of Collection.subscript.read();
      v59 = v85;
      v85(v94);
      v58(v96, 0);
      v56(v55, v57);
      v15 = v94;
      v60 = dispatch thunk of Collection.subscript.read();
      v61 = v82;
      v59(v82);
      (v60)(v96, 0);
      v62 = *(v89 + 8);
      LOBYTE(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = v84;
      v84(v61, AssociatedTypeWitness);
      v63(v15, AssociatedTypeWitness);
      if (v60)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
      if (!v100)
      {
        goto LABEL_8;
      }
    }

    (*(v68 + 8))(v76, v77);
    v73(v69, v92, v91);
    return 0;
  }
}

uint64_t sub_265E0235C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _HashTable.UnsafeHandle.subscript.getter(*a2, *a1, *(a1 + 8));
  *a3 = result;
  return result;
}

Swift::Int sub_265E023B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = _HashTable.UnsafeHandle.subscript.getter(*a2, *a1, *(a1 + 8));
  v6 = _HashTable.UnsafeHandle._value(forBucketContents:)(v4);
  *a3 = v6.value;
  *(a3 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t getEnumTagSinglePayload for _HashTable.UnsafeHandle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _HashTable.UnsafeHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<SGEdge>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<SGEdge>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _HashTable.Header._description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(50);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v3);

  MEMORY[0x266771550](0xD000000000000011, 0x8000000265F301A0);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v4);

  MEMORY[0x266771550](0x203A73616962202CLL, 0xE800000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v5);

  MEMORY[0x266771550](0x203A64656573202CLL, 0xE800000000000000);
  lazy protocol witness table accessor for type Int and conformance Int();
  v6 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x203A656C61637328;
}

unint64_t _HashTable.Header.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(19);

  v3 = _HashTable.Header._description.getter();
  MEMORY[0x266771550](v3);

  return 0xD000000000000011;
}

Swift::String __swiftcall _HashTable.UnsafeHandle._description(type:)(Swift::String type)
{
  v3 = v2;
  v4 = v1;
  object = type._object;
  countAndFlagsBits = type._countAndFlagsBits;
  _StringGuts.grow(_:)(22);
  MEMORY[0x266771550](countAndFlagsBits, object);
  v14 = *v4;
  v7 = _HashTable.Header._description.getter();
  MEMORY[0x266771550](v7);

  MEMORY[0x266771550](0xD000000000000010, 0x8000000265F301E0);
  _HashTable.UnsafeHandle.debugLoadFactor()();
  Double.write<A>(to:)();
  v9 = 0xE000000000000000;
  v8 = 0;
  if (1 << *v4 <= 127)
  {
    MEMORY[0x266771550](2105354, 0xE300000000000000);
    _HashTable.UnsafeHandle.debugContents()(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySaySiSgGSSGMd, &_ss15LazyMapSequenceVySaySiSgGSSGMR);
    lazy protocol witness table accessor for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>();
    v10 = BidirectionalCollection<>.joined(separator:)();
    v12 = v11;

    MEMORY[0x266771550](v10, v12);

    v9 = 0xE000000000000000;
    v8 = 0;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t closure #1 in _HashTable.UnsafeHandle._description(type:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    v3 = 0xE100000000000000;
    result = 95;
  }

  else
  {
    v5 = *a1;
    result = dispatch thunk of CustomStringConvertible.description.getter();
  }

  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t _HashTable.UnsafeHandle.description.getter()
{
  v0._object = 0x8000000265F30200;
  v0._countAndFlagsBits = 0xD000000000000017;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable.UnsafeHandle()
{
  v1 = *v0;
  v2 = v0[1];
  v3._object = 0x8000000265F30200;
  v3._countAndFlagsBits = 0xD000000000000017;
  return _HashTable.UnsafeHandle._description(type:)(v3)._countAndFlagsBits;
}

uint64_t _HashTable.description.getter()
{
  v0._countAndFlagsBits = 0x626154687361485FLL;
  v0._object = 0xEA0000000000656CLL;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable()
{
  v1 = *v0;
  v2._countAndFlagsBits = 0x626154687361485FLL;
  v2._object = 0xEA0000000000656CLL;
  return _HashTable.UnsafeHandle._description(type:)(v2)._countAndFlagsBits;
}

uint64_t _HashTable.Storage.description.getter()
{
  v0._object = 0x8000000265F30220;
  v0._countAndFlagsBits = 0xD000000000000012;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable.Storage()
{
  v1 = *v0;
  v2._object = 0x8000000265F30220;
  v2._countAndFlagsBits = 0xD000000000000012;
  return _HashTable.UnsafeHandle._description(type:)(v2)._countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySaySiSgGSSGMd, &_ss15LazyMapSequenceVySaySiSgGSSGMR);
    lazy protocol witness table accessor for type [Int?] and conformance [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Int?] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiSgGMd, &_sSaySiSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int?] and conformance [A]);
  }

  return result;
}

uint64_t truncatedDigestSummary(_:)()
{
  v0 = SHA512Digest.description.getter();
  v2 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x2667714E0](v2, v4, v6, v8);

  return v9;
}

uint64_t edgeListDigest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[2] = a2;
  v3 = type metadata accessor for SHA512();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;

  (*(v8 + 8))(v11, v7);
  if (v14 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v15 = xmmword_265F23200;
    *(v15 + 16) = 24;
    return swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type SHA512 and conformance SHA512();
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v12, v14);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v12, v14);
    outlined consume of Data?(v12, v14);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data?(v12, v14);
    return (*(v18 + 8))(v6, v3);
  }
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA512();
      lazy protocol witness table accessor for type SHA512 and conformance SHA512();
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x266770EC0]();
      type metadata accessor for SHA512();
      lazy protocol witness table accessor for type SHA512 and conformance SHA512();
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection.suffix(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type SHA512 and conformance SHA512()
{
  result = lazy protocol witness table cache variable for type SHA512 and conformance SHA512;
  if (!lazy protocol witness table cache variable for type SHA512 and conformance SHA512)
  {
    type metadata accessor for SHA512();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA512 and conformance SHA512);
  }

  return result;
}

uint64_t OrderedSet.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t OrderedSet._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized OrderedSet._copyToContiguousArray()(a1, a2, a3);

  return v3;
}

uint64_t OrderedSet._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[7] = a4;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  v12 = Collection.isEmpty.getter();
  if ((v12 & 1) == 0)
  {
    MEMORY[0x28223BE20](v12);
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a1;
    v15[5] = a2;
    _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet._copyContents(initializing:), v15, a4, a5, MEMORY[0x277D83B88], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v13);
  }

  return a3;
}

uint64_t OrderedSet.isEmpty.getter()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t closure #1 in OrderedSet._copyContents(initializing:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = UnsafeBufferPointer.baseAddress.getter();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (a2 >= a1)
  {
    a2 = a1;
  }

  result = UnsafeMutablePointer.initialize(from:count:)();
  *a3 = a2;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance OrderedSet<A>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedSet<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedSet<A>(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = specialized OrderedSet._copyToContiguousArray()(*v1, v1[1], *(a1 + 16));

  return v3;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance OrderedSet<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = OrderedSet._copyContents(initializing:)(a2, a3, *v4, v4[1], *(a4 + 16), *(a4 + 24));
  a1[1] = v6;
  a1[2] = v7;
  return v8;
}

uint64_t protocol witness for Sequence.withContiguousStorageIfAvailable<A>(_:) in conformance OrderedSet<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v6 = *(a4 + 16);
  return OrderedSet.withContiguousStorageIfAvailable<A>(_:)();
}

uint64_t OrderedSet.indices.getter()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  return v1;
}

Swift::Int __swiftcall OrderedSet.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedSet.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedSet.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedSet.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedSet.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedSet.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedSet.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet._customIndexOfEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  closure #1 in OrderedSet._customIndexOfEquatableElement(_:)((a2 + 16), a2 + 32, a1, a3, a5, &v11);
  v9 = v11;

  return v9;
}

uint64_t closure #1 in OrderedSet._customIndexOfEquatableElement(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v15 = a4;
  v11 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  result = _HashTable.UnsafeHandle._find<A>(_:in:)(a3, &v15, a1, a2, v11, WitnessTable, a5);
  *a6 = result;
  *(a6 + 8) = v14 & 1;
  *(a6 + 9) = 0;
  return result;
}

uint64_t OrderedSet._failEarlyRangeCheck(_:bounds:)()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)();
}

void (*protocol witness for Collection.subscript.read in conformance OrderedSet<A>(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  v9 = *a2;
  v10 = *(v3 + 8);
  ContiguousArray.subscript.getter();
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

uint64_t protocol witness for Collection.subscript.getter in conformance OrderedSet<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[1];
  result = OrderedSet.subscript.getter(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

double protocol witness for Collection.indices.getter in conformance OrderedSet<A>@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = *(v2 + 8);
  v4 = *(a1 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t protocol witness for Collection.isEmpty.getter in conformance OrderedSet<A>(uint64_t a1)
{
  v4 = *(v1 + 8);
  v2 = *(a1 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t protocol witness for Collection.count.getter in conformance OrderedSet<A>(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  return ContiguousArray.count.getter();
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance OrderedSet<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = OrderedSet._customIndexOfEquatableElement(_:)(a1, *v3, v3[1], *(a2 + 16), *(a2 + 24));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7 & 1;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance OrderedSet<A>(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = *a2;
  v3 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)();
}

uint64_t specialized OrderedSet._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FD290](v4, a3);
}

uint64_t partial apply for closure #1 in OrderedSet._copyContents(initializing:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return closure #1 in OrderedSet._copyContents(initializing:)(a1, v2[5], a2);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    swift_unknownObjectRetain();
    v8 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v8;
    v11 = v9;
    createGeomPropDef(for:)(v7, v33);
    if (v3)
    {

      swift_unknownObjectRelease();

      v3 = 0;
      goto LABEL_6;
    }

    v12 = *(a2 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a2 + 8);
    v14 = v35;
    *(a2 + 8) = 0x8000000000000000;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v14[3] < v20)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v23 = v35;
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v31 = v15;
    specialized _NativeDictionary.copy()();
    v15 = v31;
    v23 = v35;
    if ((v21 & 1) == 0)
    {
LABEL_16:
      v23[(v15 >> 6) + 8] |= 1 << v15;
      v24 = (v23[6] + 16 * v15);
      *v24 = v10;
      v24[1] = v11;
      v25 = (v23[7] + (v15 << 6));
      v26 = v33[0];
      v27 = v33[1];
      v28 = v34[0];
      *(v25 + 41) = *(v34 + 9);
      v25[1] = v27;
      v25[2] = v28;
      *v25 = v26;
      v29 = v23[2];
      v19 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v19)
      {
        goto LABEL_22;
      }

      v23[2] = v30;
      goto LABEL_4;
    }

LABEL_3:
    outlined assign with take of GeomPropDef(v33, v23[7] + (v15 << 6));

LABEL_4:
    *(a2 + 8) = v23;
LABEL_5:
    result = swift_unknownObjectRelease();
LABEL_6:
    if (!--v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = 0;
  v7 = result + 32;
  v26 = *(result + 16);
  v28 = result + 32;
  while (1)
  {
    v8 = (v7 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    ObjectType = swift_getObjectType();
    v12 = *(v9 + 8);
    swift_unknownObjectRetain();
    v13 = XMLNode.elements(forXPath:)(0x72706D6F65672F2ELL, 0xED0000666564706FLL, ObjectType, v12);
    if (!v3)
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v3 = 0;
LABEL_4:
    if (++v6 == v4)
    {
      return result;
    }
  }

  specialized Sequence.forEach(_:)(v13, v5);

  result = (*(v12 + 24))(ObjectType, v12);
  if (!result)
  {
    result = swift_unknownObjectRelease();
    v7 = v28;
    goto LABEL_4;
  }

  v14 = result;
  v15 = 0;
  v16 = *(result + 16);
  v17 = MEMORY[0x277D84F90];
LABEL_8:
  v18 = 16 * v15 + 32;
  while (1)
  {
    if (v16 == v15)
    {

      v5 = a2;
      specialized Sequence.forEach(_:)(v17, a2);
      swift_unknownObjectRelease();

      v4 = v26;
      v7 = v28;
      goto LABEL_4;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    ++v15;
    v19 = v18 + 16;
    v20 = *(v14 + v18);
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v18 = v19;
    if (result)
    {
      v18 = v19;
      if (v20)
      {
        v29 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
          v17 = result;
        }

        v22 = v17[2];
        v21 = v17[3];
        v23 = v22 + 1;
        v24 = v29;
        if (v22 >= v21 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17);
          v23 = v22 + 1;
          v17 = result;
          v24 = v29;
        }

        v17[2] = v23;
        v25 = &v17[2 * v22];
        v25[4] = v20;
        v25[5] = v24;
        goto LABEL_8;
      }
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 56); ; i += 32)
    {
      v6 = *i;
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9[0] = *(i - 3);
      v9[1] = v8;
      v9[2] = v7;
      v10 = v6;

      closure #1 in UserGraph.insertConversionFromFloatColorToHalfColor(for:)(v9, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 80);
    do
    {
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 8);
      v11 = *v4;
      v25 = *(v4 - 6);
      v22[0] = v25;
      v22[1] = v6;
      v16 = v11;
      v17 = v7;
      v22[2] = v7;
      v22[3] = v8;
      v22[4] = v9;
      v23 = v10;
      v24 = v11;
      v12 = *(a2 + 32);

      v13 = specialized Set.contains(_:)(v22, v12);

      if ((v13 & 1) == 0)
      {

        specialized Set._Variant.insert(_:)(v18, v22);

        v5 = *(a2 + 24);
        v14 = *(v5 + 2);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 24) = v5;
        if (!isUniquelyReferenced_nonNull_native || v14 >= *(v5 + 3) >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v5);
          *(a2 + 24) = v5;
        }

        v19[0] = v25;
        v19[1] = v6;
        v19[2] = v17;
        v19[3] = v8;
        v19[4] = v9;
        v20 = v10;
        v21 = v16;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v19);
        *(a2 + 24) = v5;
      }

      v4 += 7;

      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 32); ; i += 7)
  {
    v5 = i[5];
    v18[4] = i[4];
    v18[5] = v5;
    v18[6] = i[6];
    v6 = i[1];
    v18[0] = *i;
    v18[1] = v6;
    v7 = i[3];
    v18[2] = i[2];
    v18[3] = v7;
    outlined init with copy of Edge(v18, &v17);
    result = UserGraph.remove(_:)(v18);
    if (*&v18[0] == -7)
    {
      goto LABEL_5;
    }

    if ((*&v18[0] & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = *(a2 + 64);
    if (*&v18[0] >= *(v8 + 16))
    {
      goto LABEL_18;
    }

    v9 = (v8 + 48 * *&v18[0]);
    v11 = v9[4];
    v10 = v9[5];
    v12 = v9[6];
    v13 = v9[7];
    outlined copy of NodePersonality(v11);

    v15 = v19;
    if (specialized Sequence.allSatisfy(_:)(v14, a2))
    {
      specialized Sequence.compactMap<A>(_:)(v10, a2);
      specialized Sequence.forEach(_:)();
      v19 = v15;

      specialized UserGraph.removeEdges(connectedTo:)(v13);
      v16 = *(a2 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        v16 = result;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_15:
          __break(1u);
          return result;
        }
      }

      if (v13 >= *(v16 + 16))
      {
        goto LABEL_19;
      }

      ShaderGraphNode.update(id:)(-7);
      *(a2 + 64) = v16;
    }

    else
    {
      v19 = v15;
    }

    outlined consume of NodePersonality(v11);

LABEL_5:
    result = outlined destroy of Edge(v18);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 56);
    while (1)
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 1);
      v7 = *v4;
      outlined copy of NodePersonality(v5);

      specialized UserGraph.removeEdges(connectedTo:)(v7);
      v8 = *(a2 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 64) = v8;
      if (result)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v8 = result;
        *(a2 + 64) = result;
        if ((v7 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      if (v7 >= *(v8 + 16))
      {
        break;
      }

      v4 += 6;
      ShaderGraphNode.update(id:)(-7);
      outlined consume of NodePersonality(v5);

      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = swift_unknownObjectRetain();
    createNodeDef(for:)(v7, v5, v36);
    v44 = v36[6];
    v45 = v36[7];
    v46 = v36[8];
    v47 = v37;
    v40 = v36[2];
    v41 = v36[3];
    v42 = v36[4];
    v43 = v36[5];
    v38 = v36[0];
    v39 = v36[1];
    if (getEnumTag for IOAttachment(&v38) == 1)
    {
      goto LABEL_4;
    }

    v54 = v44;
    v55 = v45;
    v56 = v46;
    v57 = v47;
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v53 = v43;
    v48 = v38;
    v49 = v39;
    v8 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (!v9)
    {
      outlined destroy of [Input](v36, &_s11ShaderGraph7NodeDefVSgMd, &_s11ShaderGraph7NodeDefVSgMR);
      goto LABEL_4;
    }

    v10 = v8;
    v11 = v9;
    v12 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *a2;
    v14 = v58;
    *a2 = 0x8000000000000000;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = v15;
        specialized _NativeDictionary.copy()();
        v15 = v24;
        v23 = v58;
        if (v21)
        {
LABEL_13:
          outlined assign with take of NodeDef(&v48, v23[7] + 152 * v15);

          *a2 = v23;
          goto LABEL_4;
        }

        goto LABEL_15;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_20;
      }
    }

    v23 = v58;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    v23[(v15 >> 6) + 8] |= 1 << v15;
    v25 = (v23[6] + 16 * v15);
    *v25 = v10;
    v25[1] = v11;
    v26 = v23[7] + 152 * v15;
    v27 = v49;
    *v26 = v48;
    *(v26 + 16) = v27;
    v28 = v50;
    v29 = v51;
    v30 = v53;
    *(v26 + 64) = v52;
    *(v26 + 80) = v30;
    *(v26 + 32) = v28;
    *(v26 + 48) = v29;
    v31 = v54;
    v32 = v55;
    v33 = v56;
    *(v26 + 144) = v57;
    *(v26 + 112) = v32;
    *(v26 + 128) = v33;
    *(v26 + 96) = v31;
    v34 = v23[2];
    v19 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v19)
    {
      goto LABEL_19;
    }

    v23[2] = v35;
    *a2 = v23;
LABEL_4:
    result = swift_unknownObjectRelease();
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v22 = *(result + 16);
  if (v22)
  {
    v2 = a2;
    v3 = 0;
    v23 = result + 32;
    while (1)
    {
      v4 = (v23 + 16 * v3);
      v6 = *v4;
      v5 = v4[1];
      ObjectType = swift_getObjectType();
      v8 = *(v5 + 8);
      swift_unknownObjectRetain();
      v9 = XMLNode.elements(forXPath:)(0x656465646F6E2F2ELL, 0xE900000000000066, ObjectType, v8);
      if (v25)
      {
        return swift_unknownObjectRelease();
      }

      specialized Sequence.forEach(_:)(v9, v2);
      v25 = 0;

      result = (*(v8 + 24))(ObjectType, v8);
      if (result)
      {
        break;
      }

      result = swift_unknownObjectRelease();
LABEL_4:
      if (++v3 == v22)
      {
        return result;
      }
    }

    v10 = result;
    v11 = 0;
    v12 = *(result + 16);
    v13 = MEMORY[0x277D84F90];
LABEL_8:
    v14 = 16 * v11 + 32;
    while (1)
    {
      if (v12 == v11)
      {

        v2 = a2;
        specialized Sequence.forEach(_:)(v13, a2);
        swift_unknownObjectRelease();

        goto LABEL_4;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      ++v11;
      v15 = v14 + 16;
      v16 = *(v10 + v14);
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      v14 = v15;
      if (result)
      {
        v14 = v15;
        if (v16)
        {
          v24 = result;
          swift_unknownObjectRetain();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
            v13 = result;
          }

          v18 = v13[2];
          v17 = v13[3];
          v19 = v24;
          if (v18 >= v17 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
            v13 = result;
            v19 = v24;
          }

          v13[2] = v18 + 1;
          v20 = &v13[2 * v18];
          v20[4] = v16;
          v20[5] = v19;
          goto LABEL_8;
        }
      }
    }

    __break(1u);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v4 = *(i - 1);
    v5 = *i;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (v8)
    {
      break;
    }

    result = swift_unknownObjectRelease();
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  v9 = v8;
  v41 = v7;
  swift_unknownObjectRetain();
  v10._countAndFlagsBits = 1701869940;
  v10._object = 0xE400000000000000;
  v11 = XMLElement.getRequiredAttribute(_:)(v10);
  if (v12)
  {

    return swift_unknownObjectRelease_n();
  }

  if ((*(v5 + 16))(1836412517, 0xE400000000000000, ObjectType, v5) && (v14 = v13, v15 = swift_getObjectType(), (*(v14 + 32))(v15, v14), v17 = v16, swift_unknownObjectRelease(), v17))
  {
    lazy protocol witness table accessor for type String and conformance String();
    v18 = StringProtocol.components<A>(separatedBy:)();

    type metadata accessor for MaterialXDataType();
    v19 = swift_allocObject();
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v19 = swift_allocObject();
    v18 = 0;
  }

  v19[1]._object = v18;
  v19[2] = v11;
  swift_unknownObjectRelease();
  v19[1]._countAndFlagsBits = MEMORY[0x277D84F90];

  v20 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a2;
  *a2 = 0x8000000000000000;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v9);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (!v27)
  {
    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v23;
        specialized _NativeDictionary.copy()();
        v23 = v35;
        v31 = v22;
        if (v29)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v9);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }
    }

    v31 = v22;
    if (v29)
    {
LABEL_17:
      v32 = (v31[7] + 24 * v23);
      v33 = v32[1];
      v34 = v32[2];
      *v32 = v41;
      v32[1] = v9;
      v32[2] = v19;

LABEL_21:
      *a2 = v31;
      result = swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_19:
    v31[(v23 >> 6) + 8] |= 1 << v23;
    v36 = (v31[6] + 16 * v23);
    *v36 = v41;
    v36[1] = v9;
    v37 = (v31[7] + 24 * v23);
    *v37 = v41;
    v37[1] = v9;
    v37[2] = v19;
    v38 = v31[2];
    v27 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v31[2] = v39;
    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  v4 = (result + 40);
  while (1)
  {
    v31 = v2;
    v9 = *(v4 - 1);
    v8 = *v4;
    v10 = v4[1];
    v11 = v4[5];
    v12 = v4[3];

    v13 = *v3;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v32 = *v3;
    *v3 = 0x8000000000000000;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v24 = v32;
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v29 = v16;
    specialized _NativeDictionary.copy()();
    v16 = v29;
    v24 = v32;
    if (v22)
    {
LABEL_3:
      v5 = (v24[7] + 24 * v16);
      v7 = v5[1];
      v6 = v5[2];
      *v5 = v9;
      v5[1] = v8;
      v5[2] = v10;

      goto LABEL_4;
    }

LABEL_11:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v25 = (v24[6] + 16 * v16);
    *v25 = v9;
    v25[1] = v8;
    v26 = (v24[7] + 24 * v16);
    *v26 = v9;
    v26[1] = v8;
    v26[2] = v10;
    v27 = v24[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    v24[2] = v28;
LABEL_4:
    v4 += 8;
    v3 = a2;
    *a2 = v24;

    v2 = v31 - 1;
    if (v31 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = (result + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = swift_unknownObjectRetain();
      v10 = v3;
      collectNodeDefs(_:into:)(v9, v8, a2);
      if (v3)
      {

        v10 = 0;
      }

      collectGeomPropDefs(_:into:)(v7, v8, a2);
      v3 = v10;
      if (v10)
      {

        v3 = 0;
      }

      result = swift_unknownObjectRelease();
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence.forEach(_:)(a1, a2, closure #1 in collectImplementations(_:into:));
}

{
  return specialized Sequence.forEach(_:)(a1, a2, closure #2 in collectImplementations(_:into:));
}

{
  return specialized Sequence.forEach(_:)(a1, a2, closure #1 in closure #1 in UserGraph.resolveMaterialXEnums());
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; ++i)
    {
      v8 = *i;
      swift_unknownObjectRetain();
      a3(&v8, a2);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *MaterialXDataType.filename.unsafeMutableAddressor()
{
  if (one-time initialization token for filename != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.filename;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 32)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      result = 0;
      if (v5 != v7 || ((v6 ^ v8) & 1) != 0)
      {
        return result;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV6IOSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v15 = a1;
      while (1)
      {
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 56);
        v8 = *(a1 + v4 + 64);
        v9 = *(a1 + v4 + 80);
        v10 = *(v3 + v4 + 48);
        v11 = *(v3 + v4 + 56);
        v12 = *(v3 + v4 + 64);
        v17 = *(v3 + v4 + 72);
        v18 = *(a1 + v4 + 72);
        v13 = *(v3 + v4 + 80);
        v19 = *(v3 + v4 + 88);
        v20 = *(a1 + v4 + 88);
        if ((*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (MaterialXDataType.isEqual(to:)() & 1) == 0)
        {
          return 0;
        }

        if (v8)
        {
          if (!v12 || (v7 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v12)
        {
          return 0;
        }

        if (!v9)
        {
          break;
        }

        if (!v13)
        {
          return 0;
        }

        if (v18 != v17 || v9 != v13)
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v14 & 1) == 0)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (v20 != v19)
        {
          return 0;
        }

LABEL_7:
        v4 += 64;
        --v2;
        a1 = v15;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      result = 0;
      if (v13)
      {
        return result;
      }

LABEL_6:
      if ((v20 ^ v19))
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    *&v26[96] = v5[6];
    *&v26[112] = v8;
    v9 = v5[9];
    v27 = v5[8];
    v28 = v9;
    v10 = v5[3];
    *&v26[32] = v5[2];
    *&v26[48] = v10;
    v11 = v5[5];
    *&v26[64] = v5[4];
    *&v26[80] = v11;
    v12 = v5[1];
    *v26 = *v5;
    *&v26[16] = v12;
    v13 = v6[7];
    *&v29[96] = v6[6];
    *&v29[112] = v13;
    v14 = v6[9];
    v30 = v6[8];
    v31 = v14;
    v15 = v6[3];
    *&v29[32] = v6[2];
    *&v29[48] = v15;
    v16 = v6[5];
    *&v29[64] = v6[4];
    *&v29[80] = v16;
    v17 = v6[1];
    *v29 = *v6;
    *&v29[16] = v17;
    if (v26[0] > 2u)
    {
      if (v26[0] == 3)
      {
        v18 = 0xE400000000000000;
        v19 = 1397716596;
      }

      else if (v26[0] == 4)
      {
        v18 = 0xE800000000000000;
        v19 = 0x534F6E6F69736976;
      }

      else
      {
        v19 = 0x4B7974696C616572;
        v18 = 0xEA00000000007469;
      }
    }

    else if (v26[0])
    {
      if (v26[0] == 1)
      {
        v18 = 0xE500000000000000;
        v19 = 0x534F63616DLL;
      }

      else
      {
        v18 = 0xE700000000000000;
        v19 = 0x534F6863746177;
      }
    }

    else
    {
      v18 = 0xE300000000000000;
      v19 = 5459817;
    }

    if (v29[0] > 2u)
    {
      if (v29[0] == 3)
      {
        v20 = 0xE400000000000000;
        if (v19 != 1397716596)
        {
          goto LABEL_34;
        }
      }

      else if (v29[0] == 4)
      {
        v20 = 0xE800000000000000;
        if (v19 != 0x534F6E6F69736976)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = 0xEA00000000007469;
        if (v19 != 0x4B7974696C616572)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v29[0])
    {
      if (v29[0] == 1)
      {
        v20 = 0xE500000000000000;
        if (v19 != 0x534F63616DLL)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = 0xE700000000000000;
        if (v19 != 0x534F6863746177)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v20 = 0xE300000000000000;
      if (v19 != 5459817)
      {
        goto LABEL_34;
      }
    }

    if (v18 == v20)
    {
      outlined init with copy of NodeDef.Availability(v26, v25);
      outlined init with copy of NodeDef.Availability(v29, v25);

      goto LABEL_35;
    }

LABEL_34:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of NodeDef.Availability(v26, v25);
    outlined init with copy of NodeDef.Availability(v29, v25);

    if ((v21 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_35:
    v32[4] = *&v26[72];
    v32[5] = *&v26[88];
    v33[0] = *&v26[104];
    *(v33 + 15) = *&v26[119];
    v32[0] = *&v26[8];
    v32[1] = *&v26[24];
    v32[2] = *&v26[40];
    v32[3] = *&v26[56];
    v34[2] = *&v29[40];
    v34[3] = *&v29[56];
    v34[0] = *&v29[8];
    v34[1] = *&v29[24];
    *(v35 + 15) = *&v29[119];
    v34[5] = *&v29[88];
    v35[0] = *&v29[104];
    v34[4] = *&v29[72];
    if ((specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(v32, v34) & 1) == 0)
    {
      goto LABEL_53;
    }

    if (*(&v27 + 1))
    {
      if (!*(&v30 + 1) || v27 != v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_53:
        outlined destroy of NodeDef.Availability(v29);
        outlined destroy of NodeDef.Availability(v26);
        return 0;
      }
    }

    else if (*(&v30 + 1))
    {
      goto LABEL_53;
    }

    v22 = *(&v31 + 1);
    if (*(&v28 + 1))
    {
      if (!*(&v31 + 1))
      {
        goto LABEL_53;
      }

      if (v28 == v31)
      {
        outlined destroy of NodeDef.Availability(v29);
        outlined destroy of NodeDef.Availability(v26);
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of NodeDef.Availability(v29);
        outlined destroy of NodeDef.Availability(v26);
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      outlined destroy of NodeDef.Availability(v29);
      outlined destroy of NodeDef.Availability(v26);
      if (v22)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph19NodeDefinitionStoreV5InputV_Tt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v67 = v5;
  v68 = v6;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v7 - 1; ; --i)
  {
    v14 = v11[5];
    v15 = v11[7];
    v54 = v11[6];
    v55[0] = v15;
    *(v55 + 9) = *(v11 + 121);
    v16 = v11[1];
    v17 = v11[3];
    v50 = v11[2];
    v51 = v17;
    v18 = v11[3];
    v19 = v11[5];
    v52 = v11[4];
    v53 = v19;
    v20 = v11[1];
    v49[0] = *v11;
    v49[1] = v20;
    v21 = v11[7];
    v47 = v54;
    v48[0] = v21;
    *(v48 + 9) = *(v11 + 121);
    v43 = v50;
    v44 = v18;
    v45 = v52;
    v46 = v14;
    v41 = v49[0];
    v42 = v16;
    v22 = v12[5];
    v23 = v12[7];
    v61 = v12[6];
    v62[0] = v23;
    *(v62 + 9) = *(v12 + 121);
    v24 = v12[1];
    v25 = v12[3];
    v57 = v12[2];
    v58 = v25;
    v26 = v12[3];
    v27 = v12[5];
    v59 = v12[4];
    v60 = v27;
    v28 = v12[1];
    v56[0] = *v12;
    v56[1] = v28;
    v29 = v12[7];
    v39 = v61;
    v40[0] = v29;
    *(v40 + 9) = *(v12 + 121);
    v35 = v57;
    v36 = v26;
    v37 = v59;
    v38 = v22;
    v33 = v56[0];
    v34 = v24;
    a3(v49, v32);
    a3(v56, v32);
    v30 = a4(&v41, &v33);
    v63[6] = v39;
    v64[0] = v40[0];
    *(v64 + 9) = *(v40 + 9);
    v63[2] = v35;
    v63[3] = v36;
    v63[4] = v37;
    v63[5] = v38;
    v63[0] = v33;
    v63[1] = v34;
    a5(v63);
    v65[6] = v47;
    v66[0] = v48[0];
    *(v66 + 9) = *(v48 + 9);
    v65[2] = v43;
    v65[3] = v44;
    v65[4] = v45;
    v65[5] = v46;
    v65[0] = v41;
    v65[1] = v42;
    a5(v65);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 += 9;
    v11 += 9;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph5InputV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = (a2 + 40); *(v3 - 6) == *(i - 1); i += 7)
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v17 = *(v3 - 8);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v13 = i[3];
      v14 = *(v3 - 2);
      v10 = *(i + 32);
      v15 = i[5];
      v16 = *v3;
      v18 = *(**(v3 - 5) + 128);

      if ((v18(v7) & 1) == 0 || (v5 != v8 || v6 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_20:

        return 0;
      }

      if (v17)
      {
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 == v13)
        {
          v11 = v10;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          goto LABEL_20;
        }
      }

      if (v16 != v15)
      {
        return 0;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph9InputSpecV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(i - 1);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      v10 = *(*v5 + 128);

      LOBYTE(v10) = v10(v11);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0bC4NodeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v14 = a1;
    v15 = a2;
    while (1)
    {
      v5 = *(a1 + v3 + 32);
      v4 = *(a1 + v3 + 40);
      v7 = *(a1 + v3 + 48);
      v6 = *(a1 + v3 + 56);
      v9 = *(a2 + v3 + 32);
      v8 = *(a2 + v3 + 40);
      v11 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v16 = *(a2 + v3 + 64);
      v17 = *(a1 + v3 + 64);
      v18 = *(a2 + v3 + 72);
      v19 = *(a1 + v3 + 72);
      outlined copy of NodePersonality(v5);

      outlined copy of NodePersonality(v9);

      if ((static NodePersonality.== infix(_:_:)(v5, v9) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph5InputV_Tt1g5Tm(v4, v8) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph5InputV_Tt1g5Tm(v7, v11) & 1) == 0 || v6 != v10)
      {
        break;
      }

      outlined consume of NodePersonality(v5);

      outlined consume of NodePersonality(v9);

      if (v19)
      {
        a1 = v14;
        a2 = v15;
        if (!v18)
        {
          return 0;
        }
      }

      else
      {
        v12 = v18;
        if (v17 != v16)
        {
          v12 = 1;
        }

        a1 = v14;
        a2 = v15;
        if (v12)
        {
          return 0;
        }
      }

      v3 += 48;
      if (!--v2)
      {
        return 1;
      }
    }

    outlined consume of NodePersonality(v9);

    outlined consume of NodePersonality(v5);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v63 = a1 + 32;
  v64 = *(a1 + 16);
  v62 = a2 + 32;
  while (1)
  {
    v6 = *(v4 + 88 * v3 + 16);
    v71 = *(v4 + 88 * v3);
    v72 = v6;
    v7 = *(v4 + 88 * v3 + 48);
    v73 = *(v4 + 88 * v3 + 32);
    v8 = *(v4 + 88 * v3 + 64);
    v74 = v7;
    v75 = v8;
    v76 = *(v4 + 88 * v3 + 80);
    v9 = v71;
    v10 = *(&v72 + 1);
    v68 = v72;
    v11 = v73;
    v12 = (v5 + 88 * v3);
    v13 = v12[1];
    v77 = *v12;
    v78 = v13;
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v82 = *(v12 + 10);
    v80 = v15;
    v81 = v16;
    v79 = v14;
    v17 = *(&v77 + 1);
    v18 = v77;
    v19 = v78;
    v20 = v14;
    if (!v73)
    {
      if (v14)
      {
LABEL_59:
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v77, *(&v77 + 1), v78, *(&v78 + 1), v79);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v68, v10, v11);
        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v68, v10, v11);
        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v18, v17, v19, *(&v19 + 1), v20);
        return 0;
      }

      outlined init with copy of [Input](&v71, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v77, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      goto LABEL_15;
    }

    if (!v14)
    {
      goto LABEL_59;
    }

    if (v71 != v77)
    {
      outlined init with copy of [Input](&v71, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v77, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_62:
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v18, v17, v19, *(&v19 + 1), v20);
      v21 = v68;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v68, v10, v11);
LABEL_63:

      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v21, v10, v11);
      goto LABEL_64;
    }

    if (*(&v71 + 1) != *(&v77 + 1))
    {
      outlined init with copy of [Input](&v71, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v77, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v18 = v9;
      goto LABEL_62;
    }

    outlined init with copy of [Input](&v71, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v77, v70, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v19, *(&v19 + 1), v20);
    v21 = v68;
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v68, v10, v11);
    if ((static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(v68, v19) & 1) == 0 || __PAIR128__(v11, v10) != __PAIR128__(v20, *(&v19 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_63;
    }

    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v68, v10, v11);
LABEL_15:
    v22 = *(&v74 + 1);
    v24 = *(&v75 + 1);
    v23 = v76;
    v25 = *(&v80 + 1);
    v27 = *(&v81 + 1);
    v26 = v82;
    result = specialized Sequence<>.elementsEqual<A>(_:)(v80, v74);
    if ((result & 1) == 0)
    {
      goto LABEL_64;
    }

    v67 = v27;
    v69 = v24;
    v66 = v23;
    v65 = v3;
    v29 = *(v22 + 16);
    if (v29 != *(v25 + 16))
    {
      goto LABEL_64;
    }

    if (v29 && v22 != v25)
    {
      break;
    }

LABEL_44:
    if ((specialized Sequence<>.elementsEqual<A>(_:)(v67, v69) & 1) == 0)
    {
      goto LABEL_64;
    }

    v55 = *(v66 + 16);
    if (v55 != *(v26 + 16))
    {
      goto LABEL_64;
    }

    if (v55 && v66 != v26)
    {
      v56 = (v26 + 48);
      v57 = (v66 + 48);
      do
      {
        v58 = *v56;
        if (*v57)
        {
          if ((*v56 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else if ((*v56 & 1) != 0 || *(v57 - 2) != *(v56 - 2) || *(v57 - 1) != *(v56 - 1))
        {
          goto LABEL_64;
        }

        v56 += 24;
        v57 += 24;
        --v55;
      }

      while (v55);
    }

    v3 = v65 + 1;
    outlined destroy of [Input](&v77, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined destroy of [Input](&v71, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    if (v65 + 1 == v64)
    {
      return 1;
    }

    v5 = v62;
    v4 = v63;
  }

  v30 = 0;
  v31 = v22 + 32;
  v32 = v25 + 32;
  v61 = *(v22 + 16);
  v59 = v22 + 32;
  while (1)
  {
    if (v30 == v29)
    {
      goto LABEL_67;
    }

    v33 = *(v31 + 8 * v30);
    v34 = *(v32 + 8 * v30);
    if (v33 != v34)
    {
      break;
    }

LABEL_20:
    if (++v30 == v29)
    {
      goto LABEL_44;
    }
  }

  if (*(v33 + 16) != *(v34 + 16))
  {
    goto LABEL_64;
  }

  v35 = 0;
  v36 = 1 << *(v33 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v33 + 56);
  v39 = (v36 + 63) >> 6;
  v40 = v34 + 56;
  if (!v38)
  {
LABEL_29:
    v42 = v35;
    v32 = v25 + 32;
    v31 = v59;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v39)
      {
        goto LABEL_20;
      }

      v43 = *(v33 + 56 + 8 * v35);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v60 = (v43 - 1) & v43;
        goto LABEL_34;
      }
    }

    __break(1u);
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  while (1)
  {
    v41 = __clz(__rbit64(v38));
    v60 = (v38 - 1) & v38;
LABEL_34:
    v44 = (*(v33 + 48) + 16 * (v41 | (v35 << 6)));
    v45 = *v44;
    v46 = v44[1];
    v47 = *(v34 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v45);
    MEMORY[0x266772770](v46);
    result = Hasher._finalize()();
    v48 = -1 << *(v34 + 32);
    v49 = result & ~v48;
    v29 = v61;
    if (((*(v40 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
    {
      break;
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*(v34 + 48) + 16 * v49);
      v53 = *v51;
      v52 = v51[1];
      if (v53 == v45 && v52 == v46)
      {
        break;
      }

      v49 = (v49 + 1) & v50;
      if (((*(v40 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    v38 = v60;
    if (!v60)
    {
      goto LABEL_29;
    }
  }

LABEL_64:
  outlined destroy of [Input](&v77, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
  outlined destroy of [Input](&v71, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph28SGGeometryPropertyDefinitionC_Tt1g5Tm(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x266772030](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x266772030](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t *MaterialXDataType.vector2.unsafeMutableAddressor()
{
  if (one-time initialization token for vector2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vector2;
}

uint64_t *MaterialXDataType.float2.unsafeMutableAddressor()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float2;
}

uint64_t *MaterialXDataType.vector3.unsafeMutableAddressor()
{
  if (one-time initialization token for vector3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vector3;
}

uint64_t *MaterialXDataType.float3.unsafeMutableAddressor()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float3;
}

uint64_t *MaterialXDataType.vector4.unsafeMutableAddressor()
{
  if (one-time initialization token for vector4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vector4;
}

uint64_t *MaterialXDataType.float4.unsafeMutableAddressor()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float4;
}

uint64_t *MaterialXDataType.float.unsafeMutableAddressor()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float;
}

uint64_t *MaterialXDataType.color3.unsafeMutableAddressor()
{
  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.color3;
}

uint64_t *MaterialXDataType.color4.unsafeMutableAddressor()
{
  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.color4;
}

uint64_t *MaterialXDataType.BOOLean.unsafeMutableAddressor()
{
  if (one-time initialization token for BOOLean != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.BOOLean;
}

uint64_t *MaterialXDataType.integer.unsafeMutableAddressor()
{
  if (one-time initialization token for integer != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer;
}

uint64_t *MaterialXDataType.integer2.unsafeMutableAddressor()
{
  if (one-time initialization token for integer2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer2;
}

uint64_t *MaterialXDataType.integer3.unsafeMutableAddressor()
{
  if (one-time initialization token for integer3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer3;
}

uint64_t *MaterialXDataType.integer4.unsafeMutableAddressor()
{
  if (one-time initialization token for integer4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer4;
}

uint64_t *MaterialXDataType.half.unsafeMutableAddressor()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half;
}

uint64_t *MaterialXDataType.half2.unsafeMutableAddressor()
{
  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half2;
}

uint64_t *MaterialXDataType.half3.unsafeMutableAddressor()
{
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half3;
}

uint64_t *MaterialXDataType.half4.unsafeMutableAddressor()
{
  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half4;
}

uint64_t *MaterialXDataType.matrix22.unsafeMutableAddressor()
{
  if (one-time initialization token for matrix22 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.matrix22;
}

uint64_t *MaterialXDataType.matrix33.unsafeMutableAddressor()
{
  if (one-time initialization token for matrix33 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.matrix33;
}

uint64_t *MaterialXDataType.matrix44.unsafeMutableAddressor()
{
  if (one-time initialization token for matrix44 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.matrix44;
}

uint64_t *MaterialXDataType.surfaceshader.unsafeMutableAddressor()
{
  if (one-time initialization token for surfaceshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.surfaceshader;
}

uint64_t *MaterialXDataType.vertexshader.unsafeMutableAddressor()
{
  if (one-time initialization token for vertexshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vertexshader;
}

uint64_t *MaterialXDataType.geometrymodifier.unsafeMutableAddressor()
{
  if (one-time initialization token for geometrymodifier != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.geometrymodifier;
}

uint64_t *MaterialXDataType.string.unsafeMutableAddressor()
{
  if (one-time initialization token for string != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.string;
}

uint64_t *MaterialXDataType.space.unsafeMutableAddressor()
{
  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.space;
}

uint64_t *MaterialXDataType.uAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for uAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.uAddressMode;
}

uint64_t *MaterialXDataType.vAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for vAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vAddressMode;
}

uint64_t *MaterialXDataType.usd.wrapS.unsafeMutableAddressor()
{
  if (one-time initialization token for wrapS != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.usd.wrapS;
}

uint64_t *MaterialXDataType.usd.wrapT.unsafeMutableAddressor()
{
  if (one-time initialization token for wrapT != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.usd.wrapT;
}

uint64_t *MaterialXDataType.filterType.unsafeMutableAddressor()
{
  if (one-time initialization token for filterType != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.filterType;
}

uint64_t *MaterialXDataType.blurFilterType.unsafeMutableAddressor()
{
  if (one-time initialization token for blurFilterType != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.blurFilterType;
}

uint64_t *MaterialXDataType.normalMapSpace.unsafeMutableAddressor()
{
  if (one-time initialization token for normalMapSpace != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.normalMapSpace;
}

uint64_t *MaterialXDataType.lumacoeffs.unsafeMutableAddressor()
{
  if (one-time initialization token for lumacoeffs != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.lumacoeffs;
}

uint64_t *MaterialXDataType.realitykit.cubeimageFilterType.unsafeMutableAddressor()
{
  if (one-time initialization token for cubeimageFilterType != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.cubeimageFilterType;
}

uint64_t *MaterialXDataType.realitykit.filter.unsafeMutableAddressor()
{
  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.filter;
}

uint64_t *MaterialXDataType.realitykit.coord.unsafeMutableAddressor()
{
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.coord;
}

uint64_t *MaterialXDataType.realitykit.addressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for addressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.addressMode;
}

uint64_t *MaterialXDataType.realitykit.rAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for rAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.rAddressMode;
}

uint64_t *MaterialXDataType.realitykit.sAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for sAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.sAddressMode;
}

uint64_t *MaterialXDataType.realitykit.tAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for tAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.tAddressMode;
}

uint64_t *MaterialXDataType.realitykit.u_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for u_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.u_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.v_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for v_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.v_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.w_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for w_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.w_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.u_pixel_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for u_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.u_pixel_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.v_pixel_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for v_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.v_pixel_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.w_pixel_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for w_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.w_pixel_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.magFilter.unsafeMutableAddressor()
{
  if (one-time initialization token for magFilter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.magFilter;
}

uint64_t *MaterialXDataType.realitykit.minFilter.unsafeMutableAddressor()
{
  if (one-time initialization token for minFilter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.minFilter;
}

uint64_t *MaterialXDataType.realitykit.mipFilter.unsafeMutableAddressor()
{
  if (one-time initialization token for mipFilter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.mipFilter;
}

uint64_t *MaterialXDataType.realitykit.borderColor.unsafeMutableAddressor()
{
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.borderColor;
}

Swift::String_optional __swiftcall MetalDataType.convertEnumConstant(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of MetalDataType.convertEnumConstant(_:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    goto LABEL_17;
  }

  if (one-time initialization token for s_address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    goto LABEL_17;
  }

  if (one-time initialization token for t_address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    goto LABEL_17;
  }

  if (one-time initialization token for r_address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
LABEL_17:
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #1 of MetalDataType.convertEnumConstant(_:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    goto LABEL_32;
  }

  if (one-time initialization token for min_filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    goto LABEL_32;
  }

  if (one-time initialization token for mag_filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
LABEL_32:
    v13 = &outlined read-only object #2 of MetalDataType.convertEnumConstant(_:);
LABEL_33:
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for mip_filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #3 of MetalDataType.convertEnumConstant(_:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    v13 = &outlined read-only object #4 of MetalDataType.convertEnumConstant(_:);
    goto LABEL_33;
  }

  if (one-time initialization token for border_color != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)())
  {
    v13 = &outlined read-only object #5 of MetalDataType.convertEnumConstant(_:);
    goto LABEL_33;
  }

  if (MetalDataType.isEqual(to:)())
  {
    v13 = &outlined read-only object #6 of MetalDataType.convertEnumConstant(_:);
    goto LABEL_33;
  }

  if (one-time initialization token for compare_func != -1)
  {
    swift_once();
  }

  if ((MetalDataType.isEqual(to:)() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v27);
      *(v17 + 12) = 2080;
      v19 = *(*v2 + 136);

      v21 = v15;
      v22 = v19(v20);
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_265D7D000, v21, v16, "Could not convert value '%s' to '%s'", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v18, -1, -1);
      MEMORY[0x266773120](v17, -1, -1);
    }

    else
    {
    }

    goto LABEL_22;
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #7 of MetalDataType.convertEnumConstant(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
LABEL_18:
  swift_arrayDestroy();
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v7 & 1) == 0))
  {

LABEL_22:
    v12 = 0;
    v11 = 0;
    goto LABEL_57;
  }

  v8 = (*(v5 + 56) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];

  v11 = v9;
  v12 = v10;
LABEL_57:
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t *MaterialXDataType.unsupported.unsafeMutableAddressor()
{
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.unsupported;
}

__n128 SGDataTypeStorage.init(materialXValue:type:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  specialized SGDataTypeStorage.init(materialXValue:type:)(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v9;
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2Vys5Int32VG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v41 = type metadata accessor for CharacterSet();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v44 = a1;
  v45 = a2;
  v42 = 44;
  v43 = 0xE100000000000000;
  v40 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  v38 = a2;
  if (v10)
  {
    v36[2] = v2;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = v42;
    v39 = (v5 + 8);
    v36[1] = v9;
    v13 = (v9 + 40);
    do
    {
      v14 = *v13;
      v44 = *(v13 - 1);
      v45 = v14;

      static CharacterSet.whitespacesAndNewlines.getter();
      v15 = StringProtocol.trimmingCharacters(in:)();
      v17 = v16;
      (*v39)(v8, v41);

      v42 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v12 = v42;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += 2;
      --v10;
    }

    while (v10);

    a2 = v38;
    v11 = MEMORY[0x277D84F90];
    v21 = *(v12 + 16);
    if (v21)
    {
LABEL_7:
      v44 = v11;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v23 = 0;
      v11 = v44;
      v24 = (v12 + 40);
      while (v23 < *(v12 + 16))
      {
        v25 = *(v24 - 1);
        v26 = *v24;

        v27 = specialized closure #2 in SIMD<>.init(_:)(v25, v26);

        v44 = v11;
        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v11 = v44;
        }

        ++v23;
        *(v11 + 16) = v29 + 1;
        *(v11 + 4 * v29 + 32) = v27;
        v24 += 2;
        if (v21 == v23)
        {

          a2 = v38;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v30 = *(v11 + 16);

  if (v30 == 2)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v11);
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v37, a2);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v42 = v30;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v31);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    MEMORY[0x266771550](0x6E493C32444D4953, 0xEC0000003E323374);
    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v42 = 2;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v32);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v33 = v44;
    v34 = v45;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v35 = 25;
    *(v35 + 8) = v33;
    *(v35 + 16) = v34;
    return swift_willThrow();
  }
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3Vys5Int32VG_Tt1g5(uint64_t a1, unint64_t a2)
{
  *&v41 = type metadata accessor for CharacterSet();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v44 = a1;
  v45 = a2;
  v42 = 44;
  v43 = 0xE100000000000000;
  v46 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  v39 = a2;
  if (v10)
  {
    v37[2] = v2;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = v42;
    v40 = (v5 + 8);
    v37[1] = v9;
    v13 = (v9 + 40);
    do
    {
      v14 = *v13;
      v44 = *(v13 - 1);
      v45 = v14;

      static CharacterSet.whitespacesAndNewlines.getter();
      v15 = StringProtocol.trimmingCharacters(in:)();
      v17 = v16;
      (*v40)(v8, v41);

      v42 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v12 = v42;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += 2;
      --v10;
    }

    while (v10);

    a2 = v39;
    v11 = MEMORY[0x277D84F90];
    v21 = *(v12 + 16);
    if (v21)
    {
LABEL_7:
      v44 = v11;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v23 = 0;
      v11 = v44;
      v24 = (v12 + 40);
      while (v23 < *(v12 + 16))
      {
        v25 = *(v24 - 1);
        v26 = *v24;

        v27 = specialized closure #2 in SIMD<>.init(_:)(v25, v26);

        v44 = v11;
        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v11 = v44;
        }

        ++v23;
        *(v11 + 16) = v29 + 1;
        *(v11 + 4 * v29 + 32) = v27;
        v24 += 2;
        if (v21 == v23)
        {

          a2 = v39;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v30 = *(v11 + 16);

  if (v30 == 3)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v11);
    v41 = v31;
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v38, a2);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v42 = v30;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v32);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    MEMORY[0x266771550](0x6E493C33444D4953, 0xEC0000003E323374);
    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v42 = 3;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v33);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v34 = v44;
    v35 = v45;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v36 = 25;
    *(v36 + 8) = v34;
    *(v36 + 16) = v35;
    return swift_willThrow();
  }
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4Vys5Int32VG_Tt1g5(uint64_t a1, unint64_t a2)
{
  *&v41 = type metadata accessor for CharacterSet();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v44 = a1;
  v45 = a2;
  v42 = 44;
  v43 = 0xE100000000000000;
  v46 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  v39 = a2;
  if (v10)
  {
    v37[2] = v2;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = v42;
    v40 = (v5 + 8);
    v37[1] = v9;
    v13 = (v9 + 40);
    do
    {
      v14 = *v13;
      v44 = *(v13 - 1);
      v45 = v14;

      static CharacterSet.whitespacesAndNewlines.getter();
      v15 = StringProtocol.trimmingCharacters(in:)();
      v17 = v16;
      (*v40)(v8, v41);

      v42 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v12 = v42;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += 2;
      --v10;
    }

    while (v10);

    a2 = v39;
    v11 = MEMORY[0x277D84F90];
    v21 = *(v12 + 16);
    if (v21)
    {
LABEL_7:
      v44 = v11;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v23 = 0;
      v11 = v44;
      v24 = (v12 + 40);
      while (v23 < *(v12 + 16))
      {
        v25 = *(v24 - 1);
        v26 = *v24;

        v27 = specialized closure #2 in SIMD<>.init(_:)(v25, v26);

        v44 = v11;
        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v11 = v44;
        }

        ++v23;
        *(v11 + 16) = v29 + 1;
        *(v11 + 4 * v29 + 32) = v27;
        v24 += 2;
        if (v21 == v23)
        {

          a2 = v39;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v30 = *(v11 + 16);

  if (v30 == 4)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v11);
    v41 = v31;
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v38, a2);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v42 = v30;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v32);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    MEMORY[0x266771550](0x6E493C34444D4953, 0xEC0000003E323374);
    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v42 = 4;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v33);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v34 = v44;
    v35 = v45;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v36 = 25;
    *(v36 + 8) = v34;
    *(v36 + 16) = v35;
    return swift_willThrow();
  }
}

unint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3VySfG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *&v44 = type metadata accessor for CharacterSet();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v47 = a1;
  v48 = a2;
  v45 = 44;
  v46 = 0xE100000000000000;
  v49 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {

    v13 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_15:

    v25 = MEMORY[0x277D84F90];
LABEL_16:
    v32 = *(v25 + 16);

    if (v32 == 3)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v25);
      v44 = v33;
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
      MEMORY[0x266771550](v42, a2);

      MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
      v45 = v32;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
      MEMORY[0x266771550](0x6C463C33444D4953, 0xEC0000003E74616FLL);
      MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
      v45 = 3;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v35);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v36 = v47;
      v37 = v48;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v38 = 25;
      *(v38 + 8) = v36;
      *(v38 + 16) = v37;
      return swift_willThrow();
    }
  }

  v40 = a2;
  v41 = v2;
  v45 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v13 = v45;
  v43 = (v6 + 8);
  v39[1] = v10;
  v14 = (v10 + 40);
  do
  {
    v15 = *v14;
    v47 = *(v14 - 1);
    v48 = v15;

    static CharacterSet.whitespacesAndNewlines.getter();
    v16 = StringProtocol.trimmingCharacters(in:)();
    v18 = v17;
    (*v43)(v9, v44);

    v45 = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v13 = v45;
    }

    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v14 += 2;
    --v11;
  }

  while (v11);

  a2 = v40;
  v3 = v41;
  v12 = MEMORY[0x277D84F90];
  v22 = *(v13 + 16);
  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_7:
  v47 = v12;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
  v24 = 0;
  v25 = v47;
  v26 = (v13 + 40);
  while (v24 < *(v13 + 16))
  {
    v28 = *(v26 - 1);
    v27 = *v26;

    result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(v28, v27);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    v47 = v25;
    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    if (v30 >= v29 >> 1)
    {
      v41 = v3;
      v31 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      result = v31;
      v3 = v41;
      v25 = v47;
    }

    ++v24;
    *(v25 + 16) = v30 + 1;
    *(v25 + 4 * v30 + 32) = result;
    v26 += 2;
    if (v22 == v24)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4VySfG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *&v44 = type metadata accessor for CharacterSet();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v47 = a1;
  v48 = a2;
  v45 = 44;
  v46 = 0xE100000000000000;
  v49 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {

    v13 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_15:

    v25 = MEMORY[0x277D84F90];
LABEL_16:
    v32 = *(v25 + 16);

    if (v32 == 4)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v25);
      v44 = v33;
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
      MEMORY[0x266771550](v42, a2);

      MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
      v45 = v32;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
      MEMORY[0x266771550](0x6C463C34444D4953, 0xEC0000003E74616FLL);
      MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
      v45 = 4;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v35);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v36 = v47;
      v37 = v48;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v38 = 25;
      *(v38 + 8) = v36;
      *(v38 + 16) = v37;
      return swift_willThrow();
    }
  }

  v40 = a2;
  v41 = v2;
  v45 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v13 = v45;
  v43 = (v6 + 8);
  v39[1] = v10;
  v14 = (v10 + 40);
  do
  {
    v15 = *v14;
    v47 = *(v14 - 1);
    v48 = v15;

    static CharacterSet.whitespacesAndNewlines.getter();
    v16 = StringProtocol.trimmingCharacters(in:)();
    v18 = v17;
    (*v43)(v9, v44);

    v45 = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v13 = v45;
    }

    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v14 += 2;
    --v11;
  }

  while (v11);

  a2 = v40;
  v3 = v41;
  v12 = MEMORY[0x277D84F90];
  v22 = *(v13 + 16);
  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_7:
  v47 = v12;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
  v24 = 0;
  v25 = v47;
  v26 = (v13 + 40);
  while (v24 < *(v13 + 16))
  {
    v28 = *(v26 - 1);
    v27 = *v26;

    result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(v28, v27);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    v47 = v25;
    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    if (v30 >= v29 >> 1)
    {
      v41 = v3;
      v31 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      result = v31;
      v3 = v41;
      v25 = v47;
    }

    ++v24;
    *(v25 + 16) = v30 + 1;
    *(v25 + 4 * v30 + 32) = result;
    v26 += 2;
    if (v22 == v24)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2VySfG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v44 = type metadata accessor for CharacterSet();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v47 = a1;
  v48 = a2;
  v45 = 44;
  v46 = 0xE100000000000000;
  v43 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {

    v13 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_15:

    v25 = MEMORY[0x277D84F90];
LABEL_16:
    v32 = *(v25 + 16);

    if (v32 == 2)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v25);
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
      MEMORY[0x266771550](v41, a2);

      MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
      v45 = v32;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v33);

      MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
      MEMORY[0x266771550](0x6C463C32444D4953, 0xEC0000003E74616FLL);
      MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
      v45 = 2;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v35 = v47;
      v36 = v48;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v37 = 25;
      *(v37 + 8) = v35;
      *(v37 + 16) = v36;
      return swift_willThrow();
    }
  }

  v39 = a2;
  v40 = v2;
  v45 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v13 = v45;
  v42 = (v6 + 8);
  v38[1] = v10;
  v14 = (v10 + 40);
  do
  {
    v15 = *v14;
    v47 = *(v14 - 1);
    v48 = v15;

    static CharacterSet.whitespacesAndNewlines.getter();
    v16 = StringProtocol.trimmingCharacters(in:)();
    v18 = v17;
    (*v42)(v9, v44);

    v45 = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v13 = v45;
    }

    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v14 += 2;
    --v11;
  }

  while (v11);

  a2 = v39;
  v3 = v40;
  v12 = MEMORY[0x277D84F90];
  v22 = *(v13 + 16);
  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_7:
  v47 = v12;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
  v24 = 0;
  v25 = v47;
  v26 = (v13 + 40);
  while (v24 < *(v13 + 16))
  {
    v28 = *(v26 - 1);
    v27 = *v26;

    result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(v28, v27);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    v47 = v25;
    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    if (v30 >= v29 >> 1)
    {
      v40 = v3;
      v31 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      result = v31;
      v3 = v40;
      v25 = v47;
    }

    ++v24;
    *(v25 + 16) = v30 + 1;
    *(v25 + 4 * v30 + 32) = result;
    v26 += 2;
    if (v22 == v24)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t SIMD<>.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v44 = a6;
  v54 = type metadata accessor for CharacterSet();
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v54);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v52 = a1;
  v53 = a2;
  v47 = a2;
  v50 = 44;
  v51 = 0xE100000000000000;
  v49 = lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.components<A>(separatedBy:)();
  v15 = *(v14 + 16);
  if (v15)
  {
    v42 = a5;
    v43 = a3;
    v50 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v50;
    v48 = (v10 + 8);
    v41[1] = v14;
    v17 = (v14 + 40);
    do
    {
      v18 = *v17;
      v52 = *(v17 - 1);
      v53 = v18;

      static CharacterSet.whitespacesAndNewlines.getter();
      v19 = StringProtocol.trimmingCharacters(in:)();
      v21 = v20;
      (*v48)(v13, v54);

      v50 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v16 = v50;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v17 += 2;
      --v15;
    }

    while (v15);

    a5 = v42;
    a3 = v43;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v52 = v16;
  MEMORY[0x28223BE20](v25);
  v26 = v46;
  v41[-4] = a3;
  v41[-3] = v26;
  v41[-2] = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v28 = *(v26 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A]);
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in SIMD<>.init(_:), &v41[-6], v27, AssociatedTypeWitness, MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);

  v33 = MEMORY[0x266771860](v32, AssociatedTypeWitness);
  if (v33 == static SIMDStorage.scalarCount.getter(a3))
  {

    v52 = v32;
    type metadata accessor for Array();
    swift_getWitnessTable();
    return SIMD.init<A>(_:)();
  }

  else
  {

    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v45, v47);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v50 = v33;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v35);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    v36 = _typeName(_:qualified:)();
    MEMORY[0x266771550](v36);

    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v50 = static SIMDStorage.scalarCount.getter(a3);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v37);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v38 = v52;
    v39 = v53;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v40 = 25;
    *(v40 + 8) = v38;
    *(v40 + 16) = v39;
    return swift_willThrow();
  }
}

uint64_t specialized closure #2 in SIMD<>.init(_:)(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_65:
    v25 = result;

    v7 = specialized _parseInteger<A, B>(ascii:radix:)(v25, a2, 10);

    if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_66;
    }

    return v7;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) == 0)
    {
      goto LABEL_67;
    }

    for (result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
    {
      v6 = *result;
      if (v6 == 43)
      {
        if (v4 < 1)
        {
          goto LABEL_70;
        }

        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (!result)
          {
LABEL_53:
            LOBYTE(v3) = 0;
            goto LABEL_62;
          }

          v14 = (result + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v7;
            if (v16 != v16)
            {
              break;
            }

            v7 = v16 + v15;
            if (__OFADD__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v6 == 45)
      {
        if (v4 < 1)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (!result)
          {
            goto LABEL_53;
          }

          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              break;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              break;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              break;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v4)
      {
        LODWORD(v7) = 0;
        while (1)
        {
          v20 = *result - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v7;
          if (v21 != v21)
          {
            break;
          }

          v7 = v21 + v20;
          if (__OFADD__(v21, v20))
          {
            break;
          }

          ++result;
          if (!--v4)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_61:
      v7 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v27 = v3;
      if ((v3 & 1) == 0)
      {
        return v7;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      ;
    }
  }

  v26[0] = result;
  v26[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v26;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v26 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if (v13 != v13)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v26 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if (v19 != v19)
        {
          break;
        }

        v7 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t closure #2 in SIMD<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = *a1;
  v12 = a1[1];

  dispatch thunk of LosslessStringConvertible.init(_:)();
  v13 = *(AssociatedTypeWitness - 8);
  result = (*(v13 + 48))(v10, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v13 + 32))(a3, v10, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

uint64_t static SIMDStorage.scalarCount.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v6 = dispatch thunk of SIMDStorage.scalarCount.getter();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCs5Int32V_Tt1g5(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void *createType(_:)()
{
  v33 = type metadata accessor for CharacterSet();
  v0 = *(v33 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v33);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = MEMORY[0x277D84F90];
  if (v4 == 0x676E69727473 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = XMLNode.subscript.getter(1836412517, 0xE400000000000000);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
      if (v14)
      {
        v15 = v14;
        v31 = v13;

        v36 = v11;
        v37 = v12;
        v34 = 44;
        v35 = 0xE100000000000000;
        v32 = lazy protocol witness table accessor for type String and conformance String();
        v16 = StringProtocol.components<A>(separatedBy:)();

        v17 = *(v16 + 16);
        if (v17)
        {
          v30 = v15;
          v34 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
          v18 = v34;
          v19 = (v0 + 8);
          v29[1] = v16;
          v20 = (v16 + 40);
          do
          {
            v21 = *v20;
            v36 = *(v20 - 1);
            v37 = v21;

            static CharacterSet.whitespacesAndNewlines.getter();
            v22 = StringProtocol.trimmingCharacters(in:)();
            v24 = v23;
            (*v19)(v3, v33);

            v34 = v18;
            v26 = *(v18 + 16);
            v25 = *(v18 + 24);
            if (v26 >= v25 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
              v18 = v34;
            }

            *(v18 + 16) = v26 + 1;
            v27 = v18 + 16 * v26;
            *(v27 + 32) = v22;
            *(v27 + 40) = v24;
            v20 += 2;
            --v17;
          }

          while (v17);

          v8 = MEMORY[0x277D84F90];
          v15 = v30;
        }

        else
        {

          v18 = MEMORY[0x277D84F90];
        }

        type metadata accessor for MaterialXDataType();
        result = swift_allocObject();
        v6 = v31;
        v7 = v15;
        goto LABEL_18;
      }
    }
  }

  type metadata accessor for MaterialXDataType();
  result = swift_allocObject();
  v18 = 0;
LABEL_18:
  result[4] = v6;
  result[5] = v7;
  result[2] = v8;
  result[3] = v18;
  return result;
}

uint64_t XMLNode.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  result = 0;
  if (v5 && v2)
  {
    ObjectType = swift_getObjectType();
    result = (*(v5 + 16))(a1, a2, ObjectType, v5);
    if (result)
    {
      v9 = v8;
      v10 = swift_getObjectType();
      v11 = (*(v9 + 32))(v10, v9);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  return result;
}

void *MaterialXDataType.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = MEMORY[0x277D84F90];
  result[3] = a3;
  return result;
}

void *MaterialXDataType.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = MEMORY[0x277D84F90];
  result[3] = 0;
  return result;
}

uint64_t XMLNode.elements(forXPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 48))();
  if (v4)
  {
    return v5;
  }

  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_3:
  v10 = 16 * v8 + 32;
  while (1)
  {
    if (v9 == v8)
    {

      return v5;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    ++v8;
    v11 = v10 + 16;
    v12 = *(v7 + v10);
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v10 = v11;
    if (result)
    {
      v10 = v11;
      if (v12)
      {
        v13 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
          v5 = result;
        }

        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
          v5 = result;
        }

        v5[2] = v15 + 1;
        v16 = &v5[2 * v15];
        v16[4] = v12;
        v16[5] = v13;
        goto LABEL_3;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Bool_optional __swiftcall XMLElement.BOOL(named:)(Swift::String named)
{
  v1 = XMLNode.subscript.getter(named._countAndFlagsBits, named._object);
  if (!v2)
  {
    return 2;
  }

  v3 = v1;
  v4 = v2;
  if (v1 == 1702195828 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 0x65736C6166 && v4 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

void createNodeDef(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v124 = type metadata accessor for CharacterSet();
  v6 = *(v124 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 8);
  v11 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v120 = v11;
  v14 = XMLNode.subscript.getter(1701080942, 0xE400000000000000);
  if (!v15)
  {

LABEL_11:
    _s11ShaderGraph7NodeDefVSgWOi0_(&v139);
LABEL_70:
    v102 = v146;
    *(a3 + 96) = v145;
    *(a3 + 112) = v102;
    *(a3 + 128) = v147;
    *(a3 + 144) = v148;
    v103 = v142;
    *(a3 + 32) = v141;
    *(a3 + 48) = v103;
    v104 = v144;
    *(a3 + 64) = v143;
    *(a3 + 80) = v104;
    v105 = v140;
    *a3 = v139;
    *(a3 + 16) = v105;
    return;
  }

  v116 = v15;
  v117 = v14;
  v16 = XMLNode.subscript.getter(0x756F726765646F6ELL, 0xE900000000000070);
  v114 = v17;
  v115 = v16;
  v18 = XMLNode.subscript.getter(0x746567726174, 0xE600000000000000);
  v121 = a1;
  v118 = v13;
  v119 = a3;
  if (v19)
  {
    *&v139 = v18;
    *(&v139 + 1) = v19;
    *&v125 = 44;
    *(&v125 + 1) = 0xE100000000000000;
    v122 = lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.components<A>(separatedBy:)();

    v21 = *(v20 + 16);
    if (v21)
    {
      v112 = v10;
      v113 = ObjectType;
      *&v125 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = v125;
      v23 = (v6 + 8);
      v111 = v20;
      v24 = (v20 + 40);
      do
      {
        v25 = *v24;
        *&v139 = *(v24 - 1);
        *(&v139 + 1) = v25;

        v26 = v123;
        static CharacterSet.whitespacesAndNewlines.getter();
        v27 = StringProtocol.trimmingCharacters(in:)();
        v29 = v28;
        (*v23)(v26, v124);

        *&v125 = v22;
        v31 = *(v22 + 2);
        v30 = *(v22 + 3);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v22 = v125;
        }

        *(v22 + 2) = v31 + 1;
        v32 = &v22[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = v29;
        v24 += 2;
        --v21;
      }

      while (v21);
      v123 = v22;

      v33 = 0;
      v10 = v112;
      ObjectType = v113;
    }

    else
    {

      v33 = 0;
      v123 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v123 = 0;
    v33 = 0;
  }

  v34 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, ObjectType, v10);
  v35 = v34;
  v36 = *(v34 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = v34 + 40;
    *&v124 = MEMORY[0x277D84F90];
    v112 = v10;
    v113 = ObjectType;
    v122 = v36;
    v111 = v34 + 40;
    while (1)
    {
      v39 = &v36[-v37];
      v40 = (v38 + 16 * v37);
      while (1)
      {
        if (v37 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_72;
        }

        v41 = *(v40 - 1);
        v42 = *v40;
        swift_unknownObjectRetain();
        v43 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
        if (v44)
        {
          break;
        }

LABEL_17:
        swift_unknownObjectRelease();
        v40 += 2;
        ++v37;
        if (!--v39)
        {
          v10 = v112;
          ObjectType = v113;
          goto LABEL_31;
        }
      }

      v45 = v44;
      v46 = v43;
      v47 = createType(_:)();
      if (!v47)
      {
        break;
      }

      v110 = v47;
      v48._countAndFlagsBits = 0x6D726F66696E75;
      v48._object = 0xE700000000000000;
      LOBYTE(v49) = XMLElement.BOOL(named:)(v48);
      v108 = v49;
      v50 = XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
      v109 = v51;
      v52 = XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65);
      v106 = v53;
      v107 = v52;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 16) + 1, 1, v124);
      }

      v54 = v46;
      v56 = *(v124 + 16);
      v55 = *(v124 + 24);
      v57 = v110;
      if (v56 >= v55 >> 1)
      {
        *&v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v124);
        v57 = v110;
        v54 = v46;
      }

      v58 = v108 & 1;
      v59 = v124;
      *(v124 + 16) = v56 + 1;
      ++v37;
      v60 = v59 + (v56 << 6);
      *(v60 + 32) = v54;
      *(v60 + 40) = v45;
      *(v60 + 48) = v57;
      *(v60 + 56) = v50;
      v61 = v107;
      *(v60 + 64) = v109;
      *(v60 + 72) = v61;
      *(v60 + 80) = v106;
      *(v60 + 88) = v58;
      v62 = v39 == 1;
      v10 = v112;
      ObjectType = v113;
      v36 = v122;
      v38 = v111;
      if (v62)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_17;
  }

  *&v124 = MEMORY[0x277D84F90];
LABEL_31:

  v63 = XMLNode.elements(forXPath:)(0x74757074756F2F2ELL, 0xE800000000000000, ObjectType, v10);
  v64 = v63;
  v65 = *(v63 + 16);
  if (!v65)
  {
    v68 = MEMORY[0x277D84F90];
LABEL_48:

    a3 = v119;
    v88 = XMLNode.subscript.getter(0xD000000000000012, 0x8000000265F304B0);
    if (v89)
    {
      v90 = specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:)(v88, v89);
      if (!v33)
      {
        v96 = v90;

        if (v123)
        {
          v97 = v123;
        }

        else
        {
          v97 = MEMORY[0x277D84F90];
        }

        if (v124)
        {
          v98 = v124;
        }

        else
        {
          v98 = MEMORY[0x277D84F90];
        }

        if (!v68)
        {
          v68 = MEMORY[0x277D84F90];
        }

        v99 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v99 operatingSystemVersion];
        v100 = a3;
        v101 = v140;
        v124 = v139;

        v135 = v124;
        v136 = 0;
        v137 = v101;
        a3 = v100;
        v138 = 0;
        v94 = specialized static NodeDef.available(for:in:)(0, &v135, v96);
        goto LABEL_69;
      }
    }

    v91 = XMLNode.subscript.getter(0xD000000000000011, 0x8000000265F304D0);
    v92 = XMLNode.subscript.getter(0x6C62616C69617661, 0xE900000000000065);
    v94 = specialized MaterialXAvailability.init(_:message:)(v92, v93, v91);
    v96 = 0;
    if (v123)
    {
      v97 = v123;
    }

    else
    {
      v97 = MEMORY[0x277D84F90];
    }

    if (v124)
    {
      v98 = v124;
    }

    else
    {
      v98 = MEMORY[0x277D84F90];
    }

    if (!v68)
    {
      v68 = MEMORY[0x277D84F90];
    }

LABEL_69:
    *&v125 = v120;
    *(&v125 + 1) = v118;
    *&v126 = v117;
    *(&v126 + 1) = v116;
    v127 = 0uLL;
    *&v128 = v115;
    *(&v128 + 1) = v114;
    v129 = 0uLL;
    LOBYTE(v130) = 2;
    *(&v130 + 1) = v97;
    v131 = 0uLL;
    *&v132 = v94;
    *(&v132 + 1) = v95;
    *&v133 = v98;
    *(&v133 + 1) = v68;
    v134 = v96;
    destructiveProjectEnumData for NodePersonality.ShaderType(&v125);
    v145 = v131;
    v146 = v132;
    v147 = v133;
    v148 = v134;
    v141 = v127;
    v142 = v128;
    v143 = v129;
    v144 = v130;
    v139 = v125;
    v140 = v126;
    goto LABEL_70;
  }

  v66 = 0;
  v67 = v63 + 40;
  v68 = MEMORY[0x277D84F90];
  v112 = *(v63 + 16);
  v113 = 0;
  v111 = v63 + 40;
LABEL_33:
  v122 = v68;
  v69 = v65 - v66;
  v70 = (v67 + 16 * v66);
  while (v66 < *(v64 + 16))
  {
    v71 = *(v70 - 1);
    v72 = *v70;
    swift_unknownObjectRetain();
    v73 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (v74)
    {
      v75 = v74;
      v76 = v64;
      v77 = v73;
      v78 = createType(_:)();
      if (v78)
      {
        v79 = v78;
        v109 = XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
        v110 = v80;
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122);
        }

        v81 = v113;
        v83 = *(v122 + 2);
        v82 = *(v122 + 3);
        if (v83 >= v82 >> 1)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v122);
        }

        ++v66;
        v84 = v122;
        *(v122 + 2) = v83 + 1;
        v85 = &v84[64 * v83];
        *(v85 + 4) = v77;
        *(v85 + 5) = v75;
        v87 = v109;
        v86 = v110;
        *(v85 + 6) = v79;
        *(v85 + 7) = v87;
        *(v85 + 9) = 0;
        *(v85 + 10) = 0;
        *(v85 + 8) = v86;
        v85[88] = 0;
        v62 = v69 == 1;
        v68 = v84;
        v64 = v76;
        v33 = v81;
        v67 = v111;
        v65 = v112;
        if (v62)
        {
          goto LABEL_48;
        }

        goto LABEL_33;
      }
    }

    swift_unknownObjectRelease();
    v70 += 2;
    ++v66;
    if (!--v69)
    {
      v68 = v122;
      v33 = v113;
      goto LABEL_48;
    }
  }

LABEL_72:
  __break(1u);
}

uint64_t createGeomPropDef(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  if (!v6)
  {
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v16 = 16;
    v17 = xmmword_265F20CE0;
LABEL_7:
    *(v16 + 8) = v17;
    return swift_willThrow();
  }

  v7 = v5;
  v8 = v6;
  v9 = XMLNode.subscript.getter(0x706F72706D6F6567, 0xE800000000000000);
  if (!v10)
  {

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v16 = 16;
    v17 = xmmword_265F23410;
    goto LABEL_7;
  }

  v11 = v9;
  v12 = v10;
  v13 = swift_unknownObjectRetain();
  v14 = specialized MaterialXDataType.__allocating_init(xmlElement:)(v13, a1);
  if (v2)
  {
  }

  v51 = v14;

  v55._countAndFlagsBits = v11;
  v55._object = v12;
  v18 = specialized GeomPropDef.BuiltinGeomProp.init(rawValue:)(v55);
  if (v18 != 6)
  {

    v12 = 0;
    v11 = v18;
  }

  v52 = v18;
  v19 = XMLNode.subscript.getter(0x6563617073, 0xE500000000000000);
  if (v20)
  {
    v21 = v20;
    v22._countAndFlagsBits = v19;
    v22._object = v21;
    v23 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeomPropDef.Space.init(rawValue:), v22);

    if (v23 >= 3)
    {
      LOBYTE(v23) = 3;
    }
  }

  else
  {
    LOBYTE(v23) = 3;
  }

  result = XMLNode.subscript.getter(0x7865646E69, 0xE500000000000000);
  if (!v24)
  {
    goto LABEL_82;
  }

  v25 = HIBYTE(v24) & 0xF;
  v26 = result & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v27 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

LABEL_82:
    v48 = 0;
    v47 = 1;
LABEL_83:
    LOBYTE(v53[0]) = v52 == 6;
    v54 = v47 & 1;
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v51;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v52 == 6;
    *(a2 + 41) = v23;
    *(a2 + 48) = v48;
    *(a2 + 56) = v47 & 1;
    return result;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v29 = specialized _parseInteger<A, B>(ascii:radix:)(result, v24, 10);
    v47 = v49;
LABEL_78:

    if (v47)
    {
      v48 = 0;
    }

    else
    {
      v48 = v29;
    }

    goto LABEL_83;
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v26 = v50;
    }

    v28 = *result;
    if (v28 == 43)
    {
      if (v26 >= 1)
      {
        if (--v26)
        {
          v29 = 0;
          if (result)
          {
            v36 = (result + 1);
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_76;
              }

              v38 = 10 * v29;
              if ((v29 * 10) >> 64 != (10 * v29) >> 63)
              {
                goto LABEL_76;
              }

              v29 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_76;
              }

              ++v36;
              if (!--v26)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_88;
    }

    if (v28 != 45)
    {
      if (v26)
      {
        v29 = 0;
        if (result)
        {
          while (1)
          {
            v42 = *result - 48;
            if (v42 > 9)
            {
              goto LABEL_76;
            }

            v43 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_76;
            }

            v29 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              goto LABEL_76;
            }

            ++result;
            if (!--v26)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_76:
      v29 = 0;
      LOBYTE(v26) = 1;
      goto LABEL_77;
    }

    if (v26 >= 1)
    {
      if (--v26)
      {
        v29 = 0;
        if (result)
        {
          v30 = (result + 1);
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_76;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_76;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_76;
            }

            ++v30;
            if (!--v26)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_75:
        LOBYTE(v26) = 0;
LABEL_77:
        v54 = v26;
        v47 = v26;
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v53[0] = result;
  v53[1] = v24 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v25)
      {
        v29 = 0;
        v44 = v53;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v25)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_76;
    }

    if (v25)
    {
      v26 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        v33 = v53 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v26)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_87;
  }

  if (v25)
  {
    v26 = v25 - 1;
    if (v25 != 1)
    {
      v29 = 0;
      v39 = v53 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          break;
        }

        v29 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v26)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t collectGeomPropDefs(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  result = XMLNode.elements(forXPath:)(0x72706D6F65672F2ELL, 0xED0000666564706FLL, ObjectType, v7);
  if (!v3)
  {
    specialized Sequence.forEach(_:)(result, a3);

    result = (*(v7 + 24))(ObjectType, v7);
    if (result)
    {
      v9 = result;
      v10 = 0;
      v11 = *(result + 16);
      v12 = MEMORY[0x277D84F90];
LABEL_4:
      v13 = 16 * v10 + 32;
      while (1)
      {
        if (v11 == v10)
        {

          specialized Sequence.forEach(_:)(v12, a3);
        }

        if (v10 >= *(v9 + 16))
        {
          break;
        }

        ++v10;
        v14 = v13 + 16;
        v15 = *(v9 + v13);
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        v13 = v14;
        if (result)
        {
          v13 = v14;
          if (v15)
          {
            v16 = result;
            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
              v12 = result;
            }

            v17 = v12[2];
            v18 = v12[3];
            v19 = v17 + 1;
            if (v17 >= v18 >> 1)
            {
              v23 = v17 + 1;
              v21 = v12;
              v22 = v12[2];
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v21);
              v17 = v22;
              v19 = v23;
              v12 = result;
            }

            v12[2] = v19;
            v20 = &v12[2 * v17];
            v20[4] = v15;
            v20[5] = v16;
            goto LABEL_4;
          }
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t collectNodeDefs(_:into:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  result = XMLNode.elements(forXPath:)(0x656465646F6E2F2ELL, 0xE900000000000066, ObjectType, v7);
  if (!v3)
  {
    specialized Sequence.forEach(_:)(result, a3);

    result = (*(v7 + 24))(ObjectType, v7);
    if (result)
    {
      v9 = result;
      v10 = 0;
      v11 = *(result + 16);
      v12 = MEMORY[0x277D84F90];
LABEL_4:
      v13 = 16 * v10 + 32;
      while (1)
      {
        if (v11 == v10)
        {

          specialized Sequence.forEach(_:)(v12, a3);
        }

        if (v10 >= *(v9 + 16))
        {
          break;
        }

        ++v10;
        v14 = v13 + 16;
        v15 = *(v9 + v13);
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        v13 = v14;
        if (result)
        {
          v13 = v14;
          if (v15)
          {
            v16 = result;
            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
              v12 = result;
            }

            v17 = v12[2];
            v18 = v12[3];
            v19 = v17 + 1;
            if (v17 >= v18 >> 1)
            {
              v23 = v17 + 1;
              v21 = v12;
              v22 = v12[2];
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v21);
              v17 = v22;
              v19 = v23;
              v12 = result;
            }

            v12[2] = v19;
            v20 = &v12[2 * v17];
            v20[4] = v15;
            v20[5] = v16;
            goto LABEL_4;
          }
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t collectImplementations(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  result = XMLNode.elements(forXPath:)(0xD000000000000015, 0x8000000265F2E120, ObjectType, v7);
  if (!v3)
  {
    specialized Sequence.forEach(_:)(result, a3, closure #1 in collectImplementations(_:into:));

    v9 = XMLNode.elements(forXPath:)(0xD000000000000010, 0x8000000265F2E140, ObjectType, v7);
    specialized Sequence.forEach(_:)(v9, a3, closure #2 in collectImplementations(_:into:));
  }

  return result;
}

uint64_t closure #1 in collectImplementations(_:into:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v87 = type metadata accessor for NodeDef.Implementation(0);
  v5 = *(v87 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v87);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = (&v80 - v10);
  v100 = type metadata accessor for CharacterSet();
  isUniquelyReferenced_nonNull_native = *(v100 - 8);
  v12 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x28223BE20](v100);
  v95 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v90 = a1[1];
  result = XMLNode.subscript.getter(0x66656465646F6ELL, 0xE700000000000000);
  if (!v16)
  {
    return result;
  }

  v86 = result;
  v89 = v16;
  v17 = XMLNode.subscript.getter(0x746567726174, 0xE600000000000000);
  v91 = MEMORY[0x277D84F90];
  v83 = v5;
  v85 = v9;
  if (v18)
  {
    v84 = v2;
    v97[0] = v17;
    v97[1] = v18;
    v96[0] = 44;
    v96[1] = 0xE100000000000000;
    *&v94 = lazy protocol witness table accessor for type String and conformance String();
    v19 = StringProtocol.components<A>(separatedBy:)();

    v20 = *(v19 + 16);
    v93 = v14;
    if (v20)
    {
      v96[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = v96[0];
      v22 = (isUniquelyReferenced_nonNull_native + 8);
      v82 = v19;
      v23 = (v19 + 40);
      do
      {
        v24 = *v23;
        v97[0] = *(v23 - 1);
        v97[1] = v24;

        v25 = v95;
        static CharacterSet.whitespacesAndNewlines.getter();
        v26 = StringProtocol.trimmingCharacters(in:)();
        isUniquelyReferenced_nonNull_native = v27;
        (*v22)(v25, v100);

        v96[0] = v21;
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v21 = v96[0];
        }

        v21[2] = v29 + 1;
        v30 = &v21[2 * v29];
        v30[4] = v26;
        v30[5] = isUniquelyReferenced_nonNull_native;
        v23 += 2;
        --v20;
      }

      while (v20);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v97[0] = MEMORY[0x277D84F90];
    v32 = v21[2];
    if (v32)
    {
      v33 = 0;
      v34 = v21 + 5;
      v91 = MEMORY[0x277D84F90];
      v95 = v32;
      v81 = v32 - 1;
      *&v31 = 136315138;
      v94 = v31;
      v100 = v21;
      v82 = v21 + 5;
      do
      {
        v35 = &v34[2 * v33];
        v36 = v33;
        while (1)
        {
          if (v36 >= v21[2])
          {
            __break(1u);
            goto LABEL_43;
          }

          isUniquelyReferenced_nonNull_native = *(v35 - 1);
          v37 = *v35;
          v33 = v36 + 1;

          v38 = specialized static MaterialXTarget.target(named:)(isUniquelyReferenced_nonNull_native, v37);
          if (v38)
          {
            break;
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, logger);

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v96[0] = v43;
            *v42 = v94;
            *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(isUniquelyReferenced_nonNull_native, v37, v96);
            _os_log_impl(&dword_265D7D000, v40, v41, "Unknown MaterialX target name '%s'", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v43);
            MEMORY[0x266773120](v43, -1, -1);
            MEMORY[0x266773120](v42, -1, -1);
          }

          v35 += 2;
          v36 = v33;
          v21 = v100;
          if (v95 == v33)
          {
            goto LABEL_23;
          }
        }

        isUniquelyReferenced_nonNull_native = v38;

        MEMORY[0x266771770](v44);
        if (*((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v91 = v97[0];
        v34 = v82;
      }

      while (v81 != v36);
    }

LABEL_23:

    v3 = v84;
  }

  v46 = *v92;
  v47 = *(v92 + 8);
  v48 = *(v92 + 16);

  createGraph(_:nodeDefStore:)(v90, v46, v47, v48, v98);
  if (v3)
  {
  }

  v49 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  if (!v50)
  {

    _s11ShaderGraph14MaterialXErrorOWOi4_(v97);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    swift_allocError();
    memcpy(v72, v97, 0x140uLL);
    swift_willThrow();
    return outlined destroy of UserGraph(v98);
  }

  v51 = v49;
  v52 = v50;
  v54 = v87;
  v53 = v88;
  v55 = (v88 + *(v87 + 20));
  v56 = v99[0];
  v55[8] = v98[8];
  v55[9] = v56;
  *(v55 + 153) = *(v99 + 9);
  v57 = v98[5];
  v55[4] = v98[4];
  v55[5] = v57;
  v58 = v98[7];
  v55[6] = v98[6];
  v55[7] = v58;
  v59 = v98[1];
  *v55 = v98[0];
  v55[1] = v59;
  v60 = v98[3];
  v55[2] = v98[2];
  v55[3] = v60;
  type metadata accessor for NodeDef.Implementation.Kind(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of UserGraph(v98, v97);
  v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(v91);

  *v53 = v51;
  v53[1] = v52;
  *(v53 + *(v54 + 24)) = v61;
  outlined init with copy of NodeDef.Implementation(v53, v85);
  v62 = v92;
  v63 = *(v92 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97[0] = *(v62 + 16);
  v21 = v97[0];
  *(v62 + 16) = 0x8000000000000000;
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v89);
  v65 = v21[2];
  v66 = (v64 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v68 = v64;
    if (v21[3] >= v67)
    {
      v71 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v71 = v92;
        v21 = v97[0];
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, isUniquelyReferenced_nonNull_native);
      v21 = v97[0];
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v89);
      if ((v68 & 1) != (v70 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v36 = v69;
      v71 = v92;
    }

    v73 = *(v71 + 16);
    *(v71 + 16) = v21;
    v74 = v71;

    v75 = *(v74 + 16);
    if (v68)
    {
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v36, v86, v89, MEMORY[0x277D84F90], v75);
    }

    isUniquelyReferenced_nonNull_native = v75[7];
    v21 = *(isUniquelyReferenced_nonNull_native + 8 * v36);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v36) = v21;
    if (v76)
    {
      goto LABEL_38;
    }
  }

  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  *(isUniquelyReferenced_nonNull_native + 8 * v36) = v21;
LABEL_38:
  v78 = v21[2];
  v77 = v21[3];
  if (v78 >= v77 >> 1)
  {
    *(isUniquelyReferenced_nonNull_native + 8 * v36) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v21);
  }

  outlined destroy of UserGraph(v98);
  outlined destroy of NodeDef.Implementation(v88);
  v79 = *(isUniquelyReferenced_nonNull_native + 8 * v36);
  *(v79 + 16) = v78 + 1;
  return outlined init with take of NodeDef.Implementation(v85, v79 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v78);
}

uint64_t createGraph(_:nodeDefStore:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v130 = a3;
  ObjectType = swift_getObjectType();
  v100 = *(a1 + 8);
  v11 = XMLNode.subscript.getter(0x6C6562616C6975, 0xE700000000000000);
  if (!v12)
  {
    v11 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (!v12)
    {
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v31 = 4;
      *(v31 + 8) = 0xD00000000000001BLL;
      *(v31 + 16) = 0x8000000265F30270;
      return swift_willThrow();
    }
  }

  v13 = v12;
  v95 = v11;
  v125 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph9InputSpecVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v99 = ObjectType;
  if (!(*(a1 + 16))(0x66656465646F6ELL, 0xE700000000000000, ObjectType, a1) || (v15 = v14, v16 = swift_getObjectType(), v17 = (*(v15 + 32))(v16, v15), v19 = v18, swift_unknownObjectRelease(), !v19))
  {
    v25 = v99;
    v26 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, v99, v100);
    if (!v5)
    {
      specialized Sequence.forEach(_:)(v26, &v125);
      v6 = 0;

      v28 = (*(v100 + 24))(v99);
      if (v28)
      {
        specialized Sequence.forEach(_:)(v28, &v125);
      }

      goto LABEL_13;
    }
  }

  if (!a2[2] || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19), (v21 & 1) == 0))
  {

    *&v115 = 0x20676E697373694DLL;
    *(&v115 + 1) = 0xE800000000000000;
    MEMORY[0x266771550](v17, v19);

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v27 = 22;
    *(v27 + 8) = 0x20676E697373694DLL;
    *(v27 + 16) = 0xE800000000000000;
    swift_willThrow();
  }

  v22 = v20;

  v23 = *(a2[7] + 152 * v22 + 128);

  specialized Sequence.forEach(_:)(v24, &v125);

  v25 = v99;
LABEL_13:
  v29 = XMLNode.elements(forXPath:)(0x74757074756F2F2ELL, 0xE800000000000000, v25, v100);
  if (v6)
  {
  }

  v32 = *(v29 + 16);
  v96 = a2;
  v97 = v29;
  v91 = a5;
  v92 = v13;
  if (!v32)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

  v33 = 0;
  v13 = v29 + 32;
  v93 = MEMORY[0x277D84F90];
  do
  {
    a2 = (v13 + 16 * v33);
    v34 = v33;
    while (1)
    {
      if (v34 >= *(v29 + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v35 = *a2;
      swift_unknownObjectRetain();
      v36 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
      if (!v37)
      {
        goto LABEL_20;
      }

      v38 = v36;
      v39 = v37;
      v40 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
      if (v41)
      {
        break;
      }

LABEL_20:
      ++v34;
      swift_unknownObjectRelease();
      a2 += 2;
      v29 = v97;
      if (v32 == v34)
      {
        a2 = v96;
        goto LABEL_36;
      }
    }

    v88 = v40;
    v89 = v41;
    type metadata accessor for MaterialXDataType();
    v42 = swift_allocObject();
    v42[3] = 0;
    v42[4] = v88;
    v42[5] = v89;
    swift_unknownObjectRelease();
    v90 = v42;
    v42[2] = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
    }

    v44 = *(v93 + 2);
    v43 = *(v93 + 3);
    if (v44 >= v43 >> 1)
    {
      v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v93);
    }

    v33 = v34 + 1;
    *(v93 + 2) = v44 + 1;
    v45 = &v93[24 * v44];
    *(v45 + 4) = v38;
    *(v45 + 5) = v39;
    *(v45 + 6) = v90;
    a2 = v96;
    v29 = v97;
  }

  while (v32 - 1 != v34);
  while (1)
  {
LABEL_36:
    v51 = v125;
    v52 = *(v125 + 16);
    v53 = MEMORY[0x277D84F90];
    if (v52)
    {
      v54 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph9InputSpecV_Tt1g5(v52, 0);
      v13 = specialized Sequence._copySequenceContents(initializing:)(v111, v54 + 4, v52, v51);

      outlined consume of [String : GeomPropDef].Iterator._Variant();
      if (v13 != v52)
      {
        goto LABEL_68;
      }

      v55 = v99;
      v56 = v100;
      v53 = MEMORY[0x277D84F90];
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
      v55 = v99;
      v56 = v100;
    }

    specialized UserGraph.init(id:label:inputs:outputs:)(0, v95, v92, v54, v93, &v115);
    v114 = v53;
    v113 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph0cD4NodeV2IDVTt0g5Tf4g_n(v53);
    v57 = (*(v56 + 24))(v55, v56);
    if (v57)
    {
      v58 = v57;
      v59 = 0;
      v60 = *(v57 + 16);
      v61 = MEMORY[0x277D84F90];
LABEL_42:
      v62 = 16 * v59 + 32;
      while (v60 != v59)
      {
        if (v59 >= *(v58 + 16))
        {
          goto LABEL_66;
        }

        ++v59;
        v63 = v62 + 16;
        v13 = *(v58 + v62);
        swift_getObjectType();
        v64 = swift_conformsToProtocol2();
        v62 = v63;
        if (v64)
        {
          v62 = v63;
          if (v13)
          {
            v65 = v64;
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
            }

            v67 = v61[2];
            v66 = v61[3];
            if (v67 >= v66 >> 1)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v61);
            }

            v68 = v65;
            a2 = v96;
            v61[2] = v67 + 1;
            v69 = &v61[2 * v67];
            v69[4] = v13;
            v69[5] = v68;
            goto LABEL_42;
          }
        }
      }

      v70 = v61[2];

      if (v70)
      {
        v13 = 32;
        do
        {
          v101 = *(v61 + v13);
          swift_unknownObjectRetain();
          closure #6 in createGraph(_:nodeDefStore:)(&v101, a2, v130, a4, &v115, &v113, &v114);
          swift_unknownObjectRelease();
          v13 += 16;
          --v70;
        }

        while (v70);
      }

      v53 = v114;
    }

    v92 = v53[2];
    if (!v92)
    {
      break;
    }

    v71 = 0;
    v94 = v53;
    v95 = (v53 + 4);
    while (v71 < v53[2])
    {
      v99 = v71;
      v72 = v95 + (v71 << 6);
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 24);
      v13 = *(v72 + 32);
      v77 = *(v72 + 56);
      *&v126 = *(v72 + 16);
      v76 = v126;
      *(&v126 + 1) = v75;
      v127 = v13;
      v128 = *(v72 + 40);
      v129 = v77;
      v78 = swift_getObjectType();
      swift_unknownObjectRetain();
      outlined copy of NodePersonality(v76);
      v79 = *(v74 + 8);

      v80 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, v78, v79);
      v81 = *(v80 + 16);
      swift_unknownObjectRetain();
      outlined copy of NodePersonality(v76);
      v100 = v75;

      if (v81)
      {
        v82 = 32;
        do
        {
          v111[0] = *(v80 + v82);
          swift_unknownObjectRetain();
          specialized closure #1 in closure #7 in createGraph(_:nodeDefStore:)(v111, &v126, &v115, &v113, v96, v130, v73, v74);
          swift_unknownObjectRelease();
          v82 += 16;
          --v81;
        }

        while (v81);
      }

      v71 = v99 + 1;

      swift_unknownObjectRelease();
      outlined consume of NodePersonality(v76);
      swift_unknownObjectRelease();
      a2 = v96;

      outlined consume of NodePersonality(v76);

      v53 = v94;
      if (v99 + 1 == v92)
      {
        goto LABEL_64;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_33:
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, logger);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v115 = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v13, &v115);
      _os_log_impl(&dword_265D7D000, v47, v48, "Graph implementation for %s has no outputs!", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266773120](v50, -1, -1);
      MEMORY[0x266773120](v49, -1, -1);
    }

    v93 = MEMORY[0x277D84F90];
  }

LABEL_64:

  specialized Sequence.forEach(_:)(v97, &v113, &v115, a2);

  v109 = v123;
  v110[0] = v124[0];
  *(v110 + 9) = *(v124 + 9);
  v105 = v119;
  v106 = v120;
  v107 = v121;
  v108 = v122;
  v101 = v115;
  v102 = v116;
  v103 = v117;
  v104 = v118;
  outlined init with copy of UserGraph(&v101, v111);

  v111[8] = v123;
  v112[0] = v124[0];
  *(v112 + 9) = *(v124 + 9);
  v111[4] = v119;
  v111[5] = v120;
  v111[6] = v121;
  v111[7] = v122;
  v111[0] = v115;
  v111[1] = v116;
  v111[2] = v117;
  v111[3] = v118;
  outlined destroy of UserGraph(v111);

  v83 = v110[0];
  v91[8] = v109;
  v91[9] = v83;
  *(v91 + 153) = *(v110 + 9);
  v84 = v106;
  v91[4] = v105;
  v91[5] = v84;
  v85 = v108;
  v91[6] = v107;
  v91[7] = v85;
  v86 = v102;
  *v91 = v101;
  v91[1] = v86;
  v87 = v104;
  v91[2] = v103;
  v91[3] = v87;
  return result;
}

void closure #2 in collectImplementations(_:into:)(uint64_t *a1, uint64_t a2)
{
  v153 = type metadata accessor for NodeDef.Implementation(0);
  v5 = *(v153 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v153);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v145 = &v137 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v137 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v149 = (&v137 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v137 - v17;
  MEMORY[0x28223BE20](v16);
  v154 = (&v137 - v19);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v159 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = XMLNode.subscript.getter(0x66656465646F6ELL, 0xE700000000000000);
  if (!v26)
  {
    return;
  }

  v138 = v9;
  v143 = a2;
  v144 = v21;
  v140 = v18;
  v148 = v25;
  v151 = v2;
  v152 = v26;
  v142 = v5;
  v141 = XMLNode.subscript.getter(1701603686, 0xE400000000000000);
  v155 = v27;
  v139 = XMLNode.subscript.getter(0x6F63656372756F73, 0xEA00000000006564);
  v29 = v28;
  v30 = XMLNode.subscript.getter(0x746567726174, 0xE600000000000000);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v146 = v20;
    v147 = v29;
    v158[0] = v30;
    v158[1] = v31;
    v156 = 44;
    v157 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v33 = StringProtocol.components<A>(separatedBy:)();

    v34 = 0;
    v158[0] = v32;
    v35 = *(v33 + 16);
LABEL_4:
    v36 = (v33 + 40 + 16 * v34);
    while (1)
    {
      if (v35 == v34)
      {

        v43 = v32;
        v20 = v146;
        v29 = v147;
        goto LABEL_13;
      }

      if (v34 >= *(v33 + 16))
      {
        break;
      }

      ++v34;
      v37 = v36 + 2;
      v39 = *(v36 - 1);
      v38 = *v36;

      v40 = specialized static MaterialXTarget.target(named:)(v39, v38);

      v36 = v37;
      if (v40)
      {
        MEMORY[0x266771770](v41);
        if (*((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v158[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v158[0];
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  v43 = 0;
LABEL_13:
  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(v32);

  v45 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  v47 = v159;
  if (v46)
  {
    v48 = v46;
    if (v155)
    {
      v150 = v45;
      v145 = v43;
      URL.init(fileURLWithPath:)();
      v49 = XMLNode.subscript.getter(0x6E6F6974636E7566, 0xE800000000000000);
      if (!v50)
      {

        (*(v144 + 8))(v47, v20);
        return;
      }

      v51 = v49;
      v52 = v50;
      v147 = v29;
      v53 = v153;
      v54 = v154;
      v55 = (v154 + *(v153 + 20));
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR) + 48);
      *v55 = v51;
      v55[1] = v52;
      v57 = *(v144 + 16);
      v146 = v20;
      v57(v55 + v56, v47, v20);
      type metadata accessor for NodeDef.Implementation.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v54 = v150;
      v54[1] = v48;
      *(v54 + *(v53 + 24)) = v44;
      v58 = v140;
      outlined init with copy of NodeDef.Implementation(v54, v140);
      v59 = v143;
      v60 = *(v143 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = *(v59 + 16);
      v62 = v158[0];
      *(v59 + 16) = 0x8000000000000000;
      v63 = v148;
      v64 = v152;
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v148, v152);
      v67 = *(v62 + 16);
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        __break(1u);
LABEL_70:
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 16) + 1, 1, v53);
        *(v64 + 8 * v66) = v53;
LABEL_37:
        v104 = *(v53 + 16);
        v103 = *(v53 + 24);
        if (v104 >= v103 >> 1)
        {
          *(v64 + 8 * v66) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v103 > 1, v104 + 1, 1, v53);
        }

        outlined destroy of NodeDef.Implementation(v154);
        (*(v144 + 8))(v159, v146);
        v105 = *(v64 + 8 * v66);
        *(v105 + 16) = v104 + 1;
LABEL_40:
        v106 = v105 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v104;
        v107 = v58;
LABEL_55:
        outlined init with take of NodeDef.Implementation(v107, v106);
        return;
      }

      v70 = v65;
      if (*(v62 + 24) >= v69)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v62 = v158[0];
        }

LABEL_33:
        v100 = *(v59 + 16);
        *(v59 + 16) = v62;

        v101 = *(v59 + 16);
        if (v70)
        {
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v66, v63, v64, MEMORY[0x277D84F90], *(v59 + 16));
        }

        v64 = *(v101 + 56);
        v53 = *(v64 + 8 * v66);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *(v64 + 8 * v66) = v53;
        if (v102)
        {
          goto LABEL_37;
        }

        goto LABEL_70;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
      v62 = v158[0];
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v64);
      if ((v70 & 1) == (v72 & 1))
      {
        v66 = v71;
        goto LABEL_33;
      }

LABEL_75:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v82 = v45;
    if (v29)
    {
      v145 = v43;
      v83 = v153;
      v84 = v149;
      v85 = (v149 + *(v153 + 20));
      *v85 = v139;
      v85[1] = v29;
      type metadata accessor for NodeDef.Implementation.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v84 = v82;
      v84[1] = v48;
      *(v84 + *(v83 + 24)) = v44;
      outlined init with copy of NodeDef.Implementation(v84, v150);

      v86 = v143;
      v87 = *(v143 + 16);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = *(v86 + 16);
      v89 = v158[0];
      *(v86 + 16) = 0x8000000000000000;
      v90 = v148;
      v91 = v152;
      v93 = specialized __RawDictionaryStorage.find<A>(_:)(v148, v152);
      v94 = v89[2];
      v95 = (v92 & 1) == 0;
      v96 = v94 + v95;
      if (__OFADD__(v94, v95))
      {
        __break(1u);
      }

      else
      {
        v97 = v92;
        if (v89[3] >= v96)
        {
          if ((v88 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v89 = v158[0];
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v96, v88);
          v89 = v158[0];
          v98 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
          if ((v97 & 1) != (v99 & 1))
          {
            goto LABEL_75;
          }

          v93 = v98;
        }

        v127 = *(v86 + 16);
        *(v86 + 16) = v89;

        v128 = *(v86 + 16);
        if (v97)
        {
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v93, v90, v91, MEMORY[0x277D84F90], *(v86 + 16));
        }

        v91 = *(v128 + 56);
        v89 = *(v91 + 8 * v93);
        v129 = swift_isUniquelyReferenced_nonNull_native();
        *(v91 + 8 * v93) = v89;
        if (v129)
        {
LABEL_52:
          v131 = v89[2];
          v130 = v89[3];
          if (v131 >= v130 >> 1)
          {
            *(v91 + 8 * v93) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v130 > 1, v131 + 1, 1, v89);
          }

          outlined destroy of NodeDef.Implementation(v149);
          v132 = *(v91 + 8 * v93);
          *(v132 + 16) = v131 + 1;
          v106 = v132 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v131;
          v107 = v150;
          goto LABEL_55;
        }
      }

      v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
      *(v91 + 8 * v93) = v89;
      goto LABEL_52;
    }

    v108 = XMLNode.subscript.getter(0x6E6F6974636E7566, 0xE800000000000000);
    if (!v109)
    {

      return;
    }

    v110 = v153;
    v111 = v145;
    v112 = &v145[*(v153 + 20)];
    *v112 = v108;
    v112[1] = v109;
    type metadata accessor for NodeDef.Implementation.Kind(0);
    swift_storeEnumTagMultiPayload();
    *v111 = v82;
    v111[1] = v48;
    *(v111 + *(v110 + 24)) = v44;
    v58 = v138;
    outlined init with copy of NodeDef.Implementation(v111, v138);
    v113 = v143;
    v114 = *(v143 + 16);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v158[0] = *(v113 + 16);
    v116 = v158[0];
    *(v113 + 16) = 0x8000000000000000;
    v117 = v148;
    v118 = v152;
    v120 = specialized __RawDictionaryStorage.find<A>(_:)(v148, v152);
    v121 = v116[2];
    v122 = (v119 & 1) == 0;
    v123 = v121 + v122;
    if (__OFADD__(v121, v122))
    {
      __break(1u);
    }

    else
    {
      v124 = v119;
      if (v116[3] >= v123)
      {
        if ((v115 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v116 = v158[0];
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v123, v115);
        v116 = v158[0];
        v125 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v118);
        if ((v124 & 1) != (v126 & 1))
        {
          goto LABEL_75;
        }

        v120 = v125;
      }

      v133 = *(v113 + 16);
      *(v113 + 16) = v116;

      v134 = *(v113 + 16);
      if (v124)
      {
      }

      else
      {
        specialized _NativeDictionary._insert(at:key:value:)(v120, v117, v118, MEMORY[0x277D84F90], *(v113 + 16));
      }

      v115 = *(v134 + 56);
      v116 = *(v115 + 8 * v120);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      *(v115 + 8 * v120) = v116;
      if (v135)
      {
LABEL_64:
        v104 = v116[2];
        v136 = v116[3];
        if (v104 >= v136 >> 1)
        {
          *(v115 + 8 * v120) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v136 > 1, v104 + 1, 1, v116);
        }

        outlined destroy of NodeDef.Implementation(v111);
        v105 = *(v115 + 8 * v120);
        *(v105 + 16) = v104 + 1;
        goto LABEL_40;
      }
    }

    v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116[2] + 1, 1, v116);
    *(v115 + 8 * v120) = v116;
    goto LABEL_64;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_68:
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, logger);
  v74 = v152;

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  v77 = os_log_type_enabled(v75, v76);
  v78 = v148;
  if (v77)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v158[0] = v80;
    *v79 = 136315138;
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v74, v158);

    *(v79 + 4) = v81;
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x266773120](v80, -1, -1);
    MEMORY[0x266773120](v79, -1, -1);
  }

  else
  {
  }
}

void closure #6 in createGraph(_:nodeDefStore:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void **a7)
{
  v13 = *a1;
  v12 = a1[1];
  swift_getObjectType();
  v14 = (*(*(v12 + 8) + 16))();
  if (!v15)
  {
    _StringGuts.grow(_:)(32);
    MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F30460);
    v81[22] = v13;
    v81[23] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph10XMLElement_pMd, &_s11ShaderGraph10XMLElement_pMR);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v20 = 22;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v16 = v14;
  v17 = v15;
  v18 = v14 == 0x7061726765646F6ELL && v15 == 0xE900000000000068;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    XMLNode.subscript.getter(0x66656465646F6ELL, 0xE700000000000000);
    if (v19)
    {
LABEL_8:

      return;
    }

    createGraph(_:nodeDefStore:)(v82, v13, v12, a2, a3, a4);
    if (!v7)
    {
      v75 = v12;
      v77 = a7;
      v103 = v83;
      v21 = v84;
      v101 = v84;
      v102[0] = *(&v83 + 1);
      v99 = *(&v86 + 1);
      v100 = v86;
      v98 = *&v87[0];
      v22 = *(v84 + 16);
      v74 = v13;
      if (v22)
      {
        v23 = MEMORY[0x277D84F90];
        outlined init with copy of NodePersonality(&v103, v81);
        outlined init with copy of [Input](v102, v81, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v101, v81, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined init with copy of NodePersonality(&v100, v81);
        outlined init with copy of [Input](&v99, v81, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v98, v81, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v81[0] = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v24 = v81[0];
        v25 = (v21 + 56);
        do
        {
          v27 = *(v25 - 2);
          v26 = *(v25 - 1);
          v28 = *v25;
          v81[0] = v24;
          v29 = *(v24 + 16);
          v30 = *(v24 + 24);

          if (v29 >= v30 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v29 + 1, 1);
            v24 = v81[0];
          }

          *(v24 + 16) = v29 + 1;
          v31 = (v24 + 24 * v29);
          v31[4] = v26;
          v31[5] = v28;
          v31[6] = v27;
          v25 += 7;
          --v22;
        }

        while (v22);
      }

      else
      {
        outlined init with copy of NodePersonality(&v103, v81);
        outlined init with copy of [Input](v102, v81, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v101, v81, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined init with copy of NodePersonality(&v100, v81);
        outlined init with copy of [Input](&v99, v81, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v98, v81, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v24 = MEMORY[0x277D84F90];
      }

      v35 = v99;
      v36 = *(v99 + 16);
      v37 = MEMORY[0x277D84F90];
      if (v36)
      {
        v72 = v24;
        v81[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
        v37 = v81[0];
        v38 = (v35 + 56);
        do
        {
          v40 = *(v38 - 2);
          v39 = *(v38 - 1);
          v41 = *v38;
          v81[0] = v37;
          v43 = *(v37 + 16);
          v42 = *(v37 + 24);

          if (v43 >= v42 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
            v24 = v72;
            v37 = v81[0];
          }

          *(v37 + 16) = v43 + 1;
          v44 = (v37 + 24 * v43);
          v44[4] = v39;
          v44[5] = v41;
          v44[6] = v40;
          v38 += 7;
          --v36;
        }

        while (v36);
        v13 = v74;
      }

      v45 = swift_allocObject();
      v46 = v87[0];
      *(v45 + 144) = v86;
      *(v45 + 160) = v46;
      *(v45 + 169) = *(v87 + 9);
      v47 = v83;
      *(v45 + 80) = v82[4];
      *(v45 + 96) = v47;
      v48 = v85;
      *(v45 + 112) = v84;
      *(v45 + 128) = v48;
      v49 = v82[1];
      *(v45 + 16) = v82[0];
      *(v45 + 32) = v49;
      v50 = v82[3];
      *(v45 + 48) = v82[2];
      *(v45 + 64) = v50;
      outlined init with copy of UserGraph(v82, v81);
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v24, v37, v45 | 0xC000000000000000, &v88);
      v51 = *(&v88 + 1);
      v52 = v88;
      v53 = v89;
      v80 = v90;
      v69 = v91;
      v68 = v92;

      outlined destroy of NodePersonality(&v100);
      outlined destroy of [Input](&v99, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v98, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of NodePersonality(&v103);
      outlined destroy of [Input](v102, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v101, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of UserGraph(v82);
      v70 = v52;
      outlined copy of NodePersonality(v52);
      v73 = v51;

      v71 = v53;

      v12 = v75;
LABEL_38:
      v54._countAndFlagsBits = 1701667182;
      v54._object = 0xE400000000000000;
      v55 = XMLElement.getRequiredAttribute(_:)(v54);
      if (v56)
      {
        swift_unexpectedError();
        __break(1u);
      }

      else
      {
        v57 = *a6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = *a6;
        *a6 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, v55._countAndFlagsBits, v55._object, isUniquelyReferenced_nonNull_native);

        v59 = *a6;
        *a6 = v81[0];

        v60 = *v77;
        swift_unknownObjectRetain();
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *v77 = v60;
        v76 = v12;
        if ((v61 & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
          *v77 = v60;
        }

        v63 = v60[2];
        v62 = v60[3];
        v79 = v63 + 1;
        if (v63 >= v62 >> 1)
        {
          *v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v79, 1, v60);
        }

        outlined consume of ShaderGraphNode?(v70, v73);
        LOBYTE(v81[0]) = v68;
        v64 = *v77;
        v64[2] = v79;
        v65 = &v64[8 * v63];
        v65[4] = v13;
        v65[5] = v76;
        v65[6] = v70;
        v65[7] = v73;
        v65[8] = v71;
        v65[9] = v80;
        v65[10] = v69;
        *(v65 + 88) = v68;
      }
    }
  }

  else
  {
    v32 = v16 == 0x7475706E69 && v17 == 0xE500000000000000;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_8;
    }

    if (v16 == 0x74757074756FLL && v17 == 0xE600000000000000)
    {
      goto LABEL_8;
    }

    v77 = a7;
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      specialized NodeDefStore.createNode(for:in:)(v13, v12, a2, &v93);
      if (v7)
      {

        return;
      }

      v66 = *(&v93 + 1);
      v67 = v94;
      v80 = v95;
      v69 = v96;
      v70 = v93;
      v68 = v97;
      outlined copy of NodePersonality(v93);
      v73 = v66;

      v71 = v67;

      goto LABEL_38;
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLElement.getRequiredAttribute(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (!(*(v1 + 16))() || (v7 = v6, ObjectType = swift_getObjectType(), v2 = (*(v7 + 32))(ObjectType, v7), v3 = v9, swift_unknownObjectRelease(), !v3))
  {
    lazy protocol witness table accessor for type XMLElementErrors and conformance XMLElementErrors();
    swift_allocError();
    *v10 = countAndFlagsBits;
    v10[1] = object;
    swift_willThrow();
  }

  v11 = v2;
  v12 = v3;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

double UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  specialized UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)(a1, a2, a3, a4, a5, &v10);
  if (!v6)
  {
    v9 = v11[0];
    *a6 = v10;
    a6[1] = v9;
    result = *(v11 + 9);
    *(a6 + 25) = *(v11 + 9);
  }

  return result;
}

uint64_t static MaterialXDataType.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MaterialXDataType.Kind.CodingKeys()
{
  if (*v0)
  {
    result = 7628147;
  }

  else
  {
    result = 0x64656D616ELL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialXDataType.Kind.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7628147 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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