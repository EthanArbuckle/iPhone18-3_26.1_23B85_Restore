@interface UITableViewUpdateSupport
@end

@implementation UITableViewUpdateSupport

void __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_143(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = v5;
  if (v5)
  {
    if ((v5[16] & 2) != 0)
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      if (!v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:0];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v7 addObject:v6];
    }

    v11 = *(*(a1 + 48) + 8);
    if ((*(v11 + 24) & 1) == 0 && *(v6 + 32) == 100)
    {
      *(v11 + 24) = 1;
    }
  }

  _UIDataSourceUpdateFromUpdateItem(v6, a3);
}

uint64_t __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_3(uint64_t a1, unsigned int a2)
{
  v2 = [(UITableViewRowData *)*(a1 + 32) numberOfRowsBeforeSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

void __75___UITableViewUpdateSupport_Private___setupAnimationsForNewlyInsertedCells__block_invoke(uint64_t a1, unint64_t a2)
{
  v152 = [(UITableViewRowData *)*(*(a1 + 32) + 80) indexPathForRowAtGlobalRow:a2];
  v4 = [(UITableViewRowData *)*(*(a1 + 32) + 80) rectForGlobalRow:a2 heightCanBeGuessed:1];
  v150 = v6;
  v151 = v5;
  v149 = v7;
  v8 = *(*(a1 + 32) + 248);
  while (1)
  {
    v9 = v8;
    v10 = *(a1 + 32);
    v11 = v8-- < 1;
    if (v11)
    {
      break;
    }

    if ([(_UITableViewUpdateSupport *)v10 finalGlobalIndexForInitialGlobalIndex:v8]<= a2)
    {
      v10 = *(a1 + 32);
      break;
    }
  }

  v12 = v9;
  if (v9 < *(v10 + 248))
  {
    v12 = v9;
    do
    {
      if ([(_UITableViewUpdateSupport *)v10 finalGlobalIndexForInitialGlobalIndex:v12]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v12;
      v10 = *(a1 + 32);
    }

    while (v12 < *(v10 + 248));
  }

  v13 = [v152 section];
  if (v9 < 1)
  {
    if (v9 < 0)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = v42;
      v44 = *(a1 + 40);
      if (v44)
      {
        data_high = HIDWORD(v44->data);
        if (data_high > 3)
        {
          v44 = @"unknown";
        }

        else
        {
          v44 = off_1E7123B00[data_high];
        }
      }

      [v42 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UITableViewSupport.m" lineNumber:873 description:{@"Invalid prior old global row when computing beginning of old gap for %@ of row at index path %@", v44, *(a1 + 48)}];

      v39 = 0.0;
      goto LABEL_55;
    }

    goto LABEL_13;
  }

  v14 = v13;
  v15 = [(_UITableViewUpdateSupport *)*(a1 + 32) finalGlobalIndexForInitialGlobalIndex:v8];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v16 = [(UITableViewRowData *)*(*(a1 + 32) + 80) indexPathForRowAtGlobalRow:v15];
  v17 = [v16 section] == v14;

LABEL_14:
  v18 = *(a1 + 32);
  v19 = *(v18 + 248);
  if (v9 >= v19)
  {
    if (!v152)
    {
      v39 = 0.0;
      v40 = 0.0;
      v41 = v12 - 1;
      if (v12 < 1)
      {
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    if (*(a1 + 80) == 1)
    {
      v22 = [v152 section] + 1;
      while (1)
      {
        v23 = v22;
        v24 = *(a1 + 32);
        v25 = *(v24 + 240);
        if (v23 >= v25)
        {
          break;
        }

        v26 = [(_UITableViewUpdateSupport *)v24 initialSectionIndexForFinalSectionIndex:v23];
        v22 = v23 + 1;
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = *(a1 + 32);
          v25 = *(v24 + 240);
          break;
        }
      }

      v27 = *(v24 + 72);
      if (v23 >= v25)
      {
        v29 = [(UITableViewRowData *)*(v24 + 72) rectForTableFooterView];
      }

      else
      {
        v28 = [(_UITableViewUpdateSupport *)v24 initialSectionIndexForFinalSectionIndex:v23];
        v29 = [(UITableViewRowData *)v27 rectForHeaderInSection:v28 heightCanBeGuessed:1];
      }
    }

    else
    {
      v46 = *(v18 + 72);
      v47 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](v18, [v152 section]);
      v29 = [(UITableViewRowData *)v46 rectForFooterInSection:v47 heightCanBeGuessed:1];
    }

    MinY = CGRectGetMinY(*&v29);
    goto LABEL_54;
  }

  v20 = !v17;
  if (v9 < 1)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    MinY = [(_UITableViewUpdateSupport *)*(a1 + 32) _startOfRowAfterRow:v8 withRowData:*(v18 + 72)];
LABEL_54:
    v39 = MinY;
    goto LABEL_55;
  }

  v33 = [(UITableViewRowData *)*(v18 + 80) indexPathForRowAtGlobalRow:a2];
  v34 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](v18, [v33 section]);

  v35 = [(UITableViewRowData *)*(*(a1 + 32) + 72) indexPathForRowAtGlobalRow:v9];
  v36 = *(a1 + 32);
  if (v9 <= 0)
  {
    v37 = [(UITableViewRowData *)*(v36 + 80) indexPathForRowAtGlobalRow:?];
    v38 = [v37 section] - 1;
  }

  else
  {
    v37 = [(UITableViewRowData *)*(v36 + 72) indexPathForRowAtGlobalRow:v8];
    v38 = [v37 section];
  }

  if (v38 < [v35 section])
  {
    v48 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v38 + 1];

    v35 = v48;
  }

  if (v35)
  {
    v49 = [v35 section];
  }

  else
  {
    v49 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v34 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v34;
  }

  if (v50 == 0x7FFFFFFFFFFFFFFFLL || [v35 section] < v34 && objc_msgSend(v35, "row") >= 1)
  {
    v154.origin.x = [(UITableViewRowData *)*(*(a1 + 32) + 72) rectForGlobalRow:v9 heightCanBeGuessed:1];
    v51 = CGRectGetMinY(v154);
  }

  else
  {
    v51 = [(_UITableViewUpdateSupport *)*(a1 + 32) _startOfRowAfterHeaderInSection:v50 withRowData:*(*(a1 + 32) + 72)];
  }

  v39 = v51;

LABEL_55:
  v41 = v12 - 1;
  if (v12 >= 1)
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 248);
LABEL_57:
    if (v12 > v19)
    {
      v52 = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = v52;
      v54 = *(a1 + 40);
      if (v54)
      {
        v55 = HIDWORD(v54->data);
        if (v55 > 3)
        {
          v54 = @"unknown";
        }

        else
        {
          v54 = off_1E7123B00[v55];
        }
      }

      [v52 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UITableViewSupport.m" lineNumber:932 description:{@"Invalid subsequent old global row when computing end of old gap for %@ of row at index path %@", v54, *(a1 + 48)}];

      goto LABEL_70;
    }

    v155.origin.x = [(UITableViewRowData *)*(v18 + 72) rectForGlobalRow:v41 heightCanBeGuessed:1];
    MaxY = CGRectGetMinY(v155);
LABEL_73:
    v40 = MaxY;
    goto LABEL_74;
  }

  if (v152)
  {
    if (*(a1 + 80) == 1)
    {
      v56 = [v152 section];
      while (1)
      {
        v11 = v56-- < 1;
        if (v11)
        {
          break;
        }

        if ([(_UITableViewUpdateSupport *)*(a1 + 32) initialSectionIndexForFinalSectionIndex:v56]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          v57 = *(a1 + 32);
          v58 = [(_UITableViewUpdateSupport *)v57 initialSectionIndexForFinalSectionIndex:v56];
          MaxY = [(_UITableViewUpdateSupport *)v57 _startOfRowAfterFooterInSection:v58 withRowData:*(*(a1 + 32) + 72)];
          goto LABEL_73;
        }
      }

      v156.origin.x = [(UITableViewRowData *)*(*(a1 + 32) + 72) rectForTableHeaderView];
      MaxY = CGRectGetMaxY(v156);
    }

    else
    {
      v60 = *(a1 + 32);
      v61 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](v60, [v152 section]);
      MaxY = [(_UITableViewUpdateSupport *)v60 _startOfRowAfterHeaderInSection:v61 withRowData:*(*(a1 + 32) + 72)];
    }

    goto LABEL_73;
  }

LABEL_70:
  v40 = 0.0;
LABEL_74:
  if (v40 < v39)
  {
LABEL_126:
    v93 = v39;
    goto LABEL_127;
  }

  v18 = *(a1 + 32);
LABEL_76:
  if (v9 < 1)
  {
    v67 = 0;
    goto LABEL_85;
  }

  if (v9 <= *(v18 + 248))
  {
    v62 = [(_UITableViewUpdateSupport *)v18 finalGlobalIndexForInitialGlobalIndex:v8];
    v18 = *(a1 + 32);
    goto LABEL_84;
  }

  v62 = *(v18 + 256);
  if (v62 >= -1)
  {
LABEL_84:
    v67 = v62 + 1;
LABEL_85:
    if (v67 < *(v18 + 256))
    {
      v68 = [(UITableViewRowData *)*(v18 + 80) rectForGlobalRow:v67 heightCanBeGuessed:1];
LABEL_87:
      v72 = CGRectGetMinY(*&v68);
      goto LABEL_101;
    }

    v72 = v39;
    v73 = v152;
    if (v152)
    {
      if (*(a1 + 80) == 1)
      {
        v74 = [v152 section] + 1;
        while (1)
        {
          v75 = v74;
          v76 = *(a1 + 32);
          v77 = *(v76 + 232);
          if (v75 >= v77)
          {
            break;
          }

          v78 = [(_UITableViewUpdateSupport *)v76 initialSectionIndexForFinalSectionIndex:v75];
          v74 = v75 + 1;
          if (v78 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v76 = *(a1 + 32);
            v77 = *(v76 + 232);
            break;
          }
        }

        v79 = *(v76 + 80);
        if (v75 >= v77)
        {
          v68 = [(UITableViewRowData *)v79 rectForTableFooterView];
        }

        else
        {
          v68 = [(UITableViewRowData *)v79 rectForHeaderInSection:v75 heightCanBeGuessed:1];
        }

        goto LABEL_87;
      }

      v157.origin.x = -[UITableViewRowData rectForFooterInSection:heightCanBeGuessed:](*(v18 + 72), [v152 section], 1);
      v80 = CGRectGetMinY(v157);
      v73 = v152;
      v72 = v80;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_102;
    }

LABEL_110:
    v88 = v40;
    if (!v73)
    {
      goto LABEL_122;
    }

    if (*(a1 + 80) == 1)
    {
      v89 = [v152 section];
      while (1)
      {
        v11 = v89-- < 1;
        if (v11)
        {
          break;
        }

        if ([(_UITableViewUpdateSupport *)*(a1 + 32) initialSectionIndexForFinalSectionIndex:v89]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          v90 = [(_UITableViewUpdateSupport *)*(a1 + 32) _startOfRowAfterFooterInSection:v89 withRowData:*(*(a1 + 32) + 80)];
          goto LABEL_121;
        }
      }

      v159.origin.x = [(UITableViewRowData *)*(*(a1 + 32) + 80) rectForTableHeaderView];
      v90 = CGRectGetMaxY(v159);
    }

    else
    {
      v90 = -[_UITableViewUpdateSupport _startOfRowAfterHeaderInSection:withRowData:](*(a1 + 32), [v152 section], *(*(a1 + 32) + 80));
    }

    goto LABEL_121;
  }

  v63 = [MEMORY[0x1E696AAA8] currentHandler];
  v64 = v63;
  v65 = *(a1 + 40);
  if (v65)
  {
    v66 = HIDWORD(v65->data);
    if (v66 > 3)
    {
      v65 = @"unknown";
    }

    else
    {
      v65 = off_1E7123B00[v66];
    }
  }

  [v63 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UITableViewSupport.m" lineNumber:954 description:{@"Invalid prior new global row when computing beginning of new gap for %@ of row at index path %@", v65, *(a1 + 48)}];

  v72 = v39;
LABEL_101:
  v73 = v152;
  if (v12 < 0)
  {
    goto LABEL_110;
  }

LABEL_102:
  v81 = *(a1 + 32);
  if (v12 >= *(v81 + 248))
  {
    v82 = *(v81 + 256);
  }

  else
  {
    v82 = [(_UITableViewUpdateSupport *)v81 finalGlobalIndexForInitialGlobalIndex:v12];
  }

  v73 = v152;
  if (v82 < 1)
  {
    goto LABEL_110;
  }

  v83 = *(a1 + 32);
  if (v82 <= *(v83 + 256))
  {
    v158.origin.x = [(UITableViewRowData *)*(v83 + 80) rectForGlobalRow:1 heightCanBeGuessed:?];
    v90 = CGRectGetMinY(v158);
LABEL_121:
    v88 = v90;
    goto LABEL_122;
  }

  v84 = [MEMORY[0x1E696AAA8] currentHandler];
  v85 = v84;
  v86 = *(a1 + 40);
  if (v86)
  {
    v87 = HIDWORD(v86->data);
    if (v87 > 3)
    {
      v86 = @"unknown";
    }

    else
    {
      v86 = off_1E7123B00[v87];
    }
  }

  [v84 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UITableViewSupport.m" lineNumber:1020 description:{@"Invalid subsequent new global row when computing end of new gap for %@ of row at index path %@", v86, *(a1 + 48)}];

  v88 = v40;
LABEL_122:
  if (v40 <= v39)
  {
    goto LABEL_126;
  }

  v160.origin.x = [(UITableViewRowData *)*(*(a1 + 32) + 80) rectForGlobalRow:a2 heightCanBeGuessed:1];
  v91 = CGRectGetMinY(v160);
  v92 = 0.0;
  if (v88 > v72)
  {
    v92 = (v91 - v72) / (v88 - v72);
  }

  v93 = v39 + UIPixelBoundaryOffset(0, (v40 - v39) * v92, *(a1 + 72));
LABEL_127:
  v94 = *(a1 + 40);
  if (!v94)
  {
    goto LABEL_138;
  }

  v95 = *(v94 + 32);
  if (v95 <= 2)
  {
    if (v95 == 1)
    {
      [*(a1 + 56) bounds];
      v101 = v4 + v104;
      goto LABEL_146;
    }

    if (v95 == 2)
    {
      [*(a1 + 56) bounds];
      v101 = v4 - v100;
LABEL_146:
      v39 = v93;
      goto LABEL_165;
    }

LABEL_138:
    v39 = v93;
LABEL_164:
    v101 = v4;
    goto LABEL_165;
  }

  if (v95 == 3)
  {
    if (v39 <= v40)
    {
      v105 = *(*(a1 + 32) + 80);
      v106 = [v152 row];
      v107 = [v152 section];
      if (v105)
      {
        v108 = [(UITableViewRowData *)v105 heightForRow:v106 inSection:v107 canGuess:1 adjustForReorderedRow:1];
      }

      else
      {
        v108 = 0.0;
      }

      v39 = v39 - v108;
      goto LABEL_164;
    }

    if (![v152 row])
    {
      v113 = *(*(a1 + 32) + 80);
      v114 = [v152 row];
      v115 = [v152 section];
      if (v113)
      {
        v116 = [(UITableViewRowData *)v113 heightForRow:v114 inSection:v115 canGuess:1 adjustForReorderedRow:1];
      }

      else
      {
        v116 = 0.0;
      }

      v39 = v40 - v116;
      goto LABEL_164;
    }

    goto LABEL_141;
  }

  if (v95 != 4)
  {
    if (v95 == 6)
    {
      v96 = *(*(a1 + 32) + 80);
      v97 = [v152 row];
      v98 = [v152 section];
      if (v96)
      {
        v99 = [(UITableViewRowData *)v96 heightForRow:v97 inSection:v98 canGuess:1 adjustForReorderedRow:1]* 0.5;
      }

      else
      {
        v99 = 0.0;
      }

      v39 = v93 - UIPixelBoundaryOffset(0, v99, *(a1 + 72));
      goto LABEL_164;
    }

    goto LABEL_138;
  }

  if (v39 <= v40)
  {
    if (v39 != v40)
    {
      v161.origin.x = [(UITableViewRowData *)*(*(a1 + 32) + 72) rectForGlobalRow:v41 heightCanBeGuessed:1];
      v117 = v40 + CGRectGetHeight(v161);
      v118 = *(*(a1 + 32) + 80);
      v119 = [v152 row];
      v120 = [v152 section];
      if (v118)
      {
        v121 = [(UITableViewRowData *)v118 heightForRow:v119 inSection:v120 canGuess:1 adjustForReorderedRow:1];
      }

      else
      {
        v121 = 0.0;
      }

      v39 = v117 + v121;
      goto LABEL_164;
    }

    if ([v152 row] || objc_msgSend(*(a1 + 48), "section") | v12)
    {
LABEL_154:
      v109 = *(*(a1 + 32) + 80);
      v110 = [v152 row];
      v111 = [v152 section];
      if (v109)
      {
        v112 = [(UITableViewRowData *)v109 heightForRow:v110 inSection:v111 canGuess:1 adjustForReorderedRow:1];
      }

      else
      {
        v112 = 0.0;
      }

      v39 = v40 + v112;
      goto LABEL_164;
    }

LABEL_141:
    v39 = v40;
    goto LABEL_164;
  }

  v102 = [v152 row];
  v103 = -[UITableViewRowData numberOfRowsInSection:](*(*(a1 + 32) + 80), [*(a1 + 48) section]);
  v101 = v4;
  if (v102 == v103 - 1)
  {
    goto LABEL_154;
  }

LABEL_165:
  v148 = v101;
  v122 = v39;
  v123 = v150;
  v124 = v149;
  v165.origin.x = v4;
  v165.origin.y = v151;
  v165.size.width = v150;
  v165.size.height = v149;
  v162 = CGRectUnion(*&v101, v165);
  x = v162.origin.x;
  y = v162.origin.y;
  width = v162.size.width;
  v162.origin.x = v4;
  height = v162.size.height;
  v129 = v162.origin.x;
  v162.origin.y = v151;
  v162.size.width = v150;
  v162.size.height = v149;
  v130 = CGRectIntersectsRect(v162, *(*(a1 + 32) + 160));
  v163.origin.x = x;
  v163.origin.y = y;
  v163.size.width = width;
  v163.size.height = height;
  if (CGRectIntersectsRect(v163, *(*(a1 + 32) + 192)) && v130)
  {
    v132 = [*(a1 + 56) _createPreparedCellForGlobalRow:a2 willDisplay:1];
    if (*(*(*(a1 + 32) + 264) + 8 * a2))
    {
      v143 = [MEMORY[0x1E696AAA8] currentHandler];
      v144 = *(a1 + 64);
      v145 = *(a1 + 32);
      v146 = [(_UITableViewUpdateSupport *)v145 _collectionViewUpdateItems];
      [v143 handleFailureInMethod:v144 object:v145 file:@"UITableViewSupport.m" lineNumber:1107 description:{@"Cannot animate inserted cell because it already has an animation. Updates: %@; Cell: %@", v146, *(*(*(a1 + 32) + 264) + 8 * a2)}];
    }

    if (!v132)
    {
      v147 = [MEMORY[0x1E696AAA8] currentHandler];
      [v147 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UITableViewSupport.m" lineNumber:1108 description:@"Missing inserted cell to setup animations"];
    }

    objc_storeStrong((*(*(a1 + 32) + 264) + 8 * a2), v132);
    v133 = *(a1 + 40);
    if (!v133 || (v134 = *(v133 + 32), v134 <= 6) && ((1 << v134) & 0x47) != 0)
    {
      [v132 setAlpha:0.0];
    }

    [v132 setFrame:{v148, v39, v150, v149}];
    v164.origin.x = v129;
    v164.origin.y = v151;
    v164.size.width = v150;
    v164.size.height = v149;
    v135 = CGRectIntersectsRect(v164, *(*(a1 + 32) + 160));
    v136 = [*(a1 + 56) _isEditingRowAtIndexPath:v152];
    v137 = [[UIViewAnimation alloc] initWithView:v132 indexPath:v152 viewType:1 endRect:0 endAlpha:0 startFraction:!v135 endFraction:v136 curve:v129 animateFromCurrentPosition:v151 shouldDeleteAfterAnimation:v150 editing:v149, 1.0, 0.0, 1.0];
    [*(*(a1 + 32) + 320) addObject:v137];
    v138 = *(a1 + 40);
    if (v138 && v137 && *(v138 + 32) == 5)
    {
      *(v137 + 11) = 0;
    }

    if (v136 && ([*(a1 + 56) _wasEditing] & 1) == 0)
    {
      [v132 setEditing:0];
    }

    v139 = *(a1 + 40);
    if (v139)
    {
      v140 = *(v139 + 32);
    }

    else
    {
      v140 = 0;
    }

    [v132 _animateFloatingSeparatorForInsertion:1 withRowAnimation:v140];
    v141 = *(a1 + 40);
    if (v141)
    {
      v142 = *(v141 + 32);
    }

    else
    {
      v142 = 0;
    }

    [v132 _animateInnerShadowForInsertion:1 withRowAnimation:v142];
    [*(a1 + 56) _addContentSubview:v132 atBack:1];
  }
}

void __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_2_146(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 328);
  v8[0] = @"Section";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v8[1] = @"UpdateItem";
  v9[0] = v5;
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v4 addObject:v7];
}

uint64_t __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = [(UITableViewRowData *)*(a1 + 32) numberOfRowsInSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

uint64_t __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = [(UITableViewRowData *)*(a1 + 32) numberOfRowsBeforeSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

void __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_3_150(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 336);
  v8[0] = @"Section";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v8[1] = @"UpdateItem";
  v9[0] = v5;
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v4 addObject:v7];
}

uint64_t __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_4(uint64_t a1, unsigned int a2)
{
  v2 = [(UITableViewRowData *)*(a1 + 32) numberOfRowsInSection:a2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    if (!HIDWORD(v2))
    {
      return v3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v3}];
  }

  return 0xFFFFFFFFLL;
}

BOOL __50___UITableViewUpdateSupport_Private___computeGaps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 20);
    if (a3)
    {
LABEL_3:
      v7 = *(a3 + 20);
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 != v7)
  {
    return 0;
  }

  if (!a2)
  {
    v8 = 0;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_35:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = *(a2 + 24);
  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_7:
  v9 = *(a3 + 24);
LABEL_8:
  v10 = [v8 section];
  if (v10 == [v9 section])
  {
    v11 = [v8 row];
    v12 = [v9 row];
    v13 = v11 - v12;
    if (v11 - v12 < 0)
    {
      v13 = v12 - v11;
    }

    if (v13 == 1)
    {
      return 1;
    }
  }

  v15 = [a2 compareIndexPaths:a3];
  if (v15 == -1)
  {
    v16 = a3;
  }

  else
  {
    v16 = a2;
  }

  if (v15 == -1)
  {
    v17 = a2;
  }

  else
  {
    v17 = a3;
  }

  if (a2)
  {
    v18 = 72;
    if (!*(a2 + 20))
    {
      v18 = 80;
    }
  }

  else
  {
    v18 = 80;
  }

  v19 = *(*(a1 + 32) + v18);
  if (!v17)
  {
    v20 = 0;
    goto LABEL_25;
  }

  v20 = *(v17 + 24);
  if ((*(v17 + 16) & 1) == 0)
  {
LABEL_25:
    v21 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](v19, [v20 row], objc_msgSend(v20, "section"), 1);
    goto LABEL_27;
  }

  v21 = -[UITableViewRowData rectForSection:](v19, [v20 section]);
LABEL_27:
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  if (v16)
  {
    v29 = *(v16 + 24);
    if (*(v16 + 16))
    {
      v30 = -[UITableViewRowData rectForSection:](v19, [*(v16 + 24) section]);
      goto LABEL_31;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](v19, [v29 row], objc_msgSend(v29, "section"), 1);
LABEL_31:
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v39.origin.x = v25;
  v39.origin.y = v26;
  v39.size.width = v27;
  v39.size.height = v28;
  MaxY = CGRectGetMaxY(v39);
  v40.origin.x = v34;
  v40.origin.y = v35;
  v40.size.width = v36;
  v40.size.height = v37;
  return MaxY == CGRectGetMinY(v40);
}

id __50___UITableViewUpdateSupport_Private___computeGaps__block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a2 row];
  v5 = [a2 section];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if (v11)
        {
          if (*(v11 + 20) == 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          v13 = *(v11 + 24);
          v14 = [v13 section];
          v15 = *(v11 + 16) & 1;
        }

        else
        {
          v14 = [0 section];
          v13 = 0;
          v15 = 0;
          v12 = -1;
        }

        if ((v15 & (v14 < v5)) != 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = 0;
        }

        v5 += v16;
        if (v14 == v5)
        {
          if ([v13 row] >= v4)
          {
            v17 = 0;
          }

          else
          {
            v17 = v12;
          }

          v4 += v17;
        }

        ++v10;
      }

      while (v8 != v10);
      v18 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:v5];

  return v19;
}

@end