uint64_t SUUIStatefulError.body(_:platform:download:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v694 = v2;
  v696 = v3;
  v695 = v4;
  v697 = v1;
  v686 = "Assertion failed";
  v687 = "SoftwareUpdateUIKit/Localization.swift";
  v688 = "Fatal error";
  v689 = "Paramenter is the error code";
  v1019 = 0;
  v1018 = 0;
  v1017 = 0;
  v1016 = 0;
  v1015 = 0;
  v1008 = 0;
  v936 = 0;
  v937 = 0;
  v923 = 0;
  v924 = 0;
  v910 = 0;
  v911 = 0;
  v897 = 0;
  v898 = 0;
  v892 = 0;
  v893 = 0;
  v879 = 0;
  v880 = 0;
  v866 = 0;
  v867 = 0;
  v853 = 0;
  v854 = 0;
  v848 = 0;
  v849 = 0;
  v803 = 0;
  v804 = 0;
  v708 = 0;
  v690 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v691 = &v168 - v690;
  v692 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v708);
  v693 = &v168 - v692;
  v698 = sub_26B079DC0();
  v699 = *(v698 - 8);
  v700 = v698 - 8;
  v701 = (*(v699 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v697);
  v702 = &v168 - v701;
  v703 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v704 = &v168 - v703;
  v705 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v706 = &v168 - v705;
  v1019 = v10;
  v1018 = v11;
  v1017 = v12;
  v1016 = v13;
  v707 = [v13 bodyTokenWithStatefulDescriptor:v9 download:?];
  v1015 = v707;
  MEMORY[0x277D82BE0](v707);
  MEMORY[0x277D82BE0](v707);
  v14 = [v707 type];
  v711 = &v1014;
  v1014 = v14;
  v709 = &v1013;
  v1013 = 1;
  v710 = type metadata accessor for SUUIStatefulErrorTokenType();
  sub_26B034E5C();
  if ((sub_26B07A790() & 1) == 0)
  {
    v676 = 23;
    v15 = sub_26B07A740();
    v683 = &v1011;
    v1011 = v15;
    v1012 = v16;
    v681 = 1;
    v17 = sub_26B079D00();
    v677 = v18;
    MEMORY[0x26D66D910](v17);

    v679 = &v1010;
    v1010 = v707;
    v680 = 0;
    v678 = sub_26B034EDC();
    sub_26B034F40();
    sub_26B07A710();
    v19 = sub_26B079D00();
    v682 = v20;
    MEMORY[0x26D66D910](v19);

    v685 = v1011;
    v684 = v1012;
    sub_26B078640();
    sub_26AEB9F6C();
    sub_26B079EB0();
    sub_26B07A660();
    __break(1u);
  }

  MEMORY[0x277D82BD8](v707);
  MEMORY[0x277D82BD8](v707);
  MEMORY[0x277D82BE0](v694);
  if (v694)
  {
    v675 = v694;
    v671 = v694;
    v672 = [v694 descriptor];
    MEMORY[0x277D82BD8](v671);
    swift_getObjectType();
    v673 = [v672 isSplatUpdate];
    swift_unknownObjectRelease();
    v674 = v673;
  }

  else
  {
    v674 = 2;
  }

  v1009 = v674;
  if (v674 == 2)
  {
    v670 = 0;
  }

  else
  {
    v670 = v1009;
  }

  v668 = v670;
  v1008 = v670 & 1;
  v669 = [v707 body];
  if (v669 > 0x1E)
  {
    v169 = sub_26B079D00();
    v170 = v166;
    MEMORY[0x277D82BD8](v707);
    v655 = v169;
    v656 = v170;
  }

  else
  {
    switch(v669)
    {
      case 1uLL:
        if (v668)
        {
          v647 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v648 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v648);
          sub_26AEFB5C4();
          v719 = 0;
          v720 = 0;
          v721 = 0;
          v722 = v647 & 1;
        }

        else
        {
          v649 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v650 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v650);
          sub_26AEFB5C4();
          v716[1] = 0;
          v716[2] = 0;
          v717 = 0;
          v718 = v649 & 1;
        }

        v651 = sub_26B079E40();
        v652 = v25;
        v646 = v25;
        v645 = v651;
        MEMORY[0x277D82BD8](v707);
        v655 = v645;
        v656 = v646;
        return v655;
      case 2uLL:
        if (sub_26B0784F0())
        {
          v641 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v642 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v642);
          sub_26AEFB5C4();
          v723 = 0;
          v724 = 0;
          v725 = 0;
          v726 = v641 & 1;
        }

        else
        {
          v639 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v640 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v640);
          sub_26AEFB5C4();
          v727 = 0;
          v728 = 0;
          v729 = 0;
          v730 = v639 & 1;
        }

        v643 = sub_26B079E40();
        v644 = v26;
        v638 = v26;
        v637 = v643;
        MEMORY[0x277D82BD8](v707);
        v655 = v637;
        v656 = v638;
        return v655;
      case 3uLL:
        if (sub_26B0784F0())
        {
          if (v668)
          {
            v631 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v632 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v632);
            sub_26AEFB5C4();
            v735 = 0;
            v736 = 0;
            v737 = 0;
            v738 = v631 & 1;
          }

          else
          {
            v633 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v634 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v634);
            sub_26AEFB5C4();
            v731 = 0;
            v732 = 0;
            v733 = 0;
            v734 = v633 & 1;
          }

          v635 = sub_26B079E40();
          v636 = v27;
          v630 = v27;
          v629 = v635;
          MEMORY[0x277D82BD8](v707);
          v655 = v629;
          v656 = v630;
        }

        else
        {
          if (v668)
          {
            v623 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v624 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v624);
            sub_26AEFB5C4();
            v743 = 0;
            v744 = 0;
            v745 = 0;
            v746 = v623 & 1;
          }

          else
          {
            v625 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v626 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v626);
            sub_26AEFB5C4();
            v739 = 0;
            v740 = 0;
            v741 = 0;
            v742 = v625 & 1;
          }

          v627 = sub_26B079E40();
          v628 = v28;
          v622 = v28;
          v621 = v627;
          MEMORY[0x277D82BD8](v707);
          v655 = v621;
          v656 = v622;
        }

        return v655;
      case 4uLL:
        v617 = 1;
        sub_26B079D00();
        sub_26B079D80();
        v618 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v618);
        sub_26AEFB5C4();
        v747 = 0;
        v748 = 0;
        v749 = 0;
        v750 = v617 & 1;
        v619 = sub_26B079E40();
        v620 = v29;
        MEMORY[0x277D82BD8](v707);
        v655 = v619;
        v656 = v620;
        return v655;
      case 5uLL:
        v613 = 1;
        sub_26B079D00();
        sub_26B079D80();
        v614 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v614);
        sub_26AEFB5C4();
        v751 = 0;
        v752 = 0;
        v753 = 0;
        v754 = v613 & 1;
        v615 = sub_26B079E40();
        v616 = v30;
        MEMORY[0x277D82BD8](v707);
        v655 = v615;
        v656 = v616;
        return v655;
      case 6uLL:
        if (sub_26B0784F0())
        {
          v609 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v610 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v610);
          sub_26AEFB5C4();
          v755 = 0;
          v756 = 0;
          v757 = 0;
          v758 = v609 & 1;
          v611 = sub_26B079E40();
          v612 = v31;
          MEMORY[0x277D82BD8](v707);
          v655 = v611;
          v656 = v612;
        }

        else
        {
          v605 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v606 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v606);
          sub_26AEFB5C4();
          v759 = 0;
          v760 = 0;
          v761 = 0;
          v762 = v605 & 1;
          v607 = sub_26B079E40();
          v608 = v32;
          MEMORY[0x277D82BD8](v707);
          v655 = v607;
          v656 = v608;
        }

        return v655;
      case 7uLL:
        if (sub_26B0784F0())
        {
          if (v668)
          {
            v599 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v600 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v600);
            sub_26AEFB5C4();
            v767 = 0;
            v768 = 0;
            v769 = 0;
            v770 = v599 & 1;
          }

          else
          {
            v601 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v602 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v602);
            sub_26AEFB5C4();
            v763 = 0;
            v764 = 0;
            v765 = 0;
            v766 = v601 & 1;
          }

          v603 = sub_26B079E40();
          v604 = v33;
          v598 = v33;
          v597 = v603;
          MEMORY[0x277D82BD8](v707);
          v655 = v597;
          v656 = v598;
        }

        else
        {
          if (v668)
          {
            v591 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v592 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v592);
            sub_26AEFB5C4();
            v775 = 0;
            v776 = 0;
            v777 = 0;
            v778 = v591 & 1;
          }

          else
          {
            v593 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v594 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v594);
            sub_26AEFB5C4();
            v771 = 0;
            v772 = 0;
            v773 = 0;
            v774 = v593 & 1;
          }

          v595 = sub_26B079E40();
          v596 = v34;
          v590 = v34;
          v589 = v595;
          MEMORY[0x277D82BD8](v707);
          v655 = v589;
          v656 = v590;
        }

        return v655;
      case 8uLL:
        if (sub_26B0784F0())
        {
          if (v668)
          {
            v583 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v584 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v584);
            sub_26AEFB5C4();
            v783 = 0;
            v784 = 0;
            v785 = 0;
            v786 = v583 & 1;
          }

          else
          {
            v585 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v586 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v586);
            sub_26AEFB5C4();
            v779 = 0;
            v780 = 0;
            v781 = 0;
            v782 = v585 & 1;
          }

          v587 = sub_26B079E40();
          v588 = v35;
          v582 = v35;
          v581 = v587;
          MEMORY[0x277D82BD8](v707);
          v655 = v581;
          v656 = v582;
        }

        else
        {
          if (v668)
          {
            v575 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v576 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v576);
            sub_26AEFB5C4();
            v791 = 0;
            v792 = 0;
            v793 = 0;
            v794 = v575 & 1;
          }

          else
          {
            v577 = 1;
            sub_26B079D00();
            sub_26B079D80();
            v578 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v578);
            sub_26AEFB5C4();
            v787 = 0;
            v788 = 0;
            v789 = 0;
            v790 = v577 & 1;
          }

          v579 = sub_26B079E40();
          v580 = v36;
          v574 = v36;
          v573 = v579;
          MEMORY[0x277D82BD8](v707);
          v655 = v573;
          v656 = v574;
        }

        return v655;
      case 9uLL:
        v571 = sub_26B034EDC();
        v572 = [v707 formatParameters];
        if (v572)
        {
          v570 = v572;
          v567 = v572;
          v568 = sub_26B079C70();
          MEMORY[0x277D82BD8](v567);
          v569 = v568;
        }

        else
        {
          v569 = 0;
        }

        v564 = v569;
        v565 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v569);
        v566 = v37;

        if (!v566)
        {
          MEMORY[0x277D82BE0](v707);
          v43 = sub_26B07A740();
          v545 = &v806;
          v806 = v43;
          v807 = v44;
          v543 = 1;
          v45 = sub_26B079D00();
          v541 = v46;
          MEMORY[0x26D66D910](v45);

          v542 = &v805;
          v805 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v47 = sub_26B079D00();
          v544 = v48;
          MEMORY[0x26D66D910](v47);

          v547 = v806;
          v546 = v807;
          sub_26B078640();
          sub_26AEB9F6C();
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
          goto LABEL_63;
        }

        v562 = v565;
        v563 = v566;
        v560 = v566;
        v561 = v565;
        v803 = v565;
        v804 = v566;
        if (v668)
        {
          sub_26B079DB0();
          v552 = 1;
          sub_26B079D00();
          v550 = v41;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00();
          v551 = v42;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v553 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v553);
          sub_26AEFB5C4();
          v799 = 0;
          v800 = 0;
          v801 = 0;
          v802 = v552 & 1;
        }

        else
        {
          sub_26B079DB0();
          v556 = 1;
          sub_26B079D00();
          v554 = v38;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00();
          v555 = v39;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v557 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v557);
          sub_26AEFB5C4();
          v795 = 0;
          v796 = 0;
          v797 = 0;
          v798 = v556 & 1;
        }

        v558 = sub_26B079E40();
        v559 = v40;
        v549 = v40;
        v548 = v558;

        MEMORY[0x277D82BD8](v707);
        v655 = v548;
        v656 = v549;
        return v655;
      case 0xAuLL:
        if (v668)
        {
          v527 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v528 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v528);
          sub_26AEFB5C4();
          v820 = 0;
          v821 = 0;
          v822 = 0;
          v823 = v527 & 1;
        }

        else
        {
          v529 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v530 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v530);
          sub_26AEFB5C4();
          v816 = 0;
          v817 = 0;
          v818 = 0;
          v819 = v529 & 1;
        }

        v531 = sub_26B079E40();
        v532 = v50;
        v526 = v50;
        v525 = v531;
        MEMORY[0x277D82BD8](v707);
        v655 = v525;
        v656 = v526;
        return v655;
      case 0xBuLL:
        if (v668)
        {
          v519 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v520 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v520);
          sub_26AEFB5C4();
          v828 = 0;
          v829 = 0;
          v830 = 0;
          v831 = v519 & 1;
        }

        else
        {
          v521 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v522 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v522);
          sub_26AEFB5C4();
          v824 = 0;
          v825 = 0;
          v826 = 0;
          v827 = v521 & 1;
        }

        v523 = sub_26B079E40();
        v524 = v51;
        v518 = v51;
        v517 = v523;
        MEMORY[0x277D82BD8](v707);
        v655 = v517;
        v656 = v518;
        return v655;
      case 0xCuLL:
        if (v668)
        {
          v511 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v512 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v512);
          sub_26AEFB5C4();
          v836 = 0;
          v837 = 0;
          v838 = 0;
          v839 = v511 & 1;
        }

        else
        {
          v513 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v514 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v514);
          sub_26AEFB5C4();
          v832 = 0;
          v833 = 0;
          v834 = 0;
          v835 = v513 & 1;
        }

        v515 = sub_26B079E40();
        v516 = v52;
        v510 = v52;
        v509 = v515;
        MEMORY[0x277D82BD8](v707);
        v655 = v509;
        v656 = v510;
        return v655;
      case 0xDuLL:
        v507 = sub_26B034EDC();
        v508 = [v707 formatParameters];
        if (v508)
        {
          v506 = v508;
          v503 = v508;
          v504 = sub_26B079C70();
          MEMORY[0x277D82BD8](v503);
          v505 = v504;
        }

        else
        {
          v505 = 0;
        }

        v500 = v505;
        v501 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v505);
        v502 = v53;

        if (!v502)
        {
          goto LABEL_92;
        }

        v498 = v501;
        v499 = v502;
        v495 = v502;
        v496 = v501;
        v853 = v501;
        v854 = v502;
        v497 = [v707 formatParameters];
        if (v497)
        {
          v494 = v497;
          v491 = v497;
          v492 = sub_26B079C70();
          MEMORY[0x277D82BD8](v491);
          v493 = v492;
        }

        else
        {
          v493 = 0;
        }

        v488 = v493;
        v489 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v493);
        v490 = v54;

        if (!v490)
        {
          MEMORY[0x277D82BE0](v707);
          v62 = sub_26B07A740();
          v467 = &v851;
          v851 = v62;
          v852 = v63;
          v465 = 1;
          v64 = sub_26B079D00();
          v463 = v65;
          MEMORY[0x26D66D910](v64);

          v464 = &v850;
          v850 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v66 = sub_26B079D00();
          v466 = v67;
          MEMORY[0x26D66D910](v66);

          v469 = v851;
          v468 = v852;
          sub_26B078640();
          sub_26AEB9F6C();
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
LABEL_92:
          MEMORY[0x277D82BE0](v707);
          v68 = sub_26B07A740();
          v460 = &v856;
          v856 = v68;
          v857 = v69;
          v458 = 1;
          v70 = sub_26B079D00();
          v456 = v71;
          MEMORY[0x26D66D910](v70);

          v457 = &v855;
          v855 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v72 = sub_26B079D00();
          v459 = v73;
          MEMORY[0x26D66D910](v72);

          v462 = v856;
          v461 = v857;
          sub_26B078640();
          sub_26AEB9F6C();
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
          goto LABEL_93;
        }

        v486 = v489;
        v487 = v490;
        v484 = v490;
        v485 = v489;
        v848 = v489;
        v849 = v490;
        if (v668)
        {
          sub_26B079DB0();
          v475 = 1;
          sub_26B079D00();
          v472 = v59;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00();
          v473 = v60;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00();
          v474 = v61;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v476 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v476);
          sub_26AEFB5C4();
          v844 = 0;
          v845 = 0;
          v846 = 0;
          v847 = v475 & 1;
        }

        else
        {
          sub_26B079DB0();
          v480 = 1;
          sub_26B079D00();
          v477 = v55;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00();
          v478 = v56;
          sub_26B079DA0();

          sub_26B079D90();
          sub_26B079D00();
          v479 = v57;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v481 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v481);
          sub_26AEFB5C4();
          v840 = 0;
          v841 = 0;
          v842 = 0;
          v843 = v480 & 1;
        }

        v482 = sub_26B079E40();
        v483 = v58;
        v471 = v58;
        v470 = v482;

        MEMORY[0x277D82BD8](v707);
        v655 = v470;
        v656 = v471;
        return v655;
      case 0xEuLL:
LABEL_93:
        v454 = sub_26B034EDC();
        v455 = [v707 formatParameters];
        if (v455)
        {
          v453 = v455;
          v450 = v455;
          v451 = sub_26B079C70();
          MEMORY[0x277D82BD8](v450);
          v452 = v451;
        }

        else
        {
          v452 = 0;
        }

        v447 = v452;
        v448 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v452);
        v449 = v74;

        if (v449)
        {
          v445 = v448;
          v446 = v449;
          v443 = v449;
          v444 = v448;
          v866 = v448;
          v867 = v449;
          if (v668)
          {
            sub_26B079DB0();
            v435 = 1;
            sub_26B079D00();
            v433 = v78;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v434 = v79;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v436 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v436);
            sub_26AEFB5C4();
            v862 = 0;
            v863 = 0;
            v864 = 0;
            v865 = v435 & 1;
          }

          else
          {
            sub_26B079DB0();
            v439 = 1;
            sub_26B079D00();
            v437 = v75;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v438 = v76;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v440 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v440);
            sub_26AEFB5C4();
            v858 = 0;
            v859 = 0;
            v860 = 0;
            v861 = v439 & 1;
          }

          v441 = sub_26B079E40();
          v442 = v77;
          v432 = v77;
          v431 = v441;

          MEMORY[0x277D82BD8](v707);
          v655 = v431;
          v656 = v432;
          return v655;
        }

        MEMORY[0x277D82BE0](v707);
        v80 = sub_26B07A740();
        v428 = &v869;
        v869 = v80;
        v870 = v81;
        v426 = 1;
        v82 = sub_26B079D00();
        v424 = v83;
        MEMORY[0x26D66D910](v82);

        v425 = &v868;
        v868 = v707;
        sub_26B034F40();
        sub_26B07A710();
        v84 = sub_26B079D00();
        v427 = v85;
        MEMORY[0x26D66D910](v84);

        v430 = v869;
        v429 = v870;
        sub_26B078640();
        sub_26AEB9F6C();
        sub_26B079EB0();
        sub_26B07A660();
        __break(1u);
LABEL_102:
        v422 = sub_26B034EDC();
        v423 = [v707 formatParameters];
        if (v423)
        {
          v421 = v423;
          v418 = v423;
          v419 = sub_26B079C70();
          MEMORY[0x277D82BD8](v418);
          v420 = v419;
        }

        else
        {
          v420 = 0;
        }

        v415 = v420;
        v416 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v420);
        v417 = v86;

        if (v417)
        {
          v413 = v416;
          v414 = v417;
          v411 = v417;
          v412 = v416;
          v879 = v416;
          v880 = v417;
          if (v668)
          {
            sub_26B079DB0();
            v403 = 1;
            sub_26B079D00();
            v401 = v90;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v402 = v91;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v404 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v404);
            sub_26AEFB5C4();
            v875 = 0;
            v876 = 0;
            v877 = 0;
            v878 = v403 & 1;
          }

          else
          {
            sub_26B079DB0();
            v407 = 1;
            sub_26B079D00();
            v405 = v87;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v406 = v88;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v408 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v408);
            sub_26AEFB5C4();
            v871 = 0;
            v872 = 0;
            v873 = 0;
            v874 = v407 & 1;
          }

          v409 = sub_26B079E40();
          v410 = v89;
          v400 = v89;
          v399 = v409;

          MEMORY[0x277D82BD8](v707);
          v655 = v399;
          v656 = v400;
          return v655;
        }

        MEMORY[0x277D82BE0](v707);
        v92 = sub_26B07A740();
        v396 = &v882;
        v882 = v92;
        v883 = v93;
        v394 = 1;
        v94 = sub_26B079D00();
        v392 = v95;
        MEMORY[0x26D66D910](v94);

        v393 = &v881;
        v881 = v707;
        sub_26B034F40();
        sub_26B07A710();
        v96 = sub_26B079D00();
        v395 = v97;
        MEMORY[0x26D66D910](v96);

        v398 = v882;
        v397 = v883;
        sub_26B078640();
        sub_26AEB9F6C();
        sub_26B079EB0();
        sub_26B07A660();
        __break(1u);
LABEL_111:
        v390 = sub_26B034EDC();
        v391 = [v707 formatParameters];
        if (v391)
        {
          v389 = v391;
          v386 = v391;
          v387 = sub_26B079C70();
          MEMORY[0x277D82BD8](v386);
          v388 = v387;
        }

        else
        {
          v388 = 0;
        }

        v383 = v388;
        v384 = static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(v388);
        v385 = v98;

        if (!v385)
        {
          goto LABEL_124;
        }

        v381 = v384;
        v382 = v385;
        v378 = v385;
        v379 = v384;
        v897 = v384;
        v898 = v385;
        v380 = [v707 formatParameters];
        if (v380)
        {
          v377 = v380;
          v374 = v380;
          v375 = sub_26B079C70();
          MEMORY[0x277D82BD8](v374);
          v376 = v375;
        }

        else
        {
          v376 = 0;
        }

        v371 = v376;
        v372 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v376);
        v373 = v99;

        if (v373)
        {
          v369 = v372;
          v370 = v373;
          v367 = v373;
          v368 = v372;
          v892 = v372;
          v893 = v373;
          if (v668)
          {
            sub_26B079DB0();
            v358 = 1;
            sub_26B079D00();
            v355 = v104;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v356 = v105;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v357 = v106;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v359 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v359);
            sub_26AEFB5C4();
            v888 = 0;
            v889 = 0;
            v890 = 0;
            v891 = v358 & 1;
          }

          else
          {
            sub_26B079DB0();
            v363 = 1;
            sub_26B079D00();
            v360 = v100;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v361 = v101;
            sub_26B079DA0();

            sub_26B079D90();
            sub_26B079D00();
            v362 = v102;
            sub_26B079DA0();

            (*(v699 + 16))(v704, v706, v698);
            (*(v699 + 32))(v702, v704, v698);
            (*(v699 + 8))(v706, v698);
            sub_26B079DD0();
            v364 = *sub_26B02D0D0();
            MEMORY[0x277D82BE0](v364);
            sub_26AEFB5C4();
            v884 = 0;
            v885 = 0;
            v886 = 0;
            v887 = v363 & 1;
          }

          v365 = sub_26B079E40();
          v366 = v103;
          v354 = v103;
          v353 = v365;

          MEMORY[0x277D82BD8](v707);
          v655 = v353;
          v656 = v354;
        }

        else
        {
          MEMORY[0x277D82BE0](v707);
          v107 = sub_26B07A740();
          v350 = &v895;
          v895 = v107;
          v896 = v108;
          v348 = 1;
          v109 = sub_26B079D00();
          v346 = v110;
          MEMORY[0x26D66D910](v109);

          v347 = &v894;
          v894 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v111 = sub_26B079D00();
          v349 = v112;
          MEMORY[0x26D66D910](v111);

          v352 = v895;
          v351 = v896;
          sub_26B078640();
          sub_26AEB9F6C();
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
LABEL_124:
          MEMORY[0x277D82BE0](v707);
          v113 = sub_26B07A740();
          v343 = &v900;
          v900 = v113;
          v901 = v114;
          v341 = 1;
          v115 = sub_26B079D00();
          v339 = v116;
          MEMORY[0x26D66D910](v115);

          v340 = &v899;
          v899 = v707;
          sub_26B034F40();
          sub_26B07A710();
          v117 = sub_26B079D00();
          v342 = v118;
          MEMORY[0x26D66D910](v117);

          v345 = v900;
          v344 = v901;
          sub_26B078640();
          sub_26AEB9F6C();
          sub_26B079EB0();
          sub_26B07A660();
          __break(1u);
LABEL_125:
          v337 = sub_26B034EDC();
          v338 = [v707 formatParameters];
          if (v338)
          {
            v336 = v338;
            v333 = v338;
            v334 = sub_26B079C70();
            MEMORY[0x277D82BD8](v333);
            v335 = v334;
          }

          else
          {
            v335 = 0;
          }

          v330 = v335;
          v331 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v335);
          v332 = v119;

          if (v332)
          {
            v328 = v331;
            v329 = v332;
            v326 = v332;
            v327 = v331;
            v910 = v331;
            v911 = v332;
            if (v668)
            {
              sub_26B079DB0();
              v318 = 1;
              sub_26B079D00();
              v316 = v123;
              sub_26B079DA0();

              sub_26B079D90();
              sub_26B079D00();
              v317 = v124;
              sub_26B079DA0();

              (*(v699 + 16))(v704, v706, v698);
              (*(v699 + 32))(v702, v704, v698);
              (*(v699 + 8))(v706, v698);
              sub_26B079DD0();
              v319 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v319);
              sub_26AEFB5C4();
              v906 = 0;
              v907 = 0;
              v908 = 0;
              v909 = v318 & 1;
            }

            else
            {
              sub_26B079DB0();
              v322 = 1;
              sub_26B079D00();
              v320 = v120;
              sub_26B079DA0();

              sub_26B079D90();
              sub_26B079D00();
              v321 = v121;
              sub_26B079DA0();

              (*(v699 + 16))(v704, v706, v698);
              (*(v699 + 32))(v702, v704, v698);
              (*(v699 + 8))(v706, v698);
              sub_26B079DD0();
              v323 = *sub_26B02D0D0();
              MEMORY[0x277D82BE0](v323);
              sub_26AEFB5C4();
              v902 = 0;
              v903 = 0;
              v904 = 0;
              v905 = v322 & 1;
            }

            v324 = sub_26B079E40();
            v325 = v122;
            v315 = v122;
            v314 = v324;

            MEMORY[0x277D82BD8](v707);
            v655 = v314;
            v656 = v315;
          }

          else
          {
            MEMORY[0x277D82BE0](v707);
            v125 = sub_26B07A740();
            v311 = &v913;
            v913 = v125;
            v914 = v126;
            v309 = 1;
            v127 = sub_26B079D00();
            v307 = v128;
            MEMORY[0x26D66D910](v127);

            v308 = &v912;
            v912 = v707;
            sub_26B034F40();
            sub_26B07A710();
            v129 = sub_26B079D00();
            v310 = v130;
            MEMORY[0x26D66D910](v129);

            v313 = v913;
            v312 = v914;
            sub_26B078640();
            sub_26AEB9F6C();
            sub_26B079EB0();
            sub_26B07A660();
            __break(1u);
LABEL_134:
            v305 = sub_26B034EDC();
            v306 = [v707 formatParameters];
            if (v306)
            {
              v304 = v306;
              v301 = v306;
              v302 = sub_26B079C70();
              MEMORY[0x277D82BD8](v301);
              v303 = v302;
            }

            else
            {
              v303 = 0;
            }

            v298 = v303;
            v299 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v303);
            v300 = v131;

            if (v300)
            {
              v296 = v299;
              v297 = v300;
              v294 = v300;
              v295 = v299;
              v923 = v299;
              v924 = v300;
              if (v668)
              {
                sub_26B079DB0();
                v286 = 1;
                sub_26B079D00();
                v284 = v135;
                sub_26B079DA0();

                sub_26B079D90();
                sub_26B079D00();
                v285 = v136;
                sub_26B079DA0();

                (*(v699 + 16))(v704, v706, v698);
                (*(v699 + 32))(v702, v704, v698);
                (*(v699 + 8))(v706, v698);
                sub_26B079DD0();
                v287 = *sub_26B02D0D0();
                MEMORY[0x277D82BE0](v287);
                sub_26AEFB5C4();
                v919 = 0;
                v920 = 0;
                v921 = 0;
                v922 = v286 & 1;
              }

              else
              {
                sub_26B079DB0();
                v290 = 1;
                sub_26B079D00();
                v288 = v132;
                sub_26B079DA0();

                sub_26B079D90();
                sub_26B079D00();
                v289 = v133;
                sub_26B079DA0();

                (*(v699 + 16))(v704, v706, v698);
                (*(v699 + 32))(v702, v704, v698);
                (*(v699 + 8))(v706, v698);
                sub_26B079DD0();
                v291 = *sub_26B02D0D0();
                MEMORY[0x277D82BE0](v291);
                sub_26AEFB5C4();
                v915 = 0;
                v916 = 0;
                v917 = 0;
                v918 = v290 & 1;
              }

              v292 = sub_26B079E40();
              v293 = v134;
              v283 = v134;
              v282 = v292;

              MEMORY[0x277D82BD8](v707);
              v655 = v282;
              v656 = v283;
            }

            else
            {
              MEMORY[0x277D82BE0](v707);
              v137 = sub_26B07A740();
              v279 = &v926;
              v926 = v137;
              v927 = v138;
              v277 = 1;
              v139 = sub_26B079D00();
              v275 = v140;
              MEMORY[0x26D66D910](v139);

              v276 = &v925;
              v925 = v707;
              sub_26B034F40();
              sub_26B07A710();
              v141 = sub_26B079D00();
              v278 = v142;
              MEMORY[0x26D66D910](v141);

              v281 = v926;
              v280 = v927;
              sub_26B078640();
              sub_26AEB9F6C();
              sub_26B079EB0();
              sub_26B07A660();
              __break(1u);
LABEL_143:
              v273 = sub_26B034EDC();
              v274 = [v707 formatParameters];
              if (v274)
              {
                v272 = v274;
                v269 = v274;
                v270 = sub_26B079C70();
                MEMORY[0x277D82BD8](v269);
                v271 = v270;
              }

              else
              {
                v271 = 0;
              }

              v266 = v271;
              v267 = static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(v271);
              v268 = v143;

              if (v268)
              {
                v264 = v267;
                v265 = v268;
                v262 = v268;
                v263 = v267;
                v936 = v267;
                v937 = v268;
                if (v668)
                {
                  sub_26B079DB0();
                  v254 = 1;
                  sub_26B079D00();
                  v252 = v147;
                  sub_26B079DA0();

                  sub_26B079D90();
                  sub_26B079D00();
                  v253 = v148;
                  sub_26B079DA0();

                  (*(v699 + 16))(v704, v706, v698);
                  (*(v699 + 32))(v702, v704, v698);
                  (*(v699 + 8))(v706, v698);
                  sub_26B079DD0();
                  v255 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v255);
                  sub_26AEFB5C4();
                  v932 = 0;
                  v933 = 0;
                  v934 = 0;
                  v935 = v254 & 1;
                }

                else
                {
                  sub_26B079DB0();
                  v258 = 1;
                  sub_26B079D00();
                  v256 = v144;
                  sub_26B079DA0();

                  sub_26B079D90();
                  sub_26B079D00();
                  v257 = v145;
                  sub_26B079DA0();

                  (*(v699 + 16))(v704, v706, v698);
                  (*(v699 + 32))(v702, v704, v698);
                  (*(v699 + 8))(v706, v698);
                  sub_26B079DD0();
                  v259 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v259);
                  sub_26AEFB5C4();
                  v928 = 0;
                  v929 = 0;
                  v930 = 0;
                  v931 = v258 & 1;
                }

                v260 = sub_26B079E40();
                v261 = v146;
                v251 = v146;
                v250 = v260;

                MEMORY[0x277D82BD8](v707);
                v655 = v250;
                v656 = v251;
              }

              else
              {
                MEMORY[0x277D82BE0](v707);
                v149 = sub_26B07A740();
                v247 = &v939;
                v939 = v149;
                v940 = v150;
                v245 = 1;
                v151 = sub_26B079D00();
                v243 = v152;
                MEMORY[0x26D66D910](v151);

                v244 = &v938;
                v938 = v707;
                sub_26B034F40();
                sub_26B07A710();
                v153 = sub_26B079D00();
                v246 = v154;
                MEMORY[0x26D66D910](v153);

                v249 = v939;
                v248 = v940;
                sub_26B078640();
                sub_26AEB9F6C();
                sub_26B079EB0();
                sub_26B07A660();
                __break(1u);
LABEL_152:
                if (v668)
                {
                  v237 = 1;
                  sub_26B079D00();
                  sub_26B079D80();
                  v238 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v238);
                  sub_26AEFB5C4();
                  v945 = 0;
                  v946 = 0;
                  v947 = 0;
                  v948 = v237 & 1;
                }

                else
                {
                  v239 = 1;
                  sub_26B079D00();
                  sub_26B079D80();
                  v240 = *sub_26B02D0D0();
                  MEMORY[0x277D82BE0](v240);
                  sub_26AEFB5C4();
                  v941 = 0;
                  v942 = 0;
                  v943 = 0;
                  v944 = v239 & 1;
                }

                v241 = sub_26B079E40();
                v242 = v155;
                v236 = v155;
                v235 = v241;
                MEMORY[0x277D82BD8](v707);
                v655 = v235;
                v656 = v236;
              }
            }
          }
        }

        break;
      case 0xFuLL:
        goto LABEL_102;
      case 0x10uLL:
        goto LABEL_111;
      case 0x11uLL:
        goto LABEL_125;
      case 0x12uLL:
        goto LABEL_134;
      case 0x13uLL:
        goto LABEL_143;
      case 0x14uLL:
LABEL_63:
        if (v668)
        {
          v535 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v536 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v536);
          sub_26AEFB5C4();
          v812 = 0;
          v813 = 0;
          v814 = 0;
          v815 = v535 & 1;
        }

        else
        {
          v537 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v538 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v538);
          sub_26AEFB5C4();
          v808 = 0;
          v809 = 0;
          v810 = 0;
          v811 = v537 & 1;
        }

        v539 = sub_26B079E40();
        v540 = v49;
        v534 = v49;
        v533 = v539;
        MEMORY[0x277D82BD8](v707);
        v655 = v533;
        v656 = v534;
        return v655;
      case 0x15uLL:
        goto LABEL_152;
      case 0x16uLL:
        if (v668)
        {
          v229 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v230 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v230);
          sub_26AEFB5C4();
          v953 = 0;
          v954 = 0;
          v955 = 0;
          v956 = v229 & 1;
        }

        else
        {
          v231 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v232 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v232);
          sub_26AEFB5C4();
          v949 = 0;
          v950 = 0;
          v951 = 0;
          v952 = v231 & 1;
        }

        v233 = sub_26B079E40();
        v234 = v156;
        v228 = v156;
        v227 = v233;
        MEMORY[0x277D82BD8](v707);
        v655 = v227;
        v656 = v228;
        return v655;
      case 0x17uLL:
        if (v668)
        {
          v221 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v222 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v222);
          sub_26AEFB5C4();
          v961 = 0;
          v962 = 0;
          v963 = 0;
          v964 = v221 & 1;
        }

        else
        {
          v223 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v224 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v224);
          sub_26AEFB5C4();
          v957 = 0;
          v958 = 0;
          v959 = 0;
          v960 = v223 & 1;
        }

        v225 = sub_26B079E40();
        v226 = v157;
        v220 = v157;
        v219 = v225;
        MEMORY[0x277D82BD8](v707);
        v655 = v219;
        v656 = v220;
        return v655;
      case 0x18uLL:
        if (v668)
        {
          v213 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v214 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v214);
          sub_26AEFB5C4();
          v969 = 0;
          v970 = 0;
          v971 = 0;
          v972 = v213 & 1;
        }

        else
        {
          v215 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v216 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v216);
          sub_26AEFB5C4();
          v965 = 0;
          v966 = 0;
          v967 = 0;
          v968 = v215 & 1;
        }

        v217 = sub_26B079E40();
        v218 = v158;
        v212 = v158;
        v211 = v217;
        MEMORY[0x277D82BD8](v707);
        v655 = v211;
        v656 = v212;
        return v655;
      case 0x19uLL:
        if (v668)
        {
          v205 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v206 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v206);
          sub_26AEFB5C4();
          v977 = 0;
          v978 = 0;
          v979 = 0;
          v980 = v205 & 1;
        }

        else
        {
          v207 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v208 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v208);
          sub_26AEFB5C4();
          v973 = 0;
          v974 = 0;
          v975 = 0;
          v976 = v207 & 1;
        }

        v209 = sub_26B079E40();
        v210 = v159;
        v204 = v159;
        v203 = v209;
        MEMORY[0x277D82BD8](v707);
        v655 = v203;
        v656 = v204;
        return v655;
      case 0x1AuLL:
        if (v668)
        {
          v197 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v198 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v198);
          sub_26AEFB5C4();
          v985 = 0;
          v986 = 0;
          v987 = 0;
          v988 = v197 & 1;
        }

        else
        {
          v199 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v200 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v200);
          sub_26AEFB5C4();
          v981 = 0;
          v982 = 0;
          v983 = 0;
          v984 = v199 & 1;
        }

        v201 = sub_26B079E40();
        v202 = v160;
        v196 = v160;
        v195 = v201;
        MEMORY[0x277D82BD8](v707);
        v655 = v195;
        v656 = v196;
        return v655;
      case 0x1BuLL:
        if (v668)
        {
          *&v189[1] = 1;
          sub_26B079D00();
          sub_26B079D80();
          v190 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v190);
          sub_26AEFB5C4();
          v993 = 0;
          v994 = 0;
          v995 = *v189 & 0x100;
        }

        else
        {
          v191 = 1;
          sub_26B079D00();
          sub_26B079D80();
          v192 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v192);
          sub_26AEFB5C4();
          v989 = 0;
          v990 = 0;
          v991 = 0;
          v992 = v191 & 1;
        }

        v193 = sub_26B079E40();
        v194 = v161;
        v188 = v161;
        v187 = v193;
        MEMORY[0x277D82BD8](v707);
        v655 = v187;
        v656 = v188;
        return v655;
      case 0x1CuLL:
        *&v183[1] = 1;
        sub_26B079D00();
        sub_26B079D80();
        v184 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v184);
        sub_26AEFB5C4();
        v996 = 0;
        v997 = 0;
        v998 = *v183 & 0x100;
        v185 = sub_26B079E40();
        v186 = v162;
        MEMORY[0x277D82BD8](v707);
        v655 = v185;
        v656 = v186;
        return v655;
      case 0x1DuLL:
        if (sub_26B0784F0())
        {
          *&v179[1] = 1;
          sub_26B079D00();
          sub_26B079D80();
          v180 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v180);
          sub_26AEFB5C4();
          v999 = 0;
          v1000 = 0;
          v1001 = *v179 & 0x100;
          v181 = sub_26B079E40();
          v182 = v163;
          MEMORY[0x277D82BD8](v707);
          v655 = v181;
          v656 = v182;
        }

        else
        {
          *&v175[1] = 1;
          sub_26B079D00();
          sub_26B079D80();
          v176 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v176);
          sub_26AEFB5C4();
          v1002 = 0;
          v1003 = 0;
          v1004 = *v175 & 0x100;
          v177 = sub_26B079E40();
          v178 = v164;
          MEMORY[0x277D82BD8](v707);
          v655 = v177;
          v656 = v178;
        }

        return v655;
      case 0x1EuLL:
        *&v171[1] = 1;
        sub_26B079D00();
        sub_26B079D80();
        v172 = *sub_26B02D0D0();
        MEMORY[0x277D82BE0](v172);
        sub_26AEFB5C4();
        v1005 = 0;
        v1006 = 0;
        v1007 = *v171 & 0x100;
        v173 = sub_26B079E40();
        v174 = v165;
        MEMORY[0x277D82BD8](v707);
        v655 = v173;
        v656 = v174;
        return v655;
      default:
        if (sub_26B078500())
        {
          v657 = 80;
          sub_26B079DB0();
          v662 = 1;
          sub_26B079D00();
          v658 = v21;
          sub_26B079DA0();

          MEMORY[0x277D82BE0](v697);
          v660 = v716;
          v716[0] = v697;
          v664 = 0;
          v659 = sub_26B034FC0();
          sub_26B035024();
          sub_26B079E70();
          v661 = v22;
          sub_26B079D90();

          sub_26B079D00();
          v663 = v23;
          sub_26B079DA0();

          (*(v699 + 16))(v704, v706, v698);
          (*(v699 + 32))(v702, v704, v698);
          (*(v699 + 8))(v706, v698);
          sub_26B079DD0();
          v665 = *sub_26B02D0D0();
          MEMORY[0x277D82BE0](v665);
          sub_26AEFB5C4();
          v712 = v689;
          v713 = 28;
          v714 = 2;
          v715 = 0;
          v666 = sub_26B079E40();
        }

        else
        {
          v666 = sub_26B079D00();
        }

        v667 = v24;
        v654 = v24;
        v653 = v666;
        MEMORY[0x277D82BD8](v707);
        v655 = v653;
        v656 = v654;
        return v655;
    }
  }

  return v655;
}

uint64_t static SUUIStatefulErrorToken.requiredBatteryLevel(_:)(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_26B078640();
  if (a1)
  {
    sub_26B0344E4();
    sub_26B078640();
    sub_26B079CC0();
    sub_26AE9BCC0();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v7 = 0;
  }

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26AED4660(v6);
    return 0;
  }
}

uint64_t SUUIStatefulError.body(_:platform:download:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a1)
  {
    v5 = *(a1 + 24);
    MEMORY[0x277D82BE0](v5);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
    MEMORY[0x277D82BE0](*(a3 + 16));

    swift_getObjectType();
  }

  v4 = SUUIStatefulError.body(_:platform:download:)(v6);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v4;
}

uint64_t static SUUIStatefulErrorToken.requiredFreeDiskSpace(_:)(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_26B078640();
  if (a1)
  {
    sub_26B0345F0();
    sub_26B078640();
    sub_26B079CC0();
    sub_26AE9BCC0();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v7 = 0;
  }

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26AED4660(v6);
    return 0;
  }
}

double sub_26B03447C()
{
  v2 = *MEMORY[0x277D64C40];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C40]);
  qword_2803DECD0 = sub_26B079E00();
  qword_2803DECD8 = v0;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_26B0344E4()
{
  if (qword_2803DB4C0 != -1)
  {
    swift_once();
  }

  return &qword_2803DECD0;
}

uint64_t static SUUIStatefulErrorToken.Keys.requiredBatteryLevel.getter()
{
  v1 = *sub_26B0344E4();
  sub_26B078640();
  return v1;
}

double sub_26B034588()
{
  v2 = *MEMORY[0x277D64C48];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C48]);
  qword_2803DECE0 = sub_26B079E00();
  qword_2803DECE8 = v0;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_26B0345F0()
{
  if (qword_2803DB4C8 != -1)
  {
    swift_once();
  }

  return &qword_2803DECE0;
}

uint64_t static SUUIStatefulErrorToken.Keys.requiredFreeDiskSpace.getter()
{
  v1 = *sub_26B0345F0();
  sub_26B078640();
  return v1;
}

double sub_26B034694()
{
  v2 = *MEMORY[0x277D64C38];
  MEMORY[0x277D82BE0](*MEMORY[0x277D64C38]);
  qword_2803DECF0 = sub_26B079E00();
  qword_2803DECF8 = v0;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_26B0346FC()
{
  if (qword_2803DB4D0 != -1)
  {
    swift_once();
  }

  return &qword_2803DECF0;
}

uint64_t static SUUIStatefulErrorToken.Keys.personalizationUpdateName.getter()
{
  v1 = *sub_26B0346FC();
  sub_26B078640();
  return v1;
}

uint64_t static SUUIStatefulErrorToken.personalizationUpdateName(_:)(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_26B078640();
  if (a1)
  {
    sub_26B0346FC();
    sub_26B078640();
    sub_26B079CC0();
    sub_26AE9BCC0();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v7 = 0;
  }

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26AED4660(v6);
    return 0;
  }
}

Swift::String __swiftcall SUUILocalizedString(_:comment:)(Swift::String _, Swift::String_optional comment)
{
  object = comment.value._object;
  sub_26B079D00();
  v2 = sub_26B02D0D0();
  v9 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_26B078640();
  if (!object)
  {
    sub_26B079D00();
  }

  v7 = sub_26B078020();
  v8 = v3;

  MEMORY[0x277D82BD8](v9);

  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String __swiftcall SUUILocalizedString(_:value:comment:)(Swift::String _, Swift::String_optional value, Swift::String_optional comment)
{
  object = value.value._object;
  v10 = comment.value._object;
  sub_26B079D00();
  v3 = sub_26B02D0D0();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_26B078640();
  sub_26B078640();
  if (!object)
  {
    sub_26B078640();
  }

  sub_26B078640();
  if (!v10)
  {
    sub_26B079D00();
  }

  v8 = sub_26B078020();
  v9 = v4;

  MEMORY[0x277D82BD8](v11);

  v5 = v8;
  v6 = v9;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id sub_26B034E14()
{
  sub_26B0350A4();
  _s11LookupClassCMa();
  result = sub_26B035130();
  qword_2803DED00 = result;
  return result;
}

unint64_t sub_26B034E5C()
{
  v2 = qword_2803DED08;
  if (!qword_2803DED08)
  {
    type metadata accessor for SUUIStatefulErrorTokenType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B034EDC()
{
  v2 = qword_2803DED10;
  if (!qword_2803DED10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B034F40()
{
  v2 = qword_2803DED18;
  if (!qword_2803DED18)
  {
    sub_26B034EDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B034FC0()
{
  v2 = qword_2803DED20;
  if (!qword_2803DED20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B035024()
{
  v2 = qword_2803DED28;
  if (!qword_2803DED28)
  {
    sub_26B034FC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B0350A4()
{
  v2 = qword_2803DED30;
  if (!qword_2803DED30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED30);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B035130()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t static NSBundle.softwareUpdateUI.getter()
{
  v0 = sub_26B02D0D0();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

SoftwareUpdateUIKit::DeepLinkDestination_optional sub_26B03521C(uint64_t a1, void *a2)
{
  sub_26B078640();
  v2._countAndFlagsBits = a1;
  v2._object = a2;
  return DeepLinkDestination.init(rawValue:)(v2);
}

SoftwareUpdateUIKit::DeepLinkDestination_optional __swiftcall DeepLinkDestination.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_26B07A760();
  *v2 = "SUAutomaticUpdateButton";
  *(v2 + 8) = 23;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SUBetaUpdatesButton";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SUAlternativeUpdatesButton";
  *(v2 + 56) = 26;
  *(v2 + 64) = 2;
  sub_26AEA3B2C();
  v5 = sub_26B07A6B0();

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (v5 != 2)
      {

        *v4 = 3;
        return result;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t sub_26B0355E4@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkDestination.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26B03562C()
{
  v2 = qword_2803DED38;
  if (!qword_2803DED38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED38);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeepLinkDestination(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double ReactiveAnalyticsReporter.submitButtonTap(_:)(uint64_t a1)
{
  v49 = a1;
  v43 = sub_26B037C00;
  v44 = sub_26B038384;
  v45 = sub_26B038308;
  v46 = sub_26B03833C;
  v47 = sub_26B0383D0;
  v62 = 0;
  v61 = 0;
  v48 = 0;
  v50 = sub_26B078580();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = &v17 - v53;
  v62 = v2;
  v61 = v1;
  v55 = *(v1 + 16);
  swift_unknownObjectRetain();
  v60[1] = v55;
  v42 = v55 != 0;
  v41 = v42;
  sub_26AF03700();
  if (v41)
  {
    sub_26B078560();
    v30 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v39 = sub_26B078570();
    v40 = sub_26B07A2A0();
    v28 = 17;
    v33 = swift_allocObject();
    *(v33 + 16) = 34;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v29 = 32;
    v4 = swift_allocObject();
    v5 = v31;
    v32 = v4;
    *(v4 + 16) = v43;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v32;
    v36 = v6;
    *(v6 + 16) = v44;
    *(v6 + 24) = v7;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v35 = sub_26B07A760();
    v37 = v8;

    v9 = v33;
    v10 = v37;
    *v37 = v45;
    v10[1] = v9;

    v11 = v34;
    v12 = v37;
    v37[2] = v46;
    v12[3] = v11;

    v13 = v36;
    v14 = v37;
    v37[4] = v47;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v39, v40))
    {
      v15 = v48;
      v21 = sub_26B07A420();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v22 = sub_26AEA3B70(0);
      v23 = sub_26AEA3B70(1);
      v24 = v60;
      v60[0] = v21;
      v25 = &v59;
      v59 = v22;
      v26 = &v58;
      v58 = v23;
      sub_26AEA3BC4(2, v60);
      sub_26AEA3BC4(1, v24);
      v56 = v45;
      v57 = v33;
      sub_26AEA3BD8(&v56, v24, v25, v26);
      v27 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v56 = v46;
        v57 = v34;
        sub_26AEA3BD8(&v56, v60, &v59, &v58);
        v19 = 0;
        v56 = v47;
        v57 = v36;
        sub_26AEA3BD8(&v56, v60, &v59, &v58);
        _os_log_impl(&dword_26AE88000, v39, v40, "Reporting UI button tap: %{public}s", v21, 0xCu);
        sub_26AEA3C24(v22);
        sub_26AEA3C24(v23);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x277D82BD8](v39);
    (*(v51 + 8))(v54, v50, v16);
    sub_26B0383DC();
    v18 = sub_26B037A70(v49);
    ReactiveAnalyticsReporter.submit(_:)(v18);
    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

double ReactiveAnalyticsReporter.submitNavigation(_:)(uint64_t a1)
{
  v49 = a1;
  v43 = sub_26B03846C;
  v44 = sub_26B03851C;
  v45 = sub_26B0384A0;
  v46 = sub_26B0384D4;
  v47 = sub_26B038568;
  v62 = 0;
  v61 = 0;
  v48 = 0;
  v50 = sub_26B078580();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = &v17 - v53;
  v62 = v2;
  v61 = v1;
  v55 = *(v1 + 16);
  swift_unknownObjectRetain();
  v60[1] = v55;
  v42 = v55 != 0;
  v41 = v42;
  sub_26AF03700();
  if (v41)
  {
    sub_26B078560();
    v30 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v39 = sub_26B078570();
    v40 = sub_26B07A2A0();
    v28 = 17;
    v33 = swift_allocObject();
    *(v33 + 16) = 34;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v29 = 32;
    v4 = swift_allocObject();
    v5 = v31;
    v32 = v4;
    *(v4 + 16) = v43;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v32;
    v36 = v6;
    *(v6 + 16) = v44;
    *(v6 + 24) = v7;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v35 = sub_26B07A760();
    v37 = v8;

    v9 = v33;
    v10 = v37;
    *v37 = v45;
    v10[1] = v9;

    v11 = v34;
    v12 = v37;
    v37[2] = v46;
    v12[3] = v11;

    v13 = v36;
    v14 = v37;
    v37[4] = v47;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v39, v40))
    {
      v15 = v48;
      v21 = sub_26B07A420();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v22 = sub_26AEA3B70(0);
      v23 = sub_26AEA3B70(1);
      v24 = v60;
      v60[0] = v21;
      v25 = &v59;
      v59 = v22;
      v26 = &v58;
      v58 = v23;
      sub_26AEA3BC4(2, v60);
      sub_26AEA3BC4(1, v24);
      v56 = v45;
      v57 = v33;
      sub_26AEA3BD8(&v56, v24, v25, v26);
      v27 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v56 = v46;
        v57 = v34;
        sub_26AEA3BD8(&v56, v60, &v59, &v58);
        v19 = 0;
        v56 = v47;
        v57 = v36;
        sub_26AEA3BD8(&v56, v60, &v59, &v58);
        _os_log_impl(&dword_26AE88000, v39, v40, "Reporting UI navigation: %{public}s", v21, 0xCu);
        sub_26AEA3C24(v22);
        sub_26AEA3C24(v23);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x277D82BD8](v39);
    (*(v51 + 8))(v54, v50, v16);
    sub_26B0383DC();
    v18 = sub_26B037A70(v49);
    ReactiveAnalyticsReporter.submit(_:)(v18);
    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

double ReactiveAnalyticsReporter.submitSwitchToggle(onType:offType:isOn:)(uint64_t a1, uint64_t a2, int a3)
{
  v77 = a1;
  v76 = a2;
  v75 = a3;
  v64 = sub_26B0385A0;
  v65 = sub_26B038688;
  v66 = sub_26B0385D4;
  v67 = sub_26B038788;
  v68 = sub_26B03860C;
  v69 = sub_26B038640;
  v70 = sub_26B0386D4;
  v71 = sub_26B03870C;
  v72 = sub_26B038740;
  v73 = sub_26B0387D4;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v74 = 0;
  v78 = sub_26B078580();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77);
  v82 = v31 - v81;
  v94 = v4;
  v93 = v5;
  v92 = v6 & 1;
  v91 = v3;
  v83 = *(v3 + 16);
  swift_unknownObjectRetain();
  v90 = v83;
  v63 = v83 != 0;
  v62 = v63;
  sub_26AF03700();
  if (v62)
  {
    if (v75)
    {
      v61 = v77;
    }

    else
    {
      v61 = v76;
    }

    v40 = v61;
    v89 = v61;
    sub_26B078560();
    v47 = 7;
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v44 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = v75;
    v59 = sub_26B078570();
    v60 = sub_26B07A2A0();
    v50 = swift_allocObject();
    v43 = 34;
    *(v50 + 16) = 34;
    v51 = swift_allocObject();
    v45 = 8;
    *(v51 + 16) = 8;
    v46 = 32;
    v8 = swift_allocObject();
    v9 = v41;
    v42 = v8;
    *(v8 + 16) = v64;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v42;
    v52 = v10;
    *(v10 + 16) = v65;
    *(v10 + 24) = v11;
    v53 = swift_allocObject();
    *(v53 + 16) = v43;
    v54 = swift_allocObject();
    *(v54 + 16) = v45;
    v12 = swift_allocObject();
    v13 = v48;
    v49 = v12;
    *(v12 + 16) = v66;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v49;
    v56 = v14;
    *(v14 + 16) = v67;
    *(v14 + 24) = v15;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v55 = sub_26B07A760();
    v57 = v16;

    v17 = v50;
    v18 = v57;
    *v57 = v68;
    v18[1] = v17;

    v19 = v51;
    v20 = v57;
    v57[2] = v69;
    v20[3] = v19;

    v21 = v52;
    v22 = v57;
    v57[4] = v70;
    v22[5] = v21;

    v23 = v53;
    v24 = v57;
    v57[6] = v71;
    v24[7] = v23;

    v25 = v54;
    v26 = v57;
    v57[8] = v72;
    v26[9] = v25;

    v27 = v56;
    v28 = v57;
    v57[10] = v73;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v59, v60))
    {
      v29 = v74;
      v32 = sub_26B07A420();
      v31[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v33 = sub_26AEA3B70(0);
      v34 = sub_26AEA3B70(2);
      v36 = &v88;
      v88 = v32;
      v37 = &v87;
      v87 = v33;
      v38 = &v86;
      v86 = v34;
      v35 = 2;
      sub_26AEA3BC4(2, &v88);
      sub_26AEA3BC4(v35, v36);
      v84 = v68;
      v85 = v50;
      sub_26AEA3BD8(&v84, v36, v37, v38);
      v39 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v84 = v69;
        v85 = v51;
        sub_26AEA3BD8(&v84, &v88, &v87, &v86);
        v31[4] = 0;
        v84 = v70;
        v85 = v52;
        sub_26AEA3BD8(&v84, &v88, &v87, &v86);
        v31[3] = 0;
        v84 = v71;
        v85 = v53;
        sub_26AEA3BD8(&v84, &v88, &v87, &v86);
        v31[2] = 0;
        v84 = v72;
        v85 = v54;
        sub_26AEA3BD8(&v84, &v88, &v87, &v86);
        v31[1] = 0;
        v84 = v73;
        v85 = v56;
        sub_26AEA3BD8(&v84, &v88, &v87, &v86);
        _os_log_impl(&dword_26AE88000, v59, v60, "Reporting UI toggle: %{public}s (%{public}s)", v32, 0x16u);
        sub_26AEA3C24(v33);
        sub_26AEA3C24(v34);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v30 = MEMORY[0x277D82BD8](v59);
    (*(v79 + 8))(v82, v78, v30);
    sub_26B0383DC();
    v31[0] = sub_26B037A70(v40);
    ReactiveAnalyticsReporter.submit(_:)(v31[0]);
    *&result = MEMORY[0x277D82BD8](v31[0]).n128_u64[0];
  }

  return result;
}

uint64_t sub_26B037224()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t ReactiveAnalyticsReporter.init(representing:)(uint64_t a1)
{
  sub_26B078350();
  swift_unknownObjectRetain();
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t ReactiveAnalyticsReporter.submit(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  result = swift_unknownObjectRetain();
  if (v4)
  {
    swift_getObjectType();
    [v4 submitAnalyticsEvent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

double ReactiveAnalyticsReporter.submitUserInteraction(_:)(uint64_t a1)
{
  v49 = a1;
  v43 = sub_26B03880C;
  v44 = sub_26B0388BC;
  v45 = sub_26B038840;
  v46 = sub_26B038874;
  v47 = sub_26B038908;
  v62 = 0;
  v61 = 0;
  v48 = 0;
  v50 = sub_26B078580();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v54 = &v17 - v53;
  v62 = v2;
  v61 = v1;
  v55 = *(v1 + 16);
  swift_unknownObjectRetain();
  v60[1] = v55;
  v42 = v55 != 0;
  v41 = v42;
  sub_26AF03700();
  if (v41)
  {
    sub_26B078560();
    v30 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v39 = sub_26B078570();
    v40 = sub_26B07A2A0();
    v28 = 17;
    v33 = swift_allocObject();
    *(v33 + 16) = 34;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v29 = 32;
    v4 = swift_allocObject();
    v5 = v31;
    v32 = v4;
    *(v4 + 16) = v43;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v32;
    v36 = v6;
    *(v6 + 16) = v44;
    *(v6 + 24) = v7;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v35 = sub_26B07A760();
    v37 = v8;

    v9 = v33;
    v10 = v37;
    *v37 = v45;
    v10[1] = v9;

    v11 = v34;
    v12 = v37;
    v37[2] = v46;
    v12[3] = v11;

    v13 = v36;
    v14 = v37;
    v37[4] = v47;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v39, v40))
    {
      v15 = v48;
      v21 = sub_26B07A420();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v22 = sub_26AEA3B70(0);
      v23 = sub_26AEA3B70(1);
      v24 = v60;
      v60[0] = v21;
      v25 = &v59;
      v59 = v22;
      v26 = &v58;
      v58 = v23;
      sub_26AEA3BC4(2, v60);
      sub_26AEA3BC4(1, v24);
      v56 = v45;
      v57 = v33;
      sub_26AEA3BD8(&v56, v24, v25, v26);
      v27 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v56 = v46;
        v57 = v34;
        sub_26AEA3BD8(&v56, v60, &v59, &v58);
        v19 = 0;
        v56 = v47;
        v57 = v36;
        sub_26AEA3BD8(&v56, v60, &v59, &v58);
        _os_log_impl(&dword_26AE88000, v39, v40, "Reporting UI interaction: %{public}s", v21, 0xCu);
        sub_26AEA3C24(v22);
        sub_26AEA3C24(v23);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x277D82BD8](v39);
    (*(v51 + 8))(v54, v50, v16);
    sub_26B0383DC();
    v18 = sub_26B037A70(v49);
    ReactiveAnalyticsReporter.submit(_:)(v18);
    *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  return result;
}

uint64_t sub_26B037A1C()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037AB0()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037B80()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037C08()
{
  v1 = SUUIAnalyticsEventInteractionTypeToString();
  v2 = sub_26B079E00();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26B037C5C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B037CD0(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_26B078360();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_26B038914();
  sub_26B078320();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_26B037E40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26B078360();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_26B038914();
  v9 = v23;
  sub_26B078310();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_26B0380E4()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t ReactiveAnalyticsReporter.deinit()
{
  sub_26AF03700();
  v3 = OBJC_IVAR____TtC19SoftwareUpdateUIKit25ReactiveAnalyticsReporter___observationRegistrar;
  v1 = sub_26B078360();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

unint64_t sub_26B0383DC()
{
  v2 = qword_2803DED48;
  if (!qword_2803DED48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DED48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B038914()
{
  v2 = qword_2803DED60;
  if (!qword_2803DED60)
  {
    type metadata accessor for ReactiveAnalyticsReporter();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DED60);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveAnalyticsReporter()
{
  v1 = qword_2803DED70;
  if (!qword_2803DED70)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26B038A24()
{
  updated = sub_26B078360();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26B038BC0@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for CapabilityViewModifier();
  sub_26B038D00((v5[1] + *(v3 + 20)), v1);
  sub_26B078A10();
  return sub_26B038DD4(v7);
}

uint64_t type metadata accessor for CapabilityViewModifier()
{
  v1 = qword_2803DEE20;
  if (!qword_2803DEE20)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_26B038D00(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078480();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26B038DD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078480();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26B038EB0(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_26B038D00(v2, (&v5 - v6));
  v3 = type metadata accessor for CapabilityViewModifier();
  sub_26B038F74(v7, (v1 + *(v3 + 20)));
  return sub_26B038DD4(v8);
}

void *sub_26B038F74(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26B039060(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B078480();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26B039060(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078480();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t CapabilityViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v33 = a1;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v26 = &v12 - v25;
  v27 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v25);
  v28 = &v12 - v27;
  v53 = &v12 - v27;
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v30 = &v12 - v29;
  v52 = &v12 - v29;
  v45 = sub_26B078480();
  v41 = *(v45 - 8);
  v42 = v45 - 8;
  v31 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v43 = &v12 - v31;
  v32 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v31);
  v44 = &v12 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF8);
  v36 = *(*(v34 - 8) + 64);
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v37 = &v12 - v35;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v39 = &v12 - v38;
  v51 = &v12 - v38;
  v50 = v8;
  v49 = v2;
  sub_26B038BC0(v9);
  (*(v41 + 16))(v43, v40, v45);
  sub_26B0396B0();
  v48 = sub_26B07A980();
  v47 = *(v41 + 8);
  v46 = v41 + 8;
  v47(v43, v45);
  v47(v44, v45);
  if (v48)
  {
    v18 = sub_26B039730();
    sub_26AE9463C(v33, v22, v30);
    v17 = v23[2];
    v16 = v23 + 2;
    v17(v26, v30, v22);
    sub_26AE94B4C(v26, v22, v28);
    v20 = v23[1];
    v19 = v23 + 1;
    v20(v26, v22);
    v17(v26, v28, v22);
    sub_26AE94BB0(v26, v22, MEMORY[0x277CE1428], v18, MEMORY[0x277CE1410], v37);
    v20(v26, v22);
    sub_26B0397B8(v37, v39);
    v20(v28, v22);
    v20(v30, v22);
  }

  else
  {
    sub_26B079B90();
    v13 = MEMORY[0x277CE1428];
    v14 = MEMORY[0x277CE1410];
    sub_26AE9463C(v15, MEMORY[0x277CE1428], v15);
    sub_26AE94B4C(v15, v13, v15);
    v10 = sub_26B039730();
    sub_26AE94CA8(v15, v22, v13, v10, v14, v37);
    sub_26B0397B8(v37, v39);
  }

  sub_26B039894(v39, v37);
  sub_26B039970();
  sub_26AE94B4C(v37, v34, v21);
  sub_26B039A14(v37);
  return sub_26B039A14(v39);
}

unint64_t sub_26B0396B0()
{
  v2 = qword_2803DEE00;
  if (!qword_2803DEE00)
  {
    sub_26B078480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B039730()
{
  v2 = qword_2803DEE08;
  if (!qword_2803DEE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE08);
    return WitnessTable;
  }

  return v2;
}

void *sub_26B0397B8(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE10);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0);
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_26B039894(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE10);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0);
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26B039970()
{
  v2 = qword_2803DEE18;
  if (!qword_2803DEE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEDF8);
    sub_26B039730();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B039A14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE10);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDF0);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_26B039B0C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_26B078480();
  (*(*(v3 - 8) + 32))(a3, a1);
  v4 = type metadata accessor for CapabilityViewModifier();
  return sub_26B03A48C(a2, (a3 + *(v4 + 20)));
}

uint64_t View.enabledIfCapabilitySupported(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v14 = a1;
  v20 = a2;
  v22 = a3;
  v25 = 0;
  v24 = 0;
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0);
  v9 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v18 = &v9 - v9;
  v10 = 0;
  v13 = sub_26B078480();
  v16 = *(v13 - 8);
  v12 = v13 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v17 = &v9 - v11;
  v21 = type metadata accessor for CapabilityViewModifier();
  v15 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v17);
  v23 = &v9 - v15;
  v25 = v7;
  v24 = v4;
  (*(v16 + 16))(v6);
  sub_26B039AA8();
  sub_26B039B0C(v17, v18, v23);
  MEMORY[0x26D66C890](v23, v20, v21, v22);
  return sub_26B039DD0(v23);
}

uint64_t sub_26B039DD0(uint64_t a1)
{
  v2 = sub_26B078480();
  v3 = *(*(v2 - 8) + 8);
  v3(a1);
  v4 = *(type metadata accessor for CapabilityViewModifier() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v3)(a1 + v4, v2);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26B039F18(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_26B078480();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_26B03A0A0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_26B078480();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B03A200()
{
  v3 = sub_26B078480();
  if (v0 <= 0x3F)
  {
    v3 = sub_26B03A2CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_26B03A2CC()
{
  v4 = qword_2803DEE30;
  if (!qword_2803DEE30)
  {
    sub_26B078480();
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DEE30);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26B03A380()
{
  type metadata accessor for CapabilityViewModifier();
  sub_26B078BF0();
  sub_26B03A40C();
  return swift_getWitnessTable();
}

unint64_t sub_26B03A40C()
{
  v2 = qword_2803DEE38;
  if (!qword_2803DEE38)
  {
    type metadata accessor for CapabilityViewModifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEE38);
    return WitnessTable;
  }

  return v2;
}

void *sub_26B03A48C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEDE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078480();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t ReactiveUIManager.presentedDialog.getter@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  v4 = (v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog);
  swift_beginAccess();
  sub_26AE9FB6C(v4, a1);
  return swift_endAccess();
}

uint64_t ReactiveUIManager.presentedDialog.setter(__int128 *a1)
{
  v29 = &v36;
  v41 = 0;
  v20 = 0;
  v2 = *a1;
  v3 = a1[1];
  *(v43 + 9) = *(a1 + 25);
  v43[0] = v3;
  v42 = v2;
  v21 = v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog;
  v22 = &v40;
  swift_beginAccess();
  v23 = *v21;
  v24 = *(v21 + 8);
  v25 = *(v21 + 16);
  v26 = *(v21 + 24);
  v27 = *(v21 + 32);
  v28 = *(v21 + 40);
  sub_26AEF56C4(v23, v24, v25, v26, v27, v28);
  swift_endAccess();
  v38[0] = v23;
  v38[1] = v24;
  v38[2] = v25;
  v38[3] = v26;
  v38[4] = v27;
  v39 = v28;
  *(v37 + 9) = *(v43 + 9);
  v37[0] = v43[0];
  v36 = v42;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C8);
  sub_26AEF4560();
  v31 = v38;
  v32 = sub_26B05618C();
  sub_26AEA007C(v38);
  if ((v32 & 1) == 0)
  {
    v10[1] = &v42;
    sub_26AE9FB6C(&v42, v35);
    v11 = (v19 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentedDialog);
    v12 = &v34;
    swift_beginAccess();
    sub_26B056B8C(&v42, v11);
    swift_endAccess();
    v13 = v20;
    return sub_26AEA007C(&v42);
  }

  v4 = v19;
  v5 = v20;
  KeyPath = swift_getKeyPath();
  v14 = KeyPath;

  v15 = &v42;
  sub_26AE9FB6C(&v42, v33);
  v17 = v10;
  v6 = MEMORY[0x28223BE20](KeyPath);
  v9[2] = v4;
  v9[3] = v7;
  sub_26B056288(v6, sub_26B056DE4, v9, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v18 = v5;
  if (!v5)
  {

    sub_26AEA007C(&v42);

    v13 = v18;
    return sub_26AEA007C(&v42);
  }

  result = sub_26AEA007C(&v42);
  __break(1u);
  return result;
}

uint64_t ReactiveUIManager.downloadAndInstall(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B03AA04, 0, 0);
}

uint64_t sub_26B03AA04()
{
  v44 = v0;
  v20 = v0[36];
  v24 = v0[34];
  v0[25] = v0;
  sub_26B078540();

  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B05E884;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B067564;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B0675B0;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05E88C;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B0676B0;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05E91C;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26B0677B0;
  *(v34 + 24) = v25;
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v35 = v1;

  *v35 = sub_26B0674E8;
  v35[1] = v26;

  v35[2] = sub_26B06751C;
  v35[3] = v27;

  v35[4] = sub_26B0675FC;
  v35[5] = v28;

  v35[6] = sub_26B067634;
  v35[7] = v29;

  v35[8] = sub_26B067668;
  v35[9] = v30;

  v35[10] = sub_26B0676FC;
  v35[11] = v31;

  v35[12] = sub_26B067734;
  v35[13] = v32;

  v35[14] = sub_26B067768;
  v35[15] = v33;

  v35[16] = sub_26B0677FC;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(3);
    v39 = buf;
    v40 = v17;
    v41 = v18;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26B0674E8;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06751C;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0675FC;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067634;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067668;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0676FC;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067734;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067768;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0677FC;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Initiating a Download and Install request for %s...", buf, 0x20u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 336) = 0;
  v10 = *(v19 + 320);
  v11 = *(v19 + 296);
  v15 = *(v19 + 280);
  v12 = *(v19 + 272);
  v9 = *(v19 + 304);
  v2 = MEMORY[0x277D82BD8](v36);
  v3 = *(v9 + 8);
  *(v19 + 344) = v3;
  *(v19 + 352) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v10, v11, v2);
  v13 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 360) = v13;
  v14 = *(v12 + 24);
  *(v19 + 368) = v14;
  MEMORY[0x277D82BE0](v14);
  swift_unknownObjectRetain();
  *(v19 + 232) = v15;

  if (*(v19 + 232))
  {
    v38 = *(v19 + 232);
  }

  else
  {
    v7 = *(v19 + 288);
    swift_beginAccess();
    v8 = *(v7 + 24);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    if (!v8)
    {
      return sub_26B07A650();
    }

    v38 = v8;
    if (*(v19 + 232))
    {
      sub_26B067808();
    }
  }

  *(v19 + 376) = v38;
  sub_26AF4013C();
  v6 = sub_26B07A2E0();
  *(v19 + 384) = v6;
  *(v19 + 16) = *(v19 + 200);
  *(v19 + 56) = v19 + 168;
  *(v19 + 24) = sub_26B03B874;
  v5 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE50);
  *(v19 + 112) = v5;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05E5E4;
  *(v19 + 104) = &block_descriptor_3;
  [v13 downloadAndInstall:v14 operationDelegate:v38 delegateCallbackQueue:v6 completionHandler:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B03B874()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B03B970, 0, 0);
}

uint64_t sub_26B03B970()
{
  v50 = v0;
  v18 = v0[48];
  v19 = v0[46];
  v1 = v0[45];
  v22 = v0[36];
  v26 = v0[34];
  v0[25] = v0;
  v20 = v0[21];
  v21 = v0[22];
  v0[23] = v20;
  v0[24] = v21;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v18);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v19);
  sub_26B078540();

  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v21;
  v43 = sub_26B078570();
  v44 = sub_26B07A2A0();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B067874;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B067990;
  *(v24 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B0679DC;
  *(v32 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05E950;
  *(v25 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26B067ADC;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06787C;
  *(v27 + 24) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26B067BDC;
  *(v38 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B0678DC;
  *(v29 + 24) = v28;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_26B067CDC;
  *(v41 + 24) = v29;
  sub_26B07A760();
  v42 = v2;

  *v42 = sub_26B067914;
  v42[1] = v30;

  v42[2] = sub_26B067948;
  v42[3] = v31;

  v42[4] = sub_26B067A28;
  v42[5] = v32;

  v42[6] = sub_26B067A60;
  v42[7] = v33;

  v42[8] = sub_26B067A94;
  v42[9] = v34;

  v42[10] = sub_26B067B28;
  v42[11] = v35;

  v42[12] = sub_26B067B60;
  v42[13] = v36;

  v42[14] = sub_26B067B94;
  v42[15] = v37;

  v42[16] = sub_26B067C28;
  v42[17] = v38;

  v42[18] = sub_26B067C60;
  v42[19] = v39;

  v42[20] = sub_26B067C94;
  v42[21] = v40;

  v42[22] = sub_26B067D28;
  v42[23] = v41;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v43, v44))
  {
    v3 = *(v17 + 336);
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(4);
    v45 = buf;
    v46 = v15;
    v47 = v16;
    sub_26AEA3BC4(2, &v45);
    sub_26AEA3BC4(4, &v45);
    v48 = sub_26B067914;
    v49 = v30;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    if (v3)
    {
    }

    v48 = sub_26B067948;
    v49 = v31;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067A28;
    v49 = v32;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067A60;
    v49 = v33;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067A94;
    v49 = v34;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067B28;
    v49 = v35;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067B60;
    v49 = v36;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067B94;
    v49 = v37;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067C28;
    v49 = v38;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067C60;
    v49 = v39;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067C94;
    v49 = v40;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B067D28;
    v49 = v41;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_26AE88000, v43, v44, "%s.%s: Finished to execute Download and Install request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v17 + 344);
  v10 = *(v17 + 312);
  v11 = *(v17 + 296);
  v5 = MEMORY[0x277D82BD8](v43);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  if (v20)
  {
    *(v17 + 264) = v20;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);

    v6 = v20;
    v7 = *(*(v17 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v21);
    MEMORY[0x277D82BD8](0);
    if (v21)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    *(v17 + 240) = v9;
    if (!*(v17 + 240))
    {
      type metadata accessor for SUUIError();
      *(v17 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v17 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v17 + 240))
      {
        sub_26B067D34((v17 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v21);

    v6 = v13;
    v7 = *(*(v17 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.downloadAndSchedule(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B03CD64, 0, 0);
}

uint64_t sub_26B03CD64()
{
  v44 = v0;
  v20 = v0[36];
  v24 = v0[34];
  v0[25] = v0;
  sub_26B078540();

  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B067D60;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B067E18;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B067E64;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05ECF4;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B067F64;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B067D68;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26B068064;
  *(v34 + 24) = v25;
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v35 = v1;

  *v35 = sub_26B067D9C;
  v35[1] = v26;

  v35[2] = sub_26B067DD0;
  v35[3] = v27;

  v35[4] = sub_26B067EB0;
  v35[5] = v28;

  v35[6] = sub_26B067EE8;
  v35[7] = v29;

  v35[8] = sub_26B067F1C;
  v35[9] = v30;

  v35[10] = sub_26B067FB0;
  v35[11] = v31;

  v35[12] = sub_26B067FE8;
  v35[13] = v32;

  v35[14] = sub_26B06801C;
  v35[15] = v33;

  v35[16] = sub_26B0680B0;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(3);
    v39 = buf;
    v40 = v17;
    v41 = v18;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26B067D9C;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067DD0;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067EB0;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067EE8;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067F1C;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067FB0;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B067FE8;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06801C;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0680B0;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Initiating a Download and Schedule request for %s...", buf, 0x20u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 336) = 0;
  v10 = *(v19 + 320);
  v11 = *(v19 + 296);
  v15 = *(v19 + 280);
  v12 = *(v19 + 272);
  v9 = *(v19 + 304);
  v2 = MEMORY[0x277D82BD8](v36);
  v3 = *(v9 + 8);
  *(v19 + 344) = v3;
  *(v19 + 352) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v10, v11, v2);
  v13 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 360) = v13;
  v14 = *(v12 + 24);
  *(v19 + 368) = v14;
  MEMORY[0x277D82BE0](v14);
  swift_unknownObjectRetain();
  *(v19 + 232) = v15;

  if (*(v19 + 232))
  {
    v38 = *(v19 + 232);
  }

  else
  {
    v7 = *(v19 + 288);
    swift_beginAccess();
    v8 = *(v7 + 24);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    if (!v8)
    {
      return sub_26B07A650();
    }

    v38 = v8;
    if (*(v19 + 232))
    {
      sub_26B067808();
    }
  }

  *(v19 + 376) = v38;
  sub_26AF4013C();
  v6 = sub_26B07A2E0();
  *(v19 + 384) = v6;
  *(v19 + 16) = *(v19 + 200);
  *(v19 + 56) = v19 + 168;
  *(v19 + 24) = sub_26B03DBD4;
  v5 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE58);
  *(v19 + 112) = v5;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05ED84;
  *(v19 + 104) = &block_descriptor_172;
  [v13 downloadAndScheduleUpdate:v14 operationDelegate:v38 delegateCallbackQueue:v6 completionHandler:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B03DBD4()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B03DCD0, 0, 0);
}

uint64_t sub_26B03DCD0()
{
  v40 = v0;
  v18 = v0[48];
  v19 = v0[46];
  v1 = v0[45];
  v22 = v0[34];
  v0[25] = v0;
  v20 = v0[21];
  v21 = v0[22];
  v0[23] = v20;
  v0[24] = v21;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v18);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v19);
  sub_26B078540();

  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v21;
  v33 = sub_26B078570();
  v34 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B0680FC;
  *(v23 + 24) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B068210;
  *(v28 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06815C;
  *(v25 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B068310;
  *(v31 + 24) = v25;
  sub_26B07A760();
  v32 = v2;

  *v32 = sub_26B068194;
  v32[1] = v26;

  v32[2] = sub_26B0681C8;
  v32[3] = v27;

  v32[4] = sub_26B06825C;
  v32[5] = v28;

  v32[6] = sub_26B068294;
  v32[7] = v29;

  v32[8] = sub_26B0682C8;
  v32[9] = v30;

  v32[10] = sub_26B06835C;
  v32[11] = v31;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v33, v34))
  {
    v3 = *(v17 + 336);
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(2);
    v35 = buf;
    v36 = v15;
    v37 = v16;
    sub_26AEA3BC4(2, &v35);
    sub_26AEA3BC4(2, &v35);
    v38 = sub_26B068194;
    v39 = v26;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    if (v3)
    {
    }

    v38 = sub_26B0681C8;
    v39 = v27;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26B06825C;
    v39 = v28;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26B068294;
    v39 = v29;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26B0682C8;
    v39 = v30;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26B06835C;
    v39 = v31;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_26AE88000, v33, v34, "Finished to execute Download and Schedule request for %s with result: %s", buf, 0x16u);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v17 + 344);
  v10 = *(v17 + 312);
  v11 = *(v17 + 296);
  v5 = MEMORY[0x277D82BD8](v33);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  if (v20)
  {
    *(v17 + 264) = v20;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);

    v6 = v20;
    v7 = *(*(v17 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v21);
    MEMORY[0x277D82BD8](0);
    if (v21)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    *(v17 + 240) = v9;
    if (!*(v17 + 240))
    {
      type metadata accessor for SUUIError();
      *(v17 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v17 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v17 + 240))
      {
        sub_26B067D34((v17 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v21);

    v6 = v13;
    v7 = *(*(v17 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.download(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B03EAD8, 0, 0);
}

uint64_t sub_26B03EAD8()
{
  v44 = v0;
  v20 = v0[36];
  v24 = v0[34];
  v0[25] = v0;
  sub_26B078540();

  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B068368;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B068420;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B06846C;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05E554;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B06856C;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B068370;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26B06866C;
  *(v34 + 24) = v25;
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v35 = v1;

  *v35 = sub_26B0683A4;
  v35[1] = v26;

  v35[2] = sub_26B0683D8;
  v35[3] = v27;

  v35[4] = sub_26B0684B8;
  v35[5] = v28;

  v35[6] = sub_26B0684F0;
  v35[7] = v29;

  v35[8] = sub_26B068524;
  v35[9] = v30;

  v35[10] = sub_26B0685B8;
  v35[11] = v31;

  v35[12] = sub_26B0685F0;
  v35[13] = v32;

  v35[14] = sub_26B068624;
  v35[15] = v33;

  v35[16] = sub_26B0686B8;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(3);
    v39 = buf;
    v40 = v17;
    v41 = v18;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26B0683A4;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0683D8;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0684B8;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0684F0;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068524;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0685B8;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0685F0;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068624;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0686B8;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Initiating a Download Only request for %s...", buf, 0x20u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 336) = 0;
  v10 = *(v19 + 320);
  v11 = *(v19 + 296);
  v15 = *(v19 + 280);
  v12 = *(v19 + 272);
  v9 = *(v19 + 304);
  v2 = MEMORY[0x277D82BD8](v36);
  v3 = *(v9 + 8);
  *(v19 + 344) = v3;
  *(v19 + 352) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v10, v11, v2);
  v13 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 360) = v13;
  v14 = *(v12 + 24);
  *(v19 + 368) = v14;
  MEMORY[0x277D82BE0](v14);
  swift_unknownObjectRetain();
  *(v19 + 232) = v15;

  if (*(v19 + 232))
  {
    v38 = *(v19 + 232);
  }

  else
  {
    v7 = *(v19 + 288);
    swift_beginAccess();
    v8 = *(v7 + 24);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    if (!v8)
    {
      return sub_26B07A650();
    }

    v38 = v8;
    if (*(v19 + 232))
    {
      sub_26B067808();
    }
  }

  *(v19 + 376) = v38;
  sub_26AF4013C();
  v6 = sub_26B07A2E0();
  *(v19 + 384) = v6;
  *(v19 + 16) = *(v19 + 200);
  *(v19 + 56) = v19 + 168;
  *(v19 + 24) = sub_26B03F948;
  v5 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE50);
  *(v19 + 112) = v5;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05E5E4;
  *(v19 + 104) = &block_descriptor_263;
  [v13 downloadUpdate:v14 operationDelegate:v38 delegateCallbackQueue:v6 completionHandler:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B03F948()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B03FA44, 0, 0);
}

uint64_t sub_26B03FA44()
{
  v50 = v0;
  v18 = v0[48];
  v19 = v0[46];
  v1 = v0[45];
  v22 = v0[36];
  v26 = v0[34];
  v0[25] = v0;
  v20 = v0[21];
  v21 = v0[22];
  v0[23] = v20;
  v0[24] = v21;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v18);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v19);
  sub_26B078540();

  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v21;
  v43 = sub_26B078570();
  v44 = sub_26B07A2A0();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B068704;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B068820;
  *(v24 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B06886C;
  *(v32 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05E724;
  *(v25 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26B06896C;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06870C;
  *(v27 + 24) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26B068A6C;
  *(v38 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06876C;
  *(v29 + 24) = v28;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_26B068B6C;
  *(v41 + 24) = v29;
  sub_26B07A760();
  v42 = v2;

  *v42 = sub_26B0687A4;
  v42[1] = v30;

  v42[2] = sub_26B0687D8;
  v42[3] = v31;

  v42[4] = sub_26B0688B8;
  v42[5] = v32;

  v42[6] = sub_26B0688F0;
  v42[7] = v33;

  v42[8] = sub_26B068924;
  v42[9] = v34;

  v42[10] = sub_26B0689B8;
  v42[11] = v35;

  v42[12] = sub_26B0689F0;
  v42[13] = v36;

  v42[14] = sub_26B068A24;
  v42[15] = v37;

  v42[16] = sub_26B068AB8;
  v42[17] = v38;

  v42[18] = sub_26B068AF0;
  v42[19] = v39;

  v42[20] = sub_26B068B24;
  v42[21] = v40;

  v42[22] = sub_26B068BB8;
  v42[23] = v41;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v43, v44))
  {
    v3 = *(v17 + 336);
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(4);
    v45 = buf;
    v46 = v15;
    v47 = v16;
    sub_26AEA3BC4(2, &v45);
    sub_26AEA3BC4(4, &v45);
    v48 = sub_26B0687A4;
    v49 = v30;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    if (v3)
    {
    }

    v48 = sub_26B0687D8;
    v49 = v31;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B0688B8;
    v49 = v32;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B0688F0;
    v49 = v33;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B068924;
    v49 = v34;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B0689B8;
    v49 = v35;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B0689F0;
    v49 = v36;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B068A24;
    v49 = v37;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B068AB8;
    v49 = v38;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B068AF0;
    v49 = v39;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B068B24;
    v49 = v40;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B068BB8;
    v49 = v41;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_26AE88000, v43, v44, "%s.%s: Finished to execute Download Only request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v17 + 344);
  v10 = *(v17 + 312);
  v11 = *(v17 + 296);
  v5 = MEMORY[0x277D82BD8](v43);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  if (v20)
  {
    *(v17 + 264) = v20;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);

    v6 = v20;
    v7 = *(*(v17 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v21);
    MEMORY[0x277D82BD8](0);
    if (v21)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    *(v17 + 240) = v9;
    if (!*(v17 + 240))
    {
      type metadata accessor for SUUIError();
      *(v17 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v17 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v17 + 240))
      {
        sub_26B067D34((v17 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v21);

    v6 = v13;
    v7 = *(*(v17 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.install(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B040E38, 0, 0);
}

uint64_t sub_26B040E38()
{
  v44 = v0;
  v20 = v0[36];
  v24 = v0[34];
  v0[25] = v0;
  sub_26B078540();

  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B068BC4;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B068C7C;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B068CC8;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05EF68;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B068DC8;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B068BCC;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26B068EC8;
  *(v34 + 24) = v25;
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v35 = v1;

  *v35 = sub_26B068C00;
  v35[1] = v26;

  v35[2] = sub_26B068C34;
  v35[3] = v27;

  v35[4] = sub_26B068D14;
  v35[5] = v28;

  v35[6] = sub_26B068D4C;
  v35[7] = v29;

  v35[8] = sub_26B068D80;
  v35[9] = v30;

  v35[10] = sub_26B068E14;
  v35[11] = v31;

  v35[12] = sub_26B068E4C;
  v35[13] = v32;

  v35[14] = sub_26B068E80;
  v35[15] = v33;

  v35[16] = sub_26B068F14;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(3);
    v39 = buf;
    v40 = v17;
    v41 = v18;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26B068C00;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068C34;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068D14;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068D4C;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068D80;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068E14;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068E4C;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068E80;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B068F14;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Initiating a Install Now request for %s...", buf, 0x20u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 336) = 0;
  v10 = *(v19 + 320);
  v11 = *(v19 + 296);
  v15 = *(v19 + 280);
  v12 = *(v19 + 272);
  v9 = *(v19 + 304);
  v2 = MEMORY[0x277D82BD8](v36);
  v3 = *(v9 + 8);
  *(v19 + 344) = v3;
  *(v19 + 352) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v10, v11, v2);
  v13 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 360) = v13;
  v14 = *(v12 + 24);
  *(v19 + 368) = v14;
  MEMORY[0x277D82BE0](v14);
  swift_unknownObjectRetain();
  *(v19 + 232) = v15;

  if (*(v19 + 232))
  {
    v38 = *(v19 + 232);
  }

  else
  {
    v7 = *(v19 + 288);
    swift_beginAccess();
    v8 = *(v7 + 24);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    if (!v8)
    {
      return sub_26B07A650();
    }

    v38 = v8;
    if (*(v19 + 232))
    {
      sub_26B067808();
    }
  }

  *(v19 + 376) = v38;
  sub_26AF4013C();
  v6 = sub_26B07A2E0();
  *(v19 + 384) = v6;
  *(v19 + 16) = *(v19 + 200);
  *(v19 + 56) = v19 + 168;
  *(v19 + 24) = sub_26B041CA8;
  v5 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE60);
  *(v19 + 112) = v5;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05EFF8;
  *(v19 + 104) = &block_descriptor_390;
  [v13 installUpdate:v14 operationDelegate:v38 delegateCallbackQueue:v6 completionHandler:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B041CA8()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B041DA4, 0, 0);
}

uint64_t sub_26B041DA4()
{
  v50 = v0;
  v18 = v0[48];
  v19 = v0[46];
  v1 = v0[45];
  v22 = v0[36];
  v26 = v0[34];
  v0[25] = v0;
  v20 = v0[21];
  v21 = v0[22];
  v0[23] = v20;
  v0[24] = v21;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v18);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v19);
  sub_26B078540();

  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v21;
  v43 = sub_26B078570();
  v44 = sub_26B07A2A0();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B068F60;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06907C;
  *(v24 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B0690C8;
  *(v32 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05F104;
  *(v25 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26B0691C8;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B068F68;
  *(v27 + 24) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26B0692C8;
  *(v38 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B068FC8;
  *(v29 + 24) = v28;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_26B0693C8;
  *(v41 + 24) = v29;
  sub_26B07A760();
  v42 = v2;

  *v42 = sub_26B069000;
  v42[1] = v30;

  v42[2] = sub_26B069034;
  v42[3] = v31;

  v42[4] = sub_26B069114;
  v42[5] = v32;

  v42[6] = sub_26B06914C;
  v42[7] = v33;

  v42[8] = sub_26B069180;
  v42[9] = v34;

  v42[10] = sub_26B069214;
  v42[11] = v35;

  v42[12] = sub_26B06924C;
  v42[13] = v36;

  v42[14] = sub_26B069280;
  v42[15] = v37;

  v42[16] = sub_26B069314;
  v42[17] = v38;

  v42[18] = sub_26B06934C;
  v42[19] = v39;

  v42[20] = sub_26B069380;
  v42[21] = v40;

  v42[22] = sub_26B069414;
  v42[23] = v41;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v43, v44))
  {
    v3 = *(v17 + 336);
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(4);
    v45 = buf;
    v46 = v15;
    v47 = v16;
    sub_26AEA3BC4(2, &v45);
    sub_26AEA3BC4(4, &v45);
    v48 = sub_26B069000;
    v49 = v30;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    if (v3)
    {
    }

    v48 = sub_26B069034;
    v49 = v31;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069114;
    v49 = v32;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B06914C;
    v49 = v33;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069180;
    v49 = v34;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069214;
    v49 = v35;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B06924C;
    v49 = v36;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069280;
    v49 = v37;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069314;
    v49 = v38;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B06934C;
    v49 = v39;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069380;
    v49 = v40;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069414;
    v49 = v41;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_26AE88000, v43, v44, "%s.%s: Finished to execute Install Now request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v17 + 344);
  v10 = *(v17 + 312);
  v11 = *(v17 + 296);
  v5 = MEMORY[0x277D82BD8](v43);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  if (v20)
  {
    *(v17 + 264) = v20;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);

    v6 = v20;
    v7 = *(*(v17 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v21);
    MEMORY[0x277D82BD8](0);
    if (v21)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    *(v17 + 240) = v9;
    if (!*(v17 + 240))
    {
      type metadata accessor for SUUIError();
      *(v17 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v17 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v17 + 240))
      {
        sub_26B067D34((v17 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v21);

    v6 = v13;
    v7 = *(*(v17 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.schedule(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[35] = a2;
  v3[34] = a1;
  v3[25] = v3;
  v3[26] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[23] = 0;
  v3[24] = 0;
  v3[33] = 0;
  v4 = sub_26B078580();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = v2;

  return MEMORY[0x2822009F8](sub_26B043198, 0, 0);
}

uint64_t sub_26B043198()
{
  v44 = v0;
  v20 = v0[36];
  v24 = v0[34];
  v0[25] = v0;
  sub_26B078540();

  v36 = sub_26B078570();
  v37 = sub_26B07A2A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B069420;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B0694D8;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B069524;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B05F238;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B069624;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B069428;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26B069724;
  *(v34 + 24) = v25;
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v35 = v1;

  *v35 = sub_26B06945C;
  v35[1] = v26;

  v35[2] = sub_26B069490;
  v35[3] = v27;

  v35[4] = sub_26B069570;
  v35[5] = v28;

  v35[6] = sub_26B0695A8;
  v35[7] = v29;

  v35[8] = sub_26B0695DC;
  v35[9] = v30;

  v35[10] = sub_26B069670;
  v35[11] = v31;

  v35[12] = sub_26B0696A8;
  v35[13] = v32;

  v35[14] = sub_26B0696DC;
  v35[15] = v33;

  v35[16] = sub_26B069770;
  v35[17] = v34;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(3);
    v39 = buf;
    v40 = v17;
    v41 = v18;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(3, &v39);
    v42 = sub_26B06945C;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B069490;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B069570;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0695A8;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0695DC;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B069670;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0696A8;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B0696DC;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B069770;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: Initiating a Install Tonight request for %s...", buf, 0x20u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 336) = 0;
  v10 = *(v19 + 320);
  v11 = *(v19 + 296);
  v15 = *(v19 + 280);
  v12 = *(v19 + 272);
  v9 = *(v19 + 304);
  v2 = MEMORY[0x277D82BD8](v36);
  v3 = *(v9 + 8);
  *(v19 + 344) = v3;
  *(v19 + 352) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v10, v11, v2);
  v13 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 360) = v13;
  v14 = *(v12 + 24);
  *(v19 + 368) = v14;
  MEMORY[0x277D82BE0](v14);
  swift_unknownObjectRetain();
  *(v19 + 232) = v15;

  if (*(v19 + 232))
  {
    v38 = *(v19 + 232);
  }

  else
  {
    v7 = *(v19 + 288);
    swift_beginAccess();
    v8 = *(v7 + 24);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    if (!v8)
    {
      return sub_26B07A650();
    }

    v38 = v8;
    if (*(v19 + 232))
    {
      sub_26B067808();
    }
  }

  *(v19 + 376) = v38;
  sub_26AF4013C();
  v6 = sub_26B07A2E0();
  *(v19 + 384) = v6;
  *(v19 + 16) = *(v19 + 200);
  *(v19 + 56) = v19 + 168;
  *(v19 + 24) = sub_26B044008;
  v5 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEE68);
  *(v19 + 112) = v5;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05F2C8;
  *(v19 + 104) = &block_descriptor_517;
  [v13 scheduleUpdate:v14 operationDelegate:v38 delegateCallbackQueue:v6 completionHandler:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B044008()
{
  *(*v0 + 200) = *v0;

  return MEMORY[0x2822009F8](sub_26B044104, 0, 0);
}

uint64_t sub_26B044104()
{
  v50 = v0;
  v18 = v0[48];
  v19 = v0[46];
  v1 = v0[45];
  v22 = v0[36];
  v26 = v0[34];
  v0[25] = v0;
  v20 = v0[21];
  v21 = v0[22];
  v0[23] = v20;
  v0[24] = v21;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v18);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v19);
  sub_26B078540();

  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v21;
  v43 = sub_26B078570();
  v44 = sub_26B07A2A0();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B0697BC;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B0698D8;
  *(v24 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B069924;
  *(v32 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B05F3D4;
  *(v25 + 24) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26B069A24;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B0697C4;
  *(v27 + 24) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26B069B24;
  *(v38 + 24) = v27;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B069824;
  *(v29 + 24) = v28;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_26B069C24;
  *(v41 + 24) = v29;
  sub_26B07A760();
  v42 = v2;

  *v42 = sub_26B06985C;
  v42[1] = v30;

  v42[2] = sub_26B069890;
  v42[3] = v31;

  v42[4] = sub_26B069970;
  v42[5] = v32;

  v42[6] = sub_26B0699A8;
  v42[7] = v33;

  v42[8] = sub_26B0699DC;
  v42[9] = v34;

  v42[10] = sub_26B069A70;
  v42[11] = v35;

  v42[12] = sub_26B069AA8;
  v42[13] = v36;

  v42[14] = sub_26B069ADC;
  v42[15] = v37;

  v42[16] = sub_26B069B70;
  v42[17] = v38;

  v42[18] = sub_26B069BA8;
  v42[19] = v39;

  v42[20] = sub_26B069BDC;
  v42[21] = v40;

  v42[22] = sub_26B069C70;
  v42[23] = v41;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v43, v44))
  {
    v3 = *(v17 + 336);
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(4);
    v45 = buf;
    v46 = v15;
    v47 = v16;
    sub_26AEA3BC4(2, &v45);
    sub_26AEA3BC4(4, &v45);
    v48 = sub_26B06985C;
    v49 = v30;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    if (v3)
    {
    }

    v48 = sub_26B069890;
    v49 = v31;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069970;
    v49 = v32;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B0699A8;
    v49 = v33;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B0699DC;
    v49 = v34;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069A70;
    v49 = v35;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069AA8;
    v49 = v36;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069ADC;
    v49 = v37;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069B70;
    v49 = v38;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069BA8;
    v49 = v39;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069BDC;
    v49 = v40;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    v48 = sub_26B069C70;
    v49 = v41;
    sub_26AEA3BD8(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_26AE88000, v43, v44, "%s.%s: Finished to execute Install Tonight request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v17 + 344);
  v10 = *(v17 + 312);
  v11 = *(v17 + 296);
  v5 = MEMORY[0x277D82BD8](v43);
  v12(v10, v11, v5);
  MEMORY[0x277D82BE0](v20);
  MEMORY[0x277D82BE0](v21);
  if (v20)
  {
    *(v17 + 264) = v20;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);

    v6 = v20;
    v7 = *(*(v17 + 200) + 8);
  }

  else
  {
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BE0](0);
    MEMORY[0x277D82BE0](v21);
    MEMORY[0x277D82BD8](0);
    if (v21)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    *(v17 + 240) = v9;
    if (!*(v17 + 240))
    {
      type metadata accessor for SUUIError();
      *(v17 + 256) = -1;
      sub_26AE9B67C();
      sub_26B05E82C();
      sub_26B0780F0();
      v8 = *(v17 + 248);
      MEMORY[0x277D82BE0](v8);
      MEMORY[0x277D82BD8](v8);
      if (*(v17 + 240))
      {
        sub_26B067D34((v17 + 240));
      }
    }

    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v21);

    v6 = v13;
    v7 = *(*(v17 + 200) + 8);
  }

  return v7(v6);
}

uint64_t ReactiveUIManager.statefulManager.getter()
{
  v16 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v16 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar);
  v4 = &v15;
  v15 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v0 = v5;

  (*(v7 + 8))(v9, v10);
  v11 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__statefulManager);
  v12 = &v14;
  swift_beginAccess();
  v13 = *v11;
  MEMORY[0x277D82BE0](v13);
  swift_endAccess();
  return v13;
}

id ReactiveUIManager.currentState.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 currentState];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

Swift::Bool __swiftcall ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()()
{
  v10 = v0;
  v7 = ReactiveUIManager.statefulManager.getter();
  v8 = [v7 isPreferredUpdatePromotedAsAlternate];
  MEMORY[0x277D82BD8](v7);

  if (v8)
  {
    v6 = ReactiveUIManager.statefulManager.getter();
    v9 = [v6 preferredStatefulDescriptor];
    if (v9)
    {
      v4 = v9;
      MEMORY[0x277D82BE0](v9);
      sub_26AEB7548(&v9);
      [v4 currentState];
      MEMORY[0x277D82BD8](v4);
      v5 = 0;
    }

    else
    {
      sub_26AEB7548(&v9);
      MEMORY[0x277D82BD8](v6);
      v5 = 1;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for SUUIStatefulDescriptorState();
      sub_26AFE1DF4();
      v3 = sub_26B079D70();
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ReactiveUIManager.preferredDescriptor.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__preferredDescriptor);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

uint64_t ReactiveUIManager.alternateDescriptor.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__alternateDescriptor);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

id ReactiveUIManager.scanError.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 scanError];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t ReactiveUIManager.currentDownload.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__currentDownload);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

id ReactiveUIManager.ddmDeclaration.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 ddmDeclaration];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t ReactiveUIManager.presentingViewController.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26B05601C(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x277D82BE0](*v3);
  swift_endAccess();
  return v4;
}

uint64_t ReactiveUIManager.canEnrollInBetaUpdates.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__canEnrollInBetaUpdates);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;
  swift_endAccess();
  return v14 & 1;
}

uint64_t ReactiveUIManager.betaPrograms.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__betaPrograms);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;
  sub_26B078640();
  swift_endAccess();
  return v14;
}

uint64_t ReactiveUIManager.enrolledBetaProgram.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__enrolledBetaProgram);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

void ReactiveUIManager.betaUpdatesRestrictions.getter(_BYTE *a1@<X8>)
{
  v11 = v1;
  v8 = ReactiveUIManager.statefulManager.getter();
  v9 = [v8 inLockdownMode];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    *a1 = 1;
  }

  else
  {
    v6 = ReactiveUIManager.statefulManager.getter();
    v10 = [v6 currentSeedingDevice];
    if (v10)
    {
      v3 = v10;
      MEMORY[0x277D82BE0](v10);
      sub_26B069E90(&v10);
      v4 = [v3 hasDeviceManagementRestriction];
      MEMORY[0x277D82BD8](v3);
      v5 = v4;
    }

    else
    {
      sub_26B069E90(&v10);
      MEMORY[0x277D82BD8](v6);
      v5 = 2;
    }

    if (v5 == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v5;
    }

    if (v2)
    {
      *a1 = 2;
    }

    else
    {
      *a1 = 0;
    }
  }
}

uint64_t ReactiveUIManager.enrollInBetaUpdatesProgram(toProgram:)(uint64_t a1)
{
  v2[23] = v1;
  v2[22] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[20] = 0;
  v3 = sub_26B078580();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[19] = a1;
  v2[20] = v1;

  return MEMORY[0x2822009F8](sub_26B046874, 0, 0);
}

uint64_t sub_26B046874()
{
  v39 = v0;
  v16 = v0[23];
  v20 = v0[22];
  v0[18] = v0;
  sub_26B078540();

  v32 = sub_26B078570();
  v33 = sub_26B07A2A0();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B069EC4;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B069F7C;
  *(v18 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B069FC8;
  *(v24 + 24) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05FAD4;
  *(v19 + 24) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06A0C8;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B069ECC;
  *(v21 + 24) = v20;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06A608;
  *(v30 + 24) = v21;
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v31 = v1;

  *v31 = sub_26B069F00;
  v31[1] = v22;

  v31[2] = sub_26B069F34;
  v31[3] = v23;

  v31[4] = sub_26B06A014;
  v31[5] = v24;

  v31[6] = sub_26B06A04C;
  v31[7] = v25;

  v31[8] = sub_26B06A080;
  v31[9] = v26;

  v31[10] = sub_26B06A114;
  v31[11] = v27;

  v31[12] = sub_26B06A14C;
  v31[13] = v28;

  v31[14] = sub_26B06A180;
  v31[15] = v29;

  v31[16] = sub_26B06A654;
  v31[17] = v30;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v13 = sub_26AEA3B70(0);
    v14 = sub_26AEA3B70(2);
    v34 = buf;
    v35 = v13;
    v36 = v14;
    sub_26AEA3BC4(2, &v34);
    sub_26AEA3BC4(3, &v34);
    v37 = sub_26B069F00;
    v38 = v22;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B069F34;
    v38 = v23;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A014;
    v38 = v24;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A04C;
    v38 = v25;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A080;
    v38 = v26;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A114;
    v38 = v27;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A14C;
    v38 = v28;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A180;
    v38 = v29;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06A654;
    v38 = v30;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_26AE88000, v32, v33, "%s.%s: Initiating a request to enroll into a beta program %ld", buf, 0x20u);
    sub_26AEA3C24(v13);
    sub_26AEA3C24(v14);
    sub_26B07A400();
  }

  else
  {
  }

  *(v15 + 232) = 0;
  v6 = *(v15 + 216);
  v7 = *(v15 + 192);
  v8 = *(v15 + 176);
  v5 = *(v15 + 200);
  v2 = MEMORY[0x277D82BD8](v32);
  v3 = *(v5 + 8);
  *(v15 + 240) = v3;
  *(v15 + 248) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7, v2);
  v11 = ReactiveUIManager.statefulManager.getter();
  *(v15 + 256) = v11;
  v10 = *(v8 + 16);
  *(v15 + 264) = v10;
  MEMORY[0x277D82BE0](v10);
  *(v15 + 16) = *(v15 + 144);
  *(v15 + 56) = v15 + 168;
  *(v15 + 24) = sub_26B0474A8;
  v9 = swift_continuation_init();
  *(v15 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEED0);
  *(v15 + 112) = v9;
  *(v15 + 80) = MEMORY[0x277D85DD0];
  *(v15 + 88) = 1107296256;
  *(v15 + 92) = 0;
  *(v15 + 96) = sub_26B05FB58;
  *(v15 + 104) = &block_descriptor_676;
  [v11 enrollInBetaUpdatesProgram:v10 completionHandler:?];

  return MEMORY[0x282200938](v15 + 16);
}

uint64_t sub_26B0474A8()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[34] = v1;
  if (v1)
  {
    v2 = sub_26B04815C;
  }

  else
  {
    v2 = sub_26B047600;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B047600()
{
  v38 = v0;
  v14 = v0[33];
  v13 = v0[32];
  v15 = v0[23];
  v19 = v0[22];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v0[21]);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  sub_26B078540();

  v31 = sub_26B078570();
  v32 = sub_26B07A2A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26B06A708;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06A7C0;
  *(v17 + 24) = v16;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06A80C;
  *(v23 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B05FCBC;
  *(v18 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06A90C;
  *(v26 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B06A710;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06AA0C;
  *(v29 + 24) = v20;
  sub_26B07A760();
  v30 = v1;

  *v30 = sub_26B06A744;
  v30[1] = v21;

  v30[2] = sub_26B06A778;
  v30[3] = v22;

  v30[4] = sub_26B06A858;
  v30[5] = v23;

  v30[6] = sub_26B06A890;
  v30[7] = v24;

  v30[8] = sub_26B06A8C4;
  v30[9] = v25;

  v30[10] = sub_26B06A958;
  v30[11] = v26;

  v30[12] = sub_26B06A990;
  v30[13] = v27;

  v30[14] = sub_26B06A9C4;
  v30[15] = v28;

  v30[16] = sub_26B06AA58;
  v30[17] = v29;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v31, v32))
  {
    v2 = v12[29];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v10 = sub_26AEA3B70(0);
    v11 = sub_26AEA3B70(2);
    v33 = buf;
    v34 = v10;
    v35 = v11;
    sub_26AEA3BC4(2, &v33);
    sub_26AEA3BC4(3, &v33);
    v36 = sub_26B06A744;
    v37 = v21;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    if (v2)
    {
    }

    v36 = sub_26B06A778;
    v37 = v22;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06A858;
    v37 = v23;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06A890;
    v37 = v24;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06A8C4;
    v37 = v25;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06A958;
    v37 = v26;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06A990;
    v37 = v27;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06A9C4;
    v37 = v28;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    v36 = sub_26B06AA58;
    v37 = v29;
    sub_26AEA3BD8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_26AE88000, v31, v32, "%s.%s: Finished to execute a request to enroll into a beta program %ld", buf, 0x20u);
    sub_26AEA3C24(v10);
    sub_26AEA3C24(v11);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v12[30];
  v8 = v12[26];
  v6 = v12[24];
  v4 = MEMORY[0x277D82BD8](v31);
  v7(v8, v6, v4);

  v5 = *(v12[18] + 8);

  return v5();
}

uint64_t sub_26B04815C()
{
  v4 = v0[33];
  v3 = v0[32];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[18] + 8);

  return v1();
}

uint64_t ReactiveUIManager.unenrollFromBetaUpdates()()
{
  *(v1 + 160) = v0;
  *(v1 + 144) = v1;
  *(v1 + 152) = 0;
  *(v1 + 240) = 0;
  v2 = sub_26B078580();
  *(v1 + 168) = v2;
  *(v1 + 176) = *(v2 - 8);
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 152) = v0;

  return MEMORY[0x2822009F8](sub_26B048364, 0, 0);
}

uint64_t sub_26B048364()
{
  v32 = v0;
  v14 = v0[20];
  v0[18] = v0;
  sub_26B078540();

  v25 = sub_26B078570();
  v26 = sub_26B07A2A0();
  v18 = swift_allocObject();
  *(v18 + 16) = 32;
  v19 = swift_allocObject();
  *(v19 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26B06AACC;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26B06AB7C;
  *(v16 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B06ABC8;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B05FD6C;
  *(v17 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06ACC8;
  *(v23 + 24) = v17;
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v24 = v1;

  *v24 = sub_26B06AB00;
  v24[1] = v18;

  v24[2] = sub_26B06AB34;
  v24[3] = v19;

  v24[4] = sub_26B06AC14;
  v24[5] = v20;

  v24[6] = sub_26B06AC4C;
  v24[7] = v21;

  v24[8] = sub_26B06AC80;
  v24[9] = v22;

  v24[10] = sub_26B06AD14;
  v24[11] = v23;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(2);
    v27 = buf;
    v28 = v11;
    v29 = v12;
    sub_26AEA3BC4(2, &v27);
    sub_26AEA3BC4(2, &v27);
    v30 = sub_26B06AB00;
    v31 = v18;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06AB34;
    v31 = v19;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06AC14;
    v31 = v20;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06AC4C;
    v31 = v21;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06AC80;
    v31 = v22;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06AD14;
    v31 = v23;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_26AE88000, v25, v26, "%s.%s: Initiating a request to unenroll from beta updates", buf, 0x16u);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  *(v13 + 208) = 0;
  v6 = *(v13 + 192);
  v7 = *(v13 + 168);
  v5 = *(v13 + 176);
  v2 = MEMORY[0x277D82BD8](v25);
  v3 = *(v5 + 8);
  *(v13 + 216) = v3;
  *(v13 + 224) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7, v2);
  v9 = ReactiveUIManager.statefulManager.getter();
  *(v13 + 232) = v9;
  *(v13 + 16) = *(v13 + 144);
  *(v13 + 56) = v13 + 241;
  *(v13 + 24) = sub_26B048C7C;
  v8 = swift_continuation_init();
  *(v13 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEED8);
  *(v13 + 112) = v8;
  *(v13 + 80) = MEMORY[0x277D85DD0];
  *(v13 + 88) = 1107296256;
  *(v13 + 92) = 0;
  *(v13 + 96) = sub_26B05FD9C;
  *(v13 + 104) = &block_descriptor_768;
  [v9 unenrollFromBetaUpdatesWithCompletion_];

  return MEMORY[0x282200938](v13 + 16);
}

uint64_t sub_26B048C7C()
{
  *(*v0 + 144) = *v0;

  return MEMORY[0x2822009F8](sub_26B048D78, 0, 0);
}

uint64_t sub_26B048D78()
{
  v33 = v0;
  v1 = *(v0 + 232);
  v15 = *(v0 + 160);
  *(v0 + 144) = v0;
  v14 = *(v0 + 241);
  *(v0 + 240) = v14 & 1;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v26 = sub_26B078570();
  v27 = sub_26B07A2A0();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26B06AD60;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06AE10;
  *(v17 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06AE5C;
  *(v21 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B05FE10;
  *(v18 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06AF5C;
  *(v24 + 24) = v18;
  sub_26B07A760();
  v25 = v2;

  *v25 = sub_26B06AD94;
  v25[1] = v19;

  v25[2] = sub_26B06ADC8;
  v25[3] = v20;

  v25[4] = sub_26B06AEA8;
  v25[5] = v21;

  v25[6] = sub_26B06AEE0;
  v25[7] = v22;

  v25[8] = sub_26B06AF14;
  v25[9] = v23;

  v25[10] = sub_26B06AFA8;
  v25[11] = v24;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v26, v27))
  {
    v3 = v13[26];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(2);
    v28 = buf;
    v29 = v11;
    v30 = v12;
    sub_26AEA3BC4(2, &v28);
    sub_26AEA3BC4(2, &v28);
    v31 = sub_26B06AD94;
    v32 = v19;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    if (v3)
    {
    }

    v31 = sub_26B06ADC8;
    v32 = v20;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06AEA8;
    v32 = v21;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06AEE0;
    v32 = v22;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06AF14;
    v32 = v23;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06AFA8;
    v32 = v24;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_26AE88000, v26, v27, "%s.%s: Finished to execute a request to unenroll from beta updates", buf, 0x16u);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v13[27];
  v9 = v13[23];
  v7 = v13[21];
  v5 = MEMORY[0x277D82BD8](v26);
  v8(v9, v7, v5);

  v6 = *(v13[18] + 8);

  return v6(v14 & 1);
}

uint64_t ReactiveUIManager.refreshBetaUpdates()()
{
  v1[22] = v0;
  v1[18] = v1;
  v1[19] = 0;
  v1[21] = 0;
  v2 = sub_26B078580();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[19] = v0;

  return MEMORY[0x2822009F8](sub_26B04972C, 0, 0);
}

uint64_t sub_26B04972C()
{
  v32 = v0;
  v14 = v0[22];
  v0[18] = v0;
  sub_26B078540();

  v25 = sub_26B078570();
  v26 = sub_26B07A2A0();
  v18 = swift_allocObject();
  *(v18 + 16) = 32;
  v19 = swift_allocObject();
  *(v19 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26B06AFB4;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26B06B064;
  *(v16 + 24) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B06B0B0;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B05FE6C;
  *(v17 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06B1B0;
  *(v23 + 24) = v17;
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v24 = v1;

  *v24 = sub_26B06AFE8;
  v24[1] = v18;

  v24[2] = sub_26B06B01C;
  v24[3] = v19;

  v24[4] = sub_26B06B0FC;
  v24[5] = v20;

  v24[6] = sub_26B06B134;
  v24[7] = v21;

  v24[8] = sub_26B06B168;
  v24[9] = v22;

  v24[10] = sub_26B06B1FC;
  v24[11] = v23;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(2);
    v27 = buf;
    v28 = v11;
    v29 = v12;
    sub_26AEA3BC4(2, &v27);
    sub_26AEA3BC4(2, &v27);
    v30 = sub_26B06AFE8;
    v31 = v18;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06B01C;
    v31 = v19;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06B0FC;
    v31 = v20;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06B134;
    v31 = v21;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06B168;
    v31 = v22;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    v30 = sub_26B06B1FC;
    v31 = v23;
    sub_26AEA3BD8(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_26AE88000, v25, v26, "%s.%s: Initiating a request to refresh the current beta updates", buf, 0x16u);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  *(v13 + 224) = 0;
  v6 = *(v13 + 208);
  v7 = *(v13 + 184);
  v5 = *(v13 + 192);
  v2 = MEMORY[0x277D82BD8](v25);
  v3 = *(v5 + 8);
  *(v13 + 232) = v3;
  *(v13 + 240) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7, v2);
  v9 = ReactiveUIManager.statefulManager.getter();
  *(v13 + 248) = v9;
  *(v13 + 16) = *(v13 + 144);
  *(v13 + 56) = v13 + 160;
  *(v13 + 24) = sub_26B04A048;
  v8 = swift_continuation_init();
  *(v13 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DEEE0);
  *(v13 + 112) = v8;
  *(v13 + 80) = MEMORY[0x277D85DD0];
  *(v13 + 88) = 1107296256;
  *(v13 + 92) = 0;
  *(v13 + 96) = sub_26B05FE9C;
  *(v13 + 104) = &block_descriptor_843;
  [v9 refreshBetaUpdates_];

  return MEMORY[0x282200938](v13 + 16);
}

uint64_t sub_26B04A048()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[32] = v1;
  if (v1)
  {
    v2 = sub_26B04AA3C;
  }

  else
  {
    v2 = sub_26B04A1A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B04A1A0()
{
  v33 = v0;
  v1 = v0[31];
  v15 = v0[22];
  v0[18] = v0;
  v14 = v0[20];
  v0[21] = v14;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v26 = sub_26B078570();
  v27 = sub_26B07A2A0();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26B06B248;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06B2F8;
  *(v17 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06B344;
  *(v21 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B060000;
  *(v18 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06B444;
  *(v24 + 24) = v18;
  sub_26B07A760();
  v25 = v2;

  *v25 = sub_26B06B27C;
  v25[1] = v19;

  v25[2] = sub_26B06B2B0;
  v25[3] = v20;

  v25[4] = sub_26B06B390;
  v25[5] = v21;

  v25[6] = sub_26B06B3C8;
  v25[7] = v22;

  v25[8] = sub_26B06B3FC;
  v25[9] = v23;

  v25[10] = sub_26B06B490;
  v25[11] = v24;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v26, v27))
  {
    v3 = v13[28];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(2);
    v28 = buf;
    v29 = v11;
    v30 = v12;
    sub_26AEA3BC4(2, &v28);
    sub_26AEA3BC4(2, &v28);
    v31 = sub_26B06B27C;
    v32 = v19;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    if (v3)
    {
    }

    v31 = sub_26B06B2B0;
    v32 = v20;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06B390;
    v32 = v21;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06B3C8;
    v32 = v22;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06B3FC;
    v32 = v23;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06B490;
    v32 = v24;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_26AE88000, v26, v27, "%s.%s: Finished to execute a request to refresh the current beta updates", buf, 0x16u);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v13[29];
  v9 = v13[25];
  v7 = v13[23];
  v5 = MEMORY[0x277D82BD8](v26);
  v8(v9, v7, v5);

  v6 = *(v13[18] + 8);

  return v6(v14);
}

uint64_t sub_26B04AA3C()
{
  v3 = *(v0 + 248);
  *(v0 + 144) = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t ReactiveUIManager.checkForAvailableUpdatesInBackground(_:)(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 273) = a1 & 1;
  *(v2 + 144) = v2;
  *(v2 + 272) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  *(v2 + 184) = swift_task_alloc();
  v3 = sub_26B078580();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 272) = a1 & 1;
  *(v2 + 152) = v1;

  return MEMORY[0x2822009F8](sub_26B04ACA8, 0, 0);
}

uint64_t sub_26B04ACA8()
{
  v39 = v0;
  v20 = MEMORY[0x277D85700];
  v21 = v0[22];
  v0[18] = v0;
  sub_26B078540();

  v32 = sub_26B078570();
  v33 = sub_26B07A2A0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06B49C;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06B54C;
  *(v23 + 24) = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26B06B598;
  *(v27 + 24) = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B05E17C;
  *(v24 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B06B698;
  *(v30 + 24) = v24;
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v31 = v1;

  *v31 = sub_26B06B4D0;
  v31[1] = v25;

  v31[2] = sub_26B06B504;
  v31[3] = v26;

  v31[4] = sub_26B06B5E4;
  v31[5] = v27;

  v31[6] = sub_26B06B61C;
  v31[7] = v28;

  v31[8] = sub_26B06B650;
  v31[9] = v29;

  v31[10] = sub_26B06B6E4;
  v31[11] = v30;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(2);
    v34 = buf;
    v35 = v17;
    v36 = v18;
    sub_26AEA3BC4(2, &v34);
    sub_26AEA3BC4(2, &v34);
    v37 = sub_26B06B4D0;
    v38 = v25;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06B504;
    v38 = v26;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06B5E4;
    v38 = v27;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06B61C;
    v38 = v28;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06B650;
    v38 = v29;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    v37 = sub_26B06B6E4;
    v38 = v30;
    sub_26AEA3BD8(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_26AE88000, v32, v33, "%s.%s: Starting to check for available updates in the background...", buf, 0x16u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  *(v19 + 232) = 0;
  v8 = *(v19 + 216);
  v9 = *(v19 + 192);
  v11 = *(v19 + 184);
  v10 = *(v19 + 176);
  v14 = *(v19 + 273);
  v7 = *(v19 + 200);
  v2 = MEMORY[0x277D82BD8](v32);
  v3 = *(v7 + 8);
  *(v19 + 240) = v3;
  *(v19 + 248) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9, v2);
  ReactiveUIManager.performingBackgroundScan.setter(1);
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v11, 1);

  sub_26B07A130();
  v12 = sub_26B07A120();
  v5 = swift_allocObject();
  v5[2] = v12;
  v5[3] = v20;
  v5[4] = v10;
  sub_26AEBC0C4(0, 0, v11, &unk_26B0920F8, v5, MEMORY[0x277D84F78] + 8);

  v15 = ReactiveUIManager.statefulManager.getter();
  *(v19 + 256) = v15;
  *(v19 + 16) = *(v19 + 144);
  *(v19 + 56) = v19 + 160;
  *(v19 + 24) = sub_26B04B714;
  v13 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEEF0);
  *(v19 + 112) = v13;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = sub_26B05DFBC;
  *(v19 + 104) = &block_descriptor_923;
  [v15 checkForUpdatesInBackgroundWithForcedReload:v14 & 1 completion:?];

  return MEMORY[0x282200938](v19 + 16);
}

uint64_t sub_26B04B714()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[33] = v1;
  if (v1)
  {
    v2 = sub_26B04C16C;
  }

  else
  {
    v2 = sub_26B04B86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B04B86C()
{
  v34 = v0;
  v1 = v0[32];
  v16 = v0[22];
  v0[18] = v0;
  v15 = v0[20];
  v0[21] = v15;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v27 = sub_26B078570();
  v28 = sub_26B07A2A0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06B978;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06BA28;
  *(v18 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06BA74;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05E4F8;
  *(v19 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06BB74;
  *(v25 + 24) = v19;
  sub_26B07A760();
  v26 = v2;

  *v26 = sub_26B06B9AC;
  v26[1] = v20;

  v26[2] = sub_26B06B9E0;
  v26[3] = v21;

  v26[4] = sub_26B06BAC0;
  v26[5] = v22;

  v26[6] = sub_26B06BAF8;
  v26[7] = v23;

  v26[8] = sub_26B06BB2C;
  v26[9] = v24;

  v26[10] = sub_26B06BBC0;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    v3 = v14[29];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v12 = sub_26AEA3B70(0);
    v13 = sub_26AEA3B70(2);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26B06B9AC;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    if (v3)
    {
    }

    v32 = sub_26B06B9E0;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06BAC0;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06BAF8;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06BB2C;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06BBC0;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: Finished to check for available updates in the background.", buf, 0x16u);
    sub_26AEA3C24(v12);
    sub_26AEA3C24(v13);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[30];
  v10 = v14[26];
  v7 = v14[24];
  v9 = v14[22];
  v5 = MEMORY[0x277D82BD8](v27);
  v8(v10, v7, v5);
  sub_26B05E340(v9);

  v6 = *(v14[18] + 8);

  return v6(v15);
}

uint64_t sub_26B04C16C()
{
  v3 = v0[32];
  v4 = v0[22];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);
  sub_26B05E340(v4);

  v1 = *(v0[18] + 8);

  return v1();
}

uint64_t ReactiveUIManager.isBusy.getter()
{
  v39 = 0;
  v25 = sub_26B078360();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v19 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v25);
  v24 = &v2[-v19];
  v39 = v26;
  (*(v22 + 16))(&v2[-v19], v26 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v20 = &v38;
  v38 = v26;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v22 + 8))(v24, v25);
  ReactiveUIManager.currentInitiatedAction.getter(&v37);
  v36 = v37;
  v35 = 0;
  v27 = static UpdateAction.== infix(_:_:)(&v36, &v35);

  if (v27)
  {
    v17 = ReactiveUIManager.targetedDescriptor.getter();
    if (v17)
    {
      v16 = v17;
      v12 = v17;
      v13 = ReactiveDescriptor.currentState.getter();

      v14 = v13;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    v10 = v15;
    v11 = v14;
    v31 = v14;
    v32 = v15 & 1;
    v33 = 5;
    v34 = 0;
    if (v15)
    {
      v9 = 0;
    }

    else
    {
      v29[1] = v11;
      v30 = v10 & 1;
      v8 = v29;
      v29[0] = v11;
      v6 = &v28;
      v28 = v33;
      v7 = type metadata accessor for SUUIStatefulDescriptorState();
      sub_26AFE1DF4();
      v9 = sub_26B079D70();
    }

    v18 = v9;
  }

  else
  {
    v18 = 1;
  }

  v5 = v18;

  if (v5)
  {
    v4 = 1;
  }

  else
  {
    v4 = ReactiveUIManager.performingBackgroundScan.getter();
  }

  v3 = v4;

  return v3 & 1;
}

Swift::Bool __swiftcall ReactiveUIManager.isDelayingUpdate()()
{
  v1 = ReactiveUIManager.statefulManager.getter();
  v2 = [v1 isDelayingUpdate];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

Swift::Bool __swiftcall ReactiveUIManager.hasSUPathRestrictions()()
{
  v1 = ReactiveUIManager.statefulManager.getter();
  v2 = [v1 hasSUPathRestrictions];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t ReactiveUIManager.checkForAvailableUpdates(_:)(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 265) = a1 & 1;
  *(v2 + 144) = v2;
  *(v2 + 264) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  v3 = sub_26B078580();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 264) = a1 & 1;
  *(v2 + 152) = v1;

  return MEMORY[0x2822009F8](sub_26B04C7E0, 0, 0);
}

uint64_t sub_26B04C7E0()
{
  v33 = v0;
  v15 = v0[22];
  v0[18] = v0;
  sub_26B078540();

  v26 = sub_26B078570();
  v27 = sub_26B07A2A0();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26B06BBE4;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06BC94;
  *(v17 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06BCE0;
  *(v21 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B05DE14;
  *(v18 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26B06BDE0;
  *(v24 + 24) = v18;
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v25 = v1;

  *v25 = sub_26B06BC18;
  v25[1] = v19;

  v25[2] = sub_26B06BC4C;
  v25[3] = v20;

  v25[4] = sub_26B06BD2C;
  v25[5] = v21;

  v25[6] = sub_26B06BD64;
  v25[7] = v22;

  v25[8] = sub_26B06BD98;
  v25[9] = v23;

  v25[10] = sub_26B06BE2C;
  v25[11] = v24;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v12 = sub_26AEA3B70(0);
    v13 = sub_26AEA3B70(2);
    v28 = buf;
    v29 = v12;
    v30 = v13;
    sub_26AEA3BC4(2, &v28);
    sub_26AEA3BC4(2, &v28);
    v31 = sub_26B06BC18;
    v32 = v19;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06BC4C;
    v32 = v20;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06BD2C;
    v32 = v21;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06BD64;
    v32 = v22;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06BD98;
    v32 = v23;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26B06BE2C;
    v32 = v24;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_26AE88000, v26, v27, "%s.%s: Starting to check for available updates...", buf, 0x16u);
    sub_26AEA3C24(v12);
    sub_26AEA3C24(v13);
    sub_26B07A400();
  }

  else
  {
  }

  *(v14 + 224) = 0;
  v6 = *(v14 + 208);
  v7 = *(v14 + 184);
  v9 = *(v14 + 265);
  v5 = *(v14 + 192);
  v2 = MEMORY[0x277D82BD8](v26);
  v3 = *(v5 + 8);
  *(v14 + 232) = v3;
  *(v14 + 240) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7, v2);
  v10 = ReactiveUIManager.statefulManager.getter();
  *(v14 + 248) = v10;
  *(v14 + 16) = *(v14 + 144);
  *(v14 + 56) = v14 + 160;
  *(v14 + 24) = sub_26B04D158;
  v8 = swift_continuation_init();
  *(v14 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEEF0);
  *(v14 + 112) = v8;
  *(v14 + 80) = MEMORY[0x277D85DD0];
  *(v14 + 88) = 1107296256;
  *(v14 + 92) = 0;
  *(v14 + 96) = sub_26B05DFBC;
  *(v14 + 104) = &block_descriptor_1002;
  [v10 checkForAvailableUpdatesWithForcedReload:v9 & 1 completion:?];

  return MEMORY[0x282200938](v14 + 16);
}

uint64_t sub_26B04D158()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[32] = v1;
  if (v1)
  {
    v2 = sub_26B04DBA0;
  }

  else
  {
    v2 = sub_26B04D2B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B04D2B0()
{
  v34 = v0;
  v1 = v0[31];
  v16 = v0[22];
  v0[18] = v0;
  v15 = v0[20];
  v0[21] = v15;
  MEMORY[0x277D82BD8](v1);
  sub_26B078540();

  v27 = sub_26B078570();
  v28 = sub_26B07A2A0();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06BE78;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06BF28;
  *(v18 + 24) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26B06BF74;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05E120;
  *(v19 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26B06C074;
  *(v25 + 24) = v19;
  sub_26B07A760();
  v26 = v2;

  *v26 = sub_26B06BEAC;
  v26[1] = v20;

  v26[2] = sub_26B06BEE0;
  v26[3] = v21;

  v26[4] = sub_26B06BFC0;
  v26[5] = v22;

  v26[6] = sub_26B06BFF8;
  v26[7] = v23;

  v26[8] = sub_26B06C02C;
  v26[9] = v24;

  v26[10] = sub_26B06C0C0;
  v26[11] = v25;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v27, v28))
  {
    v3 = v14[28];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v12 = sub_26AEA3B70(0);
    v13 = sub_26AEA3B70(2);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    sub_26AEA3BC4(2, &v29);
    sub_26AEA3BC4(2, &v29);
    v32 = sub_26B06BEAC;
    v33 = v20;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    if (v3)
    {
    }

    v32 = sub_26B06BEE0;
    v33 = v21;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06BFC0;
    v33 = v22;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06BFF8;
    v33 = v23;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06C02C;
    v33 = v24;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    v32 = sub_26B06C0C0;
    v33 = v25;
    sub_26AEA3BD8(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_26AE88000, v27, v28, "%s.%s: Finished to check for available updates.", buf, 0x16u);
    sub_26AEA3C24(v12);
    sub_26AEA3C24(v13);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v14[29];
  v10 = v14[25];
  v7 = v14[23];
  v9 = v14[22];
  v5 = MEMORY[0x277D82BD8](v27);
  v8(v10, v7, v5);
  sub_26B05DE44(v9);

  v6 = *(v14[18] + 8);

  return v6(v15);
}

uint64_t sub_26B04DBA0()
{
  v3 = v0[31];
  v4 = v0[22];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);
  sub_26B05DE44(v4);

  v1 = *(v0[18] + 8);

  return v1();
}

uint64_t ReactiveUIManager.targetedDescriptor.getter()
{
  v17 = 0;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v5 = &v16;
  v16 = v6;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();
  v1 = v6;

  (*(v8 + 8))(v10, v11);
  v12 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__targetedDescriptor);
  v13 = &v15;
  swift_beginAccess();
  v14 = *v12;

  swift_endAccess();
  return v14;
}

Swift::Void __swiftcall ReactiveUIManager.stopRefreshScanResultsCacheTimer()()
{
  v67 = MEMORY[0x277D85700];
  v68 = &unk_26B092168;
  v69 = sub_26B06C32C;
  v70 = sub_26B06C3DC;
  v71 = sub_26B06C428;
  v72 = sub_26B05AB94;
  v73 = sub_26B06C528;
  v74 = sub_26B06C360;
  v75 = sub_26B06C394;
  v76 = sub_26B06C474;
  v77 = sub_26B06C4AC;
  v78 = sub_26B06C4E0;
  v79 = sub_26B06C574;
  v101 = 0;
  v80 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  v81 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v82 = &v33 - v81;
  v83 = 0;
  v84 = sub_26B078580();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v88 = &v33 - v87;
  v93 = sub_26B0784A0();
  v91 = *(v93 - 8);
  v92 = v93 - 8;
  v89 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v93);
  v94 = &v33 - v89;
  v101 = v90;
  (*(v91 + 104))(&v33 - v89, *MEMORY[0x277D64B08], v1);
  v95 = sub_26B078490();
  (*(v91 + 8))(v94, v93);
  if (v95)
  {
    v33 = 0;
    v26 = sub_26B07A160();
    (*(*(v26 - 8) + 56))(v82, 1);

    sub_26B07A130();
    v34 = sub_26B07A120();
    v27 = swift_allocObject();
    v28 = v67;
    v29 = v90;
    v30 = v33;
    v31 = v82;
    v32 = v68;
    v27[2] = v34;
    v27[3] = v28;
    v27[4] = v29;
    sub_26AEBC0C4(v30, v30, v31, v32, v27, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    sub_26B078540();

    v65 = sub_26B078570();
    v66 = sub_26B07A2A0();
    v51 = 17;
    v54 = 7;
    v56 = swift_allocObject();
    v50 = 32;
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v52 = 8;
    *(v57 + 16) = 8;
    v53 = 32;
    v2 = swift_allocObject();
    v3 = v90;
    v48 = v2;
    *(v2 + 16) = v69;
    *(v2 + 24) = v3;
    v4 = swift_allocObject();
    v5 = v48;
    v49 = v4;
    *(v4 + 16) = v70;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v49;
    v58 = v6;
    *(v6 + 16) = v71;
    *(v6 + 24) = v7;
    v59 = swift_allocObject();
    *(v59 + 16) = v50;
    v60 = swift_allocObject();
    *(v60 + 16) = v52;
    v8 = swift_allocObject();
    v55 = v8;
    *(v8 + 16) = v72;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v55;
    v62 = v9;
    *(v9 + 16) = v73;
    *(v9 + 24) = v10;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v61 = sub_26B07A760();
    v63 = v11;

    v12 = v56;
    v13 = v63;
    *v63 = v74;
    v13[1] = v12;

    v14 = v57;
    v15 = v63;
    v63[2] = v75;
    v15[3] = v14;

    v16 = v58;
    v17 = v63;
    v63[4] = v76;
    v17[5] = v16;

    v18 = v59;
    v19 = v63;
    v63[6] = v77;
    v19[7] = v18;

    v20 = v60;
    v21 = v63;
    v63[8] = v78;
    v21[9] = v20;

    v22 = v62;
    v23 = v63;
    v63[10] = v79;
    v23[11] = v22;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v65, v66))
    {
      v24 = v80;
      v40 = sub_26B07A420();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v41 = sub_26AEA3B70(0);
      v42 = sub_26AEA3B70(2);
      v44 = &v100;
      v100 = v40;
      v45 = &v99;
      v99 = v41;
      v46 = &v98;
      v98 = v42;
      v43 = 2;
      sub_26AEA3BC4(2, &v100);
      sub_26AEA3BC4(v43, v44);
      v96 = v74;
      v97 = v56;
      sub_26AEA3BD8(&v96, v44, v45, v46);
      v47 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v96 = v75;
        v97 = v57;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v38 = 0;
        v96 = v76;
        v97 = v58;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v37 = 0;
        v96 = v77;
        v97 = v59;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v36 = 0;
        v96 = v78;
        v97 = v60;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        v35 = 0;
        v96 = v79;
        v97 = v62;
        sub_26AEA3BD8(&v96, &v100, &v99, &v98);
        _os_log_impl(&dword_26AE88000, v65, v66, "    %s.%s: Cache feature is disabled. unable to stop refresh cache timer", v40, 0x16u);
        sub_26AEA3C24(v41);
        sub_26AEA3C24(v42);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v25 = MEMORY[0x277D82BD8](v65);
    (*(v85 + 8))(v88, v84, v25);
  }
}

Swift::Void __swiftcall ReactiveUIManager.startRefreshScanResultsCacheTimer()()
{
  v54 = sub_26B06C580;
  v55 = sub_26B06C630;
  v56 = sub_26B06C67C;
  v57 = sub_26B05AE24;
  v58 = sub_26B06C77C;
  v59 = sub_26B06C5B4;
  v60 = sub_26B06C5E8;
  v61 = sub_26B06C6C8;
  v62 = sub_26B06C700;
  v63 = sub_26B06C734;
  v64 = sub_26B06C7C8;
  v92 = 0;
  v91 = 0;
  v65 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD260);
  v66 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v67 = v26 - v66;
  v73 = 0;
  v68 = sub_26B0782A0();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v72 = v26 - v71;
  v92 = v26 - v71;
  v74 = sub_26B078580();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v78 = v26 - v77;
  v83 = sub_26B0784A0();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v79 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v83);
  v84 = v26 - v79;
  v91 = v80;
  (*(v81 + 104))(v26 - v79, *MEMORY[0x277D64B08], v1);
  v85 = sub_26B078490();
  (*(v81 + 8))(v84, v83);
  if (v85)
  {
    ReactiveUIManager.stopRefreshScanResultsCacheTimer()();
    ReactiveUIManager.readScanResultsCacheExpectedTTLValue()(v67);
    if ((*(v69 + 48))(v67, 1, v68) == 1)
    {
      sub_26AEEE704(v67);
      sub_26B05C8CC();
    }

    else
    {
      (*(v69 + 32))(v72, v67, v68);
      sub_26B05B2BC(v72);
      (*(v69 + 8))(v72, v68);
    }
  }

  else
  {
    sub_26B078540();

    v52 = sub_26B078570();
    v53 = sub_26B07A2A0();
    v38 = 17;
    v41 = 7;
    v43 = swift_allocObject();
    v37 = 32;
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    v39 = 8;
    *(v44 + 16) = 8;
    v40 = 32;
    v2 = swift_allocObject();
    v3 = v80;
    v35 = v2;
    *(v2 + 16) = v54;
    *(v2 + 24) = v3;
    v4 = swift_allocObject();
    v5 = v35;
    v36 = v4;
    *(v4 + 16) = v55;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v36;
    v45 = v6;
    *(v6 + 16) = v56;
    *(v6 + 24) = v7;
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    v47 = swift_allocObject();
    *(v47 + 16) = v39;
    v8 = swift_allocObject();
    v42 = v8;
    *(v8 + 16) = v57;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v42;
    v49 = v9;
    *(v9 + 16) = v58;
    *(v9 + 24) = v10;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v48 = sub_26B07A760();
    v50 = v11;

    v12 = v43;
    v13 = v50;
    *v50 = v59;
    v13[1] = v12;

    v14 = v44;
    v15 = v50;
    v50[2] = v60;
    v15[3] = v14;

    v16 = v45;
    v17 = v50;
    v50[4] = v61;
    v17[5] = v16;

    v18 = v46;
    v19 = v50;
    v50[6] = v62;
    v19[7] = v18;

    v20 = v47;
    v21 = v50;
    v50[8] = v63;
    v21[9] = v20;

    v22 = v49;
    v23 = v50;
    v50[10] = v64;
    v23[11] = v22;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v52, v53))
    {
      v24 = v65;
      v27 = sub_26B07A420();
      v26[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v28 = sub_26AEA3B70(0);
      v29 = sub_26AEA3B70(2);
      v31 = &v90;
      v90 = v27;
      v32 = &v89;
      v89 = v28;
      v33 = &v88;
      v88 = v29;
      v30 = 2;
      sub_26AEA3BC4(2, &v90);
      sub_26AEA3BC4(v30, v31);
      v86 = v59;
      v87 = v43;
      sub_26AEA3BD8(&v86, v31, v32, v33);
      v34 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v86 = v60;
        v87 = v44;
        sub_26AEA3BD8(&v86, &v90, &v89, &v88);
        v26[3] = 0;
        v86 = v61;
        v87 = v45;
        sub_26AEA3BD8(&v86, &v90, &v89, &v88);
        v26[2] = 0;
        v86 = v62;
        v87 = v46;
        sub_26AEA3BD8(&v86, &v90, &v89, &v88);
        v26[1] = 0;
        v86 = v63;
        v87 = v47;
        sub_26AEA3BD8(&v86, &v90, &v89, &v88);
        v26[0] = 0;
        v86 = v64;
        v87 = v49;
        sub_26AEA3BD8(&v86, &v90, &v89, &v88);
        _os_log_impl(&dword_26AE88000, v52, v53, "    %s.%s: Cache feature is disabled. unable to start refresh cache timer", v27, 0x16u);
        sub_26AEA3C24(v28);
        sub_26AEA3C24(v29);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v25 = MEMORY[0x277D82BD8](v52);
    (*(v75 + 8))(v78, v74, v25);
  }
}

uint64_t ReactiveUIManager.canPerformCachedScan()()
{
  v1[24] = v0;
  v1[20] = v1;
  v1[21] = 0;
  v1[23] = 0;
  v2 = sub_26B0782E0();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[21] = v0;

  return MEMORY[0x2822009F8](sub_26B04F784, 0, 0);
}

uint64_t sub_26B04F784()
{
  *(v0 + 160) = v0;
  v14 = ReactiveUIManager.statefulManager.getter();
  *(v0 + 176) = [v14 environment];
  if (*(v0 + 176))
  {
    v6 = *(v13 + 216);
    v5 = *(v13 + 200);
    v4 = *(v13 + 208);
    v10 = *(v13 + 176);
    swift_unknownObjectRetain();
    sub_26B06C7D4();
    MEMORY[0x277D82BD8](v14);
    swift_getObjectType();
    v9 = ReactiveUIManager.statefulManager.getter();
    sub_26B0782D0();
    sub_26B0782B0();
    v8 = sub_26B079DF0();
    (*(v4 + 8))(v6, v5);

    sub_26AF4013C();
    v7 = sub_26B07A2E0();
    v11 = [v10 scanOperationWithManager:v9 identifier:v8 completionQueue:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    swift_unknownObjectRelease();
    v12 = v11;
  }

  else
  {
    sub_26B06C7D4();
    MEMORY[0x277D82BD8](v14);
    v12 = 0;
  }

  *(v13 + 224) = v12;
  if (v12)
  {
    *(v13 + 184) = v12;
    swift_getObjectType();
    *(v13 + 16) = *(v13 + 160);
    *(v13 + 56) = v13 + 144;
    *(v13 + 24) = sub_26B04FB00;
    v3 = swift_continuation_init();
    *(v13 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF08);
    *(v13 + 112) = v3;
    *(v13 + 80) = MEMORY[0x277D85DD0];
    *(v13 + 88) = 1107296256;
    *(v13 + 92) = 0;
    *(v13 + 96) = sub_26B05F6F0;
    *(v13 + 104) = &block_descriptor_1121;
    [v12 hasScanResultsCacheWithCompletion_];

    return MEMORY[0x282200938](v13 + 16);
  }

  else
  {

    v1 = *(*(v13 + 160) + 8);

    return v1(0);
  }
}

uint64_t sub_26B04FB00()
{
  *(*v0 + 160) = *v0;

  return MEMORY[0x2822009F8](sub_26B04FBFC, 0, 0);
}

uint64_t sub_26B04FBFC()
{
  *(v0 + 160) = v0;
  v3 = *(v0 + 144);
  MEMORY[0x277D82BD8](*(v0 + 152));
  swift_unknownObjectRelease();

  v1 = *(*(v0 + 160) + 8);

  return v1(v3 & 1);
}

void ReactiveUIManager.presentingViewController.setter(void *a1)
{
  v24 = a1;
  v32 = 0;
  v20 = 0;
  v33 = a1;
  v21 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
  v22 = &v31;
  swift_beginAccess();
  v23 = *v21;
  v2 = v23;
  swift_endAccess();
  v30 = v23;
  v29 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF10);
  sub_26B06C840();
  v26 = &v30;
  v27 = sub_26B05618C();
  sub_26B06C958(&v30);
  if (v27)
  {
    v3 = v19;
    v4 = v20;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;

    v5 = v24;
    v17 = &v11;
    MEMORY[0x28223BE20](KeyPath);
    v10[2] = v3;
    v10[3] = v6;
    sub_26B056288(v7, sub_26B06C98C, v10, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v18 = v4;

    v14 = v18;
  }

  else
  {
    v8 = v24;
    v12 = (v19 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager__presentingViewController);
    v13 = &v28;
    swift_beginAccess();
    v9 = *v12;
    *v12 = v24;

    swift_endAccess();
    v14 = v20;
  }
}

id ReactiveUIManager.environmentOptions.getter()
{
  v4 = ReactiveUIManager.statefulManager.getter();
  v5 = [v4 environment];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_26B06C7D4();
    MEMORY[0x277D82BD8](v4);
    swift_getObjectType();
    v1 = [v5 options];
    swift_unknownObjectRelease();
    v2 = v1;
    v3 = 0;
  }

  else
  {
    sub_26B06C7D4();
    MEMORY[0x277D82BD8](v4);
    v2 = 0;
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    return v2;
  }

  type metadata accessor for SUUIStatefulUIEnvironmentOptions();
  sub_26B07A760();
  sub_26AE9AD04();
  sub_26B07A4C0();
  return v6;
}

uint64_t ReactiveUIManager.hasHiddenDescriptors.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 hasHiddenDescriptors];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(uint64_t a1)
{
  *(v2 + 232) = v1;
  *(v2 + 224) = a1;
  *(v2 + 168) = v2;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 208) = 0;
  *(v2 + 344) = 0;
  v3 = sub_26B078580();
  *(v2 + 240) = v3;
  *(v2 + 248) = *(v3 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;

  return MEMORY[0x2822009F8](sub_26B05031C, 0, 0);
}

uint64_t sub_26B05031C()
{
  v44 = v0;
  *(v0 + 168) = v0;
  v37 = ReactiveUIManager.targetedDescriptor.getter();
  *(v0 + 272) = v37;
  if (v37)
  {
    v19 = *(v36 + 232);
    *(v36 + 208) = v37;
    sub_26B078540();

    oslog = sub_26B078570();
    v35 = sub_26B07A2A0();
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26B06C9D0;
    *(v20 + 24) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26B06CA88;
    *(v21 + 24) = v20;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_26B06CAD4;
    *(v26 + 24) = v21;
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26B05F508;
    *(v22 + 24) = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_26B06CBD4;
    *(v29 + 24) = v22;
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26B06C9D8;
    *(v23 + 24) = v37;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_26B06CCD4;
    *(v32 + 24) = v23;
    *(v36 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v33 = v1;

    *v33 = sub_26B06CA0C;
    v33[1] = v24;

    v33[2] = sub_26B06CA40;
    v33[3] = v25;

    v33[4] = sub_26B06CB20;
    v33[5] = v26;

    v33[6] = sub_26B06CB58;
    v33[7] = v27;

    v33[8] = sub_26B06CB8C;
    v33[9] = v28;

    v33[10] = sub_26B06CC20;
    v33[11] = v29;

    v33[12] = sub_26B06CC58;
    v33[13] = v30;

    v33[14] = sub_26B06CC8C;
    v33[15] = v31;

    v33[16] = sub_26B06CD20;
    v33[17] = v32;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v35))
    {
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v17 = sub_26AEA3B70(0);
      v18 = sub_26AEA3B70(3);
      v39 = buf;
      v40 = v17;
      v41 = v18;
      sub_26AEA3BC4(2, &v39);
      sub_26AEA3BC4(3, &v39);
      v42 = sub_26B06CA0C;
      v43 = v24;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CA40;
      v43 = v25;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CB20;
      v43 = v26;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CB58;
      v43 = v27;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CB8C;
      v43 = v28;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CC20;
      v43 = v29;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CC58;
      v43 = v30;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CC8C;
      v43 = v31;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      v42 = sub_26B06CD20;
      v43 = v32;
      sub_26AEA3BD8(&v42, &v39, &v40, &v41);
      _os_log_impl(&dword_26AE88000, oslog, v35, "%s.%s: Initiating an Unschedule request for %s...", buf, 0x20u);
      sub_26AEA3C24(v17);
      sub_26AEA3C24(v18);
      sub_26B07A400();
    }

    else
    {
    }

    *(v36 + 288) = 0;
    v12 = *(v36 + 264);
    v13 = *(v36 + 240);
    v15 = *(v36 + 224);
    v11 = *(v36 + 248);
    v2 = MEMORY[0x277D82BD8](oslog);
    v3 = *(v11 + 8);
    *(v36 + 296) = v3;
    *(v36 + 304) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v3(v12, v13, v2);
    v14 = ReactiveUIManager.statefulManager.getter();
    *(v36 + 312) = v14;
    swift_unknownObjectRetain();
    *(v36 + 216) = v15;

    if (*(v36 + 216))
    {
      v38 = *(v36 + 216);
    }

    else
    {
      v9 = *(v36 + 232);
      swift_beginAccess();
      v10 = *(v9 + 24);
      MEMORY[0x277D82BE0](v10);
      swift_endAccess();
      if (!v10)
      {
        return sub_26B07A650();
      }

      v38 = v10;
      if (*(v36 + 216))
      {
        sub_26B067808();
      }
    }

    *(v36 + 320) = v38;
    sub_26AF4013C();
    v8 = sub_26B07A2E0();
    *(v36 + 328) = v8;
    *(v36 + 16) = *(v36 + 168);
    *(v36 + 56) = v36 + 345;
    *(v36 + 24) = sub_26B0512BC;
    v7 = swift_continuation_init();
    *(v36 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF28);
    *(v36 + 112) = v7;
    *(v36 + 80) = MEMORY[0x277D85DD0];
    *(v36 + 88) = 1107296256;
    *(v36 + 92) = 0;
    *(v36 + 96) = sub_26B05EB14;
    *(v36 + 104) = &block_descriptor_1179;
    [v14 unscheduleTargetedUpdateAutomaticInstallation:v38 delegateCallbackQueue:v8 completionHandler:?];

    return MEMORY[0x282200938](v36 + 16);
  }

  else
  {
    type metadata accessor for SUUIError();
    *(v36 + 200) = -1;
    sub_26AE9B67C();
    sub_26B05E82C();
    sub_26B0780F0();
    v6 = *(v36 + 192);
    MEMORY[0x277D82BE0](v6);
    swift_willThrow();
    MEMORY[0x277D82BD8](v6);

    v5 = *(*(v36 + 168) + 8);

    return v5(v36 & 1);
  }
}

uint64_t sub_26B0512BC()
{
  v4 = *v0;
  v4[21] = *v0;
  v1 = v4[6];
  v4[42] = v1;
  if (v1)
  {
    v2 = sub_26B052350;
  }

  else
  {
    v2 = sub_26B051414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B051414()
{
  v44 = v0;
  v14 = *(v0 + 328);
  v1 = *(v0 + 312);
  v20 = *(v0 + 272);
  v16 = *(v0 + 232);
  *(v0 + 168) = v0;
  v15 = *(v0 + 345);
  *(v0 + 344) = v15 & 1;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v14);
  swift_unknownObjectRelease();
  sub_26B078540();

  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v37 = sub_26B078570();
  v38 = sub_26B07A2A0();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06CD6C;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06CE5C;
  *(v18 + 24) = v17;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06CEA8;
  *(v26 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05F5C4;
  *(v19 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06CFA8;
  *(v29 + 24) = v19;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06CD74;
  *(v21 + 24) = v20;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B06D0A8;
  *(v32 + 24) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06CDA8;
  *(v23 + 24) = v22;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26B06D1A8;
  *(v35 + 24) = v23;
  sub_26B07A760();
  v36 = v2;

  *v36 = sub_26B06CDE0;
  v36[1] = v24;

  v36[2] = sub_26B06CE14;
  v36[3] = v25;

  v36[4] = sub_26B06CEF4;
  v36[5] = v26;

  v36[6] = sub_26B06CF2C;
  v36[7] = v27;

  v36[8] = sub_26B06CF60;
  v36[9] = v28;

  v36[10] = sub_26B06CFF4;
  v36[11] = v29;

  v36[12] = sub_26B06D02C;
  v36[13] = v30;

  v36[14] = sub_26B06D060;
  v36[15] = v31;

  v36[16] = sub_26B06D0F4;
  v36[17] = v32;

  v36[18] = sub_26B06D12C;
  v36[19] = v33;

  v36[20] = sub_26B06D160;
  v36[21] = v34;

  v36[22] = sub_26B06D1F4;
  v36[23] = v35;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v37, v38))
  {
    v3 = v13[36];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(4);
    v39 = buf;
    v40 = v11;
    v41 = v12;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(4, &v39);
    v42 = sub_26B06CDE0;
    v43 = v24;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    if (v3)
    {
    }

    v42 = sub_26B06CE14;
    v43 = v25;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06CEF4;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06CF2C;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06CF60;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06CFF4;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D02C;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D060;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D0F4;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D12C;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D160;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D1F4;
    v43 = v35;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v37, v38, "%s.%s: Finished to execute an Unschedule request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v13[37];
  v9 = v13[32];
  v7 = v13[30];
  v5 = MEMORY[0x277D82BD8](v37);
  v8(v9, v7, v5);

  v6 = *(v13[21] + 8);

  return v6(v15 & 1);
}

uint64_t sub_26B052350()
{
  v5 = v0[41];
  v4 = v0[39];
  v0[21] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  swift_unknownObjectRelease();

  v1 = v0[21];
  v2 = *(v1 + 8);

  return v2(v1 & 1);
}

uint64_t ReactiveUIManager.promoteTargetedUpdate(_:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 224) = v2;
  *(v3 + 216) = a2;
  *(v3 + 208) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 328) = 0;
  v4 = sub_26B078580();
  *(v3 + 232) = v4;
  *(v3 + 240) = *(v4 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  *(v3 + 192) = v2;

  return MEMORY[0x2822009F8](sub_26B0525C0, 0, 0);
}

uint64_t sub_26B0525C0()
{
  v42 = v0;
  v18 = v0[28];
  v22 = v0[26];
  v0[21] = v0;
  sub_26B078540();

  v34 = sub_26B078570();
  v35 = sub_26B07A2A0();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B06D200;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B06D2B8;
  *(v20 + 24) = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06D304;
  *(v26 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B05EA84;
  *(v21 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06D404;
  *(v29 + 24) = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06D208;
  *(v23 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B06D504;
  *(v32 + 24) = v23;
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v33 = v1;

  *v33 = sub_26B06D23C;
  v33[1] = v24;

  v33[2] = sub_26B06D270;
  v33[3] = v25;

  v33[4] = sub_26B06D350;
  v33[5] = v26;

  v33[6] = sub_26B06D388;
  v33[7] = v27;

  v33[8] = sub_26B06D3BC;
  v33[9] = v28;

  v33[10] = sub_26B06D450;
  v33[11] = v29;

  v33[12] = sub_26B06D488;
  v33[13] = v30;

  v33[14] = sub_26B06D4BC;
  v33[15] = v31;

  v33[16] = sub_26B06D550;
  v33[17] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = sub_26AEA3B70(0);
    v16 = sub_26AEA3B70(3);
    v37 = buf;
    v38 = v15;
    v39 = v16;
    sub_26AEA3BC4(2, &v37);
    sub_26AEA3BC4(3, &v37);
    v40 = sub_26B06D23C;
    v41 = v24;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D270;
    v41 = v25;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D350;
    v41 = v26;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D388;
    v41 = v27;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D3BC;
    v41 = v28;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D450;
    v41 = v29;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D488;
    v41 = v30;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D4BC;
    v41 = v31;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    v40 = sub_26B06D550;
    v41 = v32;
    sub_26AEA3BD8(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_26AE88000, v34, v35, "%s.%s: Initiating a User Initiated Status Promotion request for %s...", buf, 0x20u);
    sub_26AEA3C24(v15);
    sub_26AEA3C24(v16);
    sub_26B07A400();
  }

  else
  {
  }

  *(v17 + 272) = 0;
  v10 = *(v17 + 256);
  v11 = *(v17 + 232);
  v13 = *(v17 + 216);
  v9 = *(v17 + 240);
  v2 = MEMORY[0x277D82BD8](v34);
  v3 = *(v9 + 8);
  *(v17 + 280) = v3;
  *(v17 + 288) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v10, v11, v2);
  v12 = ReactiveUIManager.statefulManager.getter();
  *(v17 + 296) = v12;
  swift_unknownObjectRetain();
  *(v17 + 200) = v13;

  if (*(v17 + 200))
  {
    v36 = *(v17 + 200);
  }

  else
  {
    v7 = *(v17 + 224);
    swift_beginAccess();
    v8 = *(v7 + 24);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    if (!v8)
    {
      return sub_26B07A650();
    }

    v36 = v8;
    if (*(v17 + 200))
    {
      sub_26B067808();
    }
  }

  *(v17 + 304) = v36;
  sub_26AF4013C();
  v6 = sub_26B07A2E0();
  *(v17 + 312) = v6;
  *(v17 + 16) = *(v17 + 168);
  *(v17 + 56) = v17 + 329;
  *(v17 + 24) = sub_26B05340C;
  v5 = swift_continuation_init();
  *(v17 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEF28);
  *(v17 + 112) = v5;
  *(v17 + 80) = MEMORY[0x277D85DD0];
  *(v17 + 88) = 1107296256;
  *(v17 + 92) = 0;
  *(v17 + 96) = sub_26B05EB14;
  *(v17 + 104) = &block_descriptor_1306;
  [v12 promoteTargetedUpdateToUserInitiatedStatus:v36 delegateCallbackQueue:v6 completionHandler:?];

  return MEMORY[0x282200938](v17 + 16);
}

uint64_t sub_26B05340C()
{
  v4 = *v0;
  v4[21] = *v0;
  v1 = v4[6];
  v4[40] = v1;
  if (v1)
  {
    v2 = sub_26B054490;
  }

  else
  {
    v2 = sub_26B053564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B053564()
{
  v44 = v0;
  v14 = *(v0 + 312);
  v1 = *(v0 + 296);
  v16 = *(v0 + 224);
  v20 = *(v0 + 208);
  *(v0 + 168) = v0;
  v15 = *(v0 + 329);
  *(v0 + 328) = v15 & 1;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v14);
  swift_unknownObjectRelease();
  sub_26B078540();

  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v37 = sub_26B078570();
  v38 = sub_26B07A2A0();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26B06D59C;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26B06D68C;
  *(v18 + 24) = v17;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26B06D6D8;
  *(v26 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26B05EBFC;
  *(v19 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B06D7D8;
  *(v29 + 24) = v19;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B06D5A4;
  *(v21 + 24) = v20;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26B06D8D8;
  *(v32 + 24) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26B06D5D8;
  *(v23 + 24) = v22;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26B06D9D8;
  *(v35 + 24) = v23;
  sub_26B07A760();
  v36 = v2;

  *v36 = sub_26B06D610;
  v36[1] = v24;

  v36[2] = sub_26B06D644;
  v36[3] = v25;

  v36[4] = sub_26B06D724;
  v36[5] = v26;

  v36[6] = sub_26B06D75C;
  v36[7] = v27;

  v36[8] = sub_26B06D790;
  v36[9] = v28;

  v36[10] = sub_26B06D824;
  v36[11] = v29;

  v36[12] = sub_26B06D85C;
  v36[13] = v30;

  v36[14] = sub_26B06D890;
  v36[15] = v31;

  v36[16] = sub_26B06D924;
  v36[17] = v32;

  v36[18] = sub_26B06D95C;
  v36[19] = v33;

  v36[20] = sub_26B06D990;
  v36[21] = v34;

  v36[22] = sub_26B06DA24;
  v36[23] = v35;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v37, v38))
  {
    v3 = v13[34];
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(0);
    v12 = sub_26AEA3B70(4);
    v39 = buf;
    v40 = v11;
    v41 = v12;
    sub_26AEA3BC4(2, &v39);
    sub_26AEA3BC4(4, &v39);
    v42 = sub_26B06D610;
    v43 = v24;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    if (v3)
    {
    }

    v42 = sub_26B06D644;
    v43 = v25;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D724;
    v43 = v26;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D75C;
    v43 = v27;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D790;
    v43 = v28;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D824;
    v43 = v29;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D85C;
    v43 = v30;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D890;
    v43 = v31;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D924;
    v43 = v32;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D95C;
    v43 = v33;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06D990;
    v43 = v34;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    v42 = sub_26B06DA24;
    v43 = v35;
    sub_26AEA3BD8(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_26AE88000, v37, v38, "%s.%s: Finished to execute User Initiated Status Promotion request for %s with result: %s", buf, 0x2Au);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v13[35];
  v9 = v13[31];
  v7 = v13[29];
  v5 = MEMORY[0x277D82BD8](v37);
  v8(v9, v7, v5);

  v6 = *(v13[21] + 8);

  return v6(v15 & 1);
}

uint64_t sub_26B054490()
{
  v4 = v0[39];
  v3 = v0[37];
  v0[21] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  swift_unknownObjectRelease();

  v1 = *(v0[21] + 8);

  return v1(v0 & 1);
}

Swift::Bool __swiftcall ReactiveUIManager.isTargetedUpdateScheduledForAutoInstall()()
{
  v1 = ReactiveUIManager.statefulManager.getter();
  v2 = [v1 isTargetedUpdateScheduledForAutoInstall];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

id ReactiveUIManager.currentInitiatedAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = ReactiveUIManager.currentUpdateOperationType.getter();
  if (result)
  {
    if (result == 1)
    {
      *a1 = 2;
    }

    else if (result == 2)
    {
      *a1 = 1;
    }

    else if (result == 3)
    {
      *a1 = 2;
    }

    else if (result == 4)
    {
      *a1 = 5;
    }

    else if (result == 5)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 0;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t ReactiveUIManager.isClearingSpaceForDownload.getter()
{
  v14 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v14 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_registrar, v0);
  v4 = &v13;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  sub_26B069C94();
  sub_26B078320();

  (*(v7 + 8))(v9, v10);
  v11 = ReactiveUIManager.statefulManager.getter();
  v12 = [v11 isClearingSpaceForDownload];
  MEMORY[0x277D82BD8](v11);
  return v12;
}

uint64_t sub_26B054878()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_26B0548DC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}